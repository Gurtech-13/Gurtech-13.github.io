package map
{
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§&r§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §&%§.§@w§;
   import §-!!§.§ !,§;
   import §-!!§.§&l§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §-!!§.§8!8§;
   import §1!a§.§75§;
   import §1!a§.§^u§;
   import scenes.CrossingTheGap;
   import scenes.Cutscenes;
   import scenes.LightningStrikesTwice;
   import scenes.TheGap;
   import §4!8§.§[!!§;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import game.§&!K§;
   import game.§>f§;
   import §<!N§.§&U§;
   import §<!N§.§,1§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§4!b§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import motion.Actuate;
   
   public class §@2§ extends §[k§ implements §@[§
   {
      
      public var §8L§:§,C§;
      
      public var §-!8§:§+"§;
      
      public var §5J§:§&U§;
      
      public var §%0§:Vector.<§,1§>;
      
      public var §[%§:§&l§;
      
      public var §+!`§:Shape;
      
      public function §@2§(param1:§&l§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super();
               if(_loc2_)
               {
                  break;
               }
            }
            §[%§ = param1;
            break;
         }
      }
      
      public static function §6Q§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as §+#§;
         var _loc4_:* = false;
         var _loc5_:* = null as §2!;§;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§+#§> = §+#§.§,!B§();
         if(!_loc7_)
         {
            loop0:
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(_loc6_)
               {
                  _loc1_++;
               }
               _loc5_ = _loc3_.§,U§;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                           §§push(int(_loc3_.§ b§.length));
                           if(!_loc7_)
                           {
                              §§push(§§pop() + int(_loc3_.§-!>§.length));
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(false);
                              if(_loc6_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc6_)
                                 {
                                    break loop2;
                                 }
                              }
                              break;
                           }
                           if(_loc7_)
                           {
                              break loop1;
                           }
                        }
                        §§push(_loc3_.§&J§);
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        §§push(!§§pop());
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc7_)
                        {
                           break loop2;
                        }
                        _loc4_ = §§pop();
                        if(_loc6_)
                        {
                        }
                        §§goto(addr00f5);
                     }
                     if(!§§pop())
                     {
                        continue loop0;
                     }
                     if(_loc6_)
                     {
                        break loop1;
                     }
                     §§goto(addr0107);
                  }
                  _loc4_ = §§pop();
                  if(!_loc7_)
                  {
                     addr00f5:
                     §§push(_loc4_);
                     break loop3;
                  }
                  break;
               }
               _loc3_.§>c§();
               addr0107:
               return;
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as §,1§;
         if(!_loc7_)
         {
            if(visible)
            {
               var _loc2_:Number = 0;
               §§push(0);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               var _loc4_:Vector.<§,1§> = §%0§;
               if(!_loc7_)
               {
                  while(_loc3_ < int(_loc4_.length))
                  {
                     _loc5_ = _loc4_[_loc3_];
                     if(_loc6_)
                     {
                        _loc3_++;
                        if(!_loc7_)
                        {
                           if(_loc5_ == null)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              continue;
                           }
                           _loc5_.update(param1);
                           if(_loc7_)
                           {
                              continue;
                           }
                        }
                        _loc2_ = Number(_loc5_.alpha);
                     }
                  }
               }
               §§push(false);
               if(!_loc7_)
               {
                  if(§+!`§.alpha == 0)
                  {
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           §§push(_loc2_ > 0.8);
                           if(_loc7_)
                           {
                              break;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                  }
               }
               if(§§pop())
               {
                  §+!`§.alpha = 0.02;
                  Actuate.tween(§+!`§,0.4,{"alpha":1});
               }
               §5J§.update(param1);
               return;
            }
         }
      }
      
      public function §,!3§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc20_:Boolean = true;
         var _loc21_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc10_:* = null as § !>§;
         var _loc11_:* = null as §-Q§;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = null as § !>§;
         var _loc15_:* = null as §-Q§;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = null as TheGap;
         var _loc19_:* = null as §]k§;
         var _loc6_:§ !>§ = §>K§.§>=§;
         var _loc7_:§-Q§ = _loc6_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
         if(!_loc21_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(_loc6_.levelCount);
         if(_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc21_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc8_);
                     if(_loc20_)
                     {
                        §§push(_loc9_);
                        if(!_loc20_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(_loc21_)
                           {
                              break loop1;
                           }
                           §§push(_loc8_);
                           if(_loc20_)
                           {
                           }
                        }
                        else
                        {
                           §§push(_loc9_);
                        }
                     }
                     §§push(_loc6_.levelCount);
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     if(_loc20_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(false);
                  if(!_loc21_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc5_ = §§pop();
                  break loop0;
               }
            }
            break loop1;
         }
         while(true)
         {
            §§push(_loc5_);
            if(!_loc21_)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§push(§>K§.§>-§.§'m§(6));
                           if(!_loc20_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc20_)
                           {
                              break loop5;
                           }
                           _loc4_ = §§pop();
                           if(_loc21_)
                           {
                              break loop4;
                           }
                        }
                        else
                        {
                           _loc4_ = false;
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc20_)
                           {
                              break loop7;
                           }
                           addr022f:
                           _loc3_ = §§pop();
                           if(_loc21_)
                           {
                           }
                           break;
                        }
                        §§goto(addr024a);
                     }
                     if(§§pop())
                     {
                        if(_loc20_)
                        {
                           §§goto(addr022f);
                           §§push(§>K§.§`S§.§'m§(3));
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(_loc20_)
                        {
                           break;
                        }
                        §§goto(addr0242);
                     }
                     §§goto(addr024a);
                  }
                  addr0242:
                  _loc3_ = Boolean(§§pop());
                  if(_loc21_)
                  {
                     break;
                  }
                  addr024a:
                  §§push(_loc3_);
                  if(!_loc21_)
                  {
                     if(§§pop())
                     {
                        break;
                     }
                     §§push(false);
                  }
                  §§push(Boolean(§§pop()));
               }
               _loc18_ = Cutscenes.§,!L§();
               if(!_loc21_)
               {
                  if(_loc18_.§?^§ == null)
                  {
                     §§push(false);
                     if(_loc20_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                     break;
                  }
                  if(!_loc20_)
                  {
                     break;
                  }
               }
               _loc19_ = _loc18_.§?^§;
               §§push(Boolean(Save.§@!A§().get(_loc19_.§=-§,Boolean(_loc19_.§ -§))));
               if(_loc20_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc21_)
                  {
                     _loc2_ = §§pop();
                     break;
                  }
                  §§goto(addr02c6);
               }
               §§goto(addr02c5);
            }
            _loc2_ = §§pop();
            break;
         }
         §§push(_loc2_);
         if(!_loc21_)
         {
            addr02c5:
            §§goto(addr02c6);
         }
         addr02c6:
         if(§§pop())
         {
            Cutscenes.§,!L§().display(2);
            return;
         }
         visible = !visible;
         while(true)
         {
            if(_loc20_)
            {
               if(visible)
               {
                  reset();
                  break;
               }
               §-!8§.visible = false;
               if(_loc21_)
               {
                  break;
               }
            }
            §&r§.§@!A§().§?!!§();
            break;
         }
      }
      
      public function §^!A§(param1:MouseEvent) : void
      {
         Cutscenes.§,!L§().display(2);
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc35_:Boolean = true;
         var _loc36_:* = §§pop();
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:* = false;
         var _loc8_:* = null as § !>§;
         var _loc9_:* = null as §-Q§;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = null as § !>§;
         var _loc13_:* = null as §-Q§;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc17_:* = null as §+#§;
         var _loc18_:* = false;
         var _loc19_:* = null as §2!;§;
         var _loc20_:* = null as §+#§;
         var _loc21_:* = null as §2!;§;
         var _loc22_:* = false;
         var _loc23_:* = null as §2!;§;
         var _loc25_:* = null as §]k§;
         var _loc26_:* = null as Vector.<§,1§>;
         var _loc27_:* = null as §,1§;
         var _loc28_:* = null as §+#§;
         var _loc29_:* = false;
         var _loc30_:* = null as Point;
         var _loc32_:* = null as Map;
         var _loc33_:* = NaN;
         var _loc34_:* = null as §,1§;
         var _loc4_:§ !>§ = §>K§.§>=§;
         var _loc5_:§-Q§ = _loc4_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
         if(!_loc36_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(_loc4_.levelCount);
         if(_loc35_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         loop6:
         while(true)
         {
            if(!_loc36_)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc6_);
                     if(_loc35_)
                     {
                        §§push(_loc7_);
                        if(_loc36_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(_loc36_)
                           {
                              break loop7;
                           }
                           §§push(_loc6_);
                           if(_loc35_)
                           {
                           }
                        }
                        else
                        {
                           §§push(_loc7_);
                        }
                     }
                     §§push(_loc4_.levelCount);
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     if(_loc35_)
                     {
                        _loc8_ = §>K§.§`S§;
                        _loc9_ = _loc8_.§0!R§;
                        if(!_loc36_)
                        {
                           _loc10_ = int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§)));
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc36_)
                                    {
                                       §§push(_loc8_.levelCount);
                                       if(!_loc35_)
                                       {
                                          break;
                                       }
                                       §§push(int(§§pop()));
                                       if(!_loc35_)
                                       {
                                          break loop10;
                                       }
                                       _loc11_ = §§pop();
                                       if(!_loc35_)
                                       {
                                          break loop9;
                                       }
                                    }
                                    §§push(_loc10_);
                                    break loop10;
                                 }
                                 §§goto(addr0186);
                              }
                              §§push(_loc11_);
                              if(!_loc36_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc36_)
                                    {
                                       §§push(_loc10_);
                                       break loop12;
                                    }
                                    break;
                                 }
                                 §§push(_loc11_);
                                 break loop12;
                              }
                              addr0186:
                              if(§§pop() < §§pop())
                              {
                                 if(_loc35_)
                                 {
                                    break;
                                 }
                                 break loop7;
                              }
                              §§push(true);
                              if(_loc35_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc3_ = §§pop();
                              break loop7;
                           }
                           _loc12_ = §>K§.§;!4§;
                           _loc13_ = _loc12_.§0!R§;
                           if(_loc35_)
                           {
                              while(true)
                              {
                                 §§push(int(Save.§@!A§().get(_loc13_.§=-§,int(_loc13_.§ -§))));
                                 if(!_loc36_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc36_)
                                    {
                                       _loc14_ = §§pop();
                                       §§push(_loc12_.levelCount);
                                    }
                                    _loc15_ = §§pop();
                                    if(!_loc35_)
                                    {
                                       break loop7;
                                    }
                                    §§push(_loc14_);
                                    §§push(_loc15_);
                                    if(!_loc35_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() < §§pop() ? _loc14_ : _loc15_);
                                 }
                                 §§push(_loc12_.levelCount);
                                 break;
                              }
                              _loc3_ = §§pop() >= §§pop();
                              break;
                           }
                           break loop6;
                        }
                     }
                     break;
                  }
                  §§push(false);
                  if(!_loc36_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc3_ = §§pop();
                  break;
               }
            }
            break loop7;
         }
         §-!8§.visible = false;
         if(_loc35_)
         {
            return;
         }
         var _loc16_:Vector.<§+#§> = §+#§.§,!B§();
         if(!_loc36_)
         {
            loop0:
            while(_loc10_ < int(_loc16_.length))
            {
               _loc17_ = _loc16_[_loc10_];
               _loc19_ = _loc17_.§,U§;
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     loop20:
                     while(true)
                     {
                        if(_loc35_)
                        {
                           §§push(int(Save.§@!A§().get(_loc19_.§=-§,int(_loc19_.§ -§))));
                           if(_loc35_)
                           {
                              §§push(int(_loc17_.§ b§.length));
                              if(!_loc36_)
                              {
                                 §§push(§§pop() + int(_loc17_.§-!>§.length));
                              }
                              loop21:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc36_)
                                       {
                                          break;
                                       }
                                       §§push(_loc17_.§&J§);
                                       if(!_loc36_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc35_)
                                          {
                                             _loc18_ = §§pop();
                                             if(_loc35_)
                                             {
                                                break;
                                             }
                                             break loop13;
                                          }
                                          break loop21;
                                       }
                                    }
                                    else
                                    {
                                       §§push(true);
                                       if(!_loc35_)
                                       {
                                          break loop20;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc36_)
                                    {
                                       break loop21;
                                    }
                                    break loop20;
                                 }
                              }
                              _loc18_ = §§pop();
                              break loop22;
                           }
                           break loop14;
                        }
                        §§push(_loc18_);
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc36_)
                        {
                           _loc10_++;
                           if(_loc36_)
                           {
                           }
                        }
                        break loop13;
                     }
                     §§push(int(_loc16_.length));
                     if(!_loc36_)
                     {
                        break;
                     }
                     §§goto(addr03b3);
                  }
                  addr03b3:
                  _loc10_ = int(§§pop());
                  break;
               }
               _loc20_ = _loc17_;
               _loc21_ = _loc20_.§,U§;
               if(_loc35_)
               {
                  loop15:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(int(Save.§@!A§().get(_loc21_.§=-§,int(_loc21_.§ -§))));
                        if(!_loc36_)
                        {
                           if(§§pop() < int(_loc20_.§ b§.length))
                           {
                              break;
                           }
                           if(_loc36_)
                           {
                              break loop15;
                           }
                           §§push(int(§+#§.§,!B§().indexOf(_loc20_,0)));
                           if(!_loc36_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc11_ = §§pop();
                        if(!_loc36_)
                        {
                           break loop15;
                        }
                        break;
                     }
                  }
                  if(§%0§[_loc11_] == null)
                  {
                     if(!_loc36_)
                     {
                        §%0§[_loc11_] = §8%§(_loc11_,_loc20_);
                     }
                  }
                  break loop16;
               }
               _loc23_ = _loc20_.§,U§;
               loop17:
               while(true)
               {
                  loop18:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc36_)
                        {
                           §§push(int(Save.§@!A§().get(_loc23_.§=-§,int(_loc23_.§ -§))));
                           §§push(int(_loc20_.§ b§.length));
                           if(!_loc36_)
                           {
                              §§push(§§pop() + int(_loc20_.§-!>§.length));
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(true);
                              if(!_loc36_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc36_)
                                 {
                                    break loop18;
                                 }
                                 break;
                              }
                              break loop18;
                           }
                           if(_loc36_)
                           {
                              break loop17;
                           }
                        }
                        §§push(_loc20_.§&J§);
                        if(!_loc36_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc35_)
                           {
                              _loc22_ = §§pop();
                              if(!_loc36_)
                              {
                                 break loop17;
                              }
                              break loop0;
                           }
                           break;
                        }
                        break loop18;
                     }
                     §§goto(addr04d5);
                  }
                  _loc22_ = §§pop();
                  if(!_loc36_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§push(_loc22_);
               if(!_loc36_)
               {
                  addr04d5:
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  break;
               }
            }
         }
         var _loc24_:LightningStrikesTwice = Cutscenes.§;"§();
         while(true)
         {
            if(_loc35_)
            {
               if(_loc24_.§?^§ == null)
               {
                  §§push(false);
                  if(!_loc36_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc18_ = §§pop();
                  break;
               }
               if(_loc36_)
               {
                  break;
               }
            }
            _loc25_ = _loc24_.§?^§;
            §§push(Boolean(Save.§@!A§().get(_loc25_.§=-§,Boolean(_loc25_.§ -§))));
            if(!_loc36_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc36_)
               {
                  _loc18_ = §§pop();
                  break;
               }
            }
            §§goto(addr054d);
         }
         addr054d:
         loop24:
         while(true)
         {
            if(§§pop())
            {
               while(true)
               {
                  if(_loc35_)
                  {
                     §§push(int(§+#§.§,!B§().indexOf(§+#§.§9!!§(),0)));
                     if(!_loc36_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc35_)
                        {
                           break loop24;
                        }
                     }
                     _loc10_ = §§pop();
                     if(_loc36_)
                     {
                        break;
                     }
                  }
                  if(§%0§[_loc10_] == null)
                  {
                     break;
                  }
               }
               §%0§[_loc10_] = §8%§(_loc10_,§+#§.§9!!§());
            }
            §§push(0);
            if(!_loc36_)
            {
               §§push(int(§§pop()));
            }
            break;
         }
         _loc10_ = §§pop();
         _loc26_ = §%0§;
         if(_loc35_)
         {
            while(_loc10_ < int(_loc26_.length))
            {
               _loc27_ = _loc26_[_loc10_];
               if(_loc35_)
               {
                  _loc10_++;
                  if(_loc35_)
                  {
                     if(_loc27_ != null)
                     {
                        if(_loc35_)
                        {
                           _loc27_.reset();
                        }
                     }
                  }
               }
            }
            if(!_loc36_)
            {
               §+!`§.graphics.clear();
            }
         }
         _loc17_ = null;
         if(_loc35_)
         {
            §§push(0);
            if(!_loc36_)
            {
               §§push(int(§§pop()));
            }
            _loc10_ = §§pop();
         }
         _loc16_ = §+#§.§,!B§();
         if(_loc35_)
         {
            loop2:
            while(true)
            {
               §§push(_loc10_);
               if(!_loc35_)
               {
                  break;
               }
               if(§§pop() >= int(_loc16_.length))
               {
                  if(_loc35_)
                  {
                     while(true)
                     {
                        if(_loc17_ != null)
                        {
                           if(!_loc35_)
                           {
                              break;
                           }
                           _loc30_ = Map.§@!A§().§;O§(§>K§.§>=§.pathName).§;3§(-1,null,null);
                           while(true)
                           {
                              if(!_loc36_)
                              {
                                 _loc30_.x += 20 * layout.scale.x;
                                 if(_loc36_)
                                 {
                                    break;
                                 }
                              }
                              §+$§(§%0§[int(§+#§.§,!B§().indexOf(_loc17_,0))],_loc30_);
                              break;
                           }
                        }
                        §-!8§.visible = false;
                        if(_loc35_)
                        {
                           break;
                        }
                     }
                     §§push(0);
                     if(!_loc36_)
                     {
                        §§push(int(§§pop()));
                     }
                     break;
                  }
               }
               else
               {
                  _loc20_ = _loc16_[_loc10_];
                  _loc19_ = _loc20_.§,U§;
                  while(true)
                  {
                     §§push(int(Save.§@!A§().get(_loc19_.§=-§,int(_loc19_.§ -§))));
                     if(_loc35_)
                     {
                        §§push(int(_loc20_.§ b§.length));
                        if(!_loc36_)
                        {
                           §§push(§§pop() + int(_loc20_.§-!>§.length));
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc20_.§&J§);
                              if(!_loc36_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc36_)
                                 {
                                    break;
                                 }
                              }
                              _loc22_ = §§pop();
                           }
                           else
                           {
                              §§push(true);
                              if(!_loc36_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc36_)
                                 {
                                    break;
                                 }
                              }
                              _loc22_ = §§pop();
                           }
                           §§push(_loc22_);
                           break;
                        }
                        if(§§pop())
                        {
                           _loc10_++;
                           if(_loc35_)
                           {
                           }
                           break;
                        }
                        §§push(int(_loc16_.length));
                        if(_loc35_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc10_ = §§pop();
                     break;
                  }
                  _loc28_ = _loc20_;
                  _loc21_ = _loc28_.§,U§;
                  loop30:
                  while(true)
                  {
                     if(_loc35_)
                     {
                        §§push(int(Save.§@!A§().get(_loc21_.§=-§,int(_loc21_.§ -§))));
                        §§push(int(_loc28_.§ b§.length));
                        if(_loc35_)
                        {
                           §§push(§§pop() + int(_loc28_.§-!>§.length));
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§push(false);
                           if(!_loc36_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc29_ = §§pop();
                           break;
                        }
                        if(!_loc35_)
                        {
                           break;
                        }
                     }
                     _loc23_ = _loc28_.§,U§;
                     if(!_loc36_)
                     {
                        while(true)
                        {
                           §§push(int(Save.§@!A§().get(_loc23_.§=-§,int(_loc23_.§ -§))) >= int(_loc28_.§ b§.length));
                           if(!_loc36_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc35_)
                              {
                                 break;
                              }
                           }
                           _loc29_ = §§pop();
                           if(!_loc36_)
                           {
                              break loop30;
                           }
                        }
                        addr07a5:
                        if(!§§pop())
                        {
                           continue loop2;
                        }
                     }
                     _loc17_ = _loc28_;
                     if(_loc35_)
                     {
                        while(_loc17_.§=R§ != null)
                        {
                           _loc17_ = _loc17_.§=R§;
                        }
                     }
                     continue loop2;
                  }
                  §§goto(addr07a5);
               }
            }
            _loc10_ = §§pop();
         }
         _loc16_ = §+#§.§,!B§();
         if(!_loc36_)
         {
            loop4:
            while(_loc10_ < int(_loc16_.length))
            {
               _loc20_ = _loc16_[_loc10_];
               _loc19_ = _loc20_.§,U§;
               loop32:
               while(true)
               {
                  if(_loc35_)
                  {
                     while(true)
                     {
                        §§push(int(Save.§@!A§().get(_loc19_.§=-§,int(_loc19_.§ -§))));
                        if(_loc35_)
                        {
                           §§push(int(_loc20_.§ b§.length));
                           if(_loc35_)
                           {
                              §§push(§§pop() + int(_loc20_.§-!>§.length));
                           }
                           loop34:
                           while(true)
                           {
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc20_.§&J§);
                                    if(!_loc35_)
                                    {
                                       break loop34;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc36_)
                                    {
                                       _loc22_ = §§pop();
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(true);
                                    if(!_loc36_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc35_)
                                       {
                                          break loop34;
                                       }
                                    }
                                 }
                                 _loc22_ = §§pop();
                                 break;
                              }
                              §§push(_loc22_);
                              break;
                           }
                           if(§§pop())
                           {
                              addr091d:
                              _loc10_++;
                              if(_loc36_)
                              {
                              }
                              break loop32;
                           }
                           §§push(int(_loc16_.length));
                           if(_loc36_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc10_ = §§pop();
                     break;
                  }
                  §§goto(addr091d);
               }
               _loc28_ = _loc20_;
               _loc21_ = _loc28_.§,U§;
               while(true)
               {
                  if(!_loc36_)
                  {
                     §§push(int(Save.§@!A§().get(_loc21_.§=-§,int(_loc21_.§ -§))));
                     §§push(int(_loc28_.§ b§.length));
                     if(!_loc36_)
                     {
                        §§push(§§pop() + int(_loc28_.§-!>§.length));
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(false);
                        if(_loc35_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc29_ = §§pop();
                        break;
                     }
                     if(!_loc35_)
                     {
                        break;
                     }
                  }
                  _loc23_ = _loc28_.§,U§;
                  if(_loc36_)
                  {
                     break loop4;
                  }
                  §§push(int(Save.§@!A§().get(_loc23_.§=-§,int(_loc23_.§ -§))) < int(_loc28_.§ b§.length));
                  if(!_loc36_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc35_)
                     {
                        _loc29_ = §§pop();
                        if(_loc35_)
                        {
                           break;
                        }
                        addr09e3:
                        §-!8§.visible = true;
                        break loop4;
                     }
                  }
                  if(!§§pop())
                  {
                     continue loop4;
                  }
                  if(!_loc35_)
                  {
                     break loop4;
                  }
                  §§goto(addr09e3);
               }
               §§goto(addr09d8);
            }
         }
         var _loc31_:CrossingTheGap = Cutscenes.§->§();
         loop37:
         while(true)
         {
            while(true)
            {
               if(_loc35_)
               {
                  if(_loc31_.§?^§ != null)
                  {
                     if(_loc35_)
                     {
                        _loc25_ = _loc31_.§?^§;
                        if(!_loc36_)
                        {
                           §§push(Boolean(Save.§@!A§().get(_loc25_.§=-§,Boolean(_loc25_.§ -§))));
                           if(!_loc36_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc36_)
                              {
                                 break;
                              }
                           }
                           _loc22_ = §§pop();
                           if(!_loc35_)
                           {
                              break loop37;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(!_loc36_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc22_ = §§pop();
                  }
               }
               §§push(_loc22_);
               break;
            }
            if(§§pop())
            {
               break;
            }
            _loc27_ = null;
            if(!_loc36_)
            {
               §§push(0);
               if(_loc35_)
               {
                  §§push(int(§§pop()));
               }
               _loc10_ = §§pop();
            }
            _loc26_ = §%0§;
            while(true)
            {
               if(!_loc36_)
               {
                  loop5:
                  while(_loc10_ < int(_loc26_.length))
                  {
                     _loc34_ = _loc26_[_loc10_];
                     loop41:
                     while(true)
                     {
                        loop42:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc35_)
                              {
                                 _loc10_++;
                                 if(!_loc35_)
                                 {
                                    break loop41;
                                 }
                                 §§push(false);
                                 if(_loc36_)
                                 {
                                    break;
                                 }
                                 if(_loc34_ == null)
                                 {
                                    break loop42;
                                 }
                                 if(_loc36_)
                                 {
                                    break loop42;
                                 }
                                 §§pop();
                                 if(!_loc35_)
                                 {
                                    break loop41;
                                 }
                              }
                              §§push(_loc34_.§;b§);
                              if(!_loc36_)
                              {
                                 break;
                              }
                              break loop42;
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        continue loop5;
                     }
                     _loc27_ = _loc34_;
                  }
                  if(!_loc35_)
                  {
                     break;
                  }
               }
               if(_loc27_ != null)
               {
                  break;
               }
               §§goto(addr0bb9);
            }
            _loc32_ = Map.§@!A§();
            while(true)
            {
               if(_loc35_)
               {
                  _loc33_ = Number(_loc27_.y);
                  if(_loc36_)
                  {
                     break;
                  }
               }
               _loc32_.§[%§.§+!>§(_loc27_.x);
               if(_loc35_)
               {
                  _loc32_.§&I§ = 0;
               }
               break;
            }
            §§goto(addr0bb9);
         }
         _loc32_ = Map.§@!A§();
         while(true)
         {
            if(!_loc36_)
            {
               §§push(300 * layout.scale.y);
               if(_loc35_)
               {
                  §§push(Number(§§pop()));
               }
               _loc33_ = §§pop();
               if(!_loc35_)
               {
                  break;
               }
            }
            _loc32_.§[%§.§+!>§(1800 * layout.scale.x);
            if(!_loc36_)
            {
               _loc32_.§&I§ = 0;
               if(_loc35_)
               {
                  addr0bb9:
                  §+!`§.alpha = 0;
                  if(_loc36_)
                  {
                     break;
                  }
               }
               Actuate.stop(§+!`§);
            }
            break;
         }
      }
      
      public function §8%§(param1:int, param2:§+#§) : §,1§
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc6_:* = 0;
         if(!_loc9_)
         {
            if(param2.§=R§ == null)
            {
               §§push(0);
               if(!_loc9_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(_loc8_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(param1);
               if(!_loc9_)
               {
                  §§push(int(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc8_)
               {
                  while(_loc4_ < _loc5_)
                  {
                     §§push(_loc4_);
                     if(_loc8_)
                     {
                        _loc4_++;
                        if(!_loc9_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc6_ = §§pop();
                     if(_loc8_)
                     {
                        if(§+#§.§,!B§()[_loc6_].§=R§ == null)
                        {
                           if(!_loc9_)
                           {
                              _loc3_++;
                           }
                        }
                     }
                  }
               }
               var _loc7_:§,1§ = new §,1§(_loc3_,param2);
               if(!_loc9_)
               {
                  §5J§.addChild(_loc7_);
               }
               return _loc7_;
            }
         }
         return null;
      }
      
      public function §5s§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null as §+#§;
         var _loc5_:* = false;
         var _loc6_:* = null as §2!;§;
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§+#§> = §+#§.§,!B§();
         if(!_loc8_)
         {
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc8_)
               {
                  break;
               }
               if(§§pop() < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  if(_loc7_)
                  {
                     _loc2_++;
                  }
                  _loc6_ = _loc4_.§,U§;
                  if(_loc7_)
                  {
                     while(true)
                     {
                        if(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))) < int(_loc4_.§ b§.length))
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc4_.§&J§);
                              if(_loc7_)
                              {
                                 §§push(!§§pop());
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           _loc5_ = §§pop();
                           if(_loc8_)
                           {
                              break;
                           }
                           addr00da:
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(false);
                           if(!_loc8_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr00da);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              _loc4_.§>c§();
                           }
                           break;
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
               if(!_loc8_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     break;
                  }
                  addr010b:
                  _loc2_ = §§pop();
               }
            }
            §§goto(addr010b);
            §§push(int(§§pop()));
         }
         _loc3_ = §+#§.§,!B§();
         if(!_loc8_)
         {
            loop1:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(_loc7_)
               {
                  _loc2_++;
               }
               _loc6_ = _loc4_.§,U§;
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))) >= int(_loc4_.§ b§.length))
                     {
                        continue loop1;
                     }
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  _loc4_.§>c§();
                  break;
               }
               return;
            }
         }
      }
      
      public function §+$§(param1:Sprite, param2:Point) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(!_loc10_)
         {
            if(param1 != null)
            {
               §§push(Number(Math.sqrt((param2.x - param1.x) * (param2.x - param1.x) + (param2.y - param1.y) * (param2.y - param1.y))));
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               var _loc4_:§38§ = layout.scale;
               while(true)
               {
                  if(!_loc10_)
                  {
                     §§push(_loc3_);
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           §§push(80);
                           §§push(_loc4_.x);
                           if(_loc9_)
                           {
                              §§push(§§pop() + _loc4_.y);
                              if(!_loc9_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(!_loc10_)
                           {
                              §§push(§§pop() / 2);
                           }
                           break;
                        }
                        §§push(§§pop() - §§pop() * §§pop());
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                     }
                     _loc3_ = §§pop();
                  }
                  §§push(60 * layout.scale.x);
                  if(_loc9_)
                  {
                     break;
                  }
                  var _loc5_:* = §§pop();
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc9_)
                        {
                           if(param2.y - param1.y <= 200 * layout.scale.y)
                           {
                              §§push(-1);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                        }
                        §§push(1);
                        if(!_loc10_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  var _loc6_:* = §§pop();
                  §§push(_loc3_);
                  if(_loc9_)
                  {
                     §§push(§§pop() * 0.15);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc7_:* = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * 0.1);
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  var _loc8_:* = §§pop();
                  §+!`§.graphics.clear();
                  §+!`§.graphics.lineStyle(5.6 * layout.scale.y,16777215);
                  while(true)
                  {
                     if(_loc9_)
                     {
                        §+!`§.graphics.moveTo(_loc5_,0);
                        §+!`§.graphics.curveTo(_loc5_ + _loc3_ / 2,_loc3_ * 0.16 * _loc6_,_loc5_ + _loc3_,0);
                        §+!`§.graphics.moveTo(_loc5_ + _loc3_ - _loc7_,_loc8_ * _loc6_);
                        §+!`§.graphics.lineTo(_loc5_ + _loc3_,0);
                        §+!`§.graphics.lineTo(_loc5_ + _loc3_ - _loc7_ * 1.17,-0.4 * _loc8_ * _loc6_);
                        if(!_loc10_)
                        {
                           §+!`§.x = param1.x;
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                     }
                     §+!`§.y = param1.y;
                     §+!`§.rotation = Number(Math.atan2(param2.y - param1.y,param2.x - param1.x)) * 180 / 3.141592653589793;
                     break;
                  }
                  return;
               }
               §§push(Number(§§pop()));
               continue loop2;
            }
         }
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc9_:* = null as §+#§;
         if(!_loc10_)
         {
            §5J§ = new §&U§(§[%§.width,§[%§.height,new § !,§(§[%§));
         }
         var _loc1_:§ 7§ = new §?y§(§5J§);
         var _loc2_:§ 7§ = new §?y§(§[%§);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(true,0),_loc2_);
         }
         _loc1_ = new §?y§(§5J§);
         _loc2_ = new §?y§(§[%§);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(false,0),_loc2_);
            if(!_loc10_)
            {
               addChild(§5J§);
            }
         }
         var _loc3_:Shape = new Shape();
         while(true)
         {
            if(!_loc10_)
            {
               §<!T§.fillRect(_loc3_,§^F§.TRANSPARENT(3355443,0.5),null,null,null,new §?y§(§5J§));
               if(!_loc11_)
               {
                  break;
               }
               addChildAt(_loc3_,0);
               if(!_loc10_)
               {
                  §+!`§ = new Shape();
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               §5J§.addChild(§+!`§);
               if(!_loc11_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§8L§));
            §§push(§§findproperty(§,C§));
            §§push("map/MovableBoxesIcon.png");
            §§push(§,!3§);
            if(_loc11_)
            {
               §§push(§§pop());
            }
            §§pop().§8L§ = new §§pop().§,C§(§§pop(),§§pop());
            break;
         }
         _loc1_ = new §?y§(§8L§);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc1_,new §;!!§(40,§2u§.RIGHT));
         }
         _loc1_ = new §?y§(§8L§);
         while(true)
         {
            if(!_loc10_)
            {
               §&d§.§1$§().add(_loc1_,new §;!!§(4,§2u§.BOTTOM));
               if(!_loc11_)
               {
                  break;
               }
            }
            §8L§.visible = false;
            if(!_loc10_)
            {
               §§push(§§findproperty(§-!8§));
               §§push(§§findproperty(§+"§));
               §§push(§5s§);
               if(_loc11_)
               {
                  §§push(§§pop());
               }
               §§pop().§-!8§ = new §§pop().§+"§(§§pop(),0,36,"Keep searching...");
            }
            break;
         }
         var _loc4_:§8!8§ = §-!8§;
         while(true)
         {
            if(!_loc10_)
            {
               §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
               if(!_loc11_)
               {
                  break;
               }
            }
            §-!8§.visible = false;
            break;
         }
         _loc1_ = new §?y§(§-!8§);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
         }
         _loc1_ = new §?y§(§-!8§);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc1_,new §;!!§(40,§2u§.BOTTOM));
         }
         §§push(§§findproperty(§,C§));
         §§push("map/Bridge.png");
         §§push(§^!A§);
         if(!_loc10_)
         {
            §§push(§§pop());
         }
         var _loc5_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
         _loc1_ = new §?y§(_loc5_);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc1_,new §;!!§(1980,§2u§.LEFT));
         }
         _loc1_ = new §?y§(_loc5_);
         while(true)
         {
            if(!_loc10_)
            {
               §&d§.§1$§().add(_loc1_,new §;!!§(-136,§2u§.TOP));
               if(!_loc10_)
               {
                  §5J§.addChild(_loc5_);
                  if(_loc10_)
                  {
                     break;
                  }
               }
            }
            visible = false;
            break;
         }
         var _loc6_:Vector.<§,1§> = new Vector.<§,1§>(0,false);
         if(!_loc10_)
         {
            §%0§ = _loc6_;
         }
         §§push(0);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<§+#§> = §+#§.§,!B§();
         if(_loc11_)
         {
            while(_loc7_ < int(_loc8_.length))
            {
               _loc9_ = _loc8_[_loc7_];
               if(!_loc10_)
               {
                  _loc7_++;
                  if(_loc11_)
                  {
                     §%0§.push(null);
                  }
               }
            }
         }
      }
   }
}

