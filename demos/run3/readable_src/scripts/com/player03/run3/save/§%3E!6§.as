package com.player03.run3.save
{
   import §!!"§.§,X§;
   import §!!X§.§`Q§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §2n§.§7%§;
   import game.Game;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.menu.§1!?§;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class §>!6§
   {
      
      public function §>!6§()
      {
      }
      
      public static function §>!X§() : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:* = null as §-Q§;
         var _loc7_:* = null;
         var _loc8_:* = null as String;
         var _loc10_:* = null as §-Q§;
         var _loc1_:Save = Save.§@!A§();
         var _loc2_:§=!U§ = new StringMap();
         _loc3_ = Save.mostBatteries;
         if(_loc11_)
         {
            if("mostPowerCells" in StringMap.§+!#§)
            {
               if(!_loc12_)
               {
                  _loc2_.setReserved("mostPowerCells",_loc3_);
                  if(_loc11_)
                  {
                  }
               }
            }
            else
            {
               _loc2_.h["mostPowerCells"] = _loc3_;
            }
         }
         _loc3_ = §>K§.§0x§.§0!R§;
         if(_loc11_)
         {
            if("exploreexplore" in StringMap.§+!#§)
            {
               if(!_loc12_)
               {
                  _loc2_.setReserved("exploreexplore",_loc3_);
                  if(_loc12_)
                  {
                  }
               }
            }
            else
            {
               _loc2_.h["exploreexplore"] = _loc3_;
            }
         }
         _loc3_ = §>K§.§0x§.§^J§;
         while(true)
         {
            if(_loc11_)
            {
               if(!("exploreCurrent" in StringMap.§+!#§))
               {
                  _loc2_.h["exploreCurrent"] = _loc3_;
                  break;
               }
               if(_loc12_)
               {
                  break;
               }
            }
            _loc2_.setReserved("exploreCurrent",_loc3_);
            if(_loc11_)
            {
            }
            break;
         }
         _loc3_ = §>K§.§0x§.§^J§;
         while(true)
         {
            if(_loc11_)
            {
               if(!("exploreCurrentexplore" in StringMap.§+!#§))
               {
                  _loc2_.h["exploreCurrentexplore"] = _loc3_;
                  break;
               }
               if(_loc12_)
               {
                  break;
               }
            }
            _loc2_.setReserved("exploreCurrentexplore",_loc3_);
            if(_loc12_)
            {
            }
            break;
         }
         _loc3_ = §>K§.§?t§.§0!R§;
         while(true)
         {
            if(_loc11_)
            {
               if(!("winter" in StringMap.§+!#§))
               {
                  _loc2_.h["winter"] = _loc3_;
                  break;
               }
               if(_loc12_)
               {
                  break;
               }
            }
            _loc2_.setReserved("winter",_loc3_);
            if(_loc12_)
            {
            }
            break;
         }
         _loc3_ = §>K§.§?t§.§^J§;
         if(_loc11_)
         {
            if("winterCurrent" in StringMap.§+!#§)
            {
               if(_loc11_)
               {
                  _loc2_.setReserved("winterCurrent",_loc3_);
                  if(_loc12_)
                  {
                  }
               }
            }
            else
            {
               _loc2_.h["winterCurrent"] = _loc3_;
            }
         }
         _loc3_ = Save.§,>§;
         if(_loc11_)
         {
            if("infiniteSolo" in StringMap.§+!#§)
            {
               if(_loc11_)
               {
                  _loc2_.setReserved("infiniteSolo",_loc3_);
                  if(_loc12_)
                  {
                  }
               }
            }
            else
            {
               _loc2_.h["infiniteSolo"] = _loc3_;
            }
         }
         _loc3_ = Save.currentCharacter;
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push("player");
                  if(!_loc12_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc11_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           break loop10;
                        }
                        _loc2_.setReserved("player",_loc3_);
                        if(_loc12_)
                        {
                        }
                     }
                     else
                     {
                        _loc2_.h["player"] = _loc3_;
                        if(_loc12_)
                        {
                           break loop9;
                        }
                     }
                     §§push("showPowerCellRate");
                  }
                  §§push(§§pop() in StringMap.§+!#§);
                  break;
               }
               if(§§pop())
               {
                  if(!_loc12_)
                  {
                     break loop9;
                  }
                  break;
               }
               _loc2_.h["showPowerCellRate"] = null;
               break;
            }
            _loc3_ = §1!?§.§"F§;
            if(_loc11_)
            {
               if("bought_20b5b6b0dc6c7c30da43c8c8f2a6014b06eac8e6" in StringMap.§+!#§)
               {
                  if(_loc11_)
                  {
                     _loc2_.setReserved("bought_20b5b6b0dc6c7c30da43c8c8f2a6014b06eac8e6",_loc3_);
                     if(_loc11_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.h["bought_20b5b6b0dc6c7c30da43c8c8f2a6014b06eac8e6"] = _loc3_;
               }
            }
            _loc3_ = §7%§.§`!-§;
            while(true)
            {
               if(!_loc12_)
               {
                  if(!("bought_3b5fb7c41fb99dbd722d17a830f97c31ef8884aa" in StringMap.§+!#§))
                  {
                     _loc2_.h["bought_3b5fb7c41fb99dbd722d17a830f97c31ef8884aa"] = _loc3_;
                     break;
                  }
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               _loc2_.setReserved("bought_3b5fb7c41fb99dbd722d17a830f97c31ef8884aa",_loc3_);
               if(_loc11_)
               {
               }
               break;
            }
            _loc3_ = CharacterRegistry.skater.§?!F§;
            while(true)
            {
               if(!_loc12_)
               {
                  if(!("bought_dfc04c59a9a26ded2077d597a1a16f70bae513ab" in StringMap.§+!#§))
                  {
                     _loc2_.h["bought_dfc04c59a9a26ded2077d597a1a16f70bae513ab"] = _loc3_;
                     break;
                  }
                  if(_loc12_)
                  {
                     break;
                  }
               }
               _loc2_.setReserved("bought_dfc04c59a9a26ded2077d597a1a16f70bae513ab",_loc3_);
               if(_loc11_)
               {
               }
               break;
            }
            _loc3_ = CharacterRegistry.student.§?!F§;
            if(!_loc12_)
            {
               if("bought_176811f3e40e5a71004474f50d64fa1529c5281c" in StringMap.§+!#§)
               {
                  if(!_loc12_)
                  {
                     _loc2_.setReserved("bought_176811f3e40e5a71004474f50d64fa1529c5281c",_loc3_);
                     if(_loc11_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.h["bought_176811f3e40e5a71004474f50d64fa1529c5281c"] = _loc3_;
               }
            }
            _loc3_ = CharacterRegistry.§#!P§.§?!F§;
            if(_loc11_)
            {
               if("bought_c2e6a37c9bda36dbaf4f621ed25a92cfcc795a38" in StringMap.§+!#§)
               {
                  if(_loc11_)
                  {
                     _loc2_.setReserved("bought_c2e6a37c9bda36dbaf4f621ed25a92cfcc795a38",_loc3_);
                     if(_loc11_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.h["bought_c2e6a37c9bda36dbaf4f621ed25a92cfcc795a38"] = _loc3_;
               }
            }
            _loc3_ = CharacterRegistry.lizard.§?!F§;
            while(true)
            {
               if(!_loc12_)
               {
                  if(!("bought_fea9f17728b2b9d1ea1246baff38aeeda588bd39" in StringMap.§+!#§))
                  {
                     _loc2_.h["bought_fea9f17728b2b9d1ea1246baff38aeeda588bd39"] = _loc3_;
                     break;
                  }
                  if(_loc12_)
                  {
                     break;
                  }
               }
               _loc2_.setReserved("bought_fea9f17728b2b9d1ea1246baff38aeeda588bd39",_loc3_);
               if(_loc11_)
               {
               }
               break;
            }
            _loc3_ = CharacterRegistry.duplicator.§?!F§;
            while(true)
            {
               if(!_loc12_)
               {
                  if(!("bought_2e1596e57e489a999f60319696ce943748711c12" in StringMap.§+!#§))
                  {
                     _loc2_.h["bought_2e1596e57e489a999f60319696ce943748711c12"] = _loc3_;
                     break;
                  }
                  if(_loc12_)
                  {
                     break;
                  }
               }
               _loc2_.setReserved("bought_2e1596e57e489a999f60319696ce943748711c12",_loc3_);
               if(_loc12_)
               {
               }
               break;
            }
            _loc3_ = CharacterRegistry.§4s§.§?!F§;
            loop16:
            while(true)
            {
               loop17:
               while(true)
               {
                  loop33:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc11_)
                        {
                           §§push("bought_712c381f0fbf55cb54146533e50c25ce8e54fa10");
                           if(!_loc11_)
                           {
                              break loop33;
                           }
                           §§push(§§pop() in StringMap.§+!#§);
                           if(_loc12_)
                           {
                              break loop17;
                           }
                           if(§§pop())
                           {
                              _loc2_.setReserved("bought_712c381f0fbf55cb54146533e50c25ce8e54fa10",_loc3_);
                           }
                           else
                           {
                              _loc2_.h["bought_712c381f0fbf55cb54146533e50c25ce8e54fa10"] = _loc3_;
                              if(_loc12_)
                              {
                                 break;
                              }
                           }
                           §§push("keenPlayerId");
                           if(_loc12_)
                           {
                              break loop33;
                           }
                           §§push(§§pop() in StringMap.§+!#§);
                           if(!_loc11_)
                           {
                              break loop17;
                           }
                           if(§§pop())
                           {
                              _loc2_.setReserved("keenPlayerId",null);
                              if(!_loc11_)
                              {
                                 break loop16;
                              }
                           }
                           else
                           {
                              _loc2_.h["keenPlayerId"] = null;
                           }
                        }
                        §§push("noTilesDislodged37");
                        if(!_loc11_)
                        {
                           break loop33;
                        }
                        §§push(§§pop() in StringMap.§+!#§);
                        if(!_loc12_)
                        {
                           break loop17;
                        }
                        §§goto(addr04e9);
                     }
                     §§goto(addr04f4);
                  }
                  addr04e9:
                  if(§§pop() in StringMap.§+!#§)
                  {
                     if(!_loc12_)
                     {
                        break loop35;
                     }
                     break loop16;
                  }
                  _loc2_.h["flipsDone"] = null;
                  break loop16;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_.setReserved("noTilesDislodged37",null);
                  }
                  else
                  {
                     _loc2_.h["noTilesDislodged37"] = null;
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  §§push("flipsDone");
                  break loop33;
               }
               addr04f4:
               _loc2_.setReserved("flipsDone",null);
               if(_loc12_)
               {
               }
               break;
            }
            var _loc4_:§=!U§ = _loc2_;
            §§push([{
               "id":2300,
               "value":500,
               "build":23774
            }]);
            if(!_loc12_)
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            §§push([Game.§-%§,§1!?§.§"F§,§1!?§.§]A§,§7%§.§`!-§,CharacterRegistry.§4s§.§?!F§,CharacterRegistry.§]![§.§?!F§]);
            if(!_loc12_)
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            _loc7_ = new §,X§(_loc4_.h,_loc4_.rh);
            if(!_loc12_)
            {
               loop0:
               while(Boolean(_loc7_.hasNext()))
               {
                  while(true)
                  {
                     §§push(_loc7_.next());
                     if(_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     _loc8_ = §§pop();
                     addr05ba:
                     addr05d2:
                     if(!_loc12_)
                     {
                        §§push(_loc8_);
                        break;
                     }
                     _loc3_ = _loc4_.getReserved(_loc8_);
                     if(_loc3_ == null)
                     {
                        _loc1_.§1!R§(_loc8_,null);
                        continue loop0;
                     }
                     while(true)
                     {
                        §§push(_loc1_.exists(_loc8_));
                        if(!_loc12_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc12_)
                           {
                              if(!§§pop())
                              {
                                 continue loop0;
                              }
                              if(!_loc11_)
                              {
                                 break;
                              }
                              §§push(Save.§@!A§().exists(_loc3_.§=-§));
                              if(!_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc12_)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        addr0644:
                        _loc1_.§1!R§(_loc8_,null);
                        continue loop0;
                     }
                     _loc1_.§1!R§(_loc3_.§=-§,_loc1_.get(_loc8_,null));
                     if(_loc12_)
                     {
                        continue loop0;
                     }
                     §§goto(addr0644);
                  }
                  if(§§pop() in StringMap.§+!#§)
                  {
                     §§goto(addr05ba);
                  }
                  else
                  {
                     §§push(_loc4_.h[_loc8_]);
                  }
                  §§goto(addr05d2);
               }
            }
            §§push(0);
            if(!_loc12_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            loop20:
            while(true)
            {
               loop21:
               while(true)
               {
                  loop22:
                  while(true)
                  {
                     loop26:
                     while(true)
                     {
                        if(!_loc12_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc9_);
                              if(_loc12_)
                              {
                                 break loop26;
                              }
                              §§push(_loc5_);
                              if(!_loc11_)
                              {
                                 break loop22;
                              }
                              §§push(int(§§pop().length));
                              if(_loc12_)
                              {
                                 break loop21;
                              }
                              if(§§pop() < §§pop())
                              {
                                 _loc7_ = _loc5_[_loc9_];
                                 if(!_loc12_)
                                 {
                                    _loc9_++;
                                    loop27:
                                    while(true)
                                    {
                                       loop28:
                                       while(true)
                                       {
                                          loop30:
                                          while(true)
                                          {
                                             if(_loc11_)
                                             {
                                                §§push(false);
                                                if(!_loc12_)
                                                {
                                                   loop31:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(!_loc12_)
                                                         {
                                                            if(_loc1_.§3M§ < 0)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               break loop31;
                                                            }
                                                         }
                                                         §§pop();
                                                         if(_loc11_)
                                                         {
                                                            §§push(_loc1_.§3M§ < int(_loc7_.build));
                                                            if(_loc11_)
                                                            {
                                                               break loop31;
                                                            }
                                                            break;
                                                         }
                                                         addr06cb:
                                                         §§pop();
                                                         if(_loc12_)
                                                         {
                                                            break loop27;
                                                         }
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         break loop30;
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         break loop28;
                                                      }
                                                      §§goto(addr06cb);
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   break loop32;
                                                }
                                                break;
                                             }
                                             §§push(_loc1_);
                                             §§push("achievement");
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + int(_loc7_.id));
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§push(Boolean(§§pop().get(§§pop(),false)));
                                             if(!_loc12_)
                                             {
                                                break loop28;
                                             }
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             continue loop1;
                                          }
                                          if(_loc11_)
                                          {
                                             break loop27;
                                          }
                                          §§goto(addr0729);
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop30;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       §§push("achievement");
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop() + int(_loc7_.id));
                                          if(!_loc11_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(§§pop());
                                       break;
                                    }
                                    §§pop().§1!R§(§§pop(),null);
                                    if(!_loc12_)
                                    {
                                       addr0729:
                                       Currency.§@!A§().recordSoftSpent(int(_loc7_.value),"Achievement revoked");
                                    }
                                 }
                                 continue;
                              }
                              if(_loc12_)
                              {
                                 break loop20;
                              }
                           }
                        }
                        §§push(0);
                        if(!_loc11_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(_loc11_)
                        {
                           break;
                        }
                        §§goto(addr0823);
                     }
                     _loc9_ = §§pop();
                     if(_loc11_)
                     {
                        break loop20;
                     }
                     §§goto(addr082c);
                  }
                  §§goto(addr0825);
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     addr082c:
                     return;
                  }
                  _loc10_ = _loc6_[_loc9_];
                  if(!_loc12_)
                  {
                     _loc9_++;
                  }
                  _loc7_ = _loc1_.get(_loc10_.§=-§,null);
                  loop23:
                  while(true)
                  {
                     loop24:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc11_)
                           {
                              §§push(false);
                              if(_loc11_)
                              {
                                 if(_loc7_ == null)
                                 {
                                    break;
                                 }
                                 if(!_loc11_)
                                 {
                                    break loop24;
                                 }
                              }
                              §§pop();
                              if(_loc12_)
                              {
                                 break loop23;
                              }
                           }
                           §§push(Std.§is§(_loc7_,int));
                           if(_loc11_)
                           {
                              break loop24;
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc12_)
                           {
                              _loc1_.§1!R§(_loc10_.§=-§,null);
                              if(_loc11_)
                              {
                                 break loop23;
                              }
                              break loop20;
                           }
                           break loop23;
                        }
                        break loop20;
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc12_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break loop25;
                  }
                  §§push(_loc10_);
                  var _temp_1:* = _loc7_;
                  §§push(_temp_1);
                  if(!(_temp_1 is Number))
                  {
                     break;
                  }
                  §§pop().§?F§(int(§§pop()) > 0);
                  break loop20;
               }
               §§goto(addr0814);
            }
            while(true)
            {
               §§push(_loc9_);
               addr0823:
               while(true)
               {
                  §§push(_loc6_);
                  addr0825:
                  while(true)
                  {
                     §§push(int(§§pop().length));
                     break loop21;
                  }
                  addr0814:
                  throw "Class cast error";
               }
            }
         }
         _loc2_.setReserved("showPowerCellRate",null);
         if(_loc11_)
         {
         }
         break loop10;
      }
   }
}

