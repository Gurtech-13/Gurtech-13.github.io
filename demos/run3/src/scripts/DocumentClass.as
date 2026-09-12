package
{
   import com.player03.run3.Main;
   import flash.display.MovieClip;
   import flash.events.Event;
   import openfl.Lib;
   
   public class DocumentClass extends Main
   {
      
      public function DocumentClass()
      {
         Lib.get_current().addChild(this);
         super();
         dispatchEvent(new Event(Event.ADDED_TO_STAGE,false,false));
      }
   }
}

