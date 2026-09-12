package haxe
{
   import flash.Boot;
   
   public final class §6`§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var CFunction:§6`§ = new §6`§("CFunction",0,null);
      
      public static var __constructs__:Array = ["CFunction","Module","FilePos","Method","LocalFunction"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §6`§(param1:String, param2:int, param3:Array)
      {
         tag = param1;
         index = param2;
         params = param3;
      }
      
      public static function FilePos(param1:§6`§, param2:String, param3:int) : §6`§
      {
         return new §6`§("FilePos",2,[param1,param2,param3]);
      }
      
      public static function LocalFunction(param1:Object = undefined) : §6`§
      {
         return new §6`§("LocalFunction",4,[param1]);
      }
      
      public static function Method(param1:String, param2:String) : §6`§
      {
         return new §6`§("Method",3,[param1,param2]);
      }
      
      public static function Module(param1:String) : §6`§
      {
         return new §6`§("Module",1,[param1]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

