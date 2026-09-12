package haxe
{
   import §=[§.§%R§;
   import flash.Boot;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLVariables;
   
   public class §%!-§
   {
      
      public var §]Q§:String;
      
      public var §?O§:String;
      
      public var §=!?§:URLLoader;
      
      public var §,I§:String;
      
      public var params:§%!F§;
      
      public var §3!]§:Function;
      
      public var onError:Function;
      
      public var §?H§:Function;
      
      public var §6!`§:§%!F§;
      
      public function §%!-§(param1:String)
      {
         if(!§?H§)
         {
            §?H§ = function(param1:String):void
            {
            };
         }
         if(!onError)
         {
            onError = function(param1:String):void
            {
            };
         }
         if(!§3!]§)
         {
            §3!]§ = function(param1:int):void
            {
            };
         }
         §]Q§ = param1;
         §6!`§ = new §%!F§();
         params = new §%!F§();
      }
      
      public function §3!=§(param1:Object = undefined) : void
      {
         var loader:URLLoader;
         var me:§%!-§;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc10_:* = null as Array;
         me = this;
         me.§?O§ = null;
         loader = §=!?§ = new URLLoader();
         loader.addEventListener("complete",function(param1:*):void
         {
            me.§=!?§ = null;
            me.§?O§ = loader.data;
            me.§?H§(loader.data);
         });
         loader.addEventListener("httpStatus",function(param1:HTTPStatusEvent):void
         {
            if(param1.status != 0)
            {
               me.§3!]§(param1.status);
            }
         });
         loader.addEventListener("ioError",function(param1:IOErrorEvent):void
         {
            me.§=!?§ = null;
            me.§?O§ = loader.data;
            me.onError(param1.text);
         });
         loader.addEventListener("securityError",function(param1:SecurityErrorEvent):void
         {
            me.§=!?§ = null;
            me.onError(param1.text);
         });
         var _loc4_:Boolean = false;
         var _loc5_:URLVariables = new URLVariables();
         var _loc6_:§%R§ = params.h;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.§"3§;
            _loc6_ = _loc6_.next;
            _loc8_ = _loc7_;
            _loc4_ = true;
            _loc5_[_loc8_.param] = _loc8_.value;
         }
         var _loc9_:String = §]Q§;
         if(_loc4_ && !param1)
         {
            _loc10_ = §]Q§.split("?");
            if(int(_loc10_.length) > 1)
            {
               _loc9_ = _loc10_.shift();
               _loc5_.decode(_loc10_.join("?"));
            }
         }
         _loc10_ = _loc9_.split("xxx");
         var _loc11_:URLRequest = new URLRequest(_loc9_);
         _loc6_ = §6!`§.h;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.§"3§;
            _loc6_ = _loc6_.next;
            _loc8_ = _loc7_;
            _loc11_.requestHeaders.push(new URLRequestHeader(_loc8_.header,_loc8_.value));
         }
         if(§,I§ != null)
         {
            _loc11_.data = §,I§;
            _loc11_.method = "POST";
         }
         else
         {
            _loc11_.data = _loc5_;
            _loc11_.method = param1 ? "POST" : "GET";
         }
         try
         {
            loader.load(_loc11_);
         }
         catch(_loc_e_:*)
         {
            me.§=!?§ = null;
            onError("Exception: " + Std.string(_loc7_));
            return;
         }
      }
   }
}

