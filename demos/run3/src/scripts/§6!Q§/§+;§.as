package §6!Q§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §"!M§.§!!P§;
   import §"p§.§'A§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Z§.§&!S§;
   import §-!!§.§&l§;
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §-!!§.§6!4§;
   import §-v§.§0!5§;
   import §-v§.§?P§;
   import §3!b§.Cutscenes;
   import §3!b§.LizardFellAsleep;
   import §4n§.Achievement;
   import §<?§.§#!7§;
   import §=u§.§<e§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§[C§;
   import §@]§.§4$§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.Lizard;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§;!G§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import unitsystem.§7o§;
   
   public class §+;§ extends §&l§
   {
      
      public var §9H§:Object;
      
      public var §=#§:§?P§;
      
      public var §=F§:§&d§;
      
      public var §`W§:Vector.<§?P§>;
      
      public var §3n§:Number;
      
      public function §+;§(param1:Object = undefined, param2:Object = undefined, param3:Object = undefined)
      {
         var a1:§38§;
         var f:Function;
         var _gthis:§+;§;
         §§push(false);
         var _loc22_:Boolean = true;
         var _loc23_:* = §§pop();
         var _loc4_:* = null as § 7§;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc14_:* = null as §6O§;
         var _loc15_:* = null as Vector.<§6O§>;
         var _loc16_:* = null as §6O§;
         var _loc19_:* = null as §?P§;
         var _loc20_:* = null as § 7§;
         loop6:
         while(true)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(!_loc22_)
                  {
                     break;
                  }
                  §§push(1);
                  if(_loc23_)
                  {
                     break loop6;
                  }
                  param1 = §§pop();
               }
               if(param2 == null)
               {
                  §§push(0);
                  break loop6;
               }
               §§goto(addr0062);
            }
            super(100,100,null,18);
            §6>§ = true;
            §§goto(addr00a7);
         }
         param2 = §§pop();
         addr0062:
         while(true)
         {
            if(param3 == null)
            {
               if(_loc23_)
               {
                  break;
               }
               param3 = true;
            }
            §3n§ = 0;
            if(!_loc23_)
            {
               §9H§ = null;
               if(_loc22_)
               {
                  _gthis = this;
               }
            }
            break loop7;
         }
         addr00a7:
         _loc4_ = new §?y§(this);
         if(_loc22_)
         {
            §&d§.§1$§().add(_loc4_,new §30§(true,Number(param1)));
         }
         _loc4_ = new §?y§(this);
         if(!_loc23_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
            if(!_loc23_)
            {
               §=F§ = new §&d§(§&d§.§1$§().scale,new §'A§(0,0,width,60));
            }
         }
         var _loc5_:§&d§ = §&d§.§1$§();
         loop9:
         while(true)
         {
            if(_loc22_)
            {
               §&d§.§3!C§ = §=F§;
               if(!_loc22_)
               {
                  break;
               }
            }
            §3n§ = param2;
            while(true)
            {
               if(!_loc23_)
               {
                  break loop9;
               }
               addr016f:
               a1 = §=F§.scale;
               break;
            }
            §§goto(addr017b);
         }
         §§push(§§newactivation());
         §§push(§6!5§);
         if(!_loc23_)
         {
            §§push(§§pop());
         }
         §§pop().§§slot[2] = §§pop();
         if(!_loc23_)
         {
            §§goto(addr016f);
         }
         addr017b:
         if(!_loc23_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            if(!_loc23_)
            {
               §=F§.§6"§.push(new §#!7§(null,null,new §#!6§(_loc6_)));
               if(_loc23_)
               {
                  break;
               }
            }
            _loc6_();
            break;
         }
         var _loc7_:Vector.<§?P§> = new Vector.<§?P§>(0,false);
         if(_loc22_)
         {
            §`W§ = _loc7_;
         }
         §§push(0);
         if(_loc22_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc23_)
         {
            loop12:
            while(true)
            {
               §§push(int(§'O§.§&!#§.length));
               if(_loc22_)
               {
                  §§push(int(§§pop()));
                  if(!_loc23_)
                  {
                     _loc9_ = §§pop();
                     if(_loc23_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc8_);
                     }
                     addr023b:
                  }
               }
               while(true)
               {
                  if(§§pop() >= _loc9_)
                  {
                     break loop12;
                  }
                  while(true)
                  {
                     §§push(_loc8_);
                     if(!_loc23_)
                     {
                        _loc8_++;
                        if(!_loc22_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc10_ = §§pop();
                  if(_loc22_)
                  {
                     §`W§.push(null);
                  }
                  §§goto(addr023b);
               }
               break;
            }
         }
         var _loc11_:Vector.<§6O§> = new Vector.<§6O§>(0,false);
         var _loc12_:Vector.<§6O§> = _loc11_;
         if(_loc22_)
         {
            §§push(0);
            if(!_loc23_)
            {
               §§push(int(§§pop()));
            }
            _loc8_ = §§pop();
         }
         var _loc13_:Vector.<§6O§> = §'O§.available;
         if(!_loc23_)
         {
            loop2:
            while(_loc8_ < int(_loc13_.length))
            {
               _loc14_ = _loc13_[_loc8_];
               while(true)
               {
                  if(_loc22_)
                  {
                     _loc8_++;
                     if(!_loc23_)
                     {
                        _loc12_.push(_loc14_);
                        if(!_loc23_)
                        {
                           loop15:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc22_)
                                 {
                                    if(_loc14_.§[P§ == null)
                                    {
                                       break loop15;
                                    }
                                    if(_loc23_)
                                    {
                                       break loop15;
                                    }
                                    §§pop();
                                    if(!_loc22_)
                                    {
                                       break;
                                    }
                                    §§push(_loc14_ == §'O§.random);
                                    if(!_loc22_)
                                    {
                                       break loop15;
                                    }
                                 }
                                 §§push(!§§pop());
                                 if(_loc22_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break loop15;
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc22_)
                              {
                                 break loop16;
                              }
                              break;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§push(0);
                  if(!_loc23_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc9_ = §§pop();
                  break;
               }
               _loc15_ = _loc14_.§[P§.§@D§;
               if(!_loc23_)
               {
                  while(_loc9_ < int(_loc15_.length))
                  {
                     _loc16_ = _loc15_[_loc9_];
                     if(_loc22_)
                     {
                        _loc9_++;
                        if(!_loc23_)
                        {
                           if(_loc16_ != _loc14_)
                           {
                              if(_loc22_)
                              {
                                 _loc12_.push(_loc16_);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§push(3.2);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         var _loc18_:§?P§ = null;
         loop17:
         while(true)
         {
            loop18:
            while(true)
            {
               if(_loc22_)
               {
                  while(true)
                  {
                     §§push(0);
                     if(_loc22_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc22_)
                        {
                           break;
                        }
                     }
                     _loc8_ = §§pop();
                     if(!_loc22_)
                     {
                        break loop17;
                     }
                  }
                  while(true)
                  {
                     if(§§pop() >= int(_loc12_.length))
                     {
                        break loop18;
                     }
                     _loc14_ = _loc12_[_loc8_];
                     while(true)
                     {
                        if(!_loc23_)
                        {
                           _loc8_++;
                           if(_loc22_)
                           {
                              if(_loc14_ != §'O§.lizard)
                              {
                                 §§push(§§findproperty(§?P§));
                                 §§push(_loc14_);
                                 §§push(global);
                                 §§push([_loc14_]);
                                 §§push(§7]§);
                                 if(_loc22_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc19_ = new §§pop().§?P§(§§pop(),§§pop()(§§pop(),null),false);
                                 break;
                              }
                           }
                        }
                        §§push(§§findproperty(§0!5§));
                        §§push(global);
                        §§push([_loc14_]);
                        §§push(§7]§);
                        if(!_loc23_)
                        {
                           §§push(§§pop());
                        }
                        _loc19_ = new §§pop().§0!5§(§§pop()(§§pop(),null),false);
                        break;
                     }
                     §`W§[_loc14_.id] = _loc19_;
                     loop24:
                     while(true)
                     {
                        loop25:
                        while(true)
                        {
                           loop26:
                           while(true)
                           {
                              if(!_loc23_)
                              {
                                 loop27:
                                 while(true)
                                 {
                                    if(_loc18_ != null)
                                    {
                                       if(_loc23_)
                                       {
                                          break;
                                       }
                                       _loc4_ = new §?y§(_loc19_);
                                       _loc20_ = new §?y§(_loc18_);
                                       if(!_loc23_)
                                       {
                                          §&d§.§1$§().add(_loc4_,new §<e§(true,_loc17_),_loc20_);
                                       }
                                    }
                                    addChild(_loc19_);
                                    loop28:
                                    while(true)
                                    {
                                       if(_loc22_)
                                       {
                                          if(§'O§.§;<§ == _loc14_)
                                          {
                                             §+!>§(_loc19_.x + _loc19_.width / 2);
                                             break loop24;
                                          }
                                          §§push(false);
                                          if(_loc14_.§[P§ != null)
                                          {
                                             §§pop();
                                             if(_loc23_)
                                             {
                                                break;
                                             }
                                             §§push(_loc14_ == §'O§.random);
                                             if(_loc23_)
                                             {
                                                break loop25;
                                             }
                                             §§push(!§§pop());
                                             if(_loc23_)
                                             {
                                                break loop25;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             break loop24;
                                          }
                                          if(_loc23_)
                                          {
                                             break loop24;
                                          }
                                       }
                                       loop29:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             §§push(false);
                                             if(!_loc23_)
                                             {
                                                §§push(_loc14_.§<!,§());
                                                if(_loc22_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc22_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                }
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                if(!_loc22_)
                                                {
                                                   break loop29;
                                                }
                                             }
                                             §§pop();
                                             §§push(_loc14_ == _loc14_.§[P§.§@D§[0]);
                                             if(_loc22_)
                                             {
                                                break loop29;
                                             }
                                             §§goto(addr052e);
                                          }
                                          if(!§§pop())
                                          {
                                             if(_loc22_)
                                             {
                                                §§pop();
                                                break loop27;
                                             }
                                             addr0553:
                                             §§pop();
                                             break loop28;
                                          }
                                          break loop26;
                                       }
                                       §§push(!§§pop());
                                       if(_loc22_)
                                       {
                                          addr052e:
                                          §§push(Boolean(§§pop()));
                                       }
                                       break loop30;
                                    }
                                 }
                                 §§push(false);
                                 if(!_loc23_)
                                 {
                                    if(_loc14_.§[P§.§?7§() == _loc14_)
                                    {
                                       break loop25;
                                    }
                                 }
                                 §§goto(addr0553);
                              }
                              §§push(int(_loc14_.§[P§.§@D§.indexOf(§'O§.§;<§,0)) < 0);
                              break loop25;
                           }
                           if(§§pop())
                           {
                              _loc19_.visible = false;
                           }
                           break loop24;
                        }
                        §§push(Boolean(§§pop()));
                        break loop26;
                     }
                     _loc18_ = _loc19_;
                  }
                  break;
                  addr057f:
               }
               while(true)
               {
                  §§goto(addr057f);
               }
            }
            if(_loc22_)
            {
               §=F§.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
               {
                  var _temp_1:* = false;
                  var _loc2_:Boolean = true;
                  var _loc3_:Boolean = _temp_1;
                  _gthis.§-k§();
                  §§push(_gthis.§`W§[0].height);
                  if(_loc2_)
                  {
                     §§push(8);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * §&d§.§;`§().scale.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  var _loc1_:* = §§pop();
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §§push(_gthis);
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().height = §§pop();
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                     _gthis.§>1§();
                     if(!_loc3_)
                     {
                        _gthis.§<k§(_gthis.§[!Y§.y);
                     }
                     break;
                  }
               })));
               if(_loc23_)
               {
                  break;
               }
            }
            _gthis.§-k§();
            break;
         }
         while(true)
         {
            §§push(_gthis.§`W§[0].height);
            if(!_loc23_)
            {
               §§push(8);
               if(!_loc23_)
               {
                  §§push(§§pop() * §&d§.§;`§().scale.y);
               }
               §§push(§§pop() + §§pop());
               if(!_loc22_)
               {
                  break;
               }
               §§push(Number(§§pop()));
               if(!_loc22_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc21_:* = §§pop();
         while(true)
         {
            if(!_loc23_)
            {
               while(true)
               {
                  §§push(_gthis);
                  §§push(_loc21_);
                  if(_loc22_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc22_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().height = §§pop();
               if(_loc23_)
               {
                  break;
               }
            }
            _gthis.§>1§();
            if(_loc22_)
            {
               break;
            }
            §§goto(addr065b);
         }
         _gthis.§<k§(_gthis.§[!Y§.y);
         if(_loc22_)
         {
            §&d§.§3!C§ = _loc5_;
         }
         addr065b:
      }
      
      public function §6!5§(param1:§38§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(§§findproperty(§>!%§));
            §§push(§3n§);
            if(!_loc3_)
            {
               §§push(§§pop() * param1.x);
            }
            §§pop().§>!%§ = §§pop();
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = null as §+;§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(§9H§ == null)
                                       {
                                          break loop6;
                                       }
                                       if(§7o§.instance.mouseDown)
                                       {
                                          if(!_loc8_)
                                          {
                                             §9H§ = null;
                                             break loop6;
                                          }
                                       }
                                       else if(§9H§ < §[!Y§.left)
                                       {
                                          §9H§ = §[!Y§.left;
                                       }
                                       else if(§9H§ > §[!Y§.right)
                                       {
                                          if(!_loc9_)
                                          {
                                             break loop7;
                                          }
                                          §9H§ = §[!Y§.right;
                                          if(!_loc9_)
                                          {
                                             break loop4;
                                          }
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§9H§ - _cameraX);
                                          if(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(4);
                                                if(_loc9_)
                                                {
                                                   _loc2_ = §§pop() * §§pop() * param1;
                                                   §§push(_loc2_);
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(0);
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(_loc2_);
                                                }
                                                else
                                                {
                                                   §§push(-_loc2_);
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             _loc3_ = §§pop();
                                          }
                                          _loc4_ = §§pop() * §&d§.§;`§().scale.x;
                                          if(_loc9_)
                                          {
                                             §§push(20 * §&d§.§;`§().scale.y);
                                             if(!_loc8_)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc9_)
                                                {
                                                   if(_loc3_ >= _loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc9_)
                                                   {
                                                      break loop0;
                                                   }
                                                   break loop2;
                                                }
                                                break loop1;
                                             }
                                             break loop8;
                                          }
                                          break loop9;
                                       }
                                    }
                                    if(_loc3_ <= _loc5_)
                                    {
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       §§push(_loc3_);
                                       if(!_loc8_)
                                       {
                                          break loop8;
                                       }
                                    }
                                    else
                                    {
                                       §§push(Number(_loc5_));
                                       if(_loc8_)
                                       {
                                          break loop0;
                                       }
                                       _loc3_ = §§pop();
                                       §§goto(addr017c);
                                    }
                                    §§goto(addr018a);
                                 }
                                 §§goto(addr01c4);
                              }
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 _loc3_ = §§pop();
                                 §§goto(addr017c);
                              }
                              §§goto(addr019b);
                           }
                           §§goto(addr0193);
                        }
                        §§goto(addr022d);
                     }
                     §§goto(addr0235);
                  }
                  §§goto(addr01f4);
               }
               §§goto(addr0205);
            }
            _loc7_ = this;
            if(!_loc8_)
            {
               while(true)
               {
                  §§push(_loc7_);
                  §§push(_loc7_._cameraX);
                  if(!_loc8_)
                  {
                     §§push(§§pop() + _loc3_);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§+!>§(§§pop());
            }
            §§goto(addr022d);
         }
         _loc3_ = §§pop();
         if(!_loc8_)
         {
            addr018a:
            _loc6_ = §9H§ - _cameraX;
            addr017c:
            if(!_loc8_)
            {
               addr0193:
               §§push(_loc3_);
               if(!_loc8_)
               {
                  addr019b:
                  if(_loc6_ >= 0)
                  {
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        addr01b9:
                        §§push(-§§pop());
                     }
                  }
                  else
                  {
                     §§push(_loc6_);
                     if(_loc9_)
                     {
                        §§goto(addr01b9);
                     }
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc9_)
                     {
                        addr01c4:
                        §+!>§(§9H§);
                        §9H§ = null;
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                        addr022d:
                        super.update(param1);
                     }
                     §§goto(addr0235);
                  }
                  else
                  {
                     if(§9H§ >= _cameraX)
                     {
                        break loop1;
                     }
                     addr01f4:
                     §§push(-_loc3_);
                  }
               }
               addr0205:
               _loc3_ = §§pop();
            }
            break loop1;
         }
         addr0235:
      }
      
      public function §8t§(param1:§6O§, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc4_:* = null as String;
         var _loc5_:* = false;
         var _loc6_:Boolean = false;
         var _loc7_:* = null as § !W§;
         var _loc8_:* = 0;
         var _loc9_:* = null as Vector.<§?P§>;
         var _loc10_:* = null as §?P§;
         var _loc11_:* = null as §+;§;
         if(_loc12_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  if(param2 == null)
                  {
                     if(_loc13_)
                     {
                        break;
                     }
                     §§push(false);
                     if(_loc13_)
                     {
                        break loop2;
                     }
                     param2 = §§pop();
                  }
                  §§push(false);
                  if(!_loc12_)
                  {
                     break loop2;
                  }
                  if(Main.instance.tunnel != null)
                  {
                     if(_loc13_)
                     {
                        break loop2;
                     }
                     §§pop();
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(Main.instance.tunnel.§5§ == §,a§.INFINITE);
                     if(_loc12_)
                     {
                        break loop2;
                     }
                  }
                  §§goto(addr0096);
               }
            }
            addr0096:
            if(Boolean(§§pop()))
            {
               break loop3;
            }
            var _loc3_:§?P§ = §`W§[param1.id];
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     §§push(false);
                     if(_loc12_)
                     {
                        §§push(param1.§<!,§());
                        if(_loc12_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(!param1.§#U§);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc12_)
                                 {
                                    break loop8;
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§push(false);
                                    if(_loc12_)
                                    {
                                       addr0104:
                                       if(§=#§.character == param1)
                                       {
                                          §§pop();
                                          §§push(param1 == §'O§.random);
                                          break loop9;
                                       }
                                       if(!§§pop())
                                       {
                                          if(Main.instance.tunnel != null)
                                          {
                                             _loc7_ = Main.instance.tunnel;
                                             loop11:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      if(_loc7_.characters == null)
                                                      {
                                                         _loc6_ = false;
                                                         break loop7;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(int(_loc7_.characters.length));
                                                         if(_loc12_)
                                                         {
                                                            _loc6_ = §§pop() > 0;
                                                            if(!_loc13_)
                                                            {
                                                               break loop7;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr0236);
                                                      }
                                                      §§goto(addr0237);
                                                   }
                                                   addr01f9:
                                                   §'O§.§3§(param1);
                                                   break loop11;
                                                }
                                                addr0215:
                                                §;!G§.§@!A§().§`!@§(null,null);
                                                §§goto(addr0228);
                                             }
                                             §-k§();
                                             if(Main.instance.tunnel == null)
                                             {
                                                break loop12;
                                             }
                                             addr0228:
                                             _loc3_.§=,§(false);
                                             addr0237:
                                             §§push(0);
                                             if(!_loc13_)
                                             {
                                                addr0236:
                                                §§push(int(§§pop()));
                                             }
                                             _loc8_ = §§pop();
                                             _loc9_ = §`W§;
                                             loop13:
                                             while(true)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc13_)
                                                            {
                                                               break loop14;
                                                            }
                                                            if(§§pop() >= int(_loc9_.length))
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc12_)
                                                                           {
                                                                              if(param1.§[P§ == null)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                              §§pop();
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break loop22;
                                                                              }
                                                                              §§push(param1 == §'O§.random);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(!_loc13_)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr03c1);
                                                                     }
                                                                  }
                                                                  addr03c1:
                                                                  if(Boolean(§§pop()))
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        break loop22;
                                                                     }
                                                                     break loop13;
                                                                  }
                                                                  break loop20;
                                                               }
                                                               break loop13;
                                                            }
                                                            _loc10_ = _loc9_[_loc8_];
                                                            if(_loc12_)
                                                            {
                                                               _loc8_++;
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     §§push(false);
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(_loc10_ == null)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc13_)
                                                                        {
                                                                           break loop24;
                                                                        }
                                                                        §§pop();
                                                                        §§push(_loc10_.character.§[P§ == null);
                                                                        if(_loc13_)
                                                                        {
                                                                           break loop24;
                                                                        }
                                                                     }
                                                                     §§push(!§§pop());
                                                                     if(_loc12_)
                                                                     {
                                                                        break loop24;
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop();
                                                                           §§push(_loc10_.character != §'O§.random);
                                                                           if(!_loc12_)
                                                                           {
                                                                              break loop26;
                                                                           }
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(false);
                                                                           break;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     if(_loc10_.character.§[P§.§?7§() != _loc10_.character)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr02f0);
                                                                  }
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        addr02f0:
                                                                        if(!Boolean(_loc10_.visible))
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc10_.character.§[P§.§?7§() == _loc10_.character)
                                                                           {
                                                                              §§pop();
                                                                              break;
                                                                           }
                                                                           addr036a:
                                                                           if(§§pop())
                                                                           {
                                                                              _loc10_.visible = true;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        _loc10_.visible = false;
                                                                        if(_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     if(_loc10_.x + _loc10_.width / 2 >= _cameraX)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(!_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(!_loc10_.visible);
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  §§goto(addr036a);
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               break loop25;
                                                            }
                                                            _loc11_ = this;
                                                            if(_loc12_)
                                                            {
                                                               §§push(_loc11_);
                                                               §§push(_loc11_._cameraX);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(§§pop() - _loc10_.width);
                                                               }
                                                               §§pop().§+!>§(§§pop());
                                                            }
                                                         }
                                                      }
                                                      break loop22;
                                                   }
                                                   §§goto(addr04d0);
                                                }
                                                _loc8_ = int(§§pop());
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                break loop5;
                                             }
                                             _loc9_ = §`W§;
                                             if(!_loc13_)
                                             {
                                                loop1:
                                                while(_loc8_ < int(_loc9_.length))
                                                {
                                                   _loc10_ = _loc9_[_loc8_];
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§push(_loc10_.character.§<!,§());
                                                            if(_loc12_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         _loc8_++;
                                                         if(_loc12_)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(false);
                                                                     if(!_loc13_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           if(!_loc13_)
                                                                           {
                                                                              if(_loc10_ == null)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc13_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop();
                                                                              if(_loc13_)
                                                                              {
                                                                                 break loop17;
                                                                              }
                                                                              §§push(!_loc10_.visible);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc12_)
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                     }
                                                                     §§pop();
                                                                     if(!_loc12_)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                  }
                                                                  §§push(int(param1.§[P§.§@D§.indexOf(_loc10_.character,0)) >= 0);
                                                                  if(_loc12_)
                                                                  {
                                                                     break loop17;
                                                                  }
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop15;
                                                               }
                                                               if(_loc13_)
                                                               {
                                                                  break loop15;
                                                               }
                                                               §§pop();
                                                               if(!_loc12_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            break loop18;
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc12_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         _loc10_.visible = true;
                                                      }
                                                   }
                                                }
                                                if(_loc12_)
                                                {
                                                   param1.§[P§.§`Z§(param1);
                                                }
                                             }
                                             addr04d0:
                                             §=F§.apply();
                                             break loop5;
                                          }
                                          addr0198:
                                          §§push(false);
                                          break loop8;
                                       }
                                       if(_loc12_)
                                       {
                                          §§push(param1.§7!9§);
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                          _loc4_ = §§pop();
                                          if(Main.instance.tunnel != null)
                                          {
                                             break loop5;
                                          }
                                          §;!G§.§@!A§().§`!@§(param1,_loc4_);
                                          if(!_loc13_)
                                          {
                                             break loop5;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0523);
                                       }
                                       §§goto(addr0597);
                                    }
                                    else
                                    {
                                       addr04e9:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1.§<!,§());
                                    if(!_loc13_)
                                    {
                                       §§goto(addr04e9);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    break loop4;
                                 }
                                 §§push(param1.§;G§);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop());
                                 }
                                 break;
                              }
                              _loc4_ = §§pop();
                              if(!_loc13_)
                              {
                                 §§goto(addr0554);
                              }
                              §§goto(addr0597);
                           }
                           §§push(!§§pop());
                           if(!_loc13_)
                           {
                              §§goto(addr0104);
                           }
                           §§goto(addr0198);
                        }
                     }
                     break loop8;
                  }
                  loop30:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(Main.instance.tunnel.characters[0].§73§.§%f§(param1));
                              if(_loc12_)
                              {
                                 §§push(!Boolean(§§pop()));
                                 if(_loc13_)
                                 {
                                    addr01ea:
                                    _loc5_ = Boolean(§§pop());
                                    break;
                                 }
                              }
                              _loc5_ = §§pop();
                              if(!_loc13_)
                              {
                                 break;
                              }
                              break loop30;
                           }
                        }
                        else
                        {
                           §§push(false);
                           if(_loc12_)
                           {
                              §§goto(addr01ea);
                           }
                        }
                        if(§§pop())
                        {
                           return;
                        }
                        if(param2)
                        {
                           break;
                        }
                        break loop11;
                     }
                     §§goto(addr01f9);
                  }
                  §§goto(addr0215);
               }
               §9H§ = _loc3_.x + _loc3_.width / 2;
               §"!E§ = true;
               §§goto(addr0597);
            }
            while(true)
            {
               §§push(param1.§?$§);
               if(_loc12_)
               {
                  if(§§pop() == null)
                  {
                     break loop5;
                  }
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(param1.§?$§);
               }
               _loc4_ = §§pop();
               if(Main.instance.tunnel == null)
               {
                  if(_loc12_)
                  {
                     addr0523:
                     §;!G§.§@!A§().§`!@§(param1,_loc4_);
                     if(!_loc13_)
                     {
                        break loop5;
                     }
                     break;
                  }
                  addr0554:
                  if(Main.instance.tunnel == null)
                  {
                     §;!G§.§@!A§().§`!@§(param1,_loc4_);
                  }
               }
               break loop5;
            }
            addr0597:
            return;
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = null as Vector.<§?P§>;
         var _loc3_:* = null as §?P§;
         var _loc5_:* = null as TunnelSection;
         while(true)
         {
            if(!_loc6_)
            {
               Lizard.§?!-§();
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(0);
            if(!_loc6_)
            {
               §§push(int(§§pop()));
            }
            _loc1_ = §§pop();
            break;
         }
         _loc2_ = §`W§;
         loop3:
         while(true)
         {
            if(!_loc6_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(!_loc6_)
                  {
                     _loc1_++;
                     if(!_loc6_)
                     {
                        if(_loc3_ != null)
                        {
                           if(_loc7_)
                           {
                              _loc3_.§];§();
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc7_)
                  {
                     §§push(true);
                     if(!_loc6_)
                     {
                        §§push(§'O§.§;<§.§<!,§());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc6_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§pop();
                                 §§push(§'O§.§;<§.§#U§);
                                 if(_loc6_)
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
                        §8t§(§'O§.§&!#§[0]);
                     }
                     else
                     {
                        §8t§(§'O§.§;<§);
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                  }
                  if(Main.instance.tunnel == null)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     break loop3;
                  }
                  addr012c:
                  §+!>§(§=#§.x + §=#§.width / 2);
               }
               §;!G§.§@!A§().§`!@§(null,null);
               §§goto(addr012c);
            }
            §9H§ = null;
            break;
         }
         var _loc4_:§ !W§ = Main.instance.tunnel;
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               if(!_loc6_)
               {
                  loop8:
                  while(true)
                  {
                     §§push(false);
                     if(!_loc6_)
                     {
                        if(_loc4_ != null)
                        {
                           §§pop();
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 §§push(false);
                                 if(_loc4_.characters == null)
                                 {
                                    break;
                                 }
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    break loop8;
                                 }
                              }
                              §§push(int(_loc4_.characters.length) > 0);
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        break loop6;
                     }
                     break loop7;
                  }
               }
               _loc5_ = _loc4_.characters[0].§73§;
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           §§push(false);
                           if(_loc5_ == null)
                           {
                              break;
                           }
                           if(!_loc7_)
                           {
                              break loop11;
                           }
                           §§pop();
                           if(!_loc7_)
                           {
                              break loop10;
                           }
                        }
                        §§push(false);
                        if(_loc6_)
                        {
                           break;
                        }
                        if(_loc5_.charactersAllowed != null)
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              if(_loc6_)
                              {
                                 break loop10;
                              }
                              §§push(int(_loc5_.charactersAllowed.length));
                              if(_loc7_)
                              {
                                 §§push(§§pop() > 0);
                                 if(!_loc6_)
                                 {
                                    break loop11;
                                 }
                                 break;
                              }
                              §§goto(addr0244);
                           }
                        }
                        §§goto(addr022f);
                     }
                     if(!§§pop())
                     {
                        break loop7;
                     }
                     if(_loc7_)
                     {
                        break loop10;
                     }
                     §§goto(addr0245);
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     addr022f:
                     §§push(Boolean(§§pop()));
                  }
                  break loop13;
               }
               addr0244:
               §§push(0);
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               _loc1_ = §§pop();
               addr0245:
               _loc2_ = §`W§;
               if(!_loc6_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc1_ >= int(_loc2_.length))
                     {
                        break loop7;
                     }
                     _loc3_ = _loc2_[_loc1_];
                     if(!_loc6_)
                     {
                        _loc1_++;
                        while(true)
                        {
                           if(_loc7_)
                           {
                              §§push(false);
                              §§push(false);
                              if(_loc7_)
                              {
                                 if(_loc3_ != null)
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       §§push(Boolean(_loc3_.visible));
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              §§pop();
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                           }
                           §§push(!_loc5_.§%f§(_loc3_.character));
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              _loc3_.§=,§(true);
                           }
                        }
                     }
                  }
               }
               break;
            }
            visible = true;
            break;
         }
      }
      
      public function §7!A§() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:* = null as §?P§;
         var _loc4_:* = null as §6O§;
         var _loc5_:* = null as String;
         var _loc6_:* = null as String;
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§6O§> = §'O§.available;
         if(_loc8_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(_loc8_)
               {
                  _loc2_++;
               }
               _loc1_ = §`W§[_loc4_.id];
               if(_loc8_)
               {
                  while(true)
                  {
                     §§push(_loc4_.§@>§());
                     if(_loc8_)
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     _loc5_ = §§pop();
                     _loc1_.§<t§.bitmapData = §2!B§.getBitmapData(_loc5_);
                     if(_loc8_)
                     {
                        §§push(_loc4_.§,!-§());
                        if(_loc8_)
                        {
                           break;
                        }
                        addr00d7:
                        _loc6_ = §§pop();
                     }
                     _loc1_.§6!B§.bitmapData = §2!B§.getBitmapData(_loc6_);
                  }
                  §§push(§§pop());
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr00d7);
               }
               if(_loc1_ == §=#§)
               {
                  if(_loc8_)
                  {
                     _loc1_.§;!+§(false);
                     if(!_loc8_)
                     {
                        continue;
                     }
                  }
                  §-k§();
               }
            }
            if(_loc8_)
            {
               §"!E§ = true;
            }
         }
      }
      
      public function §7]§(param1:§6O§, param2:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §8t§(param1,true);
         }
      }
      
      public function §-k§() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:* = 0;
         var _loc3_:* = null as §?P§;
         var _loc5_:* = null as Vector.<§6O§>;
         var _loc6_:* = null as §6O§;
         while(true)
         {
            if(!_loc8_)
            {
               if(§=#§ != null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  §=#§.§@F§();
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            §§push(0);
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            _loc1_ = §§pop();
            break;
         }
         var _loc2_:Vector.<§?P§> = §`W§;
         if(_loc7_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc8_)
               {
                  _loc1_++;
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               if(_loc3_ != null)
               {
                  if(!_loc8_)
                  {
                     _loc3_.§;!+§(false);
                  }
               }
            }
            while(true)
            {
               if(!_loc8_)
               {
                  §=#§ = §`W§[§'O§.§;<§.id];
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               §=#§.§;!+§(true);
               break;
            }
         }
         var _loc4_:§,C§ = §=#§;
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               if(!_loc8_)
               {
                  §=#§.§&!Q§(4,0,43775,2.4,0);
                  if(_loc7_)
                  {
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc7_)
                           {
                              if(§=#§.character.§[P§ == null)
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 §§pop();
                                 if(_loc8_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§=#§.character == §'O§.random);
                                 if(!_loc7_)
                                 {
                                    break loop6;
                                 }
                              }
                           }
                           §§push(!§§pop());
                           if(_loc7_)
                           {
                              break loop6;
                           }
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop5;
                        }
                        if(_loc8_)
                        {
                           break loop4;
                        }
                        §§push(0);
                        if(!_loc8_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc1_ = §§pop();
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop7;
                  }
                  break loop4;
               }
               _loc5_ = §=#§.character.§[P§.§@D§;
               if(!_loc8_)
               {
                  while(true)
                  {
                     if(_loc1_ >= int(_loc5_.length))
                     {
                        break loop5;
                     }
                     _loc6_ = _loc5_[_loc1_];
                     if(_loc7_)
                     {
                        _loc1_++;
                        if(_loc7_)
                        {
                           §`W§[_loc6_.id].§;!+§(true);
                        }
                     }
                  }
               }
               break;
            }
            §"!E§ = true;
            break;
         }
      }
   }
}

