package §>T§
{
   import §!!$§.§ 6§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §4n§.§>!,§;
   import §8!0§.§2_§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   
   public class §`C§ extends Model
   {
      
      public static var §-6§:Boolean;
      
      public static var §92§:Vector.<uint>;
      
      public function §`C§(param1:Object, param2:Object, param3:§'H§, param4:Number, param5:Object = undefined, param6:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc14_)
               {
                  while(true)
                  {
                     if(param5 == null)
                     {
                        if(!_loc15_)
                        {
                           break;
                        }
                        §§push(param4);
                        if(_loc14_)
                        {
                           break loop1;
                        }
                        param5 = §§pop();
                     }
                     if(param6 == null)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               §§push(param4);
               break;
            }
            param6 = §§pop();
            break;
         }
         §§push(§§findproperty(Point3D));
         §§push(param4);
         if(_loc15_)
         {
            §§push(-§§pop());
         }
         var _loc7_:Point3D = new §§pop().Point3D(§§pop(),-param5,0);
         var _loc8_:Point3D = new Point3D(param4,Number(param5),param6 * 2);
         var _loc9_:Number = param6;
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(param4 + param5);
               §§push(_loc9_);
               if(!_loc14_)
               {
                  if(§§pop() >= 0)
                  {
                     if(_loc15_)
                     {
                        §§push(_loc9_);
                        if(_loc15_)
                        {
                        }
                        break loop2;
                     }
                     §§goto(addr00b2);
                  }
                  else
                  {
                     §§push(_loc9_);
                     if(_loc14_)
                     {
                        break loop2;
                     }
                  }
               }
               §§push(-§§pop());
               if(!_loc14_)
               {
                  break loop2;
               }
               break;
            }
            §§push(§§pop() * §§pop());
            if(!_loc14_)
            {
               §§push(Number(§§pop()));
            }
            var _loc10_:* = §§pop();
            §§push(_loc10_);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            while(true)
            {
               if(_loc15_)
               {
                  if(param6 >= 0)
                  {
                     break;
                  }
                  if(_loc14_)
                  {
                     break;
                  }
               }
               §§push(_loc10_);
               if(_loc15_)
               {
                  §§push(-§§pop());
                  if(_loc15_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc11_ = §§pop();
               break;
            }
            var _loc12_:§!!V§ = Type.createInstance(param3.§?"§,[24,null]);
            if(_loc15_)
            {
               super(_loc12_,§`C§.§92§,param3);
               if(_loc15_)
               {
                  §`C§.§"_§(vertices,_loc7_,_loc8_,_loc10_,_loc10_,_loc11_);
               }
            }
            var _loc13_:§!!V§ = vertices;
            §§push(_loc13_);
            §§push(_loc13_.§5G§);
            if(_loc15_)
            {
               §§push(§§pop() * 0);
            }
            §§pop().offset = §§pop();
            if(!_loc14_)
            {
               if(_loc13_.getAttribute3("color") != null)
               {
                  while(true)
                  {
                     if(!_loc14_)
                     {
                        if(param1 == null)
                        {
                           param1 = 14540253;
                        }
                        if(param2 != null)
                        {
                           break;
                        }
                     }
                     param2 = param1;
                     break;
                  }
                  §`C§.§6!b§(vertices,param1,param2);
               }
               else
               {
                  §`C§.§+3§(vertices);
               }
            }
            return;
         }
         addr00b2:
         §§push((§§pop() + §§pop()) / 3);
         §§push(0.1);
         break loop3;
      }
      
      public static function §"_§(param1:§!!V§, param2:Point3D, param3:Point3D, param4:Number, param5:Number, param6:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2261
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public static function §6!b§(param1:§!!V§, param2:int, param3:int) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc11_:* = 0;
         var _loc12_:* = null as §=s§;
         loop4:
         while(true)
         {
            while(true)
            {
               §§push(param2);
               if(!_loc13_)
               {
                  §§push(16);
                  if(!_loc14_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(_loc13_)
                  {
                     break loop4;
                  }
               }
               §§push(int(§§pop()));
               if(_loc13_)
               {
                  break loop4;
               }
               §§push(255);
               if(_loc14_)
               {
                  break;
               }
               §§goto(addr0051);
            }
            §§push(§§pop() & §§pop());
            break;
         }
         addr0051:
         §§push(§§pop() / 255);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(param2);
               if(_loc14_)
               {
                  §§push(8);
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(_loc13_)
                  {
                     break loop6;
                  }
               }
               §§push(int(§§pop()));
               if(_loc14_)
               {
                  break loop6;
               }
               §§goto(addr0085);
            }
            §§push(§§pop() / §§pop());
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               §§push(param2);
               if(!_loc13_)
               {
                  §§push(255);
                  if(!_loc14_)
                  {
                     break;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§push(255);
               break;
            }
            §§push(§§pop() / §§pop());
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            while(true)
            {
               §§push(param3);
               if(_loc14_)
               {
                  §§push(16);
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(_loc14_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc13_)
                     {
                        §§push(255);
                        if(!_loc14_)
                        {
                           break;
                        }
                        §§push(§§pop() & §§pop());
                     }
                  }
               }
               §§push(255);
               break;
            }
            §§push(§§pop() / §§pop());
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(param3);
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
                        break loop10;
                     }
                  }
                  §§push(int(§§pop()));
                  if(!_loc13_)
                  {
                     §§push(255);
                     if(_loc14_)
                     {
                        §§push(§§pop() & §§pop());
                        break loop10;
                     }
                     break;
                  }
                  break loop10;
               }
               §§push(§§pop() / §§pop());
               if(_loc14_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               while(true)
               {
                  §§push(param3);
                  if(!_loc13_)
                  {
                     §§push(255);
                     if(_loc13_)
                     {
                        break;
                     }
                     §§push(§§pop() & §§pop());
                  }
                  §§push(255);
                  break;
               }
               §§push(§§pop() / §§pop());
               if(_loc14_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               §§push(0);
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
               }
               var _loc10_:* = §§pop();
               if(_loc14_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc10_);
                     if(!_loc14_)
                     {
                        break;
                     }
                     loop13:
                     while(true)
                     {
                        §§push(4);
                        if(!_loc13_)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc10_);
                              if(!_loc13_)
                              {
                                 _loc10_++;
                                 if(!_loc13_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc11_ = §§pop();
                              if(_loc14_)
                              {
                                 §§push(param1);
                                 §§push(param1.§5G§);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() * _loc11_);
                                 }
                                 §§pop().offset = §§pop();
                              }
                              _loc12_ = param1.getAttribute3("color");
                              if(!_loc13_)
                              {
                                 _loc12_.§@!Y§[_loc12_.offset] = _loc7_;
                                 if(!_loc13_)
                                 {
                                    §§push(_loc12_.§@!Y§);
                                    §§push(_loc12_.offset);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§pop()[§§pop()] = _loc8_;
                                    if(_loc14_)
                                    {
                                       §§push(_loc12_.§@!Y§);
                                       §§push(_loc12_.offset);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() + 2);
                                       }
                                       §§pop()[§§pop()] = _loc9_;
                                    }
                                 }
                              }
                              break;
                           }
                           if(!_loc14_)
                           {
                              break;
                           }
                           §§push(4);
                           if(!_loc13_)
                           {
                              break loop0;
                           }
                           while(true)
                           {
                              §§push(24);
                           }
                           break;
                           addr02b9:
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              break loop13;
                           }
                           addr02b7:
                           §§push(_loc10_);
                           if(!_loc13_)
                           {
                              _loc10_++;
                              if(_loc14_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc11_ = §§pop();
                           if(_loc14_)
                           {
                              §§push(param1);
                              §§push(param1.§5G§);
                              if(_loc14_)
                              {
                                 §§push(§§pop() * _loc11_);
                              }
                              §§pop().offset = §§pop();
                           }
                           _loc12_ = param1.getAttribute3("color");
                           while(true)
                           {
                              if(!_loc13_)
                              {
                                 _loc12_.§@!Y§[_loc12_.offset] = _loc4_;
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                              }
                              §§push(_loc12_.§@!Y§);
                              §§push(_loc12_.offset);
                              if(_loc14_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop()[§§pop()] = _loc5_;
                              if(_loc14_)
                              {
                                 §§push(_loc12_.§@!Y§);
                                 §§push(_loc12_.offset);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() + 2);
                                 }
                                 §§pop()[§§pop()] = _loc6_;
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr02b9);
                           }
                        }
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(int(§§pop()));
                     if(_loc14_)
                     {
                        _loc10_ = §§pop();
                        if(!_loc14_)
                        {
                           break;
                        }
                        §§goto(addr02b7);
                     }
                     §§goto(addr02b9);
                  }
               }
               return;
            }
            §§push(255);
            break loop11;
         }
         §§push(255);
         if(!_loc13_)
         {
            addr0085:
            §§push(§§pop() & §§pop());
            §§push(255);
         }
         break loop7;
      }
      
      public static function §+3§(param1:§!!V§) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as §!!V§;
         var _loc6_:* = null as §=s§;
         var _loc2_:§'!Y§ = §2_§.§'!D§(param1,"uv");
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            while(_loc3_ < 6)
            {
               §§push(_loc3_);
               if(_loc7_)
               {
                  _loc3_++;
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc4_ = §§pop();
               _loc5_ = _loc2_.vertices;
               if(!_loc8_)
               {
                  §§push(_loc5_);
                  §§push(_loc5_.§5G§);
                  if(_loc7_)
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        §§push(§§pop() * 4);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§pop().offset = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_.§+R§);
                     §§push(_loc5_.offset);
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc2_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc6_ = _loc2_.§+R§;
               while(true)
               {
                  if(!_loc8_)
                  {
                     _loc6_.§@!Y§[_loc6_.offset] = 0;
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc6_.§@!Y§);
                     §§push(_loc6_.offset);
                     if(!_loc8_)
                     {
                        §§push(1);
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(0);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
                  break;
               }
               _loc5_ = _loc2_.vertices;
               if(!_loc8_)
               {
                  §§push(_loc5_);
                  §§push(_loc5_.§5G§);
                  if(!_loc8_)
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        while(true)
                        {
                           §§push(4);
                           if(_loc7_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(1);
                           }
                           §§push(§§pop() + §§pop());
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§pop().offset = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_.§+R§);
                     §§push(_loc5_.offset);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc2_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc6_ = _loc2_.§+R§;
               if(!_loc8_)
               {
                  _loc6_.§@!Y§[_loc6_.offset] = 0;
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc6_.§@!Y§);
                        §§push(_loc6_.offset);
                        if(_loc7_)
                        {
                           §§push(1);
                           if(_loc8_)
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
               _loc5_ = _loc2_.vertices;
               if(_loc7_)
               {
                  §§push(_loc5_);
                  §§push(_loc5_.§5G§);
                  if(_loc7_)
                  {
                     §§push(_loc4_);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           §§push(4);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§push(2);
                           }
                           §§push(§§pop() + §§pop());
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§pop().offset = §§pop();
                  if(_loc7_)
                  {
                     §§push(_loc2_.§+R§);
                     §§push(_loc5_.offset);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc2_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc6_ = _loc2_.§+R§;
               if(!_loc8_)
               {
                  _loc6_.§@!Y§[_loc6_.offset] = 1;
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc6_.§@!Y§);
                        §§push(_loc6_.offset);
                        if(_loc7_)
                        {
                           §§push(1);
                           if(!_loc7_)
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
               _loc5_ = _loc2_.vertices;
               if(_loc7_)
               {
                  §§push(_loc5_);
                  §§push(_loc5_.§5G§);
                  if(!_loc8_)
                  {
                     §§push(_loc4_);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           §§push(4);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§push(3);
                           }
                           §§push(§§pop() + §§pop());
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§pop().offset = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_.§+R§);
                     §§push(_loc5_.offset);
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc2_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc6_ = _loc2_.§+R§;
               if(!_loc8_)
               {
                  _loc6_.§@!Y§[_loc6_.offset] = 1;
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               while(true)
               {
                  §§push(_loc6_.§@!Y§);
                  §§push(_loc6_.offset);
                  if(_loc7_)
                  {
                     §§push(1);
                     if(!_loc7_)
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
         }
      }
   }
}

