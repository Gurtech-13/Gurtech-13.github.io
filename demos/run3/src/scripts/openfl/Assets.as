package openfl
{
   import §&!4§.Font;
   import flash.display.BitmapData;
   import flash.media.Sound;
   import flash.text.Font;
   import lime.Assets;
   import lime.audio.AudioBuffer;
   import lime.graphics.Image;
   
   public class Assets
   {
      
      public static var init__:Boolean;
      
      public static var cache:§9#§;
      
      public function Assets()
      {
      }
      
      public static function exists(param1:String, param2:String = undefined) : Boolean
      {
         return lime.Assets.exists(param1,param2);
      }
      
      public static function getBitmapData(param1:String, param2:Boolean = true) : BitmapData
      {
         var _loc3_:* = null as BitmapData;
         if(param2 && openfl.Assets.cache.§[!=§() && openfl.Assets.cache.§[!W§(param1))
         {
            _loc3_ = openfl.Assets.cache.getBitmapData(param1);
            if(openfl.Assets.isValidBitmapData(_loc3_))
            {
               return _loc3_;
            }
         }
         var _loc4_:Image = lime.Assets.getImage(param1,false);
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.get_src();
            if(param2 && openfl.Assets.cache.§[!=§())
            {
               openfl.Assets.cache.§&!G§(param1,_loc3_);
            }
            return _loc3_;
         }
         return null;
      }
      
      public static function getFont(param1:String, param2:Boolean = true) : flash.text.Font
      {
         var _loc4_:* = null as flash.text.Font;
         if(param2 && openfl.Assets.cache.§[!=§() && openfl.Assets.cache.§8!!§(param1))
         {
            return openfl.Assets.cache.getFont(param1);
         }
         var _loc3_:§&!4§.Font = lime.Assets.getFont(param1,false);
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.§;!Z§;
            if(param2 && openfl.Assets.cache.§[!=§())
            {
               openfl.Assets.cache.§7!J§(param1,_loc4_);
            }
            return _loc4_;
         }
         return new flash.text.Font();
      }
      
      public static function §,L§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc3_:AudioBuffer = lime.Assets.getAudioBuffer(param1,param2);
         if(_loc3_ != null)
         {
            return _loc3_.§;!Z§;
         }
         return null;
      }
      
      public static function getText(param1:String) : String
      {
         return lime.Assets.getText(param1);
      }
      
      public static function isValidBitmapData(param1:BitmapData) : Boolean
      {
         var _loc3_:* = null;
         try
         {
            return true;
         }
         catch(_loc_e_:*)
         {
         }
      }
   }
}

