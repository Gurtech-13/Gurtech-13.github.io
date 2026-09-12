package com.player03.run3.api
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import §+!4§.§5!§;
   import §-!!§.§8!8§;
   import §-!!§.§@b§;
   import §1!a§.§!!<§;
   import §1!a§.§"!4§;
   import §1!a§.§5!'§;
   import §1!a§.§55§;
   import §1!a§.§7!D§;
   import §1!a§.§8U§;
   import §1!a§.§;!$§;
   import §1!a§.§;x§;
   import §1!a§.§<!-§;
   import §1!a§.§<!2§;
   import §1!a§.§[x§;
   import §1!a§.§^!%§;
   import §1!a§.§^S§;
   import §1!a§.§^k§;
   import §1!a§.§`!9§;
   import §1^§.Transform;
   import §2!"§.§8f§;
   import §3!b§.§+!"§;
   import §3!b§.ComingThrough;
   import §8!H§.§=l§;
   import §<&§.§6!>§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §^!0§.§%2§;
   import §^!0§.§7P§;
   import §^!0§.§=r§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§2!,§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.Timer;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   import nme3D.§1![§;
   import nme3D.model.§%d§;
   import nme3D.model.§,T§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import unitsystem.§7o§;
   
   public class PlayFabAPI implements §+<§
   {
      
      public static var §8"§:StringBuf;
      
      public static var instance:PlayFabAPI;
      
      public static var §`P§:String = "PLAYFAB_LOGIN";
      
      public static var §`u§:String = "PLAYFAB_LOG_OUT";
      
      public static var §[[§:String = "PLAYFAB_CLOUD_SAVE_SUCCESS";
      
      public static var §+!G§:String = "PLAYFAB_CLOUD_SAVE_FAILURE";
      
      public static var §"r§:String = "PLAYFAB_CLOUD_LOAD_SUCCESS";
      
      public static var §<D§:String = "PLAYFAB_CLOUD_LOAD_FAILURE";
      
      public static var §<!G§:String = "EFDC";
      
      public static var §@u§:Array = [70,55,89,72,75,75,85,69,65,53,71,85,49,57,49,90,77,56,82,56,56,51,52,65,72,80];
      
      public static var §-!&§:String = "QABGIXAH";
      
      public static var §>![§:String = "YKN5XTKUUD0XYTB8";
      
      public static var §0!O§:String = "NeedsDeveloperAttention";
      
      public static var §!P§:Boolean = false;
      
      public var §`G§:String;
      
      public var §0U§:String;
      
      public var §"!J§:Vector.<§4!^§>;
      
      public var §%!b§:Vector.<§4!^§>;
      
      public var §9+§:Boolean;
      
      public var overwrite:§2o§;
      
      public var § !b§:Boolean;
      
      public var §-!E§:Number;
      
      public var §0f§:Boolean;
      
      public function PlayFabAPI()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §9+§ = false;
               if(_loc3_)
               {
                  break;
               }
               §0f§ = true;
               if(!_loc2_)
               {
                  break;
               }
            }
            overwrite = new §2o§("c0b0f6a1896ea58b133b6116bc82fb61cbb95095");
            if(_loc2_)
            {
               break;
            }
            var _loc1_:Vector.<§4!^§> = new Vector.<§4!^§>(0,false);
            §§goto(addr0052);
         }
         §-!E§ = -20000;
         addr0052:
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §"!J§ = _loc1_;
                  § !b§ = false;
                  § L§.high = 689419;
                  §§push(PlayFabAPI.§!P§);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop1;
                  }
               }
               PlayFabAPI.init();
               break;
            }
            login();
            if(!_loc3_)
            {
               §§push(GlobalEventManager);
               §§push("KONG_API_EVENT_READY");
               §§push(§3!Z§);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
               if(_loc2_)
               {
                  break;
               }
            }
            §§goto(addr00ef);
         }
         §§push(GlobalEventManager);
         §§push("KONG_API_EVENT_USER_CHANGED");
         §§push(§3!Z§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         §§pop().addEventListener(§§pop(),§§pop());
         addr00ef:
      }
      
      public static function init() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc5_)
            {
               PlayFabAPI.§!P§ = true;
               if(!_loc5_)
               {
                  break;
               }
            }
            §=r§.TitleId = "EFDC";
            if(_loc5_)
            {
               PlayFabAPI.§8"§ = new StringBuf();
            }
            break;
         }
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(PlayFabAPI.§@u§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         loop2:
         while(true)
         {
            if(_loc5_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  §§push(int(_loc2_[_loc1_]));
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(!_loc4_)
                  {
                     _loc1_++;
                     if(!_loc4_)
                     {
                        var _temp_2:* = PlayFabAPI.§8"§;
                        §§push(_temp_2);
                        §§push(_temp_2.b);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + String.fromCharCode(_loc3_));
                        }
                        §§pop().b = §§pop();
                     }
                  }
               }
               while(true)
               {
                  if(_loc5_)
                  {
                     var _temp_3:* = PlayFabAPI.§8"§;
                     §§push(_temp_3);
                     §§push(_temp_3.b);
                     if(_loc5_)
                     {
                        §§push(Std.string(PlayFabAPI.§-!&§));
                        if(_loc5_)
                        {
                           §§push(§§pop());
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().b = §§pop();
                     if(!_loc4_)
                     {
                        §=r§.§<E§ = PlayFabAPI.§8"§.b;
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                  }
                  var _temp_4:* = PlayFabAPI.§8"§;
                  §§push(_temp_4);
                  §§push(_temp_4.b);
                  if(!_loc4_)
                  {
                     §§push(Std.string(PlayFabAPI.§>![§));
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().b = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            var _temp_5:* = §=r§;
            §§push(_temp_5);
            §§push(_temp_5.§<E§ + "1POZEU8AN6ITHRN4");
            if(_loc5_)
            {
               §§push(§§pop());
            }
            §§pop().§<E§ = §§pop();
            break;
         }
      }
      
      public static function onError(param1:String, param2:§%2§) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(§7o§);
            §§push("Error in ");
            if(_loc3_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            §§push("():");
            if(_loc3_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
               break;
            }
            §§pop().§3t§(§§pop(),{
               (§§pop()):"PlayFabAPI.hx",
               "lineNumber":118,
               "className":"com.player03.run3.api.PlayFabAPI",
               "methodName":"onError"
            });
            §§goto(addr0044);
         }
         addr0044:
         if(_loc3_)
         {
            §§push(§7o§);
            §§push(param2.httpCode + " ");
            if(_loc3_)
            {
               §§push(§§pop());
            }
            while(true)
            {
               §§push(param2.httpStatus);
               if(_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     §§push(": ");
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(param2.error);
               }
               §§push(§§pop() + §§pop());
               §§push("fileName");
               break;
            }
            §§pop().§3t§(§§pop(),{
               (§§pop()):"PlayFabAPI.hx",
               "lineNumber":119,
               "className":"com.player03.run3.api.PlayFabAPI",
               "methodName":"onError"
            });
         }
      }
      
      public static function §@!A§() : PlayFabAPI
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as PlayFabAPI;
         if(_loc3_)
         {
            if(PlayFabAPI.instance != null)
            {
               return PlayFabAPI.instance;
            }
         }
         return PlayFabAPI.instance = new PlayFabAPI();
      }
      
      public static function §@!4§() : PlayFabAPI
      {
         return PlayFabAPI.§@!A§();
      }
      
      public function §<!6§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(false);
                        if(!_loc2_)
                        {
                           if(§0U§ == null)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(§%!b§ == null);
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        addr005d:
                        §§pop();
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     §§goto(addr005d);
                  }
                  §§push(int(§"!J§.length) > 0);
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr0088);
            }
            addr0088:
            if(!§§pop())
            {
               break;
            }
            var _loc1_:§2o§ = overwrite;
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(!Boolean(Save.§@!A§().get(_loc1_.§=-§,Boolean(_loc1_.§ -§))))
                     {
                        §§push(GlobalEventManager);
                        §§push("PLAYFAB_CLOUD_LOAD_SUCCESS");
                        §§push(pushCloudSaves);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().addEventListener(§§pop(),§§pop());
                        while(true)
                        {
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           addr0109:
                           pullCloudSaves();
                           break;
                        }
                        §§goto(addr0110);
                     }
                     if(_loc2_)
                     {
                        break loop3;
                     }
                  }
                  pushCloudSaves();
                  if(!_loc2_)
                  {
                     break loop3;
                  }
                  break;
               }
               §§push(GlobalEventManager);
               §§push("PLAYFAB_CLOUD_LOAD_FAILURE");
               §§push(§'Z§);
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
               if(!_loc2_)
               {
                  §§goto(addr0109);
               }
               addr0110:
               return;
            }
            return;
         }
      }
      
      public function §^G§(param1:String, param2:Object = undefined, param3:Object = undefined) : void
      {
         var resultCallback:Object;
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  resultCallback = param2;
                  if(_loc6_)
                  {
                     break loop0;
                  }
                  if(param3 != null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               param3 = 1;
               break;
            }
            getDeveloperAttention(param3);
            break;
         }
         var _loc4_:§55§ = new §55§();
         var _loc5_:* = {};
         if(_loc7_)
         {
            _loc4_.Data = _loc5_;
            if(_loc7_)
            {
               _loc4_.Data["MessageToDev"] = param1;
               if(_loc7_)
               {
                  if(resultCallback != null)
                  {
                     if(!_loc6_)
                     {
                        §7P§.UpdateUserData(_loc4_,function(param1:§!!<§):void
                        {
                           resultCallback(true);
                        },function(param1:§%2§):void
                        {
                           resultCallback(false);
                        });
                        if(_loc7_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §7P§.UpdateUserData(_loc4_);
                  }
               }
            }
         }
      }
      
      public function §6!'§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               while(true)
               {
                  §§push(§ !b§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        § L§.low = 106564;
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                     §§push(§9'§.§@!A§().§?!;§.isGuest());
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  login();
                  break loop0;
               }
            }
            §§push(Timer);
            §§push(login);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().delay(§§pop(),60000);
            if(_loc2_)
            {
            }
            break;
         }
      }
      
      public function §2B§(param1:§4!^§) : void
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
                  while(true)
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        if(param1 == null)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop();
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        §§push(int(§"!J§.indexOf(param1,0)) < 0);
                        if(_loc3_)
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
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               § L§.mid = 250193;
               if(!_loc3_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         §"!J§.push(param1);
         break loop1;
      }
      
      public function pushCloudSaves() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc1_:* = null as Vector.<§4!^§>;
         var _loc2_:* = null as Vector.<§4!^§>;
         var _loc6_:* = null as §4!^§;
         var _loc7_:* = null as String;
         var _loc8_:* = null as String;
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(!_loc11_)
               {
                  §§push(false);
                  if(!_loc10_)
                  {
                     break;
                  }
                  if(§0U§ == null)
                  {
                     break;
                  }
                  if(_loc11_)
                  {
                     break;
                  }
                  §§pop();
                  if(!_loc10_)
                  {
                     break loop1;
                  }
               }
               §§push(§%!b§ == null);
               if(_loc10_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc11_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(int(§"!J§.length));
                        if(_loc11_)
                        {
                           break loop4;
                        }
                        §§push(0);
                        if(!_loc10_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() > §§pop());
                        if(!_loc10_)
                        {
                           break loop1;
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc11_)
                        {
                           break loop1;
                        }
                     }
                     §§push(!§§pop());
                     break loop1;
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00f8);
            }
            §§goto(addr00fa);
         }
         if(§§pop())
         {
            if(_loc10_)
            {
               return;
            }
            addr00d6:
            §§push(GlobalEventManager);
            §§push("PLAYFAB_CLOUD_LOAD_FAILURE");
            §§push(§'Z§);
            if(!_loc11_)
            {
               §§push(§§pop());
            }
            §§pop().removeEventListener(§§pop(),§§pop());
         }
         else
         {
            § L§.mid = 694374;
            addr00b7:
            §§push(GlobalEventManager);
            §§push("PLAYFAB_CLOUD_LOAD_SUCCESS");
            §§push(pushCloudSaves);
            if(_loc10_)
            {
               §§push(§§pop());
            }
            §§pop().removeEventListener(§§pop(),§§pop());
            if(_loc10_)
            {
               §§goto(addr00d6);
            }
         }
         addr00fa:
         addr00f8:
         if(int(§"!J§.length) > 10)
         {
            §§push(§"!J§);
            §§push(10);
            §§push(int(§"!J§.length));
            if(_loc10_)
            {
               §§push(§§pop() - 10);
            }
            _loc1_ = §§pop().splice(§§pop(),§§pop());
         }
         else
         {
            _loc2_ = new Vector.<§4!^§>(0,false);
            _loc1_ = _loc2_;
         }
         var _loc3_:* = {};
         var _loc4_:* = _loc3_;
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         _loc2_ = §"!J§;
         if(!_loc11_)
         {
            while(_loc5_ < int(_loc2_.length))
            {
               _loc6_ = _loc2_[_loc5_];
               if(!_loc11_)
               {
                  _loc5_++;
                  if(!_loc11_)
                  {
                     §§push(_loc6_.§=-§);
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc10_)
                        {
                           _loc7_ = §§pop();
                           if(_loc11_)
                           {
                              continue;
                           }
                           §§push(_loc6_.§9!_§());
                           if(!_loc11_)
                           {
                              §§push(§§pop());
                              if(!_loc11_)
                              {
                                 §§push(§§pop());
                              }
                           }
                        }
                     }
                     _loc8_ = §§pop();
                     if(_loc11_)
                     {
                        continue;
                     }
                  }
                  _loc4_[_loc7_] = _loc8_;
               }
            }
         }
         var _loc9_:§55§ = new §55§();
         if(!_loc11_)
         {
            _loc9_.Data = _loc4_;
            if(_loc10_)
            {
               §§push(§7P§);
               §§push(_loc9_);
               §§push(§``§);
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               §§push(§2p§);
               if(!_loc11_)
               {
                  §§push(§§pop());
               }
               §§pop().UpdateUserPublisherData(§§pop(),§§pop(),§§pop());
            }
         }
         §%!b§ = §"!J§;
         if(!_loc11_)
         {
            §"!J§ = _loc1_;
            if(_loc10_)
            {
               if(int(§"!J§.length) > 0)
               {
                  §0!#§.§@!A§().§3!&§(50);
               }
            }
         }
      }
      
      public function pullCloudSaves() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               while(true)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     if(§0U§ == null)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     §§push(§9+§);
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  § L§.mid = 426446;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            §9+§ = true;
            break;
         }
         var _loc1_:§5!'§ = new §5!'§();
         if(!_loc2_)
         {
            §§push(§7P§);
            §§push(_loc1_);
            §§push(§5j§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(§-!#§);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().GetUserPublisherData(§§pop(),§§pop(),§§pop());
         }
      }
      
      public function §9!W§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §4!^§;
         while(true)
         {
            if(_loc4_)
            {
               § L§.high = 553288;
               if(!_loc4_)
               {
                  break;
               }
            }
            overwrite.§?F§(true);
            break;
         }
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§4!^§> = §4!^§.§&!#§;
         if(_loc4_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc5_)
               {
                  _loc1_++;
                  if(_loc4_)
                  {
                     §2B§(_loc3_);
                  }
               }
            }
            if(_loc4_)
            {
               pushCloudSaves();
            }
         }
      }
      
      public function §'Z§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(GlobalEventManager);
            §§push("PLAYFAB_CLOUD_LOAD_SUCCESS");
            §§push(pushCloudSaves);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().removeEventListener(§§pop(),§§pop());
            if(_loc1_)
            {
               §§push(GlobalEventManager);
               §§push("PLAYFAB_CLOUD_LOAD_FAILURE");
               §§push(§'Z§);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().removeEventListener(§§pop(),§§pop());
            }
         }
      }
      
      public function §2j§(param1:Boolean, param2:§;!$§) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:* = null as §<!2§;
         § L§.high = 349114;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  if(param1)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     § !b§ = true;
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  §`G§ = param2.PlayFabId;
                  if(_loc7_)
                  {
                     §0U§ = param2.SessionTicket;
                     if(_loc7_)
                     {
                        §§push(false);
                     }
                  }
               }
               §§push(!§9'§.§@!A§().§?!;§.isGuest());
               if(!_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               break loop0;
            }
            _loc3_ = new §<!2§();
            if(!_loc6_)
            {
               §§push(_loc3_);
               §§push(§9'§.§@!A§().§?!;§.getUsername());
               if(_loc7_)
               {
                  §§push(§§pop());
               }
               §§pop().DisplayName = §§pop();
               if(!_loc6_)
               {
                  §7P§.UpdateUserTitleDisplayName(_loc3_);
               }
            }
            §§goto(addr00d6);
         }
         if(§§pop())
         {
            break loop1;
         }
         addr00d6:
         §§push(§`G§);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            GlobalEventManager.dispatchEvent("PLAYFAB_LOGIN");
         }
         var _loc5_:§2o§ = overwrite;
         if(!_loc6_)
         {
            if(Boolean(Save.§@!A§().get(_loc5_.§=-§,Boolean(_loc5_.§ -§))))
            {
               if(_loc7_)
               {
                  §9!W§();
                  if(_loc7_)
                  {
                  }
               }
            }
            else
            {
               pullCloudSaves();
            }
         }
      }
      
      public function §+=§(param1:§7!D§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            § !b§ = true;
         }
      }
      
      public function §-^§(param1:§%2§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               if(param1.errorCode != 1012)
               {
                  PlayFabAPI.onError("linkNextAccount",param1);
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §3!Z§();
            if(_loc3_)
            {
            }
            break;
         }
      }
      
      public function §2p§(param1:§%2§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = null as Vector.<§4!^§>;
         var _loc4_:* = null as §4!^§;
         if(!_loc5_)
         {
            while(true)
            {
               §§push(int(§"!J§.length));
               if(_loc6_)
               {
                  if(§§pop() == 0)
                  {
                     if(_loc6_)
                     {
                        §"!J§ = §%!b§;
                     }
                     §§goto(addr00bf);
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(int(§§pop()));
               break;
            }
            _loc2_ = §§pop();
            _loc3_ = §%!b§;
            if(_loc6_)
            {
               while(_loc2_ < int(_loc3_.length))
               {
                  _loc4_ = _loc3_[_loc2_];
                  if(!_loc5_)
                  {
                     _loc2_++;
                     if(_loc6_)
                     {
                        §2B§(_loc4_);
                     }
                  }
               }
            }
         }
         addr00bf:
         §%!b§ = null;
         PlayFabAPI.onError("pushCloudSaves",param1);
         GlobalEventManager.dispatchEvent("PLAYFAB_CLOUD_SAVE_FAILURE");
      }
      
      public function §``§(param1:§!!<§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §%!b§ = null;
            while(true)
            {
               if(!_loc2_)
               {
                  GlobalEventManager.dispatchEvent("PLAYFAB_CLOUD_SAVE_SUCCESS");
                  if(_loc3_)
                  {
                     overwrite.§?F§(false);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
               §§push(§§findproperty(§-!E§));
               §§push(Timer.stamp());
               if(!_loc2_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§-!E§ = §§pop();
               break;
            }
         }
      }
      
      public function §-!#§(param1:§%2§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §9+§ = false;
               if(_loc2_)
               {
                  PlayFabAPI.onError("pullCloudSaves",param1);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            GlobalEventManager.dispatchEvent("PLAYFAB_CLOUD_LOAD_FAILURE");
            break;
         }
      }
      
      public function §5j§(param1:§"!4§) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc7_:* = null as §4!^§;
         var _loc8_:* = null as String;
         var _loc9_:* = null as String;
         var _loc10_:* = null as String;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null as §2o§;
         if(!_loc14_)
         {
            §9+§ = false;
         }
         var _loc3_:§2o§ = overwrite;
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc14_)
               {
                  if(Boolean(Save.§@!A§().get(_loc3_.§=-§,Boolean(_loc3_.§ -§))))
                  {
                     §§push(true);
                     if(!_loc14_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(_loc15_)
                     {
                        break;
                     }
                     break loop2;
                  }
                  if(_loc14_)
                  {
                     break loop2;
                  }
               }
               _loc2_ = param1.Data == null;
               if(_loc14_)
               {
               }
               break;
            }
            if(_loc2_)
            {
               if(_loc15_)
               {
                  return;
               }
               break;
            }
            § L§.high = 806254;
            break;
         }
         var _loc4_:§=!U§ = new StringMap();
         §§push(0);
         if(!_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Vector.<§4!^§> = §4!^§.§&!#§;
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               if(!_loc14_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc14_)
                     {
                        break loop5;
                     }
                     if(§§pop() < int(_loc6_.length))
                     {
                        _loc7_ = _loc6_[_loc5_];
                        _loc5_++;
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(Reflect.hasField(param1.Data,_loc7_.§=-§));
                              if(_loc15_)
                              {
                                 §§push(!Boolean(§§pop()));
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc15_)
                                    {
                                    }
                                    continue loop0;
                                 }
                                 _loc8_ = Reflect.field(param1.Data,_loc7_.§=-§).Value;
                                 §§push(true);
                                 if(_loc8_ == null)
                                 {
                                    break loop6;
                                 }
                                 if(!_loc15_)
                                 {
                                    break loop6;
                                 }
                              }
                              §§pop();
                              if(_loc14_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(_loc8_);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop().length == 0);
                                    break loop7;
                                 }
                                 §§goto(addr017b);
                              }
                              §§goto(addr0185);
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           if(_loc15_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§2!,§.§-e§(_loc8_,_loc7_.§=-§));
                              if(_loc15_)
                              {
                                 addr017b:
                                 _loc9_ = §§pop();
                                 §§push(_loc9_);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                              }
                              addr0185:
                              if(§§pop() != null)
                              {
                                 §§push(_loc7_.§=-§);
                                 break;
                              }
                              if(_loc15_)
                              {
                                 continue loop0;
                              }
                           }
                           _loc10_ = §§pop();
                        }
                        _loc11_ = JSON.parse(_loc9_);
                        _loc12_ = _loc11_;
                        if(_loc15_)
                        {
                           if(!(_loc10_ in StringMap.§+!#§))
                           {
                              _loc4_.h[_loc10_] = _loc12_;
                              continue;
                           }
                           if(_loc14_)
                           {
                              continue;
                           }
                        }
                        _loc4_.setReserved(_loc10_,_loc12_);
                        if(_loc15_)
                        {
                        }
                        continue;
                     }
                     if(_loc14_)
                     {
                        break loop4;
                     }
                  }
               }
               §§push(§6!>§.§>6§(_loc4_));
               if(!_loc14_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(_loc15_)
                  {
                     break loop4;
                  }
               }
               else
               {
                  §§push(0);
                  if(!_loc14_)
                  {
                     break;
                  }
                  addr0232:
                  _loc5_ = §§pop();
               }
               _loc6_ = §4!^§.§&!#§;
               if(!_loc14_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc14_)
                     {
                        break;
                     }
                     §§push(int(_loc6_.length));
                     if(!_loc14_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           while(true)
                           {
                              if(!_loc14_)
                              {
                                 if(!§0f§)
                                 {
                                    break;
                                 }
                                 if(!_loc14_)
                                 {
                                    §0f§ = false;
                                    if(!_loc14_)
                                    {
                                       §§push(int(§"!J§.length));
                                       break loop1;
                                    }
                                 }
                              }
                              addr038d:
                              §0!#§.§@!A§().§,?§();
                              break;
                           }
                           §§goto(addr039a);
                        }
                        _loc7_ = _loc6_[_loc5_];
                        _loc5_++;
                        loop11:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc7_.§=-§);
                              if(!_loc14_)
                              {
                                 §§push(§§pop());
                                 if(!_loc14_)
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc14_)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_);
                                    if(!_loc15_)
                                    {
                                       break loop11;
                                    }
                                 }
                              }
                              §§push(§§pop() in StringMap.§+!#§);
                              if(_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(Boolean(_loc4_.existsReserved(_loc8_)));
                                    if(_loc15_)
                                    {
                                    }
                                    §§goto(addr02af);
                                 }
                                 else
                                 {
                                    §§push(_loc8_);
                                    if(!_loc14_)
                                    {
                                       break loop11;
                                    }
                                 }
                                 §§goto(addr02c0);
                              }
                              §§goto(addr02af);
                           }
                           while(true)
                           {
                              §§push(_loc7_);
                              if(_loc15_)
                              {
                                 if(!(_loc9_ in StringMap.§+!#§))
                                 {
                                    §§push(_loc4_.h[_loc9_]);
                                    break;
                                 }
                              }
                              §§push(_loc4_.getReserved(_loc9_));
                              break;
                           }
                           §§pop().§;r§(§§pop());
                           §§goto(addr02f7);
                        }
                        addr02af:
                        if(§§pop() in _loc4_.h)
                        {
                           addr02c0:
                           §§push(_loc7_.§=-§);
                           if(_loc15_)
                           {
                              §§push(§§pop());
                           }
                           _loc9_ = §§pop();
                           if(_loc15_)
                           {
                              break loop12;
                           }
                           addr02f7:
                           _loc13_ = overwrite;
                           if(!_loc14_)
                           {
                              if(!Boolean(Save.§@!A§().get(_loc13_.§=-§,Boolean(_loc13_.§ -§))))
                              {
                                 continue;
                              }
                           }
                           return;
                        }
                        §2B§(_loc7_);
                        continue;
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc14_)
                        {
                           §§goto(addr038d);
                        }
                     }
                     addr039a:
                     GlobalEventManager.dispatchEvent("PLAYFAB_CLOUD_LOAD_SUCCESS");
                     §§goto(addr03a4);
                  }
                  §§goto(addr0382);
                  §§push(0);
               }
               addr03a4:
               return;
            }
            §§goto(addr0232);
         }
      }
      
      public function login() : void
      {
         var f:Function;
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:* = null as §`!9§;
         var _loc2_:* = null as String;
         var _loc3_:* = false;
         var _loc4_:* = null as §9'§;
         var _loc5_:* = null as §8U§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc6_)
                  {
                     § L§.mid = 250317;
                     if(!_loc6_)
                     {
                        if(§0U§ != null)
                        {
                           if(!_loc6_)
                           {
                              §§push(false);
                              if(!_loc7_)
                              {
                                 break loop1;
                              }
                              §§push(§ !b§);
                              if(!_loc6_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break loop1;
                              }
                              §§pop();
                              if(!_loc7_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        else
                        {
                           §§push(§9'§.§@!A§().§?!;§.isGuest());
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr0211:
                           addr0212:
                           if(!§§pop())
                           {
                              continue loop14;
                           }
                           §§goto(addr036b);
                        }
                     }
                  }
                  §§push(§9'§.§@!A§().§?!;§.isGuest());
                  if(_loc7_)
                  {
                     §§push(!Boolean(§§pop()));
                     break loop1;
                  }
                  break;
               }
               §§push(Boolean(§§pop()));
               if(!_loc6_)
               {
                  §§goto(addr0211);
               }
               §§goto(addr0212);
            }
            if(§§pop())
            {
               if(!_loc6_)
               {
                  break;
               }
               _loc5_ = new §8U§();
               _loc5_.TitleId = "EFDC";
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           §§push(Std);
                           §§push(§9'§.§@!A§().§?!;§.getUserId());
                           if(!_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                           §§push(§§pop().string(§§pop()));
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().KongregateId = §§pop();
                           §§push(_loc5_);
                           §§push(§9'§.§@!A§().§?!;§.getGameAuthToken());
                           if(_loc7_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().AuthTicket = §§pop();
                           _loc5_.CreateAccount = true;
                           §§push(_loc5_.AuthTicket);
                           if(_loc7_)
                           {
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 break;
                              }
                           }
                           _loc2_ = §§pop();
                           §§push(false);
                           if(_loc7_)
                           {
                              if(_loc2_ == null)
                              {
                                 break loop14;
                              }
                              if(!_loc7_)
                              {
                                 break loop13;
                              }
                           }
                           §§pop();
                        }
                        §§push(_loc2_);
                        break;
                     }
                     §§push(§§pop().length > 0);
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     §§goto(addr0306);
                  }
                  if(!§§pop())
                  {
                     §§push(false);
                     if(!_loc6_)
                     {
                        addr0306:
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
                  _loc4_ = §9'§.§@!A§();
                  if(_loc7_)
                  {
                     loop17:
                     while(true)
                     {
                        §§push(_loc2_ == "Guest_Game_Auth_Token");
                        if(!_loc6_)
                        {
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!_loc6_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              _loc3_ = §§pop();
                              if(_loc6_)
                              {
                                 break loop17;
                              }
                              §§goto(addr0308);
                           }
                        }
                        §§goto(addr0309);
                     }
                     §§goto(addr036b);
                  }
                  §§goto(addr034e);
               }
               _loc3_ = §§pop();
               addr0308:
               addr0309:
               if(_loc3_)
               {
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        §§push(§§newactivation());
                        §§push(§2j§);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§§slot[1] = §§pop();
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     §7P§.LoginWithKongregate(_loc5_,function(param1:§;!$§):void
                     {
                        f(true,param1);
                     },function(param1:§%2§):void
                     {
                        PlayFabAPI.onError("login",param1);
                     });
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  addr034e:
                  return;
               }
               §§push(Timer);
               §§push(§6!'§);
               if(_loc7_)
               {
                  §§push(§§pop());
               }
               §§pop().delay(§§pop(),5000);
               addr036b:
               return;
            }
            §§goto(addr01f2);
         }
         _loc1_ = new §`!9§();
         §§push(_loc1_);
         §§push(Std);
         §§push(§9'§.§@!A§().§?!;§.getUserId());
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         §§push(§§pop().string(§§pop()));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         §§pop().KongregateId = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(!_loc6_)
               {
                  §§push(_loc1_);
                  §§push(§9'§.§@!A§().§?!;§.getGameAuthToken());
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().AuthTicket = §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc1_.ForceLink = false;
                  §§push(_loc1_.AuthTicket);
                  if(!_loc7_)
                  {
                     break loop2;
                  }
                  §§push(§§pop());
                  if(!_loc7_)
                  {
                     break loop2;
                  }
                  _loc2_ = §§pop();
               }
               while(true)
               {
                  §§push(false);
                  if(_loc7_)
                  {
                     while(true)
                     {
                        if(_loc2_ != null)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§pop();
                           while(true)
                           {
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr019f);
                                 }
                                 §§goto(addr01f2);
                              }
                              §§goto(addr01a0);
                           }
                           §§goto(addr01ab);
                        }
                        §§goto(addr0147);
                     }
                  }
                  §§goto(addr019d);
               }
               §§goto(addr019e);
            }
            §§push(_loc2_);
            break;
         }
         while(true)
         {
            §§push(§§pop().length > 0);
            if(_loc7_)
            {
               §§push(Boolean(§§pop()));
               if(_loc7_)
               {
                  addr0147:
                  if(§§pop())
                  {
                     _loc4_ = §9'§.§@!A§();
                     if(_loc7_)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(_loc2_ == "Guest_Game_Auth_Token");
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc3_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    addr019f:
                                    §§push(_loc3_);
                                    break;
                                 }
                                 break loop5;
                              }
                           }
                           addr01a0:
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(Timer);
                              §§push(§6!'§);
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().delay(§§pop(),5000);
                           }
                        }
                        addr01ab:
                        §§push(§7P§);
                        §§push(_loc1_);
                        §§push(§+=§);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        §§push(§-^§);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().LinkKongregate(§§pop(),§§pop(),§§pop());
                        if(_loc6_)
                        {
                        }
                     }
                     addr01f2:
                     return;
                  }
                  §§push(false);
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            addr019d:
            §§push(Boolean(§§pop()));
            break;
         }
         addr019e:
         _loc3_ = §§pop();
         §§goto(addr019f);
      }
      
      public function §3!Z§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(true);
               if(_loc2_)
               {
                  if(§`G§ == null)
                  {
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(_loc1_)
                           {
                              break loop0;
                           }
                           §§push(§0U§ == null);
                           if(_loc1_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        break;
                     }
                  }
               }
               if(§§pop())
               {
                  §`G§ = null;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     addr0093:
                     GlobalEventManager.dispatchEvent("PLAYFAB_LOG_OUT");
                     break;
                  }
               }
               addr009d:
               login();
            }
            §0U§ = null;
            if(_loc2_)
            {
               § !b§ = false;
               if(_loc2_)
               {
                  §§goto(addr0093);
               }
               §§goto(addr009d);
            }
         }
      }
      
      public function getTitleNews(param1:Object = undefined, param2:Function = undefined, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc6_)
            {
               while(true)
               {
                  if(param1 == null)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     param1 = 10;
                  }
                  if(§0U§ == null)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     § L§.mid = 882794;
                     if(_loc6_)
                     {
                        break loop0;
                     }
                  }
               }
               return;
            }
            if(param3 == null)
            {
               break;
            }
            §§goto(addr0076);
         }
         param3 = function(param1:§%2§):void
         {
            PlayFabAPI.onError("getTitleNews",param1);
         };
         addr0076:
         var _loc4_:§<!-§ = new §<!-§();
         if(_loc5_)
         {
            _loc4_.Count = param1;
            if(_loc5_)
            {
               §7P§.GetTitleNews(_loc4_,param2,param3);
            }
         }
      }
      
      public function getDeveloperAttention2(param1:int, param2:§;x§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(param2.StatisticVersions);
                  if(!_loc5_)
                  {
                     §§push(int(§§pop().length));
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(§§pop() <= 0)
                     {
                        break loop0;
                     }
                     if(!_loc6_)
                     {
                        break loop0;
                     }
                     §§push(param2.StatisticVersions);
                  }
                  §§push(int(param2.StatisticVersions.length));
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(int(§§pop()[§§pop()].Version));
                  break;
               }
               _loc3_ = §§pop();
               break;
            }
         }
         break loop0;
      }
      
      public function getDeveloperAttention(param1:Object = undefined) : void
      {
         var a1:int;
         var f:Function;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  param1 = 2;
               }
               § L§.mid = 805929;
               break;
            }
         }
         var _loc2_:§^k§ = new §^k§();
         if(!_loc4_)
         {
            _loc2_.StatisticName = "NeedsDeveloperAttention";
            if(!_loc4_)
            {
               §§push(§§newactivation());
               §§push(getDeveloperAttention2);
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  a1 = param1;
                  if(!_loc4_)
                  {
                     §7P§.GetPlayerStatisticVersions(_loc2_,function(param1:§;x§):void
                     {
                        f(a1,param1);
                     },function(param1:§%2§):void
                     {
                        PlayFabAPI.onError("getDeveloperAttention",param1);
                     });
                  }
               }
            }
         }
      }
   }
}

