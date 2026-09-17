package haxe.io
{
   import flash.Boot;
   import flash.utils.ByteArray;
   
   public class §=!%§
   {
      
      public var length:int;
      
      public var b:ByteArray;
      
      public function §=!%§(param1:int, param2:ByteArray)
      {
         length = param1;
         b = param2;
         param2.endian = "littleEndian";
      }
      
      public static function §0$§(param1:int) : §=!%§
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.length = param1;
         return new §=!%§(param1,_loc2_);
      }
      
      public static function §;!@§(param1:String) : §=!%§
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         return new §=!%§(_loc2_.length,_loc2_);
      }
      
      public static function §=!C§(param1:ByteArray) : §=!%§
      {
         return new §=!%§(param1.length,param1);
      }
      
      public function §5^§(param1:int, param2:int) : String
      {
         if(param1 < 0 || param2 < 0 || param1 + param2 > length)
         {
            Boot.lastError = new Error();
            throw haxe.io.Error.OutsideBounds;
         }
         b.position = param1;
         return b.readUTFBytes(param2);
      }
   }
}

