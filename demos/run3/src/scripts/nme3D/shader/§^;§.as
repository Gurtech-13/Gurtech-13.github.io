package nme3D.shader
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.vertex.PositionUVVertex;
   
   public class §^;§
   {
      
      public function §^;§()
      {
      }
      
      public static function §1r§(param1:§[!9§, param2:Number, param3:Number) : §'H§
      {
         var a3:Number;
         var a2:Number;
         var a1:§'H§;
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(§§findproperty(§'H§));
            §§push("m44 vt0, va0, vc0\n" + "mov op, vt0\n" + "mov vt1, va1\n");
            if(!_loc6_)
            {
               §§push(§§pop() + "add vt1.xy, va1.xy, vc5.xy\n" + "sub vt2.z, vc4.z, vt0.z\n");
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(§§pop() + "div vt1.z, vt2.z, vc4.z\n");
            break;
         }
         loop1:
         while(true)
         {
            while(true)
            {
               §§push("mul vt1.z, vt1.z, vc4.y\n");
               if(_loc5_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc6_)
                  {
                     §§push("add vt1.z, vt1.z, vc4.x\n");
                     if(_loc5_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                        }
                        §§push("mov v0, vt1");
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop());
                  §§push("mov ft0, v0\n");
                  §§push("tex ft0, ft0, fs0 <2d, linear, nomip, wrap>\n");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + §§pop());
                     §§push("mul ft0.xyz, ft0.xyz, v0.z\n");
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc5_)
                  {
                     break loop1;
                  }
                  §§push(§§pop());
               }
               §§push("mov oc, ft0");
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr00b2);
         }
         addr00b2:
         var _loc4_:§'H§ = new §§pop().§'H§(§§pop(),§§pop(),PositionUVVertex);
         §<!9§.§'%§(_loc4_);
         _loc4_.§^N§(0,param1);
         if(!_loc6_)
         {
            a1 = _loc4_;
            a2 = param2;
            a3 = param3;
            if(_loc5_)
            {
               _loc4_.update = function(param1:Number):void
               {
                  §^;§.§6A§(a1,a2,a3,param1);
               };
            }
         }
         return _loc4_;
      }
      
      public static function §6A§(param1:§'H§, param2:Number, param3:Number, param4:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param1);
         §§push(5);
         §§push(0);
         §§push(param4);
         if(!_loc5_)
         {
            §§push(§§pop() * param2);
            if(!_loc5_)
            {
               §§push(§§pop() % 1);
            }
         }
         §§pop().§"!W§(§§pop(),§§pop(),§§pop());
         if(_loc6_)
         {
            while(true)
            {
               §§push(param1);
               §§push(5);
               §§push(1);
               §§push(param4);
               if(!_loc5_)
               {
                  §§push(§§pop() * param3);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(§§pop() % 1);
               break;
            }
            §§pop().§"!W§(§§pop(),§§pop(),§§pop());
         }
      }
   }
}

