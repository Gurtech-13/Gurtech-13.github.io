package motion.actuators
{
   public class PropertyDetails
   {
      
      public var target:Object;
      
      public var start:Number;
      
      public var propertyName:String;
      
      public var isField:Boolean;
      
      public var change:Number;
      
      public function PropertyDetails(param1:Object, param2:String, param3:Number, param4:Number, param5:Boolean = true)
      {
         target = param1;
         propertyName = param2;
         start = param3;
         change = param4;
         isField = param5;
      }
   }
}

