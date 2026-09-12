package haxeutils.math
{
   import §!!$§.§ 6§;
   import §%!Q§.§>K§;
   import §3!b§.MyTurn;
   import com.player03.layout.§ 7§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   
   public class §<!$§
   {
      
      public static var §?u§:Object = null;
      
      public function §<!$§()
      {
      }
      
      public static function random(param1:Number = 0, param2:Number = 1) : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
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
                        if(_loc6_)
                        {
                           if(§<!$§.§?u§ != null)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§<!$§.§?u§));
                                          if(_loc6_)
                                          {
                                             §§push(param2);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(param1);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                break loop7;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          break loop7;
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       _loc3_ = §§pop();
                                       if(!_loc6_)
                                       {
                                          break loop6;
                                       }
                                    }
                                    §<!$§.§?u§ = null;
                                    if(!_loc7_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 return §§pop();
                              }
                              §§push(_loc3_);
                              break loop7;
                           }
                           loop0:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             §§push(Number(Math.random()));
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_)
                                             {
                                                break loop11;
                                             }
                                             §§push(1);
                                             if(!_loc6_)
                                             {
                                                break loop10;
                                             }
                                             _loc3_ = §§pop() - §§pop();
                                             if(_loc7_)
                                             {
                                                break loop9;
                                             }
                                             §§push(2);
                                          }
                                          §§push(Number(Math.random()));
                                          break;
                                       }
                                       §§push(§§pop() * §§pop());
                                       §§push(1);
                                       if(_loc6_)
                                       {
                                          break loop10;
                                       }
                                       §§goto(addr0123);
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                       _loc5_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          break loop9;
                                       }
                                       break loop1;
                                    }
                                    break loop3;
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc6_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          §§push(_loc4_);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * _loc4_);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   break loop11;
                                                }
                                                break loop2;
                                             }
                                             break loop4;
                                          }
                                          break loop5;
                                       }
                                       break loop4;
                                    }
                                    break loop0;
                                 }
                                 break loop2;
                              }
                              addr0123:
                              §§push(_loc5_ >= 1);
                              if(_loc6_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                           }
                        }
                        _loc5_ = Number(Math.sqrt(-2 * Number(Math.log(_loc5_)) / _loc5_));
                        if(!_loc7_)
                        {
                           §§push(§<!$§);
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§push(§§pop() * _loc5_);
                           }
                           §§pop().§?u§ = §§pop();
                        }
                        break loop1;
                     }
                     §§goto(addr019c);
                  }
                  §§goto(addr018c);
               }
               §§goto(addr019e);
            }
            §§goto(addr019c);
         }
         addr019e:
         §§push(_loc4_);
         if(!_loc7_)
         {
            §§push(_loc5_);
            if(!_loc7_)
            {
               addr018c:
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  break loop2;
               }
               §§push(param2);
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  break loop2;
               }
            }
            addr019c:
            §§push(§§pop() + §§pop());
         }
         return Number(§§pop());
      }
   }
}

