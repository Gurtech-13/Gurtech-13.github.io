package motion._Actuate
{
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.actuators.IGenericActuator;
   import motion.actuators.TransformActuator;
   
   public class §>!;§
   {
      
      public var target:Object;
      
      public var overwrite:Boolean;
      
      public var duration:Number;
      
      public function §>!;§(param1:Object, param2:Number, param3:Boolean)
      {
         target = param1;
         duration = param2;
         overwrite = param3;
      }
      
      public function sound(param1:Object = undefined, param2:Object = undefined) : IGenericActuator
      {
         var _loc3_:* = {};
         if(param1 != null)
         {
            _loc3_.soundVolume = param1;
         }
         if(param2 != null)
         {
            _loc3_.soundPan = param2;
         }
         return Actuate.tween(target,duration,_loc3_,overwrite,TransformActuator);
      }
   }
}

