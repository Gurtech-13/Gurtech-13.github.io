package com.player03.run3.character
{
   import §%!Q§.§ !>§;
   import §%!Z§.§&!S§;
   import layout3d.§>N§;
   import scenes.Cutscenes;
   import scenes.LizardFellAsleep;
   import stage.StageActor;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§1!;§;
   import haxe.Timer;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Lizard extends CharacterBase
   {
      
      public static var init__:Boolean;
      
      public static var §;!&§:Number;
      
      public static var §]5§:§1!;§;
      
      public static var §8!b§:Number = 0.02421307506053269;
      
      public static var §2!E§:Number = 600;
      
      public static var §7!S§:Number = 0.0016666666666666668;
      
      public static var §@`§:Number = 0;
      
      public static var §<w§:Number = 0;
      
      public static var §]!X§:Number = 285;
      
      public static var §-f§:Number = 240;
      
      public static var §;e§:Number = 240;
      
      public static var §#!,§:Number = 200;
      
      public static var §>'§:Number = 1080;
      
      public static var §1w§:Number = 0.6;
      
      public static function  s(param1:int):Number
      {
         return GrowthFunctions.boundedFunc(0.7,0.20000000000000007,1,param1);
      }
      public static function 6!N(param1:int):Number
      {
         return GrowthFunctions.boundedFunc(0.008333333333333333,-0.006666666666666666,2,param1);
      }
      public static var §8+§:int = 0;
      
      public static var §`D§:Boolean = false;
      
      public var §7m§:Object;
      
      public function Lizard(param1:Level, param2:CharacterDef)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = NaN;
         var _loc5_:* = null as Class;
         while(true)
         {
            if(!_loc7_)
            {
               §7m§ = null;
               if(_loc7_)
               {
                  break;
               }
            }
            super(param1,param2);
            break;
         }
         var _loc3_:Lizard = this;
         §§push(_loc3_);
         §§push(_loc3_.§[R§);
         if(!_loc7_)
         {
            §§push(§§pop() * 1.2);
         }
         §§pop().§@!8§(§§pop());
         loop1:
         while(true)
         {
            if(!_loc7_)
            {
               Lizard.§?!-§();
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(Lizard.§@`§);
                           if(!_loc7_)
                           {
                              if(§§pop() <= 0)
                              {
                                 break loop3;
                              }
                              if(_loc7_)
                              {
                                 break loop1;
                              }
                              §§push(Timer.stamp());
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        _loc4_ = §§pop();
                        if(_loc7_)
                        {
                           break loop2;
                        }
                     }
                     _loc5_ = Lizard;
                     if(_loc6_)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.§@`§);
                        if(_loc6_)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    §§push(Lizard.§<w§);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(_loc7_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 §§push(0.0016666666666666668);
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              break;
                           }
                        }
                        §§pop().§6!L§(§§pop());
                        if(_loc6_)
                        {
                           Lizard.§<w§ = _loc4_;
                        }
                     }
                     break;
                  }
                  §,A§();
                  break;
               }
            }
            break loop2;
         }
      }
      
      public static function §6!L§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as §1!;§;
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
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    CharacterRegistry.lizard.§#U§ = false;
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          Lizard.§@`§ = 0;
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                       }
                                       Lizard.§8+§ = 0;
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       break loop5;
                                    }
                                    _loc2_ = Lizard.§]5§;
                                    if(_loc4_)
                                    {
                                       §§push(Save.§@!A§().exists(_loc2_.§=-§));
                                       if(!_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             Lizard.§]5§.§3X§();
                                          }
                                       }
                                    }
                                    break loop0;
                                 }
                                 §§push(param1);
                              }
                              §§push(1);
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              Lizard.§@`§ = param1;
                              break loop0;
                           }
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           §§push(CharacterRegistry.lizard.§#U§);
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 break loop0;
                              }
                              if(CharacterRegistry.§;<§ != CharacterRegistry.lizard)
                              {
                                 break loop4;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr0198);
                           }
                           §§goto(addr01ac);
                        }
                        CharacterRegistry.§3§(CharacterRegistry.§-P§);
                        break;
                     }
                     §§push(false);
                     if(!_loc3_)
                     {
                        if(Main.instance.tunnel == null)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           break loop2;
                        }
                     }
                     §§pop();
                     §§push(Main.instance.tunnel.§?!I§ is § !>§);
                     if(!_loc3_)
                     {
                        break loop2;
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     new LizardFellAsleep(Main.instance.tunnel.§?!I§,Main.instance.tunnel.characters[0].§73§.§[9§).display(1);
                     if(_loc4_)
                     {
                        break loop1;
                     }
                  }
                  else
                  {
                     Cutscenes.§61§().display(3);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     §§goto(addr01ac);
                  }
                  §§goto(addr01b4);
               }
               §§push(Boolean(§§pop()));
               break loop3;
            }
            §§push(Lizard.§]5§);
            §§push(Number(Date.now().getTime()));
            if(!_loc3_)
            {
               §§push(§§pop() / 1000);
            }
            §§pop().§?F§(§§pop());
            addr0198:
            §0!#§.§@!A§().§"j§(0.01);
            if(!_loc3_)
            {
               addr01ac:
               CharacterRegistry.lizard.§#U§ = true;
               addr01b4:
               Lizard.§@`§ = 1;
            }
            break;
         }
         return Lizard.§@`§;
      }
      
      public static function §?!-§() : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:* = null as §1!;§;
         var _loc2_:* = NaN;
         var _loc3_:* = null as §1!;§;
         var _loc4_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc7_)
               {
                  §§push(Lizard.§`D§);
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     break loop0;
                  }
                  Lizard.§`D§ = true;
                  if(_loc7_)
                  {
                     break loop0;
                  }
               }
               _loc1_ = Lizard.§]5§;
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(Save.§@!A§().exists(_loc1_.§=-§));
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        Lizard.§]5§.§3X§();
                        break loop1;
                     }
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(Number(Date.now().getTime()));
                  if(_loc6_)
                  {
                     §§push(§§pop() / 1000);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
                  break loop1;
               }
               _loc3_ = Lizard.§]5§;
               if(_loc6_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc7_)
                        {
                           §§push(Number(Save.§@!A§().get(_loc3_.§=-§,Number(_loc3_.§ -§))));
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(§§pop() - §§pop());
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc7_)
                              {
                                 break loop4;
                              }
                           }
                        }
                        _loc4_ = §§pop();
                        while(true)
                        {
                           addr0114:
                           if(_loc6_)
                           {
                              §§push(_loc4_);
                              break loop4;
                           }
                           CharacterRegistry.lizard.§#U§ = true;
                           if(!_loc7_)
                           {
                              break;
                           }
                           break loop1;
                        }
                     }
                     if(§§pop() >= §§pop())
                     {
                        Lizard.§]5§.§3X§();
                        break loop1;
                     }
                     if(_loc6_)
                     {
                        §§goto(addr0114);
                     }
                  }
                  §§push(600);
                  break loop5;
               }
               §§push(Lizard);
               §§push(Timer.stamp());
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
                  if(_loc6_)
                  {
                     §§push(§§pop() - _loc4_);
                  }
               }
               §§pop().§<w§ = §§pop();
               if(_loc6_)
               {
               }
               break;
            }
            §§push(Timer.stamp());
            if(_loc6_)
            {
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc2_ = §§pop();
            break;
         }
         var _loc5_:Lizard = Lizard;
         if(_loc6_)
         {
            §§push(_loc5_);
            §§push(_loc5_.§@`§);
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  while(true)
                  {
                     §§push(Lizard.§<w§);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(0.0016666666666666668);
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§6!L§(§§pop());
            if(!_loc7_)
            {
               Lizard.§<w§ = _loc2_;
            }
         }
         return CharacterRegistry.lizard.§#U§;
      }
      
      public static function § t§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as Class;
         while(true)
         {
            if(!_loc2_)
            {
               if(Lizard.§@`§ > 0.6)
               {
                  _loc1_ = Lizard;
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     §§push(_loc1_.§@`§);
                     if(!_loc2_)
                     {
                        §§push(Number(Math.random()));
                        if(_loc3_)
                        {
                           addr00d8:
                           §§push(0.5 * _loc3_);
                        }
                        else
                        {
                           §§push(Number(§§pop()));
                           if(!_loc2_)
                           {
                              §§goto(addr00d8);
                              §§push(Number(Lizard.§6!N§(Lizard.§8+§)));
                           }
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().§6!L§(§§pop());
                  }
                  break;
               }
               if(_loc3_)
               {
                  CharacterRegistry.lizard.§#U§ = false;
                  if(_loc3_)
                  {
                     Lizard.§6!L§(Number(Lizard.§ s§(Lizard.§8+§)));
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
               }
            }
            var _temp_2:* = Lizard;
            §§push(_temp_2);
            §§push(_temp_2.§8+§);
            if(!_loc2_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().§8+§ = §§pop();
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.update(param1);
            if(!_loc2_)
            {
               var _temp_2:* = Lizard;
               while(true)
               {
                  §§push(_temp_2);
                  §§push(_temp_2.§<w§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§<w§ = §§pop();
            }
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super.reset();
               if(!_loc1_)
               {
                  break;
               }
            }
            §§push(Lizard.§?!-§());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr0063);
            }
            §§goto(addr005c);
         }
         Main.instance.§,Z§(null);
         if(_loc1_)
         {
            addr005c:
            §,A§();
            §§goto(addr0063);
         }
         addr0063:
      }
      
      override public function §'7§(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = null as Class;
         §§push(false);
         if(_loc6_)
         {
            if(tunnel.§5§ != §,a§.INFINITE)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     §§pop();
                     §§push(tunnel.§5§ == §,a§.PLAYTEST);
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
            }
         }
         loop1:
         while(true)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Timer.stamp());
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              _loc2_ = §§pop();
                              if(_loc5_)
                              {
                                 break loop2;
                              }
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           §§push(Lizard.§<w§);
                           if(_loc6_)
                           {
                              §§push(§§pop() - §§pop());
                              §§push(0.0016666666666666668);
                           }
                           §§push(§§pop() * §§pop());
                           break;
                        }
                     }
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                        Lizard.§<w§ = _loc2_;
                        break;
                     }
                     break loop1;
                  }
               }
               _loc4_ = Lizard;
               while(true)
               {
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.§@`§);
                        if(!_loc5_)
                        {
                           §§push(0.02421307506053269);
                           if(_loc6_)
                           {
                              §§push(§§pop() - _loc3_);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§6!L§(§§pop());
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §,A§();
                  break;
               }
            }
            super.§'7§(param1);
            break;
         }
      }
      
      public function §,A§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = NaN;
         if(!_loc4_)
         {
            if(level != null)
            {
               §§push(Lizard.§@`§ > 0.6);
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc1_:* = §§pop();
               loop0:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == §7m§)
                        {
                           break loop0;
                        }
                     }
                     §7m§ = _loc1_;
                     §§push(_loc1_);
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §"!2§ = 240;
                        if(!_loc4_)
                        {
                           §§push(200);
                           if(_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 addr0090:
                                 §§push(§§findproperty(§?!>§));
                                 §§push(900);
                                 if(!_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§pop().§?!>§ = §§pop();
                                 break;
                              }
                           }
                           addr00c8:
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              §?!>§ = 1080;
                              if(!_loc4_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           break;
                        }
                        §§goto(addr0090);
                     }
                     else
                     {
                        §"!2§ = 285;
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        §§push(240);
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr00c8);
                  }
                  §?`§.§1!#§(104,_loc2_,0.05,0.35);
                  break;
               }
               return;
            }
         }
      }
   }
}

import haxeutils.math.GrowthFunctions;

