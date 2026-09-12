package lime.graphics.utils
{
   import lime.graphics.Image;
   import lime.graphics.ImageBuffer;
   import lime.graphics.ImageType;
   import lime.math.Rectangle;
   
   public class ImageCanvasUtil
   {
      
      public function ImageCanvasUtil()
      {
      }
      
      public static function convertToCanvas(param1:Image, param2:Boolean = false) : void
      {
         var _loc3_:ImageBuffer = param1.buffer;
         param1.type = ImageType.CANVAS;
      }
      
      public static function §@r§(param1:Image, param2:int, param3:int) : void
      {
      }
      
      public static function fillRect(param1:Image, param2:Rectangle, param3:int, param4:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         ImageCanvasUtil.convertToCanvas(param1);
         if(param4 == 1)
         {
            _loc5_ = param3 >> 16 & 0xFF;
            _loc6_ = param3 >> 8 & 0xFF;
            _loc7_ = param3 & 0xFF;
            if(param1.get_transparent())
            {
               _loc8_ = param3 >> 24 & 0xFF;
            }
            else
            {
               _loc8_ = 255;
            }
         }
         else
         {
            _loc5_ = param3 >> 24 & 0xFF;
            _loc6_ = param3 >> 16 & 0xFF;
            _loc7_ = param3 >> 8 & 0xFF;
            if(param1.get_transparent())
            {
               _loc8_ = param3 & 0xFF;
            }
            else
            {
               _loc8_ = 255;
            }
         }
         if(param2.x == 0 && param2.y == 0 && param2.width == param1.width && param2.height == param1.height)
         {
            if(param1.get_transparent() && _loc8_ == 0)
            {
               param1.buffer.__srcCanvas.width = param1.buffer.width;
               return;
            }
         }
         param1.buffer.__srcContext.fillStyle = "rgba(" + _loc5_ + ", " + _loc6_ + ", " + _loc7_ + ", " + _loc8_ / 255 + ")";
         param1.buffer.__srcContext.fillRect(param2.x + param1.offsetX,param2.y + param1.offsetY,param2.width + param1.offsetX,param2.height + param1.offsetY);
         param1.dirty = true;
         ++param1.version;
      }
   }
}

