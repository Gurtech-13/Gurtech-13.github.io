package motion.actuators
{
   import motion.IComponentPath;
   
   public class PropertyPathDetails extends PropertyDetails
   {
      
      public var path:IComponentPath;
      
      public function PropertyPathDetails(param1:Object, param2:String, param3:IComponentPath, param4:Boolean = true)
      {
         super(param1,param2,0,0,param4);
         path = param3;
      }
   }
}

