package com.player03.run3.character
{
   import §2X§.PositionData3D;
   import §>T§.§-n§;
   import §>T§.§[C§;
   import §`!7§.§`!3§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.events.Event;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§1!1§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §@I§
   {
      
      public var rotation:Number;
      
      public var position:Point3D;
      
      public var index:Object;
      
      public var §%s§:Boolean;
      
      public function §@I§(param1:Object = undefined, param2:TunnelSection = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §%s§ = false;
            while(true)
            {
               if(!_loc4_)
               {
                  position = new Point3D(0,0,0);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               if(param1 != null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §;!0§(param1,param2);
         }
      }
      
      public static function fromString(param1:String, param2:TunnelSection) : §@I§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:§@I§ = new §@I§();
         if(!_loc5_)
         {
            _loc3_.§&G§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §&G§(param1:String, param2:TunnelSection) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null;
         §§push(param1.split(","));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     §§push(int(§§pop().length));
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(1);
                     if(_loc5_)
                     {
                        break loop1;
                     }
                     if(§§pop() <= §§pop())
                     {
                        _loc4_ = Std.parseInt(param1);
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_ != null)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                           }
                           _loc4_ = 0;
                           break;
                        }
                        §;!0§(_loc4_,param2);
                        break loop0;
                     }
                     §§push(position);
                     §§push(§`!3§.§ M§(_loc3_[0],0));
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().x = §§pop();
                     §§push(position);
                     §§push(§`!3§.§ M§(_loc3_[1],0));
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().y = §§pop();
                     position.z = 0;
                     §§push(_loc3_);
                  }
                  §§push(int(§§pop().length));
                  break;
               }
               §§push(2);
               break;
            }
            if(§§pop() > §§pop())
            {
               if(!_loc5_)
               {
                  §§push(§§findproperty(rotation));
                  §§push(§`!3§.§ M§(_loc3_[2],0));
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().rotation = §§pop();
               }
            }
            break;
         }
      }
      
      public function §;!0§(param1:int, param2:TunnelSection) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc7_:* = null as §1!1§;
         if(_loc8_)
         {
            index = param1;
         }
         var _loc3_:PositionData3D = param2.layout.§<!C§(param1);
         var _loc4_:Point3D = position;
         var _loc5_:Point3D = _loc3_.position;
         if(_loc8_)
         {
            _loc4_.x = _loc5_.x;
            while(true)
            {
               if(!_loc9_)
               {
                  _loc4_.y = _loc5_.y;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               _loc4_.z = _loc5_.z;
               break;
            }
         }
         _loc4_ = position;
         var _loc6_:Number = param2.tileWidth;
         _loc5_ = position;
         while(true)
         {
            if(_loc5_ == null)
            {
               if(!_loc8_)
               {
                  break;
               }
               _loc5_ = new Point3D(0,0,0);
            }
            _loc5_.x = _loc4_.x * _loc6_;
            if(_loc8_)
            {
               _loc5_.y = _loc4_.y * _loc6_;
               break;
            }
            §§goto(addr01e2);
         }
         §§push(_loc5_);
         §§push(_loc4_.z);
         if(_loc8_)
         {
            §§push(§§pop() * _loc6_);
         }
         §§pop().z = §§pop();
         if(_loc3_.rotation != null)
         {
            _loc7_ = §4!R§.§,![§(_loc3_.rotation);
            loop6:
            while(true)
            {
               if(!_loc9_)
               {
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§findproperty(rotation));
                           if(!_loc9_)
                           {
                              §§push(_loc7_.z);
                              if(_loc9_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(_loc7_.angle);
                                 if(!_loc9_)
                                 {
                                    break loop7;
                                 }
                                 break loop8;
                              }
                           }
                           §§push(_loc7_.angle);
                           if(!_loc9_)
                           {
                              break;
                           }
                           break loop7;
                        }
                        §§goto(addr0146);
                     }
                     §§pop().rotation = §§pop();
                     if(!_loc8_)
                     {
                        break loop6;
                     }
                  }
                  §§push(-§§pop());
                  if(_loc8_)
                  {
                     addr0146:
                     §§push(§§pop() + 3.141592653589793);
                     if(_loc9_)
                     {
                        break loop8;
                     }
                  }
                  §§push(Number(§§pop()));
                  break loop8;
               }
               while(true)
               {
                  §§push(rotation);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(3.141592653589793);
                  if(!_loc9_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!_loc9_)
                        {
                           break loop6;
                        }
                        §%s§ = false;
                        if(_loc8_)
                        {
                           § o§(param2);
                        }
                     }
                     §§push(§§findproperty(rotation));
                     §§push(rotation);
                     if(!_loc9_)
                     {
                        §§push(§§pop() - 6.283185307179586);
                     }
                     §§pop().rotation = §§pop();
                     continue;
                     addr01e2:
                     return;
                  }
                  while(§§pop() < §§pop())
                  {
                     §§push(§§findproperty(rotation));
                     §§push(rotation);
                     if(_loc8_)
                     {
                        §§push(§§pop() + 6.283185307179586);
                        if(!_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().rotation = §§pop();
                     break loop6;
                  }
               }
               while(true)
               {
                  §§goto(addr01c9);
               }
               addr01c7:
            }
            while(true)
            {
               §§goto(addr01c7);
            }
         }
         §§goto(addr01cd);
      }
      
      public function § o§(param1:TunnelSection) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = null as §[C§;
         var _loc3_:* = 0;
         var _loc4_:* = null as §-n§;
         loop0:
         while(true)
         {
            §§push(true);
            if(index != null)
            {
               §§pop();
               §§push(§%s§);
               if(_loc5_)
               {
                  break;
               }
            }
            if(§§pop())
            {
               return;
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(param1.tunnel.backwards);
                  if(!_loc5_)
                  {
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§push(int(param1.terrain.length));
                           if(!_loc5_)
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
                                       loop10:
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(param1.§5k§);
                                                   if(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - (§§pop() - index));
                                                         if(!_loc5_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc6_)
                                                            {
                                                               addr0128:
                                                               _loc3_ = §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               addr0146:
                                                               §§push(_loc3_);
                                                               break loop8;
                                                            }
                                                         }
                                                         _loc3_ = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         § L§.low = 948729;
                                                         §§push(false);
                                                         if(!_loc6_)
                                                         {
                                                            break loop14;
                                                         }
                                                         §§push(_loc3_);
                                                         if(_loc5_)
                                                         {
                                                            break loop13;
                                                         }
                                                         §§push(0);
                                                         if(!_loc6_)
                                                         {
                                                            break loop11;
                                                         }
                                                         if(§§pop() < §§pop())
                                                         {
                                                            break loop10;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            break loop6;
                                                         }
                                                         §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            break loop9;
                                                         }
                                                         §§push(_loc3_);
                                                         if(!_loc6_)
                                                         {
                                                            break loop8;
                                                         }
                                                         §§push(int(param1.terrain.length));
                                                         if(_loc5_)
                                                         {
                                                            break loop7;
                                                         }
                                                      }
                                                      § L§.low = 948729;
                                                      break loop9;
                                                   }
                                                   §§push(§§pop() < §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc5_)
                                                      {
                                                         break loop10;
                                                      }
                                                   }
                                                   break loop0;
                                                }
                                                §§goto(addr013e);
                                             }
                                             §§goto(addr013f);
                                          }
                                          §§goto(addr0141);
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(null);
                                          if(!_loc5_)
                                          {
                                             _loc2_ = §§pop();
                                             break loop1;
                                          }
                                          break loop2;
                                       }
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       _loc2_ = param1.terrain[_loc3_];
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr0178);
                                       }
                                       §§goto(addr017f);
                                    }
                                    §§push(false);
                                    if(!_loc5_)
                                    {
                                       addr0141:
                                       addr013f:
                                       addr013e:
                                       if(_loc3_ >= 0)
                                       {
                                          break loop0;
                                       }
                                    }
                                    addr0150:
                                    if(§§pop())
                                    {
                                       _loc2_ = param1.terrain[_loc3_];
                                       break loop1;
                                    }
                                    §§push(null);
                                    break loop2;
                                 }
                              }
                              §§push(§§pop() < §§pop());
                              break;
                           }
                           break loop8;
                        }
                        §§push(int(index));
                        if(_loc5_)
                        {
                           break loop8;
                        }
                        §§goto(addr0128);
                        break loop8;
                     }
                  }
                  §§goto(addr0150);
               }
               _loc2_ = §§pop();
               break;
            }
            if(_loc2_ != null)
            {
               if(!_loc5_)
               {
                  addr0178:
                  §%s§ = true;
               }
               addr017f:
               _loc4_ = _loc2_.§4!5§;
               loop3:
               while(true)
               {
                  if(_loc6_)
                  {
                     switch(_loc4_.§+!=§)
                     {
                        case 2:
                        case 3:
                        case 4:
                           while(true)
                           {
                              §§push(true);
                              if(_loc6_)
                              {
                                 if(_loc2_.§@p§.§ 5§ != 0)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              §§push(_loc2_.§@p§.§!!_§ == 0);
                              if(_loc6_)
                              {
                                 §§push(!§§pop());
                                 if(_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              break;
                           }
                           if(!§§pop())
                           {
                              §§push(§§findproperty(§;!"§));
                              §§push(param1.tileWidth);
                              if(!_loc5_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§;!"§(§§pop() * 0.5);
                              break loop3;
                           }
                        default:
                           break loop3;
                     }
                  }
                  §2r§(param1.tileWidth * 0.35);
                  §§push(§§findproperty(§;!"§));
                  §§push(param1.tileWidth);
                  if(_loc6_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§;!"§(§§pop() * 0.35);
                  if(_loc6_)
                  {
                  }
                  break;
               }
            }
            return;
         }
         §§pop();
         §§goto(addr0146);
      }
      
      public function §;!"§(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            var _temp_1:* = position;
            _temp_1.x += param1 * Number(Math.sin(rotation));
            if(!_loc3_)
            {
               _temp_2.y += param1 * Number(Math.cos(rotation));
            }
         }
      }
      
      public function §2r§(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               var _temp_1:* = position;
               _temp_1.x += param1 * Number(Math.cos(rotation));
               if(!_loc2_)
               {
                  break;
               }
            }
            _temp_2.y -= param1 * Number(Math.sin(rotation));
            break;
         }
      }
   }
}

