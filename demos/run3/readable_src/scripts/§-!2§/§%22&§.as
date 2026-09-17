package §-!2§
{
   import flash.display3D.Program3D;
   import nme3D.Context3DUtils;
   
   public final class §"&§
   {
      
      public function §"&§()
      {
      }
      
      public static function fromString(param1:String) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop().toUpperCase());
               if(_loc5_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            if(_loc4_)
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
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push("BACK");
                                       if(_loc4_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(5);
                                                if(_loc4_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             break loop7;
                                          }
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             break loop6;
                                          }
                                          §§push("BOTTOM");
                                          if(_loc5_)
                                          {
                                             break loop5;
                                          }
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(1);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             break loop1;
                                          }
                                          break loop7;
                                       }
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          break loop6;
                                       }
                                       break loop2;
                                    }
                                    return §§pop();
                                 }
                                 §§push(4);
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                                 break loop1;
                              }
                              §§push("FRONT");
                              if(_loc5_)
                              {
                                 break loop4;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    break loop7;
                                 }
                                 break loop3;
                              }
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 break loop2;
                              }
                           }
                           §§push("LEFT");
                           if(!_loc5_)
                           {
                              break loop4;
                           }
                           break;
                        }
                        §§goto(addr00fe);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(_loc3_);
                        break loop2;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(2);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0112);
                  }
                  §§push(3);
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  §§goto(addr0112);
               }
               addr00fe:
               if(§§pop() == "RIGHT")
               {
                  break loop3;
               }
               addr0112:
               return 0;
            }
            break loop7;
         }
         return §§pop();
      }
   }
}

