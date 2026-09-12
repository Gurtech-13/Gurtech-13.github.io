package lime
{
   import §!!"§.§,X§;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class AssetCache
   {
      
      public var version:int = 116827;
      
      public var image:§=!U§ = new StringMap();
      
      public var font:§=!U§ = new StringMap();
      
      public var enabled:Boolean = true;
      
      public var audio:§=!U§ = new StringMap();
      
      public function AssetCache()
      {
      }
      
      public function clear(param1:String = undefined) : void
      {
         var _loc2_:* = null as StringMap;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null as String;
         var _loc6_:* = null as StringMap;
         var _loc7_:* = null;
         var _loc8_:* = null as StringMap;
         var _loc9_:* = null;
         if(param1 == null)
         {
            audio = new StringMap();
            font = new StringMap();
            image = new StringMap();
         }
         else
         {
            _loc2_ = audio;
            _loc3_ = new §,X§(_loc2_.h,_loc2_.rh);
            _loc4_ = _loc3_;
            while(Boolean(_loc4_.hasNext()))
            {
               _loc5_ = _loc4_.next();
               if(StringTools.startsWith(_loc5_,param1))
               {
                  audio.remove(_loc5_);
               }
            }
            _loc6_ = font;
            _loc4_ = new §,X§(_loc6_.h,_loc6_.rh);
            _loc7_ = _loc4_;
            while(Boolean(_loc7_.hasNext()))
            {
               _loc5_ = _loc7_.next();
               if(StringTools.startsWith(_loc5_,param1))
               {
                  font.remove(_loc5_);
               }
            }
            _loc8_ = image;
            _loc7_ = new §,X§(_loc8_.h,_loc8_.rh);
            _loc9_ = _loc7_;
            while(Boolean(_loc9_.hasNext()))
            {
               _loc5_ = _loc9_.next();
               if(StringTools.startsWith(_loc5_,param1))
               {
                  image.remove(_loc5_);
               }
            }
         }
      }
   }
}

