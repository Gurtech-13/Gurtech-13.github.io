package co.janicek.core.math
{
   public class UUID
   {
      
      public static var init__:Boolean;
      
      public static var CHARS:Array;
      
      public function UUID()
      {
      }
      
      public static function uuidFast(param1:Object = undefined) : String
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:int = 0;
         var _loc7_:* = 0;
         while(true)
         {
            if(_loc9_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            §§push(RandomCore.makeRandomSeed());
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            param1 = §§pop();
            break;
         }
         §§push(UUID.CHARS);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push([]);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!_loc8_)
         {
            loop0:
            while(_loc6_ < 36)
            {
               loop2:
               while(true)
               {
                  loop3:
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
                              §§push(_loc6_++);
                              if(_loc9_)
                              {
                                 _loc7_ = §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(true);
                                    if(!_loc8_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(true);
                                          if(!_loc8_)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc7_ == 8)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         break loop12;
                                                      }
                                                   }
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc7_ == 13);
                                                      if(!_loc8_)
                                                      {
                                                         break loop12;
                                                      }
                                                      break;
                                                   }
                                                }
                                                if(!§§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§pop();
                                                      if(_loc8_)
                                                      {
                                                         break loop11;
                                                      }
                                                      §§push(_loc7_ == 18);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break loop13;
                                          }
                                          if(!§§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          break loop10;
                                       }
                                    }
                                    §§pop();
                                    if(!_loc9_)
                                    {
                                       break loop7;
                                    }
                                    §§push(_loc7_);
                                    if(!_loc8_)
                                    {
                                       §§push(23);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc8_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          break;
                                       }
                                       addr0162:
                                       if(§§pop() > §§pop())
                                       {
                                          break loop8;
                                       }
                                       if(!_loc9_)
                                       {
                                          break loop7;
                                       }
                                       §§push(int(param1));
                                       if(_loc8_)
                                       {
                                          break loop3;
                                       }
                                    }
                                    §§push(§§pop() * 16807);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() % 2147483647);
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc9_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc9_)
                                          {
                                             §§push(_loc7_);
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             §§push("-");
                                             if(!_loc8_)
                                             {
                                                §§pop()[§§pop()] = §§pop();
                                                if(_loc9_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr0152:
                                                §§pop()[§§pop()] = §§pop();
                                             }
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr01db);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc7_);
                                       §§push(14);
                                       if(_loc8_)
                                       {
                                          break loop9;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          §§push(_loc3_);
                                          if(!_loc9_)
                                          {
                                             §§goto(addr01f2);
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(2);
                                          if(_loc8_)
                                          {
                                             break loop9;
                                          }
                                          §§goto(addr0162);
                                       }
                                    }
                                    §§push(_loc7_);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 §§push("4");
                                 if(!_loc8_)
                                 {
                                    §§goto(addr0152);
                                 }
                                 else
                                 {
                                    §§goto(addr023d);
                                 }
                              }
                              param1 = §§pop();
                              if(!_loc8_)
                              {
                                 §§push(33554432);
                                 §§push(int(param1));
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() / 2147483647);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() * 16777216);
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() | 0);
                                    if(!_loc8_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 _loc4_ = §§pop();
                              }
                              break loop8;
                           }
                           §§push(§§pop() & §§pop());
                           break loop3;
                        }
                        §§push(_loc4_);
                        if(_loc9_)
                        {
                           §§push(15);
                           if(_loc9_)
                           {
                              break loop9;
                           }
                           §§goto(addr01e6);
                        }
                        §§goto(addr01e4);
                     }
                     §§goto(addr01f1);
                  }
                  _loc5_ = §§pop();
                  if(!_loc8_)
                  {
                     addr01db:
                     §§push(_loc4_);
                     if(!_loc8_)
                     {
                        addr01e6:
                        addr01e4:
                        §§push(§§pop() >> 4);
                        if(!_loc8_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               _loc4_ = §§pop();
               addr01f1:
               addr01f2:
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(_loc7_);
                        §§push(_loc2_);
                        if(_loc9_)
                        {
                           §§push(_loc7_);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(19);
                           if(!_loc9_)
                           {
                              break loop5;
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(_loc5_);
                              break loop4;
                           }
                        }
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           §§push(3);
                           if(!_loc8_)
                           {
                              break loop5;
                           }
                           addr022c:
                           §§push(§§pop() | §§pop());
                           if(_loc8_)
                           {
                           }
                        }
                        break loop4;
                     }
                     §§goto(addr022c);
                  }
                  §§push(§§pop() & §§pop());
                  if(!_loc8_)
                  {
                     break loop6;
                  }
                  break;
               }
               addr023d:
               §§pop()[§§pop()] = §§pop()[§§pop()];
            }
         }
         return _loc3_.join("");
      }
   }
}

