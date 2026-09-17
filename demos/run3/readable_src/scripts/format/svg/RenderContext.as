package format.svg
{
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class RenderContext
   {
      
      public var §9!I§:Number;
      
      public var §-i§:Number;
      
      public var rect:Rectangle;
      
      public var matrix:Matrix;
      
      public var §8N§:Number = 0;
      
      public var §@Z§:Number = 0;
      
      public var §,!b§:Number = 0;
      
      public var §=E§:Number = 0;
      
      public function RenderContext(param1:Matrix, param2:Rectangle = undefined, param3:Object = undefined, param4:Object = undefined)
      {
         matrix = param1;
         rect = param2;
         §9!I§ = param3 != null ? Number(param3) : (param2 != null ? param2.width : 1);
         §-i§ = param4 != null ? Number(param4) : (param2 != null ? param2.height : 1);
      }
      
      public function §0&§(param1:Number, param2:Number) : Number
      {
         if(rect != null && param2 > rect.y)
         {
            if(param2 > rect.right)
            {
               param2 += §-i§ - rect.height;
            }
            else
            {
               param2 = rect.y + §-i§ * (param2 - rect.y) / rect.height;
            }
         }
         return param1 * matrix.b + param2 * matrix.d + matrix.ty;
      }
      
      public function §5T§(param1:Number, param2:Number) : Number
      {
         if(rect != null && param1 > rect.x)
         {
            if(param1 > rect.right)
            {
               param1 += §9!I§ - rect.width;
            }
            else
            {
               param1 = rect.x + §9!I§ * (param1 - rect.x) / rect.width;
            }
         }
         return param1 * matrix.a + param2 * matrix.c + matrix.tx;
      }
      
      public function §]M§(param1:Number, param2:Number) : void
      {
         §@Z§ = §5T§(param1,param2);
         §8N§ = §0&§(param1,param2);
      }
   }
}

