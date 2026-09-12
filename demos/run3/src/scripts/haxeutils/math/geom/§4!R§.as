package haxeutils.math.geom
{
   public class §4!R§
   {
      
      public static var init__:Boolean;
      
      public static var §-$§:Point3D;
      
      public function §4!R§()
      {
      }
      
      public static function §9!L§(param1:§"B§, param2:§"B§, param3:§"B§ = undefined) : §"B§
      {
         var _temp_1:* = false;
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = _temp_1;
         if(param3 == null)
         {
            param3 = new §"B§();
         }
         §§push(param1.x);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param1.y);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param1.z);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param1.w);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(param2.x);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param2.y);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(param2.z);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(param2.w);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc12_)
            {
               while(true)
               {
                  §§push(param3);
                  §§push(_loc7_ * _loc8_);
                  if(_loc12_)
                  {
                     §§push(_loc4_);
                     if(_loc12_)
                     {
                        §§push(_loc11_);
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(Number(§§pop()));
                  §§push(_loc5_);
                  if(_loc12_)
                  {
                     §§push(_loc10_);
                     if(_loc12_)
                     {
                        break;
                     }
                     addr00bf:
                     §§pop().x = §§pop() - §§pop() * §§pop();
                     addr00be:
                     if(_loc12_)
                     {
                        §§goto(addr00c9);
                     }
                     break loop0;
                  }
                  addr00bc:
                  §§goto(addr00be);
               }
               §§push(§§pop() + §§pop() * §§pop());
               §§push(_loc6_);
               if(_loc12_)
               {
                  §§goto(addr00bc);
               }
               §§goto(addr00bf);
               §§push(_loc9_);
            }
            addr00c9:
            while(true)
            {
               §§push(param3);
               §§push(_loc7_);
               §§push(_loc9_);
               if(!_loc13_)
               {
                  §§push(§§pop() * §§pop());
                  §§push(_loc4_);
                  §§push(_loc10_);
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(§§pop() - §§pop() * §§pop());
                  §§push(_loc5_);
                  §§push(_loc11_);
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc13_)
                  {
                     §§push(§§pop() + §§pop());
                     §§push(_loc6_);
                  }
               }
               §§push(_loc8_);
               break;
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().y = §§pop();
            if(!_loc13_)
            {
               break;
            }
            §§goto(addr01a7);
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(param3);
               §§push(_loc7_ * _loc10_);
               §§push(_loc4_);
               if(_loc12_)
               {
                  §§push(_loc9_);
                  if(!_loc12_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc12_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(_loc5_);
               §§push(_loc8_);
               if(_loc12_)
               {
                  break;
               }
               addr0149:
               §§push(§§pop() * §§pop());
               break loop3;
            }
            §§push(§§pop() * §§pop());
            if(_loc12_)
            {
               §§push(§§pop() - §§pop());
               §§push(_loc6_);
            }
            §§goto(addr0149);
         }
         §§pop().z = §§pop() + §§pop();
         if(_loc12_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  §§push(param3);
                  §§push(_loc7_);
                  if(!_loc13_)
                  {
                     §§push(_loc11_);
                     if(_loc13_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc12_)
                     {
                        break loop5;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(_loc8_);
                     if(_loc12_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc12_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc13_)
                           {
                              break loop5;
                           }
                           break;
                        }
                        break loop6;
                     }
                     §§goto(addr01a3);
                  }
                  §§goto(addr01a5);
               }
               §§goto(addr01a5);
            }
            while(true)
            {
               §§push(_loc5_);
               §§push(_loc9_);
               if(!_loc13_)
               {
                  §§push(§§pop() - §§pop() * §§pop());
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(_loc6_);
                  if(_loc13_)
                  {
                     break loop6;
                  }
                  §§push(_loc10_);
               }
               addr01a3:
               §§push(§§pop() * §§pop());
               break loop6;
            }
            addr01a5:
            §§pop().w = §§pop();
         }
         addr01a7:
         return param3;
      }
      
      public static function §@!M§(param1:§"B§, param2:Point3D, param3:Point3D = undefined) : Point3D
      {
         var _temp_1:* = false;
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = _temp_1;
         if(param3 == null)
         {
            param3 = new Point3D(0,0,0);
         }
         §§push(param1.x);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param1.y);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param1.z);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param1.w);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc7_);
            if(!_loc13_)
            {
               §§push(§§pop() * param2.x);
               if(_loc12_)
               {
                  §§push(_loc5_);
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        §§push(§§pop() * param2.z);
                        if(!_loc13_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc12_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 break loop0;
                              }
                           }
                           §§push(_loc6_);
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() * param2.y);
                        break;
                     }
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc12_)
                  {
                     break;
                  }
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            §§push(_loc7_);
            if(!_loc13_)
            {
               §§push(§§pop() * param2.y);
               if(!_loc13_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * param2.z);
                           if(_loc13_)
                           {
                              break loop3;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(_loc6_);
                           if(_loc13_)
                           {
                              break loop3;
                           }
                        }
                        §§push(§§pop() * param2.x);
                        break loop3;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc13_)
                     {
                        break loop4;
                     }
                  }
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(_loc7_);
                  if(_loc12_)
                  {
                     §§push(param2.z);
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc12_)
                     {
                        continue loop8;
                     }
                     §§push(_loc4_);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * param2.y);
                        if(_loc13_)
                        {
                           break loop6;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc13_)
                     {
                        continue loop8;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc13_)
                  {
                     §§push(_loc5_);
                     if(_loc12_)
                     {
                        break loop6;
                     }
                     break;
                  }
                  continue loop8;
               }
               §§push(§§pop() - §§pop());
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
               continue loop8;
            }
            §§push(§§pop() * param2.x);
            break loop19;
         }
         var _loc10_:* = §§pop();
         loop7:
         while(true)
         {
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc12_)
                  {
                     §§push(-§§pop());
                     if(!_loc13_)
                     {
                        §§push(§§pop() * param2.x);
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(_loc5_);
                        if(_loc12_)
                        {
                           §§push(§§pop() * param2.y);
                           if(_loc13_)
                           {
                              break loop8;
                           }
                        }
                        §§push(§§pop() - §§pop());
                        if(!_loc12_)
                        {
                           break loop7;
                        }
                     }
                  }
                  §§push(_loc6_);
                  if(!_loc13_)
                  {
                     break loop8;
                  }
                  §§goto(addr017b);
               }
               §§push(Number(§§pop()));
               break loop7;
            }
            addr017b:
            §§push(§§pop() - §§pop() * param2.z);
            if(!_loc13_)
            {
               break loop18;
            }
            break;
         }
         var _loc11_:* = §§pop();
         while(true)
         {
            if(!_loc13_)
            {
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param3);
                        §§push(-_loc11_);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * _loc4_);
                           if(!_loc13_)
                           {
                              §§push(_loc8_);
                              if(!_loc12_)
                              {
                                 break loop11;
                              }
                              §§push(_loc7_);
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc13_)
                              {
                                 break loop11;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc13_)
                              {
                                 break loop10;
                              }
                           }
                        }
                        §§push(_loc9_);
                        §§push(_loc6_);
                        if(!_loc13_)
                        {
                           break;
                        }
                        §§goto(addr01d9);
                     }
                     §§push(§§pop() - §§pop() * §§pop());
                     §§push(_loc10_);
                     if(!_loc13_)
                     {
                        break;
                     }
                     §§goto(addr01da);
                  }
                  addr01d9:
                  addr01da:
                  §§push(§§pop() + §§pop() * _loc5_);
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
               §§pop().x = §§pop();
               if(_loc13_)
               {
                  break;
               }
            }
            §§push(param3);
            §§push(_loc11_);
            if(_loc12_)
            {
               loop13:
               while(true)
               {
                  §§push(-§§pop());
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        §§push(§§pop() * _loc5_);
                        §§push(_loc8_);
                        §§push(_loc6_);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           §§push(_loc9_);
                           §§push(_loc7_);
                           if(_loc13_)
                           {
                              break loop13;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§push(_loc10_);
                  §§push(_loc4_);
                  break;
               }
            }
            §§pop().y = §§pop();
            if(_loc12_)
            {
               §§push(param3);
               §§push(_loc11_);
               if(_loc12_)
               {
                  loop15:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(-§§pop());
                           if(_loc12_)
                           {
                              §§push(§§pop() * _loc6_);
                              §§push(_loc8_);
                              §§push(_loc5_);
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc13_)
                              {
                                 break loop16;
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc13_)
                              {
                                 break loop15;
                              }
                           }
                           §§push(_loc9_);
                           §§push(_loc4_);
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              break loop16;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc12_)
                           {
                              §§push(Number(§§pop()));
                              §§push(_loc10_);
                              break loop16;
                           }
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        break loop15;
                     }
                     §§push(_loc7_);
                     break loop17;
                  }
               }
               §§pop().z = §§pop();
            }
            break;
         }
         return param3;
      }
      
      public static function §?!A§(param1:Point3D, param2:Point3D, param3:§"B§ = undefined) : §"B§
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as §"B§;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         while(true)
         {
            if(_loc11_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            param3 = new §"B§();
            break;
         }
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(param1.x * param1.x);
               if(_loc11_)
               {
                  §§push(param1.y * param1.y);
                  if(!_loc11_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc10_)
                  {
                     break loop1;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc11_)
               {
                  §§push(param1.z);
                  if(!_loc10_)
                  {
                     break;
                  }
                  addr0068:
                  §§push(§§pop() + §§pop());
                  if(_loc10_)
                  {
                     break loop1;
                  }
                  §§push(Number(§§pop()));
                  if(!_loc10_)
                  {
                     break loop1;
                  }
               }
               continue loop41;
            }
            §§goto(addr0068);
         }
         var _loc4_:* = Number(§§pop());
         loop3:
         while(true)
         {
            while(true)
            {
               loop9:
               while(true)
               {
                  loop32:
                  while(true)
                  {
                     loop33:
                     while(true)
                     {
                        loop34:
                        while(true)
                        {
                           loop35:
                           while(true)
                           {
                              loop36:
                              while(true)
                              {
                                 loop37:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       loop39:
                                       while(true)
                                       {
                                          loop40:
                                          while(true)
                                          {
                                             loop41:
                                             while(true)
                                             {
                                                loop42:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   §§push(1);
                                                   if(_loc11_)
                                                   {
                                                      _loc5_ = §§pop() - §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc5_ >= 0)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc5_);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc10_)
                                                            {
                                                               break loop10;
                                                            }
                                                            §§push(-§§pop());
                                                            if(!_loc11_)
                                                            {
                                                               break loop33;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(1e-10);
                                                            if(_loc11_)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(!§§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_ == 0)
                                                                     {
                                                                        param1.x = 1;
                                                                        param1.y = 0;
                                                                        if(!_loc10_)
                                                                        {
                                                                           param1.z = 0;
                                                                           if(!_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc11_)
                                                                        {
                                                                           break loop42;
                                                                        }
                                                                        §§push(Number(Math.sqrt(_loc4_)));
                                                                        if(_loc10_)
                                                                        {
                                                                           break loop41;
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        param1.x *= _loc4_;
                                                                        while(true)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              param1.y *= _loc4_;
                                                                              if(!_loc11_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§push(param1);
                                                                           §§push(param1.z);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§§pop() * _loc4_);
                                                                           }
                                                                           §§pop().z = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           break loop40;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(param2.x * param2.x);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() + param2.y * param2.y);
                                                                     if(!_loc11_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§push(param2.z);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(param2.z);
                                                                     if(_loc10_)
                                                                     {
                                                                        break loop37;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0289);
                                                                  }
                                                               }
                                                               §§goto(addr054c);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               _loc4_ = Number(§§pop());
                                                               §§push(_loc4_ - 1);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc11_)
                                                                  {
                                                                     break loop35;
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  if(_loc5_ >= 0)
                                                                  {
                                                                     §§push(_loc5_);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(-§§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        break loop34;
                                                                     }
                                                                  }
                                                               }
                                                               §§push(§§pop() < 1e-10);
                                                               if(_loc11_)
                                                               {
                                                                  break;
                                                               }
                                                               break loop32;
                                                            }
                                                            break loop36;
                                                         }
                                                         §§push(!§§pop());
                                                         if(_loc10_)
                                                         {
                                                            break loop9;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            continue loop14;
                                                         }
                                                         §§push(_loc4_);
                                                         §§push(0);
                                                         if(!_loc11_)
                                                         {
                                                            break loop3;
                                                         }
                                                      }
                                                      §§goto(addr02a8);
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      param2.x = 1;
                                                      param2.y = 0;
                                                      param2.z = 0;
                                                      if(_loc11_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      §§goto(addr0686);
                                                   }
                                                   else
                                                   {
                                                      §§push(1);
                                                      if(_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(Math.sqrt(_loc4_)));
                                                      if(!_loc10_)
                                                      {
                                                         break loop41;
                                                      }
                                                      §§goto(addr06a5);
                                                   }
                                                }
                                                §§goto(addr069d);
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(!_loc11_)
                                             {
                                                break loop13;
                                             }
                                             _loc4_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                param2.x *= _loc4_;
                                                param2.y *= _loc4_;
                                                §§push(param2);
                                                §§push(param2.z);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() * _loc4_);
                                                }
                                                §§pop().z = §§pop();
                                                if(_loc10_)
                                                {
                                                   break loop39;
                                                }
                                                continue loop14;
                                             }
                                             §§goto(addr061e);
                                          }
                                          §§goto(addr06da);
                                       }
                                       §§goto(addr055d);
                                    }
                                    §§goto(addr06af);
                                 }
                                 §§goto(addr0605);
                              }
                              §§goto(addr0626);
                           }
                           §§goto(addr05ff);
                        }
                        §§goto(addr063c);
                     }
                     §§goto(addr05ba);
                  }
                  §§goto(addr0662);
               }
               §§goto(addr0663);
            }
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  loop12:
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        loop14:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(param1.x * param2.x + param1.y * param2.y);
                              if(_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 §§push(param1.z);
                                 §§push(param2.z);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(!_loc11_)
                                    {
                                       break loop12;
                                    }
                                    _loc4_ = §§pop();
                                    loop16:
                                    while(true)
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                §§push(0.9999999999);
                                                if(!_loc11_)
                                                {
                                                   break loop17;
                                                }
                                                if(§§pop() > §§pop())
                                                {
                                                   param3.x = 0;
                                                   if(!_loc10_)
                                                   {
                                                      param3.y = 0;
                                                      if(_loc11_)
                                                      {
                                                         param3.z = 0;
                                                         addr02a8:
                                                         param3.w = 1;
                                                         return param3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr06af);
                                                   }
                                                   §§goto(addr06f8);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(-0.9999999999);
                                                   if(!_loc11_)
                                                   {
                                                      break loop16;
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         _loc6_ = Point3DUtils.§ !K§(param1.x,param1.y,param1.z,1,0,0);
                                                         if(_loc11_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(_loc11_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc6_.x == 0)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc6_.y == 0);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc6_.z == 0);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                            }
                                                            Point3DUtils.§ !K§(param1.x,param1.y,param1.z,0,1,0,_loc6_);
                                                         }
                                                         _loc7_ = param3;
                                                         loop21:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc7_ == null)
                                                                  {
                                                                     _loc7_ = new §"B§();
                                                                  }
                                                                  §§push(Number(Math.sin(1.5707963267948966)));
                                                                  if(_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc5_ = Number(§§pop());
                                                                  _loc7_.x = _loc6_.x * _loc5_;
                                                                  _loc7_.y = _loc6_.y * _loc5_;
                                                                  if(!_loc11_)
                                                                  {
                                                                     break loop21;
                                                                  }
                                                               }
                                                               §§push(_loc7_);
                                                               §§push(_loc6_.z);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() * _loc5_);
                                                               }
                                                               §§pop().z = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     break loop21;
                                                                  }
                                                                  addr04cd:
                                                                  §§push(_loc7_);
                                                                  §§push(_loc7_.y);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() * _loc8_);
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  §§push(_loc7_);
                                                                  §§push(_loc7_.z);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() * _loc8_);
                                                                  }
                                                                  §§pop().z = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     §§push(_loc7_.w);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop() * _loc8_);
                                                                     }
                                                                     §§pop().w = §§pop();
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr0507);
                                                            }
                                                            loop24:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * _loc7_.x);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(_loc7_.y);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(_loc7_.y);
                                                                        if(_loc10_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        §§push(_loc7_.z);
                                                                     }
                                                                     §§push(_loc7_.z);
                                                                     if(_loc10_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        break loop24;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§push(_loc7_.w);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc7_.w);
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break loop28;
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    _loc9_ = §§pop();
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(0);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       break loop28;
                                                                                    }
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr04ba);
                                                                                    }
                                                                                 }
                                                                                 §§push(-§§pop());
                                                                                 break;
                                                                              }
                                                                              §§push(_loc9_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§push(1e-10);
                                                                           break loop24;
                                                                        }
                                                                        §§goto(addr0486);
                                                                     }
                                                                     §§goto(addr0488);
                                                                  }
                                                                  §§goto(addr0507);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               continue loop27;
                                                            }
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc11_)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               addr0486:
                                                               addr0488:
                                                               while(true)
                                                               {
                                                                  if(_loc8_ == 0)
                                                                  {
                                                                     _loc7_.x = 0;
                                                                     _loc7_.y = 0;
                                                                     if(!_loc10_)
                                                                     {
                                                                        _loc7_.z = 0;
                                                                        _loc7_.w = 1;
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr04ba:
                                                                     _loc8_ = 1 / Number(Math.sqrt(_loc8_));
                                                                     §§push(_loc7_);
                                                                     §§push(_loc7_.x);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop() * _loc8_);
                                                                     }
                                                                     §§pop().x = §§pop();
                                                                  }
                                                                  §§goto(addr04cd);
                                                               }
                                                            }
                                                            addr0507:
                                                            return _loc7_;
                                                         }
                                                         _loc7_.w = Number(Math.cos(1.5707963267948966));
                                                         §§push(_loc7_.x);
                                                         break loop22;
                                                      }
                                                      §§goto(addr066d);
                                                   }
                                                   else
                                                   {
                                                      Point3DUtils.§ !K§(param1.x,param1.y,param1.z,param2.x,param2.y,param2.z,§4!R§.§-$§);
                                                      if(!_loc10_)
                                                      {
                                                         param3.x = §4!R§.§-$§.x;
                                                         param3.y = §4!R§.§-$§.y;
                                                         if(!_loc10_)
                                                         {
                                                            addr054c:
                                                            param3.z = §4!R§.§-$§.z;
                                                            if(_loc10_)
                                                            {
                                                               break loop14;
                                                            }
                                                            §§push(param3);
                                                            §§push(Number(Math.sqrt((param1.x * param1.x + param1.y * param1.y + param1.z * param1.z) * (param2.x * param2.x + param2.y * param2.y + param2.z * param2.z))));
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop() + _loc4_);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§pop().w = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               break loop14;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(param3.x);
                                             if(_loc10_)
                                             {
                                                break loop13;
                                             }
                                             §§push(param3.x);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                break;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc10_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc10_)
                                                {
                                                   §§push(param3.z);
                                                   break loop16;
                                                }
                                                break loop10;
                                             }
                                             §§goto(addr05ff);
                                          }
                                          §§push(param3.y);
                                          §§push(param3.y);
                                          if(!_loc10_)
                                          {
                                             §§goto(addr05d3);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr05ef);
                                       }
                                    }
                                    §§push(param3.z);
                                    if(_loc11_)
                                    {
                                       addr05ef:
                                       §§push(§§pop() * §§pop());
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc10_)
                                          {
                                             addr05ff:
                                             §§push(param3.w);
                                             break loop17;
                                          }
                                          break;
                                       }
                                       break loop17;
                                    }
                                 }
                                 addr0605:
                                 §§push(§§pop() * §§pop());
                                 if(_loc10_)
                                 {
                                    break loop11;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc11_)
                                 {
                                    break loop10;
                                 }
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc10_)
                              {
                                 break loop12;
                              }
                              §§goto(addr0630);
                           }
                           §§goto(addr0638);
                        }
                        §§goto(addr068b);
                     }
                     §§goto(addr0650);
                  }
                  _loc5_ = §§pop();
                  addr061e:
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     addr0626:
                     §§push(§§pop() - 1);
                     if(!_loc10_)
                     {
                        addr0630:
                        §§push(Number(§§pop()));
                        if(_loc10_)
                        {
                           break loop10;
                        }
                     }
                     addr0638:
                     _loc8_ = §§pop();
                     addr063c:
                     §§push(_loc8_);
                     §§push(0);
                     break loop3;
                  }
                  continue loop7;
               }
               §§goto(addr065a);
            }
            §§goto(addr0658);
         }
         while(true)
         {
            if(§§pop() >= §§pop())
            {
               §§push(_loc8_);
            }
            else
            {
               §§push(_loc8_);
               if(_loc11_)
               {
                  addr0650:
                  §§push(-§§pop());
                  if(!_loc11_)
                  {
                     break;
                  }
               }
            }
            addr0658:
            addr065a:
            addr0663:
            §§push(§§pop() < 1e-10);
            if(!_loc10_)
            {
               addr0662:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr0675:
               if(!_loc10_)
               {
                  addr066d:
                  §§push(_loc5_);
                  break;
               }
               param3.x = 0;
               while(true)
               {
                  if(_loc11_)
                  {
                     param3.y = 0;
                     addr0686:
                     param3.z = 0;
                     addr068b:
                     param3.w = 1;
                     if(_loc11_)
                     {
                        break;
                     }
                     addr06c4:
                     addr06c4:
                     §§push(param3);
                     §§push(param3.y);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(param3);
                     §§push(param3.z);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().z = §§pop();
                  }
                  else
                  {
                     addr06af:
                     §§push(param3);
                     §§push(param3.x);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc10_)
                     {
                        §§goto(addr06c4);
                     }
                  }
                  addr06e9:
                  §§push(param3);
                  §§push(param3.w);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().w = §§pop();
                  break;
               }
            }
            addr06f8:
            return param3;
         }
         while(true)
         {
            while(true)
            {
               if(§§pop() == 0)
               {
                  §§goto(addr0675);
               }
               else
               {
                  addr06a5:
                  addr069d:
                  §§push(1 / Number(Math.sqrt(_loc5_)));
                  if(_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc5_ = §§pop();
               }
               §§goto(addr06af);
            }
            §§goto(addr06c4);
         }
         §§goto(addr06e9);
      }
      
      public static function §+!5§(param1:Point3D, param2:Point3D, param3:§"B§ = undefined) : §"B§
      {
         var _temp_1:* = false;
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = _temp_1;
         var _loc9_:* = NaN;
         while(true)
         {
            if(!_loc11_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            param3 = new §"B§();
            break;
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               §§push(param1.x * param1.x);
               if(_loc10_)
               {
                  while(true)
                  {
                     §§push(param1.y * param1.y);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc11_)
                           {
                              break loop2;
                           }
                        }
                        §§push(param1.z);
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() * param1.z);
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc10_)
                  {
                     break loop1;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc11_)
               {
                  break;
               }
               break loop1;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc11_)
         {
            §§push(§§pop() - 1);
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc5_);
               §§push(0);
               if(_loc10_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                     addr00a0:
                     §§push(_loc5_ < 1e-10);
                     if(!_loc11_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop3;
                     }
                     if(!_loc10_)
                     {
                        break loop3;
                     }
                     §§push(_loc4_);
                  }
                  else
                  {
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        §§goto(addr00a0);
                        §§push(-§§pop());
                     }
                  }
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  param1.x = 1;
                  if(!_loc11_)
                  {
                     param1.y = 0;
                     param1.z = 0;
                     if(_loc10_)
                     {
                        break loop3;
                     }
                     break;
                  }
               }
               else
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc4_ = §§pop();
                  if(_loc10_)
                  {
                     break;
                  }
                  addr0101:
                  param1.y *= _loc4_;
               }
               §§push(param1);
               §§push(param1.z);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               break loop3;
            }
            param1.x *= _loc4_;
            §§goto(addr0101);
         }
         var _loc6_:Point3D = param2;
         loop5:
         while(true)
         {
            if(_loc6_ == null)
            {
               if(_loc11_)
               {
                  break;
               }
               _loc6_ = new Point3D(0,0,0);
            }
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(param2.x * param1.x + param2.y * param1.y);
                     §§push(param2.z);
                     §§push(param1.z);
                     if(!_loc11_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc10_)
                        {
                           _loc4_ = §§pop() + §§pop();
                           _loc6_.x = param2.x - _loc4_ * param1.x;
                           if(_loc11_)
                           {
                              break;
                           }
                           _loc6_.y = param2.y - _loc4_ * param1.y;
                           if(_loc11_)
                           {
                              break loop5;
                           }
                           §§push(_loc6_);
                           §§push(param2.z);
                           if(!_loc11_)
                           {
                              §§push(_loc4_);
                              if(_loc10_)
                              {
                                 §§push(§§pop() * param1.z);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().z = §§pop();
                           §§push(param2.x * param2.x);
                           if(!_loc10_)
                           {
                              break loop7;
                           }
                           §§push(§§pop() + param2.y * param2.y);
                           if(!_loc10_)
                           {
                              break loop7;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc10_)
                           {
                              break loop6;
                           }
                           §§push(param2.z);
                        }
                        §§push(param2.z);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc10_)
                     {
                        _loc4_ = Number(§§pop());
                        break;
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(1);
                           if(!_loc11_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc11_)
                              {
                                 break;
                              }
                              _loc5_ = §§pop();
                              §§push(_loc5_);
                              if(!_loc11_)
                              {
                                 break loop6;
                              }
                              §§goto(addr0223);
                           }
                           §§goto(addr0235);
                        }
                        §§goto(addr0264);
                     }
                     §§goto(addr026d);
                  }
                  §§push(_loc4_);
                  if(!_loc11_)
                  {
                     continue loop10;
                  }
                  §§goto(addr0222);
               }
               §§goto(addr0264);
            }
            while(true)
            {
               §§push(0);
               if(_loc10_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc11_)
                     {
                        break;
                     }
                     §§push(_loc5_);
                  }
                  else
                  {
                     addr0222:
                     §§push(-_loc5_);
                  }
                  addr0223:
                  §§push(§§pop() < 1e-10);
                  if(!_loc11_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop5;
                  }
                  §§push(_loc4_);
                  §§push(0);
               }
               addr0235:
               if(§§pop() == §§pop())
               {
                  if(_loc10_)
                  {
                     param2.x = 1;
                     param2.y = 0;
                     param2.z = 0;
                     break loop5;
                  }
               }
               else
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(!_loc11_)
                  {
                     break loop7;
                  }
                  addr0264:
                  _loc4_ = §§pop();
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               addr028d:
               §§push(param2);
               §§push(param2.z);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               break loop5;
            }
            addr026d:
            param2.x *= _loc4_;
            if(!_loc10_)
            {
               break;
            }
            param2.y *= _loc4_;
            if(!_loc10_)
            {
               break;
            }
            §§goto(addr028d);
         }
         _loc6_ = §4!R§.§-$§;
         loop12:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  Point3DUtils.§ !K§(param2.x,param2.y,param2.z,param1.x,param1.y,param1.z,_loc6_);
                  if(_loc11_)
                  {
                     break loop12;
                  }
                  §§push(Number(_loc6_.x));
                  if(_loc11_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(!_loc10_)
                  {
                     break loop12;
                  }
               }
               §§push(Number(param2.y));
               if(!_loc11_)
               {
                  break;
               }
               continue loop14;
            }
            _loc5_ = §§pop();
            break;
         }
         §§push(param1.z);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         loop14:
         while(true)
         {
            while(true)
            {
               §§push(_loc4_);
               if(_loc10_)
               {
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     break loop14;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc11_)
               {
                  §§push(_loc7_);
                  break;
               }
               continue loop24;
            }
            §§push(§§pop() + §§pop());
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
               if(!_loc11_)
               {
                  break;
               }
            }
            continue loop24;
         }
         var _loc8_:* = Number(§§pop());
         loop16:
         while(true)
         {
            loop17:
            while(true)
            {
               loop18:
               while(true)
               {
                  loop19:
                  while(true)
                  {
                     loop21:
                     while(true)
                     {
                        loop22:
                        while(true)
                        {
                           loop23:
                           while(true)
                           {
                              loop24:
                              while(true)
                              {
                                 loop25:
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc11_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() > 0)
                                          {
                                             §§push(param3);
                                             §§push(Number(Math.sqrt(1 + _loc8_)));
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() * 0.5);
                                             }
                                             §§pop().w = §§pop();
                                             §§push(0.5);
                                             if(!_loc11_)
                                             {
                                                §§push(param3.w);
                                                if(!_loc11_)
                                                {
                                                   _loc9_ = §§pop() / §§pop();
                                                   §§push(param3);
                                                   §§push(param2.z);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() - param1.y);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() * _loc9_);
                                                      }
                                                   }
                                                   §§pop().x = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      §§push(param3);
                                                      §§push(param1.x - _loc6_.z);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() * _loc9_);
                                                      }
                                                      §§pop().y = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         §§push(param3);
                                                         §§push(_loc6_.y - param2.x);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                         §§pop().z = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            break loop22;
                                                         }
                                                         addr042a:
                                                         §§push(0.5);
                                                         §§push(_loc8_);
                                                         if(_loc11_)
                                                         {
                                                            addr04b3:
                                                            if(§§pop() > §§pop())
                                                            {
                                                               §§push(Number(Math.sqrt(1 - _loc4_ + _loc5_ - _loc7_)));
                                                               if(!_loc11_)
                                                               {
                                                                  addr04d0:
                                                                  §§push(Number(§§pop()));
                                                                  break loop24;
                                                               }
                                                               break loop16;
                                                            }
                                                            §§push(Number(Math.sqrt(1 - _loc4_ - _loc5_ + _loc7_)));
                                                            if(!_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               break loop18;
                                                            }
                                                            break;
                                                         }
                                                         addr0434:
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc10_)
                                                         {
                                                            _loc9_ = Number(§§pop());
                                                            if(!_loc11_)
                                                            {
                                                               §§push(param3);
                                                               §§push(_loc8_);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(§§pop() * 0.5);
                                                               }
                                                               §§pop().x = §§pop();
                                                               §§push(param3);
                                                               §§push(_loc6_.y + param2.x);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(§§pop() * _loc9_);
                                                               }
                                                               §§pop().y = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(param3);
                                                                  §§push(_loc6_.z);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop() + param1.x);
                                                                     if(!_loc10_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(§§pop() * _loc9_);
                                                                  break;
                                                               }
                                                               §§pop().z = §§pop();
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr05c4);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr04e7);
                                                         }
                                                      }
                                                      §§push(param3);
                                                      §§push(param2.z);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() - param1.y);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                      }
                                                      §§pop().w = §§pop();
                                                      if(_loc10_)
                                                      {
                                                      }
                                                      break loop22;
                                                   }
                                                   break loop21;
                                                }
                                                break loop23;
                                             }
                                             break;
                                          }
                                          loop28:
                                          while(true)
                                          {
                                             loop29:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(_loc10_)
                                                   {
                                                      if(_loc4_ < _loc5_)
                                                      {
                                                         break loop28;
                                                      }
                                                      if(_loc10_)
                                                      {
                                                         §§pop();
                                                         if(_loc11_)
                                                         {
                                                            break loop25;
                                                         }
                                                         §§push(_loc4_);
                                                         if(_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc7_);
                                                         if(!_loc10_)
                                                         {
                                                            break loop29;
                                                         }
                                                         §§push(§§pop() >= §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            break loop28;
                                                         }
                                                      }
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   break loop28;
                                                }
                                                §§goto(addr041a);
                                             }
                                             §§goto(addr0434);
                                          }
                                          if(§§pop())
                                          {
                                             §§push(Number(Math.sqrt(1 + _loc4_ - _loc5_ - _loc7_)));
                                             if(!_loc10_)
                                             {
                                                break loop16;
                                             }
                                             addr041a:
                                             §§push(Number(§§pop()));
                                             if(!_loc10_)
                                             {
                                                break loop24;
                                             }
                                             _loc8_ = §§pop();
                                             if(_loc11_)
                                             {
                                                break loop21;
                                             }
                                             §§goto(addr042a);
                                          }
                                          else
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc7_);
                                             if(_loc11_)
                                             {
                                                break loop19;
                                             }
                                          }
                                          §§goto(addr04b3);
                                       }
                                       _loc8_ = §§pop();
                                       break loop17;
                                    }
                                    §§goto(addr04d0);
                                 }
                                 §§goto(addr052f);
                              }
                              _loc8_ = §§pop();
                              if(!_loc11_)
                              {
                                 §§push(0.5);
                                 §§push(_loc8_);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 break loop19;
                              }
                              break loop17;
                           }
                           §§push(§§pop() / §§pop());
                           break loop16;
                        }
                        §§goto(addr05d8);
                     }
                     §§goto(addr0506);
                  }
                  §§goto(addr0574);
               }
               _loc9_ = §§pop();
               while(true)
               {
                  §§push(param3);
                  §§push(_loc6_.z);
                  if(_loc10_)
                  {
                     §§push(§§pop() + param1.x);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() * _loc9_);
                  break;
               }
               §§pop().x = §§pop();
               §§push(param3);
               §§push(param2.z);
               if(!_loc11_)
               {
                  §§push(§§pop() + param1.y);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc9_);
                  }
               }
               §§pop().y = §§pop();
               §§push(param3);
               §§push(_loc8_);
               if(_loc10_)
               {
                  §§push(§§pop() * 0.5);
               }
               §§pop().z = §§pop();
               addr05c4:
               §§push(param3);
               §§push(_loc6_.y - param2.x);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc9_);
               }
               §§pop().w = §§pop();
               §§goto(addr05d8);
            }
            §§push(0.5);
            if(!_loc11_)
            {
               addr0574:
               §§push(§§pop() / _loc8_);
               if(!_loc10_)
               {
                  break loop18;
               }
            }
            §§push(Number(§§pop()));
            break loop18;
         }
         addr04e7:
         _loc9_ = Number(§§pop());
         §§push(param3);
         §§push(_loc6_.y + param2.x);
         if(!_loc11_)
         {
            §§push(§§pop() * _loc9_);
         }
         §§pop().x = §§pop();
         if(!_loc11_)
         {
            addr0506:
            §§push(param3);
            §§push(_loc8_);
            if(!_loc11_)
            {
               §§push(§§pop() * 0.5);
            }
            §§pop().y = §§pop();
            §§push(param3);
            §§push(param2.z);
            if(!_loc11_)
            {
               §§push(§§pop() + param1.y);
               if(_loc10_)
               {
                  §§push(§§pop() * _loc9_);
               }
            }
            §§pop().z = §§pop();
            addr052f:
            §§push(param3);
            §§push(param1.x - _loc6_.z);
            if(!_loc11_)
            {
               §§push(§§pop() * _loc9_);
            }
            §§pop().w = §§pop();
         }
         addr05d8:
         return param3;
      }
      
      public static function §,![§(param1:§"B§, param2:§1!1§ = undefined) : §1!1§
      {
         var _temp_1:* = false;
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(param2 == null)
            {
               if(_loc6_)
               {
                  break;
               }
               param2 = new §1!1§();
            }
            param2.angle = 2 * Number(Math.acos(param1.w));
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(param2.angle);
                  if(_loc5_)
                  {
                     if(§§pop() == 0)
                     {
                        param2.x = 1;
                        param2.y = 0;
                        break loop0;
                     }
                     param2.x = param1.x;
                     param2.y = param1.y;
                     param2.z = param1.z;
                     §§push(param2.x * param2.x);
                     §§push(param2.y * param2.y);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           break loop1;
                        }
                     }
                  }
                  §§push(param2.z);
                  if(_loc5_)
                  {
                     §§push(§§pop() * param2.z);
                  }
                  break;
               }
               §§push(§§pop() + §§pop());
               break;
            }
            var _loc3_:* = Number(§§pop());
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            loop3:
            while(true)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  while(true)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        §§push((§§pop() >= §§pop() ? _loc4_ : -_loc4_) < 1e-10);
                        if(!_loc6_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop3;
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(_loc3_);
                        §§push(0);
                     }
                     if(§§pop() == §§pop())
                     {
                        param2.x = 1;
                        if(_loc5_)
                        {
                           break;
                        }
                        addr00fa:
                        param2.z = 0;
                        break loop3;
                     }
                     §§push(1 / Number(Math.sqrt(_loc3_)));
                  }
                  param2.y = 0;
                  §§goto(addr00fa);
               }
               _loc3_ = §§pop();
               param2.x *= _loc3_;
               param2.y *= _loc3_;
               §§push(param2);
               §§push(param2.z);
               if(_loc5_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               break;
            }
            return param2;
         }
         param2.z = 0;
         return param2;
      }
      
      public static function §1!A§(param1:Number, param2:Number, param3:Number, param4:§"B§ = undefined) : §"B§
      {
         var _temp_1:* = false;
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = _temp_1;
         if(param4 == null)
         {
            param4 = new §"B§();
         }
         §§push(Number(Math.cos(param3 / 2)));
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(Number(Math.cos(param1 / 2)));
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(Number(Math.cos(param2 / 2)));
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(Number(Math.sin(param3 / 2)));
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(Number(Math.sin(param1 / 2)));
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(Number(Math.sin(param2 / 2)));
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         while(true)
         {
            if(!_loc12_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param4);
                        §§push(_loc8_);
                        if(!_loc12_)
                        {
                           §§push(_loc6_);
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc11_)
                           {
                              break loop1;
                           }
                           §§push(_loc7_);
                           if(!_loc11_)
                           {
                              break loop2;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc11_)
                           {
                              break loop1;
                           }
                        }
                        §§push(_loc5_);
                        if(!_loc12_)
                        {
                           break loop2;
                        }
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc12_)
                     {
                        break loop1;
                     }
                     §§goto(addr00ea);
                  }
                  §§push(_loc9_);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        break loop3;
                     }
                     §§push(_loc10_);
                  }
                  §§push(§§pop() * §§pop());
                  break loop3;
               }
               addr00ea:
               §§pop().x = Number(§§pop());
               if(!_loc11_)
               {
                  break;
               }
            }
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(param4);
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(_loc7_);
                           if(!_loc11_)
                           {
                              break loop5;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc11_)
                        {
                           break;
                        }
                        break loop4;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc8_);
                     if(!_loc12_)
                     {
                        break loop5;
                     }
                     addr0135:
                     addr0137:
                     §§push(§§pop() * _loc10_);
                     break;
                  }
                  addr0138:
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break loop4;
               }
               while(true)
               {
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc12_)
                     {
                        break;
                     }
                     §§goto(addr0135);
                  }
                  §§goto(addr0137);
               }
               §§goto(addr0138);
            }
            §§pop().y = §§pop();
            if(_loc11_)
            {
               §§push(param4);
               §§push(_loc5_);
               if(!_loc12_)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(_loc10_);
                           if(_loc11_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(_loc8_);
                              if(_loc12_)
                              {
                                 break loop6;
                              }
                           }
                        }
                        §§push(_loc9_);
                        if(_loc11_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              break loop6;
                           }
                           §§goto(addr018e);
                        }
                        §§goto(addr018d);
                     }
                  }
                  addr018e:
                  addr018d:
                  §§push(§§pop() - §§pop() * _loc7_);
                  break loop7;
               }
               §§pop().z = §§pop();
               if(!_loc12_)
               {
                  break;
               }
               §§goto(addr01e0);
            }
            break;
         }
         loop11:
         while(true)
         {
            while(true)
            {
               §§push(param4);
               §§push(_loc5_);
               if(!_loc12_)
               {
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc12_)
                  {
                     break loop11;
                  }
               }
               §§push(_loc7_);
               if(!_loc12_)
               {
                  break;
               }
               addr01dd:
               §§push(§§pop() - §§pop());
               break loop11;
            }
            §§push(§§pop() * §§pop());
            if(!_loc11_)
            {
               break;
            }
            §§push(_loc8_);
            if(!_loc12_)
            {
               while(true)
               {
                  §§push(_loc9_);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(_loc10_);
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
            }
            §§goto(addr01dd);
         }
         §§pop().w = §§pop();
         addr01e0:
         return param4;
      }
      
      public static function §+!Q§(param1:§"B§, param2:§"B§, param3:Number, param4:§"B§ = undefined) : §"B§
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(param4 == null)
            {
               if(!_loc8_)
               {
                  break;
               }
               param4 = new §"B§();
            }
            while(true)
            {
               §§push(param4);
               §§push(param1.x);
               if(!_loc7_)
               {
                  §§push(param3);
                  if(_loc8_)
                  {
                     §§push(param2.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() - param1.x);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().x = §§pop();
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(param4);
                  §§push(param1.y);
                  if(_loc8_)
                  {
                     §§push(param3);
                     if(!_loc7_)
                     {
                        §§push(param2.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() - param1.y);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(_loc8_)
                  {
                     break loop0;
                  }
                  addr00b9:
                  while(true)
                  {
                     §§push(param4);
                     §§push(param1.w);
                     if(!_loc7_)
                     {
                        §§push(param3);
                        if(!_loc7_)
                        {
                           §§push(param2.w);
                           if(_loc8_)
                           {
                              §§push(§§pop() - param1.w);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().w = §§pop();
                  break;
               }
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     §§push(param4.x * param4.x);
                     §§push(param4.y);
                     §§push(param4.y);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc7_)
                           {
                              break;
                           }
                        }
                        §§push(param4.z);
                        §§push(param4.z);
                        if(_loc7_)
                        {
                           break loop5;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                              break loop6;
                           }
                           §§goto(addr0145);
                        }
                        §§goto(addr0146);
                     }
                     addr0131:
                     §§push(param4.w);
                     break loop5;
                  }
                  §§goto(addr0131);
               }
               while(true)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  addr0145:
                  §§push(Number(§§pop()));
                  break;
               }
               addr0146:
               var _loc5_:* = §§pop();
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc6_:* = §§pop();
               loop9:
               while(true)
               {
                  if(_loc8_)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(0);
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(_loc6_);
                              }
                              else
                              {
                                 §§push(_loc6_);
                                 if(!_loc8_)
                                 {
                                    break loop10;
                                 }
                                 §§push(-§§pop());
                                 if(_loc7_)
                                 {
                                    break loop10;
                                 }
                              }
                              §§push(§§pop() < 1e-10);
                              if(!_loc7_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                              }
                              break loop9;
                           }
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc5_)));
                           break;
                        }
                        if(_loc7_)
                        {
                           break loop9;
                        }
                        param4.x = 0;
                        if(!_loc8_)
                        {
                           break loop9;
                        }
                        param4.y = 0;
                        if(!_loc8_)
                        {
                           break loop9;
                        }
                        param4.z = 0;
                        if(_loc8_)
                        {
                           param4.w = 1;
                           if(_loc8_)
                           {
                           }
                           break loop9;
                        }
                        addr01fc:
                        §§push(param4);
                        §§push(param4.x);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().x = §§pop();
                        §§push(param4);
                        §§push(param4.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().y = §§pop();
                        §§push(param4);
                        §§push(param4.z);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().z = §§pop();
                     }
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        §§goto(addr01fc);
                     }
                  }
                  §§push(param4);
                  §§push(param4.w);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().w = §§pop();
                  break;
               }
               return param4;
            }
            break;
         }
         while(true)
         {
            §§push(param4);
            §§push(param1.z);
            if(!_loc7_)
            {
               §§push(param3);
               if(!_loc7_)
               {
                  §§push(param2.z);
                  if(_loc8_)
                  {
                     §§push(§§pop() - param1.z);
                  }
                  §§push(§§pop() * §§pop());
               }
               §§push(§§pop() + §§pop());
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().z = §§pop();
         if(!_loc8_)
         {
            continue loop5;
         }
         §§goto(addr00b9);
      }
   }
}

