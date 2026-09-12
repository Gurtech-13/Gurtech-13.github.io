package §2X§
{
   import §-!!§.§^!8§;
   import com.player03.layout.§2u§;
   import flash.Boot;
   import flash.events.MouseEvent;
   
   public class GridLayout2D extends Layout2D
   {
      
      public var width:int;
      
      public var §&+§:Number;
      
      public var §6x§:Number;
      
      public var §-I§:Number;
      
      public var §7!$§:Number;
      
      public var §5!R§:Number;
      
      public function GridLayout2D(param1:int, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(param2 == null)
            {
               §§push(1);
               if(_loc6_)
               {
                  break;
               }
               param2 = §§pop();
            }
            if(param3 == null)
            {
               §§push(0);
               if(!_loc7_)
               {
                  break;
               }
               param3 = §§pop();
            }
            if(param4 == null)
            {
               §§push(0);
               if(!_loc7_)
               {
                  break;
               }
               param4 = §§pop();
            }
            while(true)
            {
               if(param5 == null)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  §§push(0);
                  if(_loc6_)
                  {
                     break loop0;
                  }
                  param5 = §§pop();
               }
               §7!$§ = 0;
               §5!R§ = 0;
               §§goto(addr00fc);
            }
            §§goto(addr00de);
         }
         if(§§pop() <= 0)
         {
            if(!_loc6_)
            {
               Boot.lastError = new Error();
               if(_loc7_)
               {
                  throw new ArgumentError("Grids need a width of at least 1.");
               }
            }
         }
         else
         {
            §"!§(param1);
         }
         §6x§ = param2;
         while(true)
         {
            if(!_loc6_)
            {
               addr00de:
               §-I§ = param3;
               §5!R§ = param4;
               if(_loc7_)
               {
                  addr00f4:
                  §7!$§ = param5;
               }
               §§goto(addr00fc);
            }
            §§goto(addr00f4);
         }
         addr00fc:
         if(!_loc6_)
         {
            super();
            §§push(param1);
            break loop0;
         }
      }
      
      public function §"!§(param1:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §&+§ = 1 / param1;
         }
         §§push(§§findproperty(width));
         §§push(param1);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         return §§pop().width = §§pop();
      }
      
      override public function §<!C§(param1:int) : PositionData2D
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            §§push(§§findproperty(PositionData2D));
            §§push(§5!R§);
            if(!_loc2_)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop() % width);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push(int(§§pop()));
                  }
                  §§push(§§pop() * §6x§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§push(§§pop() + §§pop());
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§push(§7!$§);
            if(_loc3_)
            {
               §§push(§§pop() + int(Math.floor(param1 * §&+§)) * §-I§);
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            break;
         }
         return new §§pop().PositionData2D(§§pop(),§§pop());
      }
   }
}

