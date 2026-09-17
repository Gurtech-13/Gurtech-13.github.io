package §[^§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §&!3§.§7!?§;
   import §2!"§.§8f§;
   import layout3d.§"S§;
   import layout3d.§+F§;
   import layout3d.§>N§;
   import layout3d.Layout3D;
   import layout3d.PositionData3D;
   import scenes.MyTurn;
   import world3d.Entity3D;
   import §@H§.§!7§;
   import §`!7§.§`!3§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §5p§ extends §+F§
   {
      
      public function §5p§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super("sprite");
         }
      }
      
      override public function §3N§(param1:§>N§, param2:§=!U§, param3:int = -1) : §"S§
      {
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         var _loc4_:* = null as String;
         var _loc6_:* = null as §%!F§;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = 0;
         var _loc15_:* = null as PositionData3D;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop39:
               while(true)
               {
                  loop41:
                  while(true)
                  {
                     loop42:
                     while(true)
                     {
                        loop43:
                        while(true)
                        {
                           §§push("name");
                           if(!_loc19_)
                           {
                              loop44:
                              while(true)
                              {
                                 loop45:
                                 while(true)
                                 {
                                    loop46:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() in StringMap.§+!#§);
                                          if(_loc18_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc18_)
                                                {
                                                   break loop42;
                                                }
                                                §§push(Boolean(param2.existsReserved("name")));
                                             }
                                             else
                                             {
                                                §§push("name");
                                                if(_loc19_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() in param2.h);
                                             }
                                             §§push(!§§pop());
                                             if(!_loc18_)
                                             {
                                                break loop41;
                                             }
                                             if(§§pop())
                                             {
                                                §§push(null);
                                                if(_loc18_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr00c9);
                                             }
                                             else
                                             {
                                                if("width" in StringMap.§+!#§)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      break loop46;
                                                   }
                                                   §§push(Boolean(param2.existsReserved("width")));
                                                }
                                                else
                                                {
                                                   §§push("width" in param2.h);
                                                   if(!_loc18_)
                                                   {
                                                      break loop45;
                                                   }
                                                }
                                                §§push(!§§pop());
                                                if(!_loc18_)
                                                {
                                                   break loop44;
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             break loop46;
                                          }
                                          while(true)
                                          {
                                             §§push("height");
                                             if(!_loc19_)
                                             {
                                                §§push(§§pop() in StringMap.§+!#§);
                                                if(!_loc19_)
                                                {
                                                   break loop45;
                                                }
                                                §§goto(addr010f);
                                             }
                                             §§goto(addr0121);
                                          }
                                       }
                                       §§goto(addr0104);
                                    }
                                    §§push(null);
                                    if(_loc18_)
                                    {
                                       addr00c9:
                                       return §§pop();
                                    }
                                    continue loop5;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc19_)
                                    {
                                       §§push(Boolean(param2.existsReserved("height")));
                                       break;
                                    }
                                    break loop43;
                                 }
                                 while(true)
                                 {
                                    §§push("height");
                                    if(!_loc19_)
                                    {
                                       addr0104:
                                       §§push(§§pop() in param2.h);
                                       if(_loc18_)
                                       {
                                          break loop44;
                                       }
                                       §§goto(addr0126);
                                    }
                                    §§goto(addr0121);
                                 }
                              }
                              addr010f:
                              if(§§pop())
                              {
                                 break loop42;
                              }
                              if(!_loc18_)
                              {
                                 break loop39;
                              }
                              §§push("width");
                              if(!_loc19_)
                              {
                                 addr0126:
                                 addr0121:
                                 if(§§pop() in StringMap.§+!#§)
                                 {
                                    if(_loc19_)
                                    {
                                       break loop39;
                                    }
                                    §§push(param2.getReserved("width"));
                                    if(_loc19_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 else
                                 {
                                    §§push(param2.h["width"]);
                                    if(_loc19_)
                                    {
                                       break loop3;
                                    }
                                 }
                              }
                           }
                           §§push(§§pop());
                           break loop4;
                        }
                        §§goto(addr0172);
                     }
                     §§goto(addr0189);
                  }
                  §§goto(addr0167);
               }
               §§push("height");
               break loop3;
            }
            _loc4_ = §§pop();
            while(true)
            {
               if(!_loc19_)
               {
                  break loop39;
               }
               §§goto(addr0172);
            }
            §§goto(addr0189);
         }
         addr0167:
         if(§§pop() in StringMap.§+!#§)
         {
            if(!_loc19_)
            {
               addr0172:
               param2.setReserved("height",_loc4_);
            }
         }
         else
         {
            param2.h["height"] = _loc4_;
         }
         var _loc5_:Quaternion = null;
         addr0189:
         loop5:
         while(true)
         {
            while(true)
            {
               if(!_loc19_)
               {
                  §§push("rotation");
                  if(!_loc19_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc18_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc18_)
                        {
                           addr01b7:
                           §§push(Boolean(param2.existsReserved("rotation")));
                           if(_loc18_)
                           {
                           }
                           break;
                        }
                        break loop5;
                     }
                     §§push("rotation");
                  }
                  §§push(§§pop() in param2.h);
                  break;
               }
               §§goto(addr01b7);
            }
            if(§§pop())
            {
               break;
            }
            continue loop12;
         }
         _loc5_ = new Quaternion();
         while(true)
         {
            §§push(Lambda);
            if(!_loc19_)
            {
               §§push("rotation");
               if(_loc19_)
               {
                  break;
               }
               if(!(§§pop() in StringMap.§+!#§))
               {
                  §§push(param2.h["rotation"]);
                  break;
               }
            }
            §§push(param2.getReserved("rotation"));
            break;
         }
         §§push(§§pop().split(","));
         §§push(Std.parseFloat);
         if(!_loc19_)
         {
            §§push(§§pop());
         }
         _loc6_ = §§pop().map(§§pop(),§§pop());
         loop8:
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  §§push(_loc6_.length);
                  if(_loc18_)
                  {
                     §§push(3);
                     if(_loc19_)
                     {
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        QuaternionUtils.setFromEuler(_loc6_.pop(),_loc6_.pop(),_loc6_.pop(),_loc5_);
                        if(_loc18_)
                        {
                        }
                        continue loop12;
                     }
                     §§push(_loc6_.length);
                     if(!_loc18_)
                     {
                        break loop8;
                     }
                  }
                  §§push(4);
                  break;
               }
               if(§§pop() != §§pop())
               {
                  continue loop12;
               }
               _loc5_.x = _loc6_.pop();
               _loc5_.y = _loc6_.pop();
               if(!_loc18_)
               {
                  continue loop12;
               }
               _loc5_.z = _loc6_.pop();
               if(!_loc19_)
               {
                  _loc5_.w = _loc6_.pop();
                  loop33:
                  while(true)
                  {
                     loop34:
                     while(true)
                     {
                        §§push(_loc5_.x * _loc5_.x);
                        if(!_loc19_)
                        {
                           loop35:
                           while(true)
                           {
                              §§push(_loc5_.y);
                              if(_loc18_)
                              {
                                 §§push(_loc5_.y);
                                 if(!_loc18_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              while(true)
                              {
                                 addr030b:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc5_.z);
                                 if(_loc18_)
                                 {
                                    §§push(_loc5_.z);
                                    if(_loc18_)
                                    {
                                       break loop35;
                                    }
                                    addr030f:
                                    addr0310:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop() * §§pop());
                                       if(_loc18_)
                                       {
                                          _loc7_ = §§pop();
                                          §§push(_loc7_);
                                          §§push(1);
                                          if(!_loc18_)
                                          {
                                             break loop33;
                                          }
                                          _loc8_ = §§pop() - §§pop();
                                          §§push(_loc8_);
                                          §§push(0);
                                          if(_loc19_)
                                          {
                                             break loop33;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(_loc8_);
                                             break;
                                          }
                                          §§push(_loc8_);
                                          if(_loc19_)
                                          {
                                             break loop34;
                                          }
                                       }
                                       §§push(-§§pop());
                                       break;
                                    }
                                    §§push(1e-10);
                                    break;
                                 }
                                 §§goto(addr030f);
                              }
                              addr0348:
                              §§push(§§pop() < §§pop());
                              if(!_loc19_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 continue loop12;
                              }
                              if(_loc19_)
                              {
                                 continue loop12;
                              }
                              §§push(_loc7_);
                           }
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc18_)
                              {
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc5_.w);
                                 if(!_loc18_)
                                 {
                                    break;
                                 }
                                 §§goto(addr030b);
                              }
                              §§goto(addr0310);
                           }
                           §§goto(addr0348);
                           §§push(_loc5_.w);
                        }
                        §§push(0);
                        break loop33;
                     }
                     §§goto(addr0397);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1);
                     break loop8;
                  }
                  if(_loc18_)
                  {
                     _loc5_.x = 0;
                  }
                  _loc5_.y = 0;
                  _loc5_.z = 0;
                  _loc5_.w = 1;
                  continue loop12;
               }
               §§goto(addr03ac);
            }
            var _loc9_:Level = param1;
            var _loc10_:Layout3D = _loc9_.§1W§.layout;
            var _loc11_:Vector.<PositionData3D> = new Vector.<PositionData3D>();
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  while(true)
                  {
                     if(_loc18_)
                     {
                        §§push(false);
                        if(!_loc18_)
                        {
                           break;
                        }
                        if(_loc10_ == null)
                        {
                           break;
                        }
                        if(_loc19_)
                        {
                           break loop12;
                        }
                        §§pop();
                        if(!_loc18_)
                        {
                           break loop11;
                        }
                     }
                     §§push("pos");
                     if(!_loc19_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(!_loc18_)
                        {
                           break loop12;
                        }
                        if(§§pop())
                        {
                           if(_loc18_)
                           {
                              break loop11;
                           }
                           loop14:
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 loop22:
                                 while(true)
                                 {
                                    §§push("x");
                                    if(_loc18_)
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          loop25:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop() in StringMap.§+!#§)
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(param2.existsReserved("x")));
                                                      if(!_loc18_)
                                                      {
                                                         break loop15;
                                                      }
                                                      addr0556:
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§`!3§);
                                                            if(!_loc19_)
                                                            {
                                                               §§push("x");
                                                               if(!_loc18_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!(§§pop() in StringMap.§+!#§))
                                                               {
                                                                  §§push(param2.h["x"]);
                                                                  break;
                                                               }
                                                            }
                                                            §§push(param2.getReserved("x"));
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         if(_loc19_)
                                                         {
                                                            break loop22;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(_loc19_)
                                                         {
                                                            break loop25;
                                                         }
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!_loc18_)
                                                      {
                                                         break loop14;
                                                      }
                                                      _loc7_ = §§pop();
                                                      §§push("y");
                                                      if(_loc19_)
                                                      {
                                                         break loop24;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("x");
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop() in param2.h);
                                                         if(!_loc18_)
                                                         {
                                                            continue loop28;
                                                         }
                                                         §§goto(addr0556);
                                                      }
                                                   }
                                                   §§push(§§pop() in StringMap.§+!#§);
                                                   continue loop28;
                                                }
                                                §§goto(addr0640);
                                             }
                                             loop28:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         break loop28;
                                                      }
                                                      §§push(Boolean(param2.existsReserved("y")));
                                                      if(_loc19_)
                                                      {
                                                         break loop15;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("y");
                                                      if(!_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() in param2.h);
                                                      if(_loc19_)
                                                      {
                                                         break loop15;
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc19_)
                                                      {
                                                         break loop28;
                                                      }
                                                      break loop27;
                                                   }
                                                   §§push(0);
                                                   if(_loc19_)
                                                   {
                                                      break loop22;
                                                   }
                                                   §§goto(addr063d);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr0649);
                                             }
                                             while(true)
                                             {
                                                §§push(§`!3§);
                                                if(!_loc19_)
                                                {
                                                   §§push("y");
                                                   if(_loc19_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(§§pop() in StringMap.§+!#§))
                                                   {
                                                      §§push(param2.h["y"]);
                                                      break;
                                                   }
                                                }
                                                §§push(param2.getReserved("y"));
                                                break;
                                             }
                                             §§push(§§pop().§ M§(§§pop(),0));
                                             break;
                                          }
                                          addr063d:
                                          _loc8_ = Number(§§pop());
                                          addr0640:
                                          §§push("z");
                                          if(_loc18_)
                                          {
                                             addr0649:
                                             if(§§pop() in StringMap.§+!#§)
                                             {
                                                §§push(Boolean(param2.existsReserved("z")));
                                                if(_loc19_)
                                                {
                                                }
                                                break loop15;
                                             }
                                             §§push("z");
                                          }
                                          break;
                                       }
                                    }
                                    break loop24;
                                 }
                                 §§push(Number(§§pop()));
                                 break loop14;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§`!3§);
                                    if(!_loc19_)
                                    {
                                       §§push("z");
                                       if(_loc19_)
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
                                 §§push(Number(§§pop().§ M§(§§pop(),0)));
                                 if(_loc19_)
                                 {
                                 }
                                 break;
                              }
                              §§push(0);
                              break loop22;
                           }
                           var _loc16_:Number = §§pop();
                           loop16:
                           while(true)
                           {
                              if(!_loc19_)
                              {
                                 §§push(true);
                                 if(_loc18_)
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc18_)
                                       {
                                          if(_loc7_ != 0)
                                          {
                                             break;
                                          }
                                          if(_loc19_)
                                          {
                                             break;
                                          }
                                       }
                                       §§pop();
                                       if(!_loc19_)
                                       {
                                          §§push(_loc8_ == 0);
                                          if(_loc18_)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc18_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break;
                                       }
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc18_)
                                       {
                                          §§pop();
                                          if(!_loc18_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc16_ == 0);
                                             if(_loc18_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc18_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                       }
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(_loc18_)
                                 {
                                    §§push(0);
                                    if(_loc18_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc18_)
                                       {
                                          _loc14_ = §§pop();
                                          if(!_loc18_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc14_);
                                          }
                                          addr07a2:
                                       }
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       if(§§pop() >= int(_loc11_.length))
                                       {
                                          break loop16;
                                       }
                                       _loc15_ = _loc11_[_loc14_];
                                       if(_loc18_)
                                       {
                                          _loc14_++;
                                          while(true)
                                          {
                                             if(_loc18_)
                                             {
                                                _temp_1.x += _loc7_;
                                                if(_loc19_)
                                                {
                                                   break;
                                                }
                                             }
                                             _temp_2.y += _loc8_;
                                             if(_loc18_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          var _temp_3:* = _loc15_.position;
                                          §§push(_temp_3);
                                          §§push(_temp_3.z);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() + _loc16_);
                                             if(_loc18_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§pop().z = §§pop();
                                       }
                                    }
                                    break;
                                 }
                              }
                              §§goto(addr07a2);
                           }
                           while(true)
                           {
                              §§push(§§findproperty(§&=§));
                              §§push(_loc9_);
                              §§push(this);
                              §§push(new §7!?§(_loc11_));
                              if(!_loc19_)
                              {
                                 §§push("name");
                                 if(_loc19_)
                                 {
                                    break;
                                 }
                                 if(!(§§pop() in StringMap.§+!#§))
                                 {
                                    §§push(param2.h["name"]);
                                    break;
                                 }
                              }
                              §§push(param2.getReserved("name"));
                              break;
                           }
                           while(true)
                           {
                              §§push(Std);
                              if(_loc18_)
                              {
                                 §§push("width");
                                 if(!_loc18_)
                                 {
                                    break;
                                 }
                                 if(!(§§pop() in StringMap.§+!#§))
                                 {
                                    §§push(param2.h["width"]);
                                    break;
                                 }
                              }
                              §§push(param2.getReserved("width"));
                              break;
                           }
                           var _loc17_:§&=§ = new §§pop().§&=§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop().parseInt(§§pop()),Std.parseInt("height" in StringMap.§+!#§ ? param2.getReserved("height") : param2.h["height"]),_loc5_,"background" in StringMap.§+!#§ ? Boolean(param2.existsReserved("background")) : "background" in param2.h);
                           if(_loc18_)
                           {
                              §^!9§(_loc17_,param3);
                           }
                           return _loc17_;
                        }
                        §§push("pos");
                     }
                     §§push(§§pop() in param2.h);
                     if(!_loc19_)
                     {
                        break loop12;
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc19_)
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§!7§));
                           if(!_loc19_)
                           {
                              §§push("pos");
                              if(!_loc18_)
                              {
                                 break;
                              }
                              if(!(§§pop() in StringMap.§+!#§))
                              {
                                 §§push(param2.h["pos"]);
                                 break;
                              }
                           }
                           §§push(param2.getReserved("pos"));
                           break;
                        }
                        _loc12_ = new §§pop().§!7§(§§pop());
                        _loc13_ = _loc12_.iterator();
                        while(true)
                        {
                           if(!Boolean(_loc13_.hasNext()))
                           {
                              continue loop15;
                           }
                           §§push(int(_loc13_.next()));
                           if(!_loc19_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc14_ = §§pop();
                           _loc15_ = _loc10_.§<!C§(_loc14_);
                           if(_loc18_)
                           {
                              _loc11_.push(_loc15_);
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc11_.push(new PositionData3D(0,0,0));
                  }
                  continue loop15;
               }
               §§push(Boolean(§§pop()));
               break loop13;
            }
            §§push(Boolean(param2.existsReserved("pos")));
            if(_loc19_)
            {
            }
            break loop12;
         }
         §§push(§§pop() / Number(Math.sqrt(_loc7_)));
         if(!_loc19_)
         {
            addr0397:
            §§push(Number(§§pop()));
         }
         _loc7_ = §§pop();
         §§push(_loc5_);
         §§push(_loc5_.x);
         if(_loc18_)
         {
            §§push(§§pop() * _loc7_);
         }
         §§pop().x = §§pop();
         addr03ac:
         §§push(_loc5_);
         §§push(_loc5_.y);
         if(_loc18_)
         {
            §§push(§§pop() * _loc7_);
         }
         §§pop().y = §§pop();
         §§push(_loc5_);
         §§push(_loc5_.z);
         if(!_loc19_)
         {
            §§push(§§pop() * _loc7_);
         }
         §§pop().z = §§pop();
         §§push(_loc5_);
         §§push(_loc5_.w);
         if(_loc18_)
         {
            §§push(§§pop() * _loc7_);
         }
         §§pop().w = §§pop();
         break loop9;
      }
      
      override public function §^!9§(param1:§"S§, param2:int = -1) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc4_:* = null as PositionData3D;
         var _loc5_:* = null as Entity3D;
         var _loc6_:* = null as §8f§;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Quaternion;
         var _loc10_:* = null as Quaternion;
         if(_loc11_)
         {
            if(param2 != 0)
            {
               var _loc3_:§&=§ = param1;
               if(_loc11_)
               {
                  loop0:
                  while(Boolean(param1.positionIterator3D.hasNext()))
                  {
                     _loc4_ = param1.positionIterator3D.next();
                     _loc6_ = new §8f§(null,_loc3_.§-j§,_loc3_.§#F§,true,_loc3_.§7F§,null,_loc3_.texture);
                     while(true)
                     {
                        if(_loc11_)
                        {
                           if(!_loc3_.background)
                           {
                              _loc5_ = new Entity3D(_loc3_.tunnel,false,_loc6_);
                              break;
                           }
                        }
                        _loc5_ = new §4i§(_loc3_.tunnel,_loc6_);
                        break;
                     }
                     _loc7_ = _loc5_.transform.§%!7§;
                     _loc8_ = _loc4_.position;
                     loop2:
                     while(true)
                     {
                        if(_loc11_)
                        {
                           _loc7_.x = _loc8_.x;
                           if(_loc12_)
                           {
                              break;
                           }
                        }
                        _loc7_.y = _loc8_.y;
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
                                    if(!_loc12_)
                                    {
                                       break loop2;
                                    }
                                    addr0126:
                                    _loc9_ = _loc5_.transform.§,t§;
                                    _loc10_ = _loc4_.rotation;
                                    if(_loc11_)
                                    {
                                       _loc9_.x = _loc10_.x;
                                       if(!_loc12_)
                                       {
                                          _loc9_.y = _loc10_.y;
                                          _loc9_.z = _loc10_.z;
                                          if(!_loc12_)
                                          {
                                             _loc9_.w = _loc10_.w;
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                          }
                                          break loop5;
                                       }
                                       break loop4;
                                    }
                                    break loop3;
                                 }
                                 addr01d0:
                                 _loc5_.reset();
                                 if(!_loc12_)
                                 {
                                    if(_loc3_.background)
                                    {
                                       _loc3_.tunnel.§4M§(_loc5_);
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    _loc3_.tunnel.§`=§(_loc5_);
                                    break;
                                 }
                                 break loop0;
                              }
                              §§push(param1);
                              §§push(param1.count);
                              if(_loc11_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop().count = §§pop();
                              break;
                           }
                           while(true)
                           {
                              §§push(param2);
                              if(!_loc12_)
                              {
                                 §§push(0);
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc12_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr023c);
                              }
                              §§goto(addr023d);
                           }
                           §§goto(addr023f);
                        }
                        param2--;
                        addr023c:
                        addr023d:
                        addr023f:
                        if(param2 <= 0)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                     _loc7_.z = _loc8_.z;
                     while(true)
                     {
                        if(!_loc12_)
                        {
                           if(_loc4_.rotation != null)
                           {
                              if(_loc11_)
                              {
                                 §§goto(addr0126);
                              }
                           }
                           else if(_loc3_.rotation == null)
                           {
                              break;
                           }
                        }
                        _loc9_ = _loc5_.transform.§,t§;
                        _loc10_ = _loc3_.rotation;
                        if(!_loc12_)
                        {
                           _loc9_.x = _loc10_.x;
                           if(!_loc12_)
                           {
                              _loc9_.y = _loc10_.y;
                              if(!_loc11_)
                              {
                                 break;
                              }
                           }
                           _loc9_.z = _loc10_.z;
                           if(!_loc11_)
                           {
                              break;
                           }
                        }
                        _loc9_.w = _loc10_.w;
                        break;
                     }
                     §§goto(addr01d0);
                  }
               }
               return;
            }
         }
      }
   }
}

