package motion.easing
{
   public class §>4§ implements IEasing
   {
      
      public var p:Number;
      
      public var a:Number;
      
      public function §>4§(param1:Number, param2:Number)
      {
         a = param1;
         p = param2;
      }
      
      public function calculate(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         if(param1 == 0)
         {
            return 0;
         }
         if(param1 == 1)
         {
            return 1;
         }
         if(a < 1)
         {
            a = 1;
            _loc2_ = p / 4;
         }
         else
         {
            _loc2_ = p / (2 * Math.PI) * Number(Math.asin(1 / a));
         }
         return a * Number(Math.pow(2,-10 * param1)) * Number(Math.sin((param1 - _loc2_) * (2 * Math.PI) / p)) + 1;
      }
   }
}

