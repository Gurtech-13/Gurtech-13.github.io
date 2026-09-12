package §[!P§
{
   import §!!$§.§ 6§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §<!&§.§%!§;
   import §>!O§.§;R§;
   import com.player03.layout.§ 7§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   
   public class §@$§ extends §;R§
   {
      
      public var §1y§:Number;
      
      public function §@$§(param1:Boolean, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               super(param1);
               if(!_loc4_)
               {
                  break;
               }
            }
            §1y§ = param2;
            break;
         }
      }
      
      override public function § P§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param2);
         if(_loc5_)
         {
            §§push(§1y§);
            if(_loc5_)
            {
               §§push(§§pop() * param3);
            }
            return §§pop() - §§pop();
         }
      }
   }
}

