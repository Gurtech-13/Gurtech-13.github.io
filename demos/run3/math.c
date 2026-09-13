/*
 * math.c - the engine's own math.
 *
 * The wasm build has no libm, so trig, sqrt and atan are polynomial/iterative
 * here. They are exact enough for the camera: the camera roll is derived from
 * atan2 of the runner's wall point, and a series that is off by 0.04 rad (the
 * plain atan series at z = 1) slides the runner visibly sideways on screen.
 */
#include <stdint.h>
#include "run3.h"

double ssin(double x) {
  x -= TAU * (double)((long long)(x / TAU));
  if (x < 0.0) x += TAU;
  int sign = 1;
  if (x > PI) { x = TAU - x; sign = -1; }
  if (x > PI / 2.0) x = PI - x;
  double x2 = x * x;
  double s = x * (1.0 + x2 * (-1.0 / 6.0 + x2 * (1.0 / 120.0 +
             x2 * (-1.0 / 5040.0 + x2 / 362880.0))));
  return sign > 0 ? s : -s;
}
double scos(double x) { return ssin(PI / 2.0 - x); }
/* atan on |z| <= 0.268 (tan(PI/12)): the odd series to z^11 is good to ~1e-8
   there. The whole point of the range reduction below is to stay inside it. */
static double satan_small(double z) {
  double z2 = z * z;
  return z * (1.0 + z2 * (-1.0 / 3.0 + z2 * (1.0 / 5.0 +
             z2 * (-1.0 / 7.0 + z2 * (1.0 / 9.0 - z2 / 11.0)))));
}
/* atan on |z| <= 1, split at tan(PI/12) via atan(z) = PI/6 + atan(t),
   t = (z - tan(PI/6)) / (1 + z*tan(PI/6)) */
static double satan1(double z) {
  int neg = 0;
  if (z < 0.0) { z = -z; neg = 1; }
  double a;
  if (z > 0.2679491924311227) {
    double t = (z - 0.5773502691896258) / (1.0 + z * 0.5773502691896258);
    a = PI / 6.0 + satan_small(t);
  } else {
    a = satan_small(z);
  }
  return neg ? -a : a;
}
double satan2(double y, double x) {
  if (x == 0.0 && y == 0.0) return 0.0;
  if (x == 0.0) return y > 0.0 ? PI / 2.0 : -PI / 2.0;
  if (y == 0.0) return x > 0.0 ? 0.0 : PI;
  double z = y / x;
  double a;
  if (z > 1.0 || z < -1.0) {
    /* atan(z) = sign(z)*PI/2 - atan(1/z) */
    a = (z > 0.0 ? PI / 2.0 : -PI / 2.0) - satan1(1.0 / z);
  } else {
    a = satan1(z);
  }
  if (x < 0.0) a += (y < 0.0 ? -PI : PI);
  return a;
}
double ssqrt(double x) {
  if (x <= 0.0) return 0.0;
  double y = x;
  /* halve into range first: 6 Newton steps from y=x never converge for
     large x (e.g. squared edge lengths ~1e5), which broke checkpoint pitch */
  if (y > 1.0) {
    double lim = 16.0 * x;
    while (y * y > lim && y > 0.0) y *= 0.5;
    if (y <= 0.0) y = 1.0;
  }
  for (int i = 0; i < 8 && y > 0.0; i++) y = 0.5 * (y + x / y);
  return y;
}
uint32_t h32(uint32_t x) {
  x ^= x >> 16; x *= 0x7feb352du;
  x ^= x >> 15; x *= 0x846ca68bu;
  x ^= x >> 16;
  return x;
}
