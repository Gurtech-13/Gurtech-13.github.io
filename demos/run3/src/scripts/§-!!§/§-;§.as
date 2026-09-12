package §-!!§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §+Y§.§#d§;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import §`_§.§^s§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import haxe.ds.IntMap;
   
   public class §-;§
   {
      
      public function §-;§()
      {
      }
      
      public static function §>a§(param1:uint, param2:Number) : uint
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            §§push(param2);
            if(_loc4_)
            {
               if(§§pop() <= 0)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(16);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop() >>> §§pop());
                        if(_loc4_)
                        {
                           §§push(uint(§§pop()));
                        }
                     }
                     §§push(255);
                     break;
                  }
               }
               §§push(param2);
               if(!_loc4_)
               {
                  break;
               }
               §§push(§§pop() * §§pop());
            }
            §§push(int(§§pop()));
            if(_loc4_)
            {
               §§push(§§pop() & 0xFF);
            }
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
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() << 16);
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc4_)
                                 {
                                    §§push(8);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() >>> §§pop());
                                    if(!_loc3_)
                                    {
                                       §§push(uint(§§pop()));
                                       if(!_loc4_)
                                       {
                                          break loop6;
                                       }
                                    }
                                 }
                                 §§push(255);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              §§push(§§pop() & §§pop());
                              if(_loc4_)
                              {
                                 §§push(param2);
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    break loop0;
                                 }
                                 §§push(int(§§pop()));
                                 §§push(255);
                                 if(_loc3_)
                                 {
                                    break loop3;
                                 }
                                 §§push(§§pop() & §§pop());
                              }
                              §§push(8);
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                              §§push(§§pop() | §§pop() << §§pop());
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(param1);
                           break;
                        }
                        §§push(255);
                        break;
                     }
                     §§push(§§pop() & §§pop());
                     §§push(param2);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  break loop0;
               }
               return §§pop() | §§pop() & §§pop();
            }
            return §§pop();
         }
         §§push(int(§§pop()));
         §§push(255);
         break loop3;
      }
      
      public static function §+c§(param1:uint, param2:uint, param3:Number) : uint
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop7:
               while(true)
               {
                  §§push(param3);
                  if(_loc7_)
                  {
                     loop8:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(param1);
                                    if(_loc7_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr0056);
                                 }
                                 break;
                              }
                              §§push(param3);
                              if(!_loc7_)
                              {
                                 break loop8;
                              }
                              §§push(1);
                              if(!_loc7_)
                              {
                                 break loop7;
                              }
                           }
                           if(§§pop() >= §§pop())
                           {
                              break;
                           }
                           addr0058:
                           §§push(param1 & 0xFF0000);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * (1 - param3));
                              if(!_loc8_)
                              {
                                 break loop8;
                              }
                              break loop0;
                           }
                           break loop1;
                        }
                        §§push(param2);
                        if(_loc7_)
                        {
                           addr0056:
                           return §§pop();
                        }
                        §§goto(addr0058);
                     }
                  }
                  break loop8;
               }
               §§push(§§pop() + §§pop() * param3);
               if(!_loc8_)
               {
                  break loop0;
               }
               §§goto(addr007c);
            }
            §§goto(addr0084);
         }
         addr007c:
         §§push(int(Number(§§pop())));
         if(_loc7_)
         {
            break loop1;
         }
         addr0084:
         var _loc4_:* = §§pop();
         §§push(param1 & 0xFF00);
         if(_loc7_)
         {
            §§push(§§pop() * (1 - param3));
            if(!_loc8_)
            {
               §§push(§§pop() + (param2 & 0xFF00) * param3);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§push(int(§§pop()));
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param1 & 0xFF);
         if(!_loc8_)
         {
            §§push(§§pop() * (1 - param3));
            if(_loc7_)
            {
               §§push(§§pop() + (param2 & 0xFF) * param3);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§push(int(§§pop()));
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  §§push(_loc4_);
                  if(_loc7_)
                  {
                     §§push(16711680);
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(§§pop() < §§pop() ? _loc4_ : 16711680);
                     continue loop5;
                  }
                  addr011c:
                  §§push(_loc5_);
                  if(!_loc8_)
                  {
                     §§push(65280);
                     if(!_loc7_)
                     {
                        break loop5;
                     }
                     if(§§pop() < §§pop())
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           break loop4;
                        }
                     }
                     else
                     {
                        §§push(65280);
                     }
                     §§goto(addr014e);
                  }
                  §§goto(addr0162);
               }
               §§goto(addr010a);
            }
            §§goto(addr011c);
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(16711680);
                  if(!_loc8_)
                  {
                     break loop3;
                  }
                  addr014e:
                  §§push(65280);
                  break loop5;
               }
               addr0162:
               §§push(255);
               if(_loc7_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(255);
                     break loop4;
                  }
                  if(!_loc8_)
                  {
                     §§push(_loc6_);
                     break loop4;
                  }
                  §§goto(addr0184);
               }
               §§goto(addr0182);
            }
            §§push(§§pop() & §§pop());
            if(_loc7_)
            {
               §§push(§§pop() | §§pop());
               §§push(_loc6_);
               if(_loc7_)
               {
                  break loop6;
               }
            }
            break;
         }
         addr0184:
         return §§pop() | §§pop() & 0xFF;
         addr0182:
      }
   }
}

