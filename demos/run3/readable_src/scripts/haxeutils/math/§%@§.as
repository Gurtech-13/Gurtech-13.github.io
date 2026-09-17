package haxeutils.math
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§`h§;
   import layout3d.PositionData3D;
   import §4n§.Achievements;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.AxisAngle;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §%@§
   {
      
      public var §[=§:Function;
      
      public var inverse:Function;
      
      public function §%@§(param1:Function, param2:Function, param3:Number = -1)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         loop2:
         while(true)
         {
            if(!_loc9_)
            {
               §[=§ = param1;
               if(_loc9_)
               {
                  break;
               }
            }
            inverse = param2;
            loop3:
            while(true)
            {
               if(_loc10_)
               {
                  break loop2;
               }
               addr0059:
               §§push(0);
               if(_loc10_)
               {
                  §§push(int(§§pop()));
                  if(_loc10_)
                  {
                     _loc6_ = §§pop();
                     if(!_loc10_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc6_);
                     }
                     addr0159:
                  }
               }
               while(true)
               {
                  if(§§pop() >= 5)
                  {
                     break loop3;
                  }
                  §§push(_loc6_);
                  if(!_loc9_)
                  {
                     _loc6_++;
                     if(_loc10_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc7_ = §§pop();
                  _loc4_ = Number(Math.random());
                  _loc5_ = Number(param1(_loc4_));
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        §§push(Number(param2(_loc5_)));
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc10_)
                        {
                           _loc8_ = §§pop();
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc9_)
                                 {
                                    if(§§pop() >= 0)
                                    {
                                       addr00e5:
                                       §§push(_loc8_);
                                       break;
                                    }
                                    §§push(_loc8_);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(-§§pop());
                                 break;
                              }
                              §§goto(addr00e5);
                           }
                        }
                     }
                     §§push(param3);
                     break;
                  }
                  §§push(§§pop() < §§pop());
                  if(_loc10_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        Boot.lastError = new Error();
                     }
                     throw new Error("The supplied functions aren\'t inverses of one another!" + "\nf(" + _loc4_ + ") = " + _loc5_ + ", but f^-1(" + _loc5_ + ") = " + Number(param2(_loc5_)));
                  }
                  §§goto(addr0159);
               }
               break;
            }
            §§goto(addr0161);
         }
         if(param3 >= 0)
         {
            if(!_loc9_)
            {
               §§goto(addr0059);
            }
         }
         addr0161:
      }
      
      public static function §%!>§(param1:Number, param2:Number, param3:Number) : §%@§
      {
         var c2:Number;
         var b2:Number;
         var a2:Number;
         var c1:Number;
         var b1:Number;
         var a1:Number;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            a1 = param1;
            if(!_loc5_)
            {
               b1 = param2;
               if(!_loc5_)
               {
                  c1 = param3;
               }
            }
            a2 = param1;
            if(!_loc5_)
            {
               b2 = param2;
               c2 = param3;
            }
         }
         return new §%@§(function(param1:Number):Number
         {
            var _temp_1:* = true;
            var _loc2_:Boolean = false;
            var _loc3_:Boolean = _temp_1;
            §§push(§%@§.§`X§(a1,b1,c1,param1));
            if(_loc3_)
            {
               return Number(§§pop());
            }
         },function(param1:Number):Number
         {
            var _temp_1:* = false;
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = _temp_1;
            §§push(§%@§.§^O§(a2,b2,c2,param1));
            if(!_loc3_)
            {
               return Number(§§pop());
            }
         });
      }
      
      public static function §`X§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc5_)
                     {
                        break;
                     }
                     §§push(param4);
                     if(!_loc6_)
                     {
                        break loop0;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc5_)
                     {
                        break loop1;
                     }
                     §§push(param2);
                     if(!_loc6_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§§pop() * param4);
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  §§goto(addr005e);
               }
               §§goto(addr005d);
            }
            return §§pop();
         }
         §§push(§§pop() + §§pop());
         if(!_loc5_)
         {
            addr005e:
            addr005d:
            §§push(Number(§§pop()) + param3);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         break loop1;
      }
      
      public static function §^O§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(-§§pop());
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(Number(Math.sqrt(param2 * param2 - 4 * param1 * (param3 - param4))));
            if(!_loc6_)
            {
               §§push(§§pop() + §§pop());
               if(_loc6_)
               {
                  break;
               }
               §§push(Number(§§pop()));
               if(_loc6_)
               {
                  break;
               }
               §§push(2 * param1);
            }
            return §§pop() / §§pop();
         }
         return §§pop();
      }
      
      public static function §]!5§() : §%@§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§§findproperty(§%@§));
         §§push(§%@§.§&§);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§push(§%@§.§8^§);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         return new §§pop().§%@§(§§pop(),§§pop());
      }
      
      public static function §&§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * param1;
         }
      }
      
      public static function §8^§(param1:Number) : Number
      {
         return Number(Math.sqrt(param1));
      }
      
      public function §<b§() : §%@§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(inverse);
         if(!_loc2_)
         {
            §§push(§§pop());
            if(!_loc2_)
            {
               §§push(§§pop());
            }
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(§§findproperty(inverse));
            §§push(§[=§);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().inverse = §§pop();
            if(_loc3_)
            {
               §[=§ = _loc1_;
            }
         }
         return this;
      }
   }
}

