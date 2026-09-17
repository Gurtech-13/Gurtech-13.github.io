package §`!7§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.api.§9'§;
   import flash.geom.Rectangle;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   
   public class §"!>§
   {
      
      public function §"!>§()
      {
      }
      
      public static function §9<§(param1:int) : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            if(!_loc7_)
            {
               if(param1 >= 64)
               {
                  §§push("");
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§goto(addr004e);
               }
            }
            §§push(String);
            if(_loc6_)
            {
               §§push(48);
               if(!_loc7_)
               {
                  §§push(§§pop() + param1);
               }
               return §§pop().fromCharCode(§§pop());
            }
            break;
         }
         addr004e:
         var _loc2_:* = §§pop();
         §§push(false);
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(30);
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(§§pop() >> §§pop());
                     if(_loc7_)
                     {
                        break loop2;
                     }
                     §§push(int(§§pop()));
                     if(!_loc6_)
                     {
                        break loop2;
                     }
                  }
                  §§push(0);
                  break;
               }
               if(§§pop() != §§pop())
               {
                  if(_loc6_)
                  {
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        §§push(String);
                        §§push(48);
                        if(!_loc7_)
                        {
                           §§push(param1);
                           if(!_loc7_)
                           {
                              §§push(§§pop() >> 30);
                              if(_loc6_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop() + §§pop().fromCharCode(§§pop()));
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                        }
                     }
                     _loc2_ = §§pop();
                     if(_loc6_)
                     {
                        §§push(true);
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc3_ = §§pop();
                     }
                  }
               }
            }
            §§push(0);
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr00ea);
         }
         addr00ea:
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            loop0:
            while(_loc4_ < 5)
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
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 _loc4_++;
                                 _loc5_ = §§pop();
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(true);
                                 if(_loc3_)
                                 {
                                    break loop7;
                                 }
                                 if(_loc7_)
                                 {
                                    break loop6;
                                 }
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    break loop5;
                                 }
                                 §§push(param1);
                                 §§push(24);
                                 if(_loc7_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§§pop() >> §§pop());
                              }
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 §§push(0);
                                 if(!_loc6_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc7_)
                                 {
                                    break loop6;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc7_)
                                 {
                                    break loop6;
                                 }
                                 §§goto(addr01b5);
                              }
                              §§goto(addr01c9);
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                                 §§push(String);
                                 §§push(48);
                                 if(_loc6_)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!_loc7_)
                                          {
                                             §§push(24);
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() >> §§pop());
                                             if(_loc7_)
                                             {
                                                break loop10;
                                             }
                                          }
                                          §§push(int(§§pop()));
                                          if(!_loc7_)
                                          {
                                             §§push(63);
                                             break;
                                          }
                                          break loop10;
                                       }
                                       §§push(§§pop() & §§pop());
                                       break;
                                    }
                                 }
                                 §§push(§§pop() + §§pop().fromCharCode(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                           _loc2_ = §§pop();
                           if(!_loc7_)
                           {
                              break loop5;
                           }
                           continue loop0;
                        }
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              break loop8;
                           }
                        }
                        §§goto(addr01be);
                     }
                     §§push(Boolean(§§pop()));
                     if(_loc6_)
                     {
                        break loop7;
                     }
                     §§goto(addr01b6);
                  }
                  addr01b6:
                  _loc3_ = true;
                  addr01b5:
                  if(!_loc7_)
                  {
                     addr01be:
                     §§push(param1);
                     §§push(6);
                     break;
                  }
                  continue loop0;
               }
               §§push(§§pop() << §§pop());
               if(_loc6_)
               {
                  addr01c9:
                  §§push(int(§§pop()));
               }
               param1 = §§pop();
            }
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : int
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = 0;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = int(param1.length);
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     break loop1;
                  }
                  if(§§pop() < _loc4_)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_++);
                        if(_loc7_)
                        {
                           _loc5_ = §§pop();
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc2_);
                                 §§push(6);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() << §§pop());
                                 if(!_loc7_)
                                 {
                                    break loop2;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§push(_loc2_);
                              §§push(param1.charCodeAt(_loc5_) - 48 & 0x3F);
                              break;
                           }
                           §§push(§§pop() | §§pop());
                           if(_loc6_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
               }
            }
            return _loc2_;
         }
         return §§pop();
      }
   }
}

