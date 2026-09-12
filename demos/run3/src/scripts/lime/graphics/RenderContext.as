package lime.graphics
{
   import §5!X§.§%Z§;
   import flash.Boot;
   import flash.display.Sprite;
   
   public final class RenderContext
   {
      
      public static const __isenum:Boolean = true;
      
      public static var NONE:RenderContext = new RenderContext("NONE",7,null);
      
      public static var __constructs__:Array = ["OPENGL","CANVAS","DOM","FLASH","CAIRO","CONSOLE","CUSTOM","NONE"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function RenderContext(param1:String, param2:int, param3:Array)
      {
         tag = param1;
         index = param2;
         params = param3;
      }
      
      public static function CAIRO(param1:§%Z§) : RenderContext
      {
         return new RenderContext("CAIRO",4,[param1]);
      }
      
      public static function CANVAS(param1:CanvasRenderContext) : RenderContext
      {
         return new RenderContext("CANVAS",1,[param1]);
      }
      
      public static function CONSOLE(param1:§!@§) : RenderContext
      {
         return new RenderContext("CONSOLE",5,[param1]);
      }
      
      public static function CUSTOM(param1:*) : RenderContext
      {
         return new RenderContext("CUSTOM",6,[param1]);
      }
      
      public static function DOM(param1:DOMRenderContext) : RenderContext
      {
         return new RenderContext("DOM",2,[param1]);
      }
      
      public static function FLASH(param1:Sprite) : RenderContext
      {
         return new RenderContext("FLASH",3,[param1]);
      }
      
      public static function OPENGL(param1:GLRenderContext) : RenderContext
      {
         return new RenderContext("OPENGL",0,[param1]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

