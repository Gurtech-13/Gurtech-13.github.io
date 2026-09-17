package §<B§
{
   import § 0§.§!&§;
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-d§.§!!-§;
   import §2n§.§7%§;
   import §4n§.Achievement;
   import §4n§.Achievements;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§^`§;
   import §>T§.§!=§;
   import stage.§3!J§;
   import stage.§7d§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Currency;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.character.§'5§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§#C§;
   import com.player03.run3.menu.CreditsScreen;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§1!;§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxe.Timer;
   import haxeutils.math.§+L§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import unitsystem.§7o§;
   
   public class §9a§ extends §'!O§ implements §@[§
   {
      
      public var §9!X§:§6!_§;
      
      public var §,z§:Number;
      
      public var §@!`§:Vector.<§6!_§>;
      
      public var § ?§:Vector.<Number>;
      
      public function §9a§()
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §,z§ = -413;
            if(_loc3_)
            {
               super(0,0,§&d§.§1$§());
            }
         }
         var _loc1_:§ 7§ = new §?y§(this);
         if(!_loc2_)
         {
            §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.RIGHT));
            if(!_loc2_)
            {
               §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.BOTTOM));
            }
         }
      }
      
      public function §,y§(param1:MouseEvent) : void
      {
         §9'§.§@!A§().§3!+§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(§9!X§ != null)
            {
               if(_loc3_)
               {
                  §9!X§.update(param1);
               }
            }
         }
      }
      
      public function §,]§(param1:MouseEvent) : void
      {
         Main.instance.§#!B§();
      }
      
      public function §4!_§(param1:MouseEvent) : void
      {
         Main.instance.§=!6§();
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc2_:* = null as Main;
         var _loc3_:* = null as § !>§;
         var _loc4_:* = null as §-Q§;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = null as Vector.<Number>;
         while(true)
         {
            §§push(Timer.stamp());
            if(_loc14_)
            {
               §§push(Number(§§pop()));
               if(!_loc14_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc1_:* = §§pop();
         loop2:
         while(true)
         {
            if(!_loc13_)
            {
               §§push(_loc1_);
               if(_loc14_)
               {
                  §§push(§§pop() - §,z§);
               }
               if(§§pop() > 1)
               {
                  if(!_loc13_)
                  {
                     addr0084:
                     _loc2_ = Main.instance;
                     _loc3_ = §>K§.§0x§;
                     _loc4_ = _loc3_.§0!R§;
                     if(_loc14_)
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                                 if(_loc14_)
                                 {
                                    _loc5_ = §§pop();
                                    §§push(_loc3_.levelCount);
                                    if(_loc14_)
                                    {
                                       _loc6_ = §§pop();
                                       §§push(_loc5_);
                                       §§push(_loc6_);
                                       if(!_loc13_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             §§push(_loc5_);
                                          }
                                          else
                                          {
                                             §§push(_loc6_);
                                          }
                                          §§push(3);
                                          if(!_loc14_)
                                          {
                                             break loop4;
                                          }
                                       }
                                       §§push(§§pop() >= §§pop());
                                       if(_loc14_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                       §§push(0);
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc14_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 _loc8_ = §§pop();
                                 break;
                              }
                              _loc9_ = int(§@!`§.length);
                              while(true)
                              {
                                 if(!_loc13_)
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       §§push(_loc9_);
                                       if(!_loc13_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(§+L§.§=?§(§ ?§));
                                             break loop3;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(_loc14_)
                                                {
                                                   _loc8_++;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc14_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      _loc10_ = §§pop();
                                                      loop10:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            if(_loc14_)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc13_)
                                                               {
                                                                  break loop10;
                                                               }
                                                            }
                                                            §§pop();
                                                            if(_loc14_)
                                                            {
                                                               §§push(§@!`§[_loc10_].§#'§);
                                                               if(!_loc13_)
                                                               {
                                                                  break loop10;
                                                               }
                                                               break;
                                                            }
                                                            addr01c1:
                                                            if(§@!`§[_loc10_].visible)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  break loop7;
                                                               }
                                                               break loop8;
                                                            }
                                                            continue loop0;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               § ?§[_loc10_] = 0;
                                                               if(_loc13_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            § ?§[_loc10_] = §@!`§[_loc10_].§2K§();
                                                         }
                                                         §§goto(addr01c1);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      break loop11;
                                                   }
                                                }
                                                §§push(int(§§pop()));
                                                break loop7;
                                             }
                                             _loc12_ = § ?§;
                                             if(!_loc13_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc12_);
                                                   §§push(_loc11_);
                                                   §§push(_loc12_[_loc11_]);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc14_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(§§pop() / 4);
                                                   break;
                                                }
                                                §§pop()[§§pop()] = §§pop();
                                                if(!_loc14_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             §@!`§[_loc10_].visible = false;
                                             continue loop0;
                                          }
                                          _loc11_ = §§pop();
                                          break loop8;
                                       }
                                       break loop4;
                                    }
                                    break loop4;
                                 }
                                 §§goto(addr0280);
                              }
                              §§goto(addr0299);
                           }
                           if(§§pop() < §§pop())
                           {
                              visible = false;
                              return;
                           }
                           visible = true;
                           §9!X§ = §@!`§[_loc8_];
                           if(_loc14_)
                           {
                              addr0280:
                              §9!X§.visible = true;
                              if(_loc13_)
                              {
                                 break loop2;
                              }
                              §9!X§.reset();
                           }
                           §2!T§(§9!X§);
                           addr0299:
                           break loop2;
                        }
                        _loc8_ = §§pop();
                        §§goto(addr02ee);
                     }
                     break;
                  }
               }
               else
               {
                  if(§9!X§ == null)
                  {
                     break;
                  }
                  if(!_loc13_)
                  {
                     §9!X§.reset();
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
               }
               §2!T§(§9!X§);
               break;
            }
            §§goto(addr0084);
         }
         §,z§ = _loc1_;
         addr02ee:
         if(!_loc13_)
         {
            §§push(_loc8_);
            §§push(0);
            break loop4;
         }
      }
      
      public function §4[§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(§9!X§ != null)
            {
               if(_loc2_)
               {
                  §2!T§(§9!X§);
               }
            }
         }
      }
      
      public function §2!T§(param1:DisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Rectangle = param1.getBounds(param1);
         if(_loc4_)
         {
            param1.x = -_loc2_.x - _loc2_.width;
            if(_loc4_)
            {
               param1.y = -_loc2_.y - _loc2_.height;
            }
         }
      }
      
      public function §=!8§() : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§2o§ = Save.hasLoggedIn;
         while(true)
         {
            if(_loc3_)
            {
               if(!Boolean(Save.§@!A§().get(_loc1_.§=-§,Boolean(_loc1_.§ -§))))
               {
                  §§push(4);
                  break;
               }
            }
            §§push(0);
            if(_loc3_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §?K§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:§9'§ = §9'§.§@!A§();
         while(true)
         {
            if(!_loc4_)
            {
               §7o§.instance.§+D§(true);
               if(!_loc3_)
               {
                  break;
               }
            }
            if(§9'§.§@!A§().§?!;§.§ G§)
            {
               if(_loc3_)
               {
                  _loc2_.§?!;§.showRegistrationBox();
                  if(_loc3_)
                  {
                  }
               }
               break;
            }
            _loc2_.§+W§();
            break;
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc10_:* = null as §6!_§;
         var _loc1_:Vector.<§6!_§> = new Vector.<§6!_§>(0,false);
         if(_loc11_)
         {
            §@!`§ = _loc1_;
         }
         §§push(§§findproperty(§6!_§));
         §§push("menu/GooglePlay.png");
         §§push(§,]§);
         if(!_loc12_)
         {
            §§push(§§pop());
         }
         var _loc2_:§6!_§ = new §§pop().§6!_§(§§pop(),§§pop(),null,null,false);
         while(true)
         {
            if(_loc11_)
            {
               _loc2_.§#'§ = false;
               if(!_loc11_)
               {
                  break;
               }
            }
            _loc2_.§'!-§ = 2;
            if(!_loc12_)
            {
               break;
            }
            §§goto(addr0089);
         }
         §@!`§.push(_loc2_);
         addr0089:
         §§push(§§findproperty(§6!_§));
         §§push("menu/AppStore.png");
         §§push(§4!_§);
         if(!_loc12_)
         {
            §§push(§§pop());
         }
         var _loc3_:§6!_§ = new §§pop().§6!_§(§§pop(),§§pop(),null,null,false);
         while(true)
         {
            if(!_loc12_)
            {
               _loc3_.§#'§ = false;
               if(!_loc11_)
               {
                  break;
               }
               _loc3_.§'!-§ = 2;
               if(!_loc12_)
               {
                  §@!`§.push(_loc3_);
                  if(!_loc11_)
                  {
                     break;
                  }
                  if(!§9'§.§@!A§().§?!;§.§ G§)
                  {
                     break;
                  }
                  if(_loc12_)
                  {
                     break;
                  }
               }
            }
            §§push(§@!`§);
            §§push(§§findproperty(§6!_§));
            §§push(null);
            §§push(§#C§.§#!E§);
            if(_loc11_)
            {
               §§push(§§pop());
            }
            §§pop().push(new §§pop().§6!_§(§§pop(),§§pop(),"Get free power cells!"));
            break;
         }
         while(true)
         {
            §§push(§§findproperty(§6!_§));
            §§push("menu/KongregateButton.png");
            §§push(§?K§);
            if(_loc11_)
            {
               §§push(§§pop());
               if(!_loc11_)
               {
                  break;
               }
            }
            if(§9'§.§@!A§().§?!;§.§ G§)
            {
               break;
            }
            §§goto(addr0155);
         }
         §§push(" Log in and get 1000 power cells!");
         if(_loc12_)
         {
         }
         addr0155:
         var _loc4_:§6!_§ = new §§pop().§6!_§(§§pop(),§§pop()," Play on Kongregate for\n 1000 free power cells!");
         while(true)
         {
            if(!_loc12_)
            {
               §§push(_loc4_);
               §§push(§=!8§);
               if(!_loc12_)
               {
                  §§push(§§pop());
               }
               §§pop().§2K§ = §§pop();
               if(!_loc11_)
               {
                  break;
               }
            }
            §@!`§.push(_loc4_);
            break;
         }
         §§push(§§findproperty(§6!_§));
         §§push(null);
         §§push(§,y§);
         if(!_loc12_)
         {
            §§push(§§pop());
         }
         var _loc5_:§6!_§ = new §§pop().§6!_§(§§pop(),§§pop(),"More games",1.2);
         while(true)
         {
            if(!_loc12_)
            {
               §@!`§.push(_loc5_);
               if(_loc11_)
               {
                  §@!`§.push(new §]z§());
                  if(_loc12_)
                  {
                     break;
                  }
               }
            }
            §@!`§.push(new §0!V§());
            if(_loc11_)
            {
               §§push(§@!`§);
               §§push(§§findproperty(§6!_§));
               §§push(null);
               §§push(CreditsScreen.§`!§);
               if(_loc11_)
               {
                  §§push(§§pop());
               }
               §§pop().push(new §§pop().§6!_§(§§pop(),§§pop(),"Get the soundtrack!"));
            }
            break;
         }
         §§push(§4[§);
         if(!_loc12_)
         {
            §§push(§§pop());
            if(_loc11_)
            {
               §§push(§§pop());
            }
         }
         var _loc6_:* = §§pop();
         if(!_loc12_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc6_)));
         }
         var _loc7_:Vector.<Number> = new Vector.<Number>(0,false);
         if(!_loc12_)
         {
            § ?§ = _loc7_;
         }
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:Vector.<§6!_§> = §@!`§;
         while(true)
         {
            if(_loc11_)
            {
               while(_loc8_ < int(_loc9_.length))
               {
                  _loc10_ = _loc9_[_loc8_];
                  if(_loc11_)
                  {
                     _loc8_++;
                     if(!_loc12_)
                     {
                        addChild(_loc10_);
                        if(!_loc12_)
                        {
                           _loc10_.visible = false;
                           if(_loc11_)
                           {
                              § ?§.push(1);
                           }
                        }
                     }
                  }
               }
               if(!_loc11_)
               {
                  break;
               }
            }
            reset();
            break;
         }
      }
   }
}

