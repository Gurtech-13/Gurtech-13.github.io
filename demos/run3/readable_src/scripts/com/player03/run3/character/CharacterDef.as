package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §-!!§.§^!W§;
   import §-d§.§-!'§;
   import §-d§.§9!@§;
   import §-d§.§[!Z§;
   import scenes.§+Z§;
   import §4n§.Achievements;
   import §<&§.§>!A§;
   import §>d§.§=6§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§1G§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import haxe.§=!U§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class CharacterDef
   {
      
      public var §+Q§:Boolean;
      
      public var §%!+§:Boolean;
      
      public var §[P§:§]!W§;
      
      public var §=!!§:String;
      
      public var §7!9§:String;
      
      public var §;G§:String;
      
      public var §1V§:int;
      
      public var §[!%§:Vector.<§0v§>;
      
      public var §6! §:Boolean;
      
      public var §?$§:String;
      
      public var §[t§:String;
      
      public var §2t§:Number;
      
      public var §,#§:Number;
      
      public var §?!F§:§]k§;
      
      public var §?@§:int;
      
      public var §6<§:String;
      
      public var §]w§:String;
      
      public var name:String;
      
      public var §>t§:§0!?§;
      
      public var § j§:§9t§;
      
      public var §3>§:Boolean;
      
      public var id:int;
      
      public var §#!H§:int;
      
      public var §=!B§:int;
      
      public var frames:§-!'§;
      
      public var §6$§:int;
      
      public var §"!X§:Function;
      
      public var §-!X§:Function;
      
      public var color:int;
      
      public var §+! §:Boolean;
      
      public var available:Boolean;
      
      public var §#U§:Boolean;
      
      public function CharacterDef(param1:int, param2:String, param3:int, param4:Function, param5:Object = undefined, param6:String = undefined)
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(param5 == null)
         {
            param5 = true;
         }
         color = 10066329;
         §[t§ = null;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc8_)
                  {
                     §?$§ = null;
                     §#U§ = false;
                     if(!_loc8_)
                     {
                        §3>§ = false;
                        §+Q§ = false;
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                        §%!+§ = false;
                        §2t§ = 1;
                        if(!_loc8_)
                        {
                           §,#§ = 1;
                        }
                        §=!!§ = "ran";
                        if(!_loc9_)
                        {
                           break loop0;
                        }
                        available = false;
                        §+! § = true;
                        if(_loc8_)
                        {
                           break loop0;
                        }
                        §6$§ = 0;
                        if(!_loc9_)
                        {
                           break;
                        }
                        §1V§ = 0;
                        § L§.low = 982838;
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                     }
                     id = param1;
                     if(_loc8_)
                     {
                        break loop0;
                     }
                  }
                  name = param2;
                  break;
               }
               §]w§ = param2;
               §6<§ = param2;
               §#!H§ = param3;
               §-!X§ = param4;
               if(_loc9_)
               {
                  §6! § = param5;
                  break loop0;
               }
               break;
            }
            while(true)
            {
               §§push(§§findproperty(frames));
               if(!_loc8_)
               {
                  if(!param5)
                  {
                     §§push(§[!Z§.§@!A§());
                     break;
                  }
               }
               §§push(§9!@§.§@!A§());
               break;
            }
            §§pop().frames = §§pop();
            var _loc7_:Vector.<§0v§> = new Vector.<§0v§>(0,false);
            loop4:
            while(true)
            {
               if(_loc9_)
               {
                  §[!%§ = _loc7_;
                  while(true)
                  {
                     if(_loc9_)
                     {
                        if(param6 == null)
                        {
                           break;
                        }
                        if(_loc8_)
                        {
                           break loop4;
                        }
                     }
                     §?!F§ = new §]k§(param6);
                     if(!_loc8_)
                     {
                        break;
                     }
                     break loop4;
                  }
               }
               § L§.low = 360635;
               break;
            }
            return;
         }
         §=!B§ = 0;
         break loop1;
      }
      
      public function §`6§() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push("character/");
            if(_loc1_)
            {
               §§push(§§pop() + name);
               if(_loc2_)
               {
                  break;
               }
               §§push(§§pop());
               if(_loc2_)
               {
                  break;
               }
               §§push(§§pop() + ".png");
               if(_loc2_)
               {
                  break;
               }
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §2!Z§() : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = false;
         var _loc3_:* = null as Currency;
         var _loc4_:* = null as §2!;§;
         var _loc5_:* = 0;
         var _loc6_:* = null as §2!;§;
         var _loc7_:* = 0;
         var _loc8_:* = null as §2!;§;
         var _loc9_:* = 0;
         var _loc10_:* = null as §2!;§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc11_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc12_)
                        {
                           §§push(§<!,§());
                           if(_loc12_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc12_)
                              {
                                 §§push(!§§pop());
                              }
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           §§pop();
                           if(!_loc12_)
                           {
                              break loop2;
                           }
                           §§push(§?!F§ == null);
                        }
                        §§push(!§§pop());
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     break loop1;
                  }
                  loop4:
                  while(true)
                  {
                     §§push(§4H§());
                     if(_loc12_)
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                           if(_loc12_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc12_)
                              {
                                 break;
                              }
                           }
                           _loc1_ = §§pop();
                           if(!_loc11_)
                           {
                              §§push(_loc1_);
                              break;
                           }
                           break loop4;
                        }
                     }
                     if(§§pop() > 0)
                     {
                        if(_loc12_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     _loc2_ = false;
                     break loop0;
                  }
               }
               _loc3_ = Currency.§@!A§();
               _loc4_ = Currency.softEarned;
               if(_loc12_)
               {
                  §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                  if(!_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc5_ = §§pop();
               }
               _loc6_ = Currency.softBought;
               if(!_loc11_)
               {
                  §§push(_loc5_);
                  if(!_loc11_)
                  {
                     §§push(§§pop() + int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))));
                     if(!_loc11_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc7_ = §§pop();
               }
               _loc8_ = Currency.softSpent;
               if(_loc12_)
               {
                  while(true)
                  {
                     §§push(_loc7_);
                     if(!_loc11_)
                     {
                        §§push(§§pop() - int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc9_ = §§pop();
               }
               _loc10_ = Currency.softFromOffers;
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc12_)
                  {
                     §§push(int(Save.§@!A§().get(_loc10_.§=-§,int(_loc10_.§ -§))));
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(_loc1_);
                  break;
               }
               §§push(§§pop() >= §§pop());
               if(_loc12_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc12_)
                  {
                     _loc2_ = §§pop();
                     break loop0;
                  }
               }
               §§goto(addr01c4);
            }
            return;
         }
         addr01c4:
         if(_loc2_)
         {
            §§push(Currency.§@!A§());
            §§push(_loc1_);
            §§push("Unlock ");
            if(_loc12_)
            {
               §§push(§§pop() + name);
               if(!_loc11_)
               {
                  §§push(§§pop());
               }
            }
            §§pop().recordSoftSpent(§§pop(),§§pop());
            if(_loc12_)
            {
               §?!F§.§?F§(true);
               if(!_loc11_)
               {
                  CharacterRegistry.§3§(this);
                  if(_loc11_)
                  {
                     break loop1;
                  }
               }
               §0!#§.§@!A§().§[§();
            }
         }
         break loop1;
      }
      
      public function §@>§() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push("menu/characterselection/");
            if(_loc1_)
            {
               §§push(§§pop() + name);
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     break;
                  }
                  §§push(§§pop() + ".png");
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §,!-§() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            §§push("menu/characterselection/");
            if(_loc2_)
            {
               §§push(§§pop() + name);
               if(_loc1_)
               {
                  break;
               }
               §§push(§§pop());
               if(_loc2_)
               {
                  §§push(§§pop() + "Front.png");
                  if(_loc1_)
                  {
                     break;
                  }
               }
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §<!,§() : Boolean
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc1_:* = false;
         var _loc2_:* = null as §]k§;
         var _loc3_:* = null as § !>§;
         var _loc4_:* = null as §-Q§;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = null as § !>§;
         var _loc8_:* = null as §-Q§;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc11_)
                  {
                     § L§.low = 944408;
                     if(!available)
                     {
                        §§push(false);
                        if(!_loc11_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     if(id == 0)
                     {
                        §§push(true);
                        break loop1;
                     }
                     if(_loc11_)
                     {
                        continue loop5;
                     }
                  }
                  if(§?!F§ == null)
                  {
                     §§push(false);
                     if(!_loc11_)
                     {
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     break loop1;
                  }
                  if(!_loc12_)
                  {
                     continue loop5;
                  }
                  _loc2_ = §?!F§;
                  if(_loc12_)
                  {
                     §§push(Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§))));
                     if(!_loc11_)
                     {
                        _loc1_ = §§pop();
                        continue loop5;
                     }
                     §§goto(addr0460);
                  }
                  else
                  {
                     §§goto(addr01dc);
                  }
               }
               _loc1_ = §§pop();
               continue loop5;
            }
            _loc1_ = Boolean(§§pop());
            continue loop5;
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc12_)
                        {
                           if(§§pop())
                           {
                              if(_loc12_)
                              {
                                 return true;
                              }
                              break;
                           }
                           if(this == CharacterRegistry.skater)
                           {
                              _loc3_ = §>K§.§0x§;
                              _loc4_ = _loc3_.§0!R§;
                              loop13:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc11_)
                                    {
                                       while(true)
                                       {
                                          §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                                          if(!_loc11_)
                                          {
                                             _loc5_ = int(§§pop());
                                             if(_loc11_)
                                             {
                                                break;
                                             }
                                             §§push(_loc3_.levelCount);
                                          }
                                          _loc6_ = int(§§pop());
                                          if(!_loc11_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(_loc5_);
                                       §§push(_loc6_);
                                       if(!_loc12_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc6_);
                                          break loop13;
                                       }
                                    }
                                    §§push(_loc5_);
                                    break loop13;
                                 }
                                 return §§pop() > §§pop();
                              }
                              §§push(9);
                              break loop14;
                           }
                           loop16:
                           while(true)
                           {
                              if(this == CharacterRegistry.lizard)
                              {
                                 if(_loc12_)
                                 {
                                    _loc3_ = §>K§.§0x§;
                                    _loc4_ = _loc3_.§0!R§;
                                    while(true)
                                    {
                                       if(!_loc11_)
                                       {
                                          _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                                          if(_loc11_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc6_ = _loc3_.levelCount;
                                       if(_loc12_)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc6_);
                                          if(!_loc11_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                break;
                                             }
                                             addr01a9:
                                             §§push(_loc6_);
                                             §§push(39);
                                          }
                                          return §§pop() > §§pop();
                                       }
                                       break;
                                    }
                                    §§goto(addr01a9);
                                 }
                              }
                              else if(this != CharacterRegistry.duplicator)
                              {
                                 loop18:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!_loc11_)
                                       {
                                          if(this != CharacterRegistry.pastafarian)
                                          {
                                             §§pop();
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                             §§push(this == CharacterRegistry.gentleman);
                                             if(!_loc12_)
                                             {
                                                break loop18;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          if(this == CharacterRegistry.§7W§)
                                          {
                                             if(Achievements.§&!#§ != null)
                                             {
                                                §§push(Achievements.§ ![§());
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr0349);
                                                }
                                                addr034a:
                                                §§push(8);
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   break loop18;
                                                }
                                                break loop2;
                                             }
                                             if(_loc12_)
                                             {
                                                §§goto(addr0333);
                                             }
                                          }
                                          else if(this != CharacterRegistry.child)
                                          {
                                             addr044d:
                                             addr0460:
                                             if(this == CharacterRegistry.§52§ || this == CharacterRegistry.§]![§)
                                             {
                                                if(!_loc11_)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             else
                                             {
                                                §§push(true);
                                                if(this == CharacterRegistry.§5D§)
                                                {
                                                   break loop5;
                                                }
                                                §§pop();
                                                if(!_loc11_)
                                                {
                                                   break loop8;
                                                }
                                             }
                                             continue loop9;
                                          }
                                          _loc3_ = §>K§.§^!+§;
                                          _loc4_ = _loc3_.§0!R§;
                                          while(true)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   _loc5_ = int(§§pop());
                                                   if(_loc11_)
                                                   {
                                                      continue loop22;
                                                   }
                                                }
                                                §§push(_loc3_.levelCount);
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                _loc6_ = int(§§pop());
                                                while(true)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§push(_loc5_);
                                                      §§push(_loc6_);
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§push(_loc6_);
                                                         break loop21;
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         continue loop22;
                                                      }
                                                   }
                                                   §§push(_loc5_);
                                                   break loop21;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   return true;
                                                }
                                                continue loop22;
                                             }
                                             §§goto(addr03cd);
                                          }
                                          _loc7_ = §>K§.§&!H§;
                                          _loc8_ = _loc7_.§0!R§;
                                          loop22:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc12_)
                                                {
                                                   §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   _loc9_ = int(§§pop());
                                                   if(_loc11_)
                                                   {
                                                      break loop22;
                                                   }
                                                }
                                                §§push(_loc7_.levelCount);
                                                if(!_loc11_)
                                                {
                                                   _loc10_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         break loop22;
                                                      }
                                                      addr0433:
                                                      §§push(_loc9_);
                                                      break;
                                                   }
                                                }
                                                addr0440:
                                                return §§pop() >= _loc7_.levelCount;
                                                addr043b:
                                             }
                                             §§push(_loc10_);
                                             if(_loc12_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §§goto(addr0433);
                                                }
                                                else
                                                {
                                                   §§push(_loc10_);
                                                }
                                                §§goto(addr043b);
                                             }
                                             §§goto(addr0440);
                                          }
                                          §§push(_loc9_);
                                          break loop23;
                                       }
                                       §§push(§9'§.§@!A§().§?!;§.§?!#§("priest-promo"));
                                       if(!_loc11_)
                                       {
                                          §§push(0);
                                          if(_loc12_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§push(Currency.§@!A§());
                                                   §§push(§4H§());
                                                   if(!_loc11_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   §§pop().recordSoftEarned(§§pop(),null);
                                                   §§push(Currency.§@!A§());
                                                   §§push(§4H§());
                                                   if(!_loc11_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   §§pop().recordSoftSpent(§§pop(),null);
                                                   break loop16;
                                                }
                                                addr0333:
                                                return CharacterRegistry.§;<§ == this;
                                             }
                                             break;
                                          }
                                          break loop2;
                                       }
                                       addr0349:
                                       §§push(int(§§pop()));
                                       §§goto(addr034a);
                                    }
                                    _loc2_ = §?!F§;
                                    return Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§)));
                                    addr02ee:
                                 }
                                 return §§pop();
                              }
                              §§push(§9'§.§@!A§().§?!;§.§?!#§("duplicator-promo"));
                              if(!_loc11_)
                              {
                                 §§push(int(§§pop()));
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       addr01dc:
                                       §§push(Currency.§@!A§());
                                       §§push(§4H§());
                                       if(_loc12_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       §§pop().recordSoftEarned(§§pop(),null);
                                       §§push(Currency.§@!A§());
                                       §§push(§4H§());
                                       if(!_loc11_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       §§pop().recordSoftSpent(§§pop(),null);
                                       if(!_loc12_)
                                       {
                                          continue loop6;
                                       }
                                       §?!F§.§?F§(true);
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc2_ = §?!F§;
                                    return Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§)));
                                 }
                                 break loop2;
                              }
                              break loop3;
                           }
                           §?!F§.§?F§(true);
                           §§goto(addr02ee);
                        }
                        §§goto(addr044d);
                     }
                     §§push(this == CharacterRegistry.§4s§);
                     if(!_loc11_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc11_)
                        {
                           break;
                        }
                     }
                     §§goto(addr0605);
                  }
                  if(§§pop())
                  {
                     _loc3_ = §>K§.§?t§;
                     _loc4_ = _loc3_.§0!R§;
                     loop9:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc11_)
                           {
                              §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                              if(!_loc12_)
                              {
                                 break;
                              }
                              _loc5_ = §§pop();
                              if(!_loc11_)
                              {
                                 §§push(_loc3_.levelCount);
                                 if(!_loc11_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    break loop9;
                                 }
                              }
                           }
                           §§push(_loc5_);
                           §§push(_loc6_);
                           if(_loc12_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc6_);
                                 break;
                              }
                              if(!_loc11_)
                              {
                                 break loop9;
                              }
                              _loc7_ = §>K§.§<Y§;
                              _loc8_ = _loc7_.§0!R§;
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc12_)
                                    {
                                       §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       _loc9_ = §§pop();
                                       if(_loc11_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    §§push(_loc7_.levelCount);
                                    break;
                                 }
                                 _loc10_ = §§pop();
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 §§push(_loc9_);
                                 §§push(_loc10_);
                                 if(_loc12_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       break;
                                    }
                                    §§goto(addr05eb);
                                    §§push(_loc10_);
                                 }
                                 §§goto(addr05f0);
                              }
                              §§push(_loc9_);
                              if(_loc11_)
                              {
                              }
                              addr05f0:
                              return §§pop() >= _loc7_.levelCount;
                              addr05eb:
                           }
                           addr0576:
                           if(§§pop() >= §§pop())
                           {
                              return true;
                           }
                           continue loop11;
                        }
                        §§goto(addr0576);
                     }
                     §§push(_loc5_);
                     break loop10;
                  }
                  §§push(§1V§);
                  break loop3;
               }
               _loc3_ = §>K§.§^!+§;
               _loc4_ = _loc3_.§0!R§;
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                        if(!_loc12_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(_loc11_)
                        {
                           break;
                        }
                        _loc5_ = §§pop();
                        if(!_loc12_)
                        {
                           break loop6;
                        }
                     }
                     _loc6_ = _loc3_.levelCount;
                     if(_loc12_)
                     {
                        §§push(_loc5_);
                        if(!_loc11_)
                        {
                           §§push(_loc6_);
                           if(!_loc11_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 break loop6;
                              }
                              §§push(_loc6_);
                              break;
                           }
                           §§goto(addr04db);
                        }
                        break;
                     }
                     break loop6;
                  }
                  addr04db:
                  return §§pop() >= §§pop();
               }
               §§push(_loc5_);
               break loop7;
            }
            §§push(0);
            break;
         }
         addr0605:
         return §§pop() <= §§pop();
      }
      
      public function §2!F§(param1:Level) : CharacterBase
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §§push(§<!,§());
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                  }
               }
               if(!§§pop())
               {
                  return §-!X§(param1,this);
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            if(this == CharacterRegistry.§;<§)
            {
               break;
            }
            return CharacterRegistry.§;<§.§2!F§(param1);
         }
         return null;
      }
      
      public function §4H§() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc1_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(§"!X§);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop() == null)
                     {
                        break;
                     }
                     if(!_loc1_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Boolean(§"!X§()));
                  if(_loc1_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  break loop0;
               }
               §§goto(addr007c);
               §§push(§1V§);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §§push(§6$§);
         if(_loc1_)
         {
            return §§pop();
         }
         addr007c:
         return §§pop();
      }
      
      public function §@L§(param1:§1G§, param2:Object = undefined) : String
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:* = null as Vector.<§0v§>;
         var _loc6_:* = null as §0v§;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         while(true)
         {
            if(!_loc10_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = 0.25;
            break;
         }
         §§push(0);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         _loc5_ = §[!%§;
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               loop14:
               while(true)
               {
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc9_)
                        {
                           break loop14;
                        }
                        if(§§pop() < int(_loc5_.length))
                        {
                           _loc6_ = _loc5_[_loc4_];
                           if(!_loc10_)
                           {
                              _loc4_++;
                              if(!_loc10_)
                              {
                                 §§push(_loc6_.§3!A§(param1));
                                 if(!_loc10_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(_loc10_)
                                 {
                                    continue;
                                 }
                              }
                              _loc3_++;
                           }
                           continue;
                        }
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        §§push(0);
                        if(!_loc10_)
                        {
                           §§push(int(§§pop()));
                           if(_loc10_)
                           {
                              break loop6;
                           }
                        }
                        _loc4_ = §§pop();
                        if(_loc10_)
                        {
                           break loop5;
                        }
                     }
                  }
                  §§push(0);
                  if(_loc9_)
                  {
                     break;
                  }
                  break loop6;
               }
               §§push(int(§§pop()));
               break;
            }
            _loc7_ = §§pop();
            break;
         }
         _loc5_ = §!>§.§`q§;
         loop1:
         while(true)
         {
            §§push(_loc7_);
            §§push(int(_loc5_.length));
            if(!_loc9_)
            {
               break;
            }
            if(§§pop() >= §§pop())
            {
               while(true)
               {
                  if(_loc9_)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        break;
                     }
                     if(_loc3_ > 0)
                     {
                        break;
                     }
                     if(_loc10_)
                     {
                        break;
                     }
                     §§pop();
                  }
                  §§push(_loc4_);
                  §§push(0);
                  break loop1;
               }
               §§goto(addr016c);
            }
            _loc6_ = _loc5_[_loc7_];
            while(true)
            {
               if(_loc9_)
               {
                  _loc7_++;
                  if(_loc10_)
                  {
                     break;
                  }
               }
               §§push(_loc6_.§3!A§(param1));
               if(_loc9_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               continue loop1;
            }
            _loc4_++;
         }
         §§push(§§pop() > §§pop());
         if(!_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         addr016c:
         if(§§pop())
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  if(_loc9_)
                  {
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Number(Math.random()));
                           if(!_loc10_)
                           {
                              §§push(_loc3_);
                              if(_loc10_)
                              {
                                 break;
                              }
                              §§push(§§pop() + _loc4_ * param2);
                              if(_loc9_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc10_)
                              {
                                 break loop10;
                              }
                           }
                           §§push(_loc3_);
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc3_);
                           §§push(Number(Math.random()));
                           if(!_loc10_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc7_ = §§pop();
                                 addr01c5:
                                 _loc5_ = §[!%§;
                                 if(_loc9_)
                                 {
                                    break loop9;
                                 }
                                 break loop8;
                              }
                              break;
                           }
                        }
                        else
                        {
                           §§push(_loc4_);
                           §§push(Number(Math.random()));
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                     §§push(int(§§pop()));
                     if(_loc9_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc7_ = §§pop();
                     _loc5_ = §!>§.§`q§;
                     break;
                  }
                  §§goto(addr01c5);
               }
               while(true)
               {
                  §§push(0);
                  if(!_loc10_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  _loc8_ = §§pop();
                  if(!_loc10_)
                  {
                     break loop8;
                  }
               }
               §§goto(addr026d);
            }
            while(true)
            {
               §§push(_loc8_);
               addr026d:
               while(§§pop() < int(_loc5_.length))
               {
                  _loc6_ = _loc5_[_loc8_];
                  if(!_loc10_)
                  {
                     _loc8_++;
                     if(!_loc10_)
                     {
                        if(!_loc6_.available)
                        {
                           break;
                        }
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                  }
                  if(_loc7_ <= 0)
                  {
                     if(_loc9_)
                     {
                        return _loc6_.§^3§;
                     }
                  }
                  else
                  {
                     _loc7_--;
                  }
                  break;
               }
            }
         }
         return null;
      }
      
      public function §1!L§(param1:Level) : CharacterBase
      {
         return §-!X§(param1,this);
      }
      
      public function §12§(param1:String, param2:Object = undefined, param3:Object = undefined, param4:§ !>§ = undefined, param5:§+Z§ = undefined) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(!_loc7_)
                  {
                     break loop0;
                  }
               }
               if(param4 != null)
               {
                  if(_loc7_)
                  {
                     §§push(param4.§#R§);
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           addr008f:
                           param2 = §§pop();
                           break;
                        }
                     }
                     param2 = §§pop();
                     break;
                  }
                  break loop0;
               }
               if(param5 == null)
               {
                  break;
               }
               if(_loc6_)
               {
                  break loop0;
               }
               §§push(param5.§<!I§);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               §§goto(addr008f);
            }
            §[!%§.push(new §0v§(param1,param2,param3));
            break;
         }
      }
   }
}

