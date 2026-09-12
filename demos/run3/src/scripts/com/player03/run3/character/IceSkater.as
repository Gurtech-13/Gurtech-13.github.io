package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §"!M§.§8!F§;
   import §%!Z§.§&!S§;
   import §6[§.§+B§;
   import §6[§.§`!O§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class IceSkater extends Skater
   {
      
      public function IceSkater(param1:§ !W§, param2:§6O§)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               super(param1,param2);
               if(!_loc3_)
               {
                  §§push(§§findproperty(§?!>§));
                  §§push(§?!>§);
                  if(_loc4_)
                  {
                     §§push(§§pop() * 0.85);
                  }
                  §§pop().§?!>§ = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §&e§ = 1;
            break;
         }
      }
      
      override public function §=5§(param1:§[C§, param2:Point3D, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(super.§=5§(param1,param2,param3));
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc6_)
                        {
                           §§push(false);
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(param2.y >= 0.4)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              break loop2;
                           }
                           §§pop();
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                        }
                        §§push(param1.§@!B§ == null);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           if(_loc6_)
                           {
                              break loop2;
                           }
                           break;
                        }
                        break loop2;
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(param1.§@!B§ is §8!F§);
                           if(!_loc6_)
                           {
                              break loop0;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        break loop0;
                     }
                     §§goto(addr00c6);
                  }
                  §§push(Boolean(§§pop()));
                  break loop4;
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        addr00c6:
                        §-,§ = 1.6;
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     §§push(§§findproperty(§6N§));
                     §§push(§+9§);
                     if(_loc6_)
                     {
                        §§push(§§pop() * 1.15);
                     }
                     §§pop().§6N§ = §§pop();
                     break;
                  }
               }
            }
            return _loc4_;
         }
         return §§pop();
      }
   }
}

