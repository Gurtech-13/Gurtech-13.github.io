package §-d§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import geom3d.Transform;
   import §<&§.§>!A§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.save.§-Q§;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class §7!]§ extends §9!@§
   {
      
      public static var instance:§7!]§;
      
      public function §7!]§()
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super();
         }
         var _loc1_:§!!-§ = new §!!-§(50,22);
         var _loc2_:§!!-§ = new §!!-§(28,22);
         §§push([new §!!-§(61,11),new §!!-§(50,11)]);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            run = new §1M§(_loc1_,_loc2_,new §9=§(Vector.<§!!-§>(_loc3_),true));
         }
      }
      
      public static function §@!A§() : §7!]§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §7!]§;
         if(!_loc3_)
         {
            if(§7!]§.instance != null)
            {
               return §7!]§.instance;
            }
         }
         return §7!]§.instance = new §7!]§();
      }
   }
}

