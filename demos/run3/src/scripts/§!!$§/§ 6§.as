package §!!$§
{
   import §!D§.§1!&§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.§8-§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.§[!M§;
   import com.player03.run3.level.§]!^§;
   import com.player03.run3.menu.§ L§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class § 6§ extends § 7§
   {
      
      public var §?N§:Rectangle;
      
      public function § 6§(param1:Rectangle)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §?N§ = param1;
               if(!_loc3_)
               {
                  break;
               }
            }
            super();
            break;
         }
      }
      
      override public function §=!=§(param1:Number) : Number
      {
         return §?N§.y = param1;
      }
      
      override public function §;g§(param1:Number) : Number
      {
         return §?N§.x = param1;
      }
      
      override public function §"!§(param1:Number) : Number
      {
         return §?N§.width = param1;
      }
      
      override public function §&s§(param1:Number) : Number
      {
         return §?N§.height = param1;
      }
      
      override public function §1C§() : Number
      {
         return §?N§.y;
      }
      
      override public function §[![§() : Number
      {
         return §?N§.x;
      }
      
      override public function §;c§() : Number
      {
         return §?N§.width;
      }
      
      override public function §@7§() : *
      {
         return §?N§;
      }
      
      override public function §5`§() : Number
      {
         return §?N§.height;
      }
   }
}

