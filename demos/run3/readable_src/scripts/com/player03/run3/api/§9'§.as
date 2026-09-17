package com.player03.run3.api
{
   import §!!"§.§,X§;
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import scenes.§+!"§;
   import §4n§.Achievement;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§!=§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§@I§;
   import com.player03.run3.menu.§!!1§;
   import com.player03.run3.menu.Leaderboards;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import haxe.§=!U§;
   import haxe.Timer;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import openfl.Lib;
   
   public class §9'§ implements §+<§
   {
      
      public static var instance:§9'§;
      
      public static var §&!R§:String = "KONG_API_EVENT_CLOSED_KONGREGATE";
      
      public static var §2!1§:String = "KONG_API_EVENT_GAME_AUTH_TOKEN_CHANGED";
      
      public static var §3c§:String = "KONG_API_EVENT_OPENING_KONGREGATE";
      
      public static var §`!]§:String = "KONG_API_EVENT_READY";
      
      public static var §2!8§:String = "KONG_API_EVENT_SERVICE_UNAVAILABLE";
      
      public static var §64§:String = "KONG_API_EVENT_USER_CHANGED";
      
      public static var §]j§:String = "KONG_API_EVENT_USER_INVENTORY";
      
      public static var §"n§:String = "Guest";
      
      public static var §]?§:Number = 60;
      
      public static var §!W§:Number = 2700;
      
      public var §!!G§:Number;
      
      public var §4%§:Number;
      
      public var §8!I§:Boolean;
      
      public var §?!;§:§]3§;
      
      public function §9'§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §8!I§ = false;
               §§push(§§findproperty(§!!G§));
               §§push(-2700);
               if(!_loc2_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§!!G§ = §§pop();
               if(!_loc2_)
               {
                  §§push(§§findproperty(§4%§));
                  §§push(-60);
                  if(_loc1_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().§4%§ = §§pop();
               }
               §?!;§ = new §]3§();
               § _§();
               if(!_loc1_)
               {
                  break;
               }
            }
            §§push(GlobalEventManager);
            §§push("KONG_API_EVENT_USER_CHANGED");
            §§push(§ _§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().addEventListener(§§pop(),§§pop());
            break;
         }
         §§push(GlobalEventManager);
         §§push("KONG_API_EVENT_CLOSED_KONGREGATE");
         §§push(§`o§);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§pop().addEventListener(§§pop(),§§pop());
      }
      
      public static function §7!2§() : Boolean
      {
         return §9'§.§@!A§().§?!;§.§ G§;
      }
      
      public static function §@!A§() : §9'§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §9'§;
         if(!_loc2_)
         {
            if(§9'§.instance != null)
            {
               return §9'§.instance;
            }
         }
         return §9'§.instance = new §9'§();
      }
      
      public static function §@!4§() : §9'§
      {
         return §9'§.§@!A§();
      }
      
      public function §%!5§() : void
      {
         var a1:URLLoader;
         var f:Function;
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(Timer.stamp());
         if(_loc6_)
         {
            §§push(Number(§§pop()));
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc5_)
                  {
                     §§push(true);
                     if(_loc5_)
                     {
                        break loop1;
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc5_)
                        {
                           §§push(§!!G§);
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§push(2700);
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        break;
                     }
                     if(!_loc6_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc6_)
                     {
                        §§push(§4%§);
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§push(60);
                     break;
                  }
                  §§push(§§pop() < §§pop());
                  if(_loc6_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  break loop0;
               }
               §4%§ = _loc1_;
               break loop0;
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §§push("http://www.kongregate.com/high_scores.json?game_id=192194&statistic_id=99772");
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:URLRequest = new URLRequest(_loc2_);
         var _loc4_:URLLoader = new URLLoader();
         §§push(§§newactivation());
         §§push(§,F§);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         §§pop().§§slot[1] = §§pop();
         a1 = _loc4_;
         _loc4_.addEventListener(Event.COMPLETE,function(param1:String):void
         {
            f(a1,param1);
         });
         if(!_loc5_)
         {
            _loc4_.addEventListener(HTTPStatusEvent.HTTP_STATUS,function(param1:HTTPStatusEvent):void
            {
            });
            _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,function(param1:SecurityErrorEvent):void
            {
            });
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):void
            {
            });
            _loc4_.load(_loc3_);
         }
      }
      
      public function §+W§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push("http://www.kongregate.com/games/player_03/run-3?src=spon&cm=run3&haref=run3");
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            Lib.getURL(new URLRequest(_loc1_),"_blank");
         }
      }
      
      public function § _§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(§?!;§.isGuest());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  Save.§@!A§().set_username(null);
                  if(_loc1_)
                  {
                  }
               }
            }
            else
            {
               §§push(Save.§@!A§());
               §§push(§?!;§.getUsername());
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().set_username(§§pop());
            }
         }
      }
      
      public function §,F§(param1:URLLoader, param2:String) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §§push(§§findproperty(§!!G§));
            §§push(Timer.stamp());
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().§!!G§ = §§pop();
         }
         var _loc3_:* = JSON.parse(param1.data);
         while(true)
         {
            if(_loc5_)
            {
               if(!_loc3_.success)
               {
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
               Leaderboards.§"!Z§().§;t§(_loc3_.today_scores,true,true);
               if(!_loc4_)
               {
                  Leaderboards.§>B§().§;t§(_loc3_.weekly_scores,true,true);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            Leaderboards.§?r§().§;t§(_loc3_.lifetime_scores,false,true);
            break;
         }
      }
      
      public function §`o§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §8!I§ = false;
         }
      }
      
      public function §3!+§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push("http://www.kongregate.com/?src=spon&cm=run3&haref=run3");
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            Lib.getURL(new URLRequest(_loc1_),"_blank");
         }
      }
   }
}

