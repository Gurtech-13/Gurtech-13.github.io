package motion.easing
{
   public class §!g§ implements IEasing
   {
      
      public function §!g§()
      {
      }
      
      public function calculate(param1:Number) : Number
      {
         if(param1 == 0)
         {
            return 0;
         }
         if(param1 == 1)
         {
            return 1;
         }
         param1 /= 0.5;
         if(param1 < 1)
         {
            return 0.5 * Number(Math.pow(2,10 * (param1 - 1)));
         }
         return 0.5 * (2 - Number(Math.pow(2,-10 * --param1)));
      }
   }
}

