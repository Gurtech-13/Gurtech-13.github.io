package format.svg
{
   import flash.Boot;
   
   public final class §'#§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var FillNone:§'#§ = new §'#§("FillNone",2,null);
      
      public static var __constructs__:Array = ["FillGrad","FillSolid","FillNone"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §'#§(param1:String, param2:int, param3:Array)
      {
         tag = param1;
         index = param2;
         params = param3;
      }
      
      public static function FillGrad(param1:§9!Z§) : §'#§
      {
         return new §'#§("FillGrad",0,[param1]);
      }
      
      public static function FillSolid(param1:int) : §'#§
      {
         return new §'#§("FillSolid",1,[param1]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

