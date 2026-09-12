package lime.math
{
   import flash.geom.Rectangle;
   
   public class Rectangle
   {
      
      public var y:Number;
      
      public var x:Number;
      
      public var width:Number;
      
      public var height:Number;
      
      public function Rectangle(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         x = param1;
         y = param2;
         width = param3;
         height = param4;
      }
      
      public function offset(param1:Number, param2:Number) : void
      {
         x += param1;
         y += param2;
      }
      
      public function __toFlashRectangle() : flash.geom.Rectangle
      {
         return new flash.geom.Rectangle(x,y,width,height);
      }
   }
}

