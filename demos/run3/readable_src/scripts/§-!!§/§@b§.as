package §-!!§
{
   import §[^§.§!A§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.level.Level;
   import flash.Boot;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   
   public final class §@b§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var DOWN:§@b§ = new §@b§("DOWN",2,null);
      
      public static var HOVER:§@b§ = new §@b§("HOVER",1,null);
      
      public static var OFF:§@b§ = new §@b§("OFF",0,null);
      
      public static var __constructs__:Array = ["OFF","HOVER","DOWN"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §@b§(param1:String, param2:int, param3:Array)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               tag = param1;
               if(!_loc5_)
               {
                  index = param2;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            params = param3;
            break;
         }
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

