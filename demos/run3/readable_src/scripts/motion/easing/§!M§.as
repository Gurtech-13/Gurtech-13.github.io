package motion.easing
{
   public class §!M§ implements IEasing
   {
      
      public var s:Number;
      
      public function §!M§(param1:Number)
      {
         s = param1;
      }
      
      public function calculate(param1:Number) : Number
      {
         return --param1 * param1 * ((s + 1) * param1 + s) + 1;
      }
   }
}

