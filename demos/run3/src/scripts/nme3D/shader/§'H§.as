package nme3D.shader
{
   import § 0§.§!&§;
   import §+!1§.§[!9§;
   import §2n§.§2!R§;
   import §4n§.Achievement;
   import §6!Q§.§]u§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.menu.Leaderboards;
   import com.player03.run3.save.§0d§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.events.Event;
   import flash.text.TextField;
   import nme3D.Context3DUtils;
   
   public class §'H§
   {
      
      public var §?!?§:Vector.<Number>;
      
      public var §?o§:int;
      
      public var §+4§:String;
      
      public var §?"§:Class;
      
      public var update:Function;
      
      public var textures:Vector.<§[!9§>;
      
      public var §]!_§:int;
      
      public var §-<§:int;
      
      public var §%!%§:Program3D;
      
      public var §3z§:Vector.<Number>;
      
      public var §=3§:int;
      
      public var §2@§:String;
      
      public function §'H§(param1:String, param2:String, param3:Class)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!update)
         {
            update = function(param1:Number):void
            {
            };
         }
         §]!_§ = 0;
         §=3§ = 0;
         while(true)
         {
            if(_loc6_)
            {
               §?o§ = 0;
               §+4§ = param1;
               if(!_loc6_)
               {
                  break;
               }
            }
            §2@§ = param2;
            if(!_loc7_)
            {
               §?"§ = param3;
               §%!%§ = Context3DUtils.createProgram(param1,param2);
               break;
            }
            §§goto(addr0089);
         }
         §-<§ = Context3DUtils.§7L§;
         addr0089:
         var _loc4_:Vector.<Number> = new Vector.<Number>(0,false);
         if(_loc6_)
         {
            §3z§ = _loc4_;
         }
         var _loc5_:Vector.<Number> = new Vector.<Number>(0,false);
         if(_loc6_)
         {
            §?!?§ = _loc5_;
         }
      }
      
      public function §"!W§(param1:int, param2:int, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc4_:Vector.<Number> = §?!?§;
         §§push(§?o§);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(_loc12_)
            {
               §§push(§§pop() - 4);
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(_loc6_);
            if(!_loc11_)
            {
               §§push(§§pop() * 4);
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!_loc11_)
                        {
                           loop9:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc11_)
                                 {
                                    §§push(4);
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc11_)
                                    {
                                       break loop9;
                                    }
                                 }
                                 _loc8_ = int(§§pop());
                                 §§push(_loc7_);
                                 break loop9;
                              }
                           }
                           §§push(4);
                           if(_loc12_)
                           {
                              break loop10;
                           }
                           break loop4;
                        }
                        break loop5;
                     }
                     break;
                  }
                  _loc9_ = §§pop() + §§pop();
                  §§goto(addr00d3);
               }
               §§goto(addr00e8);
            }
            return;
         }
         loop0:
         while(true)
         {
            if(§§pop() < §§pop())
            {
               while(true)
               {
                  §§push(_loc8_);
                  if(!_loc11_)
                  {
                     _loc8_++;
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc10_ = §§pop();
               if(!_loc11_)
               {
                  _loc4_.push(0);
               }
               while(true)
               {
                  §§push(_loc8_);
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(_loc9_);
                  if(_loc12_)
                  {
                     continue loop0;
                  }
               }
               break;
               addr00d3:
            }
            §§push(_loc4_);
            §§push(_loc7_);
            if(_loc12_)
            {
               §§push(§§pop() + param2);
            }
            §§pop()[§§pop()] = param3;
            if(_loc11_)
            {
               break loop5;
            }
            §§push(_loc6_);
            §§push(1);
            §§push(int(§§pop() + §§pop()));
            break;
         }
         _loc8_ = §§pop();
         while(true)
         {
            §§push(§§findproperty(§?o§));
            if(!_loc11_)
            {
               §§push(_loc5_);
               if(!_loc12_)
               {
                  break;
               }
               if(§§pop() < _loc8_)
               {
                  §§push(_loc8_);
                  break;
               }
            }
            §§push(_loc5_);
            if(_loc12_)
            {
            }
            break;
         }
         §§pop().§?o§ = §§pop();
         break loop5;
      }
      
      public function §^N§(param1:int, param2:§[!9§) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:* = null as Vector.<§[!9§>;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         if(textures == null)
         {
            _loc3_ = new Vector.<§[!9§>(0,false);
            if(_loc8_)
            {
               textures = _loc3_;
            }
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(§]!_§);
               §§push(param1);
               if(_loc8_)
               {
                  if(§§pop() > §§pop())
                  {
                     break;
                  }
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc4_ = §]!_§;
                  if(!_loc8_)
                  {
                     break loop3;
                  }
                  §§push(param1);
                  §§push(1);
                  if(_loc8_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc7_)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                        }
                        addr00ce:
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                     }
                  }
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     break loop3;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc7_)
                     {
                        _loc4_++;
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc6_ = §§pop();
                  if(_loc8_)
                  {
                     textures.push(null);
                  }
                  §§goto(addr00ce);
               }
               break loop3;
            }
            textures[param1] = param2;
            return;
         }
         §§push(§§findproperty(§]!_§));
         §§push(param1);
         if(_loc8_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().§]!_§ = §§pop();
         break loop4;
      }
      
      public function setFragmentUniform4f(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc6_:Vector.<Number> = §3z§;
         §§push(§=3§);
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(param1);
         if(!_loc12_)
         {
            §§push(§§pop() * 4);
            if(_loc13_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc7_);
                     §§push(param1);
                     if(_loc13_)
                     {
                        if(§§pop() > §§pop())
                        {
                           break loop5;
                        }
                        §§push(_loc7_);
                        if(_loc13_)
                        {
                           §§push(4);
                           if(_loc12_)
                           {
                              break loop2;
                           }
                           §§push(int(§§pop() * §§pop()));
                           if(_loc12_)
                           {
                              break loop3;
                           }
                        }
                        _loc9_ = §§pop();
                        §§push(_loc8_);
                        §§push(4);
                        if(!_loc12_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc13_)
                           {
                              break;
                           }
                           _loc10_ = §§pop();
                           while(true)
                           {
                              §§push(_loc9_);
                              if(!_loc13_)
                              {
                                 break loop3;
                              }
                              §§push(_loc10_);
                              if(_loc12_)
                              {
                                 break loop2;
                              }
                           }
                           break loop3;
                           addr00be:
                        }
                     }
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           while(true)
                           {
                              if(!_loc12_)
                              {
                                 break loop5;
                              }
                              §§goto(addr013d);
                           }
                           §§goto(addr0167);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(_loc9_);
                              if(_loc13_)
                              {
                                 _loc9_++;
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              break;
                           }
                           _loc11_ = §§pop();
                           if(!_loc12_)
                           {
                              _loc6_.push(0);
                           }
                           §§goto(addr00be);
                        }
                     }
                     break loop2;
                  }
                  §§goto(addr012b);
               }
               _loc6_[_loc8_] = param2;
               §§push(_loc6_);
               §§push(_loc8_);
               if(!_loc12_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = param3;
               §§push(_loc6_);
               §§push(_loc8_);
               if(!_loc12_)
               {
                  §§push(§§pop() + 2);
               }
               §§pop()[§§pop()] = param4;
               while(true)
               {
                  if(_loc13_)
                  {
                     §§push(_loc6_);
                     §§push(_loc8_);
                     if(!_loc12_)
                     {
                        §§push(§§pop() + 3);
                     }
                     §§pop()[§§pop()] = param5;
                     if(!_loc13_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(_loc13_)
                     {
                        break loop3;
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr013d);
               }
               §§goto(addr0167);
            }
            §§push(1);
            break;
         }
         addr012c:
         _loc9_ = int(§§pop() + §§pop());
         addr012b:
         if(!_loc12_)
         {
            addr013d:
            while(true)
            {
               §§push(§§findproperty(§=3§));
               if(!_loc12_)
               {
                  §§push(_loc7_);
                  if(!_loc13_)
                  {
                     break;
                  }
                  if(§§pop() < _loc9_)
                  {
                     §§push(_loc9_);
                     break;
                  }
               }
               §§push(_loc7_);
               if(_loc12_)
               {
               }
               break;
            }
            §§pop().§=3§ = §§pop();
         }
         addr0167:
      }
      
      public function setFragmentUniform1f(param1:int, param2:int, param3:Number) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc4_:Vector.<Number> = §3z§;
         §§push(§=3§);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(_loc10_)
            {
               §§push(§§pop() * 4);
               if(!_loc10_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     if(_loc10_)
                     {
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(param1);
                                 if(!_loc11_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       break loop3;
                                    }
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    §§push(_loc5_);
                                    §§push(4);
                                    if(!_loc10_)
                                    {
                                       break loop9;
                                    }
                                    _loc7_ = §§pop() * §§pop();
                                    if(!_loc10_)
                                    {
                                       break loop4;
                                    }
                                    §§push(_loc6_);
                                    if(!_loc10_)
                                    {
                                       break loop8;
                                    }
                                    §§push(4);
                                    if(!_loc10_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc11_)
                                 {
                                    §§push(int(§§pop()));
                                    break loop8;
                                 }
                                 break loop6;
                              }
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop3;
                              }
                              §§push(_loc7_);
                              if(_loc10_)
                              {
                                 _loc7_++;
                                 if(_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc9_ = §§pop();
                              if(_loc10_)
                              {
                                 _loc4_.push(0);
                              }
                              break loop10;
                           }
                           break loop7;
                        }
                        _loc8_ = §§pop();
                        if(_loc11_)
                        {
                           break loop3;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc7_);
                        §§push(_loc8_);
                        if(_loc10_)
                        {
                           break loop9;
                        }
                        break loop7;
                     }
                     break;
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr00f5);
            }
            return;
         }
         addr00f5:
         §§push(_loc4_);
         §§push(_loc6_);
         if(_loc10_)
         {
            §§push(§§pop() + param2);
         }
         §§pop()[§§pop()] = param3;
         §§push(param1);
         if(!_loc11_)
         {
            addr00f4:
            §§push(§§pop() + 1);
         }
         _loc7_ = §§pop();
         if(_loc10_)
         {
            while(true)
            {
               §§push(§§findproperty(§=3§));
               if(!_loc11_)
               {
                  §§push(_loc5_);
                  if(!_loc10_)
                  {
                     break;
                  }
                  if(§§pop() < _loc7_)
                  {
                     §§push(_loc7_);
                     break;
                  }
               }
               §§push(_loc5_);
               if(_loc10_)
               {
               }
               break;
            }
            §§pop().§=3§ = §§pop();
         }
         break loop4;
      }
      
      public function §7H§() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc1_:Context3D = Context3DUtils.context3D;
         if(_loc6_)
         {
            _loc1_.setProgram(§%!%§);
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     §§push(§?o§);
                     §§push(0);
                     if(_loc5_)
                     {
                        break;
                     }
                     if(§§pop() <= §§pop())
                     {
                        continue loop7;
                     }
                     if(!_loc6_)
                     {
                        continue loop7;
                     }
                  }
                  _loc1_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,4,§?!?§,§?o§);
                  continue loop7;
               }
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     _loc1_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§3z§,§=3§);
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(§]!_§);
                  if(_loc5_)
                  {
                     break loop5;
                  }
                  §§push(0);
                  if(!_loc5_)
                  {
                     if(§§pop() > §§pop())
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           break;
                        }
                        break loop6;
                     }
                     break loop7;
                  }
                  §§goto(addr0132);
               }
               §§push(§]!_§);
               if(!_loc6_)
               {
                  break loop5;
               }
               §§goto(addr00e3);
            }
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§=3§);
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              break loop4;
                           }
                           break;
                        }
                        addr00e3:
                        §§push(int(§§pop()));
                        if(_loc6_)
                        {
                           break loop5;
                        }
                        break loop6;
                     }
                     §§goto(addr0132);
                  }
               }
               loop2:
               while(true)
               {
                  §§push(_loc3_);
                  addr0132:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop7;
                     }
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        _loc2_++;
                        if(_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc4_ = §§pop();
                     if(_loc6_)
                     {
                        _loc1_.setTextureAt(_loc4_,textures[_loc4_].texture);
                     }
                     §§goto(addr0130);
                     continue loop2;
                  }
                  break loop7;
               }
            }
            _loc3_ = §§pop();
            if(!_loc5_)
            {
               while(true)
               {
                  §§push(_loc2_);
                  break loop6;
               }
               addr0130:
            }
         }
         break loop7;
      }
      
      public function §1D§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         loop3:
         while(true)
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
                     if(!_loc5_)
                     {
                        §§push(§]!_§);
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc4_)
                        {
                           break loop5;
                        }
                        if(§§pop() <= §§pop())
                        {
                           break loop4;
                        }
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                     }
                     while(true)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc5_)
                           {
                              break loop6;
                           }
                        }
                        addr006c:
                        §§push(int(§§pop()));
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        if(_loc5_)
                        {
                           break loop4;
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00b4);
                  }
                  _loc1_ = §§pop();
                  if(_loc5_)
                  {
                     break loop4;
                  }
                  §§push(§]!_§);
                  if(!_loc5_)
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr00b4);
               }
               while(§§pop() < §§pop())
               {
                  §§push(_loc1_);
                  if(!_loc5_)
                  {
                     _loc1_++;
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     Context3DUtils.context3D.setTextureAt(_loc3_,null);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc1_);
                     addr00b4:
                     while(true)
                     {
                        §§push(_loc2_);
                        break loop1;
                     }
                  }
               }
               if(!_loc5_)
               {
                  break;
               }
               break loop3;
            }
            Context3DUtils.context3D.setProgram(null);
            break;
         }
      }
      
      public function §?!3§(param1:int) : §[!9§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  §§push(true);
                  if(_loc2_)
                  {
                     if(textures == null)
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push(param1 >= int(textures.length));
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            return textures[param1];
         }
         return null;
      }
   }
}

