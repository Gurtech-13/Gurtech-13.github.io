package layout3d
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import flash.geom.Rectangle;
   
   public class LineLayout2D extends Layout2D
   {
      
      public var § a§:Number;
      
      public var §[8§:Number;
      
      public var §7!$§:Number;
      
      public var §5!R§:Number;
      
      public function LineLayout2D(param1:Object = undefined, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(1);
                  if(!_loc6_)
                  {
                     break loop0;
                  }
                  param1 = §§pop();
               }
               if(param2 == null)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     break loop0;
                  }
                  param2 = §§pop();
               }
               if(param3 == null)
               {
                  while(true)
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr005d);
            }
            §7!$§ = param4;
            return;
         }
         param3 = §§pop();
         addr005d:
         if(param4 == null)
         {
            addr0066:
            param4 = 0;
         }
         addr0069:
         §7!$§ = 0;
         §5!R§ = 0;
         super();
         if(_loc6_)
         {
            §[8§ = param1;
            if(!_loc5_)
            {
               § a§ = param2;
               §5!R§ = param3;
            }
         }
         break loop1;
      }
      
      override public function getPosition(param1:int) : PositionData2D
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(§§findproperty(PositionData2D));
            §§push(§5!R§);
            if(!_loc3_)
            {
               §§push(param1 * §[8§);
               if(_loc3_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§push(§7!$§);
            if(!_loc3_)
            {
               §§push(§§pop() + param1 * § a§);
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         return new §§pop().PositionData2D(§§pop(),§§pop());
      }
   }
}

