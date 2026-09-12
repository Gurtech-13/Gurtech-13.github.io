package lime
{
   import §&!4§.Font;
   import haxe.§=!U§;
   import haxe.Log;
   import haxe.ds.StringMap;
   import lime.app.§?!5§;
   import lime.audio.AudioBuffer;
   import lime.graphics.Image;
   
   public class Assets
   {
      
      public static var init__:Boolean;
      
      public static var cache:AssetCache;
      
      public static var libraries:§=!U§;
      
      public static var §7Z§:§?!5§;
      
      public static var initialized:Boolean = false;
      
      public function Assets()
      {
      }
      
      public static function exists(param1:String, param2:String = undefined) : Boolean
      {
         Assets.initialize();
         if(param2 == null)
         {
            param2 = "BINARY";
         }
         var _loc3_:String = param1.substring(0,int(param1.indexOf(":")));
         var _loc4_:String = param1.substr(int(param1.indexOf(":")) + 1);
         var _loc5_:AssetLibrary = Assets.getLibrary(_loc3_);
         if(_loc5_ != null)
         {
            return _loc5_.exists(_loc4_,param2);
         }
         return false;
      }
      
      public static function getAudioBuffer(param1:String, param2:Boolean = true) : AudioBuffer
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = null as StringMap;
         var _loc5_:* = null as AudioBuffer;
         Assets.initialize();
         if(param2 && Assets.cache.enabled)
         {
            _loc4_ = Assets.cache.audio;
            if(param1 in StringMap.§+!#§)
            {
               _loc3_ = _loc4_.existsReserved(param1);
            }
            else
            {
               _loc3_ = param1 in _loc4_.h;
            }
         }
         else
         {
            _loc3_ = false;
         }
         if(_loc3_)
         {
            _loc4_ = Assets.cache.audio;
            _loc5_ = param1 in StringMap.§+!#§ ? _loc4_.getReserved(param1) : _loc4_.h[param1];
            if(Assets.§14§(_loc5_))
            {
               return _loc5_;
            }
         }
         var _loc6_:String = param1.substring(0,int(param1.indexOf(":")));
         var _loc7_:String = param1.substr(int(param1.indexOf(":")) + 1);
         var _loc8_:AssetLibrary = Assets.getLibrary(_loc6_);
         if(_loc8_ != null)
         {
            if(_loc8_.exists(_loc7_,"SOUND"))
            {
               if(_loc8_.isLocal(_loc7_,"SOUND"))
               {
                  _loc5_ = _loc8_.getAudioBuffer(_loc7_);
                  if(param2 && Assets.cache.enabled)
                  {
                     _loc4_ = Assets.cache.audio;
                     if(param1 in StringMap.§+!#§)
                     {
                        _loc4_.setReserved(param1,_loc5_);
                     }
                     else
                     {
                        _loc4_.h[param1] = _loc5_;
                     }
                  }
                  return _loc5_;
               }
               Log.trace("[Assets] Audio asset \"" + param1 + "\" exists, but only asynchronously",{
                  "fileName":"Assets.hx",
                  "lineNumber":122,
                  "className":"lime.Assets",
                  "methodName":"getAudioBuffer"
               });
            }
            else
            {
               Log.trace("[Assets] There is no audio asset with an ID of \"" + param1 + "\"",{
                  "fileName":"Assets.hx",
                  "lineNumber":128,
                  "className":"lime.Assets",
                  "methodName":"getAudioBuffer"
               });
            }
         }
         else
         {
            Log.trace("[Assets] There is no asset library named \"" + _loc6_ + "\"",{
               "fileName":"Assets.hx",
               "lineNumber":134,
               "className":"lime.Assets",
               "methodName":"getAudioBuffer"
            });
         }
         return null;
      }
      
      public static function getFont(param1:String, param2:Boolean = true) : Font
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = null as StringMap;
         var _loc8_:* = null as Font;
         Assets.initialize();
         if(param2 && Assets.cache.enabled)
         {
            _loc4_ = Assets.cache.font;
            if(param1 in StringMap.§+!#§)
            {
               _loc3_ = _loc4_.existsReserved(param1);
            }
            else
            {
               _loc3_ = param1 in _loc4_.h;
            }
         }
         else
         {
            _loc3_ = false;
         }
         if(_loc3_)
         {
            _loc4_ = Assets.cache.font;
            if(param1 in StringMap.§+!#§)
            {
               return _loc4_.getReserved(param1);
            }
            return _loc4_.h[param1];
         }
         var _loc5_:String = param1.substring(0,int(param1.indexOf(":")));
         var _loc6_:String = param1.substr(int(param1.indexOf(":")) + 1);
         var _loc7_:AssetLibrary = Assets.getLibrary(_loc5_);
         if(_loc7_ != null)
         {
            if(_loc7_.exists(_loc6_,"FONT"))
            {
               if(_loc7_.isLocal(_loc6_,"FONT"))
               {
                  _loc8_ = _loc7_.getFont(_loc6_);
                  if(param2 && Assets.cache.enabled)
                  {
                     _loc4_ = Assets.cache.font;
                     if(param1 in StringMap.§+!#§)
                     {
                        _loc4_.setReserved(param1,_loc8_);
                     }
                     else
                     {
                        _loc4_.h[param1] = _loc8_;
                     }
                  }
                  return _loc8_;
               }
               Log.trace("[Assets] Font asset \"" + param1 + "\" exists, but only asynchronously",{
                  "fileName":"Assets.hx",
                  "lineNumber":234,
                  "className":"lime.Assets",
                  "methodName":"getFont"
               });
            }
            else
            {
               Log.trace("[Assets] There is no Font asset with an ID of \"" + param1 + "\"",{
                  "fileName":"Assets.hx",
                  "lineNumber":240,
                  "className":"lime.Assets",
                  "methodName":"getFont"
               });
            }
         }
         else
         {
            Log.trace("[Assets] There is no asset library named \"" + _loc5_ + "\"",{
               "fileName":"Assets.hx",
               "lineNumber":246,
               "className":"lime.Assets",
               "methodName":"getFont"
            });
         }
         return null;
      }
      
      public static function getImage(param1:String, param2:Boolean = true) : Image
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = null as StringMap;
         var _loc5_:* = null as Image;
         Assets.initialize();
         if(param2 && Assets.cache.enabled)
         {
            _loc4_ = Assets.cache.image;
            if(param1 in StringMap.§+!#§)
            {
               _loc3_ = _loc4_.existsReserved(param1);
            }
            else
            {
               _loc3_ = param1 in _loc4_.h;
            }
         }
         else
         {
            _loc3_ = false;
         }
         if(_loc3_)
         {
            _loc4_ = Assets.cache.image;
            _loc5_ = param1 in StringMap.§+!#§ ? _loc4_.getReserved(param1) : _loc4_.h[param1];
            if(Assets.isValidImage(_loc5_))
            {
               return _loc5_;
            }
         }
         var _loc6_:String = param1.substring(0,int(param1.indexOf(":")));
         var _loc7_:String = param1.substr(int(param1.indexOf(":")) + 1);
         var _loc8_:AssetLibrary = Assets.getLibrary(_loc6_);
         if(_loc8_ != null)
         {
            if(_loc8_.exists(_loc7_,"IMAGE"))
            {
               if(_loc8_.isLocal(_loc7_,"IMAGE"))
               {
                  _loc5_ = _loc8_.getImage(_loc7_);
                  if(param2 && Assets.cache.enabled)
                  {
                     _loc4_ = Assets.cache.image;
                     if(param1 in StringMap.§+!#§)
                     {
                        _loc4_.setReserved(param1,_loc5_);
                     }
                     else
                     {
                        _loc4_.h[param1] = _loc5_;
                     }
                  }
                  return _loc5_;
               }
               Log.trace("[Assets] Image asset \"" + param1 + "\" exists, but only asynchronously",{
                  "fileName":"Assets.hx",
                  "lineNumber":304,
                  "className":"lime.Assets",
                  "methodName":"getImage"
               });
            }
            else
            {
               Log.trace("[Assets] There is no Image asset with an ID of \"" + param1 + "\"",{
                  "fileName":"Assets.hx",
                  "lineNumber":310,
                  "className":"lime.Assets",
                  "methodName":"getImage"
               });
            }
         }
         else
         {
            Log.trace("[Assets] There is no asset library named \"" + _loc6_ + "\"",{
               "fileName":"Assets.hx",
               "lineNumber":316,
               "className":"lime.Assets",
               "methodName":"getImage"
            });
         }
         return null;
      }
      
      public static function getLibrary(param1:String) : AssetLibrary
      {
         if(param1 == null || param1 == "")
         {
            param1 = "default";
         }
         var _loc2_:StringMap = Assets.libraries;
         if(param1 in StringMap.§+!#§)
         {
            return _loc2_.getReserved(param1);
         }
         return _loc2_.h[param1];
      }
      
      public static function getText(param1:String) : String
      {
         Assets.initialize();
         var _loc2_:String = param1.substring(0,int(param1.indexOf(":")));
         var _loc3_:String = param1.substr(int(param1.indexOf(":")) + 1);
         var _loc4_:AssetLibrary = Assets.getLibrary(_loc2_);
         if(_loc4_ != null)
         {
            if(_loc4_.exists(_loc3_,"TEXT"))
            {
               if(_loc4_.isLocal(_loc3_,"TEXT"))
               {
                  return _loc4_.getText(_loc3_);
               }
               Log.trace("[Assets] String asset \"" + param1 + "\" exists, but only asynchronously",{
                  "fileName":"Assets.hx",
                  "lineNumber":407,
                  "className":"lime.Assets",
                  "methodName":"getText"
               });
            }
            else
            {
               Log.trace("[Assets] There is no String asset with an ID of \"" + param1 + "\"",{
                  "fileName":"Assets.hx",
                  "lineNumber":413,
                  "className":"lime.Assets",
                  "methodName":"getText"
               });
            }
         }
         else
         {
            Log.trace("[Assets] There is no asset library named \"" + _loc2_ + "\"",{
               "fileName":"Assets.hx",
               "lineNumber":419,
               "className":"lime.Assets",
               "methodName":"getText"
            });
         }
         return null;
      }
      
      public static function initialize() : void
      {
         if(!Assets.initialized)
         {
            Assets.registerLibrary("default",new DefaultAssetLibrary());
            Assets.initialized = true;
         }
      }
      
      public static function §14§(param1:AudioBuffer) : Boolean
      {
         return param1 != null;
      }
      
      public static function isValidImage(param1:Image) : Boolean
      {
         return param1 != null;
      }
      
      public static function registerLibrary(param1:String, param2:AssetLibrary) : void
      {
         var _loc4_:* = null as StringMap;
         var _loc3_:StringMap = Assets.libraries;
         if(param1 in StringMap.§+!#§ ? _loc3_.existsReserved(param1) : param1 in _loc3_.h)
         {
            _loc4_ = Assets.libraries;
            if((param1 in StringMap.§+!#§ ? _loc4_.getReserved(param1) : _loc4_.h[param1]) == param2)
            {
               return;
            }
            Assets.unloadLibrary(param1);
         }
         if(param2 != null)
         {
            param2.§7Z§.add(Assets.§5d§);
         }
         _loc4_ = Assets.libraries;
         if(param1 in StringMap.§+!#§)
         {
            _loc4_.setReserved(param1,param2);
         }
         else
         {
            _loc4_.h[param1] = param2;
         }
      }
      
      public static function unloadLibrary(param1:String) : void
      {
         Assets.initialize();
         var _loc2_:StringMap = Assets.libraries;
         var _loc3_:AssetLibrary = param1 in StringMap.§+!#§ ? _loc2_.getReserved(param1) : _loc2_.h[param1];
         if(_loc3_ != null)
         {
            Assets.cache.clear(param1 + ":");
            _loc3_.§7Z§.remove(Assets.§5d§);
            _loc3_.unload();
         }
         Assets.libraries.remove(param1);
      }
      
      public static function §5d§() : void
      {
         Assets.cache.clear();
         Assets.§7Z§.§[!S§();
      }
   }
}

