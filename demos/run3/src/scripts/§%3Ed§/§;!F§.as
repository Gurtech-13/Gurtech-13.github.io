package §>d§
{
   import § 0§.§-!N§;
   import §+!1§.§[!9§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §>T§.§[C§;
   import §>T§.§[]§;
   import com.player03.run3.level.§59§;
   import flash.display.Sprite;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§,T§;
   import nme3D.model.§7v§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import nme3D.shader.vertex.PositionColorVertex;
   
   public class §;!F§ extends §#l§
   {
      
      public static var §%!"§:Array = [10027008,13369344,14500932,1153297,1162001,3398929];
      
      public function §;!F§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(12,21,12,30);
               if(!_loc2_)
               {
                  break;
               }
            }
            §9!>§ = true;
            break;
         }
      }
      
      public function § !E§(param1:§[C§) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(param1 != null)
         {
            §§push(param1.§@p§.§<T§ == 0);
            if(_loc3_)
            {
               return §§pop();
            }
         }
         else
         {
            return false;
         }
         return §§pop();
      }
      
      override public function §"!Y§(param1:int, param2:String) : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(§;!F§.§%!"§);
         §§push(Number(Math.random()));
         if(_loc5_)
         {
            §§push(§§pop() * int(§;!F§.§%!"§.length));
         }
         §§push(int(§§pop()[int(§§pop())]));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push("color-0x");
            §§push(StringTools.hex(_loc3_,6));
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        §§push(§§pop() + "|");
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                  }
                  §§push(param2);
               }
            }
            §§push(§§pop() + §§pop());
            break;
         }
         return §§pop();
      }
      
      override public function §%!2§(param1:§-!N§) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§findproperty(§[]§));
         §§push(param1);
         §§push(["ice"]);
         §§push(Number(Math.POSITIVE_INFINITY));
         §§push(20);
         §§push(50);
         §§push(90);
         §§push(§ !E§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:§[]§ = new §§pop().§[]§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         while(true)
         {
            if(!_loc4_)
            {
               _loc2_.§#]§ = 2000;
               if(!_loc3_)
               {
                  break;
               }
            }
            param1.registerAnimation(_loc2_);
            break;
         }
      }
      
      override public function §^2§(param1:int) : Sprite
      {
         if(param1 == 2)
         {
            return new §`!Q§("Here for the holidays?");
         }
         return null;
      }
      
      override public function §?c§() : String
      {
         return "menu/holiday/Present.png";
      }
      
      override public function §[n§(param1:Number, param2:Boolean) : Model
      {
         §§push(false);
         var _loc29_:Boolean = true;
         var _loc30_:* = §§pop();
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc16_:* = 0;
         var _loc17_:* = null as §!!V§;
         var _loc18_:* = null as §=s§;
         var _loc19_:* = NaN;
         var _loc22_:* = 0;
         var _loc25_:* = null as §3!I§;
         var _loc26_:* = null as §3!I§;
         var _loc27_:* = 0;
         var _loc28_:* = 0;
         if(!_loc30_)
         {
            §§push(param2);
            if(!_loc30_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               var _loc3_:§!!V§ = Type.createInstance(PositionColorVertex,[24,null]);
               var _loc4_:§!!V§ = _loc3_;
               §§push(§§findproperty(Point3D));
               §§push(param1);
               if(_loc29_)
               {
                  §§push(-§§pop());
                  if(_loc29_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc29_)
                  {
                     §§push(-§§pop());
                     if(_loc30_)
                     {
                        break;
                     }
                  }
                  addr00a7:
                  §§push(2);
                  if(!_loc30_)
                  {
                     §§push(§§pop() / §§pop());
                     break;
                  }
                  var _loc5_:Point3D = new §§pop().Point3D(§§pop(),§§pop(),§§pop());
                  §§push(§§findproperty(Point3D));
                  §§push(param1);
                  if(_loc29_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§push(param1);
                  if(_loc29_)
                  {
                     §§push(§§pop() / 2);
                  }
                  var _loc6_:Point3D = new §§pop().Point3D(§§pop(),§§pop(),param1);
                  if(_loc29_)
                  {
                     §,T§.§[!C§(_loc4_,_loc5_,_loc6_,false);
                  }
                  var _loc7_:Point3D = _loc5_;
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc29_)
                        {
                           if(_loc7_ == null)
                           {
                              if(_loc30_)
                              {
                                 break;
                              }
                              _loc7_ = new Point3D(0,0,0);
                           }
                           _loc7_.x = _loc5_.x * 1.02;
                           if(_loc30_)
                           {
                              break loop10;
                           }
                        }
                        _loc7_.y = _loc5_.y * 1.02;
                        if(_loc29_)
                        {
                           break loop10;
                        }
                        break;
                     }
                     _loc7_ = _loc6_;
                     loop12:
                     while(true)
                     {
                        if(_loc7_ == null)
                        {
                           if(_loc30_)
                           {
                              break;
                           }
                           _loc7_ = new Point3D(0,0,0);
                        }
                        _loc7_.x = _loc6_.x * 1.02;
                        while(true)
                        {
                           if(_loc29_)
                           {
                              break loop12;
                           }
                           addr019e:
                           §§push(_loc5_);
                           §§push(_loc5_.z);
                           if(_loc29_)
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc30_)
                                 {
                                    §§push(§§pop() * 0.01);
                                    if(!_loc29_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + 1);
                                    if(!_loc29_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                           }
                           §§pop().z = §§pop();
                           §§push(_loc6_);
                           §§push(_loc6_.z);
                           if(!_loc30_)
                           {
                              §§push(param1);
                              if(_loc29_)
                              {
                                 §§push(§§pop() * 0.01);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().z = §§pop();
                           break;
                        }
                        §§goto(addr01e4);
                     }
                     _loc7_.y = _loc6_.y * 1.02;
                     §§push(_loc7_);
                     §§push(_loc6_.z);
                     if(!_loc30_)
                     {
                        §§push(§§pop() * 1.02);
                     }
                     §§pop().z = §§pop();
                     if(_loc29_)
                     {
                        §§goto(addr019e);
                     }
                     addr01e4:
                     var _loc8_:§'!Y§ = §2_§.§'!D§(_loc4_,"position");
                     §§push([_loc5_,_loc5_,_loc6_,_loc6_]);
                     if(!_loc30_)
                     {
                        §§push(§§pop());
                     }
                     var _loc9_:* = §§pop();
                     §§push([_loc5_,_loc6_,_loc6_,_loc5_]);
                     if(_loc29_)
                     {
                        §§push(§§pop());
                     }
                     var _loc10_:* = §§pop();
                     while(true)
                     {
                        §§push(param1);
                        if(_loc29_)
                        {
                           §§push(§§pop() / 10);
                           if(!_loc29_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     var _loc11_:* = §§pop();
                     §§push(0);
                     if(_loc29_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc15_:* = §§pop();
                     loop16:
                     while(true)
                     {
                        loop17:
                        while(true)
                        {
                           loop34:
                           while(true)
                           {
                              if(!_loc30_)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc15_);
                                    if(_loc30_)
                                    {
                                       break loop34;
                                    }
                                    §§push(4);
                                    if(!_loc29_)
                                    {
                                       break loop17;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc29_)
                                       {
                                          break loop16;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc15_);
                                       if(!_loc30_)
                                       {
                                          _loc15_++;
                                          if(_loc29_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc16_ = §§pop();
                                       if(!_loc30_)
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
                                                   loop47:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.x + _loc6_.x);
                                                         if(!_loc30_)
                                                         {
                                                            §§push(§§pop() / 2);
                                                            if(_loc29_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc29_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            _loc12_ = §§pop();
                                                            if(!_loc29_)
                                                            {
                                                               break loop47;
                                                            }
                                                            §§push(_loc9_);
                                                            if(!_loc29_)
                                                            {
                                                               break loop46;
                                                            }
                                                            §§push(_loc16_);
                                                            if(!_loc29_)
                                                            {
                                                               break loop45;
                                                            }
                                                            §§push(Number(§§pop()[§§pop()].y));
                                                            if(_loc30_)
                                                            {
                                                               break loop44;
                                                            }
                                                         }
                                                         _loc13_ = §§pop();
                                                         if(_loc29_)
                                                         {
                                                            break loop47;
                                                         }
                                                      }
                                                      §§goto(addr02c8);
                                                   }
                                                   §§push(_loc10_);
                                                   break;
                                                }
                                                §§push(_loc16_);
                                                break;
                                             }
                                             §§push(§§pop()[§§pop()].z);
                                             if(_loc29_)
                                             {
                                                addr02c8:
                                                §§push(Number(§§pop()));
                                             }
                                             break;
                                          }
                                          _loc14_ = §§pop();
                                       }
                                       _loc17_ = _loc8_.vertices;
                                       while(true)
                                       {
                                          if(_loc29_)
                                          {
                                             §§push(_loc17_);
                                             §§push(_loc17_.§5G§);
                                             if(_loc29_)
                                             {
                                                §§push(8);
                                                if(!_loc30_)
                                                {
                                                   §§push(_loc16_);
                                                   if(!_loc30_)
                                                   {
                                                      §§push(§§pop() * 2);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§pop().offset = §§pop();
                                             if(!_loc29_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(_loc8_.§+R§);
                                          §§push(_loc17_.offset);
                                          if(!_loc30_)
                                          {
                                             §§push(§§pop() + _loc8_.§+^§);
                                          }
                                          §§pop().offset = §§pop();
                                          break;
                                       }
                                       _loc18_ = _loc8_.§+R§;
                                       while(true)
                                       {
                                          if(_loc29_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                if(!_loc30_)
                                                {
                                                   §§push(§§pop() - _loc11_);
                                                   if(!_loc29_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             _loc19_ = §§pop();
                                             if(_loc30_)
                                             {
                                                break;
                                             }
                                             _loc18_.§@!Y§[_loc18_.offset] = _loc19_;
                                             if(!_loc29_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(_loc18_.§@!Y§);
                                          §§push(_loc18_.offset);
                                          if(_loc29_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§pop()[§§pop()] = _loc13_;
                                          if(!_loc30_)
                                          {
                                             break;
                                          }
                                          addr038a:
                                          _loc17_ = _loc8_.vertices;
                                          if(!_loc30_)
                                          {
                                             §§push(_loc17_);
                                             §§push(_loc17_.§5G§);
                                             if(_loc29_)
                                             {
                                                §§push(9);
                                                if(!_loc30_)
                                                {
                                                   §§push(_loc16_);
                                                   if(!_loc30_)
                                                   {
                                                      §§push(§§pop() * 2);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§pop().offset = §§pop();
                                             if(!_loc30_)
                                             {
                                                §§push(_loc8_.§+R§);
                                                §§push(_loc17_.offset);
                                                if(!_loc30_)
                                                {
                                                   §§push(§§pop() + _loc8_.§+^§);
                                                }
                                                §§pop().offset = §§pop();
                                             }
                                          }
                                          _loc18_ = _loc8_.§+R§;
                                          if(!_loc30_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop() + _loc11_);
                                                   if(_loc30_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc30_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             _loc19_ = §§pop();
                                             if(_loc30_)
                                             {
                                                continue loop0;
                                             }
                                             _loc18_.§@!Y§[_loc18_.offset] = _loc19_;
                                             if(!_loc30_)
                                             {
                                                §§push(_loc18_.§@!Y§);
                                                §§push(_loc18_.offset);
                                                if(!_loc30_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                §§pop()[§§pop()] = _loc13_;
                                                if(_loc30_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          §§push(_loc18_.§@!Y§);
                                          §§push(_loc18_.offset);
                                          if(!_loc30_)
                                          {
                                             §§push(§§pop() + 2);
                                          }
                                          §§pop()[§§pop()] = _loc14_;
                                          continue loop0;
                                       }
                                       §§push(_loc18_.§@!Y§);
                                       §§push(_loc18_.offset);
                                       if(_loc29_)
                                       {
                                          §§push(§§pop() + 2);
                                       }
                                       §§pop()[§§pop()] = _loc14_;
                                       §§goto(addr038a);
                                    }
                                 }
                              }
                              _loc15_ = 0;
                              if(!_loc30_)
                              {
                                 §§goto(addr067f);
                              }
                              §§goto(addr0693);
                           }
                           §§goto(addr06d2);
                        }
                        loop7:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc15_);
                              if(_loc29_)
                              {
                                 _loc15_++;
                                 if(_loc29_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc16_ = §§pop();
                              loop36:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc29_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc9_);
                                          if(!_loc30_)
                                          {
                                             §§push(_loc16_);
                                             if(_loc30_)
                                             {
                                                break;
                                             }
                                             _loc12_ = Number(§§pop()[§§pop()].x);
                                             if(_loc30_)
                                             {
                                                break loop36;
                                             }
                                             §§push(_loc10_);
                                          }
                                          §§push(_loc16_);
                                          break;
                                       }
                                       §§push(Number(§§pop()[§§pop()].y));
                                       if(!_loc29_)
                                       {
                                          break;
                                       }
                                       _loc13_ = §§pop();
                                       if(!_loc29_)
                                       {
                                          break loop36;
                                       }
                                    }
                                    addr04ea:
                                    §§push(_loc5_.z);
                                    if(_loc29_)
                                    {
                                       §§push(§§pop() + _loc6_.z);
                                       break;
                                    }
                                    _loc14_ = §§pop();
                                    break loop36;
                                 }
                                 §§push(Number(§§pop()) / 2);
                                 if(_loc29_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr04ea);
                              }
                              _loc17_ = _loc8_.vertices;
                              while(true)
                              {
                                 if(_loc29_)
                                 {
                                    §§push(_loc17_);
                                    §§push(_loc17_.§5G§);
                                    if(!_loc30_)
                                    {
                                       §§push(16);
                                       if(!_loc30_)
                                       {
                                          §§push(_loc16_);
                                          if(!_loc30_)
                                          {
                                             §§push(§§pop() * 2);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§pop().offset = §§pop();
                                    if(!_loc29_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(_loc8_.§+R§);
                                 §§push(_loc17_.offset);
                                 if(!_loc30_)
                                 {
                                    §§push(§§pop() + _loc8_.§+^§);
                                 }
                                 §§pop().offset = §§pop();
                                 break;
                              }
                              _loc18_ = _loc8_.§+R§;
                              if(!_loc30_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc14_);
                                    if(_loc29_)
                                    {
                                       §§push(§§pop() - _loc11_);
                                       if(_loc30_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 _loc19_ = §§pop();
                                 if(!_loc30_)
                                 {
                                    _loc18_.§@!Y§[_loc18_.offset] = _loc12_;
                                    while(true)
                                    {
                                       if(!_loc30_)
                                       {
                                          §§push(_loc18_.§@!Y§);
                                          §§push(_loc18_.offset);
                                          if(_loc29_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§pop()[§§pop()] = _loc13_;
                                          if(!_loc29_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(_loc18_.§@!Y§);
                                       §§push(_loc18_.offset);
                                       if(!_loc30_)
                                       {
                                          §§push(§§pop() + 2);
                                       }
                                       §§pop()[§§pop()] = _loc19_;
                                       break;
                                    }
                                 }
                              }
                              _loc17_ = _loc8_.vertices;
                              if(!_loc30_)
                              {
                                 §§push(_loc17_);
                                 §§push(_loc17_.§5G§);
                                 if(_loc29_)
                                 {
                                    §§push(17);
                                    if(_loc29_)
                                    {
                                       §§push(_loc16_);
                                       if(_loc29_)
                                       {
                                          §§push(§§pop() * 2);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§pop().offset = §§pop();
                                 if(!_loc30_)
                                 {
                                    §§push(_loc8_.§+R§);
                                    §§push(_loc17_.offset);
                                    if(!_loc30_)
                                    {
                                       §§push(§§pop() + _loc8_.§+^§);
                                    }
                                    §§pop().offset = §§pop();
                                 }
                              }
                              _loc18_ = _loc8_.§+R§;
                              while(true)
                              {
                                 if(_loc29_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc14_);
                                       if(!_loc30_)
                                       {
                                          §§push(§§pop() + _loc11_);
                                          if(!_loc30_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc30_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    _loc19_ = §§pop();
                                    if(_loc30_)
                                    {
                                       break;
                                    }
                                    _loc18_.§@!Y§[_loc18_.offset] = _loc12_;
                                    if(_loc30_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(_loc18_.§@!Y§);
                                 §§push(_loc18_.offset);
                                 if(_loc29_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop()[§§pop()] = _loc13_;
                                 if(!_loc30_)
                                 {
                                    §§push(_loc18_.§@!Y§);
                                    §§push(_loc18_.offset);
                                    if(!_loc30_)
                                    {
                                       §§push(§§pop() + 2);
                                    }
                                    §§pop()[§§pop()] = _loc19_;
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc15_);
                                 if(_loc30_)
                                 {
                                    break loop34;
                                 }
                                 §§push(4);
                                 continue loop7;
                              }
                              break loop34;
                              addr067f:
                           }
                           if(_loc30_)
                           {
                              break loop16;
                           }
                           while(true)
                           {
                              §§push(Number(Math.random()));
                              if(!_loc30_)
                              {
                                 §§push(16777216);
                                 if(_loc30_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc29_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc30_)
                                    {
                                       _loc15_ = §§pop();
                                       if(_loc29_)
                                       {
                                          break loop16;
                                       }
                                       §§goto(addr06d5);
                                    }
                                    §§goto(addr06d3);
                                 }
                              }
                              §§goto(addr06ce);
                           }
                           §§goto(addr06d0);
                        }
                        break loop34;
                     }
                     addr06d3:
                     addr06d2:
                     §§push(Number(Math.random()));
                     if(!_loc30_)
                     {
                        addr06ce:
                        addr06d0:
                        §§push(§§pop() * 16777216);
                     }
                     _loc16_ = int(§§pop());
                     addr06d5:
                     var _loc20_:§'!Y§ = §2_§.§'!D§(_loc4_,"color");
                     §§push(0);
                     if(!_loc30_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc21_:* = §§pop();
                     loop18:
                     while(true)
                     {
                        if(!_loc30_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc21_);
                              if(!_loc30_)
                              {
                                 §§push(8);
                                 if(!_loc30_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(_loc21_);
                                          if(!_loc30_)
                                          {
                                             _loc21_++;
                                             if(_loc30_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(int(§§pop()));
                                          break;
                                       }
                                       _loc22_ = §§pop();
                                       _loc17_ = _loc20_.vertices;
                                       if(!_loc30_)
                                       {
                                          §§push(_loc17_);
                                          §§push(_loc17_.§5G§);
                                          if(_loc29_)
                                          {
                                             §§push(§§pop() * _loc22_);
                                          }
                                          §§pop().offset = §§pop();
                                          if(_loc29_)
                                          {
                                             §§push(_loc20_.§+R§);
                                             §§push(_loc17_.offset);
                                             if(_loc29_)
                                             {
                                                §§push(§§pop() + _loc20_.§+^§);
                                             }
                                             §§pop().offset = §§pop();
                                          }
                                       }
                                       _loc18_ = _loc20_.§+R§;
                                       if(!_loc30_)
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
                                                      §§push(_loc15_);
                                                      §§push(16);
                                                      if(_loc29_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() >> §§pop());
                                                            if(_loc29_)
                                                            {
                                                               §§push((int(§§pop()) & 0xFF) / 255);
                                                               if(_loc30_)
                                                               {
                                                                  break loop21;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(_loc30_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc19_ = §§pop();
                                                               _loc18_.§@!Y§[_loc18_.offset] = _loc19_;
                                                               §§push(_loc15_);
                                                            }
                                                            §§push(§§pop() >> 8);
                                                            if(!_loc30_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc30_)
                                                               {
                                                                  §§push(255);
                                                                  if(_loc29_)
                                                                  {
                                                                     §§push((§§pop() & §§pop()) / 255);
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc30_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     break loop20;
                                                                  }
                                                                  break loop22;
                                                               }
                                                               break loop23;
                                                            }
                                                            addr07e6:
                                                         }
                                                         _loc19_ = §§pop();
                                                         §§push(_loc18_.§@!Y§);
                                                         §§push(_loc18_.offset);
                                                         if(!_loc30_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         §§pop()[§§pop()] = _loc19_;
                                                         if(_loc30_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr07e6);
                                                         §§push(_loc15_);
                                                         §§push(255);
                                                      }
                                                      §§push(§§pop() & §§pop());
                                                      break;
                                                   }
                                                   §§push(255);
                                                   break;
                                                }
                                                §§push(§§pop() / §§pop());
                                                if(_loc29_)
                                                {
                                                   break;
                                                }
                                                break loop20;
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          _loc19_ = §§pop();
                                          if(!_loc30_)
                                          {
                                             §§push(_loc18_.§@!Y§);
                                             §§push(_loc18_.offset);
                                             if(_loc29_)
                                             {
                                                §§push(§§pop() + 2);
                                             }
                                             §§pop()[§§pop()] = _loc19_;
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc30_)
                                    {
                                       break loop18;
                                    }
                                    §§push(8);
                                    if(_loc29_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc30_)
                                       {
                                          break;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(24);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop18;
                                    }
                                    §§push(_loc21_);
                                    if(!_loc30_)
                                    {
                                       _loc21_++;
                                       if(_loc29_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                    }
                                    _loc22_ = §§pop();
                                    _loc17_ = _loc20_.vertices;
                                    if(!_loc30_)
                                    {
                                       §§push(_loc17_);
                                       §§push(_loc17_.§5G§);
                                       if(_loc29_)
                                       {
                                          §§push(§§pop() * _loc22_);
                                       }
                                       §§pop().offset = §§pop();
                                       if(_loc29_)
                                       {
                                          §§push(_loc20_.§+R§);
                                          §§push(_loc17_.offset);
                                          if(!_loc30_)
                                          {
                                             §§push(§§pop() + _loc20_.§+^§);
                                          }
                                          §§pop().offset = §§pop();
                                       }
                                    }
                                    _loc18_ = _loc20_.§+R§;
                                    loop25:
                                    while(true)
                                    {
                                       loop26:
                                       while(true)
                                       {
                                          loop27:
                                          while(true)
                                          {
                                             §§push(_loc16_);
                                             if(_loc29_)
                                             {
                                                loop28:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() >> 16);
                                                      if(!_loc30_)
                                                      {
                                                         §§push((int(§§pop()) & 0xFF) / 255);
                                                         if(_loc30_)
                                                         {
                                                            break loop26;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(!_loc29_)
                                                         {
                                                            break loop26;
                                                         }
                                                         _loc19_ = §§pop();
                                                         if(!_loc29_)
                                                         {
                                                            break;
                                                         }
                                                         _loc18_.§@!Y§[_loc18_.offset] = _loc19_;
                                                         §§push(_loc16_);
                                                         if(_loc30_)
                                                         {
                                                            break loop28;
                                                         }
                                                         §§push(§§pop() >> 8);
                                                         if(!_loc30_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         §§push(255);
                                                         if(_loc30_)
                                                         {
                                                            break loop27;
                                                         }
                                                         §§push(§§pop() & §§pop());
                                                      }
                                                      §§push(255);
                                                      if(_loc29_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc29_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc30_)
                                                            {
                                                               _loc19_ = §§pop();
                                                               break;
                                                            }
                                                         }
                                                         break loop26;
                                                      }
                                                      break loop27;
                                                   }
                                                   §§push(_loc18_.§@!Y§);
                                                   §§push(_loc18_.offset);
                                                   if(_loc29_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   §§pop()[§§pop()] = _loc19_;
                                                   §§push(_loc16_);
                                                   if(_loc29_)
                                                   {
                                                      break;
                                                   }
                                                   break loop25;
                                                }
                                             }
                                             break loop28;
                                          }
                                          §§goto(addr094d);
                                       }
                                       §§goto(addr0956);
                                    }
                                    addr094d:
                                    §§push(§§pop() / 255);
                                    if(!_loc30_)
                                    {
                                       break loop26;
                                    }
                                    addr0956:
                                    _loc19_ = §§pop();
                                    if(!_loc30_)
                                    {
                                       §§push(_loc18_.§@!Y§);
                                       §§push(_loc18_.offset);
                                       if(!_loc30_)
                                       {
                                          §§push(§§pop() + 2);
                                       }
                                       §§pop()[§§pop()] = _loc19_;
                                    }
                                    §§push(24);
                                 }
                                 break loop18;
                              }
                              break;
                           }
                           _loc21_ = §§pop();
                           if(_loc30_)
                           {
                              break;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr0976);
                        }
                     }
                     var _loc23_:Vector.<uint> = §,T§.§+!Z§.slice(0,16777215);
                     while(true)
                     {
                        if(!_loc30_)
                        {
                           §§push(0);
                           if(_loc30_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(_loc30_)
                           {
                              break;
                           }
                           _loc21_ = §§pop();
                        }
                        §§push(8);
                        break;
                     }
                     §§push(null);
                     if(!_loc30_)
                     {
                        §§push(§§pop());
                     }
                     var _loc24_:* = §§pop();
                     if(!_loc30_)
                     {
                        while(_loc21_ < int(_loc24_.length))
                        {
                           §§push(int(_loc24_[_loc21_]));
                           if(_loc29_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc22_ = §§pop();
                           if(_loc29_)
                           {
                              _loc21_++;
                           }
                           while(true)
                           {
                              §§push(§=B§);
                              §§push(_loc22_);
                              §§push(_loc22_);
                              if(_loc29_)
                              {
                                 §§push(6);
                                 if(_loc30_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(2);
                              break;
                           }
                           _loc25_ = §§pop().§@W§(§§pop(),§§pop(),§§pop());
                           while(_loc25_.§#1§ != _loc25_.end)
                           {
                              _loc26_ = _loc25_;
                              if(_loc29_)
                              {
                                 loop32:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc26_);
                                       §§push(_loc26_.§#1§);
                                       if(!_loc30_)
                                       {
                                          §§push(_loc25_.§['§);
                                          if(_loc30_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc30_)
                                          {
                                             break loop32;
                                          }
                                          §§push(int(§§pop()));
                                          if(!_loc29_)
                                          {
                                             break loop32;
                                          }
                                       }
                                       var _temp_1:* = §§pop();
                                       §§push(_temp_1);
                                       §§push(_temp_1);
                                       break;
                                    }
                                    _loc28_ = §§pop();
                                    break;
                                 }
                                 §§pop().§#1§ = §§pop();
                                 §§push(_loc28_);
                                 if(!_loc30_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc27_ = §§pop();
                                 if(!_loc30_)
                                 {
                                    _loc23_.push(_loc27_);
                                    §§push(_loc23_);
                                    §§push(_loc27_);
                                    if(!_loc30_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§pop().push(§§pop());
                                    §§push(_loc23_);
                                    §§push(_loc27_);
                                    if(_loc29_)
                                    {
                                       §§push(§§pop() + 2);
                                    }
                                    §§pop().push(§§pop());
                                 }
                              }
                              §§push(_loc23_);
                              §§push(_loc27_);
                              if(!_loc30_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop().push(§§pop());
                              §§push(_loc23_);
                              §§push(_loc27_);
                              if(_loc29_)
                              {
                                 §§push(§§pop() + 2);
                              }
                              §§pop().push(§§pop());
                              if(!_loc30_)
                              {
                                 §§push(_loc23_);
                                 §§push(_loc27_);
                                 if(!_loc30_)
                                 {
                                    §§push(§§pop() + 3);
                                 }
                                 §§pop().push(§§pop());
                              }
                           }
                           if(_loc29_)
                           {
                              §§push(_loc23_);
                              §§push(_loc22_);
                              if(!_loc30_)
                              {
                                 §§push(§§pop() + 6);
                              }
                              §§pop().push(§§pop());
                              §§push(_loc23_);
                              §§push(_loc22_);
                              if(_loc29_)
                              {
                                 §§push(§§pop() + 7);
                              }
                              §§pop().push(§§pop());
                              _loc23_.push(_loc22_);
                           }
                           §§push(_loc23_);
                           §§push(_loc22_);
                           if(_loc29_)
                           {
                              §§push(§§pop() + 7);
                           }
                           §§pop().push(§§pop());
                           _loc23_.push(_loc22_);
                           §§push(_loc23_);
                           §§push(_loc22_);
                           if(!_loc30_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop().push(§§pop());
                        }
                     }
                     return new Model(_loc4_,_loc23_,§<!9§.§7!P§());
                  }
                  §§push(_loc7_);
                  §§push(_loc5_.z);
                  if(!_loc30_)
                  {
                     §§push(§§pop() * 1.02);
                  }
                  §§pop().z = §§pop();
                  break loop11;
               }
               §§goto(addr00a7);
            }
         }
         return null;
      }
      
      override public function §]4§(param1:Number) : Model
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = null as §=s§;
         var _loc5_:* = null as §!!V§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §=s§;
         §§push(§7v§);
         §§push("text/model/Snowflake.simple");
         §§push(null);
         §§push(param1);
         if(!_loc9_)
         {
            §§push(§§pop() * 0.3);
         }
         var _loc2_:§7v§ = §§pop().§ p§(§§pop(),§§pop(),§§pop());
         var _loc4_:§'!Y§ = §2_§.§'!D§(_loc2_.vertices,"color");
         if(_loc8_)
         {
            while(_loc4_.index < _loc4_.length)
            {
               _loc5_ = _loc4_.vertices;
               if(_loc8_)
               {
                  §§push(_loc5_);
                  §§push(_loc5_.§5G§);
                  if(!_loc9_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.index);
                        if(_loc8_)
                        {
                           var _temp_1:* = §§pop();
                           §§push(_temp_1);
                           §§push(_temp_1);
                           if(_loc8_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc6_ = §§pop();
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() + 1);
                        break;
                     }
                     §§pop().index = §§pop();
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                  }
                  §§pop().offset = §§pop();
                  if(_loc8_)
                  {
                     §§push(_loc4_.§+R§);
                     §§push(_loc5_.offset);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + _loc4_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc7_ = _loc4_.§+R§;
               _loc3_ = _loc7_;
               if(_loc8_)
               {
                  _loc3_.§@!Y§[_loc3_.offset] = 0.95;
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_.§@!Y§);
               §§push(_loc3_.offset);
               if(!_loc9_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = 0.95;
               if(_loc8_)
               {
                  while(true)
                  {
                     §§push(_loc3_.§@!Y§);
                     §§push(_loc3_.offset);
                     if(!_loc9_)
                     {
                        §§push(2);
                        if(_loc9_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(1);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
               }
            }
         }
         return _loc2_;
      }
   }
}

