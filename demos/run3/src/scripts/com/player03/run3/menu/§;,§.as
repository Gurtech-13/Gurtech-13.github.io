package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§2!B§;
   import §-!!§.§8!8§;
   import §-v§.§%!3§;
   import §6!Q§.§"q§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import §`!7§.§"!>§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§4!^§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.Timer;
   import nme3D.model.§7v§;
   
   public class §;,§ extends §[k§ implements §3!!§, §@[§
   {
      
      public static var instance:§;,§;
      
      public var §1u§:Number;
      
      public var §6!$§:§+"§;
      
      public var status:TextField;
      
      public var §;!J§:Number;
      
      public function §;,§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §;!J§ = 5;
               if(_loc2_)
               {
                  break;
               }
               §1u§ = 0;
               if(_loc2_)
               {
                  break;
               }
            }
            super();
            break;
         }
      }
      
      public static function §@!A§() : §;,§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §;,§;
         if(_loc2_)
         {
            if(§;,§.instance != null)
            {
               return §;,§.instance;
            }
         }
         return §;,§.instance = new §;,§();
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = null as PlayFabAPI;
         while(true)
         {
            while(true)
            {
               if(PlayFabAPI.§@!A§().§0U§ != null)
               {
                  §§push(§§findproperty(§1u§));
                  §§push(§1u§);
                  if(_loc4_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§1u§ = §§pop();
                  §§push(§1u§);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(0);
                  if(_loc5_)
                  {
                     continue loop4;
                  }
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc5_)
                     {
                        §1u§ = 5;
                        §'$§();
                     }
                  }
               }
               §§push(§;!J§);
               break;
            }
            §§push(0);
            continue loop4;
         }
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
                     if(§§pop() > §§pop())
                     {
                        _loc3_ = PlayFabAPI.§@!A§();
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        while(true)
                        {
                           §§push(true);
                           if(_loc3_.§%!b§ == null)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§pop();
                              if(!_loc4_)
                              {
                                 break loop5;
                              }
                              §§push(_loc3_.§9+§);
                              if(!_loc4_)
                              {
                                 break loop4;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           §§push(!§§pop());
                           break;
                        }
                        _loc2_ = Boolean(§§pop());
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc2_ = §§pop();
                     }
                     §§push(_loc2_);
                     break loop4;
                  }
                  §§goto(addr0111);
               }
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     break loop2;
                  }
               }
               break loop5;
            }
            return;
         }
         §§push(§§findproperty(§;!J§));
         §§push(§;!J§);
         if(!_loc5_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§;!J§ = §§pop();
         if(!_loc5_)
         {
            addr0111:
            §6!$§.visible = §;!J§ <= 0;
         }
         break loop3;
      }
      
      public function §&!^§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = null as PlayFabAPI;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§4!^§>;
         var _loc5_:* = null as §4!^§;
         while(true)
         {
            if(!_loc7_)
            {
               §§push(§0!#§.§@!A§().§"!K§());
               if(_loc6_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                  }
               }
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  _loc2_ = PlayFabAPI.§@!A§();
                  if(!_loc7_)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc3_ = §§pop();
                  }
                  _loc4_ = §4!^§.§&!#§;
                  if(_loc6_)
                  {
                     while(_loc3_ < int(_loc4_.length))
                     {
                        _loc5_ = _loc4_[_loc3_];
                        if(!_loc7_)
                        {
                           _loc3_++;
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                        _loc2_.§2B§(_loc5_);
                     }
                  }
               }
               §0!#§.§@!A§().§[§();
               if(!_loc6_)
               {
                  break;
               }
            }
            §6!$§.visible = false;
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr00ff);
         }
         §;!J§ = 5;
         addr00ff:
      }
      
      public function §8X§(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as String;
         §§push(§9'§.§@!A§().§?!;§.isGuest());
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
            if(_loc4_)
            {
               §§push(!§§pop());
            }
         }
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
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              §§push("Logged in as: ");
                              if(_loc4_)
                              {
                                 §§push(§9'§.§@!A§().§?!;§.getUsername());
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       _loc2_ = §§pop() + §§pop();
                                       break loop2;
                                    }
                                 }
                              }
                              else
                              {
                                 addr00b3:
                                 §§push(PlayFabAPI.§@!A§().§`G§);
                              }
                              addr00c0:
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                              }
                              else
                              {
                                 addr00e0:
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    break loop4;
                                 }
                                 _loc2_ = §§pop();
                              }
                              addr00e8:
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(PlayFabAPI.§@!A§().§0U§);
                              if(!_loc3_)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    break loop5;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push("Logged in as: ");
                                       if(_loc4_)
                                       {
                                          §§goto(addr00b3);
                                       }
                                       §§goto(addr00c0);
                                    }
                                    else
                                    {
                                       §§push("Not logged in.");
                                    }
                                    §§goto(addr00e0);
                                 }
                                 §§goto(addr00e8);
                              }
                           }
                           param1 = §§pop();
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           §§goto(addr015e);
                        }
                        §§goto(addr0109);
                     }
                     §§goto(addr010b);
                  }
                  §§goto(addr013c);
               }
               §§push(param1);
               if(_loc4_)
               {
                  break loop0;
               }
               break;
            }
            while(true)
            {
               §§push("\nLast synced: ");
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            addr013c:
            §§push(§§pop() + §§pop());
            if(_loc4_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            §§goto(addr013d);
         }
         addr013d:
         addr010b:
         addr0109:
         if(§§pop() != null)
         {
            §§push(_loc2_);
            break loop1;
         }
         status.text = _loc2_;
         layout.§%X§(new §?y§(status));
         addr015e:
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §2^§();
               if(!_loc2_)
               {
                  break;
               }
            }
            §1u§ = 0.1;
            break;
         }
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc1_:§%!3§ = new §%!3§();
         if(!_loc9_)
         {
            addChild(_loc1_);
         }
         var _loc2_:Bitmap = §2!B§.§83§("menu/PlayFabHeader.png");
         var _loc3_:§ 7§ = new §?y§(_loc2_);
         while(true)
         {
            if(_loc10_)
            {
               §&d§.§1$§().add(_loc3_,new §4$§(true,0.5));
               if(!_loc10_)
               {
                  break;
               }
            }
            addChild(_loc2_);
            if(_loc10_)
            {
               status = §&!;§.§9Q§(16777215,50,null,"ABC",width,null,null,null,"center");
            }
            break;
         }
         var _loc4_:TextField = status;
         var _loc5_:* = null;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  if(_loc5_ != null)
                  {
                     break;
                  }
                  if(_loc9_)
                  {
                     break loop1;
                  }
               }
               _loc5_ = int(Number(_loc4_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc4_),new §=!]§(int(_loc5_)));
            break;
         }
         _loc3_ = new §?y§(status);
         if(!_loc9_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(true,0));
         }
         _loc3_ = new §?y§(status);
         var _loc6_:§ 7§ = new §?y§(_loc2_);
         while(true)
         {
            if(!_loc9_)
            {
               §&d§.§1$§().add(_loc3_,new §+X§(10,§2u§.BOTTOM),_loc6_);
               if(_loc9_)
               {
                  break;
               }
            }
            addChild(status);
            if(_loc10_)
            {
               §§push(§§findproperty(§6!$§));
               §§push(§§findproperty(§+"§));
               §§push(§&!^§);
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
               §§pop().§6!$§ = new §§pop().§+"§(§§pop(),0,30,"Sync now");
            }
            break;
         }
         _loc3_ = new §?y§(§6!$§);
         _loc6_ = new §?y§(status);
         var _loc7_:§&d§ = null;
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc7_ != null)
                  {
                     _loc7_ = _loc7_;
                     break;
                  }
               }
               _loc7_ = §&d§.§1$§();
               if(_loc10_)
               {
                  break;
               }
               break loop4;
            }
            _loc7_.add(_loc3_,new §+X§(10,§2u§.BOTTOM),_loc6_);
            if(_loc10_)
            {
               _loc7_.add(_loc3_,new §4$§(true,0.5),_loc6_);
            }
            break;
         }
         var _loc8_:§8!8§ = §6!$§;
         §&d§.§1$§().add(new §?y§(_loc8_),new §"q§(11184810,6710886,3.6));
         while(true)
         {
            if(!_loc9_)
            {
               §6!$§.visible = false;
               if(_loc9_)
               {
                  break;
               }
               addChild(§6!$§);
               §2^§();
               §§push(GlobalEventManager);
               §§push("PLAYFAB_LOGIN");
               §§push(§2^§);
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
               §§push(GlobalEventManager);
               §§push("PLAYFAB_LOG_OUT");
               §§push(§2^§);
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
            }
            §§push(GlobalEventManager);
            §§push("KONG_API_EVENT_USER_CHANGED");
            §§push(§2^§);
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            §§pop().addEventListener(§§pop(),§§pop());
            §§push(GlobalEventManager);
            §§push("PLAYFAB_CLOUD_SAVE_SUCCESS");
            §§push(§'$§);
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            §§pop().addEventListener(§§pop(),§§pop());
            break;
         }
      }
      
      public function §2^§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               if(PlayFabAPI.§@!A§().§0U§ == null)
               {
                  status.text = "Connecting...";
                  break;
               }
               if(_loc1_)
               {
                  break;
               }
            }
            §'$§();
            if(_loc1_)
            {
            }
            break;
         }
      }
      
      public function §'$§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(Timer.stamp());
            if(_loc3_)
            {
               §§push(Number(§§pop()));
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(§§pop() - PlayFabAPI.§@!A§().§-!E§);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            break;
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        §§push(5);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(_loc3_)
                           {
                              §8X§("now");
                              if(_loc3_)
                              {
                              }
                           }
                           break loop2;
                        }
                        §§push(_loc1_);
                        if(_loc2_)
                        {
                           break loop1;
                        }
                     }
                     §§push(50);
                     if(!_loc2_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc2_)
                           {
                              §8X§("a few seconds ago");
                              if(_loc2_)
                              {
                              }
                           }
                           break loop2;
                        }
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        §§push(90);
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     §§goto(addr0123);
                  }
                  if(§§pop() < §§pop())
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §8X§("a minute ago");
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr00e9);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§goto(addr0121);
                  }
               }
            }
            §§push(600);
            if(!_loc2_)
            {
               if(§§pop() < §§pop())
               {
                  if(!_loc2_)
                  {
                     addr00e9:
                     §§push(§§findproperty(§8X§));
                     §§push(int(Math.round(_loc1_ / 60)) + " minutes ago");
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§8X§(§§pop());
                  }
                  break loop2;
               }
               addr0121:
               §§push(PlayFabAPI.§@!A§().§-!E§);
               §§push(0);
            }
            addr0123:
            if(§§pop() < §§pop())
            {
               if(_loc3_)
               {
                  §8X§(null);
               }
               break loop2;
            }
            §8X§("a while ago");
         }
         break loop2;
      }
   }
}

