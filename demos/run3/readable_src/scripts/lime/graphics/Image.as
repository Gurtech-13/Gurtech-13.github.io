package lime.graphics
{
   import flash.Boot;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import lime.app.Application;
   import lime.graphics.utils.ImageCanvasUtil;
   import lime.graphics.utils.ImageDataUtil;
   import lime.math.Rectangle;
   import lime.utils.ArrayBufferView;
   
   public class Image
   {
      
      public var width:int;
      
      public var version:int;
      
      public var type:ImageType;
      
      public var offsetY:int;
      
      public var offsetX:int;
      
      public var height:int;
      
      public var dirty:Boolean;
      
      public var buffer:ImageBuffer;
      
      public function Image(param1:ImageBuffer = undefined, param2:int = 0, param3:int = 0, param4:int = -1, param5:int = -1, param6:Object = undefined, param7:ImageType = undefined)
      {
         var _loc8_:* = null as RenderContext;
         var _loc9_:* = null as ImageType;
         var _loc10_:* = null;
         var _loc11_:* = null as ArrayBufferView;
         offsetX = param2;
         offsetY = param3;
         width = param4;
         height = param5;
         version = 0;
         if(param7 == null)
         {
            if(Application.current != null && Application.current.§?q§[0] != null)
            {
               _loc8_ = Application.current.§?q§[0].context;
               switch(_loc8_.index)
               {
                  case 1:
                  case 2:
                     _loc9_ = ImageType.CANVAS;
                     break;
                  case 3:
                     _loc9_ = ImageType.FLASH;
                     break;
                  default:
                     _loc9_ = ImageType.DATA;
               }
               type = _loc9_;
            }
            else
            {
               type = ImageType.DATA;
            }
         }
         else
         {
            type = param7;
         }
         if(param1 == null)
         {
            if(param4 > 0 && param5 > 0)
            {
               _loc9_ = type;
               switch(_loc9_.index)
               {
                  case 0:
                     buffer = new ImageBuffer(null,param4,param5);
                     ImageCanvasUtil.§@r§(this,param4,param5);
                     if(param6 != null)
                     {
                        fillRect(new lime.math.Rectangle(0,0,param4,param5),param6);
                     }
                     break;
                  case 1:
                     _loc10_ = param4 * param5 * 4;
                     if(_loc10_ != null)
                     {
                        _loc11_ = new ArrayBufferView(_loc10_,4);
                        buffer = new ImageBuffer(_loc11_,param4,param5);
                        if(param6 != null)
                        {
                           fillRect(new lime.math.Rectangle(0,0,param4,param5),param6);
                        }
                        break;
                     }
                     Boot.lastError = new Error();
                     throw "Invalid constructor arguments for Uint8Array";
                     break;
                  case 2:
                     buffer = new ImageBuffer(null,param4,param5);
                     buffer.set_src(new BitmapData(param4,param5,true,(param6 & 0xFF) << 24 | param6 >> 8));
               }
            }
         }
         else
         {
            __fromImageBuffer(param1);
         }
      }
      
      public static function fromBitmapData(param1:BitmapData) : Image
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:ImageBuffer = new ImageBuffer(null,param1.width,param1.height);
         _loc2_.__srcBitmapData = param1;
         return new Image(_loc2_);
      }
      
      public function get_transparent() : Boolean
      {
         if(buffer == null)
         {
            return false;
         }
         return buffer.transparent;
      }
      
      public function get_src() : *
      {
         return buffer.get_src();
      }
      
      public function get_rect() : lime.math.Rectangle
      {
         return new lime.math.Rectangle(0,0,width,height);
      }
      
      public function fillRect(param1:lime.math.Rectangle, param2:int, param3:Object = undefined) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         param1 = __clipRect(param1);
         if(buffer == null || param1 == null)
         {
            return;
         }
         var _loc4_:ImageType = type;
         switch(_loc4_.index)
         {
            case 0:
               ImageCanvasUtil.fillRect(this,param1,param2,param3);
               break;
            case 1:
               if(buffer.data.length == 0)
               {
                  return;
               }
               ImageDataUtil.fillRect(this,param1,param2,param3);
               break;
            case 2:
               param1.offset(offsetX,offsetY);
               if(param3 == null)
               {
                  _loc6_ = param2;
                  _loc7_ = 0;
                  _loc8_ = _loc7_;
                  _loc8_ = (_loc6_ & 0xFF & 0xFF) << 24 | (_loc6_ >> 24 & 0xFF & 0xFF) << 16 | (_loc6_ >> 16 & 0xFF & 0xFF) << 8 | _loc6_ >> 8 & 0xFF & 0xFF;
                  _loc5_ = _loc8_;
               }
               else
               {
                  _loc9_ = param3;
                  if(_loc9_ == 1)
                  {
                     _loc5_ = param2;
                  }
                  else if(_loc9_ == 2)
                  {
                     _loc6_ = param2;
                     _loc7_ = 0;
                     _loc8_ = _loc7_;
                     _loc8_ = (_loc6_ & 0xFF & 0xFF) << 24 | (_loc6_ >> 8 & 0xFF & 0xFF) << 16 | (_loc6_ >> 16 & 0xFF & 0xFF) << 8 | _loc6_ >> 24 & 0xFF & 0xFF;
                     _loc5_ = _loc8_;
                  }
                  else
                  {
                     _loc6_ = param2;
                     _loc7_ = 0;
                     _loc8_ = _loc7_;
                     _loc8_ = (_loc6_ & 0xFF & 0xFF) << 24 | (_loc6_ >> 24 & 0xFF & 0xFF) << 16 | (_loc6_ >> 16 & 0xFF & 0xFF) << 8 | _loc6_ >> 8 & 0xFF & 0xFF;
                     _loc5_ = _loc8_;
                  }
               }
               buffer.__srcBitmapData.fillRect(param1.__toFlashRectangle(),_loc5_);
         }
      }
      
      public function __fromImageBuffer(param1:ImageBuffer) : void
      {
         buffer = param1;
         if(param1 != null)
         {
            if(width == -1)
            {
               width = param1.width;
            }
            if(height == -1)
            {
               height = param1.height;
            }
         }
      }
      
      public function __clipRect(param1:lime.math.Rectangle) : lime.math.Rectangle
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1.x < 0)
         {
            param1.width -= -param1.x;
            param1.x = 0;
            if(param1.x + param1.width <= 0)
            {
               return null;
            }
         }
         if(param1.y < 0)
         {
            param1.height -= -param1.y;
            param1.y = 0;
            if(param1.y + param1.height <= 0)
            {
               return null;
            }
         }
         if(param1.x + param1.width >= width)
         {
            param1.width -= param1.x + param1.width - width;
            if(param1.width <= 0)
            {
               return null;
            }
         }
         if(param1.y + param1.height >= height)
         {
            param1.height -= param1.y + param1.height - height;
            if(param1.height <= 0)
            {
               return null;
            }
         }
         return param1;
      }
   }
}

