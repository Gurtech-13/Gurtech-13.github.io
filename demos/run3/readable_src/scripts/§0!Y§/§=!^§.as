package §0!Y§
{
   import §+!1§.§[!9§;
   import flash.display.MovieClip;
   import nme3D.shader.§'H§;
   import nme3D.shader.vertex.PositionUVVertex;
   import openfl.Lib;
   
   public class §=!^§ extends §'H§
   {
      
      public function §=!^§(param1:§[!9§, param2:Number, param3:Number, param4:Number)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc7_)
               {
                  loop5:
                  while(true)
                  {
                     §§push(this);
                     §§push("m44 op, va0, vc0\n");
                     if(!_loc6_)
                     {
                        §§push("mov v0, va1");
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           loop29:
                           while(true)
                           {
                              while(true)
                              {
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
                                                §§push("mov ft0, v0\n");
                                                if(!_loc6_)
                                                {
                                                   loop36:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push("sub ft1.xy, ");
                                                         if(!_loc6_)
                                                         {
                                                            §§push("fc" + 4);
                                                            if(_loc6_)
                                                            {
                                                               break loop29;
                                                            }
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() + ".xy");
                                                            if(_loc6_)
                                                            {
                                                               break loop36;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               break loop35;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               break loop34;
                                                            }
                                                         }
                                                         §§push(§§pop() + (§§pop() + ", ft0.xy\n"));
                                                         if(_loc6_)
                                                         {
                                                            break loop33;
                                                         }
                                                         §§push("mul ft1.x, ft1.x, ");
                                                         §§push("fc" + 4);
                                                         if(_loc6_)
                                                         {
                                                            break loop32;
                                                         }
                                                         §§push(§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr0176);
                                                      }
                                                      §§push(§§pop() + ".w");
                                                      break;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_)
                                                   {
                                                      break loop7;
                                                   }
                                                   §§push(§§pop() + (§§pop() + "\n"));
                                                   if(!_loc7_)
                                                   {
                                                      continue loop23;
                                                   }
                                                   §§push(§§pop());
                                                }
                                                §§push(§§pop() + "mul ft1.z, ft1.x, ft1.x\n" + "mul ft1.w, ft1.y, ft1.y\n");
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() + "add ft1.z, ft1.z, ft1.w\n");
                                                      §§push("rsq ft1.z, ft1.z\n");
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               §§push("mul ft1.w, ");
                                                               if(_loc7_)
                                                               {
                                                                  §§push("fc");
                                                                  §§push(4);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() + §§pop() + ".z");
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        break loop34;
                                                                     }
                                                                     break loop29;
                                                                  }
                                                                  break loop26;
                                                               }
                                                               break loop18;
                                                            }
                                                            break loop33;
                                                         }
                                                         break loop19;
                                                      }
                                                      break loop9;
                                                   }
                                                   break loop19;
                                                }
                                                §§goto(addr030f);
                                             }
                                             §§goto(addr02ce);
                                          }
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(", ft1.z\n");
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop());
                                                      break loop5;
                                                   }
                                                   break loop8;
                                                }
                                                §§goto(addr01e9);
                                             }
                                             §§goto(addr0223);
                                          }
                                          else
                                          {
                                             §§goto(addr0185);
                                          }
                                       }
                                       §§goto(addr031b);
                                    }
                                    §§goto(addr0225);
                                 }
                                 §§goto(addr01b0);
                              }
                              §§goto(addr01f2);
                           }
                           §§goto(addr0184);
                        }
                        §§push("fc");
                        §§push(4);
                        break loop12;
                     }
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
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
                                          loop20:
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
                                                         §§push(§§pop());
                                                         if(_loc7_)
                                                         {
                                                            loop25:
                                                            while(true)
                                                            {
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push("sge ft1.w, ft1.z, ");
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push("fc");
                                                                           §§push(4);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr0184:
                                                                              addr0185:
                                                                              §§push(§§pop() + (§§pop() + ".z"));
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              §§push(§§pop() + "\n");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break loop27;
                                                                              }
                                                                              §§push("sub ft1.w, ft1.w, ");
                                                                              §§push("fc");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break loop17;
                                                                              }
                                                                           }
                                                                           §§push(5);
                                                                           if(_loc6_)
                                                                           {
                                                                              break loop26;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop25;
                                                                           }
                                                                           §§push(§§pop() + (§§pop() + ".x"));
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop16;
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§push(§§pop() + "\n");
                                                                        if(_loc7_)
                                                                        {
                                                                           addr01e9:
                                                                           §§push(§§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           break loop16;
                                                                        }
                                                                        §§goto(addr0259);
                                                                     }
                                                                     addr01f2:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push("mul ft1.w, ft1.w, ");
                                                                        §§push("fc");
                                                                        §§push(5);
                                                                        break loop26;
                                                                     }
                                                                     §§goto(addr024a);
                                                                  }
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  break loop24;
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop14;
                                                            }
                                                            §§push(".z");
                                                            if(!_loc7_)
                                                            {
                                                               break loop23;
                                                            }
                                                            §§push(§§pop() + (§§pop() + §§pop()));
                                                            if(!_loc7_)
                                                            {
                                                               break loop22;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               break loop14;
                                                            }
                                                            §§push("\n");
                                                            if(!_loc7_)
                                                            {
                                                               break loop21;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               break loop20;
                                                            }
                                                            addr024a:
                                                            §§push(§§pop() + §§pop());
                                                            §§push("mul ft1.xy, ft1.xy, ft1.ww\n");
                                                            if(_loc6_)
                                                            {
                                                               break loop18;
                                                            }
                                                            addr0259:
                                                            §§push(§§pop() + §§pop() + "add ft0.xy, ft0.xy, ft1.xy\n");
                                                            if(_loc6_)
                                                            {
                                                               break loop8;
                                                            }
                                                         }
                                                         break loop27;
                                                      }
                                                      §§goto(addr02a3);
                                                   }
                                                   §§goto(addr02dc);
                                                }
                                                §§goto(addr02f5);
                                             }
                                             §§goto(addr0294);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc6_)
                                             {
                                                §§push("sge ft1.w, ft1.z, ");
                                                break loop7;
                                             }
                                             break loop8;
                                          }
                                          §§goto(addr030b);
                                       }
                                       §§goto(addr02c2);
                                    }
                                    §§goto(addr030e);
                                 }
                                 §§goto(addr02d7);
                              }
                              §§goto(addr0308);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              addr0294:
                              §§push(§§pop());
                              §§push(".z");
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                              }
                              else
                              {
                                 §§goto(addr02dc);
                              }
                           }
                           addr02a3:
                           §§push(§§pop() + §§pop());
                           break;
                        }
                        while(true)
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§§pop() + "\n");
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       break loop8;
                                    }
                                    §§goto(addr030b);
                                 }
                                 §§goto(addr02f5);
                              }
                              §§goto(addr02f8);
                           }
                           §§goto(addr0314);
                        }
                        §§goto(addr02ff);
                     }
                     loop10:
                     while(true)
                     {
                        addr030b:
                        addr030e:
                        addr030f:
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           addr02c2:
                           §§push("sub ft1.w, ft1.w, ");
                           §§push("fc");
                           if(_loc7_)
                           {
                              addr02ce:
                              §§push(§§pop() + 5);
                              if(_loc7_)
                              {
                                 addr02dc:
                                 addr02d7:
                                 §§push(§§pop() + ".x");
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    break loop10;
                                 }
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push("\n");
                              }
                              addr02f8:
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 break;
                              }
                              addr0308:
                           }
                           addr02ff:
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr0308);
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop() + "mul ft0.xyz, ft0.xyz, ft1.www\n");
                        §§push("mov oc, ft0");
                        break;
                     }
                     addr0314:
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        addr031b:
                        §§push(§§pop());
                     }
                     §§pop().super(§§pop(),§§pop(),PositionUVVertex);
                     if(!_loc7_)
                     {
                        break loop1;
                     }
                     §^N§(0,param1);
                     if(_loc6_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§§pop() + "mul ft1.xy, ft1.xy, ft1.ww\n");
                  if(_loc7_)
                  {
                     continue loop23;
                  }
                  §§goto(addr024a);
               }
               setFragmentUniform1f(4,0,param2);
               if(!_loc6_)
               {
                  break;
               }
               break loop0;
            }
            setFragmentUniform1f(4,1,param3);
            break;
         }
         §§push(param4);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        §§push(§§pop() / 15);
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           break;
                        }
                        setFragmentUniform1f(4,2,_loc5_);
                        if(_loc6_)
                        {
                           break loop3;
                        }
                        §§push(Lib.get_current().stage.stageWidth / Lib.get_current().stage.stageHeight);
                        if(_loc6_)
                        {
                           break loop2;
                        }
                     }
                     §§push(Number(§§pop()));
                     break loop2;
                  }
                  §§goto(addr03d8);
               }
            }
            _loc5_ = §§pop();
            if(!_loc6_)
            {
               addr03d8:
               setFragmentUniform1f(4,3,_loc5_);
               if(!_loc6_)
               {
                  setFragmentUniform4f(5,0.5,1,2,0);
               }
            }
         }
         break loop3;
      }
   }
}

