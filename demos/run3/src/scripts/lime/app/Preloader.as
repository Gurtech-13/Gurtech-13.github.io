package lime.app
{
   import flash.Lib;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   
   public class Preloader extends Sprite
   {
      
      public var §,!V§:§!T§ = new §!T§();
      
      public var onComplete:§?!5§ = new §?!5§();
      
      public var complete:Boolean;
      
      public function Preloader()
      {
         super();
         §,!V§.add(update);
      }
      
      public function update(param1:int, param2:int) : void
      {
      }
      
      public function start() : void
      {
         complete = true;
         if(Boolean(Lib.current.contains(this)))
         {
            Lib.current.removeChild(this);
         }
         onComplete.§[!S§();
      }
      
      public function loaderInfo_onProgress(param1:ProgressEvent) : void
      {
         §,!V§.§[!S§(Lib.current.loaderInfo.bytesLoaded,Lib.current.loaderInfo.bytesTotal);
      }
      
      public function loaderInfo_onInit(param1:Event) : void
      {
         §,!V§.§[!S§(Lib.current.loaderInfo.bytesLoaded,Lib.current.loaderInfo.bytesTotal);
      }
      
      public function loaderInfo_onComplete(param1:Event) : void
      {
         complete = true;
         §,!V§.§[!S§(Lib.current.loaderInfo.bytesLoaded,Lib.current.loaderInfo.bytesTotal);
      }
      
      public function current_onEnter(param1:Event) : void
      {
         if(!complete && Lib.current.loaderInfo.bytesLoaded == Lib.current.loaderInfo.bytesTotal)
         {
            complete = true;
            §,!V§.§[!S§(Lib.current.loaderInfo.bytesLoaded,Lib.current.loaderInfo.bytesTotal);
         }
         if(complete)
         {
            Lib.current.removeEventListener(Event.ENTER_FRAME,current_onEnter);
            Lib.current.loaderInfo.removeEventListener(Event.COMPLETE,loaderInfo_onComplete);
            Lib.current.loaderInfo.removeEventListener(Event.INIT,loaderInfo_onInit);
            Lib.current.loaderInfo.removeEventListener(ProgressEvent.PROGRESS,loaderInfo_onProgress);
            start();
         }
      }
      
      public function create(param1:Object) : void
      {
         Lib.current.addChild(this);
         Lib.current.loaderInfo.addEventListener(Event.COMPLETE,loaderInfo_onComplete);
         Lib.current.loaderInfo.addEventListener(Event.INIT,loaderInfo_onInit);
         Lib.current.loaderInfo.addEventListener(ProgressEvent.PROGRESS,loaderInfo_onProgress);
         Lib.current.addEventListener(Event.ENTER_FRAME,current_onEnter);
      }
   }
}

