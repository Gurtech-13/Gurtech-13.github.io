package com.player03.layout
{
   import flash.Lib;
   import flash.events.Event;
   
   public class §[k§ extends §'!O§
   {
      
      public function §[k§(param1:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  if(param1 != null)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               param1 = false;
               break;
            }
            super(Lib.current.stage.stageWidth,Lib.current.stage.stageHeight,null,param1);
            break;
         }
      }
      
      override public function set width(param1:Number) : void
      {
      }
      
      override public function set height(param1:Number) : void
      {
      }
      
      public function §9n§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  §§push(true);
                  if(_loc2_)
                  {
                     if(layout.§&#§.width == §&d§.§;`§().§&#§.width)
                     {
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              §§push(layout.§&#§.height == §&d§.§;`§().§&#§.height);
                              if(!_loc3_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  break loop0;
               }
            }
            layout.§&#§.setTo(0,0,§&d§.§;`§().§&#§.width,§&d§.§;`§().§&#§.height);
            break;
         }
      }
      
      override public function §8G§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §&d§.§;`§().§&#§.removeEventListener(Event.CHANGE,§9n§);
         }
      }
      
      override public function §3%§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §&d§.§;`§().§&#§.addEventListener(Event.CHANGE,§9n§);
            if(!_loc2_)
            {
               §9n§(null);
            }
         }
      }
   }
}

