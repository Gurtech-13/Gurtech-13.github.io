package lime.graphics
{
   import flash.display.BitmapData;
   import lime.utils.ArrayBufferView;
   
   public class ImageBuffer
   {
      
      public var width:int;
      
      public var transparent:Boolean = true;
      
      public var premultiplied:Boolean;
      
      public var height:int;
      
      public var format:int;
      
      public var data:ArrayBufferView;
      
      public var bitsPerPixel:int;
      
      public var __srcContext:*;
      
      public var __srcCanvas:*;
      
      public var __srcBitmapData:BitmapData;
      
      public function ImageBuffer(param1:ArrayBufferView = undefined, param2:int = 0, param3:int = 0, param4:int = 32, param5:Object = undefined)
      {
         data = param1;
         width = param2;
         height = param3;
         bitsPerPixel = param4;
         format = param5 == null ? 0 : int(param5);
      }
      
      public function set_src(param1:*) : *
      {
         __srcBitmapData = param1;
         return param1;
      }
      
      public function §+!<§() : int
      {
         return width * 4;
      }
      
      public function get_src() : *
      {
         return __srcBitmapData;
      }
   }
}

