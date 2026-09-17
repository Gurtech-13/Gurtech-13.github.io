package motion.easing
{
   public class ExpoEaseOut implements IEasing
   {
      
      public function ExpoEaseOut()
      {
      }
      
      public function calculate(param1:Number) : Number
      {
         if(param1 == 1)
         {
            return 1;
         }
         return 1 - Number(Math.pow(2,-10 * param1));
      }
   }
}

