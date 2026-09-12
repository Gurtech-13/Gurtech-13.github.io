package motion.easing
{
   public class QuadEaseIn implements IEasing
   {
      
      public function QuadEaseIn()
      {
      }
      
      public function calculate(param1:Number) : Number
      {
         return param1 * param1;
      }
   }
}

