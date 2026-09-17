package §"!M§
{
   import §!!$§.§ 6§;
   import §>T§.§[C§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import flash.Boot;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §[!7§ extends §!!P§
   {
      
      public var §?!S§:Number;
      
      public var §3!Y§:Number;
      
      public var § !+§:Number;
      
      public function §[!7§(param1:Number, param2:Number = 0, param3:Number = 0)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               super();
               if(!_loc5_)
               {
                  break;
               }
               § !+§ = param1;
               if(!_loc5_)
               {
                  break;
               }
               §3!Y§ = param2;
               if(_loc4_)
               {
                  break;
               }
            }
            §?!S§ = param3;
            break;
         }
      }
      
      override public function §9U§(param1:CharacterBase, param2:§[C§, param3:Point3D) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            param1.applyForce3D(§ !+§,§3!Y§,§?!S§);
         }
         return true;
      }
   }
}

