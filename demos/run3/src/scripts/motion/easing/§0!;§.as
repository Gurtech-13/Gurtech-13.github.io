package motion.easing
{
   public class §0!;§ implements IEasing
   {
      
      public function §0!;§()
      {
      }
      
      public function calculate(param1:Number) : Number
      {
         param1 *= 2;
         if(param1 < 1)
         {
            return 0.5 * param1 * param1;
         }
         return -0.5 * ((param1 - 1) * (param1 - 3) - 1);
      }
   }
}

