package §0!J§
{
   import §!!$§.§ 6§;
   import §!D§.§0!M§;
   import map.Map;
   import §%!Q§.§ !>§;
   import §%!Q§.§=e§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import scenes.BoatRide;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§59§;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   import haxe.Log;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §;![§ extends EventDispatcher
   {
      
      public static var instance:§;![§;
      
      public var § 9§:Function;
      
      public function §;![§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super();
               if(_loc2_)
               {
                  break;
               }
               §§push(§§findproperty(§ 9§));
               §§push(Log.trace);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().§ 9§ = §§pop();
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(Log);
            §§push(§3+§);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().trace = §§pop();
            break;
         }
      }
      
      public static function §@!A§() : §;![§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§;![§.instance == null)
         {
            if(_loc2_)
            {
               §;![§.instance = new §;![§();
            }
         }
         return §;![§.instance;
      }
      
      public function §3+§(param1:*, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            § 9§(param1,param2);
            if(!_loc4_)
            {
               dispatchEvent(new §]`§(param1,param2));
            }
         }
      }
   }
}

