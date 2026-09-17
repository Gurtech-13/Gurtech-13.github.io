package com.player03.run3
{
   import §!!$§.§ 6§;
   import scenes.Boring;
   import scenes.Cutscenes;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class Music
   {
      
      public static var init__:Boolean;
      
      public static var §,!0§:Vector.<String>;
      
      public function Music()
      {
      }
      
      public static function §-!U§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(param1);
         if(_loc3_)
         {
            if(§§pop() == "MapOfTheStars")
            {
               return "TravelTheGalaxy";
            }
            return param1;
         }
      }
      
      public static function §-!V§(param1:String) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push("music/");
         if(!_loc3_)
         {
            §§push(Music.§-!U§(param1));
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(§§pop() + §§pop());
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() + ".mp3");
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  return §§pop();
               }
            }
         }
         return §§pop();
      }
   }
}

