package §>T§
{
   import §"!M§.§7,§;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import world3d.Entity3D;
   import world3d.World;
   import §]N§.§?!H§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class §-2§ extends Entity3D
   {
      
      public static var §-6§:Boolean;
      
      public static var §?>§:Vector.<uint>;
      
      public var p3:Point3D;
      
      public var p2:Point3D;
      
      public var p1:Point3D;
      
      public var axis3Length:Number;
      
      public var axis3:§?!H§;
      
      public var axis2Length:Number;
      
      public var axis2:§?!H§;
      
      public var axis1Length:Number;
      
      public var axis1:§?!H§;
      
      public function §-2§(param1:World, param2:Point3D, param3:Point3D, param4:Point3D, param5:int, param6:int, param7:int, param8:§'H§ = undefined)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1969
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §"!<§(param1:Point3D) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Point3D = axis1.origin;
         var _loc3_:Point3D = axis1.origin;
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               while(true)
               {
                  if(_loc3_ == null)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     _loc3_ = new Point3D(0,0,0);
                  }
                  _loc3_.x = _loc2_.x + param1.x;
                  if(!_loc5_)
                  {
                     break;
                  }
                  break loop0;
               }
               _loc3_.y = _loc2_.y + param1.y;
               if(!_loc6_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(_loc3_);
               §§push(_loc2_.z);
               if(_loc6_)
               {
                  §§push(§§pop() + param1.z);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().z = §§pop();
            break;
         }
         _loc2_ = axis2.origin;
         _loc3_ = axis2.origin;
         while(true)
         {
            if(!_loc5_)
            {
               if(_loc3_ == null)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc3_ = new Point3D(0,0,0);
               }
               _loc3_.x = _loc2_.x + param1.x;
               if(_loc5_)
               {
                  break;
               }
            }
            _loc3_.y = _loc2_.y + param1.y;
            if(_loc6_)
            {
               §§push(_loc3_);
               §§push(_loc2_.z);
               if(_loc6_)
               {
                  §§push(§§pop() + param1.z);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
            }
            break;
         }
         _loc2_ = axis3.origin;
         _loc3_ = axis3.origin;
         loop4:
         while(true)
         {
            if(_loc6_)
            {
               while(true)
               {
                  if(_loc3_ == null)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     _loc3_ = new Point3D(0,0,0);
                  }
                  _loc3_.x = _loc2_.x + param1.x;
                  if(!_loc5_)
                  {
                     break;
                  }
                  break loop4;
               }
            }
            _loc3_.y = _loc2_.y + param1.y;
            if(_loc6_)
            {
               §§push(_loc3_);
               §§push(_loc2_.z);
               if(_loc6_)
               {
                  §§push(§§pop() + param1.z);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
            }
            break;
         }
         var _loc4_:§?!H§ = axis1;
         _loc2_ = axis1.origin;
         if(_loc6_)
         {
            _loc4_.§7! §(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         _loc4_ = axis2;
         _loc2_ = axis2.origin;
         if(!_loc5_)
         {
            _loc4_.§7! §(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         _loc4_ = axis3;
         _loc2_ = axis3.origin;
         while(true)
         {
            if(_loc6_)
            {
               _loc4_.§7! §(_loc2_.x,_loc2_.y,_loc2_.z);
               if(!_loc6_)
               {
                  break;
               }
            }
            transform.translate(param1.x,param1.y,param1.z);
            if(_loc6_)
            {
               break;
            }
            §§goto(addr0242);
         }
         transform.§3;§();
         addr0242:
      }
      
      public function §`!N§(param1:Quaternion, param2:Point3D, param3:Point3D = undefined) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc6_:* = null as Point3D;
         var _loc4_:Point3D = transform.§<!C§();
         if(!_loc15_)
         {
            while(true)
            {
               if(_loc4_ == null)
               {
                  if(!_loc14_)
                  {
                     break;
                  }
                  _loc4_ = new Point3D(0,0,0);
               }
               _loc4_.x = param2.x * -1;
               if(_loc15_)
               {
                  break;
               }
               _loc4_.y = param2.y * -1;
               if(_loc14_)
               {
                  break;
               }
            }
            §§push(_loc4_);
            §§push(param2.z);
            if(_loc14_)
            {
               §§push(§§pop() * -1);
            }
            §§pop().z = §§pop();
         }
         var _loc5_:Point3D = _loc4_;
         _loc6_ = axis1.origin;
         var _loc7_:Point3D = axis1.origin;
         while(true)
         {
            if(!_loc15_)
            {
               if(_loc7_ == null)
               {
                  if(_loc15_)
                  {
                     break;
                  }
                  _loc7_ = new Point3D(0,0,0);
               }
               _loc7_.x = _loc6_.x + _loc5_.x;
               if(!_loc14_)
               {
                  break;
               }
            }
            _loc7_.y = _loc6_.y + _loc5_.y;
            if(!_loc15_)
            {
               break;
            }
            addr0108:
            _loc6_ = axis2.origin;
            _loc7_ = axis2.origin;
            while(true)
            {
               if(!_loc15_)
               {
                  if(_loc7_ == null)
                  {
                     if(!_loc14_)
                     {
                        break;
                     }
                     _loc7_ = new Point3D(0,0,0);
                  }
                  _loc7_.x = _loc6_.x + _loc5_.x;
                  if(_loc14_)
                  {
                     _loc7_.y = _loc6_.y + _loc5_.y;
                     if(_loc15_)
                     {
                        break;
                     }
                  }
               }
               §§push(_loc7_);
               §§push(_loc6_.z);
               if(!_loc15_)
               {
                  §§push(§§pop() + _loc5_.z);
                  if(!_loc15_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
               break;
            }
            _loc6_ = axis3.origin;
            _loc7_ = axis3.origin;
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc15_)
                  {
                     if(_loc7_ == null)
                     {
                        if(_loc15_)
                        {
                           break;
                        }
                        _loc7_ = new Point3D(0,0,0);
                     }
                     _loc7_.x = _loc6_.x + _loc5_.x;
                     if(_loc15_)
                     {
                        break loop3;
                     }
                     _loc7_.y = _loc6_.y + _loc5_.y;
                     §§push(_loc7_);
                     §§push(_loc6_.z);
                     if(_loc14_)
                     {
                        §§push(§§pop() + _loc5_.z);
                        if(!_loc15_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().z = §§pop();
                  }
                  QuaternionUtils.rotateVector(param1,axis1.origin,axis1.origin);
                  QuaternionUtils.rotateVector(param1,axis2.origin,axis2.origin);
                  QuaternionUtils.rotateVector(param1,axis3.origin,axis3.origin);
                  if(!_loc15_)
                  {
                     break loop3;
                  }
                  §§goto(addr0276);
               }
               QuaternionUtils.rotateVector(param1,axis3.normal,axis3.normal);
               QuaternionUtils.rotateVector(param1,p1,p1);
               QuaternionUtils.rotateVector(param1,p2,p2);
               QuaternionUtils.rotateVector(param1,p3,p3);
               var _loc8_:§!!V§ = model.vertices;
               if(_loc14_)
               {
                  §§push(_loc8_);
                  §§push(_loc8_.§5G§);
                  if(_loc14_)
                  {
                     §§push(§§pop() * 0);
                  }
                  §§pop().offset = §§pop();
               }
               var _loc9_:§=s§ = _loc8_.getAttribute3("position");
               var _loc10_:* = Number(p1.x);
               var _loc11_:* = Number(p1.y);
               §§push(p1.z);
               if(_loc14_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc12_:* = §§pop();
               if(_loc14_)
               {
                  _loc9_.§@!Y§[_loc9_.offset] = _loc10_;
                  if(_loc14_)
                  {
                     §§push(_loc9_.§@!Y§);
                     §§push(_loc9_.offset);
                     if(_loc14_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop()[§§pop()] = _loc11_;
                     if(_loc14_)
                     {
                        §§push(_loc9_.§@!Y§);
                        §§push(_loc9_.offset);
                        if(_loc14_)
                        {
                           §§push(§§pop() + 2);
                        }
                        §§pop()[§§pop()] = _loc12_;
                     }
                  }
               }
               _loc8_ = model.vertices;
               if(_loc14_)
               {
                  _loc8_.offset = _loc8_.§5G§;
               }
               _loc9_ = _loc8_.getAttribute3("position");
               while(true)
               {
                  §§push(Number(p2.x));
                  if(_loc14_)
                  {
                     _loc10_ = §§pop();
                     §§push(Number(p2.y));
                     if(_loc14_)
                     {
                        _loc11_ = §§pop();
                        §§push(p2.z);
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               _loc12_ = §§pop();
               _loc9_.§@!Y§[_loc9_.offset] = _loc10_;
               §§push(_loc9_.§@!Y§);
               §§push(_loc9_.offset);
               if(!_loc15_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc11_;
               if(!_loc15_)
               {
                  §§push(_loc9_.§@!Y§);
                  §§push(_loc9_.offset);
                  if(!_loc15_)
                  {
                     §§push(§§pop() + 2);
                  }
                  §§pop()[§§pop()] = _loc12_;
               }
               _loc8_ = model.vertices;
               if(!_loc15_)
               {
                  §§push(_loc8_);
                  §§push(_loc8_.§5G§);
                  if(_loc14_)
                  {
                     §§push(§§pop() * 2);
                  }
                  §§pop().offset = §§pop();
               }
               _loc9_ = _loc8_.getAttribute3("position");
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(Number(p3.x));
                     if(_loc14_)
                     {
                        _loc10_ = §§pop();
                        if(!_loc14_)
                        {
                           continue loop11;
                        }
                        §§push(Number(p3.y));
                        if(!_loc15_)
                        {
                           _loc11_ = §§pop();
                           if(!_loc14_)
                           {
                              break;
                           }
                           §§push(p3.z);
                           if(!_loc14_)
                           {
                              break loop6;
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     break loop6;
                  }
                  _loc5_.z = param2.z;
                  continue loop11;
               }
               _loc12_ = §§pop();
               _loc9_.§@!Y§[_loc9_.offset] = _loc10_;
               §§push(_loc9_.§@!Y§);
               §§push(_loc9_.offset);
               if(_loc14_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc11_;
               §§push(_loc9_.§@!Y§);
               §§push(_loc9_.offset);
               if(_loc14_)
               {
                  §§push(§§pop() + 2);
               }
               §§pop()[§§pop()] = _loc12_;
               QuaternionUtils.rotateVector(param1,§;!C§.normal,§;!C§.normal);
               if(param3 != null)
               {
                  _loc6_ = _loc5_;
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc15_)
                        {
                           if(_loc6_ != null)
                           {
                              break;
                           }
                           if(_loc15_)
                           {
                              break loop8;
                           }
                        }
                        _loc6_ = new Point3D(0,0,0);
                        break;
                     }
                     _loc6_.x = param2.x + param3.x;
                     if(_loc14_)
                     {
                        _loc6_.y = param2.y + param3.y;
                        if(!_loc15_)
                        {
                           break;
                        }
                     }
                     continue loop11;
                  }
                  while(true)
                  {
                     §§push(_loc6_);
                     §§push(param2.z);
                     if(!_loc15_)
                     {
                        §§push(§§pop() + param3.z);
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().z = §§pop();
                  _loc6_ = axis1.origin;
                  _loc7_ = axis1.origin;
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc14_)
                        {
                           if(_loc7_ == null)
                           {
                              if(_loc15_)
                              {
                                 break;
                              }
                              _loc7_ = new Point3D(0,0,0);
                           }
                           _loc7_.x = _loc6_.x + _loc5_.x;
                           if(!_loc14_)
                           {
                              break loop11;
                           }
                        }
                        _loc7_.y = _loc6_.y + _loc5_.y;
                        if(_loc14_)
                        {
                           break loop11;
                        }
                        break;
                     }
                     _loc6_ = axis2.origin;
                     _loc7_ = axis2.origin;
                     while(true)
                     {
                        if(_loc14_)
                        {
                           if(_loc7_ == null)
                           {
                              if(!_loc14_)
                              {
                                 break;
                              }
                              _loc7_ = new Point3D(0,0,0);
                           }
                           _loc7_.x = _loc6_.x + _loc5_.x;
                           if(_loc15_)
                           {
                              break;
                           }
                           _loc7_.y = _loc6_.y + _loc5_.y;
                           if(_loc15_)
                           {
                              break;
                           }
                        }
                        §§push(_loc7_);
                        §§push(_loc6_.z);
                        if(!_loc15_)
                        {
                           §§push(§§pop() + _loc5_.z);
                           if(!_loc15_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().z = §§pop();
                        break;
                     }
                     _loc6_ = axis3.origin;
                     _loc7_ = axis3.origin;
                     while(true)
                     {
                        if(_loc14_)
                        {
                           if(_loc7_ == null)
                           {
                              if(_loc15_)
                              {
                                 break;
                              }
                              _loc7_ = new Point3D(0,0,0);
                           }
                           _loc7_.x = _loc6_.x + _loc5_.x;
                           if(_loc15_)
                           {
                              break;
                           }
                        }
                        _loc7_.y = _loc6_.y + _loc5_.y;
                        if(!_loc15_)
                        {
                           break;
                        }
                        §§goto(addr0710);
                     }
                     while(true)
                     {
                        §§push(_loc7_);
                        §§push(_loc6_.z);
                        if(_loc14_)
                        {
                           §§push(§§pop() + _loc5_.z);
                           if(_loc15_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().z = §§pop();
                     addr0710:
                     var _loc13_:§?!H§ = axis1;
                     _loc6_ = axis1.origin;
                     if(_loc14_)
                     {
                        _loc13_.§7! §(_loc6_.x,_loc6_.y,_loc6_.z);
                     }
                     _loc13_ = axis2;
                     _loc6_ = axis2.origin;
                     if(!_loc15_)
                     {
                        _loc13_.§7! §(_loc6_.x,_loc6_.y,_loc6_.z);
                     }
                     _loc13_ = axis3;
                     _loc6_ = axis3.origin;
                     if(_loc14_)
                     {
                        _loc13_.§7! §(_loc6_.x,_loc6_.y,_loc6_.z);
                     }
                     _loc13_ = axis1;
                     _loc6_ = axis1.normal;
                     if(_loc14_)
                     {
                        _loc13_.§;[§(_loc6_.x,_loc6_.y,_loc6_.z);
                     }
                     _loc13_ = axis2;
                     _loc6_ = axis2.normal;
                     if(!_loc15_)
                     {
                        _loc13_.§;[§(_loc6_.x,_loc6_.y,_loc6_.z);
                     }
                     _loc13_ = axis3;
                     _loc6_ = axis3.normal;
                     loop16:
                     while(true)
                     {
                        if(!_loc15_)
                        {
                           _loc13_.§;[§(_loc6_.x,_loc6_.y,_loc6_.z);
                           if(!_loc14_)
                           {
                              break;
                           }
                        }
                        §§push(transform.§%!7§);
                        §§push(axis1.origin.x + axis2.origin.x);
                        if(!_loc15_)
                        {
                           §§push(§§pop() + axis3.origin.x);
                           if(!_loc15_)
                           {
                              §§push(§§pop() / 3);
                           }
                        }
                        §§pop().x = §§pop();
                        while(true)
                        {
                           if(_loc14_)
                           {
                              break loop16;
                           }
                           addr092e:
                           transform.reset();
                           break;
                        }
                        §§goto(addr0935);
                     }
                     §§push(transform.§%!7§);
                     §§push(axis1.origin.y + axis2.origin.y);
                     if(_loc14_)
                     {
                        §§push(§§pop() + axis3.origin.y);
                        if(_loc14_)
                        {
                           §§push(§§pop() / 3);
                        }
                     }
                     §§pop().y = §§pop();
                     while(true)
                     {
                        if(!_loc15_)
                        {
                           loop19:
                           while(true)
                           {
                              loop20:
                              while(true)
                              {
                                 §§push(transform.§%!7§);
                                 §§push(axis1.origin.z);
                                 if(!_loc15_)
                                 {
                                    while(true)
                                    {
                                       §§push(axis2.origin.z);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc14_)
                                          {
                                             break loop20;
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc14_)
                                          {
                                             break;
                                          }
                                          §§push(axis3.origin.z);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       break loop19;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 break loop19;
                              }
                              §§push(§§pop() / 3);
                              break;
                           }
                           §§pop().z = §§pop();
                           if(!_loc14_)
                           {
                              break;
                           }
                        }
                        §§goto(addr092e);
                     }
                     addr0935:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc7_);
                     §§push(_loc6_.z);
                     if(!_loc15_)
                     {
                        §§push(§§pop() + _loc5_.z);
                        if(_loc15_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().z = §§pop();
                  break loop12;
               }
               _loc5_.x = param2.x;
               _loc5_.y = param2.y;
               break loop7;
            }
            QuaternionUtils.rotateVector(param1,axis1.normal,axis1.normal);
            addr0276:
            QuaternionUtils.rotateVector(param1,axis2.normal,axis2.normal);
            break loop4;
         }
         while(true)
         {
            §§push(_loc7_);
            §§push(_loc6_.z);
            if(_loc14_)
            {
               §§push(§§pop() + _loc5_.z);
               if(!_loc14_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().z = §§pop();
         §§goto(addr0108);
      }
      
      public function §8I§() : §?!H§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:§?!H§ = new §?!H§();
         var _loc2_:Point3D = transform.§2!§();
         if(_loc4_)
         {
            _loc1_.§7! §(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         _loc2_ = §;!C§.normal;
         if(!_loc3_)
         {
            _loc1_.§;[§(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         return _loc1_;
      }
   }
}

