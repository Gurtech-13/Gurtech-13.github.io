package
{
   import §!!$§.§ 6§;
   import §!i§.§#A§;
   import §-!!§.§,C§;
   import §4n§.§!L§;
   import §4n§.Achievements;
   import §6[§.§>3§;
   import com.player03.layout.§ 7§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point2DUtils;
   
   public class Std
   {
      
      public function Std()
      {
      }
      
      public static function §is§(param1:*, param2:*) : Boolean
      {
         return Boot.__instanceof(param1,param2);
      }
      
      public static function string(param1:*) : String
      {
         return Boot.__string_rec(param1,"");
      }
      
      public static function parseInt(param1:String) : Object
      {
         var _loc2_:* = parseInt(param1);
         if(isNaN(_loc2_))
         {
            return null;
         }
         return _loc2_;
      }
      
      public static function parseFloat(param1:String) : Number
      {
         return parseFloat(param1);
      }
   }
}

