package haxeutils.math
{
   import § @§.§<!+§;
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§'!]§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-d§.§9^§;
   import §3!b§.BoatRide;
   import §3!b§.Cutscenes;
   import §3!b§.LeaveItHere;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §6[§.§3!0§;
   import §6[§.§8A§;
   import §6[§.§=9§;
   import §6[§.§^!R§;
   import §6[§.§`!O§;
   import §<!&§.§%!§;
   import §[^§.§+`§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.Context3DUtils;
   import nme3D.shader.§<!9§;
   
   public class GrowthFunctions
   {
      
      public function GrowthFunctions()
      {
      }
      
      public static function §`r§(param1:Number, param2:Number, param3:Number = 2.718281828459045) : Function
      {
         var a3:Number;
         var a21:Number;
         var a12:Number;
         var a2:Number;
         var a11:Number;
         var a1:Number;
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §§push(param3);
         if(!_loc7_)
         {
            if(§§pop() <= 1)
            {
               if(!_loc7_)
               {
                  Boot.lastError = new Error();
               }
               throw new Error("exponentBase must be greater than 1! Got " + param3);
            }
            loop0:
            while(true)
            {
               §§push(param2);
               if(_loc6_)
               {
                  if(§§pop() == param1)
                  {
                     a1 = param1;
                     return function(param1:int):Number
                     {
                        var _temp_1:* = true;
                        var _loc2_:Boolean = false;
                        var _loc3_:Boolean = _temp_1;
                        §§push(GrowthFunctions.linearFunc(a1,0,param1));
                        if(_loc3_)
                        {
                           return Number(§§pop());
                        }
                     };
                  }
                  §§push(param2);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc7_)
                        {
                           Boot.lastError = new Error();
                           if(_loc7_)
                           {
                              addr00a0:
                              §§push(param2);
                              if(!_loc7_)
                              {
                                 break loop0;
                              }
                              addr00b2:
                              §§push(-param3);
                              if(_loc6_)
                              {
                                 addr00bb:
                                 §§push(§§pop() + 1);
                              }
                              break;
                           }
                        }
                        throw new Error("Decreasing exponential functions not yet supported!");
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr00bb);
               }
               addr00bf:
            }
            §§push(param1);
            if(_loc6_)
            {
               §§goto(addr00b2);
               §§push(§§pop() - §§pop() * param3);
            }
            §§goto(addr00bf);
         }
         var _loc4_:Number = §§pop();
         §§push(Number(Math.log(param1 - _loc4_)));
         if(_loc6_)
         {
            §§push(§§pop() / Number(Math.log(param3)));
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(param3 == 2.718281828459045)
         {
            a11 = _loc4_;
            a2 = _loc5_;
            if(!_loc7_)
            {
               return §§pop();
            }
         }
         else
         {
            a12 = _loc4_;
            a21 = _loc5_;
            a3 = param3;
         }
         return §§pop();
      }
      
      public static function §!k§(param1:Number, param2:Number) : Function
      {
         var a2:Number;
         var a1:Number;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            a1 = param1;
            if(!_loc4_)
            {
               a2 = param2;
            }
         }
         return function(param1:int):Number
         {
            var _temp_1:* = false;
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = _temp_1;
            §§push(GrowthFunctions.§#!R§(a1,a2,param1));
            if(!_loc3_)
            {
               return Number(§§pop());
            }
         };
      }
      
      public static function linearFunc(param1:Number, param2:Number, param3:int) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
               if(!_loc4_)
               {
                  break;
               }
            }
            return Number(§§pop());
         }
         return §§pop();
      }
      
      public static function boundedFunc(param1:Number, param2:Number, param3:Number, param4:int) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(param2);
               if(!_loc6_)
               {
                  while(true)
                  {
                     §§push(param4);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(param4);
                     }
                     §§push(§§pop() + param3);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(§§pop() / §§pop());
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc5_)
               {
                  break;
               }
            }
            return Number(§§pop());
         }
         return §§pop();
      }
      
      public static function §"L§(param1:Number, param2:Number, param3:int) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() + Number(Math.exp(param3 + param2)));
               if(_loc5_)
               {
                  break;
               }
            }
            return Number(§§pop());
         }
         return §§pop();
      }
      
      public static function §,O§(param1:Number, param2:Number, param3:Number, param4:int) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop() + Number(Math.pow(param3,param4 + param2)));
            if(!_loc6_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public static function §#!R§(param1:Number, param2:Number, param3:int) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1);
         if(!_loc5_)
         {
            return §§pop() * Number(Math.pow(param2,param3));
         }
      }
   }
}

