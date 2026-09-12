package §>T§
{
   import flash.Boot;
   import flash.events.Event;
   import flash.media.SoundChannel;
   import motion.Actuate;
   import motion.actuators.TransformActuator;
   
   public final class §-n§
   {
      
      public static const §0!W§:Boolean = true;
      
      public static var §!!A§:§-n§ = new §-n§("box",2,null);
      
      public static var §6!P§:§-n§ = new §-n§("empty",5,null);
      
      public static var §'!%§:§-n§ = new §-n§("movableBox",3,null);
      
      public static var §9l§:§-n§ = new §-n§("movableTile",1,null);
      
      public static var §;&§:§-n§ = new §-n§("openBox",4,null);
      
      public static var §?!W§:§-n§ = new §-n§("tile",0,null);
      
      public static var §@0§:Array = ["tile","movableTile","box","movableBox","openBox","empty"];
      
      public var §3b§:String;
      
      public var §+!=§:int;
      
      public var §<!]§:Array;
      
      public const §^B§:Boolean = true;
      
      public function §-n§(param1:String, param2:int, param3:Array)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               §3b§ = param1;
               if(!_loc4_)
               {
                  break;
               }
            }
            §+!=§ = param2;
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr0041);
         }
         §<!]§ = param3;
         addr0041:
      }
      
      final public function §9!V§() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

