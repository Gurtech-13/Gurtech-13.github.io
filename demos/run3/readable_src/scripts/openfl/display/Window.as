package openfl.display
{
   import flash.display.MovieClip;
   import lime.app.Application;
   import lime.ui.Window;
   import openfl.Lib;
   
   public class Window extends lime.ui.Window
   {
      
      public function Window(param1:Object = undefined)
      {
         super(param1);
      }
      
      override public function create(param1:lime.app.Application) : void
      {
         super.create(param1);
         stage = Lib.get_current().stage;
      }
   }
}

