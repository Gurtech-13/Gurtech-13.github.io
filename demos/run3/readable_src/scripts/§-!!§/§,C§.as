package §-!!§
{
   import scenes.Cutscenes;
   import scenes.ThanksForPlaytesting;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import openfl.Assets;
   
   public class §,C§ extends §8!8§
   {
      
      public var §6!B§:Bitmap;
      
      public function §,C§(param1:String, param2:Function, param3:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               super(param2);
               if(_loc5_)
               {
                  if(!param3)
                  {
                     §9L§(§2!B§.§83§(param1));
                     break;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            §9L§(new Bitmap(Assets.getBitmapData(param1)));
            if(_loc4_)
            {
            }
            break;
         }
      }
      
      public function §9L§(param1:Bitmap) : Bitmap
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 == null)
            {
               if(_loc3_)
               {
                  return §6!B§;
               }
            }
            else
            {
               while(true)
               {
                  if(§6!B§ != null)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     removeChild(§6!B§);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §6!B§ = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               addChild(§6!B§);
            }
         }
         return §6!B§;
      }
      
      public function §&!Q§(param1:Number, param2:int, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         while(true)
         {
            if(_loc8_)
            {
               if(param5 != null)
               {
                  break;
               }
            }
            param5 = 1;
            break;
         }
         var _loc6_:Rectangle = §6!B§.bitmapData.getColorBoundsRect(-16777216,0,false);
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  _loc6_.x *= §6!B§.scaleX;
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc6_.y *= §6!B§.scaleY;
                  if(_loc7_)
                  {
                     break loop1;
                  }
               }
               _loc6_.width *= §6!B§.scaleX;
               if(!_loc7_)
               {
                  _loc6_.height *= §6!B§.scaleY;
                  if(_loc8_)
                  {
                     break loop1;
                  }
               }
               break;
            }
            return;
         }
         addRectangle2(graphics,param1,param2,param5,param3,param4,_loc6_);
         break loop2;
      }
   }
}

