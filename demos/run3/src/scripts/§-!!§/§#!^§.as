package §-!!§
{
   import §!!$§.§ 6§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.purchase.§"!>§;
   import flash.Boot;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import unitsystem.§7o§;
   
   public class §#!^§ extends §?W§
   {
      
      public var §%!D§:Sprite;
      
      public function §#!^§(param1:Sprite)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         super();
         §%!D§ = param1;
         if(_loc3_)
         {
            param1.addEventListener(MouseEvent.CLICK,§`x§);
         }
         if(param1.parent == null)
         {
            §[2§(param1);
         }
         §#!W§(false);
      }
      
      public function §`x§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §#!W§(!§?!_§.visible);
         }
      }
      
      public function §#!W§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  if(§?!_§.visible == param1)
                  {
                     break loop0;
                  }
                  if(_loc2_)
                  {
                     §?!_§.visible = param1;
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(param1);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     dispatchEvent(new Event(Event.CLOSE));
                     break loop0;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               dispatchEvent(new Event(Event.OPEN));
               if(_loc3_)
               {
               }
               break loop0;
            }
            return §§pop();
         }
         §§push(param1);
         break loop1;
      }
   }
}

