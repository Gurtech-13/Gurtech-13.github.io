package §!!X§
{
   import §"p§.§'A§;
   import §"p§.§5X§;
   import §%!Q§.§+#§;
   import §+Y§.§#d§;
   import §2!"§.§8f§;
   import world3d.Entity3D;
   import stage.StageActor;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.layout.§7E§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§2!;§;
   import flash.geom.Point;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import openfl.Assets;
   
   public class §!_§
   {
      
      public static var §[;§:Number;
      
      public static var §+5§:Number;
      
      public static var §@Y§:Number;
      
      public static var §@N§:Number;
      
      public static var §2<§:Number;
      
      public static var §>M§:Number;
      
      public static var §,K§:Number;
      
      public static var §#!4§:Number;
      
      public function §!_§()
      {
      }
      
      public static function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = JSON.parse(Assets.getText("text/MapContents.json"));
         while(true)
         {
            if(!_loc4_)
            {
               §!_§.§2<§ = _loc1_.images.Planet.x + 93;
               if(_loc4_)
               {
                  break;
               }
            }
            §!_§.§>M§ = _loc1_.images.Planet.y + 91.5;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr008a);
         }
         §!_§.§,K§ = _loc1_.images.Wormhole.x + 112.5;
         if(!_loc4_)
         {
            addr008a:
            §!_§.§#!4§ = _loc1_.images.Wormhole.y + 112.5;
            §§goto(addr00a1);
         }
         addr00a1:
         §§push(Number(Math.sqrt((§!_§.§,K§ - §!_§.§2<§) * (§!_§.§,K§ - §!_§.§2<§) + (§!_§.§#!4§ - §!_§.§>M§) * (§!_§.§#!4§ - §!_§.§>M§))));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(§!_§);
            §§push(4.2);
            if(!_loc4_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§pop().§+5§ = §§pop();
            while(true)
            {
               if(_loc3_)
               {
                  §!_§.§[;§ = 1 / §!_§.§+5§;
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(§!_§);
                  §§push(§!_§.§,K§);
                  if(_loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§!_§.§2<§);
                           if(_loc3_)
                           {
                              §§push(§!_§.§,K§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                                 §§push(4.2);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(5.2);
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().§@Y§ = §§pop();
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §§push(§!_§);
               §§push(§!_§.§#!4§);
               if(!_loc4_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§!_§.§>M§);
                        if(!_loc4_)
                        {
                           §§push(§!_§.§#!4§);
                           if(_loc3_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                              §§push(4.2);
                              if(!_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc4_)
                           {
                              break loop4;
                           }
                        }
                        §§push(5.2);
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().§@N§ = §§pop();
               break;
            }
         }
      }
      
      public static function §0!F§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param1);
                        §§push(param3);
                        if(_loc5_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              break loop3;
                           }
                           param1 = §§pop();
                           if(_loc6_)
                           {
                              break loop2;
                           }
                           §§push(param2);
                           if(_loc6_)
                           {
                              break loop1;
                           }
                           §§push(param4);
                           if(_loc6_)
                           {
                              break loop0;
                           }
                        }
                        §§push(§§pop() - §§pop());
                        break loop1;
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr0078);
               }
               addr0071:
               §§push(Number(Math.sqrt(param1 * param1 + param2 * param2)));
               §§push(§!_§.§+5§);
               break loop0;
            }
            param2 = §§pop();
            break loop2;
         }
         addr0078:
         return §§pop() * §§pop();
      }
      
      public static function §9i§(param1:Number, param2:Point = undefined) : Point
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(param2 == null)
         {
            param2 = new Point(0,0);
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(6.283185307179586);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               §§push(2.2);
               break;
            }
            §§push(§§pop() * §§pop());
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr004f);
         }
         addr004f:
         var _loc3_:Number = §§pop();
         while(true)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(6.283185307179586);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(_loc3_);
               }
               §§push(§§pop() - §§pop());
               if(_loc5_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc6_)
            {
               param2.x = §!_§.§[;§ * Number(Math.cos(_loc4_)) + §!_§.§@Y§;
               if(_loc5_)
               {
                  break;
               }
            }
            param2.y = §!_§.§[;§ * Number(Math.sin(_loc4_)) + §!_§.§@N§;
            break;
         }
         return param2;
      }
      
      public static function §1s§(param1:Number, param2:Point = undefined) : Point
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(param2 == null)
         {
            param2 = new Point(0,0);
         }
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() * 6.283185307179586);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            param2.x = Number(Math.cos(_loc3_));
            if(!_loc5_)
            {
               param2.y = Number(Math.sin(_loc3_));
            }
         }
         return param2;
      }
      
      public static function §>!-§(param1:Number, param2:Point = undefined) : Point
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(param2 == null)
         {
            param2 = new Point(0,0);
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(6.283185307179586);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(2.2);
               break;
            }
            §§push(§§pop() / §§pop());
            if(_loc4_)
            {
               break;
            }
            §§goto(addr0067);
         }
         addr0067:
         var _loc3_:Number = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               param2.x = 5.2 * Number(Math.cos(_loc3_));
               if(!_loc4_)
               {
                  break;
               }
            }
            param2.y = 5.2 * Number(Math.sin(_loc3_));
            break;
         }
         return param2;
      }
   }
}

