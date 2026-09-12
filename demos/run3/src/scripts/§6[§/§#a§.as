package §6[§
{
   import §!!$§.§?y§;
   import §%!Q§.§>K§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§,C§;
   import §-!!§.§6!4§;
   import §-v§.§%!3§;
   import §2X§.LineLayout2D;
   import §3!b§.Discoveries;
   import §6!Q§.§'!E§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.save.§0!#§;
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import unitsystem.§7o§;
   
   public class §#a§ extends §'!O§ implements §@[§
   {
      
      public static var init__:Boolean;
      
      public static var §;!H§:EReg;
      
      public static var §<2§:int = 6;
      
      public var §4!D§:TextField;
      
      public var title:String;
      
      public var §[?§:§+B§;
      
      public var §+!b§:§&l§;
      
      public var §'!A§:§5v§;
      
      public function §#a§(param1:§5v§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               super(100,100);
               if(_loc3_)
               {
                  break;
               }
            }
            visible = false;
            if(_loc2_)
            {
               §'!A§ = param1;
            }
            break;
         }
      }
      
      public function §0!_§(param1:FocusEvent) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:* = null as §^!R§;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as String;
         if(§4!D§.text != title)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        §§push(§8A§.§@!A§().§9q§(§4!D§.text));
                        if(_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 §§push(§'!E§.§@!A§());
                                 §§push("There is already a level named ");
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + §4!D§.text);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + "!");
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§push(§§pop());
                                 break;
                              }
                              §§pop().§>!W§(§§pop());
                              if(_loc7_)
                              {
                                 §4!D§.text = title;
                              }
                              return;
                           }
                           break loop2;
                        }
                        §§push(0);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(!_loc7_)
                        {
                           break loop3;
                        }
                        _loc3_ = §§pop();
                        if(_loc8_)
                        {
                           break loop2;
                        }
                     }
                     §§push(§+!b§.numChildren);
                     if(!_loc8_)
                     {
                        §§push(int(§§pop()));
                        if(_loc7_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc8_)
                  {
                     break loop2;
                  }
                  §§goto(addr0190);
               }
               loop0:
               while(true)
               {
                  if(§§pop() >= _loc4_)
                  {
                     break loop2;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!_loc8_)
                     {
                        _loc3_++;
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc5_ = §§pop();
                  _loc2_ = §+!b§.getChildAt(_loc5_);
                  loop6:
                  while(true)
                  {
                     §§push(false);
                     if(!_loc8_)
                     {
                        if(_loc2_.§]7§ == null)
                        {
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§pop();
                                 §§push(_loc2_.§=!0§);
                                 if(_loc8_)
                                 {
                                    break loop6;
                                 }
                                 §§push(§§pop() == title);
                                 if(_loc8_)
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
                        _loc2_.§3!@§(§4!D§.text);
                        if(!_loc8_)
                        {
                           §+!b§.§"!E§ = true;
                           if(_loc7_)
                           {
                              break loop2;
                           }
                           §§goto(addr020c);
                        }
                        §§goto(addr01da);
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           continue loop0;
                        }
                        addr0190:
                     }
                  }
                  §§goto(addr01bb);
               }
               break;
            }
            addr01bb:
            §§push(§8A§.§@!A§().§`e§(title));
            if(!_loc8_)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
            }
            _loc6_ = §§pop();
            §8A§.§@!A§().§1!R§(title,null);
            if(!_loc8_)
            {
               title = §4!D§.text;
               §8A§.§@!A§().§1!R§(title,_loc6_);
               addr020c:
               if(§'!A§.editor != null)
               {
                  §'!A§.editor.title = title;
               }
               addr01da:
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §+!b§.update(param1);
         }
      }
      
      public function §#V§(param1:FocusEvent) : void
      {
         §7o§.instance.§+D§(true);
      }
      
      public function reset() : void
      {
      }
      
      public function § 4§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §[?§.§ 4§(visible);
            loop0:
            while(true)
            {
               while(true)
               {
                  if(_loc1_)
                  {
                     if(!visible)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §+!b§.§"!E§ = true;
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                  }
                  §'!A§.editor.save();
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  break;
               }
            }
            §0!#§.§@!A§().§"j§(6);
            break loop1;
         }
      }
      
      public function §6&§(param1:§`!O§) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = null as String;
         var _loc3_:* = null as §^!R§;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc9_)
                  {
                     §[?§.§6&§(param1);
                     if(param1 == null)
                     {
                        break;
                     }
                     §4!D§.text = title = param1.title;
                     if(_loc9_)
                     {
                        break loop3;
                     }
                     §§push(false);
                     if(!_loc9_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc4_ = §§pop();
                     if(_loc9_)
                     {
                        break loop2;
                     }
                  }
                  while(true)
                  {
                     §§push(0);
                     if(_loc8_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     _loc5_ = §§pop();
                     break loop2;
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr0183);
            }
            while(true)
            {
               §§goto(addr0120);
            }
         }
         §§push(§+!b§.numChildren);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
            if(_loc8_)
            {
               addr00b5:
               _loc6_ = §§pop();
               break loop3;
            }
         }
         loop0:
         while(§§pop() < _loc6_)
         {
            §§push(_loc5_);
            if(!_loc9_)
            {
               _loc5_++;
               if(!_loc9_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc7_ = §§pop();
            _loc3_ = §+!b§.getChildAt(_loc7_);
            while(true)
            {
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc8_)
                     {
                        if(_loc3_.§]7§ != null)
                        {
                           break;
                        }
                        §§pop();
                        §§push(_loc3_.§=!0§ == title);
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(§§pop())
                  {
                     _loc4_ = true;
                     if(_loc8_)
                     {
                        break loop0;
                     }
                     break;
                  }
                  break loop3;
               }
               addr0133:
               §§push(§+!b§);
               §§push(§§findproperty(§^!R§));
               §§push(title);
               §§push(null);
               §§push(§+!b§.removeChild);
               if(_loc8_)
               {
                  §§push(§§pop());
               }
               §§push(new §§pop().§^!R§(§§pop(),§§pop(),§§pop()));
               §§push(§+!b§.numChildren);
               if(!_loc9_)
               {
                  §§push(§§pop() - 1);
               }
               §§pop().addChildAt(§§pop(),§§pop());
               break;
            }
            param1.save();
            return;
            break loop3;
         }
         if(!_loc4_)
         {
            if(!_loc9_)
            {
               §§goto(addr0133);
            }
            §§goto(addr017e);
         }
         §§goto(addr0183);
         addr0120:
      }
      
      public function §;!-§() : String
      {
         return §4!D§.text;
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc10_:* = null as String;
         §§push(§§findproperty(§,C§));
         §§push("menu/CloseWindowIcon.png");
         §§push(§'!A§.§"!N§);
         if(_loc11_)
         {
            §§push(§§pop());
         }
         var _loc1_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
         var _loc2_:§ 7§ = new §?y§(_loc1_);
         if(!_loc12_)
         {
            §&d§.§1$§().add(_loc2_,new §;!!§(6,§2u§.RIGHT));
            while(true)
            {
               if(_loc11_)
               {
                  §&d§.§1$§().add(_loc2_,new §;!!§(6,§2u§.TOP));
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               addChild(_loc1_);
               break;
            }
         }
         var _loc3_:§%!3§ = new §%!3§();
         if(_loc11_)
         {
            addChild(_loc3_);
            if(!_loc12_)
            {
               title = "";
               if(!_loc12_)
               {
                  §4!D§ = §&!;§.§9Q§(0,36,null,title,100,null,true,null,"center");
               }
            }
         }
         _loc2_ = new §?y§(§4!D§);
         if(!_loc12_)
         {
            §&d§.§1$§().add(_loc2_,new §30§(true,0.7));
         }
         _loc2_ = new §?y§(§4!D§);
         var _loc4_:§ 7§ = new §?y§(_loc1_);
         loop2:
         while(true)
         {
            if(!_loc12_)
            {
               §&d§.§1$§().add(_loc2_,new §+X§(6,§2u§.LEFT),_loc4_);
               if(!_loc11_)
               {
                  break;
               }
               §4!D§.addEventListener(TextEvent.TEXT_INPUT,§`!'§);
               while(true)
               {
                  if(!_loc12_)
                  {
                     §4!D§.addEventListener(FocusEvent.FOCUS_IN,§#V§);
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  §4!D§.addEventListener(FocusEvent.FOCUS_OUT,§0!_§);
                  if(!_loc12_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            addChild(§4!D§);
            break;
         }
         var _loc5_:TextField = §&!;§.§9Q§(16777215,40,null,"Load...");
         _loc2_ = new §?y§(_loc5_);
         if(_loc11_)
         {
            §&d§.§1$§().add(_loc2_,new §;!!§(6,§2u§.LEFT));
         }
         _loc2_ = new §?y§(_loc5_);
         _loc4_ = new §?y§(_loc3_);
         if(!_loc12_)
         {
            §&d§.§1$§().add(_loc2_,new §+X§(6,§2u§.BOTTOM),_loc4_);
            if(_loc11_)
            {
               addChild(_loc5_);
            }
         }
         var _loc6_:LineLayout2D = new LineLayout2D(0,2);
         if(!_loc12_)
         {
            §+!b§ = new §&l§(100,100,null,null,new § B§(_loc6_,false,true),false);
            if(!_loc12_)
            {
               §"!9§.§5C§(new §?y§(§+!b§),new §?y§(_loc5_));
            }
         }
         _loc2_ = new §?y§(§+!b§);
         if(_loc11_)
         {
            §&d§.§1$§().add(_loc2_,new §`!W§(true,196));
         }
         _loc2_ = new §?y§(§+!b§);
         while(true)
         {
            if(_loc11_)
            {
               §&d§.§1$§().add(_loc2_,new §;!!§(6,§2u§.LEFT));
               if(!_loc11_)
               {
                  break;
               }
            }
            §+!b§.§8C§ = true;
            if(!_loc12_)
            {
               break;
            }
            addr0343:
            §+!b§.§5K§ = 0;
            addr034e:
            var _loc7_:§3!0§ = new §3!0§(§'!A§);
            if(!_loc12_)
            {
               §+!b§.addChild(new §^!R§("+ New level +",_loc7_));
            }
            §§push(0);
            if(_loc11_)
            {
               §§push(int(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:Vector.<String> = §8A§.§@!A§().§ !0§(true);
            if(_loc11_)
            {
               while(_loc8_ < int(_loc9_.length))
               {
                  while(true)
                  {
                     §§push(_loc9_[_loc8_]);
                     if(!_loc12_)
                     {
                        §§push(§§pop());
                        if(!_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  _loc10_ = §§pop();
                  if(!_loc12_)
                  {
                     _loc8_++;
                     if(_loc12_)
                     {
                        continue;
                     }
                  }
                  §§push(§+!b§);
                  §§push(§§findproperty(§^!R§));
                  §§push(_loc10_);
                  §§push(null);
                  §§push(§+!b§.removeChild);
                  if(!_loc12_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().addChild(new §§pop().§^!R§(§§pop(),§§pop(),§§pop()));
               }
               while(true)
               {
                  if(_loc11_)
                  {
                     §+!b§.addChild(new §^!R§("+ New level +",_loc7_));
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  addChild(§+!b§);
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               §[?§ = new §+B§(§'!A§);
            }
            _loc2_ = new §?y§(§[?§);
            _loc4_ = new §?y§(§4!D§);
            if(!_loc12_)
            {
               §&d§.§1$§().add(_loc2_,new §@$§(true,100),_loc4_);
            }
            _loc2_ = new §?y§(§[?§);
            _loc4_ = new §?y§(§4!D§);
            loop7:
            while(true)
            {
               while(true)
               {
                  if(_loc11_)
                  {
                     §&d§.§1$§().add(_loc2_,§^`§.§ !P§(§2u§.RIGHT),_loc4_);
                     if(!_loc11_)
                     {
                        break;
                     }
                     §"!9§.§5C§(new §?y§(§[?§),new §?y§(§4!D§),36);
                     if(_loc12_)
                     {
                        break loop7;
                     }
                  }
                  addChild(§[?§);
                  if(_loc11_)
                  {
                     addChild(_loc7_);
                     if(!_loc12_)
                     {
                        break loop7;
                     }
                  }
                  break;
               }
               return;
            }
            §6&§(§'!A§.editor);
            break loop8;
         }
         §+!b§.§9d§ = 0;
         if(_loc11_)
         {
            §§goto(addr0343);
         }
         §§goto(addr034e);
      }
      
      public function §`!'§(param1:TextEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§#a§.§;!H§.match(param1.text));
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
         }
         if(§§pop())
         {
            while(true)
            {
               if(!_loc2_)
               {
                  param1.preventDefault();
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               param1.stopImmediatePropagation();
               break;
            }
         }
      }
      
      public function §0! §(param1:String, param2:String) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = null as §^!R§;
         var _loc7_:* = 0;
         §§push(false);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(§+!b§.numChildren);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(_loc8_)
                  {
                     while(_loc5_ < _loc6_)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              _loc5_++;
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc7_ = §§pop();
                        _loc3_ = §+!b§.getChildAt(_loc7_);
                        §§push(false);
                        if(_loc9_)
                        {
                           break loop3;
                        }
                        if(_loc3_.§]7§ == null)
                        {
                           §§pop();
                           §§push(_loc3_.§=!0§ == param1);
                           if(!_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              _loc4_ = true;
                              if(!_loc9_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           break loop2;
                        }
                     }
                  }
                  §§push(!_loc4_);
                  break;
               }
               if(§§pop())
               {
                  break;
               }
               §§goto(addr0128);
            }
            §§push(§+!b§);
            §§push(§§findproperty(§^!R§));
            §§push(param1);
            §§push(null);
            §§push(§+!b§.removeChild);
            if(_loc8_)
            {
               §§push(§§pop());
            }
            §§push(new §§pop().§^!R§(§§pop(),§§pop(),§§pop()));
            §§push(§+!b§.numChildren);
            if(!_loc9_)
            {
               §§push(§§pop() - 1);
            }
            §§pop().addChildAt(§§pop(),§§pop());
            if(!_loc9_)
            {
               addr0128:
               §8A§.§@!A§().§1!R§(param1,param2);
            }
            break;
         }
      }
   }
}

