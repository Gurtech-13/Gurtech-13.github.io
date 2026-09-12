package openfl.display
{
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxe.Timer;
   
   public class §%! § extends TextField
   {
      
      public var times:Array;
      
      public var §5y§:int;
      
      public var §"!"§:int;
      
      public function §%! §(param1:Number = 10, param2:Number = 10, param3:int = 0)
      {
         super();
         x = param1;
         y = param2;
         §5y§ = 0;
         selectable = false;
         mouseEnabled = false;
         defaultTextFormat = new TextFormat("_sans",12,param3);
         text = "FPS: ";
         §"!"§ = 0;
         times = [];
         addEventListener(Event.ENTER_FRAME,§#!5§);
      }
      
      public function §#!5§(param1:Event) : void
      {
         var _loc2_:Number = Timer.stamp();
         times.push(_loc2_);
         while(Number(times[0]) < _loc2_ - 1)
         {
            times.shift();
         }
         var _loc3_:int = int(times.length);
         §5y§ = int(Math.round((_loc3_ + §"!"§) / 2));
         if(_loc3_ != §"!"§)
         {
            text = "FPS: " + §5y§;
         }
         §"!"§ = _loc3_;
      }
   }
}

