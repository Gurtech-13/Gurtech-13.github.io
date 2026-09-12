package §4n§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §"!L§.§%z§;
   import §"!L§.§@C§;
   import §%!Z§.§&!S§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§6!4§;
   import §-!!§.ScrollIndicator;
   import §-v§.§%!3§;
   import §2X§.GridLayout2D;
   import §3!7§.§9y§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §?!6§.§-!H§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.menu.§3!!§;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.ds.IntMap;
   import haxeutils.math.geom.§4!R§;
   
   public class §3!G§ extends §[k§ implements §3!!§, §@[§
   {
      
      public static var §07§:Achievement;
      
      public static var §+1§:§%z§;
      
      public static var instance:§3!G§;
      
      public var §]@§:§&l§;
      
      public var §2!N§:Vector.<§!L§>;
      
      public var §6!@§:Vector.<§9y§>;
      
      public var §?T§:Number;
      
      public var §<K§:Number;
      
      public var §1N§:Boolean;
      
      public var §0G§:GridLayout2D;
      
      public var §3!X§:TextField;
      
      public var dirty:Boolean;
      
      public var description:§7!T§;
      
      public var §-s§:§ B§;
      
      public function §3!G§()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  dirty = false;
                  if(!_loc3_)
                  {
                     §1N§ = false;
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  §?T§ = -1;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §<K§ = -1;
               if(!_loc3_)
               {
                  break;
               }
               break loop0;
            }
            super();
            break;
         }
         var _loc1_:Vector.<§9y§> = new Vector.<§9y§>(0,false);
         while(true)
         {
            if(_loc2_)
            {
               §6!@§ = _loc1_;
               if(_loc3_)
               {
                  break;
               }
            }
            addEventListener(MouseEvent.CLICK,§6'§);
            break;
         }
      }
      
      public static function §%`§() : §%z§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§3!G§.§+1§ == null)
         {
            if(_loc2_)
            {
               §3!G§.§+1§ = §%z§.MENU(§3!G§.§@!A§());
            }
         }
         return §3!G§.§+1§;
      }
      
      public static function §@!A§() : §3!G§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §3!G§;
         if(_loc2_)
         {
            if(§3!G§.instance != null)
            {
               return §3!G§.instance;
            }
         }
         return §3!G§.instance = new §3!G§();
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:* = null as Vector.<§!L§>;
         var _loc8_:* = null as §!L§;
         var _loc9_:* = 0;
         var _loc10_:* = null as Vector.<§9y§>;
         var _loc11_:* = null as §9y§;
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc13_)
               {
                  if(!dirty)
                  {
                     break;
                  }
                  §§push(§0G§);
                  §§push(int(Math.floor(§]@§.width / §2!N§[0].width)));
                  if(!_loc13_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§pop().§"!§(§§pop());
                  if(_loc12_)
                  {
                     §-s§.§3!,§();
                     if(!_loc12_)
                     {
                        break loop2;
                     }
                  }
               }
               §]@§.§"!E§ = true;
               dirty = false;
               if(_loc12_)
               {
                  break;
               }
               break loop2;
            }
            §]@§.update(param1);
            break;
         }
         var _loc2_:Number = Number(mouseX);
         var _loc3_:Number = Number(mouseY);
         §§push(§]@§.§;C§(_loc2_));
         if(_loc12_)
         {
            §§push(Number(§§pop()));
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(§]@§.§,! §(_loc3_));
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            loop5:
            while(true)
            {
               §§push(true);
               §§push(true);
               if(_loc12_)
               {
                  if(_loc4_ != §<K§)
                  {
                     break;
                  }
                  if(!_loc12_)
                  {
                     continue loop6;
                  }
               }
               §§pop();
               while(true)
               {
                  while(true)
                  {
                     if(_loc13_)
                     {
                        if(§§pop())
                        {
                           §<K§ = _loc4_;
                           §?T§ = _loc5_;
                           description.visible = false;
                           §§push(false);
                           break;
                        }
                        break loop6;
                     }
                     §§push(_loc5_ == §?T§);
                     if(_loc13_)
                     {
                        break loop5;
                     }
                     §§push(!§§pop());
                     if(!_loc12_)
                     {
                        break loop5;
                     }
                     continue loop6;
                     addr0152:
                  }
                  addr0170:
                  §§goto(addr0180);
               }
               §§goto(addr018c);
            }
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc13_)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc13_)
                  {
                     break loop19;
                  }
                  §§push(§1N§);
               }
               §§goto(addr0152);
            }
            §§goto(addr0170);
         }
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc12_)
               {
                  break loop5;
               }
               addr0180:
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     §§pop();
                     break;
                  }
               }
               addr019d:
               if(§§pop())
               {
                  §§push(0);
                  if(!_loc13_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc6_ = §§pop();
                  _loc7_ = §2!N§;
                  if(_loc12_)
                  {
                     loop0:
                     while(_loc6_ < int(_loc7_.length))
                     {
                        _loc8_ = _loc7_[_loc6_];
                        _loc6_++;
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(false);
                              if(!_loc13_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc13_)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(false);
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc8_.visible)
                                                      {
                                                         break loop13;
                                                      }
                                                      if(_loc13_)
                                                      {
                                                         break loop13;
                                                      }
                                                      §§pop();
                                                      if(_loc13_)
                                                      {
                                                         break loop12;
                                                      }
                                                   }
                                                   §§push(_loc4_ >= _loc8_.x);
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   break loop13;
                                                }
                                                §§push(Boolean(§§pop()));
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc13_)
                                                   {
                                                      break loop12;
                                                   }
                                                   §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc5_ >= _loc8_.y);
                                                   if(!_loc13_)
                                                   {
                                                      break loop12;
                                                   }
                                                }
                                                §§goto(addr0242);
                                             }
                                          }
                                          addr0242:
                                          if(!Boolean(§§pop()))
                                          {
                                             break loop10;
                                          }
                                          if(_loc12_)
                                          {
                                             §§pop();
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             §§push(_loc4_ <= _loc8_.x + _loc8_.width);
                                             if(_loc13_)
                                             {
                                                break loop10;
                                             }
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop10;
                                    }
                                    §§pop();
                                    if(!_loc12_)
                                    {
                                       break loop9;
                                    }
                                    §§push(_loc5_ <= _loc8_.y + _loc8_.height);
                                    if(!_loc12_)
                                    {
                                       break loop8;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(_loc13_)
                                    {
                                       break loop8;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       break loop11;
                                    }
                                    break loop8;
                                 }
                              }
                              if(§§pop())
                              {
                                 description.visible = true;
                                 if(description.achievement != _loc8_.achievement)
                                 {
                                    description.setTo(_loc8_.achievement);
                                 }
                                 §§push(§1N§);
                                 break loop8;
                              }
                              continue loop0;
                           }
                           §3!G§.§07§ = _loc8_.achievement;
                           §§push(0);
                           if(_loc12_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc9_ = §§pop();
                           _loc10_ = §6!@§;
                           if(_loc12_)
                           {
                              loop1:
                              while(_loc9_ < int(_loc10_.length))
                              {
                                 _loc11_ = _loc10_[_loc9_];
                                 if(!_loc13_)
                                 {
                                    _loc9_++;
                                    if(_loc13_)
                                    {
                                       continue;
                                    }
                                 }
                                 loop16:
                                 while(true)
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc13_)
                                          {
                                             §§push(_loc11_.progress);
                                             §§push(_loc11_.input.length);
                                             if(_loc12_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                break loop16;
                                             }
                                             if(!_loc12_)
                                             {
                                                break loop16;
                                             }
                                             §§pop();
                                             §§push(_loc8_.achievement.id);
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                             §§push(_loc11_.input[_loc11_.progress]);
                                             if(_loc12_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc13_)
                                                {
                                                   break loop17;
                                                }
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc13_)
                                             {
                                                break loop16;
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break loop16;
                                       }
                                       §§goto(addr0391);
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc13_)
                                       {
                                          _loc11_.result();
                                       }
                                    }
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       addr0391:
                                       §§push(_loc11_);
                                       §§push(_loc11_.progress);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§pop().progress = §§pop();
                                       §§push(_loc11_.progress);
                                       §§push(_loc11_.input.length);
                                       if(!_loc13_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       break loop17;
                                    }
                                 }
                                 else
                                 {
                                    _loc11_.progress = 0;
                                 }
                              }
                              if(_loc12_)
                              {
                                 if(_loc8_.achievement.§`p§ != null)
                                 {
                                    if(_loc12_)
                                    {
                                       §@C§.§4g§(_loc8_.achievement.§`p§);
                                    }
                                 }
                              }
                           }
                           break loop0;
                        }
                        if(§§pop())
                        {
                           break loop9;
                        }
                        break;
                     }
                  }
               }
               §3!X§.visible = !description.visible;
               if(_loc12_)
               {
                  break loop6;
               }
               §§goto(addr042c);
            }
            addr018c:
            §§goto(addr019d);
         }
         §1N§ = false;
         addr042c:
      }
      
      public function §6'§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §1N§ = true;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §!L§;
         if(_loc4_)
         {
            §]@§.§+!>§(0);
            if(_loc4_)
            {
               §]@§.§<k§(0);
            }
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§!L§> = §2!N§;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc5_)
               {
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(§§pop() < int(_loc2_.length))
                     {
                        _loc3_ = _loc2_[_loc1_];
                        if(_loc4_)
                        {
                           _loc1_++;
                           if(!_loc5_)
                           {
                              _loc3_.reset();
                              if(!_loc4_)
                              {
                                 continue;
                              }
                           }
                        }
                        §§push(_loc3_);
                        §§push(_loc3_.achievement.§!O§());
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        §§pop().visible = §§pop();
                        continue;
                     }
                     description.visible = false;
                     §§push(Achievements.§ ![§());
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     _loc1_ = §§pop();
                     §3!X§.text = "Earned: " + _loc1_;
                     if(_loc5_)
                     {
                        break loop2;
                     }
                     §3!X§.visible = false;
                     §§push(§0G§);
                     §§push(int(Math.floor(§]@§.width / §2!N§[0].width)));
                     if(!_loc5_)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§pop().§"!§(§§pop());
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                  }
                  §§goto(addr00d1);
                  §§push(int(§§pop()));
               }
               §-s§.§3!,§();
               §]@§.§"!E§ = true;
               break loop1;
            }
            return;
         }
         dirty = false;
         break loop2;
      }
      
      public function §-5§(param1:Achievement, param2:Achievement) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as §!L§;
         if(_loc6_)
         {
            if(§]@§ != null)
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               var _loc4_:Vector.<§!L§> = §2!N§;
               if(!_loc7_)
               {
                  loop0:
                  while(_loc3_ < int(_loc4_.length))
                  {
                     _loc5_ = _loc4_[_loc3_];
                     while(true)
                     {
                        if(_loc6_)
                        {
                           _loc3_++;
                           if(!_loc7_)
                           {
                              if(_loc5_.achievement != param1)
                              {
                                 continue loop0;
                              }
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                        }
                        _loc5_.§?!L§(param2);
                        if(!_loc7_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     dirty = true;
                     break;
                  }
               }
               return;
            }
         }
      }
      
      override public function §^g§() : void
      {
         var yMargin:int;
         var _gthis:§3!G§;
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc10_:* = null as Achievement;
         if(_loc12_)
         {
            _gthis = this;
         }
         var _loc1_:§%!3§ = new §%!3§();
         var _loc2_:§ 7§ = new §?y§(_loc1_);
         while(true)
         {
            if(_loc12_)
            {
               §&d§.§1$§().add(_loc2_,new §;!!§(2,§2u§.LEFT));
               if(!_loc12_)
               {
                  break;
               }
               §&d§.§1$§().add(_loc2_,new §;!!§(2,§2u§.TOP));
               if(!_loc12_)
               {
                  break;
               }
            }
            addChild(_loc1_);
            if(_loc12_)
            {
               break;
            }
            §§goto(addr00a9);
         }
         description = new §7!T§(Achievements.§[!-§,true);
         addr00a9:
         _loc2_ = new §?y§(description);
         if(_loc12_)
         {
            §&d§.§1$§().add(_loc2_,new §@$§(true,0));
         }
         _loc2_ = new §?y§(description);
         if(_loc12_)
         {
            §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.BOTTOM));
            while(true)
            {
               if(_loc12_)
               {
                  description.visible = false;
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               addChild(description);
               if(!_loc11_)
               {
                  break;
               }
            }
            §3!X§ = §&!;§.§9Q§(16777215,30,null,"Earned: ...",400,null,null,null,"center");
         }
         _loc2_ = new §?y§(§3!X§);
         if(_loc12_)
         {
            §&d§.§1$§().add(_loc2_,new §@$§(true,0));
         }
         _loc2_ = new §?y§(§3!X§);
         var _loc3_:§ 7§ = new §?y§(description);
         while(true)
         {
            if(_loc12_)
            {
               §&d§.§1$§().add(_loc2_,new §4$§(false,0.5),_loc3_);
               if(!_loc12_)
               {
                  break;
               }
               §3!X§.visible = false;
               addChild(§3!X§);
               §]@§ = new §&l§(100,100,null,null,null,false);
            }
            §"!9§.§0>§(new §?y§(§]@§),new §?y§(_loc1_));
            break;
         }
         §"!9§.§<_§(new §?y§(§]@§),new §?y§(description));
         §]@§.§8C§ = true;
         addChild(§]@§);
         var _loc4_:ScrollIndicator = new ScrollIndicator(§]@§,1,1);
         _loc2_ = new §?y§(_loc4_);
         _loc3_ = new §?y§(_loc1_);
         var _loc5_:§&d§ = null;
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc11_)
               {
                  if(_loc5_ != null)
                  {
                     _loc5_ = _loc5_;
                     break;
                  }
               }
               _loc5_ = §&d§.§1$§();
               if(!_loc11_)
               {
                  break;
               }
               break loop4;
            }
            _loc5_.add(_loc2_,new §+X§(5,§2u§.BOTTOM),_loc3_);
            if(!_loc11_)
            {
               _loc5_.add(_loc2_,new §4$§(true,0.5),_loc3_);
               if(!_loc11_)
               {
                  break;
               }
            }
            §§goto(addr02ef);
         }
         addChild(_loc4_);
         addr02ef:
         var _loc6_:ScrollIndicator = new ScrollIndicator(§]@§,3,1);
         _loc2_ = new §?y§(_loc6_);
         _loc3_ = new §?y§(_loc4_);
         if(_loc12_)
         {
            §&d§.§1$§().add(_loc2_,new §4$§(true,0.5),_loc3_);
         }
         _loc2_ = new §?y§(_loc6_);
         _loc3_ = new §?y§(description);
         while(true)
         {
            if(_loc12_)
            {
               §&d§.§1$§().add(_loc2_,new §+X§(5,§2u§.TOP),_loc3_);
               if(_loc11_)
               {
                  break;
               }
            }
            addChild(_loc6_);
            if(!_loc11_)
            {
               break;
            }
            §§goto(addr03c2);
         }
         §0G§ = new GridLayout2D(10,170,170);
         if(!_loc11_)
         {
            §-s§ = new § B§(§0G§,null,null,§]@§);
         }
         addr03c2:
         var _loc7_:Vector.<§!L§> = new Vector.<§!L§>(0,false);
         while(true)
         {
            if(!_loc11_)
            {
               §2!N§ = _loc7_;
               if(!_loc12_)
               {
                  break;
               }
               yMargin = 10;
               if(!_loc12_)
               {
                  break;
               }
            }
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
            {
               _gthis.§]@§.§#x§ = yMargin * _gthis.layout.scale.y;
            })));
            if(_loc12_)
            {
               break;
            }
            §§goto(addr0434);
         }
         _gthis.§]@§.§#x§ = yMargin * _gthis.layout.scale.y;
         addr0434:
         §§push(§9B§);
         if(!_loc11_)
         {
            §§push(§§pop());
            if(_loc12_)
            {
               §§push(§§pop());
            }
         }
         var _loc8_:* = §§pop();
         if(_loc12_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc8_)));
         }
         var _loc9_:* = new §-!H§(Achievements.§&!#§.h);
         if(!_loc11_)
         {
            while(Boolean(_loc9_.hasNext()))
            {
               _loc10_ = _loc9_.next();
               if(!_loc11_)
               {
                  §=! §(_loc10_);
               }
            }
         }
      }
      
      public function §9B§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §§push(§0G§);
                  §§push(int(Math.floor(§]@§.width / §2!N§[0].width)));
                  if(_loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§pop().§"!§(§§pop());
                  if(_loc1_)
                  {
                     break;
                  }
                  §-s§.§3!,§();
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §]@§.§"!E§ = true;
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            dirty = false;
            break;
         }
      }
      
      public function §=! §(param1:Achievement, param2:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               param2 = -1;
               break;
            }
            if(§]@§ == null)
            {
               break;
            }
            var _loc3_:§!L§ = new §!L§(param1,1);
            while(true)
            {
               if(_loc5_)
               {
                  §2!N§.push(_loc3_);
                  if(_loc5_)
                  {
                     §]@§.addChild(_loc3_);
                     if(_loc4_)
                     {
                        break;
                     }
                  }
               }
               dirty = true;
               break;
            }
            return;
         }
      }
   }
}

