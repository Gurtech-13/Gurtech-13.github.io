package haxeutils.math.geom
{
   import flash.geom.Point;
   
   public class Point2DUtils
   {
      
      public function Point2DUtils()
      {
      }
      
      public static function §-_§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Point = undefined) : Point
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(param5 == null)
         {
            param5 = new Point(0,0);
         }
         loop0:
         while(true)
         {
            §§push(param3);
            if(_loc10_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(param4);
                        if(!_loc10_)
                        {
                           break loop1;
                        }
                     }
                     §§push(§§pop() * param4);
                     break loop1;
                  }
                  §§push(Number(§§pop()));
                  if(!_loc10_)
                  {
                     break loop0;
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc10_)
               {
                  break loop2;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(_loc6_);
            if(_loc10_)
            {
               §§push(§§pop() - 1);
               if(!_loc10_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc7_);
                                       }
                                       else
                                       {
                                          §§push(_loc7_);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          §§push(-§§pop());
                                          if(_loc9_)
                                          {
                                             break loop7;
                                          }
                                       }
                                       §§push(1e-10);
                                       if(!_loc10_)
                                       {
                                          break loop5;
                                       }
                                       §§push(§§pop() < §§pop());
                                       if(!_loc9_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(!§§pop())
                                       {
                                          break loop4;
                                       }
                                       if(!_loc10_)
                                       {
                                          break loop11;
                                       }
                                       §§push(_loc6_);
                                       §§push(0);
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc10_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    else
                                    {
                                       §§push(1 / Number(Math.sqrt(_loc6_)));
                                       if(!_loc10_)
                                       {
                                          break loop10;
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc9_)
                                       {
                                          break loop9;
                                       }
                                       _loc6_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          §§goto(addr00fe);
                                       }
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc10_)
                                 {
                                    break loop8;
                                 }
                                 param3 = §§pop();
                                 if(!_loc10_)
                                 {
                                    break loop4;
                                 }
                              }
                              param5.x = 0;
                              if(!_loc10_)
                              {
                                 addr00fe:
                                 §§push(param3);
                                 if(!_loc9_)
                                 {
                                    §§push(_loc6_);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       break loop12;
                                    }
                                    break loop5;
                                 }
                                 break loop7;
                              }
                              param5.y = 0;
                              if(_loc10_)
                              {
                                 return param5;
                              }
                           }
                           §§push(param4);
                           break loop7;
                        }
                        §§goto(addr012a);
                     }
                     §§goto(addr013d);
                  }
                  §§goto(addr0148);
               }
               §§push(_loc6_);
               if(_loc10_)
               {
                  addr012a:
                  param4 = §§pop() * §§pop();
                  break loop4;
               }
               break;
            }
            §§push(§§pop() * §§pop());
            if(!_loc9_)
            {
               addr013d:
               §§push(param2);
               if(!_loc9_)
               {
                  §§push(§§pop() * param4);
               }
               §§goto(addr0147);
            }
            §§goto(addr0150);
         }
         §§push(param1);
         §§push(param3);
         if(!_loc9_)
         {
            break loop5;
         }
         addr0147:
         addr0150:
         addr0148:
         §§push(§§pop() + §§pop());
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc10_)
            {
               param5.x = _loc8_ * param3;
               if(!_loc10_)
               {
                  break;
               }
            }
            param5.y = _loc8_ * param4;
            break;
         }
         return param5;
      }
      
      public static function §!!'§(param1:Point, param2:Point, param3:Point) : Boolean
      {
         var _temp_1:* = false;
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = NaN;
         §§push(param2.y - param1.y);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.x - param1.x);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(0);
                                 if(!_loc7_)
                                 {
                                    break loop5;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() >= §§pop() ? _loc4_ : -_loc4_);
                                    if(_loc5_ >= 0)
                                    {
                                       if(!_loc7_)
                                       {
                                          break loop4;
                                       }
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(-_loc5_);
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       §§push((param2.x - param1.x) / (param2.y - param1.y));
                                       §§push(param3.x - param1.x);
                                       break;
                                    }
                                    §§push(param2.y - param1.y);
                                    if(_loc8_)
                                    {
                                       break loop3;
                                    }
                                    §§push(param2.x - param1.x);
                                    if(_loc7_)
                                    {
                                       addr00fe:
                                       §§push(§§pop() / §§pop() - (param3.y - param1.y) / (param3.x - param1.x));
                                       if(_loc7_)
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr010b);
                                    }
                                    §§goto(addr011c);
                                 }
                                 §§push(param3.y - param1.y);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() - §§pop() / §§pop());
                                    if(_loc8_)
                                    {
                                       break loop1;
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc8_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr00fe);
                                 }
                              }
                              §§push(_loc6_);
                              break;
                           }
                           §§push(0);
                           if(_loc7_)
                           {
                              break;
                           }
                           break loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc6_);
                           break;
                        }
                        §§push(_loc6_);
                        if(_loc7_)
                        {
                           §§push(-§§pop());
                           if(_loc7_)
                           {
                              break;
                           }
                           break loop3;
                        }
                        §§goto(addr011a);
                     }
                     §§push(§§pop() < 1e-10);
                     if(_loc7_)
                     {
                        return §§pop();
                     }
                     §§goto(addr011d);
                  }
                  §§push(Number(§§pop()));
                  break loop1;
               }
               if(§§pop() >= §§pop())
               {
                  break loop0;
               }
               §§goto(addr011a);
               §§push(-_loc6_);
            }
            _loc6_ = §§pop();
            addr010b:
            §§push(_loc6_);
            §§push(0);
            break loop2;
         }
         addr011d:
         return _loc6_ < 1e-10;
         addr011a:
         addr011c:
      }
   }
}

