package lime.audio
{
   import flash.Boot;
   
   public final class AudioContext
   {
      
      public static const __isenum:Boolean = true;
      
      public static var __constructs__:Array = ["OPENAL","HTML5","WEB","FLASH","CUSTOM"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function AudioContext(param1:String, param2:int, param3:Array)
      {
         tag = param1;
         index = param2;
         params = param3;
      }
      
      public static function CUSTOM(param1:*) : AudioContext
      {
         return new AudioContext("CUSTOM",4,[param1]);
      }
      
      public static function FLASH(param1:FlashAudioContext) : AudioContext
      {
         return new AudioContext("FLASH",3,[param1]);
      }
      
      public static function HTML5(param1:HTML5AudioContext) : AudioContext
      {
         return new AudioContext("HTML5",1,[param1]);
      }
      
      public static function OPENAL(param1:ALCAudioContext, param2:ALAudioContext) : AudioContext
      {
         return new AudioContext("OPENAL",0,[param1,param2]);
      }
      
      public static function WEB(param1:WebAudioContext) : AudioContext
      {
         return new AudioContext("WEB",2,[param1]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

