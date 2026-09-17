package §!!=§
{
   import §+!4§.§&$§;
   import §-!!§.§2!B§;
   import §7!R§.§#n§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class §@j§ extends Sprite
   {
      
      public var §,!]§:§#n§;
      
      public var rightArrow:Bitmap;
      
      public var §^e§:§#n§;
      
      public var leftArrow:Bitmap;
      
      public function §@j§(param1:§&$§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  super();
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  mouseEnabled = false;
                  mouseChildren = false;
                  leftArrow = §2!B§.§83§("controls/ArrowCircleButton.png");
                  leftArrow.rotation = 180;
                  if(_loc2_)
                  {
                     break;
                  }
                  leftArrow.x = leftArrow.width;
                  leftArrow.y = leftArrow.height;
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  addChild(leftArrow);
                  rightArrow = §2!B§.§83§("controls/ArrowCircleButton.png");
               }
               rightArrow.x = leftArrow.x + leftArrow.width * 0.25;
               break loop0;
            }
            §^e§ = new §#n§(0,0,0,0);
            §§goto(addr00f1);
         }
         addChild(rightArrow);
         if(!_loc2_)
         {
            break loop1;
         }
         addr00f1:
         §,!]§ = new §#n§(0,0,0,0);
         param1.§!<§("left",§^e§);
         if(_loc3_)
         {
            param1.§!<§("right",§,!]§);
         }
      }
   }
}

