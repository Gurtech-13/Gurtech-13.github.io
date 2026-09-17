package §6!Q§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!D§.§1!&§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§+"§;
   import §4n§.§3!G§;
   import §4n§.Achievement;
   import game.§+B§;
   import game.§8A§;
   import game.Game;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§59§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.§@!J§;
   import flash.Boot;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import nme3D.model.Object3D;
   import nme3D.model.Model;
   
   public final class §^F§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var INVISIBLE:§^F§ = new §^F§("INVISIBLE",2,null);
      
      public static var __constructs__:Array = ["SOLID","TRANSPARENT","INVISIBLE","BITMAP","ROTATED_BITMAP"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §^F§(param1:String, param2:int, param3:Array)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               tag = param1;
               if(_loc4_)
               {
                  break;
               }
               index = param2;
               if(_loc4_)
               {
                  break;
               }
            }
            params = param3;
            break;
         }
      }
      
      public static function BITMAP(param1:BitmapData) : §^F§
      {
         return new §^F§("BITMAP",3,[param1]);
      }
      
      public static function ROTATED_BITMAP(param1:BitmapData, param2:Number) : §^F§
      {
         return new §^F§("ROTATED_BITMAP",4,[param1,param2]);
      }
      
      public static function SOLID(param1:int) : §^F§
      {
         return new §^F§("SOLID",0,[param1]);
      }
      
      public static function TRANSPARENT(param1:int, param2:Number) : §^F§
      {
         return new §^F§("TRANSPARENT",1,[param1,param2]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

