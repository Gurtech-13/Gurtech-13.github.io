package §>T§
{
   import §+!1§.§[!9§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§7v§;
   import nme3D.shader.§'H§;
   import openfl.Assets;
   
   public class OpenBox extends §7v§
   {
      
      public static var §[$§:Object;
      
      public static var §"!T§:Object;
      
      public function OpenBox(param1:Number, param2:Object = undefined, param3:Object = undefined, param4:§'H§ = undefined)
      {
         §§push(false);
         var _loc21_:Boolean = true;
         var _loc22_:* = §§pop();
         var _loc5_:* = null;
         var _loc6_:* = null as §3!I§;
         var _loc7_:* = null as §3!I§;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null as Array;
         var _loc15_:* = null as §=s§;
         var _loc16_:* = null as Point3D;
         var _loc17_:* = null as §!!V§;
         var _loc18_:* = null as §!!V§;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         while(true)
         {
            if(param2 == null)
            {
               if(!_loc21_)
               {
                  break;
               }
               param2 = 0;
            }
            if(param3 == null)
            {
               break;
            }
            addr006e:
            if(OpenBox.§[$§ == null)
            {
               OpenBox.§[$§ = JSON.parse(Assets.getText("text/model/OpenBox.simple"));
               _loc5_ = JSON.parse(Assets.getText("text/model/BoxInside.simple"));
               _loc6_ = §=B§.§@W§(0,int(_loc5_.vertices.length),6);
               loop15:
               while(true)
               {
                  if(_loc21_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc6_.§#1§);
                        if(_loc22_)
                        {
                           break;
                        }
                        §§push(_loc6_.end);
                        if(!_loc22_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc22_)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc22_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc21_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc8_ = §§pop();
                                    §§push(int(_loc5_.indices.length));
                                    if(!_loc22_)
                                    {
                                       break;
                                    }
                                    break loop0;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc22_)
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                    addr02aa:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          break loop15;
                                       }
                                       §§push(_loc8_);
                                       if(!_loc22_)
                                       {
                                          _loc8_++;
                                          if(_loc21_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc10_ = §§pop();
                                       if(!_loc22_)
                                       {
                                          §§push(_loc5_.indices);
                                          if(_loc21_)
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc11_ = §§pop();
                                          if(!_loc21_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       §§push(_loc11_);
                                       §§push(_loc10_);
                                       §§push(_loc10_);
                                       if(!_loc22_)
                                       {
                                          §§push(_loc11_[§§pop()] + int(OpenBox.§[$§.vertexCount));
                                       }
                                       §§pop()[§§pop()] = §§pop();
                                       continue loop1;
                                    }
                                    break loop15;
                                 }
                                 break loop15;
                                 addr02a8:
                              }
                              while(true)
                              {
                                 §§goto(addr02a8);
                              }
                              addr02a6:
                           }
                           else
                           {
                              _loc7_ = _loc6_;
                              §§push(_loc7_);
                              §§push(_loc7_.§#1§);
                              if(!_loc22_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_.§['§);
                                    if(!_loc22_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc22_)
                                       {
                                          break;
                                       }
                                       §§push(int(§§pop()));
                                       if(!_loc21_)
                                       {
                                          break;
                                       }
                                       var _temp_2:* = §§pop();
                                       §§push(_temp_2);
                                       §§push(_temp_2);
                                    }
                                    _loc9_ = §§pop();
                                    break;
                                 }
                              }
                              §§pop().§#1§ = §§pop();
                              §§push(_loc9_);
                              if(!_loc22_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc8_ = §§pop();
                              loop18:
                              while(true)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    loop22:
                                    while(true)
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          loop25:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc5_.vertices);
                                                if(!_loc22_)
                                                {
                                                   §§push(_loc8_);
                                                   §§push(1);
                                                   if(_loc22_)
                                                   {
                                                      break;
                                                   }
                                                   if(Number(§§pop()[§§pop() + §§pop()]) < 0)
                                                   {
                                                      §§push(_loc5_.vertices);
                                                      if(!_loc21_)
                                                      {
                                                         break loop18;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.vertices);
                                                         if(_loc21_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!_loc22_)
                                                            {
                                                               §§goto(addr01bd);
                                                            }
                                                            §§goto(addr01c7);
                                                         }
                                                         §§goto(addr01e5);
                                                      }
                                                      §§goto(addr01fb);
                                                   }
                                                }
                                                §§push(_loc8_ + 3);
                                                §§push(0.75);
                                                if(_loc22_)
                                                {
                                                   break loop19;
                                                }
                                                §§pop()[§§pop()] = §§pop();
                                                §§push(_loc5_.vertices);
                                                §§push(_loc8_);
                                                §§push(4);
                                                if(!_loc21_)
                                                {
                                                   break loop22;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc22_)
                                                {
                                                   break loop24;
                                                }
                                                §§push(0.75);
                                                if(_loc22_)
                                                {
                                                   break loop25;
                                                }
                                                §§pop()[§§pop()] = §§pop();
                                                if(_loc22_)
                                                {
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc5_.vertices);
                                                   if(_loc21_)
                                                   {
                                                      break loop18;
                                                   }
                                                   §§goto(addr01fb);
                                                }
                                                §§goto(addr0203);
                                             }
                                             §§goto(addr01e9);
                                          }
                                          §§goto(addr01f3);
                                       }
                                       §§goto(addr0200);
                                    }
                                    §§goto(addr01bf);
                                 }
                                 §§pop()[§§pop()] = §§pop();
                                 if(!_loc21_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc5_.vertices);
                                    if(!_loc22_)
                                    {
                                       addr01e5:
                                       addr01e9:
                                       §§goto(addr01ea);
                                       §§push(_loc8_ + 4);
                                    }
                                    §§goto(addr01fb);
                                 }
                                 §§goto(addr0203);
                              }
                              §§push(_loc8_ + 5);
                              if(_loc21_)
                              {
                                 §§push(0.75);
                                 if(_loc21_)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    if(_loc21_)
                                    {
                                       continue;
                                    }
                                    addr01f5:
                                    addr01fb:
                                    addr0200:
                                    §§push(_loc5_.vertices);
                                    §§push(_loc8_ + 5);
                                    §§push(0.84);
                                 }
                              }
                              else
                              {
                                 addr01bf:
                                 addr01bd:
                                 while(true)
                                 {
                                    §§push(§§pop() + 3);
                                    if(!_loc22_)
                                    {
                                       addr01c7:
                                       while(true)
                                       {
                                          §§push(0.84);
                                          if(_loc21_)
                                          {
                                             break loop19;
                                          }
                                          addr01f3:
                                          §§pop()[§§pop()] = §§pop();
                                          §§goto(addr01f5);
                                       }
                                       addr0203:
                                       §§pop()[§§pop()] = §§pop();
                                       continue loop0;
                                    }
                                    addr01ea:
                                    §§push(0.84);
                                    if(!_loc22_)
                                    {
                                       §§goto(addr01f3);
                                    }
                                 }
                                 §§goto(addr01fb);
                              }
                              §§goto(addr0203);
                           }
                        }
                        §§goto(addr02aa);
                     }
                     _loc9_ = §§pop();
                  }
                  §§goto(addr02a6);
               }
               var _temp_3:* = OpenBox.§[$§;
               _temp_3.vertexCount = int(_temp_3.vertexCount) + int(_loc5_.vertexCount);
               if(!_loc22_)
               {
                  OpenBox.§[$§.vertices = OpenBox.§[$§.vertices.concat(_loc5_.vertices);
               }
               OpenBox.§[$§.indices = OpenBox.§[$§.indices.concat(_loc5_.indices);
            }
            while(true)
            {
               if(OpenBox.§"!T§ == null)
               {
                  OpenBox.§"!T§ = JSON.parse(Assets.getText("text/model/BoxLid.simple"));
                  if(!_loc22_)
                  {
                     §§push(0);
                     if(_loc21_)
                     {
                        _loc8_ = int(§§pop());
                        §§push(int(OpenBox.§"!T§.indices.length));
                     }
                     _loc9_ = §§pop();
                     if(_loc22_)
                     {
                        break;
                     }
                     while(_loc8_ < _loc9_)
                     {
                        §§push(_loc8_);
                        if(_loc21_)
                        {
                           _loc8_++;
                           if(_loc21_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc10_ = §§pop();
                        if(_loc21_)
                        {
                           §§push(OpenBox.§"!T§.indices);
                           if(!_loc22_)
                           {
                              §§push(§§pop());
                           }
                           _loc11_ = §§pop();
                           if(!_loc22_)
                           {
                              §§push(_loc11_);
                              §§push(_loc10_);
                              §§push(_loc10_);
                              if(_loc21_)
                              {
                                 §§push(_loc11_[§§pop()] + int(OpenBox.§[$§.vertexCount));
                              }
                              §§pop()[§§pop()] = §§pop();
                           }
                        }
                     }
                     if(_loc22_)
                     {
                        break;
                     }
                  }
               }
               §§push(this);
               §§push("vertexCount");
               §§push(int(OpenBox.§[$§.vertexCount));
               if(!_loc22_)
               {
                  §§push(§§pop() + int(OpenBox.§"!T§.vertexCount));
               }
               §§push(null);
               §§push(null);
               §§push(param1);
               if(_loc21_)
               {
                  §§push(§§pop() * 2);
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),param4);
               break;
            }
            var _loc12_:Matrix3D = null;
            _loc5_ = param2;
            if(_loc5_ != 0)
            {
               while(true)
               {
                  if(_loc5_ != 1)
                  {
                     if(_loc5_ == 2)
                     {
                        _loc12_ = new Matrix3D();
                        if(_loc21_)
                        {
                           _loc12_.§%V§(-90,new Point3D(0,0,1),new Point3D(0,0,0));
                        }
                        break;
                     }
                     if(_loc5_ == 3)
                     {
                        if(!_loc22_)
                        {
                           _loc12_ = new Matrix3D();
                           if(_loc21_)
                           {
                              _loc12_.§%V§(90,new Point3D(0,0,1),new Point3D(0,0,0));
                           }
                           break;
                        }
                     }
                     else
                     {
                        if(_loc5_ == 4)
                        {
                           addr0515:
                           _loc12_ = new Matrix3D();
                           if(_loc21_)
                           {
                              _loc12_.§%V§(-90,new Point3D(1,0,0),new Point3D(0,0,0));
                           }
                           break;
                        }
                        if(_loc5_ != 5)
                        {
                           break;
                        }
                     }
                     _loc12_ = new Matrix3D();
                     if(_loc21_)
                     {
                        _loc12_.§%V§(90,new Point3D(1,0,0),new Point3D(0,0,0));
                     }
                     break;
                  }
                  if(!_loc22_)
                  {
                     _loc12_ = new Matrix3D();
                     if(!_loc22_)
                     {
                        _loc12_.§%V§(180,new Point3D(1,0,0),new Point3D(0,0,0));
                     }
                     break;
                  }
                  §§goto(addr0515);
               }
            }
            var _loc13_:Matrix3D = null;
            _loc5_ = param3;
            if(_loc5_ != 0)
            {
               while(true)
               {
                  if(!_loc22_)
                  {
                     if(_loc5_ == 1)
                     {
                        break;
                     }
                     if(!_loc21_)
                     {
                        break;
                     }
                     if(_loc5_ == 5)
                     {
                        break;
                     }
                     if(_loc5_ != 2)
                     {
                        if(_loc5_ == 3)
                        {
                           if(!_loc22_)
                           {
                              _loc13_ = new Matrix3D();
                              if(_loc21_)
                              {
                                 _loc13_.§%V§(90,new Point3D(0,1,0),new Point3D(0,0,0));
                              }
                              break;
                           }
                        }
                        else if(_loc5_ != 4)
                        {
                           break;
                        }
                        _loc13_ = new Matrix3D();
                        if(_loc21_)
                        {
                           _loc13_.§%V§(180,new Point3D(0,1,0),new Point3D(0,0,0));
                        }
                        break;
                     }
                  }
                  _loc13_ = new Matrix3D();
                  if(!_loc22_)
                  {
                     _loc13_.§%V§(-90,new Point3D(0,1,0),new Point3D(0,0,0));
                  }
                  break;
               }
            }
            var _loc14_:§'!Y§ = §2_§.§'!D§(vertices,"position");
            while(true)
            {
               loop33:
               while(true)
               {
                  loop55:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc21_)
                        {
                           §§push(true);
                           if(!_loc21_)
                           {
                              break;
                           }
                           if(_loc12_ != null)
                           {
                              break loop55;
                           }
                           if(_loc22_)
                           {
                              break loop33;
                           }
                           §§pop();
                           if(!_loc21_)
                           {
                              continue loop34;
                           }
                        }
                        §§push(_loc13_ == null);
                        if(_loc21_)
                        {
                           break loop33;
                        }
                        break loop55;
                     }
                     §§goto(addr06d7);
                  }
                  if(§§pop())
                  {
                     if(_loc21_)
                     {
                        continue loop34;
                     }
                  }
                  else
                  {
                     §§goto(addr0a63);
                  }
                  §§goto(addr0a6f);
               }
               §§push(!§§pop());
               if(_loc21_)
               {
                  addr06d7:
                  §§push(Boolean(§§pop()));
               }
               break loop55;
            }
            _loc16_ = new Point3D();
            loop34:
            while(true)
            {
               while(true)
               {
                  if(_loc21_)
                  {
                     if(_loc13_ == null)
                     {
                        break;
                     }
                     if(!_loc21_)
                     {
                        break loop34;
                     }
                  }
                  loop41:
                  while(true)
                  {
                     §§push(int(OpenBox.§[$§.vertexCount));
                     if(_loc21_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc21_)
                        {
                           break;
                        }
                     }
                     _loc8_ = §§pop();
                     while(true)
                     {
                        if(!_loc22_)
                        {
                           break loop34;
                        }
                        addr08cd:
                        §§push(0);
                        if(!_loc22_)
                        {
                           §§push(int(§§pop()));
                        }
                        break loop41;
                     }
                     §§goto(addr08d8);
                  }
                  _loc8_ = §§pop();
                  §§goto(addr08d8);
               }
               if(_loc12_ != null)
               {
                  if(_loc21_)
                  {
                     §§goto(addr08cd);
                  }
                  addr08d8:
                  _loc17_ = vertices;
                  if(!_loc22_)
                  {
                     loop43:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc17_.§@!Y§.length);
                           if(!_loc22_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc21_)
                              {
                                 break;
                              }
                              §§push(_loc17_.§5G§);
                              if(_loc22_)
                              {
                                 break loop43;
                              }
                              §§push(§§pop() / §§pop());
                           }
                           §§push(int(§§pop()));
                           if(!_loc22_)
                           {
                              break;
                           }
                           addr0919:
                           _loc9_ = §§pop();
                           if(!_loc22_)
                           {
                              §§goto(addr0a5b);
                           }
                        }
                        while(true)
                        {
                           §§push(int(§§pop()));
                           if(_loc21_)
                           {
                              §§goto(addr0919);
                           }
                           §§goto(addr0a5d);
                        }
                     }
                     while(§§pop() < §§pop())
                     {
                        §§push(_loc8_);
                        if(!_loc22_)
                        {
                           _loc8_++;
                           if(!_loc22_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc10_ = §§pop();
                        _loc18_ = _loc14_.vertices;
                        if(_loc21_)
                        {
                           §§push(_loc18_);
                           §§push(_loc18_.§5G§);
                           if(_loc21_)
                           {
                              §§push(§§pop() * _loc10_);
                           }
                           §§pop().offset = §§pop();
                           if(_loc21_)
                           {
                              §§push(_loc14_.§+R§);
                              §§push(_loc18_.offset);
                              if(!_loc22_)
                              {
                                 §§push(§§pop() + _loc14_.§+^§);
                              }
                              §§pop().offset = §§pop();
                           }
                        }
                        _loc15_ = _loc14_.§+R§;
                        §§push(_loc15_.§@!Y§);
                        §§push(_loc15_.offset);
                        if(!_loc22_)
                        {
                           §§push(§§pop() + 1);
                        }
                        loop45:
                        while(true)
                        {
                           loop46:
                           while(true)
                           {
                              loop47:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()]);
                                    if(!_loc22_)
                                    {
                                       _loc19_ = Number(§§pop());
                                       §§push(_loc15_.§@!Y§);
                                       §§push(_loc15_.offset);
                                       if(_loc21_)
                                       {
                                          §§push(§§pop() + 2);
                                       }
                                       §§push(Number(§§pop()[§§pop()]));
                                       if(!_loc21_)
                                       {
                                          break loop46;
                                       }
                                       _loc20_ = Number(§§pop());
                                       §§push(_loc16_);
                                       §§push(_loc15_.§@!Y§[_loc15_.offset]);
                                       if(_loc21_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§pop().x = §§pop();
                                       _loc16_.y = _loc19_;
                                       if(_loc21_)
                                       {
                                          _loc16_.z = _loc20_;
                                          if(!_loc21_)
                                          {
                                             break;
                                          }
                                          _loc12_.transformVector3(_loc16_,_loc16_);
                                          if(_loc22_)
                                          {
                                             break loop47;
                                          }
                                          §§push(Number(_loc16_.x));
                                          if(!_loc21_)
                                          {
                                             break loop46;
                                          }
                                          _loc19_ = §§pop();
                                          _loc15_.§@!Y§[_loc15_.offset] = _loc19_;
                                       }
                                       §§push(Number(_loc16_.y));
                                       if(!_loc21_)
                                       {
                                          break loop45;
                                       }
                                    }
                                    _loc19_ = §§pop();
                                    if(!_loc22_)
                                    {
                                       break;
                                    }
                                    addr0a3f:
                                    §§push(_loc16_.z);
                                    break loop46;
                                 }
                                 §§push(_loc15_.§@!Y§);
                                 §§push(_loc15_.offset);
                                 if(!_loc22_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop()[§§pop()] = _loc19_;
                                 §§goto(addr0a3f);
                              }
                              §§goto(addr0a46);
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        _loc19_ = §§pop();
                        addr0a46:
                        §§push(_loc15_.§@!Y§);
                        §§push(_loc15_.offset);
                        if(!_loc22_)
                        {
                           §§push(§§pop() + 2);
                        }
                        §§pop()[§§pop()] = _loc19_;
                        loop9:
                        while(true)
                        {
                           §§push(_loc8_);
                           addr0a5d:
                           while(true)
                           {
                              §§push(_loc9_);
                              break loop9;
                           }
                        }
                     }
                  }
                  §§goto(addr0a63);
               }
               addr0a63:
               §§push(0);
               if(!_loc22_)
               {
                  §§push(int(§§pop()));
               }
               _loc8_ = §§pop();
               addr0a6f:
               _loc17_ = vertices;
               if(!_loc22_)
               {
                  loop50:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc17_.§@!Y§.length);
                        if(!_loc22_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc21_)
                           {
                              break;
                           }
                           §§push(_loc17_.§5G§);
                           if(!_loc21_)
                           {
                              break loop50;
                           }
                           §§push(§§pop() / §§pop());
                        }
                        §§push(int(§§pop()));
                        if(_loc22_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(!_loc22_)
                        {
                           break;
                        }
                        §§goto(addr0b7e);
                     }
                     _loc9_ = §§pop();
                     if(_loc21_)
                     {
                        §§goto(addr0b7c);
                     }
                  }
                  while(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(_loc8_);
                        if(_loc21_)
                        {
                           _loc8_++;
                           if(_loc22_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc10_ = §§pop();
                     _loc18_ = _loc14_.vertices;
                     while(true)
                     {
                        if(!_loc22_)
                        {
                           §§push(_loc18_);
                           §§push(_loc18_.§5G§);
                           if(_loc21_)
                           {
                              §§push(§§pop() * _loc10_);
                           }
                           §§pop().offset = §§pop();
                           if(!_loc21_)
                           {
                              break;
                           }
                        }
                        §§push(_loc14_.§+R§);
                        §§push(_loc18_.offset);
                        if(_loc21_)
                        {
                           §§push(§§pop() + _loc14_.§+^§);
                        }
                        §§pop().offset = §§pop();
                        break;
                     }
                     _loc15_ = _loc14_.§+R§;
                     if(!_loc22_)
                     {
                        §§push(_loc15_.§@!Y§);
                        §§push(_loc15_.offset);
                        if(_loc21_)
                        {
                           §§push(§§pop() + 2);
                        }
                        while(true)
                        {
                           §§push(§§pop()[§§pop()]);
                           if(!_loc22_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc21_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() + param1);
                           if(_loc21_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc21_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           break;
                        }
                        _loc19_ = §§pop();
                        if(!_loc22_)
                        {
                           §§push(_loc15_.§@!Y§);
                           §§push(_loc15_.offset);
                           if(_loc21_)
                           {
                              §§push(§§pop() + 2);
                           }
                           §§pop()[§§pop()] = _loc19_;
                        }
                     }
                     loop12:
                     while(true)
                     {
                        §§push(_loc8_);
                        addr0b7e:
                        while(true)
                        {
                           §§push(_loc9_);
                           break loop12;
                        }
                     }
                  }
               }
               return;
            }
            _loc17_ = vertices;
            if(_loc21_)
            {
               loop36:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc17_.§@!Y§.length);
                     if(_loc21_)
                     {
                        §§push(int(§§pop()));
                        if(_loc22_)
                        {
                           break;
                        }
                        §§push(_loc17_.§5G§);
                        if(!_loc21_)
                        {
                           break loop36;
                        }
                        §§push(§§pop() / §§pop());
                     }
                     §§push(int(§§pop()));
                     if(!_loc22_)
                     {
                        break;
                     }
                     §§goto(addr08b6);
                  }
                  §§push(int(§§pop()));
                  if(!_loc22_)
                  {
                     _loc9_ = §§pop();
                     if(!_loc21_)
                     {
                        break loop35;
                     }
                     §§goto(addr08b4);
                  }
                  §§goto(addr08b6);
               }
               loop5:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     break loop35;
                  }
                  addr08b4:
                  §§push(_loc8_);
                  if(_loc21_)
                  {
                     _loc8_++;
                     if(_loc21_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc10_ = §§pop();
                  _loc18_ = _loc14_.vertices;
                  if(!_loc22_)
                  {
                     §§push(_loc18_);
                     §§push(_loc18_.§5G§);
                     if(_loc21_)
                     {
                        §§push(§§pop() * _loc10_);
                     }
                     §§pop().offset = §§pop();
                     if(_loc21_)
                     {
                        §§push(_loc14_.§+R§);
                        §§push(_loc18_.offset);
                        if(_loc21_)
                        {
                           §§push(§§pop() + _loc14_.§+^§);
                        }
                        §§pop().offset = §§pop();
                     }
                  }
                  _loc15_ = _loc14_.§+R§;
                  loop38:
                  while(true)
                  {
                     loop39:
                     while(true)
                     {
                        if(!_loc22_)
                        {
                           §§push(_loc15_.§@!Y§);
                           §§push(_loc15_.offset);
                           if(_loc21_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§push(§§pop()[§§pop()]);
                           if(!_loc22_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc21_)
                              {
                                 break loop38;
                              }
                           }
                           _loc19_ = Number(§§pop());
                           §§push(_loc15_.§@!Y§);
                           §§push(_loc15_.offset);
                           if(!_loc22_)
                           {
                              §§push(§§pop() + 2);
                           }
                           while(true)
                           {
                              §§push(§§pop()[§§pop()]);
                              if(_loc21_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc21_)
                                 {
                                    break loop38;
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc22_)
                                 {
                                    break;
                                 }
                              }
                              _loc20_ = §§pop();
                              §§push(_loc16_);
                              §§push(_loc15_.§@!Y§[_loc15_.offset]);
                              if(_loc21_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§pop().x = §§pop();
                              if(!_loc22_)
                              {
                                 _loc16_.y = _loc19_;
                                 if(!_loc21_)
                                 {
                                    break loop39;
                                 }
                                 _loc16_.z = _loc20_;
                                 _loc13_.transformVector3(_loc16_,_loc16_);
                              }
                              §§push(Number(_loc16_.x));
                              break;
                           }
                           _loc19_ = §§pop();
                           _loc15_.§@!Y§[_loc15_.offset] = _loc19_;
                           _loc19_ = Number(_loc16_.y);
                           if(_loc21_)
                           {
                              §§push(_loc15_.§@!Y§);
                              §§push(_loc15_.offset);
                              if(_loc21_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop()[§§pop()] = _loc19_;
                           }
                        }
                        §§push(_loc16_.z);
                        break loop38;
                     }
                     §§push(_loc15_.§@!Y§);
                     §§push(_loc15_.offset);
                     if(!_loc22_)
                     {
                        §§push(§§pop() + 2);
                     }
                     §§pop()[§§pop()] = _loc19_;
                     §§goto(addr08b4);
                  }
                  _loc19_ = §§pop();
                  if(!_loc22_)
                  {
                     break loop39;
                  }
                  while(true)
                  {
                     §§push(_loc8_);
                     addr08b6:
                     while(true)
                     {
                        §§push(_loc9_);
                        continue loop5;
                     }
                  }
                  addr08b4:
               }
            }
            break loop35;
         }
         param3 = 5;
         §§goto(addr006e);
      }
   }
}

