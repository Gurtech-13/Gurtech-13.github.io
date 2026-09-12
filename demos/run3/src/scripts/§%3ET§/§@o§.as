package §>T§
{
   import §!!$§.§ 6§;
   import §%!Q§.§+#§;
   import §%!Z§.§&!S§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import com.player03.layout.§ 7§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import nme3D.shader.vertex.PositionColorVertex;
   
   public class §@o§ extends Model
   {
      
      public static var §^j§:Array = [null,null,null,null];
      
      public function §@o§(param1:§'H§, param2:Number, param3:Boolean, param4:String)
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc5_:§+#§ = §+#§.§>! §(param4);
         if(_loc19_)
         {
            if(_loc5_ != null)
            {
               if(!_loc20_)
               {
                  §§push(_loc5_.§8_§());
                  if(!_loc20_)
                  {
                     §§push(int(§§pop()));
                  }
                  §§push(§§pop() / 2);
                  if(_loc19_)
                  {
                     §§push(Number(§§pop()));
                  }
                  param2 = §§pop();
               }
            }
         }
         var _loc6_:Vector.<int> = §@o§.§,3§(_loc5_,param4);
         var _loc7_:§!!V§ = Type.createInstance(param1.§?"§,[24 + 48 * int(_loc6_.length),null]);
         if(!_loc20_)
         {
            §§push(this);
            §§push(_loc7_);
            §§push(§@o§);
            §§push(_loc6_.length);
            if(_loc19_)
            {
               §§push(int(§§pop()));
            }
            §§pop().super(§§pop(),§§pop().§2!<§(§§pop()),param1);
         }
         §§push(§§findproperty(Point3D));
         §§push(param2);
         if(!_loc20_)
         {
            §§push(-§§pop());
         }
         §§push(param2);
         if(_loc19_)
         {
            §§push(-§§pop());
         }
         var _loc8_:Point3D = new §§pop().Point3D(§§pop(),§§pop(),0);
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(§§findproperty(Point3D));
               §§push(param2);
               §§push(param2);
               §§push(param2);
               if(!_loc20_)
               {
                  §§push(2);
                  if(_loc20_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc19_)
                  {
                     if(!param3)
                     {
                        §§push(1);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break loop1;
                     }
                  }
               }
               §§push(-1);
               if(_loc19_)
               {
               }
               break;
            }
            §§push(§§pop() * §§pop());
            break;
         }
         var _loc9_:Point3D = new §§pop().Point3D(§§pop(),§§pop(),§§pop());
         while(true)
         {
            §§push(param2);
            if(_loc19_)
            {
               §§push(§§pop() * 0.1);
               if(!_loc19_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc10_:* = §§pop();
         while(true)
         {
            if(_loc19_)
            {
               §`C§.§"_§(vertices,_loc8_,_loc9_,_loc10_,_loc10_,_loc10_);
               if(!_loc19_)
               {
                  break;
               }
            }
            §`C§.§6!b§(vertices,14540253,14540253);
            if(!_loc20_)
            {
               if(param3)
               {
                  break;
               }
               addr018b:
               §§push(param2);
               if(_loc19_)
               {
                  addr018a:
                  §§push(Number(§§pop()));
               }
               var _loc13_:* = §§pop();
               while(true)
               {
                  §§push(param2);
                  if(!_loc20_)
                  {
                     §§push(§§pop() + 3.6000000000000005);
                     if(!_loc19_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc19_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc14_:* = §§pop();
               §§push(24);
               if(!_loc20_)
               {
                  §§push(int(§§pop()));
               }
               var _loc15_:* = §§pop();
               §§push(0);
               if(_loc19_)
               {
                  §§push(int(§§pop()));
               }
               var _loc16_:* = §§pop();
               if(_loc19_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc16_);
                     §§push(_loc6_.length);
                     if(!_loc20_)
                     {
                        §§push(int(§§pop()));
                     }
                     if(§§pop() >= §§pop())
                     {
                        break;
                     }
                     §§push(_loc6_[_loc16_]);
                     if(_loc19_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc17_ = §§pop();
                     if(_loc19_)
                     {
                        _loc16_++;
                     }
                     _loc18_ = _loc17_;
                     while(true)
                     {
                        if(_loc18_ != 0)
                        {
                           if(_loc18_ == 1)
                           {
                              loop7:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc19_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc19_)
                                       {
                                          _loc11_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             addr0276:
                                             _loc12_ = -_loc14_;
                                             if(_loc19_)
                                             {
                                                break loop7;
                                             }
                                             continue loop0;
                                          }
                                          §§push(Number(_loc14_));
                                          if(_loc20_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc12_ = §§pop();
                                       if(!_loc20_)
                                       {
                                          break loop7;
                                       }
                                       §§goto(addr025a);
                                    }
                                    §§goto(addr025c);
                                 }
                                 §§goto(addr025d);
                              }
                           }
                           else
                           {
                              if(_loc18_ == 2)
                              {
                                 if(_loc19_)
                                 {
                                    _loc11_ = Number(_loc14_);
                                    §§goto(addr025a);
                                 }
                              }
                              else
                              {
                                 if(_loc18_ != 3)
                                 {
                                    break loop7;
                                 }
                                 _loc11_ = 0;
                              }
                              §§goto(addr0276);
                           }
                           break loop7;
                        }
                        §§push(_loc14_);
                        if(!_loc20_)
                        {
                           §§push(-§§pop());
                        }
                        _loc11_ = Number(§§pop());
                        _loc12_ = 0;
                        if(_loc20_)
                        {
                           addr025d:
                           _loc12_ = 0;
                           addr025a:
                           addr025c:
                           if(_loc20_)
                           {
                              break;
                           }
                        }
                        break loop7;
                     }
                     _loc15_ += 48;
                  }
               }
               return;
            }
            break;
         }
         while(true)
         {
            §§push(param2);
            if(!_loc20_)
            {
               §§push(-§§pop());
               if(_loc20_)
               {
                  break;
               }
            }
            §§goto(addr018a);
         }
         §§goto(addr018b);
      }
      
      public static function §2!<§(param1:int, param2:Object = undefined) : Vector.<uint>
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = null as Vector.<uint>;
         var _loc4_:* = null as §3!I§;
         var _loc5_:* = null as §3!I§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(_loc8_)
         {
            loop1:
            while(true)
            {
               if(param2 == null)
               {
                  §§push(16);
                  if(!_loc8_)
                  {
                     break;
                  }
                  param2 = §§pop();
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(true);
                     if(_loc8_)
                     {
                        if(param1 < 1)
                        {
                           break;
                        }
                        if(_loc9_)
                        {
                           break loop2;
                        }
                     }
                     §§pop();
                     §§push(param1);
                     break loop1;
                  }
                  addr0065:
                  if(§§pop())
                  {
                     Boot.lastError = new Error();
                     §§push("Invalid number of rings: ");
                     if(_loc8_)
                     {
                        §§push(§§pop() + param1);
                        if(_loc8_)
                        {
                           throw §§pop();
                        }
                     }
                  }
               }
               §§push(Boolean(§§pop()));
               break loop3;
            }
            §§push(§§pop() > 4);
            if(_loc8_)
            {
               break loop2;
            }
            §§goto(addr0065);
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(§@o§.§^j§);
                  if(_loc8_)
                  {
                     §§push(param1);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(1);
                     if(!_loc8_)
                     {
                        break loop5;
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc8_)
                     {
                        break loop4;
                     }
                     if(§§pop()[§§pop()] == null)
                     {
                        _loc3_ = §`C§.§92§.slice(0,16777215);
                        if(_loc8_)
                        {
                           §§push(§@o§.§^j§);
                           §§push(param1);
                           if(_loc8_)
                           {
                              §§push(§§pop() - 1);
                           }
                           §§pop()[§§pop()] = _loc3_;
                        }
                        _loc4_ = §=B§.§@W§(0,param2 * 3 * param1,param2 * 3);
                        if(_loc8_)
                        {
                           while(_loc4_.§#1§ != _loc4_.end)
                           {
                              _loc5_ = _loc4_;
                              if(_loc8_)
                              {
                                 §§push(_loc5_);
                                 §§push(_loc5_.§#1§);
                                 if(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_.§['§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop()));
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          var _temp_1:* = §§pop();
                                          §§push(_temp_1);
                                          §§push(_temp_1);
                                       }
                                       _loc7_ = §§pop();
                                       break;
                                    }
                                 }
                                 §§pop().§#1§ = §§pop();
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc7_);
                              if(!_loc9_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc6_ = §§pop();
                              if(_loc8_)
                              {
                                 §§push(§@o§);
                                 §§push(_loc3_);
                                 §§push(int(_loc3_.length));
                                 §§push(24);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + _loc6_);
                                 }
                                 §§pop().§%5§(§§pop(),§§pop(),§§pop(),param2);
                              }
                           }
                        }
                     }
                     §§push(§@o§.§^j§);
                  }
                  §§push(param1);
                  if(!_loc9_)
                  {
                     break;
                  }
                  break loop4;
               }
               §§push(1);
               break;
            }
            §§push(§§pop() - §§pop());
            break;
         }
         return §§pop()[§§pop()];
      }
      
      public static function §,3§(param1:§+#§ = undefined, param2:String = undefined) : Vector.<int>
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as Array;
         var _loc6_:* = null as String;
         var _loc7_:* = null as String;
         var _loc3_:Vector.<int> = null;
         loop2:
         while(true)
         {
            if(!_loc9_)
            {
               if(param1 != null)
               {
                  if(!_loc9_)
                  {
                     _loc3_ = param1.§@!-§;
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           break loop2;
                        }
                        addr01c7:
                        _loc3_ = Vector.<int>([2,0]);
                        break;
                     }
                     §§goto(addr01da);
                  }
               }
               else if(param2 == null)
               {
                  break;
               }
            }
            _loc3_ = Vector.<int>([]);
            loop4:
            while(true)
            {
               while(true)
               {
                  if(!_loc9_)
                  {
                     §§push(0);
                     if(_loc8_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     _loc4_ = §§pop();
                     if(_loc9_)
                     {
                        break loop4;
                     }
                  }
                  §§push(param2.split(","));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  if(_loc8_)
                  {
                     break loop4;
                  }
                  break loop2;
               }
               while(true)
               {
                  if(§§pop() >= int(_loc5_.length))
                  {
                     break loop2;
                  }
                  §§push(_loc5_[_loc4_]);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                  }
                  _loc6_ = §§pop();
                  loop6:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        _loc4_++;
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc6_);
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(!_loc9_)
                              {
                                 _loc7_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc7_);
                                 if(_loc9_)
                                 {
                                    break loop7;
                                 }
                                 §§push("down");
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    _loc3_.push(3);
                                    break loop4;
                                 }
                                 §§push(_loc7_);
                                 if(!_loc9_)
                                 {
                                    §§push("left");
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          break loop6;
                                       }
                                       break loop4;
                                    }
                                    §§push(_loc7_);
                                    if(!_loc8_)
                                    {
                                       break loop7;
                                    }
                                 }
                              }
                           }
                           §§push("right");
                           if(_loc8_)
                           {
                              break;
                           }
                           §§goto(addr016d);
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc3_.push(0);
                           break loop4;
                        }
                        §§push(_loc7_);
                        break;
                     }
                     addr016d:
                     if(§§pop() == "up")
                     {
                        _loc3_.push(1);
                     }
                     break loop4;
                  }
                  _loc3_.push(2);
                  if(_loc8_)
                  {
                  }
                  break loop4;
               }
               break loop2;
            }
            while(true)
            {
               §§push(_loc4_);
               break loop5;
            }
         }
         loop9:
         while(true)
         {
            while(true)
            {
               §§push(true);
               if(!_loc9_)
               {
                  if(_loc3_ == null)
                  {
                     break loop9;
                  }
                  if(!_loc9_)
                  {
                     §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(_loc3_.length);
                     if(_loc8_)
                     {
                        §§push(int(§§pop()));
                     }
                     §§push(§§pop() == 0);
                     if(!_loc8_)
                     {
                        break loop9;
                     }
                  }
               }
               §§push(Boolean(§§pop()));
               break loop9;
            }
            §§goto(addr01c7);
         }
         if(§§pop())
         {
            break loop10;
         }
         addr01da:
         return _loc3_;
      }
      
      public static function §;M§(param1:§!!V§, param2:int, param3:Number, param4:Number, param5:Number, param6:int, param7:Object = undefined) : void
      {
         §§push(false);
         var _loc27_:Boolean = true;
         var _loc28_:* = §§pop();
         var _loc9_:* = null as §=s§;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc20_:* = 0;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:* = null as §!!V§;
         var _loc24_:* = NaN;
         var _loc25_:* = null as §!!V§;
         var _loc26_:* = null as §=s§;
         while(true)
         {
            if(_loc27_)
            {
               if(param7 != null)
               {
                  break;
               }
            }
            param7 = 16;
            break;
         }
         var _loc8_:§'!Y§ = §2_§.§'!D§(param1,"position");
         var _loc10_:§'!Y§ = §2_§.§'!D§(param1,"color");
         §§push(param2);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc18_:* = §§pop();
         var _loc19_:int = param7;
         if(_loc27_)
         {
            loop0:
            while(_loc18_ < _loc19_)
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
                        while(true)
                        {
                           §§push(_loc18_);
                           if(_loc27_)
                           {
                              _loc18_++;
                              if(_loc28_)
                              {
                                 break;
                              }
                              §§push(int(§§pop()));
                              if(!_loc27_)
                              {
                                 break loop9;
                              }
                              _loc20_ = §§pop();
                              if(_loc27_)
                              {
                                 _loc12_ = Number(Math.sin(_loc20_ / param7 * 3.141592653589793 * 2));
                              }
                              §§push(Number(Math.cos(_loc20_ / param7 * 3.141592653589793 * 2)));
                              if(_loc27_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc28_)
                                 {
                                    break loop8;
                                 }
                              }
                              _loc13_ = §§pop();
                              if(!_loc27_)
                              {
                                 continue loop0;
                              }
                              §§push(0);
                              if(!_loc27_)
                              {
                                 break loop7;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc21_ = §§pop();
                        §§goto(addr0467);
                     }
                     §§goto(addr0125);
                  }
                  while(true)
                  {
                     _loc14_ = §§pop();
                     §§push(Number(Math.cos(_loc22_ / 3 * 3.141592653589793 * 2)));
                     if(_loc27_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc15_ = §§pop();
                     _loc23_ = _loc8_.vertices;
                     while(true)
                     {
                        if(!_loc28_)
                        {
                           §§push(_loc23_);
                           §§push(_loc23_.§5G§);
                           if(!_loc28_)
                           {
                              §§push(§§pop() * _loc11_);
                           }
                           §§pop().offset = §§pop();
                           if(_loc28_)
                           {
                              break;
                           }
                        }
                        §§push(_loc8_.§+R§);
                        §§push(_loc23_.offset);
                        if(!_loc28_)
                        {
                           §§push(§§pop() + _loc8_.§+^§);
                        }
                        §§pop().offset = §§pop();
                        break;
                     }
                     _loc9_ = _loc8_.§+R§;
                     loop11:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           loop19:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc27_)
                                 {
                                    §§push(_loc13_);
                                    §§push(12);
                                    §§push(_loc15_);
                                    if(!_loc28_)
                                    {
                                       §§push(1.2000000000000002);
                                       if(!_loc27_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!_loc27_)
                                       {
                                          break loop19;
                                       }
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc28_)
                                    {
                                       break loop12;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc27_)
                                    {
                                       break loop12;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc27_)
                                    {
                                       break loop11;
                                    }
                                    _loc16_ = §§pop();
                                 }
                                 while(true)
                                 {
                                    §§push(_loc14_);
                                    §§push(1.2000000000000002);
                                    if(!_loc28_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       break loop11;
                                    }
                                    §§goto(addr02b8);
                                 }
                                 §§goto(addr038e);
                              }
                              §§goto(addr0203);
                           }
                           §§goto(addr020f);
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc28_)
                           {
                              §§goto(addr0278);
                           }
                           §§goto(addr02ba);
                        }
                        §§goto(addr038e);
                     }
                     _loc17_ = §§pop();
                     while(true)
                     {
                        §§push(param5);
                        §§push(_loc12_);
                        §§push(12);
                        if(_loc27_)
                        {
                           §§push(_loc15_);
                           if(!_loc28_)
                           {
                              addr0203:
                              §§push(§§pop() * 1.2000000000000002);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc28_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     addr020f:
                     §§push(§§pop() * §§pop());
                     if(_loc28_)
                     {
                        break loop12;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc28_)
                     {
                        _loc24_ = Number(§§pop());
                        if(_loc27_)
                        {
                           §§push(_loc9_.§@!Y§);
                           §§push(_loc9_.offset);
                           if(!_loc28_)
                           {
                              §§push(§§pop() + 2);
                           }
                           §§pop()[§§pop()] = _loc24_;
                           if(_loc27_)
                           {
                              switch(param6)
                              {
                                 case 0:
                                    §§push(param3);
                                    §§push(_loc17_);
                                    if(_loc27_)
                                    {
                                       break loop12;
                                    }
                                    addr0366:
                                    addr0376:
                                    §§push(§§pop() + §§pop());
                                    if(_loc27_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc28_)
                                       {
                                          addr0375:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc24_ = §§pop();
                                    §§push(_loc9_.§@!Y§);
                                    §§push(_loc9_.offset);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§pop()[§§pop()] = _loc24_;
                                    break;
                                 case 1:
                                    §§push(param3);
                                    if(_loc27_)
                                    {
                                       addr02ba:
                                       _loc24_ = §§pop() - _loc16_;
                                       _loc9_.§@!Y§[_loc9_.offset] = _loc24_;
                                       addr02b8:
                                       §§push(param4);
                                       if(_loc27_)
                                       {
                                          §§push(§§pop() - _loc17_);
                                       }
                                       _loc24_ = Number(§§pop());
                                       §§push(_loc9_.§@!Y§);
                                       §§push(_loc9_.offset);
                                       if(_loc27_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§pop()[§§pop()] = _loc24_;
                                       break;
                                    }
                                    §§goto(addr0375);
                                    break;
                                 case 2:
                                    §§push(param3);
                                    §§push(_loc17_);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc27_)
                                       {
                                          _loc24_ = §§pop();
                                          _loc9_.§@!Y§[_loc9_.offset] = _loc24_;
                                          §§push(param4);
                                          if(!_loc28_)
                                          {
                                             addr031b:
                                             _loc24_ = §§pop() + _loc16_;
                                             if(_loc27_)
                                             {
                                                §§push(_loc9_.§@!Y§);
                                                §§push(_loc9_.offset);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                §§pop()[§§pop()] = _loc24_;
                                             }
                                             break;
                                          }
                                          §§goto(addr0375);
                                       }
                                       else
                                       {
                                          addr0342:
                                          §§push(§§pop() + _loc16_);
                                          if(_loc27_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc28_)
                                             {
                                                _loc24_ = §§pop();
                                                _loc9_.§@!Y§[_loc9_.offset] = _loc24_;
                                                §§push(param4);
                                             }
                                          }
                                          §§goto(addr0366);
                                          §§push(_loc17_);
                                       }
                                       §§goto(addr0376);
                                    }
                                    §§goto(addr031b);
                                 case 3:
                                    §§goto(addr0342);
                                    §§push(param3);
                              }
                           }
                        }
                        addr038e:
                        _loc25_ = _loc10_.vertices;
                        if(!_loc28_)
                        {
                           §§push(_loc25_);
                           §§push(_loc25_.§5G§);
                           if(_loc27_)
                           {
                              §§push(§§pop() * _loc11_);
                           }
                           §§pop().offset = §§pop();
                           if(!_loc28_)
                           {
                              §§push(_loc10_.§+R§);
                              §§push(_loc25_.offset);
                              if(_loc27_)
                              {
                                 §§push(§§pop() + _loc10_.§+^§);
                              }
                              §§pop().offset = §§pop();
                           }
                        }
                        _loc26_ = _loc10_.§+R§;
                        while(true)
                        {
                           if(_loc27_)
                           {
                              loop16:
                              while(true)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(0.9411764705882353);
                                       if(_loc27_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc28_)
                                          {
                                             break;
                                          }
                                          _loc24_ = §§pop();
                                          _loc26_.§@!Y§[_loc26_.offset] = _loc24_;
                                          if(!_loc27_)
                                          {
                                             break loop17;
                                          }
                                          §§push(0.5647058823529412);
                                          if(_loc27_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc27_)
                                             {
                                                break loop16;
                                             }
                                          }
                                       }
                                       _loc24_ = §§pop();
                                       break loop17;
                                    }
                                    §§push(Number(§§pop()));
                                    break loop16;
                                 }
                                 §§push(_loc26_.§@!Y§);
                                 §§push(_loc26_.offset);
                                 if(!_loc28_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop()[§§pop()] = _loc24_;
                                 §§push(0);
                                 if(!_loc28_)
                                 {
                                    break loop18;
                                 }
                                 break;
                              }
                              _loc24_ = §§pop();
                              if(_loc28_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc26_.§@!Y§);
                           §§push(_loc26_.offset);
                           if(_loc27_)
                           {
                              §§push(§§pop() + 2);
                           }
                           §§pop()[§§pop()] = _loc24_;
                           if(!_loc28_)
                           {
                              _loc11_++;
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc21_);
                           break loop7;
                        }
                        addr0467:
                     }
                     addr0278:
                     _loc24_ = Number(§§pop());
                     _loc9_.§@!Y§[_loc9_.offset] = _loc24_;
                     §§push(param4);
                     §§push(_loc16_);
                     if(!_loc28_)
                     {
                        _loc24_ = §§pop() - §§pop();
                        §§push(_loc9_.§@!Y§);
                        §§push(_loc9_.offset);
                        if(_loc27_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§pop()[§§pop()] = _loc24_;
                     }
                     else
                     {
                        §§goto(addr02b8);
                     }
                     §§goto(addr038e);
                     _loc22_ = §§pop();
                     §§push(Number(Math.sin(_loc22_ / 3 * 3.141592653589793 * 2)));
                  }
                  continue loop0;
               }
               while(§§pop() < 3)
               {
                  §§push(_loc21_++);
                  if(!_loc28_)
                  {
                     while(true)
                     {
                        §§push(int(§§pop()));
                     }
                     addr0125:
                  }
                  while(true)
                  {
                     _loc22_ = §§pop();
                     §§push(Number(Math.sin(_loc22_ / 3 * 3.141592653589793 * 2)));
                     break loop8;
                  }
               }
            }
         }
      }
      
      public static function §%5§(param1:Vector.<uint>, param2:int, param3:int, param4:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         while(true)
         {
            if(!_loc14_)
            {
               if(param4 != null)
               {
                  break;
               }
            }
            §§push(16);
            if(_loc15_)
            {
               param4 = §§pop();
               break;
            }
            §§goto(addr005d);
         }
         while(true)
         {
            §§push(param3);
            if(!_loc14_)
            {
               §§push(§§pop() + (param4 - 1) * 3);
               if(_loc14_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         addr005d:
         var _loc5_:* = §§pop();
         §§push(param2);
         if(_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = param4;
         if(!_loc14_)
         {
            while(_loc8_ < _loc9_)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc8_);
                        if(!_loc14_)
                        {
                           _loc8_++;
                           if(_loc14_)
                           {
                              break;
                           }
                           _loc10_ = §§pop();
                           §§push(param3);
                           if(_loc14_)
                           {
                              break loop7;
                           }
                           §§push(_loc10_);
                           if(!_loc14_)
                           {
                              §§push(§§pop() * 3);
                              if(_loc14_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(int(§§pop()));
                        if(!_loc14_)
                        {
                           _loc6_ = §§pop();
                           §§push(2);
                           if(!_loc14_)
                           {
                              break loop7;
                           }
                           break;
                        }
                        break loop7;
                     }
                     §§goto(addr01a3);
                  }
                  §§push(int(§§pop()));
                  if(!_loc14_)
                  {
                     _loc11_ = §§pop();
                     §§push(0);
                  }
                  _loc12_ = §§pop();
                  §§goto(addr01ac);
               }
               while(§§pop() < §§pop())
               {
                  §§push(_loc12_++);
                  if(!_loc14_)
                  {
                     _loc13_ = §§pop();
                     §§push(param1);
                     §§push(_loc7_);
                     if(!_loc14_)
                     {
                        _loc7_++;
                     }
                     §§push(_loc5_);
                     if(!_loc14_)
                     {
                        §§push(§§pop() + _loc13_);
                     }
                     §§pop()[§§pop()] = §§pop();
                     §§push(param1);
                     §§push(_loc7_);
                     if(!_loc14_)
                     {
                        _loc7_++;
                     }
                     §§push(_loc5_);
                     if(!_loc14_)
                     {
                        §§push(§§pop() + _loc11_);
                     }
                     §§pop()[§§pop()] = §§pop();
                     §§push(param1);
                     §§push(_loc7_);
                     if(!_loc14_)
                     {
                        _loc7_++;
                     }
                     §§push(_loc6_);
                     if(!_loc14_)
                     {
                        §§push(§§pop() + _loc13_);
                     }
                     §§pop()[§§pop()] = §§pop();
                     §§push(param1);
                     §§push(_loc7_);
                     if(_loc15_)
                     {
                        _loc7_++;
                     }
                     §§push(_loc6_);
                     if(_loc15_)
                     {
                        §§push(§§pop() + _loc11_);
                     }
                     §§pop()[§§pop()] = §§pop();
                     if(_loc14_)
                     {
                        break;
                     }
                     §§push(param1);
                     §§push(_loc7_);
                     if(!_loc14_)
                     {
                        _loc7_++;
                     }
                     §§push(_loc5_);
                     if(_loc15_)
                     {
                        §§push(§§pop() + _loc11_);
                     }
                     §§pop()[§§pop()] = §§pop();
                     §§push(param1);
                     §§push(_loc7_);
                     if(_loc15_)
                     {
                        _loc7_++;
                     }
                     §§push(_loc6_);
                     if(!_loc14_)
                     {
                        §§push(§§pop() + _loc13_);
                     }
                     §§pop()[§§pop()] = §§pop();
                     §§push(_loc13_);
                     if(_loc15_)
                     {
                        while(true)
                        {
                           _loc11_ = int(§§pop());
                           if(!_loc15_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc12_);
                           }
                        }
                        break;
                        addr01a3:
                     }
                  }
                  while(true)
                  {
                     §§push(3);
                     break;
                  }
               }
               _loc5_ = int(_loc6_);
            }
         }
      }
      
      public static function §,!'§(param1:int) : Model
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!_loc9_)
         {
            switch(param1)
            {
               case 0:
                  _loc2_ = -3.6000000000000005;
                  if(_loc9_)
                  {
                  }
                  break;
               case 1:
                  §§push(3.6000000000000005);
                  if(_loc8_)
                  {
                     _loc3_ = §§pop();
                     if(_loc9_)
                     {
                     }
                     break;
                  }
                  addr0069:
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                     _loc2_ = §§pop();
                     if(_loc8_)
                     {
                     }
                     break;
                  }
                  addr0093:
                  _loc3_ = §§pop();
                  break;
               case 2:
                  §§goto(addr0069);
                  §§push(3.6000000000000005);
               case 3:
                  §§push(-3.6000000000000005);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr0093);
            }
         }
         var _loc4_:§!!V§ = Type.createInstance(PositionColorVertex,[48,null]);
         var _loc5_:§!!V§ = _loc4_;
         if(_loc8_)
         {
            §@o§.§;M§(_loc5_,0,_loc2_,_loc3_,0,param1);
         }
         var _loc6_:Vector.<uint> = new Vector.<uint>(0,false);
         var _loc7_:Vector.<uint> = _loc6_;
         if(!_loc9_)
         {
            §@o§.§%5§(_loc7_,0,0);
         }
         return new Model(_loc5_,_loc7_,§<!9§.§^L§());
      }
   }
}

