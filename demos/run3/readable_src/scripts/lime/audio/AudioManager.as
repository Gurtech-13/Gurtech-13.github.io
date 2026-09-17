package lime.audio
{
   public class AudioManager
   {
      
      public static var context:AudioContext;
      
      public function AudioManager()
      {
      }
      
      public static function init(param1:AudioContext = undefined) : void
      {
         if(AudioManager.context == null)
         {
            if(param1 == null)
            {
               AudioManager.context = AudioContext.FLASH(new FlashAudioContext());
            }
            else
            {
               AudioManager.context = param1;
            }
         }
      }
   }
}

