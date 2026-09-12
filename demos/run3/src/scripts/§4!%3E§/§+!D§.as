package §4!>§
{
   import lime.graphics.Image;
   import lime.math.Rectangle;
   
   public class §+!D§
   {
      
      public var y:int;
      
      public var x:int;
      
      public var width:int;
      
      public var §6!A§:int;
      
      public var rect:Rectangle;
      
      public var offset:int;
      
      public var image:Image;
      
      public var height:int;
      
      public function §+!D§(param1:Image, param2:Rectangle = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               image = param1;
               if(!_loc3_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               loop2:
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
                           if(param2 == null)
                           {
                              if(_loc3_)
                              {
                                 rect = param1.get_rect();
                                 break loop8;
                              }
                              addr0063:
                              param2.x = 0;
                              loop10:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(param2.y);
                                    §§push(0);
                                    if(_loc3_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             break loop7;
                                          }
                                          param2.y = 0;
                                          if(_loc4_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       §§push(param2.x);
                                       §§push(param2.width);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc3_)
                                       {
                                          break loop10;
                                       }
                                       §§push(Number(§§pop()));
                                       §§push(param1.width);
                                       if(!_loc3_)
                                       {
                                          break loop9;
                                       }
                                    }
                                    addr00a3:
                                    if(§§pop() > §§pop())
                                    {
                                       param2.width = param1.width - param2.x;
                                    }
                                    §§push(param2.y);
                                    §§push(param2.height);
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                 }
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(param2.x);
                              if(_loc4_)
                              {
                                 break loop10;
                              }
                              §§push(0);
                              if(!_loc4_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    continue loop10;
                                 }
                                 §§goto(addr0063);
                              }
                              else
                              {
                                 §§goto(addr00a3);
                              }
                           }
                           break loop10;
                        }
                        if(§§pop() > §§pop())
                        {
                           break loop7;
                        }
                        §§goto(addr00e8);
                     }
                     §§goto(addr0116);
                  }
                  param2.height = param1.height - param2.y;
                  addr00e8:
                  §§push(param2.width);
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        param2.width = 0;
                        if(!_loc3_)
                        {
                           break loop8;
                        }
                     }
                     §§push(param2.height);
                     break loop1;
                  }
                  §§goto(addr0106);
               }
               param2.height = 0;
               §§goto(addr010f);
            }
            addr0106:
            if(§§pop() < 0)
            {
               break loop2;
            }
            addr010f:
            rect = param2;
            addr0116:
            §§push(§§findproperty(§6!A§));
            §§push(param1.buffer.§+!<§());
            if(!_loc4_)
            {
               §§push(int(§§pop()));
            }
            §§pop().§6!A§ = §§pop();
            if(!_loc4_)
            {
               break;
            }
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
                        §§push(§§findproperty(offset));
                        §§push(§6!A§);
                        if(!_loc4_)
                        {
                           §§push(y);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(param1.offsetY);
                           if(_loc4_)
                           {
                              break loop5;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              break loop3;
                           }
                        }
                        §§push(x);
                        if(_loc3_)
                        {
                           §§push(param1.offsetX);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 break loop4;
                              }
                              break;
                           }
                           break loop5;
                        }
                        break loop4;
                     }
                     §§push(§§pop() + §§pop());
                     break loop3;
                  }
                  §§push(§§pop() * §§pop());
                  break loop6;
               }
               §§push(4);
               break loop5;
            }
            §§pop().offset = §§pop();
            return;
         }
         x = int(Math.ceil(rect.x));
         y = int(Math.ceil(rect.y));
         width = int(Math.floor(rect.width));
         if(!_loc4_)
         {
            height = int(Math.floor(rect.height));
         }
         continue loop5;
      }
   }
}

