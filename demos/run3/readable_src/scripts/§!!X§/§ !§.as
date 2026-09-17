package §!!X§
{
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import nme3D.model.§1!U§;
   import nme3D.model.§3!^§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§,8§;
   import nme3D.shader.vertex.PositionColorAlphaVertex;
   
   public class § !§ extends §6!%§
   {
      
      public function § !§(param1:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc7_:* = null as PositionColorAlphaVertex;
         var _loc8_:* = null as §=s§;
         while(true)
         {
            if(!_loc9_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            param1 = 1;
            break;
         }
         var _loc2_:§!!V§ = Type.createInstance(PositionColorAlphaVertex,[23,null]);
         var _loc3_:§!!V§ = _loc2_;
         if(_loc10_)
         {
            §3!^§.§-h§(_loc3_,10,param1);
            if(_loc10_)
            {
               §3!^§.§-h§(_loc3_,12,param1 * 6,false,11);
            }
         }
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc3_.§@!Y§.length);
            if(!_loc9_)
            {
               §§push(int(§§pop()));
               if(!_loc10_)
               {
                  break;
               }
               §§push(§§pop() / _loc3_.§5G§);
            }
            §§push(int(§§pop()));
            if(_loc10_)
            {
               §§push(int(§§pop()));
            }
            break;
         }
         var _loc5_:* = §§pop();
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               if(!_loc9_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(_loc5_);
                     if(!_loc10_)
                     {
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!_loc9_)
                           {
                              _loc4_++;
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc6_ = §§pop();
                        if(_loc10_)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.§5G§);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * _loc6_);
                           }
                           §§pop().offset = §§pop();
                        }
                        _loc7_ = _loc3_;
                        if(_loc10_)
                        {
                           §§push(_loc7_.§+R§);
                           §§push(_loc7_.offset);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + 3);
                           }
                           §§pop().offset = §§pop();
                        }
                        _loc8_ = _loc7_.§+R§;
                        _loc8_.§@!Y§[_loc8_.offset] = 1;
                        while(true)
                        {
                           §§push(_loc8_.§@!Y§);
                           §§push(_loc8_.offset);
                           if(!_loc9_)
                           {
                              §§push(1);
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
                        while(true)
                        {
                           §§push(_loc8_.§@!Y§);
                           §§push(_loc8_.offset);
                           if(!_loc9_)
                           {
                              §§push(2);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(1);
                           break;
                        }
                        §§pop()[§§pop()] = §§pop();
                        if(_loc10_)
                        {
                           loop11:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!_loc9_)
                                 {
                                    §§push(10);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(_loc7_.§@!Y§);
                                          §§push(_loc7_.offset);
                                          if(!_loc9_)
                                          {
                                             §§push(6);
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
                                       if(!_loc10_)
                                       {
                                          break loop11;
                                       }
                                       continue loop0;
                                    }
                                    §§push(_loc6_);
                                 }
                                 §§push(10);
                                 break;
                              }
                              if(§§pop() != §§pop())
                              {
                                 _loc7_.§+R§.offset = _loc7_.offset;
                                 break;
                              }
                              if(_loc9_)
                              {
                                 break;
                              }
                              _loc7_.§+R§.offset = _loc7_.offset;
                              if(!_loc10_)
                              {
                                 break;
                              }
                              _loc8_ = _loc7_.§+R§;
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    _loc8_.§@!Y§[_loc8_.offset] = 0;
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc8_.§@!Y§);
                                    §§push(_loc8_.offset);
                                    if(_loc10_)
                                    {
                                       §§push(1);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(0);
                                    break;
                                 }
                                 §§pop()[§§pop()] = §§pop();
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§push(_loc8_.§@!Y§);
                              §§push(_loc8_.offset);
                              if(_loc10_)
                              {
                                 §§push(§§pop() + 2);
                              }
                              §§pop()[§§pop()] = 0.1;
                              if(!_loc9_)
                              {
                                 §§push(_loc7_.§@!Y§);
                                 §§push(_loc7_.offset);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + 6);
                                 }
                                 §§pop()[§§pop()] = 0.4;
                              }
                              continue loop0;
                           }
                           _loc8_ = _loc7_.§+R§;
                           if(_loc10_)
                           {
                              §§push(_loc8_.§@!Y§);
                              §§push(_loc8_.offset);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() + 2);
                              }
                              §§pop()[§§pop()] = 0.1;
                              if(_loc9_)
                              {
                                 continue;
                              }
                           }
                           while(true)
                           {
                              §§push(_loc7_.§@!Y§);
                              §§push(_loc7_.offset);
                              if(!_loc9_)
                              {
                                 §§push(6);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(0);
                              break;
                           }
                           §§pop()[§§pop()] = §§pop();
                        }
                        continue;
                     }
                     if(_loc9_)
                     {
                        break loop6;
                     }
                     indices = §1!U§.§6d§(0,10);
                     §§push(12);
                     if(_loc10_)
                     {
                        _loc4_ = int(§§pop());
                        §§push(_loc3_.§@!Y§.length);
                        if(!_loc9_)
                        {
                           §§push(int(§§pop()));
                           §§push(_loc3_.§5G§);
                           if(_loc10_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop7;
                              }
                              addr0332:
                              addr0332:
                              §§push(_loc4_);
                              if(!_loc9_)
                              {
                                 _loc4_++;
                                 if(!_loc9_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc6_ = §§pop();
                              if(!_loc9_)
                              {
                                 indices.push(10);
                                 if(!_loc9_)
                                 {
                                    §§push(indices);
                                    §§push(_loc6_);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    §§pop().push(§§pop());
                                    if(_loc10_)
                                    {
                                       indices.push(_loc6_);
                                    }
                                 }
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr0334:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    break loop3;
                                 }
                              }
                           }
                           break loop7;
                        }
                        addr02d7:
                        _loc5_ = int(§§pop());
                        §§goto(addr0332);
                     }
                     §§goto(addr0334);
                  }
                  §§goto(addr02d7);
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr0332);
            }
            indices.push(10);
            loop17:
            while(true)
            {
               while(true)
               {
                  §§push(indices);
                  §§push(_loc3_.§@!Y§.length);
                  if(!_loc9_)
                  {
                     §§push(int(§§pop()));
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(_loc3_.§5G§);
                     if(_loc9_)
                     {
                        break loop17;
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§push(int(§§pop()));
                  if(_loc10_)
                  {
                     §§push(1);
                     break loop17;
                  }
                  break;
               }
               §§pop().push(uint(§§pop()));
               indices.push(11);
               if(_loc10_)
               {
                  break loop6;
               }
               §§goto(addr03b5);
            }
            §§push(§§pop() - §§pop());
            break loop18;
         }
         super(§!_§.§@Y§,§!_§.§@N§,_loc3_,indices,§,8§.§7!P§());
         addr03b5:
      }
      
      override public function §`!Y§() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§!_§.§0!F§(§0!&§,§^r§,x,y));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(0.14881283422459893);
         if(!_loc3_)
         {
            §§push(§§pop() / _loc1_);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(0.08);
                           if(!_loc3_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break;
                              }
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              §§push(_loc2_);
                              §§push(0.5);
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              §§push(0.08);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() - _loc2_);
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              _loc2_ = Number(§§pop());
                              if(!_loc3_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           break loop1;
                        }
                     }
                     §§push(_loc2_);
                     §§push(0.007);
                     break loop2;
                  }
                  §§push(0.007);
                  break loop1;
               }
               if(§§pop() < §§pop())
               {
                  if(!_loc3_)
                  {
                     break loop3;
                  }
               }
               break loop0;
            }
            _loc2_ = §§pop();
            if(_loc4_)
            {
               break;
            }
            §§goto(addr00d7);
         }
         transform.§;!2§(_loc2_,_loc2_,_loc2_);
         addr00d7:
      }
   }
}

