package nme3D.model
{
   import geom3d.Transform;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import flash.Boot;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class Model
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public var visible:Boolean;
      
      public var vertices:§!!V§;
      
      public var §&"§:int;
      
      public var transform:Transform;
      
      public var §1Z§:§'H§;
      
      public var §=H§:Boolean;
      
      public var §0p§:int;
      
      public var §<'§:Boolean;
      
      public var indices:Vector.<uint>;
      
      public var §3V§:int;
      
      public var §;Z§:§'h§;
      
      public var §5!b§:int;
      
      public var §8!Q§:Boolean;
      
      public function Model(param1:§!!V§, param2:Vector.<uint>, param3:§'H§)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §8!Q§ = true;
         §<'§ = true;
         §=H§ = true;
         §0p§ = 0;
         §1!W§(param3);
         if(_loc5_)
         {
            vertices = param1;
            indices = param2;
         }
         §#"§(true);
      }
      
      public static function §7R§(param1:Model, param2:Model) : int
      {
         var _temp_1:* = false;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = _temp_1;
         §§push(param1.§0p§);
         if(_loc3_)
         {
            return §§pop() - param2.§0p§;
         }
      }
      
      public static function §49§(param1:Model, param2:Model) : int
      {
         var _temp_1:* = false;
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            §§push(param2.transform.position.z);
            if(_loc5_)
            {
               §§push(§§pop() - param1.transform.position.z);
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = 0;
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc5_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop() > §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                    return §§pop();
                                 }
                                 break loop2;
                              }
                              break loop3;
                           }
                           §§push(_loc3_);
                        }
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           §§push(-§§pop());
                        }
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        break;
                     }
                     return 0;
                  }
               }
               break loop3;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §`!$§() : void
      {
         var _temp_1:* = false;
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               if(§;Z§ == null)
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
            }
            §;Z§.§<G§.§,!K§(vertices.§@!Y§,§5!b§);
            if(_loc1_)
            {
               §9>§();
               if(_loc1_)
               {
                  §8!Q§ = false;
               }
            }
            break;
         }
      }
      
      public function §9>§() : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc2_:* = null as Matrix3D;
         var _loc3_:* = null as §'!Y§;
         var _loc4_:* = null as §'!Y§;
         var _loc5_:* = 0;
         var _loc6_:* = null as §!!V§;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null as §!!V§;
         var _loc10_:* = null as §=s§;
         var _loc11_:* = null as §!!V§;
         var _loc12_:* = null as §=s§;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         if(!_loc16_)
         {
            if(§;Z§ == null)
            {
               if(_loc17_)
               {
                  §§goto(addr0063);
               }
            }
            else
            {
               §<'§ = false;
            }
            var _loc1_:§!!V§ = vertices;
            if(_loc17_)
            {
               §§push(_loc1_);
               §§push(_loc1_.§5G§);
               if(!_loc16_)
               {
                  §§push(§§pop() * 0);
               }
               §§pop().offset = §§pop();
               if(!_loc16_)
               {
                  §§push(_loc1_.§>9§("position"));
                  if(!_loc16_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc17_)
                        {
                           break;
                        }
                        _loc2_ = transform.§6,§();
                        _loc3_ = §2_§.§'!D§(vertices,"position");
                        _loc4_ = §2_§.§'!D§(§;Z§.§<G§.vertices,"position");
                        if(_loc17_)
                        {
                           §§push(0);
                           if(_loc17_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc5_ = §§pop();
                        }
                        _loc6_ = vertices;
                        if(_loc17_)
                        {
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc6_.§@!Y§.length);
                                 if(!_loc16_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    §§push(_loc6_.§5G§);
                                    if(!_loc17_)
                                    {
                                       break loop4;
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                                 addr0139:
                                 _loc7_ = §§pop();
                                 if(_loc17_)
                                 {
                                    §§goto(addr02dc);
                                 }
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc16_)
                                 {
                                    §§goto(addr0139);
                                 }
                                 §§goto(addr02de);
                              }
                           }
                           while(§§pop() < §§pop())
                           {
                              §§push(_loc5_);
                              if(!_loc16_)
                              {
                                 _loc5_++;
                                 if(_loc17_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc8_ = §§pop();
                              _loc9_ = _loc3_.vertices;
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    §§push(_loc9_);
                                    §§push(_loc9_.§5G§);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() * _loc8_);
                                    }
                                    §§pop().offset = §§pop();
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(_loc3_.§+R§);
                                 §§push(_loc9_.offset);
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() + _loc3_.§+^§);
                                 }
                                 §§pop().offset = §§pop();
                                 break;
                              }
                              _loc10_ = _loc3_.§+R§;
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    §§push(Model.§1]§);
                                    §§push(_loc10_.§@!Y§[_loc10_.offset]);
                                    if(_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§pop().x = §§pop();
                                    if(_loc16_)
                                    {
                                       break;
                                    }
                                    §§push(Model.§1]§);
                                    §§push(_loc10_.§@!Y§);
                                    §§push(_loc10_.offset);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§push(§§pop()[§§pop()]);
                                    if(!_loc16_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§pop().y = §§pop();
                                    if(_loc16_)
                                    {
                                       break;
                                    }
                                    §§push(Model.§1]§);
                                    §§push(_loc10_.§@!Y§);
                                    §§push(_loc10_.offset);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() + 2);
                                    }
                                    §§push(§§pop()[§§pop()]);
                                    if(_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§pop().z = §§pop();
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc2_.transformVector3(Model.§1]§,Model.§1]§);
                                 break;
                              }
                              _loc11_ = _loc4_.vertices;
                              if(_loc17_)
                              {
                                 §§push(_loc11_);
                                 §§push(_loc11_.§5G§);
                                 if(_loc17_)
                                 {
                                    §§push(§&"§);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() + _loc8_);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§pop().offset = §§pop();
                                 if(_loc17_)
                                 {
                                    §§push(_loc4_.§+R§);
                                    §§push(_loc11_.offset);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() + _loc4_.§+^§);
                                    }
                                    §§pop().offset = §§pop();
                                 }
                              }
                              _loc12_ = _loc4_.§+R§;
                              while(true)
                              {
                                 §§push(Number(Model.§1]§.x));
                                 if(_loc17_)
                                 {
                                    _loc13_ = §§pop();
                                    §§push(Number(Model.§1]§.y));
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    _loc14_ = §§pop();
                                    §§push(Model.§1]§.z);
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              _loc15_ = §§pop();
                              _loc12_.§@!Y§[_loc12_.offset] = _loc13_;
                              §§push(_loc12_.§@!Y§);
                              §§push(_loc12_.offset);
                              if(!_loc16_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop()[§§pop()] = _loc14_;
                              if(!_loc16_)
                              {
                                 §§push(_loc12_.§@!Y§);
                                 §§push(_loc12_.offset);
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() + 2);
                                 }
                                 §§pop()[§§pop()] = _loc15_;
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 addr02de:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    break loop1;
                                 }
                              }
                           }
                        }
                     }
                     §;Z§.§<G§.dirty = true;
                     break;
                  }
               }
            }
            return;
         }
         addr0063:
      }
      
      public function §-!;§(param1:Boolean = false) : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              break;
                           }
                           §§pop();
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                           §§push(§=H§);
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           §§push(visible);
                        }
                        §§push(§§pop() != §§pop());
                        break;
                     }
                     if(§§pop())
                     {
                        §=H§ = visible;
                        if(§;Z§ != null)
                        {
                           break;
                        }
                     }
                     break loop0;
                  }
                  §§push(§=H§);
                  break;
               }
               if(!§§pop())
               {
                  §;Z§.§`n§.§!V§(§3V§,int(indices.length));
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §;Z§.§`n§.§%h§(indices,§&"§,§3V§);
            if(_loc2_)
            {
            }
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     §§push(visible);
                     if(!_loc3_)
                     {
                        if(!§§pop())
                        {
                           break loop0;
                        }
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        §§push(§8!Q§);
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                     if(!§§pop())
                     {
                        §§push(§<'§);
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  break loop0;
               }
               §`!$§();
               if(!_loc3_)
               {
                  break loop0;
               }
               break;
            }
            §9>§();
            break;
         }
      }
      
      public function §,!$§() : Model
      {
         return new Model(vertices,indices,§1Z§);
      }
      
      public function §#"§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               visible = param1;
               if(!_loc3_)
               {
                  break;
               }
            }
            §-!;§();
            break;
         }
         return visible;
      }
      
      public function §;!6§(param1:Transform) : Transform
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               if(transform != null)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(transform);
                  §§push(§-!_§);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§[!E§(§§pop());
               }
               transform = param1;
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(transform == null)
                     {
                        break loop0;
                     }
                     §§push(transform);
                     §§push(§@6§);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§ W§(§§pop());
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  §§push(transform);
                  §§push(§-!_§);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§ !%§(§§pop());
                  break;
               }
               §<'§ = true;
               break;
            }
         }
         return transform;
      }
      
      public function §1!W§(param1:§'H§) : §'H§
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(!_loc3_)
               {
                  if(§1Z§ == null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §§pop();
               §§push(param1 == null);
               if(!_loc3_)
               {
                  break loop0;
               }
               break;
            }
            if(§§pop())
            {
               §§push(vertices.§5G§);
               §§push(§!!V§.§<j§);
               §§push(Type.§#G§(param1.§?"§));
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               if(§§pop() != int(§§pop().get(§§pop())))
               {
                  Boot.lastError = new Error();
                  throw new Error("New shader data does not match the old data!");
               }
            }
            §1Z§ = param1;
            return §1Z§;
         }
         §§push(!§§pop());
         if(_loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         break loop1;
      }
      
      public function §;L§(param1:§'h§) : §'h§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(param1 == null)
               {
                  if(!_loc2_)
                  {
                     §;Z§ = null;
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr0046:
                     §;Z§ = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
               }
               else
               {
                  if(int(param1.§@8§.indexOf(this,0)) < 0)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr0046);
                  }
               }
            }
            §`!$§();
            break;
         }
         return §;Z§;
      }
      
      public function §0!3§(param1:int) : int
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §5!b§ = param1;
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§&"§));
            §§push(§5!b§);
            if(!_loc3_)
            {
               §§push(int(§§pop() / vertices.§5G§));
            }
            §§pop().§&"§ = §§pop();
            break;
         }
         return §5!b§;
      }
      
      public function §%^§(param1:int, param2:Number = 1) : void
      {
         var _temp_1:* = false;
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = _temp_1;
         var _loc7_:* = null as §'!Y§;
         var _loc8_:* = null as §!!V§;
         var _loc9_:* = 0;
         var _loc10_:* = null as §=s§;
         var _loc11_:* = null as §=s§;
         var _loc12_:* = null as §'!Y§;
         var _loc13_:* = null as §!!V§;
         while(true)
         {
            §§push(param1);
            if(_loc14_)
            {
               §§push(16);
               if(_loc15_)
               {
                  break;
               }
               §§push(§§pop() >> §§pop());
               if(!_loc15_)
               {
                  §§push(int(§§pop()));
               }
            }
            §§push(255);
            break;
         }
         §§push(§§pop() / §§pop());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(_loc14_)
               {
                  §§push(8);
                  if(!_loc14_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(!_loc14_)
                  {
                     break loop3;
                  }
               }
               §§push(int(§§pop()));
               if(_loc15_)
               {
                  break loop3;
               }
               §§push(255);
               if(!_loc15_)
               {
                  break;
               }
               §§goto(addr007d);
            }
            §§push(§§pop() & §§pop());
            break;
         }
         addr007d:
         §§push(§§pop() / 255);
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(_loc14_)
            {
               §§push(255);
               if(_loc15_)
               {
                  break;
               }
               §§push(§§pop() & §§pop());
            }
            §§push(255);
            break;
         }
         §§push(§§pop() / §§pop());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:§'!Y§ = §2_§.§'!D§(vertices,"color");
         _loc7_ = _loc6_;
         if(_loc14_)
         {
            while(_loc7_.index < _loc7_.length)
            {
               _loc8_ = _loc7_.vertices;
               if(_loc14_)
               {
                  while(true)
                  {
                     §§push(_loc8_);
                     §§push(_loc8_.§5G§);
                     if(!_loc15_)
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(_loc7_.index);
                           if(_loc14_)
                           {
                              var _temp_2:* = §§pop();
                              §§push(_temp_2);
                              §§push(_temp_2);
                              if(_loc14_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc9_ = §§pop();
                              if(!_loc14_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() + 1);
                           break;
                        }
                        §§pop().index = §§pop();
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() * _loc9_);
                     break;
                  }
                  §§pop().offset = §§pop();
                  if(!_loc15_)
                  {
                     §§push(_loc7_.§+R§);
                     §§push(_loc8_.offset);
                     if(!_loc15_)
                     {
                        §§push(§§pop() + _loc7_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc10_ = _loc7_.§+R§;
               _loc11_ = _loc10_;
               if(_loc14_)
               {
                  _loc11_.§@!Y§[_loc11_.offset] = _loc3_;
                  if(_loc15_)
                  {
                     continue;
                  }
               }
               §§push(_loc11_.§@!Y§);
               §§push(_loc11_.offset);
               if(_loc14_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc4_;
               if(!_loc15_)
               {
                  §§push(_loc11_.§@!Y§);
                  §§push(_loc11_.offset);
                  if(!_loc15_)
                  {
                     §§push(§§pop() + 2);
                  }
                  §§pop()[§§pop()] = _loc5_;
               }
            }
         }
         _loc8_ = vertices;
         while(true)
         {
            if(_loc14_)
            {
               §§push(_loc8_);
               §§push(_loc8_.§5G§);
               if(!_loc15_)
               {
                  §§push(§§pop() * 0);
               }
               §§pop().offset = §§pop();
               if(_loc15_)
               {
                  break;
               }
            }
            §§push(_loc8_.§>9§("alpha"));
            if(!_loc15_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(!_loc15_)
               {
                  break;
               }
               §§goto(addr029b);
            }
            §§goto(addr0294);
         }
         _loc7_ = §2_§.§'!D§(vertices,"alpha");
         _loc12_ = _loc7_;
         if(_loc14_)
         {
            while(_loc12_.index < _loc12_.length)
            {
               _loc13_ = _loc12_.vertices;
               while(true)
               {
                  if(!_loc15_)
                  {
                     while(true)
                     {
                        §§push(_loc13_);
                        §§push(_loc13_.§5G§);
                        if(!_loc15_)
                        {
                           §§push(_loc12_);
                           §§push(_loc12_.index);
                           if(!_loc15_)
                           {
                              var _temp_3:* = §§pop();
                              §§push(_temp_3);
                              §§push(_temp_3);
                              if(_loc14_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc9_ = §§pop();
                              if(!_loc15_)
                              {
                                 §§push(§§pop() + 1);
                              }
                           }
                           §§pop().index = §§pop();
                           if(!_loc14_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() * _loc9_);
                        break;
                     }
                     §§pop().offset = §§pop();
                     if(_loc15_)
                     {
                        break;
                     }
                  }
                  §§push(_loc12_.§+R§);
                  §§push(_loc13_.offset);
                  if(_loc14_)
                  {
                     §§push(§§pop() + _loc12_.§+^§);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
               _loc10_ = _loc12_.§+R§;
               _loc11_ = _loc10_;
               if(!_loc15_)
               {
                  _loc11_.§@!Y§[_loc11_.offset] = param2;
               }
            }
         }
         addr0294:
         §8!Q§ = true;
         addr029b:
      }
      
      public function §0!9§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = null as §'!Y§;
         var _loc4_:* = null as §'!Y§;
         var _loc5_:* = null as §!!V§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §=s§;
         var _loc8_:* = null as §=s§;
         var _loc2_:§!!V§ = vertices;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.§5G§);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * 0);
                  }
                  §§pop().offset = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc2_.§>9§("alpha"));
                     if(_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc9_)
                     {
                        break loop1;
                     }
                  }
               }
               _loc3_ = §2_§.§'!D§(vertices,"alpha");
               _loc4_ = _loc3_;
               if(!_loc9_)
               {
                  while(true)
                  {
                     if(_loc4_.index >= _loc4_.length)
                     {
                        break loop2;
                     }
                     _loc5_ = _loc4_.vertices;
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(_loc5_.§5G§);
                           if(_loc10_)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.index);
                              if(_loc10_)
                              {
                                 var _temp_2:* = §§pop();
                                 §§push(_temp_2);
                                 §§push(_temp_2);
                                 if(_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                              }
                              §§pop().index = §§pop();
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() * _loc6_);
                           break;
                        }
                        §§pop().offset = §§pop();
                        if(_loc10_)
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
                     _loc8_ = _loc7_;
                     if(_loc10_)
                     {
                        _loc8_.§@!Y§[_loc8_.offset] = param1;
                     }
                  }
               }
               break;
            }
            §8!Q§ = true;
            break;
         }
      }
      
      public function §-!_§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     §§push(true);
                     if(!_loc5_)
                     {
                        if(param2)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
                  §§push(param3);
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr0045);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §<'§ = true;
         addr0045:
      }
      
      public function §@6§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = false;
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = _temp_1;
         var _loc4_:* = null as §=s§;
         var _loc9_:* = 0;
         var _loc10_:* = null as §!!V§;
         var _loc11_:* = NaN;
         if(!_loc13_)
         {
            if(§<'§)
            {
               if(_loc12_)
               {
                  return;
               }
            }
            else
            {
               if(§;Z§ != null)
               {
                  var _loc5_:§'!Y§ = §2_§.§'!D§(§;Z§.§<G§.vertices,"position");
                  §§push(0);
                  if(_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  var _loc7_:§!!V§ = vertices;
                  while(true)
                  {
                     §§push(_loc7_.§@!Y§.length);
                     if(!_loc13_)
                     {
                        §§push(int(§§pop()));
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(§§pop() / _loc7_.§5G§);
                     }
                     §§push(int(§§pop()));
                     if(_loc12_)
                     {
                        §§push(int(§§pop()));
                     }
                     break;
                  }
                  var _loc8_:* = §§pop();
                  if(!_loc13_)
                  {
                     loop0:
                     while(_loc6_ < _loc8_)
                     {
                        §§push(_loc6_);
                        if(_loc12_)
                        {
                           _loc6_++;
                           if(!_loc13_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc9_ = §§pop();
                        _loc10_ = _loc5_.vertices;
                        if(_loc12_)
                        {
                           §§push(_loc10_);
                           §§push(_loc10_.§5G§);
                           if(_loc12_)
                           {
                              §§push(§&"§);
                              if(_loc12_)
                              {
                                 §§push(§§pop() + _loc9_);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().offset = §§pop();
                           if(_loc12_)
                           {
                              §§push(_loc5_.§+R§);
                              §§push(_loc10_.offset);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() + _loc5_.§+^§);
                              }
                              §§pop().offset = §§pop();
                           }
                        }
                        _loc4_ = _loc5_.§+R§;
                        loop2:
                        while(true)
                        {
                           §§push(_loc4_.§@!Y§[_loc4_.offset]);
                           §§push(param1);
                           if(!_loc13_)
                           {
                              loop3:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc12_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       _loc11_ = Number(§§pop());
                                       _loc4_.§@!Y§[_loc4_.offset] = _loc11_;
                                       §§push(_loc4_.§@!Y§);
                                       §§push(_loc4_.offset);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§push(§§pop()[§§pop()]);
                                       if(!_loc12_)
                                       {
                                          break loop3;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    §§push(param2);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc13_)
                                       {
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       break loop2;
                                    }
                                 }
                                 _loc11_ = §§pop();
                                 §§push(_loc4_.§@!Y§);
                                 §§push(_loc4_.offset);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop()[§§pop()] = _loc11_;
                                 if(_loc12_)
                                 {
                                    §§push(_loc4_.§@!Y§);
                                    §§push(_loc4_.offset);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() + 2);
                                    }
                                    §§push(Number(§§pop()[§§pop()]));
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    break loop2;
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc13_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc11_ = §§pop();
                        if(_loc12_)
                        {
                           §§push(_loc4_.§@!Y§);
                           §§push(_loc4_.offset);
                           if(!_loc13_)
                           {
                              §§push(§§pop() + 2);
                           }
                           §§pop()[§§pop()] = _loc11_;
                        }
                     }
                     if(_loc12_)
                     {
                        §;Z§.§<G§.dirty = true;
                     }
                  }
                  return;
               }
               if(!_loc13_)
               {
                  §<'§ = true;
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(vertices != null)
         {
            while(true)
            {
               if(_loc2_)
               {
                  if(§;Z§ == null)
                  {
                     break;
                  }
               }
               §;Z§.§4w§(this);
               §;L§(null);
               break;
            }
            §1!W§(null);
            if(_loc2_)
            {
               vertices = null;
            }
            indices = null;
            §;!6§(null);
         }
      }
   }
}

