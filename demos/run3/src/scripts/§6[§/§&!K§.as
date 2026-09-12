package §6[§
{
   import §!!"§.§,X§;
   import §!!$§.§ 6§;
   import §"§.§5O§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-d§.§!!-§;
   import §-d§.§-!'§;
   import §2X§.§>x§;
   import §2X§.Layout3D;
   import §2X§.PositionData3D;
   import §5!]§.§5m§;
   import §<!&§.§%!§;
   import §=w§.§-!W§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §@H§.§!7§;
   import §`!7§.§`!3§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.§'!G§;
   import haxe.ds.§,!C§;
   import haxe.ds.ObjectMap;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   
   public class §&!K§
   {
      
      public static var §-6§:Boolean;
      
      public static var §#-§:PositionData3D;
      
      public var §5!W§:§=!U§;
      
      public var §;!P§:int;
      
      public var §5k§:int;
      
      public var §,!_§:§>3§;
      
      public var §-!O§:int;
      
      public var §=F§:§>x§;
      
      public var §^$§:§`!O§;
      
      public var §43§:§=!U§;
      
      public function §&!K§(param1:§`!O§, param2:String)
      {
         §§push(false);
         var _loc31_:Boolean = true;
         var _loc32_:* = §§pop();
         var _loc4_:* = null as StringMap;
         var _loc5_:* = null as Layout3D;
         var _loc6_:* = null as StringMap;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null as String;
         var _loc10_:* = null as StringMap;
         var _loc11_:* = null as String;
         var _loc14_:* = null as StringMap;
         var _loc15_:* = null as Array;
         var _loc16_:* = null;
         var _loc17_:* = null as StringMap;
         var _loc18_:* = null as §=!U§;
         var _loc19_:* = null as Array;
         var _loc20_:* = null as String;
         var _loc21_:* = null as §>f§;
         var _loc22_:* = 0;
         var _loc23_:* = 0;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         var _loc26_:Boolean = false;
         var _loc27_:* = 0;
         var _loc29_:* = null as §&!M§;
         var _loc30_:* = null as StringMap;
         if(_loc31_)
         {
            §-!O§ = 0;
            §^$§ = param1;
         }
         param1.§?!_§ = this;
         §,!_§ = new §>3§();
         §5!W§ = new ObjectMap();
         if(_loc31_)
         {
            if(param2 == null)
            {
               §43§ = new StringMap();
               if(_loc32_)
               {
               }
            }
            else
            {
               §43§ = §`!3§.§#&§(param2,"|","-");
            }
         }
         var _loc3_:StringMap = §43§;
         loop20:
         while(true)
         {
            loop21:
            while(true)
            {
               if(!_loc32_)
               {
                  while(true)
                  {
                     §§push("layout");
                     if(_loc31_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(_loc32_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc32_)
                           {
                              §§push(_loc3_.existsReserved("layout"));
                              if(_loc31_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc32_)
                                 {
                                 }
                              }
                              break;
                           }
                           addr01d2:
                           §=F§ = new §>x§(4,4);
                           if(!_loc32_)
                           {
                              break loop21;
                           }
                           break loop20;
                        }
                        §§push("layout");
                     }
                     §§push(§§pop() in _loc3_.h);
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc32_)
                     {
                        break loop20;
                     }
                     _loc4_ = §43§;
                     while(true)
                     {
                        §§push(Layout3D);
                        if(!_loc32_)
                        {
                           §§push("layout");
                           if(_loc32_)
                           {
                              break;
                           }
                           if(!(§§pop() in StringMap.§+!#§))
                           {
                              §§push(_loc4_.h["layout"]);
                              break;
                           }
                        }
                        §§push(_loc4_.getReserved("layout"));
                        break;
                     }
                     _loc5_ = §§pop().§&!`§(§§pop());
                     if(!_loc32_)
                     {
                        if(_loc5_ is §>x§)
                        {
                           if(_loc31_)
                           {
                              §=F§ = _loc5_;
                           }
                        }
                     }
                  }
                  if(§=F§ != null)
                  {
                     break;
                  }
                  if(!_loc31_)
                  {
                     break loop20;
                  }
               }
               §§goto(addr01d2);
            }
            §§push(§§findproperty(§5k§));
            §§push(§=F§.§+K§);
            if(!_loc32_)
            {
               §§push(§§pop() * §=F§.§^X§);
            }
            §§pop().§5k§ = §§pop();
            break;
         }
         _loc4_ = §43§;
         loop22:
         while(true)
         {
            if(_loc31_)
            {
               while(true)
               {
                  §§push("color");
                  if(_loc31_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc31_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc32_)
                        {
                           §§push(_loc4_.existsReserved("color"));
                           if(_loc31_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc32_)
                              {
                              }
                           }
                           break;
                        }
                        break loop22;
                     }
                     §§push("color");
                  }
                  §§push(§§pop() in _loc4_.h);
                  break;
               }
               if(§§pop())
               {
                  if(!_loc31_)
                  {
                     break;
                  }
                  _loc6_ = §43§;
                  if(!_loc32_)
                  {
                     while(true)
                     {
                        §§push(§,!_§);
                        §§push(0);
                        §§push(Std);
                        if(_loc31_)
                        {
                           §§push("color");
                           if(_loc32_)
                           {
                              break;
                           }
                           if(!(§§pop() in StringMap.§+!#§))
                           {
                              §§push(_loc6_.h["color"]);
                              break;
                           }
                        }
                        §§push(_loc6_.getReserved("color"));
                        break;
                     }
                     §§pop().§%^§(§§pop(),§§pop().parseInt(§§pop()));
                  }
               }
               while(true)
               {
                  §§push(0);
                  if(_loc31_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc31_)
                     {
                        break;
                     }
                  }
                  _loc7_ = §§pop();
                  if(_loc32_)
                  {
                     break loop22;
                  }
               }
               loop18:
               while(true)
               {
                  if(§§pop() >= 2)
                  {
                     break loop22;
                  }
                  while(true)
                  {
                     §§push(_loc7_);
                     if(_loc31_)
                     {
                        _loc7_++;
                        if(!_loc31_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc8_ = §§pop();
                  _loc6_ = §43§;
                  if(_loc31_)
                  {
                     while(true)
                     {
                        §§push("color");
                        if(_loc31_)
                        {
                           §§push(§§pop() + _loc8_);
                           if(_loc31_)
                           {
                              §§push(§§pop());
                              if(_loc32_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     _loc9_ = §§pop();
                     if(!_loc32_)
                     {
                        while(true)
                        {
                           §§push(_loc9_);
                           if(!_loc32_)
                           {
                              §§push(§§pop() in StringMap.§+!#§);
                              if(_loc32_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 if(!_loc32_)
                                 {
                                    §§push(_loc6_.existsReserved(_loc9_));
                                    if(!_loc32_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc32_)
                                       {
                                       }
                                    }
                                    break;
                                 }
                                 addr0373:
                                 _loc10_ = §43§;
                                 if(_loc31_)
                                 {
                                    while(true)
                                    {
                                       §§push("color");
                                       if(!_loc32_)
                                       {
                                          §§push(§§pop() + _loc8_);
                                          if(_loc32_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop());
                                          if(!_loc31_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(§§pop());
                                       break;
                                    }
                                    _loc11_ = §§pop();
                                    if(!_loc31_)
                                    {
                                       continue loop18;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§,!_§);
                                    §§push(_loc8_);
                                    §§push(Std);
                                    if(_loc31_)
                                    {
                                       §§push(_loc11_);
                                       if(!_loc31_)
                                       {
                                          break;
                                       }
                                       if(!(§§pop() in StringMap.§+!#§))
                                       {
                                          §§push(_loc10_.h[_loc11_]);
                                          break;
                                       }
                                    }
                                    §§push(_loc10_.getReserved(_loc11_));
                                    break;
                                 }
                                 §§pop().§%^§(§§pop(),§§pop().parseInt(§§pop()));
                                 continue loop18;
                              }
                              §§push(_loc9_);
                           }
                           §§push(§§pop() in _loc6_.h);
                           break;
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                     }
                  }
                  §§goto(addr0373);
               }
               break;
               addr03f0:
            }
            while(true)
            {
               §§goto(addr03f0);
            }
         }
         _loc6_ = §43§;
         loop31:
         while(true)
         {
            if(_loc31_)
            {
               loop32:
               while(true)
               {
                  §§push("power");
                  if(!_loc32_)
                  {
                     while(true)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(_loc31_)
                        {
                           if(!§§pop())
                           {
                              addr0445:
                              §§push("power" in _loc6_.h);
                              break loop32;
                           }
                           if(_loc32_)
                           {
                              break;
                           }
                           §§push(_loc6_.existsReserved("power"));
                           if(!_loc31_)
                           {
                              break loop32;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc32_)
                        {
                        }
                        break loop32;
                     }
                     addr044e:
                     _loc10_ = §43§;
                     if(_loc31_)
                     {
                        while(true)
                        {
                           §§push(param1);
                           §§push(Std);
                           if(_loc31_)
                           {
                              §§push("power");
                              if(!_loc31_)
                              {
                                 break;
                              }
                              if(!(§§pop() in StringMap.§+!#§))
                              {
                                 §§push(_loc10_.h["power"]);
                                 break;
                              }
                           }
                           §§push(_loc10_.getReserved("power"));
                           break;
                        }
                        §§push(§§pop().parseFloat(§§pop()));
                        if(!_loc32_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§pop().§<M§(§§pop());
                     }
                     break loop31;
                  }
                  §§goto(addr0445);
               }
               if(!§§pop())
               {
                  break;
               }
            }
            §§goto(addr044e);
         }
         var _loc12_:§=!U§ = §43§;
         if(_loc31_)
         {
            loop35:
            while(true)
            {
               §§push(§§findproperty(§;!P§));
               if(_loc31_)
               {
                  while(true)
                  {
                     §§push("tileWidth");
                     if(_loc31_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(_loc32_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc32_)
                           {
                              §§push(Boolean(_loc12_.existsReserved("tileWidth")));
                              if(_loc32_)
                              {
                              }
                              break;
                           }
                           addr0503:
                           while(true)
                           {
                              §§push(§`!3§);
                              if(!_loc32_)
                              {
                                 §§push("tileWidth");
                                 if(_loc32_)
                                 {
                                    break;
                                 }
                                 if(!(§§pop() in StringMap.§+!#§))
                                 {
                                    §§push(_loc12_.h["tileWidth"]);
                                    break;
                                 }
                              }
                              §§push(_loc12_.getReserved("tileWidth"));
                              break;
                           }
                           §§push(§§pop().§ !`§(§§pop(),75));
                           if(!_loc32_)
                           {
                              §§push(int(§§pop()));
                              if(_loc32_)
                              {
                              }
                           }
                           break loop35;
                        }
                        §§push("tileWidth");
                     }
                     §§push(§§pop() in _loc12_.h);
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(75);
                     break;
                  }
               }
               §§goto(addr0503);
            }
            §§pop().§;!P§ = §§pop();
         }
         var _loc13_:§&!M§ = new §&!M§();
         _loc10_ = §43§;
         loop38:
         while(true)
         {
            loop39:
            while(true)
            {
               while(true)
               {
                  if(!_loc32_)
                  {
                     §§push("spawn");
                     if(!_loc32_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(!_loc31_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc32_)
                           {
                              addr0594:
                              §§push(_loc10_.existsReserved("spawn"));
                              if(!_loc32_)
                              {
                                 break;
                              }
                              break loop39;
                           }
                           break loop38;
                        }
                        §§push("spawn");
                     }
                     §§push(§§pop() in _loc10_.h);
                     break loop39;
                  }
                  §§goto(addr0594);
               }
               §§push(Boolean(§§pop()));
               if(_loc31_)
               {
               }
               break;
            }
            if(!§§pop())
            {
               break loop40;
            }
            if(_loc31_)
            {
               break;
            }
            continue loop40;
         }
         §§push(0);
         if(!_loc32_)
         {
            §§push(int(§§pop()));
         }
         _loc7_ = §§pop();
         _loc14_ = §43§;
         loop40:
         while(true)
         {
            while(true)
            {
               if(!_loc32_)
               {
                  §§push("spawn");
                  if(!_loc31_)
                  {
                     break;
                  }
                  if(!(§§pop() in StringMap.§+!#§))
                  {
                     §§push(_loc14_.h["spawn"]);
                     break;
                  }
                  if(_loc32_)
                  {
                     break loop40;
                  }
               }
               §§push(_loc14_.getReserved("spawn"));
               break;
            }
            §§push(§§pop().split("|"));
            if(_loc31_)
            {
               §§push(§§pop());
            }
            _loc15_ = §§pop();
            if(!_loc32_)
            {
               while(true)
               {
                  if(_loc7_ >= int(_loc15_.length))
                  {
                     break loop40;
                  }
                  §§push(_loc15_[_loc7_]);
                  if(!_loc32_)
                  {
                     §§push(§§pop());
                  }
                  _loc9_ = §§pop();
                  if(!_loc32_)
                  {
                     _loc7_++;
                  }
                  _loc16_ = Std.parseInt(_loc9_);
                  if(!_loc32_)
                  {
                     if(_loc16_ == null)
                     {
                        continue;
                     }
                     if(_loc32_)
                     {
                        continue;
                     }
                  }
                  §`!>§(_loc16_,_loc13_);
               }
            }
            break;
         }
         _loc14_ = §43§;
         if(!_loc32_)
         {
            loop42:
            while(true)
            {
               §§push("terrain");
               if(!_loc32_)
               {
                  §§push(§§pop() in StringMap.§+!#§);
                  if(!_loc31_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(_loc31_)
                        {
                           §§push(_loc14_.existsReserved("terrain"));
                           if(_loc31_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc31_)
                              {
                              }
                           }
                           break loop42;
                        }
                        addr06e5:
                        §§push(0);
                        if(_loc31_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc7_ = §§pop();
                        if(!_loc32_)
                        {
                           _loc17_ = §43§;
                           if(_loc31_)
                           {
                              while(true)
                              {
                                 §§push("terrain");
                                 if(_loc31_)
                                 {
                                    if(§§pop() in StringMap.§+!#§)
                                    {
                                       if(_loc32_)
                                       {
                                          break;
                                       }
                                       §§push(_loc17_.getReserved("terrain"));
                                    }
                                    else
                                    {
                                       §§push(_loc17_.h["terrain"]);
                                    }
                                 }
                                 §§push(§§pop().split("|"));
                                 if(!_loc32_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc15_ = §§pop();
                                 if(!_loc32_)
                                 {
                                    break;
                                 }
                              }
                              loop0:
                              while(_loc7_ < int(_loc15_.length))
                              {
                                 §§push(_loc15_[_loc7_]);
                                 if(!_loc32_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc9_ = §§pop();
                                 if(_loc31_)
                                 {
                                    _loc7_++;
                                 }
                                 _loc18_ = §`!3§.§]!+§(_loc9_,"~","-");
                                 loop45:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc32_)
                                       {
                                          §§push(§"=§.§,n§);
                                          §§push(§"=§.§%-§(_loc18_));
                                          if(!_loc32_)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§push(int(§§pop().indexOf(§§pop())));
                                          if(_loc32_)
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop()));
                                          if(!_loc31_)
                                          {
                                             break;
                                          }
                                          _loc8_ = §§pop();
                                          if(_loc32_)
                                          {
                                             break loop45;
                                          }
                                       }
                                       §§push(_loc8_);
                                       break;
                                    }
                                    if(§§pop() >= 0)
                                    {
                                       §§push([]);
                                       if(!_loc32_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc19_ = §§pop();
                                       break;
                                    }
                                    if(_loc32_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 _loc16_ = new §,X§(_loc18_.h,_loc18_.rh);
                                 if(_loc31_)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(_loc16_.hasNext()));
                                       loop2:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(_loc19_);
                                                if(_loc31_)
                                                {
                                                   break loop2;
                                                }
                                                if(int(§§pop().length) <= 0)
                                                {
                                                   §§push("");
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                _loc11_ = _loc16_.next();
                                                §§push(_loc11_);
                                                if(_loc31_)
                                                {
                                                   if(§§pop() == "pos")
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(_loc11_);
                                                   if(_loc31_)
                                                   {
                                                      §§push(§§pop() in StringMap.§+!#§);
                                                      if(!_loc31_)
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§push(_loc18_.getReserved(_loc11_));
                                                            if(_loc32_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc18_.h[_loc11_]);
                                                         }
                                                         _loc20_ = §§pop();
                                                         §§push(_loc20_);
                                                         break;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      §§push(_loc19_);
                                                      if(!_loc32_)
                                                      {
                                                         §§push("");
                                                         if(!_loc32_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc11_);
                                                               if(!_loc32_)
                                                               {
                                                                  §§push(§§pop() + §§pop() + "-");
                                                                  if(!_loc31_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc20_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               break;
                                                            }
                                                         }
                                                         §§pop().push(§§pop());
                                                         if(!_loc31_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc19_);
                                                      if(!_loc31_)
                                                      {
                                                         break loop2;
                                                      }
                                                   }
                                                   §§pop().push(_loc11_);
                                                   if(!_loc31_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§push("~");
                                             if(!_loc32_)
                                             {
                                                §§push(§§pop() + _loc19_.join("~"));
                                                if(!_loc31_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop());
                                                if(_loc32_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(§§pop());
                                             if(!_loc31_)
                                             {
                                                break;
                                             }
                                             _loc11_ = §§pop();
                                             if(_loc31_)
                                             {
                                             }
                                          }
                                          _loc11_ = §§pop();
                                       }
                                       break;
                                    }
                                    break loop2;
                                 }
                                 _loc21_ = null;
                                 while(true)
                                 {
                                    loop52:
                                    while(true)
                                    {
                                       loop58:
                                       while(true)
                                       {
                                          loop59:
                                          while(true)
                                          {
                                             if(_loc31_)
                                             {
                                                §§push(0);
                                                if(_loc31_)
                                                {
                                                   _loc22_ = int(§§pop());
                                                   if(!_loc31_)
                                                   {
                                                      continue loop53;
                                                   }
                                                   §§push(int(§,!_§.§"2§.length));
                                                   if(!_loc32_)
                                                   {
                                                      _loc23_ = int(§§pop());
                                                      if(!_loc32_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc22_);
                                                            addr09da:
                                                            while(true)
                                                            {
                                                               if(§§pop() < _loc23_)
                                                               {
                                                                  §§push(_loc22_);
                                                                  if(_loc31_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc22_++;
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     continue loop53;
                                                                     addr0978:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc24_ = §§pop();
                                                                     if(_loc32_)
                                                                     {
                                                                        continue loop53;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop53;
                                                            }
                                                            continue loop53;
                                                         }
                                                         addr09d8:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc21_ = §,!_§.§"2§[_loc24_];
                                                         §§push(false);
                                                         if(_loc32_)
                                                         {
                                                            break loop59;
                                                         }
                                                         if(_loc21_.§3!6§ == "terrain-pos-")
                                                         {
                                                            §§pop();
                                                            if(_loc32_)
                                                            {
                                                               break loop58;
                                                            }
                                                            §§push(_loc21_.§>O§ == _loc11_);
                                                            if(_loc32_)
                                                            {
                                                               break loop52;
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue loop53;
                                                         }
                                                         _loc21_ = null;
                                                         §§goto(addr09d8);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr09da);
                                                }
                                                §§goto(addr0978);
                                             }
                                             §§goto(addr09d8);
                                          }
                                          §§goto(addr0b24);
                                       }
                                       §§goto(addr0af1);
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr0b49);
                                 }
                                 loop53:
                                 while(true)
                                 {
                                    loop54:
                                    while(true)
                                    {
                                       if(_loc21_ == null)
                                       {
                                          if(_loc31_)
                                          {
                                             while(true)
                                             {
                                                §§push("tileWidth" in StringMap.§+!#§);
                                                if(!_loc32_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc31_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(_loc18_.existsReserved("tileWidth")));
                                                      if(!_loc31_)
                                                      {
                                                         break loop52;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("tileWidth" in _loc18_.h);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc32_)
                                                   {
                                                      break loop53;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§`!3§);
                                                      if(!_loc32_)
                                                      {
                                                         §§push("tileWidth");
                                                         if(!_loc31_)
                                                         {
                                                            break;
                                                         }
                                                         if(!(§§pop() in StringMap.§+!#§))
                                                         {
                                                            §§push(_loc18_.h["tileWidth"]);
                                                            break;
                                                         }
                                                      }
                                                      §§push(_loc18_.getReserved("tileWidth"));
                                                      break;
                                                   }
                                                   §§push(§§pop().§ !`§(§§pop(),75));
                                                   if(_loc31_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc32_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(75);
                                                }
                                                §§push(Number(§§pop()));
                                                if(_loc31_)
                                                {
                                                   _loc25_ = §§pop();
                                                   if(!_loc32_)
                                                   {
                                                      break;
                                                   }
                                                   break loop53;
                                                }
                                                addr0a9a:
                                                addr0aa5:
                                                §§push(§§pop() * 0.13333333333333333);
                                                if(_loc31_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc25_ = §§pop();
                                                §§push("" + _loc25_);
                                                if(!_loc32_)
                                                {
                                                   _loc20_ = §§pop();
                                                   if(!_loc31_)
                                                   {
                                                      break loop53;
                                                   }
                                                   §§push("tileWidth");
                                                }
                                                §§push(§§pop() in StringMap.§+!#§);
                                                if(!_loc31_)
                                                {
                                                   break loop54;
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc31_)
                                                   {
                                                      break loop53;
                                                   }
                                                   _loc18_.setReserved("tileWidth",_loc20_);
                                                }
                                                else
                                                {
                                                   _loc18_.h["tileWidth"] = _loc20_;
                                                }
                                             }
                                             §§push(_loc25_);
                                             if(!_loc32_)
                                             {
                                                §§goto(addr0a9a);
                                             }
                                             §§goto(addr0aa5);
                                          }
                                          addr0af1:
                                          _loc21_ = new §>f§(§,!_§,"terrain-pos-",§"=§.§9!&§(param1,_loc18_,true),_loc11_);
                                       }
                                       §§push("pos" in StringMap.§+!#§);
                                       if(_loc31_)
                                       {
                                          break;
                                       }
                                       break loop52;
                                    }
                                    addr0b24:
                                    if(!§§pop())
                                    {
                                       §§push("pos" in _loc18_.h);
                                       break loop52;
                                    }
                                    if(_loc31_)
                                    {
                                       break;
                                    }
                                    addr0b49:
                                    while(true)
                                    {
                                       §§push(§§findproperty(§!7§));
                                       if(_loc31_)
                                       {
                                          §§push("pos");
                                          if(!_loc31_)
                                          {
                                             break;
                                          }
                                          if(!(§§pop() in StringMap.§+!#§))
                                          {
                                             §§push(_loc18_.h["pos"]);
                                             break;
                                          }
                                       }
                                       §§push(_loc18_.getReserved("pos"));
                                       break;
                                    }
                                    _loc16_ = new §§pop().§!7§(§§pop()).iterator();
                                    if(_loc31_)
                                    {
                                    }
                                    while(Boolean(_loc16_.hasNext()))
                                    {
                                       §§push(int(_loc16_.next()));
                                       if(_loc31_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc22_ = §§pop();
                                       if(!_loc31_)
                                       {
                                          break;
                                       }
                                       §`!>§(_loc22_,_loc21_);
                                       if(_loc32_)
                                       {
                                          break;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§push(Boolean(_loc18_.existsReserved("pos")));
                                 break loop52;
                              }
                           }
                           addr0bd3:
                           §[!N§();
                        }
                        break;
                     }
                     §§goto(addr0bda);
                  }
                  §§push("terrain");
               }
               §§push(§§pop() in _loc14_.h);
               break;
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc32_)
                  {
                     break;
                  }
                  §§goto(addr06e5);
               }
               §§goto(addr0bd3);
            }
         }
         addr0bda:
         _loc17_ = §43§;
         while(true)
         {
            §§push("spawn");
            if(_loc31_)
            {
               if(§§pop() in StringMap.§+!#§)
               {
                  §§push(_loc17_.existsReserved("spawn"));
                  if(_loc31_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break;
               }
               §§push("spawn");
            }
            §§push(§§pop() in _loc17_.h);
            break;
         }
         if(!§§pop())
         {
            _loc26_ = false;
            loop61:
            while(true)
            {
               loop62:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc32_)
                     {
                        §§push(0);
                        if(_loc32_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(!_loc31_)
                        {
                           break loop62;
                        }
                        _loc7_ = §§pop();
                        if(_loc32_)
                        {
                           break loop61;
                        }
                     }
                     §§push(§5k§);
                     if(_loc31_)
                     {
                        §§push(int(§§pop()));
                        if(_loc31_)
                        {
                           break;
                        }
                     }
                     break loop62;
                  }
                  _loc8_ = §§pop();
                  if(!_loc31_)
                  {
                     break loop61;
                  }
                  §§goto(addr0ca7);
               }
               while(true)
               {
                  if(§§pop() >= _loc8_)
                  {
                     break loop61;
                  }
                  §§push(_loc7_);
                  if(!_loc32_)
                  {
                     _loc7_++;
                     if(!_loc32_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc22_ = §§pop();
                  loop66:
                  while(true)
                  {
                     if(_loc31_)
                     {
                        if(§ Z§(_loc22_) != null)
                        {
                           if(_loc32_)
                           {
                              break loop61;
                           }
                           §`!>§(_loc22_,_loc13_);
                           if(_loc31_)
                           {
                              break loop61;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(_loc7_);
                              break loop66;
                           }
                           addr0ca7:
                        }
                     }
                     §§goto(addr0cbc);
                  }
               }
               break;
            }
            §§push(_loc26_);
            if(_loc31_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr0cbc:
               _loc21_ = new §>f§(§,!_§,"terrain-pos-",§"=§.§]R§(param1,null,0,null,10,null,true));
               loop63:
               while(true)
               {
                  §§push(0);
                  if(!_loc32_)
                  {
                     _loc7_ = §§pop();
                     if(_loc31_)
                     {
                        _loc8_ = int(Math.ceil(§5k§ / 7));
                        loop9:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(_loc8_);
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop63;
                              }
                              _loc22_ = _loc7_++;
                              §§push(int(Math.floor(Number(Math.random()) * (§5k§ - 1 + 1))));
                              loop13:
                              while(true)
                              {
                                 _loc23_ = §§pop();
                                 §`!>§(_loc23_,_loc13_);
                                 _loc24_ = 0;
                                 loop64:
                                 while(true)
                                 {
                                    if(!_loc32_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc24_);
                                          §§push(2);
                                          if(!_loc32_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                break loop64;
                                             }
                                             §§push(_loc24_++);
                                             if(_loc31_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc27_ = §§pop();
                                             continue;
                                          }
                                          break loop13;
                                       }
                                       break loop63;
                                       addr0d8a:
                                    }
                                    while(true)
                                    {
                                       §§push(§§findproperty(§`!>§));
                                       §§push(_loc23_);
                                       if(_loc31_)
                                       {
                                          §§push(_loc27_);
                                          if(_loc31_)
                                          {
                                             §§push(§§pop() * §5k§);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§`!>§(§§pop(),_loc21_);
                                       if(_loc31_)
                                       {
                                          break;
                                       }
                                       continue loop9;
                                    }
                                 }
                                 if(_loc32_)
                                 {
                                    break loop63;
                                 }
                                 continue loop9;
                              }
                           }
                           break loop63;
                        }
                        break;
                     }
                     §§goto(addr0d8a);
                  }
                  continue loop13;
               }
            }
         }
         var _loc28_:StringMap = §43§;
         loop67:
         while(true)
         {
            if(_loc31_)
            {
               while(true)
               {
                  §§push("endSpawn");
                  if(!_loc32_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(_loc32_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc31_)
                        {
                           §§push(_loc28_.existsReserved("endSpawn"));
                           if(_loc31_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc31_)
                              {
                              }
                           }
                           break;
                        }
                        addr0e00:
                        _loc29_ = new §&!M§(true);
                        if(!_loc32_)
                        {
                           §§push(0);
                           if(!_loc32_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc7_ = §§pop();
                        }
                        _loc30_ = §43§;
                        loop69:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc31_)
                              {
                                 §§push("endSpawn");
                                 if(_loc32_)
                                 {
                                    break;
                                 }
                                 if(!(§§pop() in StringMap.§+!#§))
                                 {
                                    §§push(_loc30_.h["endSpawn"]);
                                    break;
                                 }
                                 if(_loc32_)
                                 {
                                    break loop69;
                                 }
                              }
                              §§push(_loc30_.getReserved("endSpawn"));
                              break;
                           }
                           §§push(§§pop().split("|"));
                           if(_loc31_)
                           {
                              §§push(§§pop());
                           }
                           _loc15_ = §§pop();
                           if(!_loc32_)
                           {
                              break;
                           }
                           break loop67;
                        }
                        while(true)
                        {
                           if(_loc7_ >= int(_loc15_.length))
                           {
                              break loop67;
                           }
                           §§push(_loc15_[_loc7_]);
                           if(_loc31_)
                           {
                              §§push(§§pop());
                           }
                           _loc9_ = §§pop();
                           if(_loc31_)
                           {
                              _loc7_++;
                           }
                           _loc16_ = Std.parseInt(_loc9_);
                           if(_loc31_)
                           {
                              if(_loc16_ != null)
                              {
                                 if(!_loc32_)
                                 {
                                    §`!>§(_loc16_,_loc29_);
                                 }
                              }
                           }
                        }
                        break loop67;
                     }
                     §§push("endSpawn");
                  }
                  §§push(§§pop() in _loc28_.h);
                  break;
               }
               if(!§§pop())
               {
                  break;
               }
            }
            §§goto(addr0e00);
         }
      }
      
      public function §-E§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§'b§());
         if(!_loc3_)
         {
            §§push(int(§§pop()));
            if(_loc2_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc1_ >= §5k§)
            {
               if(_loc2_)
               {
                  §§push(§§findproperty(§2I§));
                  §§push(int(Math.floor(_loc1_ / §5k§)));
                  if(!_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§2I§(§§pop());
               }
            }
         }
      }
      
      public function §>b§(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc7_:* = null as §[C§;
         var _loc3_:§>f§ = §,!_§.§"2§[param1];
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  if(_loc9_)
                  {
                     §§push(true);
                     if(_loc8_)
                     {
                        break loop2;
                     }
                     if(_loc3_ == null)
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break loop2;
                     }
                     §§pop();
                     if(!_loc9_)
                     {
                        break loop1;
                     }
                  }
                  §§push(§5!W§[_loc3_] == null);
                  if(!_loc8_)
                  {
                     break loop2;
                  }
                  break;
               }
               if(§§pop())
               {
                  break loop1;
               }
               var _loc4_:§,!C§ = §5!W§[_loc3_];
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(_loc4_.§2?§ == null)
                     {
                        break;
                     }
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(§5m§);
                  §§push(_loc4_.§2?§);
                  §§push(param2);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * §5k§);
                  }
                  §§pop().§^i§(§§pop(),§§pop());
                  break;
               }
               §§push(param2);
               if(!_loc8_)
               {
                  §§push(§§pop() * 10);
               }
               var _loc5_:Number = §§pop();
               var _loc6_:* = §5!W§[_loc3_].iterator();
               if(_loc9_)
               {
                  while(Boolean(_loc6_.hasNext()))
                  {
                     _loc7_ = _loc6_.next();
                     if(!_loc8_)
                     {
                        _loc7_.transform.translate(0,0,_loc5_);
                     }
                  }
               }
               return;
            }
            §§push(Boolean(§§pop()));
            break loop3;
         }
      }
      
      public function §2I§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc7_:* = null as §%!§;
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(§,!_§.§"2§.length));
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(_loc9_)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        break loop3;
                     }
                     §§push(_loc3_);
                     if(_loc8_)
                     {
                        break loop2;
                     }
                     if(§§pop() < §§pop())
                     {
                        §§push(_loc2_);
                        if(_loc9_)
                        {
                           _loc2_++;
                           if(!_loc8_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc4_ = §§pop();
                        if(_loc9_)
                        {
                           §§push(§,!_§.§"2§[_loc4_].§#b§);
                           if(!_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 §>b§(_loc4_,param1);
                              }
                           }
                        }
                        continue;
                     }
                  }
               }
               §§push(param1);
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr00c3);
            }
            §§push(10);
            break;
         }
         addr00c3:
         var _loc5_:Number = §§pop() * §§pop();
         if(_loc9_)
         {
            §^$§.§<!M§.translate(0,0,_loc5_);
            if(_loc9_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
            }
         }
         var _loc6_:Vector.<§%!§> = §^$§.§!!@§;
         if(!_loc8_)
         {
            while(_loc2_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc2_];
               if(_loc9_)
               {
                  _loc2_++;
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               if(_loc7_.model.visible)
               {
                  if(!_loc8_)
                  {
                     _loc7_.transform.translate(0,0,_loc5_);
                  }
               }
            }
            if(!_loc8_)
            {
               §[!N§();
            }
         }
      }
      
      public function §`!>§(param1:int, param2:§>f§) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null as §>3§;
         var _loc6_:* = null as §=!U§;
         var _loc7_:* = null as §,!C§;
         var _loc8_:* = null as §,!C§;
         var _loc9_:* = null;
         var _loc10_:* = null as §>f§;
         var _loc11_:* = null as §[C§;
         var _loc14_:* = null as §"B§;
         var _loc15_:* = null as §"B§;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               §§push(param2.§#b§);
               if(_loc17_)
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
                           if(§§pop())
                           {
                              if(_loc17_)
                              {
                                 §§push(int(Math.floor(param1 / §5k§)));
                                 if(_loc17_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 if(!_loc17_)
                                 {
                                    break loop17;
                                 }
                                 _loc4_ = param2.§47§(§-!O§);
                              }
                              §§push(param1);
                              if(_loc17_)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc17_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc16_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(_loc16_)
                                          {
                                             break loop20;
                                          }
                                       }
                                       §§push(§5k§);
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                    break loop19;
                                 }
                              }
                              §§push(int(§§pop()));
                              if(!_loc17_)
                              {
                                 break loop18;
                              }
                              param1 = §§pop();
                              if(!_loc17_)
                              {
                                 break loop17;
                              }
                           }
                           §§push(int(§,!_§.§"2§.indexOf(param2,0)));
                           break loop18;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!_loc17_)
                           {
                              break loop3;
                           }
                           _loc5_ = §,!_§;
                           if(!_loc16_)
                           {
                              while(true)
                              {
                                 if(int(_loc5_.§"2§.length) >= §>3§.§<!P§)
                                 {
                                    if(_loc17_)
                                    {
                                       Boot.lastError = new Error();
                                       if(_loc17_)
                                       {
                                          §§goto(addr0129);
                                       }
                                       break;
                                    }
                                 }
                                 _loc5_.§"2§.push(param2);
                                 break;
                              }
                              addr013c:
                              if(§5!W§[param2] == null)
                              {
                                 break loop17;
                              }
                              §§push(§5!W§[param2].exists(param1));
                              if(!_loc16_)
                              {
                                 addr019c:
                                 §§push(Boolean(§§pop()));
                              }
                              break loop2;
                           }
                           addr0129:
                           throw "Too many swatches!";
                        }
                        §§goto(addr013c);
                     }
                     §§push(0);
                     break loop19;
                  }
                  _loc6_ = §5!W§;
                  _loc7_ = new §,!C§();
                  _loc8_ = _loc7_;
                  _loc6_[param2] = _loc8_;
                  if(_loc16_)
                  {
                     break loop9;
                  }
                  §§goto(addr01a2);
               }
               §§goto(addr019c);
            }
            return;
         }
         if(§§pop())
         {
            break loop3;
         }
         addr01a2:
         if(param2.§#b§)
         {
            _loc9_ = new §5O§(§,!_§.§"2§);
            if(_loc17_)
            {
               loop0:
               while(Boolean(_loc9_.hasNext()))
               {
                  _loc10_ = _loc9_.next();
                  _loc7_ = §5!W§.get(_loc10_);
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 §§push(false);
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                                 if(_loc7_ == null)
                                 {
                                    break loop6;
                                 }
                                 if(!_loc17_)
                                 {
                                    break loop5;
                                 }
                                 §§pop();
                                 if(_loc16_)
                                 {
                                    break loop4;
                                 }
                              }
                              §§push(_loc7_.exists(param1));
                              if(_loc17_)
                              {
                                 break;
                              }
                              break loop5;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc17_)
                           {
                              break loop5;
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           break loop4;
                        }
                        continue loop0;
                     }
                     §§push(Boolean(§§pop()));
                     break loop6;
                  }
                  _loc11_ = _loc7_.get(param1);
                  if(!_loc16_)
                  {
                     _loc11_.§>§();
                     if(_loc16_)
                     {
                        continue;
                     }
                     §^$§.§0a§(_loc11_);
                     if(_loc16_)
                     {
                        continue;
                     }
                  }
                  _loc7_.remove(param1);
               }
            }
         }
         else
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(param1);
                     §§push(0);
                     if(_loc17_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(param1);
                           break;
                        }
                        _loc3_ = int(Math.floor(param1 / §5k§));
                        §§push(§§findproperty(§2I§));
                        §§push(_loc3_);
                        if(_loc17_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§2I§(§§pop());
                        if(!_loc17_)
                        {
                           break loop9;
                        }
                        §§push(param1);
                        §§push(_loc3_);
                        if(!_loc16_)
                        {
                           §§push(§§pop() * §5k§);
                           if(_loc16_)
                           {
                              break loop8;
                           }
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc17_)
                     {
                        break;
                     }
                     §§push(int(§§pop()));
                     if(_loc16_)
                     {
                        break;
                     }
                     param1 = §§pop();
                  }
                  §§push(§@!3§());
                  if(!_loc16_)
                  {
                     §§push(int(§§pop()));
                  }
                  break loop8;
               }
               _loc9_ = new §5O§(§,!_§.§"2§);
               if(!_loc16_)
               {
                  while(Boolean(_loc9_.hasNext()))
                  {
                     _loc10_ = _loc9_.next();
                     _loc7_ = §5!W§.get(_loc10_);
                     if(_loc17_)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc17_)
                           {
                              if(_loc7_ == null)
                              {
                                 break;
                              }
                              if(_loc16_)
                              {
                                 break;
                              }
                           }
                           §§pop();
                           if(!_loc16_)
                           {
                              §§push(_loc7_.exists(param1));
                              if(_loc17_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc16_)
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
                           continue;
                        }
                     }
                     _loc11_ = _loc7_.get(param1);
                     if(_loc17_)
                     {
                        _loc11_.§>§();
                        if(_loc17_)
                        {
                           §^$§.§0a§(_loc11_);
                           if(!_loc17_)
                           {
                              continue;
                           }
                        }
                     }
                     _loc7_.remove(param1);
                  }
               }
            }
            if(§§pop() <= §§pop())
            {
               break loop9;
            }
         }
         _loc11_ = §[C§.§4r§(§^$§,param2.§@p§);
         if(_loc17_)
         {
            §=F§.§<!C§(param1,§&!K§.§#-§);
         }
         var _loc12_:Point3D = §&!K§.§#-§.position;
         var _loc13_:Point3D = _loc11_.transform.§%!7§;
         while(true)
         {
            while(true)
            {
               if(_loc17_)
               {
                  if(_loc13_ != null)
                  {
                     break;
                  }
                  if(!_loc17_)
                  {
                     continue loop14;
                  }
               }
               _loc13_ = new Point3D(0,0,0);
               break;
            }
            _loc13_.x = _loc12_.x * 10;
            if(_loc17_)
            {
               _loc13_.y = _loc12_.y * 10;
               if(_loc16_)
               {
                  continue loop14;
               }
               §§push(_loc13_);
               §§push(_loc12_.z);
               if(_loc17_)
               {
                  §§push(§§pop() * 10);
               }
               §§pop().z = §§pop();
               if(_loc17_)
               {
                  continue loop14;
               }
            }
            §§goto(addr0465);
         }
         loop14:
         while(true)
         {
            while(true)
            {
               if(_loc11_.§@p§.rotation != null)
               {
                  addr0465:
                  _loc14_ = _loc11_.transform.§,t§;
                  _loc15_ = _loc11_.§@p§.rotation;
                  if(_loc16_)
                  {
                     break;
                  }
                  _loc14_.x = _loc15_.x;
                  _loc14_.y = _loc15_.y;
                  _loc14_.z = _loc15_.z;
                  if(!_loc17_)
                  {
                     break loop14;
                  }
                  _loc14_.w = _loc15_.w;
               }
               else
               {
                  _loc14_ = _loc11_.transform.§,t§;
                  if(_loc17_)
                  {
                     _loc14_.x = 0;
                     while(true)
                     {
                        if(!_loc16_)
                        {
                           _loc14_.y = 0;
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        _loc14_.z = 0;
                        if(_loc17_)
                        {
                           _loc14_.w = 1;
                        }
                        break;
                     }
                  }
               }
               if(§&!K§.§#-§.rotation != null)
               {
                  if(_loc16_)
                  {
                     break;
                  }
                  §4!R§.§9!L§(§&!K§.§#-§.rotation,_loc11_.transform.§,t§,_loc11_.transform.§,t§);
               }
               _loc11_.reset();
               break;
            }
            §5!W§[param2].§1!R§(param1,_loc11_);
            if(_loc17_)
            {
               §^$§.§`=§(_loc11_);
            }
            break;
         }
         §§push(param2.§#b§);
         if(!_loc16_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(_loc17_)
            {
               §[!N§();
            }
         }
      }
      
      public function §>S§(param1:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as §>f§;
         var _loc4_:* = null as §,!C§;
         var _loc5_:* = null as §[C§;
         var _loc2_:* = new §5O§(§,!_§.§"2§);
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_.hasNext()));
            if(!_loc6_)
            {
               break;
            }
            if(!§§pop())
            {
               §^$§.§6t§ = 0;
               if(!_loc7_)
               {
                  §§push(false);
                  if(_loc7_)
                  {
                     break;
                  }
                  while(true)
                  {
                     while(true)
                     {
                        if(param1 >= 0)
                        {
                           if(_loc6_)
                           {
                              break loop0;
                           }
                        }
                        addr0148:
                        if(!§§pop())
                        {
                           §§push(param1);
                           break;
                        }
                        if(!_loc7_)
                        {
                           addr0153:
                           §-E§();
                        }
                        else
                        {
                           §§goto(addr0171);
                        }
                     }
                     addr015f:
                     §§push(§@!3§());
                     if(_loc6_)
                     {
                        break;
                     }
                     §§goto(addr016d);
                  }
                  addr016d:
                  if(§§pop() >= int(§§pop()))
                  {
                     addr0171:
                     §[!N§();
                  }
               }
               §§goto(addr0178);
            }
            _loc3_ = _loc2_.next();
            _loc4_ = §5!W§.get(_loc3_);
            if(!_loc7_)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc6_)
                     {
                        if(_loc4_ == null)
                        {
                           break loop3;
                        }
                        if(_loc7_)
                        {
                           break loop3;
                        }
                        §§pop();
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(_loc4_.exists(param1));
                        if(_loc7_)
                        {
                           break loop3;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc7_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break loop3;
                  }
               }
               if(§§pop())
               {
                  break loop4;
               }
               continue;
            }
            _loc5_ = _loc4_.get(param1);
            while(true)
            {
               if(_loc6_)
               {
                  _loc5_.§>§();
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §^$§.§0a§(_loc5_);
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
            _loc4_.remove(param1);
         }
         §§pop();
         while(true)
         {
            if(_loc6_)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§push(§5k§);
                     if(_loc7_)
                     {
                        break loop1;
                     }
                     §§push(§§pop() < §§pop());
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr0148);
                  }
                  §§goto(addr015f);
               }
               §§goto(addr0171);
            }
            §§goto(addr0153);
         }
         addr0178:
      }
      
      public function §[!N§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null as §>f§;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null as §`!O§;
         if(!_loc10_)
         {
            if(§^$§.§?!_§ != null)
            {
               §§push(int(Math.floor(§@!3§() / §5k§)));
               if(_loc9_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               loop3:
               while(true)
               {
                  if(_loc9_)
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
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc10_)
                                 {
                                    §§push(§-!O§);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       break loop3;
                                    }
                                    if(_loc10_)
                                    {
                                       break loop6;
                                    }
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       break loop5;
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc9_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push(int(§,!_§.§"2§.length));
                                    if(!_loc10_)
                                    {
                                       break loop4;
                                    }
                                    break loop5;
                                 }
                                 break loop6;
                              }
                              §§goto(addr0170);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           addr0170:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop6;
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc9_)
                                 {
                                    _loc2_++;
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break;
                              }
                              _loc4_ = §§pop();
                              _loc5_ = §,!_§.§"2§[_loc4_];
                              while(true)
                              {
                                 if(!_loc10_)
                                 {
                                    if(!_loc5_.§#b§)
                                    {
                                       break;
                                    }
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(_loc5_.§47§(§-!O§));
                                 if(!_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc9_)
                                 {
                                    _loc7_ = _loc5_.§47§(_loc1_);
                                    if(_loc9_)
                                    {
                                       if(_loc7_ == _loc6_)
                                       {
                                          break;
                                       }
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§push(§§findproperty(§>b§));
                                 §§push(_loc4_);
                                 §§push(_loc7_);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() - _loc6_);
                                 }
                                 §§pop().§>b§(§§pop(),§§pop());
                                 break;
                              }
                              §§goto(addr016e);
                           }
                           break loop6;
                        }
                     }
                     §§push(int(§§pop()));
                     if(!_loc9_)
                     {
                        break loop5;
                     }
                     _loc3_ = §§pop();
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           break loop5;
                        }
                        addr016e:
                     }
                  }
                  break loop6;
               }
               return;
            }
         }
      }
      
      public function §@!3§() : int
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as §>f§;
         var _loc4_:* = null as §'!G§;
         var _loc5_:int = 0;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = new §5O§(§,!_§.§"2§);
         if(_loc6_)
         {
            loop0:
            while(Boolean(_loc2_.hasNext()))
            {
               _loc3_ = _loc2_.next();
               if(!_loc7_)
               {
                  loop2:
                  while(true)
                  {
                     §§push(false);
                     if(_loc6_)
                     {
                        if(§5!W§[_loc3_] != null)
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    break loop2;
                                 }
                                 §§push(_loc3_.§#b§);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               _loc4_ = §5!W§[_loc3_].§2?§;
               while(true)
               {
                  if(_loc4_ == null)
                  {
                     §§push(0);
                     if(!_loc7_)
                     {
                        _loc5_ = §§pop();
                        break;
                     }
                  }
                  else
                  {
                     while(_loc4_.right != null)
                     {
                        _loc4_ = _loc4_.right;
                     }
                     §§push(int(_loc4_.key));
                  }
                  _loc5_ = §§pop();
                  break;
               }
               if(_loc5_ > _loc1_)
               {
                  _loc1_ = _loc5_;
               }
            }
         }
         return _loc1_;
      }
      
      public function §"!=§(param1:int) : §>f§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §>f§;
         var _loc2_:* = new §5O§(§,!_§.§"2§);
         if(!_loc5_)
         {
            loop0:
            while(Boolean(_loc2_.hasNext()))
            {
               _loc3_ = _loc2_.next();
               if(!_loc5_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc5_)
                     {
                        if(§5!W§[_loc3_] != null)
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(§5!W§[_loc3_].get(param1) == null);
                              if(_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               return _loc3_;
            }
         }
         return null;
      }
      
      public function § Z§(param1:int) : §[C§
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = null as §>f§;
         var _loc4_:* = null as §[C§;
         var _loc2_:* = new §5O§(§,!_§.§"2§);
         if(_loc6_)
         {
            while(Boolean(_loc2_.hasNext()))
            {
               _loc3_ = _loc2_.next();
               if(_loc6_)
               {
                  if(§5!W§[_loc3_] == null)
                  {
                     continue;
                  }
               }
               _loc4_ = §5!W§[_loc3_].get(param1);
               if(_loc6_)
               {
                  if(_loc4_ == null)
                  {
                     continue;
                  }
               }
               return _loc4_;
            }
         }
         return null;
      }
      
      public function §'b§() : int
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:* = null as §>f§;
         var _loc4_:* = null as §'!G§;
         var _loc5_:* = 0;
         var _loc1_:* = int(16777215);
         var _loc2_:* = new §5O§(§,!_§.§"2§);
         loop2:
         while(true)
         {
            if(!_loc6_)
            {
               loop0:
               while(Boolean(_loc2_.hasNext()))
               {
                  _loc3_ = _loc2_.next();
                  if(_loc7_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(false);
                        if(_loc7_)
                        {
                           if(§5!W§[_loc3_] != null)
                           {
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       break loop3;
                                    }
                                    §§push(_loc3_.§#b§);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(!§§pop());
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  _loc4_ = §5!W§[_loc3_].§2?§;
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(_loc4_ == null)
                           {
                              if(_loc7_)
                              {
                                 §§push(int(16777215));
                                 if(_loc6_)
                                 {
                                    break loop5;
                                 }
                                 _loc5_ = §§pop();
                              }
                           }
                           else
                           {
                              while(_loc4_.left != null)
                              {
                                 _loc4_ = _loc4_.left;
                              }
                              §§push(int(_loc4_.key));
                              if(!_loc7_)
                              {
                                 break loop5;
                              }
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 break;
                              }
                              _loc5_ = §§pop();
                           }
                        }
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           break;
                        }
                        if(§§pop() < _loc1_)
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 break loop5;
                              }
                              break;
                           }
                        }
                        continue loop0;
                     }
                     _loc1_ = §§pop();
                     continue loop0;
                  }
                  §§push(int(§§pop()));
                  break loop6;
               }
               loop7:
               while(true)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc1_);
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(§§pop() != 16777215)
                        {
                           break loop7;
                        }
                        if(!_loc7_)
                        {
                           break loop7;
                        }
                     }
                     §§push(0);
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     break loop2;
                  }
                  _loc1_ = §§pop();
                  break;
               }
            }
            break loop7;
         }
         return §§pop();
      }
      
      public function §][§() : String
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc3_:* = null as StringMap;
         var _loc4_:* = null as StringMap;
         var _loc5_:* = null as StringMap;
         var _loc7_:* = 0;
         var _loc9_:* = null as §>f§;
         var _loc10_:* = null as §,!C§;
         var _loc11_:* = null as Array;
         var _loc12_:* = null as String;
         §§push("");
         if(!_loc13_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:StringMap = §43§;
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc13_)
               {
                  §§push("id");
                  if(!_loc13_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(_loc13_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           addr007d:
                           §§push(_loc2_.existsReserved("id"));
                           if(_loc14_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc14_)
                              {
                              }
                           }
                           break;
                        }
                        break loop2;
                     }
                     §§push("id");
                  }
                  §§push(§§pop() in _loc2_.h);
                  break;
               }
               §§goto(addr007d);
            }
            if(§§pop())
            {
               break;
            }
            continue loop8;
         }
         _loc3_ = §43§;
         if(!_loc13_)
         {
            §§push(_loc1_);
            §§push("id-");
            if(!_loc13_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push("id");
                     if(!_loc13_)
                     {
                        if(§§pop() in StringMap.§+!#§)
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(_loc3_.getReserved("id"));
                        }
                        else
                        {
                           §§push(_loc3_.h["id"]);
                           if(!_loc14_)
                           {
                              break loop4;
                           }
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc13_)
                     {
                        break;
                     }
                     §§goto(addr0111);
                  }
                  §§push(§§pop());
                  if(_loc14_)
                  {
                     §§push("|");
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc13_)
               {
                  addr0111:
                  §§push(§§pop());
               }
            }
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(!_loc13_)
               {
                  §§push(§§pop());
                  if(_loc13_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc1_ = §§pop();
         }
         _loc3_ = §43§;
         loop7:
         while(true)
         {
            loop8:
            while(true)
            {
               while(true)
               {
                  if(_loc14_)
                  {
                     §§push("title");
                     if(_loc14_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(_loc13_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc13_)
                           {
                              addr0158:
                              §§push(_loc3_.existsReserved("title"));
                              if(!_loc13_)
                              {
                                 break;
                              }
                              break loop8;
                           }
                           break loop7;
                        }
                        §§push("title");
                     }
                     §§push(§§pop() in _loc3_.h);
                     break loop8;
                  }
                  §§goto(addr0158);
               }
               §§push(Boolean(§§pop()));
               if(_loc14_)
               {
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            continue loop12;
         }
         _loc4_ = §43§;
         if(!_loc13_)
         {
            loop9:
            while(true)
            {
               §§push(_loc1_);
               §§push("title-");
               if(_loc14_)
               {
                  while(true)
                  {
                     §§push("title");
                     if(!_loc13_)
                     {
                        if(§§pop() in StringMap.§+!#§)
                        {
                           if(_loc13_)
                           {
                              break loop9;
                           }
                           §§push(_loc4_.getReserved("title"));
                        }
                        else
                        {
                           §§push(_loc4_.h["title"]);
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc13_)
                     {
                        §§push(§§pop());
                        if(_loc14_)
                        {
                           §§push("|");
                           break;
                        }
                        break loop9;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc14_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc13_)
            {
               §§push(§§pop());
               if(!_loc13_)
               {
                  §§push(§§pop());
               }
            }
            _loc1_ = §§pop();
         }
         _loc4_ = §43§;
         loop11:
         while(true)
         {
            loop12:
            while(true)
            {
               while(true)
               {
                  if(!_loc13_)
                  {
                     §§push("credit");
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push(§§pop() in StringMap.§+!#§);
                     if(_loc13_)
                     {
                        break loop12;
                     }
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           break loop11;
                        }
                     }
                     else
                     {
                        §§push("credit");
                        if(_loc14_)
                        {
                           §§push(§§pop() in _loc4_.h);
                           break loop12;
                        }
                        §§goto(addr0326);
                     }
                  }
                  §§push(_loc4_.existsReserved("credit"));
                  if(!_loc13_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc14_)
                     {
                     }
                  }
                  break loop12;
               }
               §§goto(addr0326);
            }
            if(§§pop())
            {
               if(_loc13_)
               {
                  break;
               }
               _loc5_ = §43§;
               if(!_loc13_)
               {
                  loop30:
                  while(true)
                  {
                     §§push(_loc1_);
                     §§push("credit-");
                     if(_loc14_)
                     {
                        §§push("credit");
                        if(!_loc13_)
                        {
                           if(§§pop() in StringMap.§+!#§)
                           {
                              while(true)
                              {
                                 if(_loc14_)
                                 {
                                    addr02c0:
                                    §§push(§§pop() + _loc5_.getReserved("credit"));
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(§§pop());
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 break loop30;
                              }
                           }
                           else
                           {
                              §§push(_loc5_.h["credit"]);
                              if(_loc14_)
                              {
                                 §§goto(addr02c0);
                              }
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc13_)
                     {
                        §§push(§§pop());
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  _loc1_ = §§pop();
               }
            }
            while(true)
            {
               §§push(_loc1_);
               §§push("layout-");
               if(!_loc13_)
               {
                  §§push(§=F§.toString());
                  if(!_loc13_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc14_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc13_)
            {
               §§push(§§pop());
               if(_loc14_)
               {
                  break loop29;
               }
               addr0326:
               _loc1_ = §§pop();
               break;
            }
            break loop29;
         }
         §§push(0);
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(_loc14_)
            {
               §§push(2);
               if(_loc13_)
               {
                  loop24:
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(_loc1_);
                           if(!_loc14_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push("|tileWidth-");
                              if(!_loc13_)
                              {
                                 §§push(§§pop() + §;!P§);
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc14_)
                              {
                                 §§push(§§pop());
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                           _loc1_ = §§pop();
                           if(_loc13_)
                           {
                              break loop24;
                           }
                        }
                        §§push(§#o§(_loc1_,"music"));
                        if(!_loc14_)
                        {
                           break loop14;
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc14_)
                           {
                              _loc1_ = §§pop();
                              if(!_loc13_)
                              {
                                 break loop24;
                              }
                              break loop20;
                           }
                           §§goto(addr0537);
                        }
                        §§goto(addr054c);
                     }
                     §§goto(addr04ee);
                  }
                  §§push(§#o§(_loc1_,"fallPropagate"));
                  if(_loc14_)
                  {
                     §§push(§§pop());
                     if(!_loc13_)
                     {
                        _loc1_ = §§pop();
                        §§push(§#o§(_loc1_,"noZPropagation"));
                        if(_loc13_)
                        {
                           break loop18;
                        }
                        §§push(§§pop());
                        if(!_loc13_)
                        {
                           _loc1_ = §§pop();
                           §§push(§#o§(_loc1_,"harshOOB"));
                           if(_loc13_)
                           {
                              break loop14;
                           }
                           §§push(§§pop());
                        }
                        _loc1_ = §§pop();
                        §§push(§#o§(_loc1_,"duplicatorBoost"));
                        if(_loc13_)
                        {
                           break loop13;
                        }
                        §§push(§§pop());
                     }
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
               }
               if(§§pop() >= §§pop())
               {
                  loop13:
                  while(true)
                  {
                     while(true)
                     {
                        loop18:
                        while(true)
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 addr04ee:
                                 §§push(§#o§(_loc1_,"fallDelay"));
                                 if(_loc14_)
                                 {
                                    _loc1_ = §§pop();
                                    §§push(§;!P§);
                                    break loop0;
                                 }
                                 §§push(§§pop());
                                 if(!_loc13_)
                                 {
                                    _loc1_ = §§pop();
                                    §§push(§#o§(_loc1_,"trigger"));
                                    break loop18;
                                 }
                                 break;
                              }
                              §§goto(addr0537);
                           }
                           §§goto(addr0541);
                        }
                        §§push(§§pop());
                        if(!_loc13_)
                        {
                           break;
                        }
                        §§goto(addr052e);
                     }
                     _loc1_ = §§pop();
                     §§push(§#o§(_loc1_,"condition"));
                     if(!_loc13_)
                     {
                        _loc1_ = §§pop();
                        addr052e:
                        §§push(§#o§(_loc1_,"charactersAllowed"));
                        if(!_loc13_)
                        {
                           addr0537:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc13_)
                              {
                                 break loop13;
                              }
                              §§goto(addr0555);
                           }
                           §§goto(addr0557);
                        }
                        §§goto(addr054c);
                     }
                     §§goto(addr0557);
                  }
                  _loc1_ = §§pop();
                  addr0557:
                  addr054c:
                  addr0541:
                  §§push(§#o§(_loc1_,"charactersAllowedMessage"));
                  if(_loc14_)
                  {
                     addr0555:
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
                  var _loc8_:* = new §5O§(§,!_§.§"2§);
                  if(!_loc13_)
                  {
                     loop1:
                     while(Boolean(_loc8_.hasNext()))
                     {
                        _loc9_ = _loc8_.next();
                        if(!_loc14_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(true);
                           if(!_loc13_)
                           {
                              if(§5!W§[_loc9_] == null)
                              {
                                 break;
                              }
                              if(!_loc13_)
                              {
                                 §§pop();
                                 if(_loc13_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§5!W§[_loc9_].§2?§ == null);
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           continue;
                        }
                        _loc10_ = §5!W§[_loc9_];
                        if(_loc13_)
                        {
                           continue;
                        }
                        §§push([]);
                        if(!_loc13_)
                        {
                           §§push(§§pop());
                        }
                        _loc11_ = §§pop();
                        if(!_loc14_)
                        {
                           continue;
                        }
                        _loc10_.§?!1§(_loc10_.§2?§,_loc11_);
                        if(_loc13_)
                        {
                           continue;
                        }
                        loop16:
                        while(true)
                        {
                           §§push(_loc9_.§][§(_loc11_,§5k§));
                           if(_loc14_)
                           {
                              §§push(§§pop());
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc14_)
                              {
                                 break loop16;
                              }
                              addr0653:
                              if(§§pop() != null)
                              {
                                 if(_loc14_)
                                 {
                                    §§push(_loc1_);
                                    break;
                                 }
                              }
                              continue loop1;
                           }
                           addr066f:
                           §§push("|");
                           if(_loc14_)
                           {
                              §§push(§§pop() + _loc12_);
                              if(!_loc13_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc14_)
                           {
                              §§push(§§pop());
                              if(!_loc13_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc1_ = §§pop();
                           continue loop1;
                        }
                        _loc12_ = §§pop();
                        if(_loc13_)
                        {
                           continue;
                        }
                        §§push(_loc12_);
                        if(_loc14_)
                        {
                           §§goto(addr0653);
                        }
                        §§goto(addr066f);
                     }
                  }
                  return _loc1_;
               }
               while(true)
               {
                  §§push(_loc6_);
                  if(_loc14_)
                  {
                     _loc6_++;
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc7_ = §§pop();
               if(!_loc13_)
               {
                  §§push(§,!_§.§[m§(_loc7_));
                  if(!_loc13_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc14_)
                     {
                        while(true)
                        {
                           §§push(_loc1_);
                           §§push("|color");
                           if(!_loc13_)
                           {
                              §§push(§§pop() + _loc7_);
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() + "-0x");
                           if(_loc14_)
                           {
                              §§push(§§pop());
                              §§push(StringTools);
                              §§push(§,!_§.§23§[_loc7_]);
                              if(_loc14_)
                              {
                                 §§push(int(§§pop()));
                              }
                              §§push(§§pop().hex(§§pop(),6));
                              if(!_loc13_)
                              {
                                 §§push(§§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc14_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc14_)
                        {
                           §§push(§§pop());
                           if(_loc14_)
                           {
                              §§push(§§pop());
                           }
                        }
                        _loc1_ = §§pop();
                     }
                  }
               }
               continue;
               §§push(§#o§(_loc1_,"power"));
               break loop25;
            }
            break;
         }
         §§push(75);
         continue loop24;
      }
      
      public function §#o§(param1:String, param2:String) : String
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as Array;
         var _loc7_:* = null as String;
         var _loc8_:* = null as StringMap;
         var _loc3_:StringMap = §43§;
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  §§push(param2);
                  if(!_loc9_)
                  {
                     break;
                  }
                  if(!(§§pop() in StringMap.§+!#§))
                  {
                     §§push(_loc3_.h[param2]);
                     break;
                  }
               }
               §§push(_loc3_.getReserved(param2));
               if(_loc9_)
               {
                  break;
               }
               continue loop6;
            }
            §§push(§§pop());
            continue loop6;
         }
         var _loc4_:* = §§pop();
         loop5:
         while(true)
         {
            while(true)
            {
               loop7:
               while(true)
               {
                  if(_loc9_)
                  {
                     loop10:
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc9_)
                              {
                                 if(§§pop() == null)
                                 {
                                    _loc8_ = §43§;
                                    loop13:
                                    while(true)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() in StringMap.§+!#§);
                                                   if(_loc10_)
                                                   {
                                                      break loop14;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         addr01f4:
                                                         §§push(_loc8_.existsReserved(param2));
                                                         if(_loc9_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc9_)
                                                            {
                                                            }
                                                         }
                                                         break loop14;
                                                      }
                                                      break loop13;
                                                   }
                                                   §§push(param2);
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(§§pop() in _loc8_.h);
                                                break loop14;
                                             }
                                             §§goto(addr0231);
                                          }
                                          §§goto(addr01f4);
                                       }
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       §§goto(addr0251);
                                       §§push(param1);
                                    }
                                    §§push(param1);
                                    if(!_loc10_)
                                    {
                                       addr0231:
                                       §§push(§§pop() + "|");
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + param2);
                                             if(!_loc10_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                       }
                                    }
                                    addr0251:
                                    return §§pop();
                                 }
                                 if(_loc9_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc10_)
                                    {
                                       break loop7;
                                    }
                                    §§push("|");
                                    if(!_loc9_)
                                    {
                                       continue loop8;
                                    }
                                    §§push(int(§§pop().indexOf(§§pop())));
                                    if(!_loc9_)
                                    {
                                       break loop11;
                                    }
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(param1);
                                       break loop5;
                                    }
                                    if(!_loc9_)
                                    {
                                       break loop10;
                                    }
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       break loop11;
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc10_)
                                    {
                                       break loop11;
                                    }
                                    _loc5_ = §§pop();
                                    if(_loc10_)
                                    {
                                       break loop10;
                                    }
                                 }
                                 §§push(_loc4_);
                                 if(_loc10_)
                                 {
                                    break loop5;
                                 }
                              }
                              §§push("|");
                              if(!_loc9_)
                              {
                                 continue loop8;
                              }
                              §§push(§§pop().split(§§pop()));
                              if(_loc9_)
                              {
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                              if(_loc10_)
                              {
                                 break loop10;
                              }
                              while(true)
                              {
                                 §§push(_loc5_);
                                 break loop11;
                              }
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop10;
                              }
                              while(true)
                              {
                                 §§push(_loc6_[_loc5_]);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       _loc5_++;
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          §§push("|");
                                          §§push(param2);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + "-");
                                             §§push(_loc7_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop());
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc9_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(§§pop());
                                          break;
                                       }
                                    }
                                 }
                                 param1 = §§pop();
                                 break;
                              }
                              §§goto(addr016c);
                              break loop11;
                           }
                           break loop10;
                        }
                        while(true)
                        {
                           return int(_loc6_.length);
                        }
                     }
                  }
                  break loop10;
               }
               return §§pop();
            }
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(param2);
                     if(_loc10_)
                     {
                        break loop8;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop());
                  if(!_loc10_)
                  {
                     break;
                  }
                  addr01b3:
                  §§push(_loc4_);
                  break loop8;
               }
               §§push(§§pop() + "-");
               if(!_loc10_)
               {
                  §§goto(addr01b3);
               }
               §§goto(addr01bf);
            }
            addr01bf:
            §§push(§§pop() + §§pop());
            if(!_loc10_)
            {
               return §§pop();
            }
         }
         §§push("|");
         break loop6;
      }
   }
}

