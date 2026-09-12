package §%!Z§
{
   import §<?§.§#!7§;
   import com.player03.layout.§ 7§;
   import flash.display.Graphics;
   import flash.geom.Point;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §1T§ extends Point
   {
      
      public var §7!_§:§@![§;
      
      public var §[7§:§@![§;
      
      public function §1T§(param1:Number, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               §[7§ = new §@![§();
               if(!_loc3_)
               {
                  §7!_§ = new §@![§();
               }
            }
         }
      }
      
      public static function §^7§(param1:Graphics, param2:Vector.<§1T§>) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §1T§;
         §§push(param2);
         §§push(int(param2.length));
         if(!_loc6_)
         {
            §§push(§§pop() - 1);
         }
         var _loc3_:§1T§ = §§pop()[§§pop()];
         if(_loc7_)
         {
            param1.moveTo(_loc3_.x,_loc3_.y);
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            for(; _loc4_ < int(param2.length); _loc3_ = _loc5_)
            {
               _loc5_ = param2[_loc4_];
               if(!_loc6_)
               {
                  _loc4_++;
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               param1.cubicCurveTo(_loc3_.x + _loc3_.§7!_§.x,_loc3_.y + _loc3_.§7!_§.y,_loc5_.x + _loc5_.§[7§.x,_loc5_.y + _loc5_.§[7§.y,_loc5_.x,_loc5_.y);
            }
         }
      }
   }
}

