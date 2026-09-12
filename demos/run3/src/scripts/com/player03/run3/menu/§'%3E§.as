package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§&!;§;
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §-!!§.§8!8§;
   import §-#§.§7Y§;
   import §6!Q§.§'!E§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextLineMetrics;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class §'>§ extends §'!O§
   {
      
      public static var init__:Boolean;
      
      public static var §89§:Vector.<String>;
      
      public var §-7§:TextField;
      
      public var § ! §:§,C§;
      
      public var §'B§:§,C§;
      
      public var §9I§:Bitmap;
      
      public function §'>§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(100,100);
            if(!_loc1_)
            {
               mouseEnabled = false;
            }
         }
      }
      
      public static function §#!D§() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§9'§.§@!A§().§?!;§.§ G§)
         {
            §§push("Not logged in");
            if(!_loc2_)
            {
               return §§pop();
            }
         }
         else
         {
            return "More games";
         }
         return §§pop();
      }
      
      public static function §0!,§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§9'§.§@!A§().§?!;§.isGuest());
         if(!_loc1_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc1_)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     §§push(§'>§.§89§);
                     §§push(§9'§.§@!A§().§?!;§.getUsername());
                     if(!_loc1_)
                     {
                        §§push(§§pop());
                     }
                     while(true)
                     {
                        §§push(int(§§pop().indexOf(§§pop(),0)));
                        if(_loc2_)
                        {
                           §§push(2);
                           if(_loc1_)
                           {
                              break;
                           }
                           §§push(int(§§pop() % §§pop()));
                        }
                        §§push(0);
                        break;
                     }
                     §§push(§§pop() == §§pop());
                     if(!_loc1_)
                     {
                        §§goto(addr008c);
                     }
                  }
                  else
                  {
                     return false;
                  }
                  return §§pop();
               }
            }
         }
         addr008c:
         return §§pop();
      }
      
      public function §`1§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as TextLineMetrics;
         while(true)
         {
            if(!_loc2_)
            {
               if(!§9I§.visible)
               {
                  break;
               }
            }
            _loc1_ = §-7§.getLineMetrics(§-7§.numLines - 1);
            if(_loc3_)
            {
               §9I§.x = _loc1_.x + _loc1_.width + 6 * layout.scale.x;
               if(_loc2_)
               {
                  break;
               }
            }
            §9I§.y = §-7§.y + §-7§.textHeight - _loc1_.height / 2 - §9I§.height / 2;
            break;
         }
      }
      
      public function §2!G§(param1:Event) : void
      {
         §[!<§.§@!A§().§4X§(§;,§.§@!A§());
      }
      
      public function §#!#§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§9'§ = §9'§.§@!A§();
         while(true)
         {
            if(!_loc3_)
            {
               §7o§.instance.§+D§(true);
               if(!_loc4_)
               {
                  break;
               }
               if(!§9'§.§@!A§().§?!;§.§ G§)
               {
                  _loc2_.§+W§();
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_.§?!;§.showRegistrationBox();
            if(_loc3_)
            {
            }
            break;
         }
      }
      
      public function § _§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = null as String;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         §§push(§9'§.§@!A§().§?!;§.isGuest());
         if(!_loc5_)
         {
            §§push(!§§pop());
         }
         while(true)
         {
            if(§§pop())
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(§9'§.§@!A§().§?!;§.getUsername());
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 break;
                              }
                           }
                           _loc1_ = §§pop();
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(int(§'>§.§89§.indexOf(_loc1_,0)));
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          §§push(false);
                                          §§push(false);
                                          if(!_loc5_)
                                          {
                                             if(_loc2_ >= 0)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(2);
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(int(§§pop() % §§pop()));
                                                      }
                                                      §§push(0);
                                                      break;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                             }
                                          }
                                          if(!§§pop())
                                          {
                                             break loop6;
                                          }
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0183);
                                          }
                                       }
                                       §§push(1);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          break;
                                       }
                                       break loop7;
                                    }
                                 }
                                 §§push(int(§'>§.§89§.length));
                                 break;
                              }
                              §§push(§§pop() < §§pop());
                              if(!_loc5_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                           if(!§§pop())
                           {
                              continue loop3;
                           }
                           §§push(§'>§.§89§);
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§push(§§pop()[§§pop()]);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                     }
                     _loc1_ = §§pop();
                     continue loop3;
                  }
                  §§goto(addr01d2);
               }
               §-7§.text = "Logged in as " + _loc1_;
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(§9'§.§@!A§().§?!;§.§9!Q§());
                     if(!_loc5_)
                     {
                        _loc3_ = Boolean(§§pop());
                        §9I§.visible = _loc3_;
                        if(§9I§.visible)
                        {
                           §`1§();
                        }
                        addr0183:
                        §§push(true);
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        if(PlayFabAPI.§@!A§().§0U§ != null)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           break loop3;
                        }
                     }
                     §§pop();
                     §§push(§9'§.§@!A§().§?!;§.isGuest());
                     if(_loc4_)
                     {
                        break loop3;
                     }
                     break loop2;
                  }
                  addr01d2:
                  §§goto(addr01d3);
               }
               addr01d3:
               §§push(Boolean(§§pop()));
               if(!_loc5_)
               {
                  §§push(!§§pop());
                  break loop2;
               }
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               §-7§.text = §'>§.§#!D§();
               if(_loc4_)
               {
                  §9I§.visible = false;
                  §§goto(addr0183);
               }
            }
            § ! §.visible = _loc3_;
            layout.apply();
            break;
         }
      }
      
      public function §3!+§(param1:Event) : void
      {
         §9'§.§@!A§().§3!+§();
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Number = 8;
         if(!_loc8_)
         {
            §§push(§§findproperty(§-7§));
            §§push(§&!;§);
            §§push(16777215);
            §§push(32);
            §§push(null);
            §§push(§'>§.§#!D§());
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().§-7§ = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop(),width);
         }
         var _loc2_:TextField = §-7§;
         var _loc3_:* = null;
         if(_loc9_)
         {
            while(true)
            {
               if(_loc3_ == null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
               break;
            }
         }
         var _loc4_:§ 7§ = new §?y§(§-7§);
         if(!_loc8_)
         {
            §&d§.§1$§().add(_loc4_,new §@$§(true,0));
            loop1:
            while(true)
            {
               if(_loc9_)
               {
                  addChild(§-7§);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§'B§));
                     §§push(§§findproperty(§,C§));
                     §§push("menu/KongregateButton.png");
                     if(_loc9_)
                     {
                        if(!§9'§.§@!A§().§?!;§.§ G§)
                        {
                           §§push(§3!+§);
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                           break;
                        }
                     }
                     §§push(§#!#§);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(_loc9_)
                        {
                        }
                        break;
                     }
                     break loop2;
                  }
                  §§pop().§'B§ = new §§pop().§,C§(§§pop(),§§pop());
                  break loop1;
               }
               §§push(§§pop());
               break loop3;
            }
         }
         _loc4_ = new §?y§(§'B§);
         if(!_loc8_)
         {
            §&d§.§1$§().add(_loc4_,new §;!!§(_loc1_,§2u§.LEFT));
         }
         _loc4_ = new §?y§(§'B§);
         var _loc5_:§ 7§ = new §?y§(§-7§);
         while(true)
         {
            if(!_loc8_)
            {
               §&d§.§1$§().add(_loc4_,new §+X§(0,§2u§.BOTTOM),_loc5_);
               if(_loc8_)
               {
                  break;
               }
            }
            addChild(§'B§);
            break;
         }
         var _loc6_:§8!8§ = §'B§;
         if(_loc9_)
         {
            §§push(§§findproperty(§ ! §));
            §§push(§§findproperty(§,C§));
            §§push("menu/PlayFabButton.png");
            §§push(§2!G§);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().§ ! § = new §§pop().§,C§(§§pop(),§§pop());
         }
         _loc4_ = new §?y§(§ ! §);
         if(_loc9_)
         {
            §&d§.§1$§().add(_loc4_,new §;!!§(_loc1_,§2u§.LEFT));
         }
         _loc4_ = new §?y§(§ ! §);
         _loc5_ = new §?y§(§'B§);
         while(true)
         {
            if(!_loc8_)
            {
               §&d§.§1$§().add(_loc4_,new §+X§(_loc1_,§2u§.BOTTOM),_loc5_);
               if(!_loc9_)
               {
                  break;
               }
            }
            addChild(§ ! §);
            break;
         }
         _loc6_ = § ! §;
         §9I§ = §2!B§.§83§("menu/KongPlus.png");
         §9I§.visible = false;
         loop6:
         while(true)
         {
            while(true)
            {
               if(_loc9_)
               {
                  addChild(§9I§);
                  §§push(GlobalEventManager);
                  §§push("KONG_API_EVENT_READY");
                  §§push(§ _§);
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().addEventListener(§§pop(),§§pop());
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(GlobalEventManager);
                  §§push("KONG_API_EVENT_USER_CHANGED");
                  §§push(§ _§);
                  if(_loc9_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().addEventListener(§§pop(),§§pop());
                  §§push(GlobalEventManager);
                  §§push("PLAYFAB_LOGIN");
                  §§push(§ _§);
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().addEventListener(§§pop(),§§pop());
                  if(!_loc9_)
                  {
                     break loop6;
                  }
               }
               §§push(GlobalEventManager);
               §§push("PLAYFAB_LOG_OUT");
               §§push(§ _§);
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
               break loop6;
            }
            §§push(§`1§);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
            }
            var _loc7_:* = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc7_)));
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc7_();
               break;
            }
            return;
         }
         § _§();
         break loop7;
      }
   }
}

