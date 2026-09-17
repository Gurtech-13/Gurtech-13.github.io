package com.player03.run3.character
{
   import §"!M§.§!!P§;
   import world3d.Entity3D;
   import §>T§.§[C§;
   import com.player03.run3.level.Level;
   import haxeutils.math.geom.Point3D;
   
   public class Bunny extends CharacterBase
   {
      
      public static var init__:Boolean;
      
      public static var §`!2§:Number;
      
      public static var §0!@§:Number;
      
      public static var §]!?§:Number = 160;
      
      public static var §+!Y§:Number = 700;
      
      public static var §3D§:Number = 0.413;
      
      public static var §7X§:Number = 2.1;
      
      public var §+p§:Boolean;
      
      public var §@'§:Number;
      
      public var §0i§:Number;
      
      public var §<!`§:Boolean;
      
      public function Bunny(param1:Level, param2:CharacterDef)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §+p§ = false;
         while(true)
         {
            if(_loc4_)
            {
               §@'§ = 0;
               §0i§ = 0;
               §<!`§ = true;
               if(!_loc3_)
               {
                  super(param1,param2);
                  §§push(§§findproperty(§?!>§));
                  §§push(§?!>§);
                  if(_loc4_)
                  {
                     §§push(§§pop() * 1.5);
                  }
                  §§pop().§?!>§ = §§pop();
                  §§push(§§findproperty(§+9§));
                  §§push(§+9§);
                  if(_loc4_)
                  {
                     §§push(§§pop() * 1.2);
                  }
                  §§pop().§+9§ = §§pop();
                  physicsData.§=8§ = 0.1;
                  if(!_loc3_)
                  {
                     §!0§ = 0;
                     §?`§.§;V§ = true;
                  }
                  §?`§.§@e§ = 0;
                  if(_loc3_)
                  {
                     break;
                  }
                  var _temp_2:* = §?`§;
                  §§push(_temp_2);
                  §§push(_temp_2.strength);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 15);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().strength = §§pop();
               }
            }
            var _temp_3:* = §?`§;
            §§push(_temp_3);
            §§push(_temp_3.§#S§);
            if(!_loc3_)
            {
               §§push(§§pop() * 1.1);
            }
            §§pop().§#S§ = §§pop();
            var _temp_4:* = §?`§;
            §§push(_temp_4);
            §§push(_temp_4.length);
            if(!_loc3_)
            {
               §§push(§§pop() * 1.3);
            }
            §§pop().length = §§pop();
            §@!8§(0.3);
            var _temp_5:* = § `§;
            §§push(_temp_5);
            §§push(_temp_5.§,H§);
            if(_loc4_)
            {
               §§push(§§pop() * 0.95);
            }
            §§pop().§,H§ = §§pop();
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §<!`§ = false;
         loop0:
         while(true)
         {
            §§push(false);
            if(_loc2_)
            {
               if(physicsData.onGround)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop();
                  §§push(§[!G§.§>l§.y > -128);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §5!>§();
               }
               super.update(param1);
               §§push(false);
               if(§[!G§.§>l§.z > §"!2§)
               {
                  §§pop();
                  if(_loc2_)
                  {
                     §§push(level.unpausedTime - §@'§ > 2.1);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break loop0;
                  }
                  break;
               }
               break loop0;
            }
            §§goto(addr010d);
         }
         if(§§pop())
         {
            if(!_loc3_)
            {
               var _temp_1:* = §[!G§.§>l§;
               §§push(_temp_1);
               §§push(_temp_1.z);
               if(!_loc3_)
               {
                  §§push(§"!2§);
                  if(!_loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§[!G§.§>l§.z);
                           if(_loc2_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(0.413);
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc2_)
                           {
                              §§push(param1);
                              break loop2;
                           }
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break loop3;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
            }
         }
         addr010d:
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super.reset();
               if(_loc1_)
               {
                  break;
               }
            }
            §0i§ = 0;
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr0046);
         }
         §<!`§ = false;
         addr0046:
      }
      
      override public function §&!F§() : void
      {
      }
      
      override public function §6b§() : Number
      {
         return 540;
      }
      
      override public function §%9§(param1:Entity3D, param2:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as Point3D;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     §§push(param1.§-J§);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(!§§pop());
                     if(!_loc5_)
                     {
                        break loop1;
                     }
                     if(!§§pop())
                     {
                        break loop0;
                     }
                  }
                  _loc3_ = §;!C§.§ i§.normal;
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           §§push(false);
                           if(!_loc4_)
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc5_)
                                    {
                                       if(_loc3_.y >= 0)
                                       {
                                          break;
                                       }
                                       if(_loc4_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§<!`§);
                                    if(_loc5_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr0096);
                                 }
                                 if(!§§pop())
                                 {
                                    break loop4;
                                 }
                                 if(_loc4_)
                                 {
                                    break loop3;
                                 }
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                              }
                              §§push(!§§pop());
                              if(_loc5_)
                              {
                                 addr0096:
                                 §§push(Boolean(§§pop()));
                              }
                              break loop6;
                           }
                           break;
                        }
                        §§push(§?`§.active);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           if(_loc5_)
                           {
                              break loop3;
                           }
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           physicsData.onGround = true;
                           if(_loc4_)
                           {
                              break loop0;
                           }
                        }
                     }
                     if(_loc3_.z < -0.1)
                     {
                        if(!_loc4_)
                        {
                           §+p§ = true;
                        }
                     }
                     break loop0;
                  }
                  §§push(Boolean(§§pop()));
                  break loop4;
               }
               §§goto(addr0111);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §§push(super.§%9§(param1,param2));
         if(_loc5_)
         {
            break loop1;
         }
         addr0111:
         return §§pop();
      }
      
      override public function §?J§() : Boolean
      {
         return false;
      }
      
      public function §5!>§() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               §[!G§.§>l§.y = -160;
               var _temp_2:* = tunnel.analytics;
               §§push(_temp_2);
               §§push(_temp_2.§]!-§);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§]!-§ = §§pop();
               var _temp_3:* = tunnel.analytics;
               §§push(_temp_3);
               §§push(_temp_3.§1v§);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§1v§ = §§pop();
               §<!`§ = true;
               if(!_loc4_)
               {
                  break;
               }
            }
            §@'§ = §0i§;
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     §0i§ = tunnel.unpausedTime;
                     §§push(§+p§);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     _temp_4.y -= 32;
                  }
                  §+p§ = false;
                  break loop1;
               }
               if(§§pop())
               {
                  break loop0;
               }
               addr00e3:
               while(true)
               {
                  §§push(§[!G§.§>l§.z);
                  if(_loc4_)
                  {
                     §§push(0.4);
                     if(_loc4_)
                     {
                        §§push(300);
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc1_:* = §§pop();
               if(!_loc3_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§[!G§.§>l§);
                        if(!_loc3_)
                        {
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 700)
                           {
                              §§push(700);
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                              break;
                           }
                        }
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§pop().z = §§pop();
                  }
                  §§push(Number(§§pop()));
                  break loop5;
               }
               loop6:
               while(true)
               {
                  §§push(false);
                  if(tunnel.unpausedTime < 0.2)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§pop();
                     §§push(tunnel.analytics.§1v§ == 1);
                  }
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           §[!G§.§>l§.y = -192;
                           if(_loc3_)
                           {
                              break loop7;
                           }
                        }
                        §§push(false);
                        if(§9!+§ != null)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              break;
                           }
                           addr022f:
                           §§push(§§findproperty(§"!2§));
                           §§push(300);
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().§"!2§ = §§pop();
                           break loop7;
                        }
                        addr01cc:
                        if(!§§pop())
                        {
                           break loop7;
                        }
                        if(_loc4_)
                        {
                           §§push(300);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           _loc2_ = §§pop();
                           §§push(§§findproperty(§"!2§));
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              §§push(0.5);
                              if(!_loc3_)
                              {
                                 §§push(700);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - _loc2_);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§pop().§"!2§ = §§pop();
                           §9!+§.§@!B§.§^C§(this,§9!+§);
                        }
                        §§goto(addr022f);
                     }
                     §§push(§9!+§.§@!B§ == null);
                     break loop6;
                  }
                  return;
               }
               §§push(!§§pop());
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr01cc);
            }
            §§push(§?`§.active);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            break loop2;
         }
         physicsData.§&!>§ = tunnel.unpausedTime;
         §?`§.§!!2§ = 0;
         §§goto(addr00e3);
      }
   }
}

