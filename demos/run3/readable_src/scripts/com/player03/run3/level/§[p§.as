package com.player03.run3.level
{
   import §!]§.§4N§;
   import §!]§.Path;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import layout3d.§"S§;
   import layout3d.§+F§;
   import layout3d.§>N§;
   import §`!7§.§`!3§;
   import com.player03.layout.§&d§;
   import flash.Boot;
   import flash.events.Event;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.AngleMath;
   import haxeutils.math.geom.Point3D;
   
   public class §[p§ extends §+F§
   {
      
      public function §[p§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super("connection");
         }
      }
      
      override public function §3N§(param1:§>N§, param2:§=!U§, param3:int = -1) : §"S§
      {
         §§push(false);
         var _loc21_:Boolean = true;
         var _loc22_:* = §§pop();
         var _loc5_:* = null as § !>§;
         var _loc6_:* = 0;
         var _loc7_:* = null as String;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         if(!_loc22_)
         {
            §§push(param1 is Level);
            if(!_loc22_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc21_)
               {
                  Boot.lastError = new Error();
                  if(!_loc21_)
                  {
                     addr0069:
                     var _loc4_:Level = param1;
                     loop0:
                     while(true)
                     {
                        §§push(false);
                        §§push("thisPath");
                        if(_loc21_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(!_loc21_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc21_)
                                 {
                                    §§push(Boolean(param2.existsReserved("thisPath")));
                                    if(_loc21_)
                                    {
                                    }
                                    break loop0;
                                 }
                                 addr018a:
                                 if(!§§pop())
                                 {
                                    Boot.lastError = new Error();
                                    if(!_loc22_)
                                    {
                                       throw new ArgumentError("level parameter for ConnectionDecorator must be an Explore level.");
                                    }
                                 }
                                 break;
                              }
                              addr01aa:
                              _loc5_ = _loc4_.§?!I§;
                              if(!_loc22_)
                              {
                                 §§push(_loc4_.§1W§.§[9§);
                                 if(_loc21_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc6_ = §§pop();
                              }
                              loop2:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push("path");
                                    if(_loc21_)
                                    {
                                       if(§§pop() in StringMap.§+!#§)
                                       {
                                          if(!_loc21_)
                                          {
                                             break;
                                          }
                                          §§push(param2.getReserved("path"));
                                          if(!_loc21_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       else
                                       {
                                          §§push(param2.h["path"]);
                                       }
                                    }
                                    §§push(§§pop());
                                    break loop2;
                                 }
                                 §§goto(addr0208);
                              }
                              _loc7_ = §§pop();
                              break loop3;
                           }
                           §§push("thisPath");
                        }
                        §§push(§§pop() in param2.h);
                        break;
                     }
                     loop24:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push("thisIndex");
                           if(_loc22_)
                           {
                              break;
                           }
                           if(§§pop() in StringMap.§+!#§)
                           {
                              §§push(Boolean(param2.existsReserved("thisIndex")));
                           }
                           else
                           {
                              §§push("thisIndex");
                              if(!_loc21_)
                              {
                                 break;
                              }
                              §§push(§§pop() in param2.h);
                           }
                           §§push(Boolean(§§pop()));
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push("thisPath");
                              if(!_loc21_)
                              {
                                 break loop24;
                              }
                              §§push(§§pop() in StringMap.§+!#§);
                              if(_loc21_)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(param2.h["thisPath"]);
                                    break loop24;
                                 }
                                 §§push(param2.getReserved("thisPath"));
                                 if(_loc21_)
                                 {
                                    break loop24;
                                 }
                                 _loc7_ = §§pop();
                                 if(!_loc21_)
                                 {
                                    break;
                                 }
                                 _loc5_ = §>K§.§@!A§().§2! §.get(_loc7_);
                                 if(!_loc22_)
                                 {
                                    while(true)
                                    {
                                       §§push(Std);
                                       if(_loc21_)
                                       {
                                          §§push("thisIndex");
                                          if(_loc22_)
                                          {
                                             break;
                                          }
                                          if(!(§§pop() in StringMap.§+!#§))
                                          {
                                             §§push(param2.h["thisIndex"]);
                                             break;
                                          }
                                       }
                                       §§push(param2.getReserved("thisIndex"));
                                       break;
                                    }
                                    _loc6_ = int(§§pop().parseInt(§§pop()));
                                    if(_loc22_)
                                    {
                                       addr0208:
                                       var _loc8_:§ !>§ = §>K§.§@!A§().§2! §.get(_loc7_);
                                       while(true)
                                       {
                                          if(_loc21_)
                                          {
                                             if(_loc8_ != null)
                                             {
                                                break;
                                             }
                                          }
                                          _loc8_ = §>K§.§@!A§().§7j§.get(_loc7_);
                                          if(_loc21_)
                                          {
                                             if(_loc8_ != null)
                                             {
                                                break;
                                             }
                                          }
                                          return null;
                                       }
                                       §§push(0);
                                       if(_loc21_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var _loc9_:* = §§pop();
                                    }
                                    continue loop2;
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc22_)
                                       {
                                          while(true)
                                          {
                                             §§push("end");
                                             if(_loc21_)
                                             {
                                                §§push(§§pop() in StringMap.§+!#§);
                                                if(!_loc21_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc21_)
                                                   {
                                                      §§push(Boolean(param2.existsReserved("end")));
                                                      if(_loc21_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   addr02ad:
                                                   §§push(_loc8_.levelCount);
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                   }
                                                   _loc9_ = §§pop();
                                                   break loop5;
                                                }
                                                §§push("end");
                                             }
                                             §§push(§§pop() in param2.h);
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          if(!_loc21_)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr02ad);
                                    }
                                    var _loc10_:Path = §4N§.§@!A§().§;O§(_loc5_.pathName);
                                    var _loc11_:Path = §4N§.§@!A§().§;O§(_loc7_);
                                    if(_loc21_)
                                    {
                                       if(_loc11_ != null)
                                       {
                                          §§push(_loc10_.§7Q§(_loc6_));
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc21_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc12_:* = §§pop();
                                          §§push(_loc11_.§%v§());
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc21_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc13_:* = §§pop();
                                          §§push(AngleMath.§-!M§(_loc12_,_loc13_));
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc22_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc14_:* = §§pop();
                                          while(true)
                                          {
                                             if(!_loc22_)
                                             {
                                                if(!_loc4_.backwards)
                                                {
                                                   break;
                                                }
                                                if(!_loc21_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(AngleMath.§-!M§(3.141592653589793,_loc14_));
                                             if(!_loc22_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc21_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc14_ = §§pop();
                                             break;
                                          }
                                          var _loc15_:Quaternion = QuaternionUtils.setFromEuler(_loc14_,0,0);
                                          var _loc16_:Point3D = new Point3D(0,0,1);
                                          loop8:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(!_loc22_)
                                                {
                                                   QuaternionUtils.rotateVector(_loc15_,_loc16_,_loc16_);
                                                   _loc16_.x += ("x" in StringMap.§+!#§ ? Boolean(param2.existsReserved("x")) : "x" in param2.h) ? §`!3§.§ M§("x" in StringMap.§+!#§ ? param2.getReserved("x") : param2.h["x"],0) : 0;
                                                   _loc16_.y += ("y" in StringMap.§+!#§ ? Boolean(param2.existsReserved("y")) : "y" in param2.h) ? §`!3§.§ M§("y" in StringMap.§+!#§ ? param2.getReserved("y") : param2.h["y"],0) : 0;
                                                   if(!_loc22_)
                                                   {
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(_loc16_);
                                                         §§push(_loc16_.z);
                                                         if(!_loc22_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push("z");
                                                               if(_loc21_)
                                                               {
                                                                  §§push(§§pop() in StringMap.§+!#§);
                                                                  if(_loc22_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(Boolean(param2.existsReserved("z")));
                                                                        if(_loc21_)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     break loop20;
                                                                  }
                                                                  §§push("z");
                                                               }
                                                               §§push(§§pop() in param2.h);
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§`!3§);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push("z");
                                                                     if(_loc22_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(§§pop() in StringMap.§+!#§))
                                                                     {
                                                                        §§push(param2.h["z"]);
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(param2.getReserved("z"));
                                                                  break;
                                                               }
                                                               §§push(§§pop().§ M§(§§pop(),0));
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc22_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc22_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(Number(§§pop()));
                                                         break;
                                                      }
                                                      §§pop().z = §§pop();
                                                      §§push(_loc4_.backwards);
                                                      if(!_loc22_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc22_)
                                                            {
                                                               §§push(_loc16_);
                                                               §§push(_loc16_.z);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(§§pop() - _loc4_.§1W§.startZ);
                                                               }
                                                               §§pop().z = §§pop();
                                                               §§push(_loc16_);
                                                               §§push(_loc4_.§1W§.endZ);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(§§pop() - _loc16_.z);
                                                               }
                                                               §§pop().z = §§pop();
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr076f);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push("exact");
                                                            if(!_loc22_)
                                                            {
                                                               if(§§pop() in StringMap.§+!#§)
                                                               {
                                                                  §§push(Boolean(param2.existsReserved("exact")));
                                                                  break;
                                                               }
                                                               §§push("exact");
                                                            }
                                                            §§push(§§pop() in param2.h);
                                                            break;
                                                         }
                                                         §§push(!§§pop());
                                                         if(!_loc21_)
                                                         {
                                                            §§goto(addr0603);
                                                         }
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         continue loop17;
                                                      }
                                                      if(_loc22_)
                                                      {
                                                         break loop8;
                                                      }
                                                      §§push(Number(Math.sin(_loc14_)));
                                                      if(_loc22_)
                                                      {
                                                         break;
                                                      }
                                                      _loc17_ = Number(§§pop());
                                                   }
                                                   _loc18_ = Number(Math.cos(_loc14_));
                                                   if(!_loc21_)
                                                   {
                                                      break loop8;
                                                   }
                                                }
                                                §§push(Number(_loc17_));
                                                break;
                                             }
                                             _loc19_ = §§pop();
                                             if(_loc19_ >= 0)
                                             {
                                                break;
                                             }
                                             §§push(_loc19_);
                                             if(_loc21_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc21_)
                                                {
                                                   continue loop11;
                                                }
                                                §§goto(addr0645);
                                             }
                                             §§goto(addr067e);
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             addr067e:
                                             §§push(_loc19_);
                                             if(!_loc22_)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(1e-10);
                                                      if(!_loc22_)
                                                      {
                                                         addr0603:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            break loop10;
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!_loc22_)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(1600);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(_loc17_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop() < 0)
                                                                        {
                                                                           §§push(_loc17_);
                                                                           if(!_loc22_)
                                                                           {
                                                                              break loop14;
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§push(_loc17_);
                                                                     if(_loc21_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     break loop14;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!_loc21_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc22_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  _loc20_ = §§pop();
                                                               }
                                                               §§push(-§§pop());
                                                               break loop15;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc17_);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(_loc20_);
                                                                  if(_loc22_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc22_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc21_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                               }
                                                               addr067a:
                                                               §§push(_loc20_);
                                                               break;
                                                            }
                                                         }
                                                         _loc17_ = §§pop();
                                                         §§push(_loc18_);
                                                         if(_loc22_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr067a);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      break loop11;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break loop12;
                                             }
                                             _loc18_ = §§pop();
                                             if(!_loc22_)
                                             {
                                                _loc16_.x += _loc17_;
                                                if(_loc21_)
                                                {
                                                   §§push(_loc16_);
                                                   §§push(_loc16_.z);
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop() + _loc18_);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§pop().z = §§pop();
                                                }
                                             }
                                             break;
                                          }
                                          loop17:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(§2N§);
                                                §§push(_loc4_);
                                                §§push(_loc8_.§,q§(_loc9_));
                                                if(!_loc22_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc22_)
                                                   {
                                                      §§push("length");
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop() in StringMap.§+!#§);
                                                         if(_loc22_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc21_)
                                                            {
                                                               addr06ed:
                                                               §§push(Boolean(param2.existsReserved("length")));
                                                               if(_loc21_)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            break loop17;
                                                         }
                                                         §§push("length");
                                                      }
                                                      §§push(§§pop() in param2.h);
                                                      break;
                                                   }
                                                   break loop17;
                                                }
                                                §§goto(addr06ed);
                                             }
                                             if(§§pop())
                                             {
                                                break;
                                             }
                                             §§goto(addr0766);
                                             §§push(3000);
                                          }
                                          while(true)
                                          {
                                             §§push(§`!3§);
                                             if(!_loc22_)
                                             {
                                                §§push("length");
                                                if(!_loc21_)
                                                {
                                                   break;
                                                }
                                                if(!(§§pop() in StringMap.§+!#§))
                                                {
                                                   §§push(param2.h["length"]);
                                                   break;
                                                }
                                             }
                                             §§push(param2.getReserved("length"));
                                             break;
                                          }
                                          §§push(§§pop().§ !`§(§§pop(),3000));
                                          if(_loc21_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc21_)
                                             {
                                             }
                                          }
                                          addr0766:
                                          §§pop().§#^§(§§pop(),§§pop(),§§pop(),_loc16_,_loc15_,false);
                                          addr076f:
                                          return null;
                                       }
                                    }
                                    return null;
                                 }
                                 §§goto(addr01e6);
                              }
                           }
                           else
                           {
                              §§push(_loc4_.§?!I§ is § !>§);
                           }
                           §§goto(addr018a);
                        }
                        §§goto(addr01aa);
                     }
                     §§goto(addr0118);
                  }
               }
               §§goto(addr005e);
            }
            §§goto(addr0069);
         }
         addr005e:
         throw new ArgumentError("level parameter for ConnectionDecorator must be a Run 3 level.");
      }
   }
}

