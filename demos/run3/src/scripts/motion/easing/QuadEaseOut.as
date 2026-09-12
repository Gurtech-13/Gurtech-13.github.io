package motion.easing
{
   public class QuadEaseOut implements IEasing
   {
      
      public function QuadEaseOut()
      {
      }
      
      public function calculate(param1:Number) : Number
      {
         return -param1 * (param1 - 2);
      }
   }
}

