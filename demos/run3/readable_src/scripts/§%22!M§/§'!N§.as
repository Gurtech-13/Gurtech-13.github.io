package §"!M§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import layout3d.§"S§;
   import layout3d.§>N§;
   import layout3d.Layout3D;
   import layout3d.PositionData3D;
   import §>T§.§!=§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §@H§.§!7§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Point3D;
   
   public class §'!N§ extends §!!P§
   {
      
      public static var init__:Boolean;
      
      public static var §&!O§:§'!N§;
      
      public function §'!N§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function §9U§(param1:CharacterBase, param2:§[C§, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(param3.y < -1e-10)
         {
            if(_loc5_)
            {
               param1.§?`§.§@4§ = 0.6;
               if(_loc5_)
               {
                  §§push(param1);
                  §§push(param1.§"!2§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * 0.5);
                  }
                  §§pop().§"!+§ = §§pop();
               }
            }
         }
         return true;
      }
   }
}

