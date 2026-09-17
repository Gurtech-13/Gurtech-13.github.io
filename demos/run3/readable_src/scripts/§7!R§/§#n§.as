package §7!R§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§>K§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§;!!§;
   import §[!P§.§`!W§;
   import §[^§.§!A§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#n§ implements §'A§
   {
      
      public var §"!S§:Number;
      
      public var §,6§:Number;
      
      public var §-r§:Number;
      
      public var §<W§:Number;
      
      public function §#n§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(_loc6_)
            {
               §,6§ = param1;
               if(_loc6_)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§<W§));
                     §§push(param1);
                     if(_loc6_)
                     {
                        §§push(§§pop() + param3);
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().§<W§ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §"!S§ = param2;
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            while(true)
            {
               §§push(§§findproperty(§-r§));
               §§push(param2);
               if(_loc6_)
               {
                  §§push(§§pop() + param4);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§-r§ = §§pop();
            break;
         }
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc3_)
                  {
                     §§push(false);
                     §§push(false);
                     if(!_loc4_)
                     {
                        if(param1 >= §,6§)
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 break loop0;
                              }
                              §§push(param1 <= §<W§);
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(param2);
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                                 §§push(§"!S§);
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 §§push(§§pop() >= §§pop());
                                 if(_loc4_)
                                 {
                                    break loop3;
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           return false;
                        }
                     }
                     return §§pop();
                  }
                  §§push(param2);
                  break;
               }
               §§push(§-r§);
               break;
            }
            return §§pop() <= §§pop();
         }
         return §§pop();
      }
   }
}

