package format
{
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import format.svg.§3!?§;
   import format.svg.SVGData;
   
   public class §&b§
   {
      
      public var data:SVGData;
      
      public function §&b§(param1:String)
      {
         if(param1 != null)
         {
            data = new SVGData(§,l§.parse(param1));
         }
      }
      
      public function §%!B§(param1:Graphics, param2:Number = 0, param3:Number = 0, param4:int = -1, param5:int = -1) : void
      {
         if(data == null)
         {
            return;
         }
         var _loc6_:Matrix = new Matrix();
         _loc6_.identity();
         if(param4 > -1 && param5 > -1)
         {
            _loc6_.scale(param4 / data.width,param5 / data.height);
         }
         _loc6_.translate(param2,param3);
         var _loc7_:§3!?§ = new §3!?§(data);
         _loc7_.§%!B§(param1,_loc6_);
      }
   }
}

