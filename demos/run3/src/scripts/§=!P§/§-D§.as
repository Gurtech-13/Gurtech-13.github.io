package §=!P§
{
   import §!!"§.§-m§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §2n§.§0"§;
   import §6!Q§.§"q§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0d§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import haxe.ds.StringMap;
   
   public class §-D§ extends §0"§
   {
      
      public var text:TextField;
      
      public var message:String;
      
      public function §-D§(param1:String = undefined)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Boolean = false;
         if(_loc5_)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§push("Great job so far! ");
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §§push(§§findproperty(message));
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§-D§.§!u§());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop() + §§pop());
               }
               §§push(§§pop() + "\nBut... you still haven\'t rated the game.");
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().message = §§pop();
               break;
            }
         }
         var _loc3_:Save = Save.§@!A§();
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc3_.§3M§ >= 0)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(_loc3_.§3M§ < 17663);
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  addr00e6:
                  _loc2_ = false;
               }
               §§push(Std.§is§(Save.§@!A§().get("ratedGame",null),Boolean));
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr00e6);
               }
            }
            if(_loc2_)
            {
               Save.§@!A§().§1!R§("ratedGame",3);
            }
            super();
            break;
         }
      }
      
      public static function §!u§() : String
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as §-Q§;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null as §-Q§;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         §§push("");
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc17_)
         {
            while(true)
            {
               §§push(_loc1_ + "You\'ve ");
               if(!_loc17_)
               {
                  §§push(§§pop());
                  if(!_loc16_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:StringMap = §>K§.§@!A§().§2! §;
         var _loc4_:* = new §-m§(_loc3_.h,_loc3_.rh);
         if(_loc16_)
         {
            loop0:
            while(Boolean(_loc4_.hasNext()))
            {
               _loc5_ = _loc4_.next();
               _loc6_ = _loc5_.§0!R§;
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
                           if(_loc16_)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))));
                                 if(!_loc17_)
                                 {
                                    _loc7_ = int(§§pop());
                                    while(true)
                                    {
                                       if(_loc16_)
                                       {
                                          _loc8_ = _loc5_.levelCount;
                                          if(_loc17_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(_loc7_);
                                       if(_loc17_)
                                       {
                                          break loop3;
                                       }
                                       §§push(_loc8_);
                                       if(!_loc16_)
                                       {
                                          break loop2;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          break loop6;
                                       }
                                       §§push(_loc8_);
                                       if(_loc17_)
                                       {
                                          break loop3;
                                       }
                                    }
                                 }
                                 §§push(_loc5_.availableUntil);
                                 if(!_loc16_)
                                 {
                                    break loop2;
                                 }
                                 §§push(1);
                                 if(_loc17_)
                                 {
                                    break loop5;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc17_)
                                 {
                                    break loop4;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    _loc9_ = _loc5_.§0!R§;
                                    if(!_loc17_)
                                    {
                                       _loc10_ = int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§)));
                                       if(_loc16_)
                                       {
                                          _loc11_ = _loc5_.levelCount;
                                          if(_loc17_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§push(_loc2_);
                                    §§push(_loc10_);
                                    if(_loc16_)
                                    {
                                       if(§§pop() < _loc11_)
                                       {
                                          §§push(_loc10_);
                                          if(_loc16_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc11_);
                                       }
                                    }
                                    _loc2_ = int(§§pop() + §§pop());
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(_loc2_);
                           §§push(_loc5_.availableUntil);
                           if(_loc16_)
                           {
                              break loop2;
                           }
                           break loop4;
                        }
                        §§goto(addr013c);
                     }
                     §§goto(addr013d);
                  }
                  _loc2_ = §§pop();
                  continue loop0;
               }
               addr013d:
               addr013c:
               §§push(int(§§pop() + (§§pop() + 1)));
               break loop3;
            }
            if(_loc16_)
            {
               §§push(_loc2_);
               if(_loc16_)
               {
                  §§push(int(§§pop()));
               }
               _loc7_ = §§pop();
            }
         }
         var _loc12_:§0d§ = Save.§,>§;
         while(true)
         {
            if(_loc16_)
            {
               §§push(int(Math.round(Number(Save.§@!A§().get(_loc12_.§=-§,Number(_loc12_.§ -§))) * 0.03333333333333333)));
               if(_loc16_)
               {
                  §§push(int(§§pop()));
                  if(_loc17_)
                  {
                     break;
                  }
               }
               _loc8_ = §§pop();
            }
            §§push(_loc7_);
            break;
         }
         §§push(§§pop() >= 10);
         if(_loc16_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc13_:* = §§pop();
         §§push(_loc8_ >= 150);
         if(!_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc14_:* = §§pop();
         §§push(false);
         if(!_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc15_:* = §§pop();
         while(true)
         {
            loop10:
            while(true)
            {
               loop16:
               while(true)
               {
                  loop18:
                  while(true)
                  {
                     loop19:
                     while(true)
                     {
                        loop20:
                        while(true)
                        {
                           loop21:
                           while(true)
                           {
                              loop22:
                              while(true)
                              {
                                 loop23:
                                 while(true)
                                 {
                                    loop24:
                                    while(true)
                                    {
                                       loop25:
                                       while(true)
                                       {
                                          loop26:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc13_)
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      loop28:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         §§push(Std);
                                                         §§push("explored ");
                                                         if(!_loc17_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + _loc7_);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc17_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(§§pop() + " levels");
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               break loop28;
                                                            }
                                                         }
                                                         §§push(§§pop());
                                                         break;
                                                      }
                                                      §§push(§§pop().string(§§pop()));
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc17_)
                                                         {
                                                            break loop16;
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         break loop10;
                                                      }
                                                      _loc1_ = §§pop();
                                                      loop30:
                                                      while(true)
                                                      {
                                                         loop31:
                                                         while(true)
                                                         {
                                                            loop32:
                                                            while(true)
                                                            {
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  §§push(§'O§.lizard.§<!,§());
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc17_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(47);
                                                                              if(_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 break loop32;
                                                                              }
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    §§push(", ");
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          addr02df:
                                                                                          §§push(true);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             break loop33;
                                                                                          }
                                                                                          break loop30;
                                                                                       }
                                                                                       break loop22;
                                                                                    }
                                                                                    break loop23;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(_loc1_ + " and ");
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       break loop31;
                                                                                    }
                                                                                    break loop20;
                                                                                 }
                                                                                 break loop21;
                                                                              }
                                                                              addr0370:
                                                                              §§goto(addr0374);
                                                                              §§push(§§pop());
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(!§'O§.skater.§<!,§())
                                                                           {
                                                                              break loop32;
                                                                           }
                                                                           §§push(_loc7_);
                                                                        }
                                                                        §§push(20);
                                                                        break;
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        break loop32;
                                                                     }
                                                                     if(_loc14_)
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           break loop26;
                                                                        }
                                                                        §§push(_loc1_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        §§push(", ");
                                                                        if(!_loc16_)
                                                                        {
                                                                           break loop25;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           break loop24;
                                                                        }
                                                                        §§goto(addr0370);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc1_ += " and ";
                                                                     }
                                                                     §§goto(addr0395);
                                                                  }
                                                                  §§goto(addr02df);
                                                               }
                                                               _loc15_ = §§pop();
                                                               break loop31;
                                                            }
                                                         }
                                                         §§push(_loc1_);
                                                         if(!_loc16_)
                                                         {
                                                            break loop19;
                                                         }
                                                         §§push("unlocked the Lizard");
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc16_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     break loop32;
                                                                  }
                                                               }
                                                               break loop18;
                                                            }
                                                            addr0374:
                                                            _loc1_ = §§pop();
                                                            if(!_loc17_)
                                                            {
                                                               §§push(true);
                                                               break;
                                                            }
                                                            §§goto(addr0395);
                                                         }
                                                         §§goto(addr0399);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      _loc15_ = §§pop();
                                                      addr0399:
                                                      _loc1_ += "unlocked the Skater";
                                                      addr0395:
                                                      if(!_loc16_)
                                                      {
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                break loop32;
                                             }
                                             §§goto(addr0411);
                                          }
                                          §§goto(addr0409);
                                       }
                                       §§goto(addr04a7);
                                    }
                                    §§goto(addr03f2);
                                 }
                                 §§goto(addr048a);
                              }
                              §§goto(addr0406);
                           }
                           §§goto(addr04a8);
                        }
                        §§goto(addr0473);
                     }
                     §§push(",");
                     if(_loc16_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc16_)
                        {
                           break;
                        }
                        addr03f2:
                        _loc1_ = §§pop();
                        continue loop13;
                     }
                     §§goto(addr03fd);
                  }
                  §§goto(addr0408);
               }
               §§push(§§pop() + §§pop());
               if(!_loc17_)
               {
                  _loc1_ = §§pop();
                  §§goto(addr0468);
                  §§push(!_loc13_);
               }
               §§goto(addr04a4);
            }
            §§push(Std);
            §§push("run ");
            if(!_loc17_)
            {
               while(true)
               {
                  §§push(§§pop() + _loc8_);
                  if(!_loc17_)
                  {
                     §§push(§§pop());
                     if(_loc17_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() + " meters");
                  if(!_loc17_)
                  {
                     §§push(§§pop());
                  }
                  break;
               }
            }
            §§push(§§pop().string(§§pop()));
            if(_loc16_)
            {
               §§push(§§pop());
            }
            break loop16;
         }
         loop11:
         while(true)
         {
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc1_);
                     §§push(" and ");
                     if(_loc16_)
                     {
                        addr0408:
                        addr03fd:
                        §§push(§§pop() + §§pop());
                        if(!_loc17_)
                        {
                           addr0406:
                           §§push(§§pop());
                        }
                        _loc1_ = §§pop();
                        addr0409:
                        §§push(_loc14_);
                        if(_loc16_)
                        {
                           addr0411:
                           if(§§pop())
                           {
                              if(_loc16_)
                              {
                                 §§push(_loc1_);
                                 if(_loc16_)
                                 {
                                    break loop10;
                                 }
                                 break loop11;
                              }
                              addr0473:
                              §§push(_loc1_);
                              if(_loc16_)
                              {
                                 addr048a:
                                 §§push(§§pop() + " into the void of space");
                                 if(!_loc17_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc16_)
                                       {
                                          _loc1_ = §§pop();
                                          break loop13;
                                       }
                                       addr04b0:
                                       §§push(§§pop());
                                       break;
                                    }
                                 }
                                 addr04b2:
                                 _loc1_ = §§pop();
                                 break loop12;
                              }
                              break loop11;
                           }
                           break loop13;
                        }
                        addr0468:
                        if(!§§pop())
                        {
                           break loop13;
                        }
                        if(_loc17_)
                        {
                           break loop12;
                        }
                        §§goto(addr0473);
                     }
                     §§goto(addr048a);
                  }
                  addr04a4:
                  addr04a8:
                  addr04a7:
                  §§push(§§pop() + "!");
                  if(!_loc17_)
                  {
                     §§goto(addr04b0);
                  }
                  §§goto(addr04b2);
               }
               §§push(_loc1_);
               if(!_loc17_)
               {
                  break loop14;
               }
               break loop11;
            }
            return _loc1_;
         }
         return §§pop();
      }
      
      public function § I§(param1:MouseEvent) : void
      {
         Save.§@!A§().§1!R§("ratedGame",3);
      }
      
      override public function §3%§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               Save.§@!A§().§1!R§("rateGamePopupShown",Number(Date.now().getTime()));
               if(_loc2_)
               {
                  break;
               }
               §§push(Save.§@!A§());
               §§push("ratedGame");
               §§push(int(Save.§@!A§().get("ratedGame",0)));
               if(!_loc2_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§1!R§(§§pop(),§§pop());
               if(!_loc3_)
               {
                  break;
               }
            }
            super.§3%§(param1);
            break;
         }
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(!_loc7_)
         {
            layout.add(new §?y§(this),new §30§(true,0.85),new §4o§(§!n§.§&#§));
         }
         var _loc1_:Number = 18;
         if(!_loc7_)
         {
            text = §&!;§.§9Q§(0,54,null,message,100,null,null,null,"center");
         }
         var _loc2_:TextField = text;
         var _loc3_:* = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  if(_loc3_ != null)
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     break loop0;
                  }
               }
               _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
            break;
         }
         var _loc4_:§ 7§ = new §?y§(text);
         if(!_loc7_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc4_);
            §§push(§§findproperty(§@$§));
            §§push(true);
            §§push(_loc1_);
            if(_loc8_)
            {
               §§push(§§pop() * 2);
            }
            §§pop().add(§§pop(),new §§pop().§@$§(§§pop(),§§pop()));
         }
         _loc4_ = new §?y§(text);
         if(!_loc7_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
         }
         _loc4_ = new §?y§(text);
         while(true)
         {
            if(!_loc7_)
            {
               §&d§.§1$§().add(_loc4_,new §;!!§(_loc1_,§2u§.TOP));
               if(!_loc8_)
               {
                  break;
               }
            }
            if(text.y < _loc1_ * 2)
            {
               if(_loc8_)
               {
                  break;
               }
               §§goto(addr01aa);
            }
            §§goto(addr019f);
         }
         text.y = _loc1_ * 2;
         if(_loc8_)
         {
            addr019f:
            addChild(text);
            §§goto(addr01aa);
         }
         addr01aa:
         §§push(§§findproperty(§+"§));
         §§push(§ I§);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc5_:§+"§ = new §§pop().§+"§(§§pop(),0,50,"Rate it now!");
         if(!_loc7_)
         {
            §&d§.§1$§().add(new §?y§(_loc5_),new §"q§(11184810,6710886,3.6));
         }
         _loc4_ = new §?y§(_loc5_);
         if(_loc8_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
         }
         _loc4_ = new §?y§(_loc5_);
         var _loc6_:§ 7§ = new §?y§(text);
         while(true)
         {
            if(!_loc7_)
            {
               §&d§.§1$§().add(_loc4_,new §+X§(_loc1_,§2u§.BOTTOM),_loc6_);
               if(_loc7_)
               {
                  break;
               }
            }
            addChild(_loc5_);
            if(_loc8_)
            {
               §4l§(new §?y§(_loc5_),_loc1_);
            }
            break;
         }
      }
   }
}

