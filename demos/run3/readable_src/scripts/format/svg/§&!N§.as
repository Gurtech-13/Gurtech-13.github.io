package format.svg
{
   import flash.Boot;
   
   public final class §&!N§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var __constructs__:Array = ["DisplayPath","DisplayGroup","DisplayText"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §&!N§(param1:String, param2:int, param3:Array)
      {
         tag = param1;
         index = param2;
         params = param3;
      }
      
      public static function DisplayGroup(param1:§[!I§) : §&!N§
      {
         return new §&!N§("DisplayGroup",1,[param1]);
      }
      
      public static function DisplayPath(param1:Path) : §&!N§
      {
         return new §&!N§("DisplayPath",0,[param1]);
      }
      
      public static function DisplayText(param1:§&!S§) : §&!N§
      {
         return new §&!N§("DisplayText",2,[param1]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

