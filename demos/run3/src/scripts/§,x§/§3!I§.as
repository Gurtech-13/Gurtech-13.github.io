package §,x§
{
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §-d§.§!!-§;
   import §[^§.§!A§;
   import §`_§.§7d§;
   import com.player03.run3.save.§]k§;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   import motion.easing.§!!W§;
   import motion.easing.IEasing;
   
   public class §3!I§
   {
      
      public var §['§:int;
      
      public var end:int;
      
      public var §#1§:int;
      
      public function §3!I§(param1:int, param2:int, param3:int)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(§§findproperty(§#1§));
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() - param3);
            }
            §§pop().§#1§ = §§pop();
            if(!_loc5_)
            {
               end = param2;
               if(!_loc5_)
               {
                  §['§ = param3;
               }
            }
         }
      }
      
      public function next() : int
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§3!I§ = this;
         if(!_loc2_)
         {
            §§push(_loc1_);
            §§push(_loc1_.§#1§);
            if(!_loc2_)
            {
               §§push(§§pop() + §['§);
            }
            §§pop().§#1§ = §§pop();
         }
         return _loc1_.§#1§;
      }
      
      public function hasNext() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§#1§ == end);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}

