package co.janicek.core.math
{
   public class RandomCore
   {
      
      public function RandomCore()
      {
      }
      
      public static function makeRandomSeed() : int
      {
         return int(Math.floor(Number(Math.random()) * 2147483647));
      }
   }
}

