package openfl.display
{
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import lime.app.Preloader;
   import openfl.Lib;
   
   public class Preloader extends lime.app.Preloader
   {
      
      public var display:Sprite;
      
      public function Preloader(param1:Sprite = undefined)
      {
         super();
         if(param1 != null)
         {
            display = param1;
            Lib.get_current().addChild(param1);
            if(param1 is NMEPreloader)
            {
               param1.§0!2§();
            }
         }
      }
      
      override public function update(param1:int, param2:int) : void
      {
         if(display != null && display is NMEPreloader)
         {
            display.onUpdate(param1,param2);
         }
      }
      
      override public function start() : void
      {
         if(display != null && display is NMEPreloader)
         {
            display.addEventListener(Event.COMPLETE,display_onComplete);
            display.onLoaded();
         }
         else
         {
            super.start();
         }
      }
      
      public function display_onComplete(param1:Event) : void
      {
         display.removeEventListener(Event.COMPLETE,display_onComplete);
         Lib.get_current().removeChild(display);
         Lib.get_current().stage.focus = null;
         display = null;
         super.start();
      }
   }
}

