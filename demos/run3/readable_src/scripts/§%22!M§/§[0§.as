package §"!M§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import nme3D.shader.§^;§;
   import nme3D.shader.vertex.PositionUVVertex;
   
   public class §[0§ implements §^d§
   {
      
      public static var init__:Boolean;
      
      public static var §8!Z§:Point3D;
      
      public static var §0!H§:Point3D;
      
      public function §[0§()
      {
      }
      
      public function update(param1:§[C§, param2:Number) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:Number = NaN;
         var _loc6_:* = null as Point3D;
         if(!_loc8_)
         {
            loop0:
            while(true)
            {
               if(param1.§5!J§ > 0.15)
               {
                  if(_loc7_)
                  {
                     param1.reset();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
               }
               else
               {
                  QuaternionUtils.rotateVector(param1.transform.§+n§(),§[0§.§8!Z§,§[0§.§0!H§);
               }
               _loc3_ = param1.transform.§<!C§();
               _loc4_ = param1.transform.§%!7§;
               loop1:
               while(true)
               {
                  if(_loc7_)
                  {
                     _loc3_.x = _loc4_.x;
                     _loc3_.y = _loc4_.y;
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  _loc3_.z = _loc4_.z;
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(param1.§5!J§);
                        if(!_loc8_)
                        {
                           §§push(0.1);
                           if(_loc7_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    break loop1;
                                 }
                                 break;
                              }
                              addr0113:
                              addr00fa:
                              §§push(20);
                              §§push(0.15);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() - param1.§5!J§);
                                 if(_loc7_)
                                 {
                                    addr010e:
                                    §§push(§§pop() * §§pop());
                                    §§push(0.04999999999999999);
                                 }
                              }
                              _loc5_ = §§pop() / §§pop();
                              break;
                           }
                           addr00f0:
                           _loc5_ = §§pop() / §§pop();
                           break;
                        }
                        §§goto(addr00fa);
                     }
                  }
                  _loc4_ = §[0§.§0!H§;
                  _loc6_ = _loc3_;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc7_)
                        {
                           if(_loc6_ != null)
                           {
                              break;
                           }
                           if(!_loc7_)
                           {
                              break loop3;
                           }
                        }
                        _loc6_ = new Point3D(0,0,0);
                        break;
                     }
                     _loc6_.x = _loc3_.x + _loc4_.x * _loc5_;
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§goto(addr01ac);
                  }
                  _loc6_.y = _loc3_.y + _loc4_.y * _loc5_;
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(_loc3_.z);
                        if(_loc7_)
                        {
                           §§push(_loc4_.z);
                           if(_loc7_)
                           {
                              §§push(§§pop() * _loc5_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().z = §§pop();
                     if(_loc8_)
                     {
                        break loop0;
                     }
                  }
                  addr01ac:
                  param1.transform.§"w§(_loc3_);
                  break loop0;
               }
               while(true)
               {
                  §§push(20);
                  §§push(param1.§5!J§);
                  if(_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(0.1);
                     if(_loc7_)
                     {
                        §§goto(addr00f0);
                     }
                  }
                  §§goto(addr010e);
               }
               §§goto(addr0113);
            }
         }
      }
      
      public function reset(param1:§[C§) : void
      {
      }
   }
}

