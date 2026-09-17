package lime.graphics
{
   import flash.Boot;
   
   public final class §2!0§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var CAIRO:§2!0§ = new §2!0§("CAIRO",4,null);
      
      public static var CANVAS:§2!0§ = new §2!0§("CANVAS",1,null);
      
      public static var CONSOLE:§2!0§ = new §2!0§("CONSOLE",5,null);
      
      public static var CUSTOM:§2!0§ = new §2!0§("CUSTOM",6,null);
      
      public static var DOM:§2!0§ = new §2!0§("DOM",2,null);
      
      public static var FLASH:§2!0§ = new §2!0§("FLASH",3,null);
      
      public static var OPENGL:§2!0§ = new §2!0§("OPENGL",0,null);
      
      public static var __constructs__:Array = ["OPENGL","CANVAS","DOM","FLASH","CAIRO","CONSOLE","CUSTOM"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §2!0§(param1:String, param2:int, param3:Array)
      {
         tag = param1;
         index = param2;
         params = param3;
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

