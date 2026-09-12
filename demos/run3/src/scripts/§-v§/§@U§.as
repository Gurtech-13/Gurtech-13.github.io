package §-v§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §>!O§.§0S§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import flash.Boot;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   
   public class §@U§ implements §0S§
   {
      
      public var §]x§:int;
      
      public var §<r§:Number;
      
      public var §2b§:Number;
      
      public function §@U§(param1:Object = undefined, param2:Object = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  if(param1 == null)
                  {
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     §§push(20);
                     if(!_loc3_)
                     {
                        break;
                     }
                     param1 = §§pop();
                  }
                  if(param2 == null)
                  {
                     §§goto(addr006c);
                  }
                  addr005c:
                  §]x§ = 512;
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               param2 = §§pop();
               §§goto(addr005c);
            }
            addr006c:
            if(!_loc4_)
            {
               §§push(3.2);
               break loop1;
            }
            §<r§ = param1;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr0081);
         }
         §2b§ = param2;
         addr0081:
      }
      
      public static function §==§(param1:Graphics, param2:Object = undefined, param3:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(20);
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  param2 = §§pop();
               }
               if(param3 == null)
               {
                  if(!_loc4_)
                  {
                     §§push(3.2);
                     break loop0;
                  }
                  break;
               }
               §§goto(addr003d);
            }
            param1.lineStyle(param3,10066329);
            param1.moveTo(-param2 / 2,-param2 / 2);
            param1.lineTo(param2 / 2,param2 / 2);
            if(!_loc4_)
            {
               param1.moveTo(-param2 / 2,param2 / 2);
               if(_loc5_)
               {
                  §§goto(addr00b2);
               }
            }
            §§goto(addr00c0);
         }
         param3 = §§pop();
         addr003d:
         param1.clear();
         while(true)
         {
            if(!_loc4_)
            {
               param1.beginFill(16777215);
               param1.drawCircle(0,0,param2);
               param1.endFill();
               break loop1;
            }
            addr00b2:
            param1.lineTo(param2 / 2,-param2 / 2);
            break;
         }
         addr00c0:
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = null as Shape;
         var _loc6_:* = null as §?y§;
         var _loc4_:Class = Shape;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  if(param1 is §?y§)
                  {
                     if(!_loc7_)
                     {
                        addr0042:
                        _loc6_ = param1;
                        if(!_loc7_)
                        {
                           §§push(Std.§is§(_loc6_.§ v§,_loc4_));
                           if(_loc8_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 addr006f:
                                 _loc5_ = _loc6_.§ v§;
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                           }
                           else
                           {
                              Boot.lastError = new Error();
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(Std.string(_loc4_));
                           if(_loc8_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop() + " required!");
                           if(!_loc7_)
                           {
                              throw §§pop();
                           }
                        }
                        §§goto(addr006f);
                     }
                  }
                  else
                  {
                     Boot.lastError = new Error();
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(Std.string(_loc4_));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop() + " required!");
                  if(_loc8_)
                  {
                     throw §§pop();
                  }
               }
               §§goto(addr0042);
            }
            §@U§.§==§(_loc5_.graphics,§<r§ * ((param3.x + param3.y) / 2),§2b§ * ((param3.x + param3.y) / 2));
            break;
         }
      }
   }
}

