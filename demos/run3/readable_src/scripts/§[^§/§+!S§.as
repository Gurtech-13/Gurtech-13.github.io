package §[^§
{
   import §"!M§.§7,§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §,!G§.§%M§;
   import §,!G§.§6!7§;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import §=w§.§,D§;
   import §>T§.§"=§;
   import §>T§.§[C§;
   import §]N§.§?!H§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.§[!M§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Point;
   import haxeutils.math.§<!$§;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   
   public class §+!S§ implements §,D§
   {
      
      public static var init__:Boolean;
      
      public static var §]G§:§6!7§;
      
      public static var §`!E§:§6!7§;
      
      public static var §-B§:§6!7§;
      
      public static var §70§:§6!7§;
      
      public static var §<u§:§%M§;
      
      public static var §!m§:§%M§;
      
      public static var §;5§:§6!7§;
      
      public static var § C§:Number = 0.7;
      
      public var z:Number;
      
      public var tunnel:Level;
      
      public var §&T§:int;
      
      public var §3J§:int;
      
      public var §;z§:int;
      
      public var §&u§:Vector.<Point3D>;
      
      public var §&!B§:int;
      
      public var §2x§:Boolean;
      
      public var §0=§:§%M§;
      
      public var §]m§:§%M§;
      
      public var §8H§:Number;
      
      public function §+!S§(param1:Level, param2:Object = undefined)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(param2 == null)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(false);
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     param2 = §§pop();
                  }
                  §&T§ = 0;
               }
               §3J§ = -1;
               §;z§ = -2;
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr00af);
            }
            §8H§ = 1;
            tunnel = param1;
            §2x§ = param2;
            §§push(false);
            if(!_loc4_)
            {
               break;
            }
            if(param1.characters == null)
            {
               break;
            }
            while(true)
            {
               if(!_loc5_)
               {
                  §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(int(param1.characters.length) > 0);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop0;
            }
            §§goto(addr00aa);
         }
         if(§§pop())
         {
            addr00aa:
            reset();
         }
         addr00af:
         var _loc3_:* = param1.extraParams.batterySpawnRate;
         while(true)
         {
            if(!_loc5_)
            {
               §§push(false);
               if(_loc4_)
               {
                  if(_loc3_ != null)
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(_loc3_ <= 1);
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  §8H§ = 1 / _loc3_;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §]m§ = §+!S§.§<u§;
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr012e);
         }
         §0=§ = §+!S§.§!m§;
         addr012e:
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:* = null as §[!M§;
         var _loc3_:* = null as §+!S§;
         var _loc4_:* = NaN;
         var _loc5_:* = null as §%M§;
         var _loc6_:* = null as §6!7§;
         var _loc7_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc9_)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(tunnel.§<!M§.position.z);
                        if(!_loc8_)
                        {
                           §§push(3000);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc8_)
                           {
                              break loop7;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           §§push(§§pop() + 200);
                           if(_loc9_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        break loop7;
                     }
                     if(§§pop() < §§pop())
                     {
                        break loop1;
                     }
                     if(!_loc9_)
                     {
                        break loop0;
                     }
                  }
                  §§push(z);
                  break loop8;
               }
               §%!`§(tunnel.§]!#§(z,false));
               break loop0;
            }
            return;
         }
         _loc2_ = tunnel.§!!J§(z);
         if(_loc9_)
         {
            if(_loc2_ == null)
            {
               if(_loc9_)
               {
                  if(tunnel.§]!#§(z,true) == null)
                  {
                     break loop1;
                  }
                  if(_loc9_)
                  {
                     addr00d9:
                     _loc3_ = this;
                     if(!_loc8_)
                     {
                        §§push(_loc3_.z);
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc4_ = §§pop();
                     }
                     _loc5_ = §]m§;
                     _loc6_ = _loc5_.range2;
                     if(_loc9_)
                     {
                        §§push(_loc5_.range1.§7!8§(z));
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc7_ = §§pop();
                        if(_loc8_)
                        {
                           break loop1;
                        }
                     }
                     §§push(_loc3_);
                     §§push(_loc4_);
                     if(_loc9_)
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc8_)
                                       {
                                          break loop3;
                                       }
                                       §§push(0);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          §§push(0);
                                          break loop4;
                                       }
                                       if(_loc8_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    §§push(_loc7_);
                                    if(_loc9_)
                                    {
                                       §§push(1);
                                       break;
                                    }
                                    break loop3;
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break loop2;
                                 }
                                 §§push(1);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc9_)
                                    {
                                    }
                                    break loop3;
                                 }
                                 break;
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           while(true)
                           {
                              §§push(§§pop().§[!$§(§§pop()));
                              if(!_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                              }
                              §§push(tunnel.characters[0].§6b§());
                              if(!_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    addr01ed:
                                    addr01f5:
                                    §§push(§§pop() + §§pop());
                                    if(_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§pop().z = §§pop();
                                    break loop1;
                                 }
                              }
                              addr01ec:
                              §§goto(addr01ed);
                           }
                           §§goto(addr01ec);
                        }
                        §§push(_loc7_);
                        if(_loc8_)
                        {
                        }
                        break loop3;
                     }
                     §§goto(addr01f5);
                  }
               }
            }
            else
            {
               if(z >= _loc2_.endZ)
               {
                  break loop1;
               }
               if(_loc8_)
               {
                  break loop1;
               }
            }
            §3N§(_loc2_);
            break loop1;
         }
         §§goto(addr00d9);
      }
      
      public function §%!`§(param1:TunnelSection) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as §[C§;
         var _loc6_:* = null as Vector.<Point3D>;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = null as Point;
         var _loc12_:Number = NaN;
         while(true)
         {
            if(_loc13_)
            {
               while(true)
               {
                  if(param1 == null || Boolean(§§pop()))
                  {
                     return;
                  }
                  §;z§ = param1.id;
                  break;
               }
               §3J§ = param1.§[9§;
            }
            §&u§ = null;
            §&T§ = 0;
            §§push(0);
            if(_loc13_)
            {
               break;
            }
            §§goto(addr00c3);
         }
         addr00c3:
         var _loc2_:* = §§pop();
         §§push(int(param1.terrain.length));
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc13_)
         {
            loop0:
            while(_loc2_ < _loc3_)
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc14_)
                  {
                     _loc2_++;
                     if(_loc14_)
                     {
                        break;
                     }
                     §§push(int(§§pop()));
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
                  _loc4_ = §§pop();
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc13_)
                        {
                           § L§.low = 948729;
                           if(!_loc14_)
                           {
                              §§push(false);
                              if(!_loc14_)
                              {
                                 if(_loc4_ < 0)
                                 {
                                    break;
                                 }
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(!_loc13_)
                              {
                                 break loop5;
                              }
                           }
                        }
                        §§push(_loc4_);
                        break loop4;
                     }
                     addr013e:
                     if(§§pop())
                     {
                        break;
                     }
                     §§push(null);
                     continue loop7;
                  }
                  _loc5_ = param1.terrain[_loc4_];
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc14_)
                        {
                           §§push(false);
                           if(!_loc13_)
                           {
                              break;
                           }
                           if(_loc5_ == null)
                           {
                              break loop7;
                           }
                           if(!_loc13_)
                           {
                              break loop7;
                           }
                           §§pop();
                           if(_loc14_)
                           {
                              continue loop0;
                           }
                        }
                        §§push("battery");
                        §§push(§"=§.§,n§[_loc5_.§@p§.§<T§]);
                        if(_loc13_)
                        {
                           §§push(§§pop());
                        }
                        §§push(§§pop() == §§pop());
                        if(!_loc14_)
                        {
                           break;
                        }
                        break loop7;
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(!§§pop())
                  {
                     continue loop0;
                  }
                  if(!_loc13_)
                  {
                     continue loop0;
                  }
                  if(§&u§ == null)
                  {
                     if(!_loc14_)
                     {
                        _loc6_ = new Vector.<Point3D>(0,false);
                        if(!_loc14_)
                        {
                           §&u§ = _loc6_;
                        }
                     }
                     else
                     {
                        addr0204:
                        while(true)
                        {
                           §§push(_loc5_.transform.§%!7§.z);
                           if(!_loc14_)
                           {
                              §§push(§&u§);
                              §§push(int(§&u§.length));
                              if(!_loc14_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              §§push(§§pop()[§§pop()].z);
                              if(_loc14_)
                              {
                                 break;
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§push(§+!S§.§-B§.§[!$§(0.5));
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 §§push(tunnel.characters[0].§6b§());
                                 if(_loc13_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                           }
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           continue loop0;
                        }
                     }
                  }
                  else if(int(§&u§.length) > 0)
                  {
                     if(_loc14_)
                     {
                        continue loop0;
                     }
                     §§goto(addr0204);
                  }
                  _loc7_ = _loc5_.transform.§%!7§;
                  _loc8_ = new Point3D(_loc7_.x,_loc7_.y,_loc7_.z);
                  if(!_loc14_)
                  {
                     while(true)
                     {
                        §§push(Number(Math.sqrt(_loc8_.x * _loc8_.x + _loc8_.y * _loc8_.y)));
                        if(_loc13_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc14_)
                           {
                              break;
                           }
                        }
                        _loc9_ = §§pop();
                        if(!_loc14_)
                        {
                           §§push(1 / _loc9_);
                           if(_loc13_)
                           {
                              break;
                           }
                           addr02d7:
                           _loc10_ = §§pop();
                        }
                     }
                     §§goto(addr02d7);
                  }
                  _loc11_ = _loc8_;
                  if(_loc11_ == null)
                  {
                     _loc11_ = new Point(0,0);
                  }
                  _loc11_.x = _loc8_.x * _loc10_;
                  _loc11_.y = _loc8_.y * _loc10_;
                  if(!_loc14_)
                  {
                     while(true)
                     {
                        §§push(_loc9_);
                        §§push(150);
                        if(_loc13_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc13_)
                           {
                              break;
                           }
                           _loc10_ = §§pop();
                           §§push(param1.§0!'§);
                           §§push(3);
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc14_)
                        {
                           break;
                        }
                        _loc12_ = §§pop();
                        §§push(_loc10_);
                        if(!_loc14_)
                        {
                           if(§§pop() > _loc12_)
                           {
                              §§push(_loc10_);
                              if(!_loc14_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc12_);
                           }
                           _loc9_ = Number(§§pop());
                           addr0362:
                           _loc11_ = _loc8_;
                           if(!_loc14_)
                           {
                              while(true)
                              {
                                 if(_loc11_ == null)
                                 {
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    _loc11_ = new Point(0,0);
                                 }
                                 _loc11_.x = _loc8_.x * _loc9_;
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           _loc11_.y = _loc8_.y * _loc9_;
                           if(!_loc14_)
                           {
                              §&u§.push(_loc8_);
                           }
                           continue loop0;
                        }
                        _loc9_ = §§pop();
                        if(_loc14_)
                        {
                        }
                     }
                     §§goto(addr0351);
                  }
                  §§goto(addr0362);
               }
               §§push(§§pop() < int(param1.terrain.length));
               if(!_loc14_)
               {
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr013e);
            }
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:CharacterBase = tunnel.characters[0];
         while(true)
         {
            if(_loc2_)
            {
               §%!`§(_loc1_.§73§);
               if(!_loc3_)
               {
                  §&T§ = 0;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(§§findproperty(z));
                  §§push(_loc1_.§73§.startZ);
                  if(_loc2_)
                  {
                     §§push(_loc1_.§6b§());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              §§push(Number(Math.random()));
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(2);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§push(1);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§8H§);
                              }
                              §§push(§§pop() * §§pop());
                              break;
                           }
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().z = §§pop();
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §&!B§ = 1;
            break;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
      
      public function §3N§(param1:§[!M§) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null as §%M§;
         var _loc8_:* = null as §6!7§;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc2_:§!A§ = null;
         loop0:
         while(true)
         {
            if(_loc12_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc13_)
                        {
                           §§push(false);
                           if(_loc12_)
                           {
                              if(§&u§ == null)
                              {
                                 break;
                              }
                              if(!_loc12_)
                              {
                                 break loop2;
                              }
                           }
                           §§pop();
                           if(_loc13_)
                           {
                              break loop1;
                           }
                        }
                        §§push(§&T§ < int(§&u§.length));
                        if(!_loc13_)
                        {
                           break loop2;
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc13_)
                           {
                              §§pop();
                              if(!_loc12_)
                              {
                                 break;
                              }
                              §§push(§&u§[§&T§].z);
                              §§push(z);
                              if(!_loc13_)
                              {
                                 §§push(§+!S§.§-B§.end);
                                 if(!_loc13_)
                                 {
                                    §§push(tunnel.characters[0].§6b§());
                                    if(!_loc13_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() * 2);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc13_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§push(§§pop() <= §§pop());
                              if(_loc12_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        §§goto(addr00fd);
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop17;
               }
               addr00fd:
               if(!Boolean(§§pop()))
               {
                  _loc3_ = tunnel.characters[0].transform.§2!§();
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(Number(Math.atan2(_loc3_.y,_loc3_.x)));
                           if(_loc12_)
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 §§push(§&!B§);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() <= 0)
                                    {
                                       _loc7_ = §0=§;
                                       _loc8_ = _loc7_.range2;
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_.range1.§7!8§(z));
                                                if(_loc12_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc12_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!_loc12_)
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(0);
                                                                           break loop13;
                                                                        }
                                                                        if(!_loc12_)
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                     }
                                                                     §§push(_loc9_);
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(1);
                                                                        break;
                                                                     }
                                                                     break loop12;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  §§push(1);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc13_)
                                                                     {
                                                                     }
                                                                     break loop12;
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               break;
                                                            }
                                                            §§push(§§pop().§[!$§(§§pop()));
                                                            if(_loc13_)
                                                            {
                                                               break loop8;
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§push(_loc9_);
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         break loop12;
                                                      }
                                                      break loop9;
                                                   }
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc13_)
                                                {
                                                   _loc6_ = §§pop();
                                                   §§push(_loc6_);
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§<!$§.random(0,0.5));
                                                   if(!_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      break loop9;
                                                   }
                                                   §§goto(addr02b0);
                                                }
                                                §§goto(addr02ab);
                                             }
                                             §§goto(addr02bf);
                                          }
                                          addr02ab:
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       _loc6_ = §§pop();
                                       addr02b0:
                                       if(_loc6_ > 1)
                                       {
                                          if(_loc12_)
                                          {
                                             addr02bf:
                                             _loc6_ = Number(_loc6_);
                                          }
                                          break;
                                       }
                                       _loc6_ = 1;
                                       break;
                                    }
                                    §§push(1);
                                 }
                                 _loc6_ = Number(§§pop());
                                 if(_loc12_)
                                 {
                                    §§push(§§findproperty(§&!B§));
                                    §§push(§&!B§);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    §§pop().§&!B§ = §§pop();
                                 }
                                 break;
                              }
                              loop15:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§+!S§.§;5§.§[!$§(Number(Math.random())));
                                    if(_loc12_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       _loc9_ = §§pop();
                                       §§push(Number(Math.random()));
                                       if(_loc13_)
                                       {
                                          break loop15;
                                       }
                                    }
                                    §§push(0.2);
                                    if(_loc13_)
                                    {
                                       break loop4;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(Number(Math.random()));
                                       if(_loc12_)
                                       {
                                          break;
                                       }
                                       §§goto(addr033a);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                    }
                                 }
                                 §§push(§§pop() * 2);
                                 §§push(3.141592653589793);
                                 if(_loc13_)
                                 {
                                    break loop5;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0375);
                              }
                              §§push(Number(§§pop()));
                              if(!_loc13_)
                              {
                                 addr033a:
                                 _loc10_ = §§pop();
                              }
                              else
                              {
                                 §§goto(addr037d);
                              }
                              §§goto(addr037f);
                           }
                           §§push(Number(Math.random()));
                           if(_loc13_)
                           {
                              break loop3;
                           }
                           §§push(0.5);
                           if(!_loc13_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc13_)
                              {
                                 break;
                              }
                              break loop3;
                           }
                           §§goto(addr036c);
                        }
                        §§push(§§pop() * 2);
                        if(!_loc13_)
                        {
                           break loop3;
                        }
                        break;
                     }
                     addr037d:
                     §§push(§§pop() + §§pop());
                     if(_loc12_)
                     {
                        addr0375:
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc10_ = §§pop();
                     addr037f:
                     _loc4_ = param1.tunnelBounds.planes[0].origin;
                     if(!_loc13_)
                     {
                        §§push(Number(Math.sqrt(_loc4_.x * _loc4_.x + _loc4_.y * _loc4_.y)));
                        if(!_loc13_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc11_ = §§pop();
                     }
                     _loc2_ = new §!A§(tunnel,int(Math.round(_loc6_)),null,null,null,§2x§);
                     while(true)
                     {
                        if(!_loc13_)
                        {
                           §§push(_loc2_);
                           §§push(_loc11_);
                           if(_loc12_)
                           {
                              §§push(§§pop() * Number(Math.cos(_loc10_)));
                           }
                           §§pop().§0Y§(§§pop());
                           if(_loc13_)
                           {
                              break loop0;
                           }
                           §§push(_loc2_);
                           §§push(_loc11_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * Number(Math.sin(_loc10_)));
                           }
                           §§pop().§7n§(§§pop());
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        _loc2_.§^V§(z);
                        if(!_loc13_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     param1.tunnelBounds.moveInside(_loc2_.transform.§%!7§,_loc9_,_loc2_.transform.§%!7§);
                     break loop0;
                  }
                  addr036c:
                  §§push(§§pop() * 1.5707963267948966);
                  break loop4;
               }
            }
            _loc2_ = new §!A§(tunnel,1,null,null,null,§2x§);
            _loc3_ = _loc2_.transform.§%!7§;
            _loc4_ = §&u§[§&T§];
            _loc3_.x = _loc4_.x;
            while(true)
            {
               if(!_loc13_)
               {
                  _loc3_.y = _loc4_.y;
                  if(_loc13_)
                  {
                     break;
                  }
                  _loc3_.z = _loc4_.z;
                  if(_loc13_)
                  {
                     break;
                  }
               }
               _loc2_.§?!8§ = 0;
               break;
            }
            §§push(§§findproperty(§&T§));
            §§push(§&T§);
            if(!_loc13_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().§&T§ = §§pop();
            break;
         }
         §§push(_loc2_.§'j§());
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         _loc5_ = §§pop();
         _loc7_ = §]m§;
         _loc8_ = _loc7_.range2;
         loop20:
         while(true)
         {
            while(true)
            {
               §§push(_loc7_.range1.§7!8§(z));
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc13_)
                     {
                        break;
                     }
                     _loc6_ = §§pop();
                     loop25:
                     while(true)
                     {
                        §§push(_loc8_);
                        if(_loc12_)
                        {
                           §§push(_loc6_);
                           if(_loc13_)
                           {
                              break;
                           }
                           loop26:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc12_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(0);
                                       break;
                                    }
                                    if(!_loc12_)
                                    {
                                       break loop26;
                                    }
                                    §§push(_loc6_);
                                    if(!_loc12_)
                                    {
                                       break loop25;
                                    }
                                    §§push(1);
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break loop26;
                                 }
                                 §§push(1);
                                 if(!_loc13_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc12_)
                                    {
                                    }
                                    break loop25;
                                 }
                                 break;
                              }
                              §§push(Number(§§pop()));
                              break loop25;
                           }
                        }
                        break loop26;
                     }
                     §§push(§§pop().§[!$§(§§pop()));
                     if(!_loc12_)
                     {
                        break loop20;
                     }
                  }
                  §§push(Number(§§pop()));
               }
               §§push(tunnel.characters[0].§6b§());
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(§§pop() * §§pop());
               break;
            }
            _loc9_ = Number(§§pop());
            if(_loc12_)
            {
               §§push(§+!S§.§ C§);
               break;
            }
            §§goto(addr0526);
         }
         _loc10_ = Number(§§pop());
         while(true)
         {
            if(_loc12_)
            {
               addr0526:
               §§push(§§findproperty(z));
               §§push(_loc5_);
               if(_loc12_)
               {
                  loop23:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc13_)
                        {
                           §§push(_loc10_);
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(tunnel.power);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * (1 - _loc10_));
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc13_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc12_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc13_)
                           {
                              break loop23;
                           }
                        }
                        §§push(§8H§);
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
               if(_loc13_)
               {
                  break;
               }
               _loc2_.reset();
            }
            tunnel.§4M§(_loc2_);
            §§push(tunnel.§"[§.§9!R§);
            §§push(Model.§49§);
            if(_loc12_)
            {
               §§push(§§pop());
            }
            §§pop().§9!B§ = §§pop();
            break;
         }
      }
   }
}

