package §!!$§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §-d§.§!!-§;
   import §-d§.§-!'§;
   import §>T§.§"=§;
   import §>T§.§@o§;
   import §>T§.§[C§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   
   public class §?y§ extends § 7§
   {
      
      public var § v§:DisplayObject;
      
      public function §?y§(param1:DisplayObject)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               § v§ = param1;
               if(_loc2_)
               {
                  break;
               }
               super();
               if(_loc2_)
               {
                  break;
               }
            }
            §0!7§ = param1.width / param1.scaleX;
            if(!_loc2_)
            {
               §0!]§ = param1.height / param1.scaleY;
            }
            break;
         }
      }
      
      override public function §=!=§(param1:Number) : Number
      {
         return § v§.y = param1;
      }
      
      override public function §;g§(param1:Number) : Number
      {
         return § v§.x = param1;
      }
      
      override public function §"!§(param1:Number) : Number
      {
         return § v§.width = param1;
      }
      
      override public function §&s§(param1:Number) : Number
      {
         return § v§.height = param1;
      }
      
      override public function §1C§() : Number
      {
         return § v§.y;
      }
      
      override public function §[![§() : Number
      {
         return § v§.x;
      }
      
      override public function §;c§() : Number
      {
         return § v§.width;
      }
      
      override public function §@7§() : *
      {
         return § v§;
      }
      
      override public function §5`§() : Number
      {
         return § v§.height;
      }
   }
}

