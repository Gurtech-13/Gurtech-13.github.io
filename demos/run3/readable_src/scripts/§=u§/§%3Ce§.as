package §=u§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§;!!§;
   import §[!P§.§`!W§;
   import §[^§.§!A§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<e§ implements §0S§
   {
      
      public var mask:int;
      
      public var §1y§:Number;
      
      public var §+A§:Boolean;
      
      public function §<e§(param1:Boolean, param2:Number)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §+A§ = param1;
               if(_loc4_)
               {
                  break;
               }
               §1y§ = param2;
               if(!_loc3_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§findproperty(mask));
               if(_loc3_)
               {
                  if(!param1)
                  {
                     §§push(2);
                     break;
                  }
               }
               §§push(1);
               if(_loc4_)
               {
               }
               break;
            }
            §§pop().mask = §§pop();
            break;
         }
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = null as DisplayObject;
         var _loc6_:* = null as §?y§;
         var _loc7_:* = NaN;
         var _loc4_:Class = DisplayObject;
         while(true)
         {
            if(!_loc9_)
            {
               if(!(param2 is §?y§))
               {
                  Boot.lastError = new Error();
                  if(_loc8_)
                  {
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
                  break;
               }
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc6_ = param2;
            if(_loc8_)
            {
               §§push(Std.§is§(_loc6_.§ v§,_loc4_));
               if(!_loc9_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  Boot.lastError = new Error();
                  if(_loc8_)
                  {
                     §§push(Std.string(_loc4_));
                     if(!_loc9_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() + " required!");
                     if(!_loc9_)
                     {
                        throw §§pop();
                     }
                  }
                  break;
               }
               if(_loc9_)
               {
                  break;
               }
            }
            _loc5_ = _loc6_.§ v§;
            break;
         }
         loop1:
         while(true)
         {
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        if(§+A§)
                        {
                           while(true)
                           {
                              if(_loc5_.visible)
                              {
                                 if(!_loc9_)
                                 {
                                    §§push(_loc5_.x + _loc5_.width);
                                    §§push(§1y§);
                                    if(!_loc9_)
                                    {
                                       §§push(param3.x);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc9_)
                                          {
                                             addr0136:
                                             _loc7_ = §§pop() + §§pop();
                                             if(!_loc9_)
                                             {
                                                §§push(_loc7_);
                                                if(_loc8_)
                                                {
                                                   §§push(param1.§[![§());
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            param1.§;g§(_loc7_);
                                                         }
                                                         break loop6;
                                                      }
                                                      break loop4;
                                                   }
                                                   break;
                                                }
                                                break loop1;
                                             }
                                             break loop5;
                                          }
                                          addr018a:
                                          §§push(param3.y);
                                       }
                                       §§push(§§pop() * §§pop());
                                       break;
                                    }
                                    break loop4;
                                 }
                                 break loop5;
                              }
                              §§push(_loc5_.x);
                              §§goto(addr0136);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc8_)
                           {
                              break loop1;
                           }
                        }
                        else if(_loc5_.visible)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§goto(addr018a);
                           §§push(_loc5_.y + _loc5_.height);
                           §§push(§1y§);
                        }
                        else
                        {
                           §§push(_loc5_.y);
                        }
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           break loop1;
                        }
                        §§goto(addr01be);
                     }
                     §§goto(addr01dc);
                  }
                  §§goto(addr01bc);
               }
               §§goto(addr01c9);
            }
            if(§§pop() != §§pop())
            {
               if(!_loc9_)
               {
                  §§goto(addr01d5);
               }
            }
            §§goto(addr01dc);
         }
         _loc7_ = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               addr01bc:
               addr01be:
               §§push(_loc7_);
               §§push(param1.§1C§());
               if(!_loc9_)
               {
                  addr01c9:
                  §§push(Number(§§pop()));
               }
               break loop2;
            }
            addr01d5:
            param1.§=!=§(_loc7_);
            break;
         }
         addr01dc:
      }
   }
}

