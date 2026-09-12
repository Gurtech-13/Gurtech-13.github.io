package §!!0§
{
   import flash.utils.ByteArray;
   
   public class §+I§
   {
      
      public var version:int;
      
      public var name:String;
      
      public var data:ByteArray;
      
      public function §+I§(param1:String = undefined, param2:int = 0)
      {
         if(param1 == null)
         {
            param1 = "";
         }
         name = param1;
         version = param2;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.length = 0;
         data = _loc3_;
         data.endian = "littleEndian";
      }
   }
}

