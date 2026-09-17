package §8![§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §,!W§.§`'§;
   import layout3d.§>N§;
   import scenes.§+Z§;
   import scenes.Cutscenes;
   import §6!Q§.§]u§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.save.§-Q§;
   import flash.Lib;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import lime.app.Application;
   import lime.ui.Window;
   
   public class §[!]§
   {
      
      public var parent:Window;
      
      public var §`!A§:Boolean;
      
      public function §[!]§(param1:Window)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            parent = param1;
         }
      }
      
      public function resize(param1:int, param2:int) : void
      {
      }
      
      public function §#!<§() : Boolean
      {
         return §`!A§;
      }
      
      public function create(param1:Application) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               Lib.current.stage.align = "topLeft";
               if(!_loc3_)
               {
                  break;
               }
            }
            Lib.current.stage.scaleMode = "noScale";
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr006d);
         }
         parent.id = 0;
         if(_loc3_)
         {
            parent.stage = Lib.current.stage;
         }
         addr006d:
      }
      
      public function close() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            parent.application.§7g§(parent);
         }
      }
   }
}

