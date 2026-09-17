package lime
{
   import §&!4§.Font;
   import lime.app.§?!5§;
   import lime.audio.AudioBuffer;
   import lime.graphics.Image;
   import lime.utils.§=!%§;
   
   public class AssetLibrary
   {
      
      public var §7Z§:§?!5§ = new §?!5§();
      
      public function AssetLibrary()
      {
      }
      
      public function unload() : void
      {
      }
      
      public function isLocal(param1:String, param2:String) : Boolean
      {
         return true;
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:§=!%§ = getBytes(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.§5^§(0,_loc2_.length);
      }
      
      public function getImage(param1:String) : Image
      {
         return null;
      }
      
      public function getFont(param1:String) : Font
      {
         return null;
      }
      
      public function getBytes(param1:String) : §=!%§
      {
         return null;
      }
      
      public function getAudioBuffer(param1:String) : AudioBuffer
      {
         return null;
      }
      
      public function exists(param1:String, param2:String) : Boolean
      {
         return false;
      }
   }
}

