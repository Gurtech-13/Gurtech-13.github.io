package §-d§
{
   import §!!$§.§ 6§;
   import scenes.Cutscenes;
   import scenes.Teapot;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   
   public class §-!4§ extends §9!@§
   {
      
      public static var instance:§-!4§;
      
      public function §-!4§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super();
               if(!_loc2_)
               {
                  break;
               }
               run = run.clone();
               if(!_loc2_)
               {
                  break;
               }
            }
            var _temp_2:* = run;
            §§push(_temp_2);
            §§push(_temp_2.fps);
            if(_loc2_)
            {
               §§push(§§pop() * 0.9);
            }
            §§pop().fps = §§pop();
            break;
         }
      }
      
      public static function §@!A§() : §-!4§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §-!4§;
         if(_loc3_)
         {
            if(§-!4§.instance != null)
            {
               return §-!4§.instance;
            }
         }
         return §-!4§.instance = new §-!4§();
      }
   }
}

