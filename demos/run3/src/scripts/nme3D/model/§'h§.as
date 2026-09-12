package nme3D.model
{
   import §3F§.§4!V§;
   import §4!6§.§!!V§;
   import flash.display3D.Context3D;
   import nme3D.Context3DUtils;
   import nme3D.shader.§'H§;
   
   public class §'h§
   {
      
      public var §-!G§:int;
      
      public var §<G§:VertexBuffer;
      
      public var §1Z§:§'H§;
      
      public var §@8§:Vector.<Model>;
      
      public var §#L§:int;
      
      public var §`n§:§;!a§;
      
      public var §5V§:§6U§;
      
      public var §'c§:Boolean;
      
      public function §'h§(param1:§'H§, param2:§6U§)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               §#L§ = 0;
               if(_loc5_)
               {
                  §-!G§ = 0;
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §'c§ = false;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr004c);
         }
         §5V§ = param2;
         if(_loc5_)
         {
            §1Z§ = param1;
         }
         addr004c:
         var _loc3_:Vector.<Model> = new Vector.<Model>(0,false);
         while(true)
         {
            if(_loc5_)
            {
               §@8§ = _loc3_;
               if(!_loc4_)
               {
                  §<G§ = VertexBuffer.getVertexBuffer(16,param1.§?"§);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §`n§ = §;!a§.§-!b§(16);
            break;
         }
      }
      
      public function update(param1:Number, param2:Number) : void
      {
         var _temp_1:* = false;
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as Model;
         if(!_loc7_)
         {
            §1Z§.update(param2);
         }
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<Model> = §@8§;
         if(!_loc7_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(_loc6_)
               {
                  _loc3_++;
                  if(_loc6_)
                  {
                     _loc5_.update(param1);
                  }
               }
            }
         }
      }
      
      public function §8!9§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §'c§ = true;
         }
      }
      
      public function §%!B§(param1:§4!V§, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_)
         {
            if(§#L§ == 0)
            {
               if(_loc7_)
               {
                  return;
               }
               addr0033:
               §2§();
            }
            else if(§'c§)
            {
               if(!_loc6_)
               {
                  §§goto(addr0033);
               }
            }
         }
         var _loc3_:§;!a§ = §`n§;
         var _loc4_:VertexBuffer = §<G§;
         if(Context3DUtils.§7?§)
         {
            if(!_loc6_)
            {
               return;
            }
            addr00a9:
            addr00b2:
            if(§`n§.dirty)
            {
               addr00b6:
               §`n§.§<!5§();
            }
         }
         else
         {
            while(true)
            {
               §§push(true);
               if(!§<G§.dirty)
               {
                  §§pop();
                  §§push(§`n§.dirty);
                  if(_loc6_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(§<G§.dirty)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §<G§.§<!5§();
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr00b6);
               }
            }
            §§goto(addr00b2);
         }
         var _loc5_:Context3D = Context3DUtils.context3D;
         §1Z§.§7H§();
         param1.§>!?§(_loc5_,0,true);
         while(true)
         {
            if(_loc7_)
            {
               §<G§.§50§(_loc5_);
               if(_loc7_)
               {
                  if(Context3DUtils.§7?§)
                  {
                     if(!_loc6_)
                     {
                        return;
                     }
                     addr0142:
                     return;
                  }
                  _loc5_.drawTriangles(§`n§.§`n§,0,int(§#L§ / 3));
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            §<G§.§1<§(_loc5_);
            break;
         }
         §1Z§.§1D§();
         §§goto(addr0142);
      }
      
      public function §4w§(param1:Model) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:* = false;
         var _loc5_:* = null as Vector.<Model>;
         var _loc2_:Vector.<Model> = §@8§;
         §§push(int(_loc2_.indexOf(param1,0)));
         if(_loc7_)
         {
            §§push(int(§§pop()));
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
                  if(_loc7_)
                  {
                     if(_loc3_ != -1)
                     {
                        if(!_loc6_)
                        {
                           _loc5_ = _loc2_.splice(_loc3_,1);
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(true);
                           if(_loc6_)
                           {
                              break loop1;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc7_)
                           {
                              break loop1;
                           }
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              break loop0;
                           }
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc4_ = §§pop();
                     }
                  }
                  §§push(_loc4_);
                  break loop1;
               }
               §§goto(addr0091);
            }
            if(§§pop())
            {
               break;
            }
            §§goto(addr00a8);
         }
         §'c§ = true;
         param1.§3V§ = 0;
         addr0091:
         param1.§0!3§(0);
         if(_loc7_)
         {
            param1.§;L§(null);
         }
         addr00a8:
      }
      
      public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as Model;
         loop1:
         while(true)
         {
            if(_loc5_)
            {
               if(§<G§ == null)
               {
                  break;
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §<G§.§>§();
            while(true)
            {
               if(_loc5_)
               {
                  break loop1;
               }
               addr004d:
               §`n§.§>§();
               break;
            }
            §§goto(addr0057);
         }
         if(§`n§ != null)
         {
            if(!_loc4_)
            {
               §§goto(addr004d);
            }
         }
         addr0057:
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<Model> = §@8§;
         while(true)
         {
            if(_loc5_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(_loc5_)
                  {
                     _loc1_++;
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc3_.dispose();
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §@8§.length = 0;
            if(!_loc4_)
            {
               §@8§ = null;
            }
            break;
         }
      }
      
      public function §5u§() : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(int(§@8§.length));
            if(_loc2_)
            {
               §§push(§§pop() - 1);
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            while(_loc1_ >= 0)
            {
               §4w§(§@8§[_loc1_]);
               if(!_loc3_)
               {
                  _loc1_--;
               }
            }
         }
      }
      
      public function §2§() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:* = null as Model;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            if(§'c§)
            {
               §'c§ = false;
               loop2:
               while(true)
               {
                  if(!_loc5_)
                  {
                     §#L§ = 0;
                     §-!G§ = 0;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(0);
                  if(_loc6_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           §§push(int(§@8§.length));
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc6_)
                        {
                           break;
                        }
                        _loc3_ = §§pop();
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           break loop3;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop() >= _loc3_)
                     {
                        break loop2;
                     }
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        _loc2_++;
                        if(!_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc4_ = §§pop();
                     _loc1_ = §@8§[_loc4_];
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           _loc1_.§3V§ = §#L§;
                           _loc1_.§0!3§(§-!G§);
                           §§push(§§findproperty(§#L§));
                           §§push(§#L§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + int(_loc1_.indices.length));
                           }
                           §§pop().§#L§ = §§pop();
                           §§push(§§findproperty(§-!G§));
                           §§push(§-!G§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + int(_loc1_.vertices.§@!Y§.length));
                           }
                           §§pop().§-!G§ = §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        _loc1_.§`!$§();
                        if(!_loc5_)
                        {
                           _loc1_.§-!;§(true);
                        }
                        break;
                     }
                     §§goto(addr010f);
                  }
                  break;
               }
            }
         }
      }
      
      public function §&!2§(param1:Model) : Boolean
      {
         var _temp_1:* = false;
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:* = null as §!!V§;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as VertexBuffer;
         var _loc7_:* = null as §;!a§;
         loop2:
         while(true)
         {
            if(_loc8_)
            {
               if(param1.§1Z§ == §1Z§)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        §§push(§-!G§);
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              addr00d1:
                              §§push(param1.vertices.§@!Y§.length);
                              if(!_loc9_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(2048);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          break loop2;
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(§#L§);
                                                if(_loc8_)
                                                {
                                                   §§push(param1.indices.length);
                                                   if(_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + int(§§pop()));
                                                         if(_loc8_)
                                                         {
                                                            §§push(2048);
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc8_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               break loop2;
                                                            }
                                                            §§goto(addr00f9);
                                                         }
                                                         §§goto(addr0167);
                                                      }
                                                      §§goto(addr0271);
                                                   }
                                                   §§goto(addr00f3);
                                                }
                                                §§goto(addr0281);
                                             }
                                             §§goto(addr0282);
                                          }
                                          §§goto(addr02ea);
                                       }
                                       §§goto(addr02a9);
                                    }
                                 }
                                 addr00d8:
                                 §§push(§§pop() + §§pop());
                                 break;
                              }
                              §§push(int(§§pop()));
                              if(_loc9_)
                              {
                                 break loop3;
                              }
                              §§goto(addr00d8);
                           }
                        }
                        addr00d9:
                        §§push(2048);
                        break loop3;
                     }
                     addr0283:
                     _loc4_ = 1;
                     while(true)
                     {
                        if(_loc4_ >= _loc3_)
                        {
                           break loop14;
                        }
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           §§push(§§pop() << 1);
                           if(_loc8_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc4_ = §§pop();
                     }
                     break loop14;
                  }
                  while(true)
                  {
                     if(§§pop() <= §§pop())
                     {
                        §§pop();
                        §§push(§#L§);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() + int(param1.indices.length) > 2048);
                     }
                     if(§§pop())
                     {
                        §§push(false);
                        if(!_loc9_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0106:
                        param1.§0!3§(§-!G§);
                        param1.§3V§ = §#L§;
                        §@8§.push(param1);
                        if(_loc8_)
                        {
                           §§push(§§findproperty(§-!G§));
                           §§push(§-!G§);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + int(param1.vertices.§@!Y§.length));
                           }
                           §§pop().§-!G§ = §§pop();
                        }
                        addr0167:
                        §§push(§§findproperty(§#L§));
                        §§push(§#L§);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + int(param1.indices.length));
                        }
                        §§pop().§#L§ = §§pop();
                        while(true)
                        {
                           §§push(§-!G§);
                           §§push(int(§<G§.vertices.§@!Y§.length));
                           if(!_loc9_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 _loc2_ = §<G§.vertices;
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc2_.§5G§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() * 0);
                                       }
                                       §§pop().offset = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(_loc2_.§5G§);
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      break loop9;
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      break loop8;
                                                   }
                                                }
                                                §§push(int(Math.ceil(§-!G§ / _loc3_)));
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                break loop9;
                                             }
                                             _loc4_ = §§pop();
                                             if(_loc8_)
                                             {
                                                break loop8;
                                             }
                                             break loop7;
                                          }
                                          _loc5_ = §§pop();
                                          if(_loc9_)
                                          {
                                             break loop7;
                                          }
                                       }
                                       §§push(1);
                                       break loop9;
                                    }
                                    while(true)
                                    {
                                       if(_loc5_ >= _loc4_)
                                       {
                                          break loop7;
                                       }
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() << 1);
                                          if(_loc8_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc5_ = §§pop();
                                    }
                                    break;
                                 }
                                 _loc6_ = VertexBuffer.getVertexBuffer(_loc5_,§1Z§.§?"§);
                                 if(_loc8_)
                                 {
                                    _loc6_.copyFrom(§<G§);
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          §<G§.§>§();
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                       }
                                       §<G§ = _loc6_;
                                       break;
                                    }
                                 }
                              }
                              §§push(§#L§);
                              §§push(§`n§.§1R§());
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        addr0271:
                        if(§§pop() > §§pop())
                        {
                           addr02a9:
                           if(!_loc9_)
                           {
                              addr0281:
                              §§push(§#L§);
                              break;
                           }
                           _loc7_ = §;!a§.§-!b§(_loc4_);
                           if(!_loc9_)
                           {
                              _loc7_.copyFrom(§`n§);
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    §`n§.§>§();
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 §`n§ = _loc7_;
                                 break;
                              }
                           }
                        }
                        addr02ea:
                        param1.§;L§(this);
                        param1.§-!;§(true);
                     }
                     return §§pop();
                  }
                  addr0282:
                  _loc3_ = §§pop();
                  break loop4;
               }
            }
            §§push(false);
            if(_loc8_)
            {
               return §§pop();
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               §2§();
               if(_loc8_)
               {
                  §§push(true);
                  §§push(§-!G§);
                  if(_loc8_)
                  {
                     §§goto(addr00d1);
                     §§push(param1.vertices.§@!Y§.length);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr0283);
            }
            §§goto(addr0106);
         }
         §§goto(addr0282);
      }
   }
}

