package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+!4§.§8!_§;
   import §-!!§.§ B§;
   import §-!!§.§&l§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §-!!§.§6!4§;
   import §-!!§.ScrollIndicator;
   import §-v§.§+'§;
   import §2X§.LineLayout2D;
   import §2n§.§7%§;
   import §3!b§.Batteries;
   import §3!b§.Cutscenes;
   import §6!Q§.§"q§;
   import §6[§.§5v§;
   import §6[§.§`!O§;
   import §<!&§.§%!§;
   import §<!&§.§3!`§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@H§.§!7§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§!!Q§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.§5U§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.GrowthFunctions;
   import haxeutils.math.geom.Point3D;
   
   public class §1!?§ extends §[k§ implements §3!!§, §@[§
   {
      
      public static var init__:Boolean;
      
      public static var §"F§:§]k§;
      
      public static var §`0§:§2!;§;
      
      public static var §]A§:§]k§;
      
      public static var instance:§1!?§;
      
      public var upgrades:Vector.<§<#§>;
      
      public var §#!U§:§4!^§;
      
      public var §5J§:§&l§;
      
      public function §1!?§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §@!A§() : §1!?§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §1!?§;
         if(_loc3_)
         {
            if(§1!?§.instance != null)
            {
               return §1!?§.instance;
            }
         }
         return §1!?§.instance = new §1!?§();
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §<#§;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§<#§> = upgrades;
         while(true)
         {
            if(!_loc4_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(!_loc4_)
                  {
                     _loc1_++;
                     if(!_loc4_)
                     {
                        _loc3_.reset();
                     }
                  }
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §5J§.§"!E§ = true;
            break;
         }
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc3_:* = null as § 7§;
         var _loc5_:* = null as § 7§;
         var _loc8_:* = null as §+"§;
         var _loc9_:* = null;
         var _loc10_:* = null as §+"§;
         if(!_loc15_)
         {
            §#!U§ = new §4!^§("upgrades");
         }
         var _loc1_:Number = 4;
         §§push(§§findproperty(§,C§));
         §§push("menu/CloseWindowIcon.png");
         §§push(close);
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         var _loc2_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
         _loc3_ = new §?y§(_loc2_);
         if(!_loc15_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc3_);
               if(!_loc15_)
               {
                  if(_loc1_ != null)
                  {
                     §§push(new §;!!§(_loc1_,§2u§.RIGHT));
                     break;
                  }
               }
               §§push(§^`§.§ !P§(§2u§.RIGHT));
               break;
            }
            §§pop().add(§§pop(),§§pop());
            if(_loc16_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc3_);
                  if(!_loc15_)
                  {
                     if(_loc1_ != null)
                     {
                        §§push(new §;!!§(_loc1_,§2u§.TOP));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.TOP));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               if(!_loc15_)
               {
                  addChild(_loc2_);
               }
            }
         }
         var _loc4_:§+'§ = new §+'§();
         if(!_loc15_)
         {
            _loc4_.§&-§(true);
         }
         _loc3_ = new §?y§(_loc4_);
         _loc5_ = new §?y§(_loc2_);
         while(true)
         {
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc3_,new §+X§(40,§2u§.BOTTOM),_loc5_);
               if(!_loc16_)
               {
                  break;
               }
            }
            addChild(_loc4_);
            break;
         }
         var _loc6_:Sprite = _loc2_;
         var _loc7_:Sprite = _loc4_;
         loop3:
         while(true)
         {
            if(!_loc15_)
            {
               while(true)
               {
                  if(§9'§.§@!A§().§?!;§.§ G§)
                  {
                     if(_loc15_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§+"§));
                     §§push(_loc4_.§#_§);
                     if(!_loc15_)
                     {
                        §§push(§§pop());
                     }
                     _loc8_ = new §§pop().§+"§(§§pop(),0,28,"Get power cells");
                     if(_loc16_)
                     {
                        §&d§.§1$§().add(new §?y§(_loc8_),new §"q§(11184810,6710886,3.6));
                     }
                     _loc3_ = new §?y§(_loc8_);
                     §§push(_loc1_);
                     if(!_loc15_)
                     {
                        §§push(§§pop() * 2);
                     }
                     _loc9_ = §§pop();
                     if(!_loc15_)
                     {
                        while(true)
                        {
                           §§push(§&d§.§1$§());
                           §§push(_loc3_);
                           if(_loc16_)
                           {
                              if(_loc9_ != null)
                              {
                                 §§push(new §;!!§(Number(_loc9_),§2u§.RIGHT));
                                 break;
                              }
                           }
                           §§push(§^`§.§ !P§(§2u§.RIGHT));
                           break;
                        }
                        §§pop().add(§§pop(),§§pop());
                     }
                     _loc3_ = new §?y§(_loc8_);
                     _loc5_ = new §?y§(_loc4_);
                     while(true)
                     {
                        if(!_loc15_)
                        {
                           §§push(§&d§.§1$§());
                           §§push(_loc3_);
                           §§push(§§findproperty(§+X§));
                           §§push(_loc1_);
                           if(_loc16_)
                           {
                              §§push(§§pop() * 4);
                           }
                           §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc5_);
                           if(!_loc16_)
                           {
                              break;
                           }
                        }
                        addChild(_loc8_);
                        break;
                     }
                     _loc6_ = _loc8_;
                     _loc7_ = _loc8_;
                     §§push(§§findproperty(§+"§));
                     §§push(§#C§.§#!E§);
                     if(!_loc15_)
                     {
                        §§push(§§pop());
                     }
                     _loc10_ = new §§pop().§+"§(§§pop(),0,28,"Earn free Kreds");
                     if(!_loc15_)
                     {
                        §&d§.§1$§().add(new §?y§(_loc10_),new §"q§(11184810,6710886,3.6));
                     }
                     _loc3_ = new §?y§(_loc10_);
                     §§push(_loc1_);
                     if(!_loc15_)
                     {
                        §§push(§§pop() * 2);
                     }
                     _loc9_ = §§pop();
                     if(_loc16_)
                     {
                        while(true)
                        {
                           §§push(§&d§.§1$§());
                           §§push(_loc3_);
                           if(_loc16_)
                           {
                              if(_loc9_ != null)
                              {
                                 §§push(new §;!!§(Number(_loc9_),§2u§.RIGHT));
                                 break;
                              }
                           }
                           §§push(§^`§.§ !P§(§2u§.RIGHT));
                           break;
                        }
                        §§pop().add(§§pop(),§§pop());
                     }
                     _loc3_ = new §?y§(_loc10_);
                     _loc5_ = new §?y§(_loc8_);
                     loop8:
                     while(true)
                     {
                        if(_loc16_)
                        {
                           §§push(§&d§.§1$§());
                           §§push(_loc3_);
                           §§push(§§findproperty(§+X§));
                           §§push(_loc1_);
                           if(_loc16_)
                           {
                              §§push(§§pop() * 4);
                           }
                           §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc5_);
                           while(true)
                           {
                              if(_loc16_)
                              {
                                 addChild(_loc10_);
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                              }
                              if(_loc10_.x < _loc6_.x)
                              {
                                 break;
                              }
                              break loop8;
                           }
                        }
                        _loc6_ = _loc10_;
                        break;
                     }
                     _loc7_ = _loc10_;
                  }
                  §5J§ = new §&l§(100,100,null,null,new § B§(new LineLayout2D(0,3),false,true,this));
                  if(_loc16_)
                  {
                     break;
                  }
                  break loop3;
               }
               §5J§.§8C§ = true;
               if(!_loc16_)
               {
                  break;
               }
            }
            §"!9§.§#m§(new §?y§(§5J§),new §?y§(_loc6_));
            break;
         }
         _loc3_ = new §?y§(§5J§);
         while(true)
         {
            if(_loc16_)
            {
               §&d§.§1$§().add(_loc3_,new §@$§(false,0));
               if(!_loc16_)
               {
                  break;
               }
               §5J§.§#x§ = 12;
               if(!_loc16_)
               {
                  break;
               }
            }
            addChildAt(§5J§,0);
            if(_loc16_)
            {
               break;
            }
            addr047d:
            var _loc11_:ScrollIndicator = new ScrollIndicator(§5J§,1);
            _loc3_ = new §?y§(_loc11_);
            _loc5_ = new §?y§(§5J§);
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc3_,new §+X§(0,§2u§.RIGHT),_loc5_);
            }
            _loc3_ = new §?y§(_loc11_);
            _loc5_ = new §?y§(_loc7_);
            while(true)
            {
               if(!_loc15_)
               {
                  §&d§.§1$§().add(_loc3_,new §+X§(5,§2u§.BOTTOM),_loc5_);
                  if(!_loc16_)
                  {
                     break;
                  }
               }
               addChild(_loc11_);
               break;
            }
            var _loc12_:ScrollIndicator = new ScrollIndicator(§5J§,3);
            _loc3_ = new §?y§(_loc12_);
            _loc5_ = new §?y§(§5J§);
            if(_loc16_)
            {
               §&d§.§1$§().add(_loc3_,new §+X§(0,§2u§.RIGHT),_loc5_);
            }
            _loc3_ = new §?y§(_loc12_);
            while(true)
            {
               if(_loc16_)
               {
                  §&d§.§1$§().add(_loc3_,new §;!!§(3,§2u§.BOTTOM));
                  if(_loc15_)
                  {
                     break;
                  }
               }
               addChild(_loc12_);
               break;
            }
            var _loc13_:Vector.<§<#§> = new Vector.<§<#§>(0,false);
            upgrades = _loc13_;
            §;!X§(1500,"cheaper respawns","Respawn costs are reduced by 10.",§7%§.§`!-§);
            loop13:
            while(true)
            {
               loop14:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc15_)
                     {
                        §;!X§(500,"editor","Unlock the level editor.",§`!O§.§-%§,null,"menu/EditIcon.png");
                        §#h§(§'O§.skater,"Unlock the Skater. (You also unlock him after Level 10.)");
                        §#h§(§'O§.lizard,"Unlock the Lizard. (Also available by beating Level 40.)");
                        §#h§(§'O§.child,"Unlock the Child. (Or you can beat the Low-Power Tunnel.)");
                        §#h§(§'O§.student,"Unlock the Student to pull off literal gravity-defying stunts.");
                        §#h§(§'O§.§#!P§,"Unlock the Angel, and get a burst of speed whenever you need it.");
                        if(!_loc16_)
                        {
                           break;
                        }
                        §#h§(§'O§.duplicator,"Unlock the Duplicator and his cloning/teleportation technology.");
                        if(_loc15_)
                        {
                           break loop14;
                        }
                        §#h§(§'O§.pastafarian,"Unlock the Pastafarian, and run on the void of space. Don\'t look down!");
                        if(!_loc15_)
                        {
                           §#h§(§'O§.§7W§,"Unlock the Bunny, the most hyperactive creature in the Solar System. (Alternatively, earn 8 achievements.)");
                           §#h§(§'O§.gentleman,"Unlock the Gentleman, an oddball who sewed a large electromagnet into his hat to attract power cells.");
                        }
                        §;!X§(400,"infinite boxes","Find more boxes in Infinite Mode.",null,§1!?§.§`0§,null,50).§>>§(GrowthFunctions.§!k§(200,2));
                        if(!_loc16_)
                        {
                           break loop13;
                        }
                        §;!X§(2000,"power cells in boxes","Boxes in Infinite Mode will sometimes contain power cells.",§1!?§.§]A§);
                        if(_loc15_)
                        {
                           break loop14;
                        }
                        §2"§(§'O§.§4s§,"winter costumes","Unlock the winter costumes. (You can also unlock them by beating the Winter Games.)");
                        if(_loc15_)
                        {
                           break loop13;
                        }
                     }
                     §2"§(§'O§.§]![§,"halloween costumes","Unlock the Halloween costumes. (You can also unlock them by beating the Low-Power Tunnel.)");
                     break loop13;
                  }
                  §§goto(addr0721);
               }
               while(true)
               {
                  §§push(§5J§.§-s§.§3!,§);
                  if(_loc16_)
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
               var _loc14_:* = §§pop();
               if(!_loc15_)
               {
                  layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc14_)));
               }
               return;
            }
            §2"§(§'O§.§=!O§,"pirate costume","Ahoy, mateys! Talk Like a Pirate Day has passed, but you can still get the pirate costume.");
            addr0721:
            §;!X§(15,"batteries","Unlock permission to refer to the power cells as batteries.",§1!?§.§"F§).addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               Cutscenes.§?Q§().display(0);
            });
            break loop14;
         }
         §5J§.§-s§.§^! § = true;
         §§goto(addr047d);
      }
      
      public function §8e§(param1:int = 0) : int
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc5_:* = null as §<#§;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = null as Currency;
         var _loc9_:* = null as §2!;§;
         var _loc10_:* = 0;
         var _loc11_:* = null as §2!;§;
         var _loc12_:* = 0;
         var _loc13_:* = null as §2!;§;
         var _loc14_:* = 0;
         var _loc15_:* = null as §2!;§;
         while(true)
         {
            if(_loc16_)
            {
               if(upgrades != null)
               {
                  break;
               }
               if(_loc17_)
               {
                  break;
               }
            }
            §§push(§6!]§);
            if(!_loc17_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc16_)
               {
                  §^,§(null);
               }
            }
            break;
         }
         §§push(0);
         if(!_loc17_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§<#§> = upgrades;
         loop2:
         while(true)
         {
            if(_loc16_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc17_)
                  {
                     break loop2;
                  }
                  if(§§pop() < int(_loc4_.length))
                  {
                     _loc5_ = _loc4_[_loc3_];
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(_loc16_)
                                 {
                                    _loc3_++;
                                    if(_loc16_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc5_.§?!F§());
                                             if(_loc16_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc17_)
                                                {
                                                   break;
                                                }
                                                §§push(!§§pop());
                                                if(!_loc16_)
                                                {
                                                   break loop7;
                                                }
                                             }
                                             if(!§§pop())
                                             {
                                                §§push(false);
                                                if(_loc16_)
                                                {
                                                   break loop7;
                                                }
                                                break;
                                             }
                                             if(!_loc17_)
                                             {
                                                _loc8_ = Currency.§@!A§();
                                                _loc9_ = Currency.softEarned;
                                                if(_loc16_)
                                                {
                                                   §§push(int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
                                                   if(_loc16_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   _loc10_ = §§pop();
                                                }
                                                _loc11_ = Currency.softBought;
                                                if(_loc16_)
                                                {
                                                   §§push(_loc10_);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() + int(Save.§@!A§().get(_loc11_.§=-§,int(_loc11_.§ -§))));
                                                      if(_loc16_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   _loc12_ = §§pop();
                                                }
                                                _loc13_ = Currency.softSpent;
                                                if(!_loc17_)
                                                {
                                                   §§push(_loc12_);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() - int(Save.§@!A§().get(_loc13_.§=-§,int(_loc13_.§ -§))));
                                                      if(!_loc17_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   _loc14_ = §§pop();
                                                }
                                                _loc15_ = Currency.softFromOffers;
                                                while(true)
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(int(Save.§@!A§().get(_loc15_.§=-§,int(_loc15_.§ -§))));
                                                      if(!_loc16_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         break loop6;
                                                      }
                                                   }
                                                   §§push(_loc5_.§3"§());
                                                   if(!_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   addr01f7:
                                                   §§push(§§pop() >= §§pop());
                                                   if(!_loc16_)
                                                   {
                                                      break loop4;
                                                   }
                                                   _loc7_ = Boolean(§§pop());
                                                   if(_loc17_)
                                                   {
                                                      break loop3;
                                                   }
                                                }
                                                §§push(int(§§pop()));
                                                if(_loc17_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr01f7);
                                             }
                                          }
                                          _loc7_ = §§pop();
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop8;
                                    }
                                 }
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_.§3"§());
                                    if(_loc16_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    break;
                                 }
                                 §§push(false);
                                 if(!_loc17_)
                                 {
                                    break loop4;
                                 }
                                 §§goto(addr025e);
                              }
                              §§push(param1);
                              break;
                           }
                           §§push(§§pop() >= §§pop());
                           if(!_loc16_)
                           {
                              break;
                           }
                           _loc6_ = Boolean(§§pop());
                           if(_loc16_)
                           {
                              break loop3;
                           }
                           §§goto(addr026c);
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc16_)
                        {
                           addr025e:
                           _loc6_ = §§pop();
                           if(!_loc17_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr0268);
                     }
                     addr0268:
                     if(_loc6_)
                     {
                        addr026c:
                        _loc2_++;
                     }
                     continue;
                  }
               }
            }
            return _loc2_;
         }
         return §§pop();
      }
      
      public function close(param1:MouseEvent) : void
      {
         §[!<§.§@!A§().§4X§(§;!G§.§@!A§());
      }
      
      public function §;!X§(param1:int, param2:String, param3:String, param4:§]k§ = undefined, param5:§2!;§ = undefined, param6:String = undefined, param7:int = 1) : §<#§
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         §§push(§§findproperty(§<#§));
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(param5);
         §§push(§5J§.width);
         if(!_loc9_)
         {
            §§push(§§pop() / layout.scale.x);
         }
         var _loc8_:§<#§ = new §§pop().§<#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param6,param7);
         while(true)
         {
            if(_loc10_)
            {
               §5J§.addChild(_loc8_);
               if(_loc9_)
               {
                  break;
               }
            }
            upgrades.push(_loc8_);
            break;
         }
         return _loc8_;
      }
      
      public function §2"§(param1:§6O§, param2:String, param3:String) : §[!a§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(§§findproperty(§[!a§));
         §§push(param1);
         §§push(param3);
         §§push(§5J§.width);
         if(!_loc6_)
         {
            §§push(§§pop() / layout.scale.x);
         }
         var _loc4_:§[!a§ = new §§pop().§[!a§(§§pop(),§§pop(),§§pop(),param2);
         if(!_loc6_)
         {
            §5J§.addChild(_loc4_);
            if(!_loc6_)
            {
               upgrades.push(_loc4_);
            }
         }
         return _loc4_;
      }
      
      public function §#h§(param1:§6O§, param2:String) : §[!a§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§findproperty(§[!a§));
         §§push(param1);
         §§push(param2);
         §§push(§5J§.width);
         if(!_loc5_)
         {
            §§push(§§pop() / layout.scale.x);
         }
         var _loc3_:§[!a§ = new §§pop().§[!a§(§§pop(),§§pop(),§§pop());
         if(!_loc5_)
         {
            §5J§.addChild(_loc3_);
            if(_loc4_)
            {
               upgrades.push(_loc3_);
            }
         }
         return _loc3_;
      }
   }
}

