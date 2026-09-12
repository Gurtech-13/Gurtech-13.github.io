package lime.utils
{
   import haxe.io.§=!%§;
   
   public class ArrayBufferView
   {
      
      public var type:int;
      
      public var length:int;
      
      public var §&4§:int;
      
      public var byteOffset:int;
      
      public var byteLength:int;
      
      public var buffer:haxe.io.§=!%§;
      
      public function ArrayBufferView(param1:Object = undefined, param2:int = undefined)
      {
         var _loc3_:int = 0;
         var _loc4_:* = null as haxe.io.§=!%§;
         §&4§ = 0;
         type = 0;
         type = param2;
         switch(type)
         {
            case 1:
               _loc3_ = 1;
               break;
            case 2:
               _loc3_ = 2;
               break;
            case 3:
               _loc3_ = 4;
               break;
            case 4:
               _loc3_ = 1;
               break;
            case 5:
               _loc3_ = 1;
               break;
            case 6:
               _loc3_ = 2;
               break;
            case 7:
               _loc3_ = 4;
               break;
            case 8:
               _loc3_ = 4;
               break;
            case 9:
               _loc3_ = 8;
               break;
            default:
               _loc3_ = 1;
         }
         §&4§ = _loc3_;
         if(param1 != null && param1 != 0)
         {
            if(param1 < 0)
            {
               param1 = 0;
            }
            byteOffset = 0;
            byteLength = int(param1) * §&4§;
            _loc4_ = haxe.io.§=!%§.§0$§(byteLength);
            buffer = _loc4_;
            length = param1;
         }
      }
   }
}

