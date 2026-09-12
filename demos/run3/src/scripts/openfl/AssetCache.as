package openfl
{
   import flash.display.BitmapData;
   import flash.text.Font;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class AssetCache implements §9#§
   {
      
      public var sound:§=!U§ = new StringMap();
      
      public var font:§=!U§ = new StringMap();
      
      public var bitmapData:§=!U§ = new StringMap();
      
      public var §^t§:Boolean = true;
      
      public function AssetCache()
      {
      }
      
      public function §7!J§(param1:String, param2:Font) : void
      {
         var _loc3_:StringMap = font;
         if(param1 in StringMap.§+!#§)
         {
            _loc3_.setReserved(param1,param2);
         }
         else
         {
            _loc3_.h[param1] = param2;
         }
      }
      
      public function §&!G§(param1:String, param2:BitmapData) : void
      {
         var _loc3_:StringMap = bitmapData;
         if(param1 in StringMap.§+!#§)
         {
            _loc3_.setReserved(param1,param2);
         }
         else
         {
            _loc3_.h[param1] = param2;
         }
      }
      
      public function §8!!§(param1:String) : Boolean
      {
         var _loc2_:StringMap = font;
         if(param1 in StringMap.§+!#§)
         {
            return _loc2_.existsReserved(param1);
         }
         return param1 in _loc2_.h;
      }
      
      public function §[!W§(param1:String) : Boolean
      {
         var _loc2_:StringMap = bitmapData;
         if(param1 in StringMap.§+!#§)
         {
            return _loc2_.existsReserved(param1);
         }
         return param1 in _loc2_.h;
      }
      
      public function §[!=§() : Boolean
      {
         return §^t§;
      }
      
      public function getFont(param1:String) : Font
      {
         var _loc2_:StringMap = font;
         if(param1 in StringMap.§+!#§)
         {
            return _loc2_.getReserved(param1);
         }
         return _loc2_.h[param1];
      }
      
      public function getBitmapData(param1:String) : BitmapData
      {
         var _loc2_:StringMap = bitmapData;
         if(param1 in StringMap.§+!#§)
         {
            return _loc2_.getReserved(param1);
         }
         return _loc2_.h[param1];
      }
   }
}

