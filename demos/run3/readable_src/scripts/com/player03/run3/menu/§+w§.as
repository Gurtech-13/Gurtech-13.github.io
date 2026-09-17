package com.player03.run3.menu
{
   import §!!$§.§?y§;
   import §"!3§.§7p§;
   import §%!Q§.§>K§;
   import §&!J§.§7=§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§>$§;
   import §-!!§.ScrollIndicator;
   import §-v§.§%!3§;
   import scenes.Cutscenes;
   import scenes.Discoveries;
   import world3d.Entity3D;
   import §=u§.§<e§;
   import §=w§.§-!W§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import §[^§.§!A§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.save.§0!#§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.text.TextField;
   import unitsystem.§7o§;
   
   public class §+w§ extends §[k§ implements §3!!§, §@[§
   {
      
      public static var instance:§+w§;
      
      public var §]@§:§&l§;
      
      public var §-!B§:TextField;
      
      public var §?i§:TextField;
      
      public var §`;§:Number;
      
      public var §`W§:Vector.<§7p§>;
      
      public function §+w§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §`;§ = -2000;
            if(_loc2_)
            {
               super();
            }
         }
      }
      
      public static function §@!A§() : §+w§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §+w§;
         if(!_loc2_)
         {
            if(§+w§.instance != null)
            {
               return §+w§.instance;
            }
         }
         return §+w§.instance = new §+w§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = null as §7p§;
         var _loc6_:* = null as § 7§;
         var _loc7_:* = null as § 7§;
         var _loc8_:* = null as §&d§;
         while(true)
         {
            if(!_loc9_)
            {
               §]@§.update(param1);
               if(!_loc10_)
               {
                  break;
               }
            }
            §§push(false);
            if(_loc10_)
            {
               if(§7o§.instance.mouseDown)
               {
                  if(_loc10_)
                  {
                     §§pop();
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0075);
         }
         §§push(§7o§.instance.§??§);
         if(!_loc9_)
         {
            addr0075:
            §§goto(addr0076);
         }
         addr0076:
         if(!§§pop())
         {
            §§push(§]@§.§;C§(mouseX));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            loop2:
            while(true)
            {
               if(_loc10_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc9_)
                        {
                           if(_loc2_ != §`;§)
                           {
                              break;
                           }
                           if(!_loc10_)
                           {
                              break loop3;
                           }
                        }
                        §§pop();
                        if(_loc10_)
                        {
                           §§push(§7o§.instance.§??§);
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                           break;
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        §`;§ = _loc2_;
                        if(_loc9_)
                        {
                           break loop2;
                        }
                     }
                     §?i§.visible = false;
                     if(!_loc10_)
                     {
                        break loop2;
                     }
                  }
                  §§push(!§§pop());
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break loop4;
               }
               §-!B§.visible = false;
               break;
            }
            §§push(0);
            if(!_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:Vector.<§7p§> = §`W§;
            if(_loc10_)
            {
               loop0:
               while(_loc3_ < int(_loc4_.length))
               {
                  _loc5_ = _loc4_[_loc3_];
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              _loc3_++;
                              if(_loc10_)
                              {
                                 §§push(false);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc10_)
                                    {
                                       if(!_loc5_.visible)
                                       {
                                          break;
                                       }
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                    }
                                    §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(_loc2_ >= _loc5_.x);
                                       if(!_loc9_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       break;
                                    }
                                    addr0193:
                                    §§pop();
                                    if(_loc9_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    break loop6;
                                 }
                                 if(_loc9_)
                                 {
                                    break loop6;
                                 }
                                 §§goto(addr0193);
                              }
                           }
                           §§push(_loc2_ <= _loc5_.x + _loc5_.width);
                           if(_loc10_)
                           {
                              break;
                           }
                           break loop6;
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        §?i§.visible = true;
                        if(!_loc9_)
                        {
                           break;
                        }
                        continue loop7;
                     }
                     continue loop0;
                  }
                  §?i§.text = _loc5_.cutscene.name;
                  _loc6_ = new §?y§(§?i§);
                  _loc7_ = new §?y§(_loc5_);
                  _loc8_ = layout;
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc10_)
                        {
                           if(_loc8_ != null)
                           {
                              _loc8_ = _loc8_;
                              break;
                           }
                        }
                        _loc8_ = §&d§.§1$§();
                        if(!_loc9_)
                        {
                           break;
                        }
                        break loop7;
                     }
                     _loc8_.add(_loc6_,new §+X§(0,§2u§.TOP),_loc7_);
                     while(true)
                     {
                        if(_loc10_)
                        {
                           _loc8_.add(_loc6_,new §4$§(true,0.5),_loc7_);
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                        §-!B§.visible = true;
                        if(!_loc9_)
                        {
                           §-!B§.text = _loc5_.cutscene.name;
                           if(_loc10_)
                           {
                              break loop7;
                           }
                        }
                        break;
                     }
                     §§goto(addr02af);
                  }
                  layout.§%X§(new §?y§(§-!B§));
                  addr02af:
                  return;
               }
            }
            return;
         }
         addr007a:
         Boolean(§§pop());
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §7p§;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§7p§> = §`W§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  while(_loc1_ < int(_loc2_.length))
                  {
                     _loc3_ = _loc2_[_loc1_];
                     if(_loc5_)
                     {
                        _loc1_++;
                        if(!_loc4_)
                        {
                           _loc3_.reset();
                        }
                     }
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  layout.apply();
                  if(_loc4_)
                  {
                     break loop1;
                  }
               }
               §]@§.§"!E§ = true;
               if(!_loc4_)
               {
                  break loop1;
               }
               break;
            }
            return;
         }
         §]@§.§<k§(0);
         break loop2;
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc2_:* = null as § 7§;
         var _loc9_:* = null as String;
         var _loc10_:* = null as §7p§;
         var _loc12_:* = 0;
         var _loc13_:* = null as § 7§;
         var _loc1_:§%!3§ = new §%!3§();
         if(_loc19_)
         {
            layout.remove(new §?y§(_loc1_));
         }
         _loc2_ = new §?y§(_loc1_);
         if(!_loc20_)
         {
            §&d§.§1$§().add(_loc2_,new §`!W§(false,100));
            if(_loc19_)
            {
               §"!9§.§]!A§(new §?y§(_loc1_));
            }
         }
         _loc2_ = new §?y§(_loc1_);
         while(true)
         {
            if(!_loc20_)
            {
               §&d§.§1$§().add(_loc2_,new §;!!§(3,§2u§.LEFT));
               if(!_loc19_)
               {
                  break;
               }
               §&d§.§1$§().add(_loc2_,new §;!!§(3,§2u§.TOP));
               if(!_loc19_)
               {
                  break;
               }
            }
            addChild(_loc1_);
            break;
         }
         var _loc3_:§>$§ = new §>$§(7,0.5);
         while(true)
         {
            if(!_loc20_)
            {
               _loc3_.§<!K§ = -30;
               if(_loc20_)
               {
                  break;
               }
            }
            _loc3_.§7!§ = 0;
            if(_loc19_)
            {
               break;
            }
            §§goto(addr012d);
         }
         §]@§ = new §&l§(100,100,_loc3_,null,null,false);
         addr012d:
         _loc2_ = new §?y§(§]@§);
         while(true)
         {
            if(_loc19_)
            {
               §&d§.§1$§().add(_loc2_,new §@$§(true,0));
               if(_loc20_)
               {
                  break;
               }
            }
            §"!9§.§5C§(new §?y§(§]@§),new §?y§(_loc1_),5);
            if(_loc19_)
            {
               addChild(§]@§);
            }
            break;
         }
         var _loc4_:ScrollIndicator = new ScrollIndicator(§]@§,2,4);
         _loc2_ = new §?y§(_loc4_);
         while(true)
         {
            if(_loc19_)
            {
               §&d§.§1$§().add(_loc2_,new §;!!§(3,§2u§.LEFT));
               if(!_loc19_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(_loc2_,new §;!!§(3,§2u§.BOTTOM));
            if(_loc19_)
            {
               addChild(_loc4_);
            }
            break;
         }
         var _loc5_:ScrollIndicator = new ScrollIndicator(§]@§,0,4);
         _loc2_ = new §?y§(_loc5_);
         while(true)
         {
            if(!_loc20_)
            {
               §&d§.§1$§().add(_loc2_,new §;!!§(3,§2u§.RIGHT));
               if(!_loc19_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(_loc2_,new §;!!§(3,§2u§.BOTTOM));
            if(_loc19_)
            {
               addChild(_loc5_);
               if(!_loc20_)
               {
                  §"!9§.§<_§(new §?y§(§]@§),new §?y§(_loc4_));
               }
            }
            break;
         }
         var _loc6_:Vector.<§7p§> = new Vector.<§7p§>(0,false);
         if(_loc19_)
         {
            §`W§ = _loc6_;
         }
         §§push(0);
         if(!_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(Cutscenes.§5!5§);
         if(!_loc20_)
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            if(!_loc20_)
            {
               loop0:
               while(_loc7_ < int(_loc8_.length))
               {
                  §§push(_loc8_[_loc7_]);
                  if(_loc19_)
                  {
                     §§push(§§pop());
                  }
                  _loc9_ = §§pop();
                  if(_loc19_)
                  {
                     _loc7_++;
                  }
                  _loc10_ = §7p§.§!!R§(_loc9_);
                  while(true)
                  {
                     if(_loc19_)
                     {
                        if(_loc10_ == null)
                        {
                           continue loop0;
                        }
                        if(!_loc19_)
                        {
                           break;
                        }
                     }
                     §]@§.addChild(_loc10_);
                     break;
                  }
                  _loc2_ = new §?y§(_loc10_);
                  if(_loc19_)
                  {
                     §&d§.§1$§().add(_loc2_,new §4$§(false,0.5));
                     if(!_loc19_)
                     {
                        continue;
                     }
                  }
                  §`W§.push(_loc10_);
               }
               if(_loc20_)
               {
                  break;
               }
            }
            §`W§.sort(function(param1:§7p§, param2:§7p§):int
            {
               var _temp_1:* = true;
               var _loc3_:Boolean = false;
               var _loc4_:Boolean = _temp_1;
               §§push(§-!W§);
               §§push(param1.cutscene.getDate());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(param2.cutscene.getDate());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(§§pop().§7G§(§§pop(),§§pop()));
               if(!_loc3_)
               {
                  return int(§§pop());
               }
            });
            break;
         }
         _loc2_ = new §?y§(§`W§[0]);
         loop9:
         while(true)
         {
            if(!_loc20_)
            {
               §&d§.§1$§().add(_loc2_,new §;!!§(350,§2u§.LEFT));
               if(_loc20_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(1);
               if(_loc19_)
               {
                  §§push(int(§§pop()));
                  if(_loc20_)
                  {
                     break;
                  }
               }
               _loc7_ = §§pop();
               break loop9;
            }
            §§goto(addr03e7);
         }
         §§push(int(§`W§.length));
         if(!_loc20_)
         {
            §§push(int(§§pop()));
         }
         addr03e7:
         var _loc11_:* = §§pop();
         if(!_loc20_)
         {
            while(_loc7_ < _loc11_)
            {
               §§push(_loc7_);
               if(_loc19_)
               {
                  _loc7_++;
                  if(!_loc20_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc12_ = §§pop();
               _loc2_ = new §?y§(§`W§[_loc12_]);
               §§push(§§findproperty(§?y§));
               §§push(§`W§);
               §§push(_loc12_);
               if(_loc19_)
               {
                  §§push(§§pop() - 1);
               }
               _loc13_ = new §§pop().§?y§(§§pop()[§§pop()]);
               if(_loc19_)
               {
                  §&d§.§1$§().add(_loc2_,new §<e§(true,40),_loc13_);
               }
            }
         }
         var _loc14_:Shape = new Shape();
         if(_loc19_)
         {
            _loc14_.graphics.lineStyle(1,0,0);
            if(_loc19_)
            {
               _loc14_.graphics.lineTo(0,1);
            }
         }
         _loc2_ = new §?y§(_loc14_);
         if(_loc19_)
         {
            §&d§.§1$§().add(_loc2_,new §4$§(false,0.5));
            if(!_loc20_)
            {
               §]@§.addChild(_loc14_);
            }
         }
         var _loc15_:Shape = new Shape();
         if(!_loc20_)
         {
            _loc15_.graphics.lineStyle(1,0,0);
            if(_loc19_)
            {
               _loc15_.graphics.lineTo(0,1);
            }
         }
         _loc2_ = new §?y§(_loc15_);
         §§push(§§findproperty(§?y§));
         §§push(§`W§);
         §§push(int(§`W§.length));
         if(!_loc20_)
         {
            §§push(§§pop() - 1);
         }
         _loc13_ = new §§pop().§?y§(§§pop()[§§pop()]);
         if(_loc19_)
         {
            §&d§.§1$§().add(_loc2_,new §<e§(true,350),_loc13_);
         }
         _loc2_ = new §?y§(_loc15_);
         while(true)
         {
            if(!_loc20_)
            {
               §&d§.§1$§().add(_loc2_,new §4$§(false,0.5));
               if(!_loc19_)
               {
                  break;
               }
               §]@§.addChild(_loc15_);
               if(_loc20_)
               {
                  break;
               }
            }
            §-!B§ = §&!;§.§9Q§(0,40,null,"");
            if(!_loc20_)
            {
               break;
            }
            §§goto(addr05c4);
         }
         §-!B§.visible = false;
         addr05c4:
         var _loc16_:TextField = §-!B§;
         var _loc17_:* = null;
         if(_loc19_)
         {
            while(true)
            {
               if(_loc17_ == null)
               {
                  if(_loc20_)
                  {
                     break;
                  }
                  _loc17_ = int(Number(_loc16_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc16_),new §=!]§(int(_loc17_)));
               if(_loc19_)
               {
                  §]@§.addChild(§-!B§);
                  if(!_loc19_)
                  {
                     break;
                  }
                  §?i§ = §&!;§.§9Q§(16777215,40,null,"");
                  if(!_loc20_)
                  {
                     break;
                  }
               }
            }
            §?i§.visible = false;
         }
         _loc16_ = §?i§;
         _loc17_ = null;
         if(_loc19_)
         {
            while(true)
            {
               if(_loc17_ == null)
               {
                  if(!_loc19_)
                  {
                     break;
                  }
                  _loc17_ = int(Number(_loc16_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc16_),new §=!]§(int(_loc17_)));
               break;
            }
         }
         _loc2_ = new §?y§(§?i§);
         _loc13_ = new §?y§(§`W§[0]);
         var _loc18_:§&d§ = null;
         while(true)
         {
            if(_loc19_)
            {
               if(_loc18_ != null)
               {
                  _loc18_ = _loc18_;
                  break;
               }
            }
            _loc18_ = §&d§.§1$§();
            break;
         }
         _loc18_.add(_loc2_,new §+X§(0,§2u§.TOP),_loc13_);
         while(true)
         {
            if(!_loc20_)
            {
               _loc18_.add(_loc2_,new §4$§(true,0.5),_loc13_);
               §]@§.addChild(§?i§);
               layout.add(new §?y§(§-!B§),new §;!!§(2,§2u§.LEFT),new §?y§(§?i§));
               if(!_loc19_)
               {
                  break;
               }
            }
            layout.add(new §?y§(§-!B§),new §;!!§(2,§2u§.TOP),new §?y§(§?i§));
            break;
         }
         reset();
      }
   }
}

