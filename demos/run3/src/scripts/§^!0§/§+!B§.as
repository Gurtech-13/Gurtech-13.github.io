package §^!0§
{
   import flash.Boot;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   
   public class §+!B§
   {
      
      public function §+!B§()
      {
      }
      
      public static function §`!&§(param1:String, param2:String, param3:String, param4:String, param5:Function) : void
      {
         var onSecurityError:Function;
         var onError:Function;
         var onSuccess:Function;
         var onHttpStatus:Function;
         var cleanup:Function;
         var loader:URLLoader;
         var gotHttpStatus:int;
         var onComplete:Function = param5;
         var _loc6_:URLRequest = new URLRequest(param1);
         _loc6_.method = "POST";
         if(param2 != null)
         {
            _loc6_.contentType = "application/json";
            _loc6_.data = param2;
         }
         if(param3 != null)
         {
            _loc6_.requestHeaders.push(new URLRequestHeader(param3,param4));
         }
         _loc6_.requestHeaders.push(new URLRequestHeader("X-PlayFabSDK",§7h§.§!!+§()));
         gotHttpStatus = 0;
         loader = null;
         cleanup = null;
         onHttpStatus = function(param1:HTTPStatusEvent):void
         {
            gotHttpStatus = param1.status;
         };
         onSuccess = function(param1:Event):void
         {
            cleanup();
            var _loc2_:* = JSON.parse(loader.data);
            if(gotHttpStatus == 200)
            {
               onComplete(_loc2_.data,null);
            }
            else
            {
               onComplete(null,new §%2§(_loc2_.data));
            }
         };
         onError = function(param1:IOErrorEvent):void
         {
            var _loc3_:* = null as §%2§;
            var _loc4_:* = null;
            var _loc5_:* = null as String;
            var _loc6_:* = null as String;
            cleanup();
            if(param1.currentTarget != null)
            {
               try
               {
                  _loc4_ = JSON.parse(param1.currentTarget.data);
                  _loc3_ = new §%2§(_loc4_);
               }
               catch(_loc_e_:*)
               {
                  _loc5_ = "HTTP ERROR:" + gotHttpStatus;
                  _loc6_ = param1.toString();
                  _loc3_ = new §%2§({
                     "httpCode":_loc5_,
                     "httpStatus":gotHttpStatus,
                     "error":"NetworkIOError",
                     "errorCode":2,
                     "errorMessage":_loc6_
                  });
               }
            }
            else
            {
               _loc5_ = "HTTP ERROR:" + gotHttpStatus;
               _loc6_ = param1.toString();
               _loc3_ = new §%2§({
                  "httpCode":_loc5_,
                  "httpStatus":gotHttpStatus,
                  "error":"NetworkIOError",
                  "errorCode":2,
                  "errorMessage":_loc6_
               });
            }
            onComplete(null,_loc3_);
         };
         onSecurityError = function(param1:SecurityErrorEvent):void
         {
            cleanup();
            var _loc2_:String = "HTTP ERROR:" + gotHttpStatus;
            var _loc3_:String = param1.toString();
            var _loc4_:§%2§ = new §%2§({
               "httpCode":_loc2_,
               "httpStatus":gotHttpStatus,
               "error":"FlashSecurityError",
               "errorCode":3,
               "errorMessage":_loc3_
            });
            onComplete(null,_loc4_);
         };
         cleanup = function():void
         {
            loader.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHttpStatus);
            loader.removeEventListener(Event.COMPLETE,onSuccess);
            loader.removeEventListener(IOErrorEvent.IO_ERROR,onError);
            loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         };
         loader = new URLLoader();
         loader.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHttpStatus);
         loader.addEventListener(Event.COMPLETE,onSuccess);
         loader.addEventListener(IOErrorEvent.IO_ERROR,onError);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         loader.load(_loc6_);
      }
   }
}

