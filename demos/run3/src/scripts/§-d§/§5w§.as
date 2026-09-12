package §-d§
{
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import haxeutils.sound.AdvancedSound;
   
   public class §5w§ extends §9!@§
   {
      
      public static var instance:§5w§;
      
      public function §5w§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super();
               if(_loc2_)
               {
                  break;
               }
            }
            run = run.clone();
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr005a);
         }
         var _temp_1:* = run;
         §§push(_temp_1);
         §§push(_temp_1.fps);
         if(!_loc2_)
         {
            §§push(§§pop() * 0.95);
         }
         §§pop().fps = §§pop();
         addr005a:
      }
      
      public static function §@!A§() : §5w§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §5w§;
         if(_loc3_)
         {
            if(§5w§.instance != null)
            {
               return §5w§.instance;
            }
         }
         return §5w§.instance = new §5w§();
      }
   }
}

