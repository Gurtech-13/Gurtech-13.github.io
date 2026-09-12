package com.player03.run3.menu
{
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §"f§.§'8§;
   import §"f§.§5S§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §1!a§.§!!<§;
   import §1!a§.§55§;
   import §3!b§.Cutscenes;
   import §3!b§.Protip;
   import §6!Q§.§"q§;
   import §6!Q§.§]u§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §^!0§.§7P§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§2!,§;
   import com.player03.run3.save.§9t§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.text.TextField;
   import haxe.§%t§;
   import haxe.Timer;
   import openfl.Lib;
   
   public class § L§ extends §,C§
   {
      
      public static var §1"§:SharedObject;
      
      public static var high:int;
      
      public static var mid:int;
      
      public static var low:int;
      
      public static var warning:int;
      
      public static var §<!'§:Boolean = true;
      
      public var §-V§:Boolean;
      
      public var §3!E§:Array;
      
      public var §#!=§:String;
      
      public function § L§(param1:*, param2:Object = undefined, param3:Array = undefined)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(false);
                  if(_loc6_)
                  {
                     break loop0;
                  }
                  param2 = §§pop();
               }
               §§push(this);
               §§push("options/ErrorIcon.png");
               §§push(§8y§);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               §§pop().super(§§pop(),§§pop());
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(false);
                        if(param2)
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(param1 is String);
                           if(_loc6_)
                           {
                              break loop4;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              break loop4;
                           }
                        }
                        if(§§pop())
                        {
                           §#!=§ = param1;
                        }
                        else
                        {
                           §§push(§§findproperty(§#!=§));
                           §§push(§ L§.§+!W§(param1));
                           if(_loc7_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§#!=§ = §§pop();
                        }
                     }
                     §-V§ = param2;
                     §3!E§ = param3;
                     break;
                  }
                  §§push(false);
                  break;
               }
               if(!param2)
               {
                  if(_loc7_)
                  {
                     break loop0;
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr00ce);
            }
            § L§.§"!F§();
            §§goto(addr00ea);
         }
         §§pop();
         addr00cd:
         addr00ce:
         §§push(§ L§.§-!3§());
         if(_loc7_)
         {
            §§push(§§pop());
         }
         if(§§pop() == null)
         {
            if(_loc7_)
            {
               § L§.§`!8§(§#!=§);
               break loop1;
            }
         }
         addr00ea:
         var _loc4_:§ 7§ = new §?y§(this);
         var _loc5_:§&d§ = §&d§.§;`§();
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  if(_loc5_ != null)
                  {
                     §§push(_loc5_);
                     break;
                  }
                  if(!_loc7_)
                  {
                     break loop2;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc4_,new §4$§(true,0.5));
            break;
         }
      }
      
      public static function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§ L§.§1"§ == null)
         {
            § L§.§1"§ = SharedObject.getLocal("error");
         }
         while(true)
         {
            §§push(§ L§.§-!3§());
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  break;
               }
            }
            §§push(null);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  §§goto(addr00b5);
               }
               §§goto(addr007b);
            }
            §§goto(addr0079);
         }
         addr0079:
         addr007b:
         if(§§pop() != §§pop())
         {
            § L§.§"!F§();
         }
         else
         {
            §§push(GlobalEventManager);
            §§push("PLAYFAB_LOGIN");
            §§push(§ L§.§"!F§);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().addEventListener(§§pop(),§§pop());
         }
         §§push(Timer);
         §§push(§ L§.§!H§);
         if(_loc2_)
         {
            §§push(§§pop());
         }
         §§pop().delay(§§pop(),10000);
         addr00b5:
         if(§§pop() != §§pop())
         {
            §§push(PlayFabAPI.§@!A§().§0U§);
            break loop0;
         }
         §§pop();
      }
      
      public static function display(param1:*) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = null as Array;
         var _loc4_:* = null as Error;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc6_)
               {
                  §§push(§ L§.§-!3§());
                  if(_loc6_)
                  {
                     §§push(§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        § L§.§<!'§ = false;
                     }
                     §§push(§ L§.§<!'§);
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(false);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc6_)
                                    {
                                       break loop1;
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc5_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§push([]);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc6_)
                                 {
                                    break loop3;
                                 }
                              }
                              if(§§pop())
                              {
                                 break loop2;
                              }
                              § L§.§<!'§ = false;
                           }
                           §§push(param1 is Error);
                           if(_loc6_)
                           {
                              break loop4;
                           }
                           break loop0;
                        }
                        §§push(false);
                     }
                     break loop1;
                  }
                  _loc4_ = param1;
                  if(_loc6_)
                  {
                     if(_loc4_.errorID == 3694)
                     {
                        if(!_loc5_)
                        {
                           §§push(false);
                           if(_loc6_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr00e3:
                           §§push(true);
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§pop().push(new §'8§("Hardware acceleration may be disabled."));
                                 if(!_loc6_)
                                 {
                                    break loop5;
                                 }
                              }
                              §§push(_loc3_);
                              break;
                           }
                           §§pop().push(new §'8§("If you\'re using Chrome, try this.","http://www.webupd8.org/2014/01/enable-hardware-acceleration-in-chrome.html"));
                           break;
                        }
                     }
                     else
                     {
                        if(_loc4_.errorID != 3685)
                        {
                           break loop5;
                        }
                        if(_loc5_)
                        {
                           break loop5;
                        }
                        §§goto(addr00e3);
                     }
                  }
                  break loop5;
               }
               Main.instance.addChild(new § L§(param1,_loc2_,_loc3_));
               §§push(true);
               if(_loc6_)
               {
                  break loop0;
               }
               break;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public static function §!H§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§ L§.§-!3§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         if(§§pop() != null)
         {
            if(!_loc2_)
            {
               §§push(Main.instance);
               §§push(§§findproperty(§ L§));
               §§push(§ L§.§-!3§());
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().addChild(new §§pop().§ L§(§§pop(),true));
            }
         }
      }
      
      public static function §"!F§() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:* = null as §55§;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null as String;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(_loc6_)
                  {
                     §§push(false);
                     if(_loc6_)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc6_)
                              {
                                 §§push(§ L§.§-!3§());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 if(§§pop() == null)
                                 {
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§ L§.§,P§(PlayFabAPI) == null);
                                    if(_loc5_)
                                    {
                                       break loop4;
                                    }
                                 }
                              }
                              §§push(!§§pop());
                              if(_loc6_)
                              {
                                 break loop4;
                              }
                              break;
                           }
                           if(!§§pop())
                           {
                              break loop1;
                           }
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           §§pop();
                           if(_loc5_)
                           {
                              break loop0;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop5;
                     }
                     break;
                  }
                  §§push(PlayFabAPI.§@!A§().§0U§ == null);
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                     if(!_loc5_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  break;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               break;
            }
            §§goto(addr013d);
         }
         _loc1_ = new §55§();
         _loc2_ = {};
         if(!_loc5_)
         {
            _loc1_.Data = _loc2_;
         }
         _loc3_ = _loc1_.Data;
         if(_loc6_)
         {
            while(true)
            {
               §§push(§ L§.§-!3§());
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc4_ = §§pop();
            if(!_loc5_)
            {
               _loc3_["crash"] = _loc4_;
               if(!_loc5_)
               {
                  §§push(§7P§);
                  §§push(_loc1_);
                  §§push(§ L§.§+!,§);
                  if(_loc6_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().UpdateUserData(§§pop(),§§pop());
               }
            }
         }
         addr013d:
      }
      
      public static function §+!,§(param1:§!!<§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         § L§.§`!8§(null);
         if(_loc3_)
         {
            PlayFabAPI.§@!A§().getDeveloperAttention(1);
         }
      }
      
      public static function §+!W§(param1:*) : String
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc3_:* = null;
         var _loc4_:* = null as Error;
         var _loc6_:* = null as §0!?§;
         var _loc7_:* = null as String;
         var _loc8_:* = null as §9t§;
         var _loc9_:* = null;
         var _loc11_:* = null as §6M§;
         while(true)
         {
            if(_loc16_)
            {
               if(!(param1 is Error))
               {
                  §§push("dynamicError");
                  §§push(Std.string(param1));
                  if(_loc16_)
                  {
                     §§push(§§pop());
                  }
                  §§push("stackTrace");
                  §§push(§%t§);
                  §§push(§%t§.§!!H§());
                  if(!_loc17_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop().toString(§§pop()));
                  if(!_loc17_)
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = null;
                  break;
               }
            }
            _loc4_ = param1;
            _loc3_ = {
               "id":_loc4_.errorID,
               "message":_loc4_.message,
               "name":_loc4_.name,
               "stackTrace":_loc4_.getStackTrace()
            };
            break;
         }
         _loc3_.high = § L§.high;
         while(true)
         {
            if(_loc16_)
            {
               _loc3_.mid = § L§.mid;
               if(!_loc16_)
               {
                  break;
               }
            }
            _loc3_.low = § L§.low;
            if(!_loc17_)
            {
               if(§ L§.warning != 0)
               {
                  _loc3_.warning = § L§.warning;
               }
               _loc3_.event = GlobalEventManager.§!J§;
            }
            _loc3_.buildNumber = Save.§@!A§().buildNumber;
            _loc3_.paused = Main.instance.paused;
            if(§'O§.§;<§ != null)
            {
               break;
            }
            addr0138:
            var _loc5_:§0!?§ = Save.currentPath;
            if(_loc16_)
            {
               _loc3_.currentPath = Save.§@!A§().get(_loc5_.§=-§,_loc5_.§ -§);
            }
            try
            {
               _loc6_ = Save.currentPath;
               if(!_loc17_)
               {
                  §§push(Save.§@!A§().get(_loc6_.§=-§,_loc6_.§ -§));
                  if(_loc16_)
                  {
                     §§push(§§pop());
                  }
                  _loc7_ = §§pop();
               }
               _loc8_ = §>K§.§@!A§().§2! §.get(_loc7_).§^J§;
               if(_loc16_)
               {
                  _loc3_.currentLevel = int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§)));
               }
            }
            catch(_loc_e_:*)
            {
               _loc9_ = §§pop();
               if(_loc9_ as Error)
               {
                  Boot.lastError = _loc9_;
               }
               _loc3_.currentLevel = Std.string(_loc9_);
               var _loc10_:§ !W§ = Main.instance.tunnel;
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc17_)
                     {
                        if(_loc10_ == null)
                        {
                           break loop2;
                        }
                        if(!_loc16_)
                        {
                           break loop2;
                        }
                        §§push(false);
                        if(!_loc17_)
                        {
                           if(_loc10_.characters == null)
                           {
                              break;
                           }
                           if(_loc17_)
                           {
                              break;
                           }
                        }
                        §§pop();
                        if(!_loc16_)
                        {
                           break loop2;
                        }
                     }
                     §§push(int(_loc10_.characters.length) > 0);
                     if(!_loc17_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc17_)
                     {
                        break;
                     }
                     _loc11_ = _loc10_.characters[0];
                     while(true)
                     {
                        if(_loc16_)
                        {
                           _loc3_.level = _loc11_.§73§.id;
                           if(_loc17_)
                           {
                              break;
                           }
                        }
                        _loc3_.z = _loc11_.transform.position.z;
                        break;
                     }
                  }
                  _loc3_.mode = _loc10_.§5§;
                  break;
               }
               var _loc12_:§[!<§ = § L§.§,P§(§[!<§);
               if(_loc16_)
               {
                  if(_loc12_ != null)
                  {
                     if(!_loc17_)
                     {
                        _loc3_.menuScreen = Std.string(_loc12_.§1!Y§);
                     }
                  }
               }
               var _loc13_:§]u§ = § L§.§,P§(§]u§);
               if(_loc16_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc16_)
                        {
                           if(_loc13_ == null)
                           {
                              break loop4;
                           }
                           if(_loc16_)
                           {
                              §§pop();
                              if(_loc17_)
                              {
                                 break;
                              }
                              §§push(_loc13_.blockingOverlays == null);
                              if(_loc17_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(!§§pop());
                           if(!_loc16_)
                           {
                              break loop4;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop4;
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc17_)
                     {
                        _loc3_.blockingOverlays = int(_loc13_.blockingOverlays.length);
                     }
                  }
                  break loop5;
               }
               var _loc14_:§9'§ = § L§.§,P§(§9'§);
               while(true)
               {
                  if(_loc16_)
                  {
                     if(_loc14_ == null)
                     {
                        break;
                     }
                     if(_loc17_)
                     {
                        break;
                     }
                  }
                  _loc3_.kongregateID = _loc14_.§?!;§.getUserId();
                  break;
               }
               var _loc15_:PlayFabAPI = § L§.§,P§(PlayFabAPI);
               while(true)
               {
                  if(!_loc17_)
                  {
                     if(_loc15_ != null)
                     {
                        if(!_loc16_)
                        {
                           break;
                        }
                        _loc3_.playFabID = _loc15_.§`G§;
                        if(!_loc16_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(Main.instance.initDone);
                  if(!_loc17_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc17_)
                     {
                        break;
                     }
                  }
                  §§goto(addr03d5);
               }
               _loc3_.initDone = false;
               addr03d5:
               §§push(§2!,§.§^P§(JSON.stringify(_loc3_),"crash info"));
               if(!_loc17_)
               {
                  return §§pop();
               }
            }
         }
         _loc3_.character = §'O§.§;<§.id;
         §§goto(addr0138);
      }
      
      public static function §,P§(param1:Class) : §+<§
      {
         return Reflect.field(param1,"instance");
      }
      
      public static function §-!3§() : String
      {
         if(§ L§.§1"§ != null)
         {
            return Reflect.field(§ L§.§1"§.data,"error");
         }
         return null;
      }
      
      public static function §`!8§(param1:String) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(§ L§.§1"§ == null)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  § L§.§1"§ = SharedObject.getLocal("error");
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop() == null)
                  {
                     if(!_loc3_)
                     {
                        Reflect.deleteField(§ L§.§1"§.data,"error");
                        if(_loc3_)
                        {
                        }
                     }
                     break;
                  }
                  § L§.§1"§.data["error"] = param1;
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§goto(addr00a5);
            }
            § L§.§1"§.flush();
            break;
         }
         addr00a5:
         return param1;
      }
      
      public function §8y§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§findproperty(§5S§));
         §§push(§#!=§);
         §§push(§ L§.§-!3§());
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:§5S§ = new §§pop().§5S§(§§pop(),§§pop() == null,§3!E§);
         if(§]u§.§@!A§().parent != null)
         {
            if(!_loc4_)
            {
               §]u§.§@!A§().§5B§(_loc2_,true);
            }
            addr0099:
            parent.removeChild(this);
            §&d§.§;`§().remove(new §?y§(this));
            § L§.§`!8§(null);
         }
         else
         {
            Lib.get_current().addChild(_loc2_);
            if(_loc3_)
            {
               §§goto(addr0099);
            }
         }
      }
   }
}

