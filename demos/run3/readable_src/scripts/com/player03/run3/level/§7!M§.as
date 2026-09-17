package com.player03.run3.level
{
   import geom3d.Transform;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§1!U§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§24§;
   import nme3D.shader.PositionDepthVertex;
   
   public class §7!M§ extends §1!U§
   {
      
      public var §0!%§:Level;
      
      public var section:§2N§;
      
      public function §7!M§(param1:§2N§, param2:§>W§)
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc8_:* = null as Point3D;
         var _loc10_:* = null as PositionDepthVertex;
         var _loc11_:* = null as §=s§;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         while(true)
         {
            if(_loc15_)
            {
               §0!%§ = param1.tunnel;
               if(_loc16_)
               {
                  break;
               }
            }
            section = param1;
            break;
         }
         var _loc3_:§!!V§ = Type.createInstance(PositionDepthVertex,[int(param2.§]!;§.length),null]);
         var _loc4_:§!!V§ = _loc3_;
         §§push(0);
         if(!_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(int(param2.§]!;§.length));
         if(!_loc16_)
         {
            §§push(§§pop() - 1);
            if(!_loc16_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(true);
         if(_loc15_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(!_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc15_)
            {
               loop0:
               while(_loc6_ >= _loc5_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc7_)
                        {
                           _loc8_ = param2.§]!;§[_loc5_];
                           if(_loc16_)
                           {
                              break;
                           }
                           _loc5_++;
                           if(!_loc15_)
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           _loc8_ = param2.§]!;§[_loc6_];
                           if(_loc15_)
                           {
                              _loc6_--;
                           }
                        }
                        §§push(_loc7_);
                        if(_loc15_)
                        {
                           §§push(!§§pop());
                           if(_loc15_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        _loc7_ = §§pop();
                        if(_loc15_)
                        {
                           break loop3;
                        }
                        break;
                     }
                     _loc10_ = _loc4_;
                     if(!_loc16_)
                     {
                        _loc10_.§+R§.offset = _loc10_.offset;
                     }
                     _loc11_ = _loc10_.§+R§;
                     while(true)
                     {
                        if(!_loc16_)
                        {
                           while(true)
                           {
                              §§push(Number(_loc8_.x));
                              if(_loc15_)
                              {
                                 _loc12_ = §§pop();
                                 §§push(Number(_loc8_.y));
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                                 _loc13_ = §§pop();
                                 §§push(_loc8_.z);
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           _loc14_ = §§pop();
                           _loc11_.§@!Y§[_loc11_.offset] = _loc12_;
                           if(_loc16_)
                           {
                              break;
                           }
                           §§push(_loc11_.§@!Y§);
                           §§push(_loc11_.offset);
                           if(_loc15_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop()[§§pop()] = _loc13_;
                           if(_loc16_)
                           {
                              continue loop0;
                           }
                        }
                        §§push(_loc11_.§@!Y§);
                        §§push(_loc11_.offset);
                        if(_loc15_)
                        {
                           §§push(§§pop() + 2);
                        }
                        §§pop()[§§pop()] = _loc14_;
                        if(_loc15_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     _loc9_++;
                     continue loop0;
                  }
                  §§push(_loc4_);
                  §§push(_loc4_.§5G§);
                  if(_loc15_)
                  {
                     §§push(§§pop() * _loc9_);
                  }
                  §§pop().offset = §§pop();
                  break loop4;
               }
               if(_loc16_)
               {
                  break;
               }
            }
            super(_loc4_,§24§.§7!P§());
            if(_loc15_)
            {
               §;!6§(new Transform());
               if(_loc16_)
               {
                  break;
               }
               transform.§%!7§.z = param1.startZ;
               if(!_loc15_)
               {
                  break;
               }
            }
            transform.reset();
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §§push(false);
               if(_loc4_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§0!%§.camera.position.z);
                        if(_loc4_)
                        {
                           §§push(3000);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§push(Number(§§pop()));
                        break loop1;
                     }
                     if(§§pop() <= §§pop())
                     {
                        break loop0;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(section.startZ);
                  break loop2;
               }
               §§pop();
            }
            §§push(§0!%§.camera.position.z < section.startZ);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  break;
               }
               var _loc2_:* = §§pop();
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           §§push(visible);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() != _loc2_)
                           {
                              if(_loc3_)
                              {
                                 break loop4;
                              }
                              §#"§(_loc2_);
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                           }
                        }
                        §§push(visible);
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     break loop3;
                  }
                  super.update(param1);
                  break;
               }
               return;
            }
            break;
         }
         §§push(Boolean(§§pop()));
         continue loop4;
      }
   }
}

