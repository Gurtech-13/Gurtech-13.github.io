package §>T§
{
   public class §@O§
   {
      
      public function §@O§()
      {
      }
      
      public static function §`e§(param1:int, param2:int, param3:int) : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc4_)
                        {
                           return 16;
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!_loc4_)
                           {
                              return 32;
                           }
                        }
                        else
                        {
                           §§push(param2);
                           §§push(0);
                           if(_loc4_)
                           {
                              break loop0;
                           }
                           addr0066:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(64);
                                 if(_loc5_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr009e);
                              }
                              else
                              {
                                 §§push(param2);
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    break loop0;
                                 }
                              }
                              §§goto(addr00a0);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0066);
               }
            }
            if(§§pop() < §§pop())
            {
               if(_loc5_)
               {
                  addr0099:
                  return 128;
               }
            }
            else
            {
               addr009e:
               addr00a0:
               if(param3 <= 0)
               {
                  §§push(512);
                  break loop1;
               }
            }
            addr00a4:
            return 256;
         }
         return §§pop();
      }
   }
}

