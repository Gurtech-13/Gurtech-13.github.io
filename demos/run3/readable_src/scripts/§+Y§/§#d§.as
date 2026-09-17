package §+Y§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §+!$§.§>5§;
   import layout3d.PositionData3D;
   import §4!6§.§!!V§;
   import §>T§.§"=§;
   import §>T§.§-n§;
   import §>T§.§0!E§;
   import §>T§.§8R§;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   
   public class §#d§
   {
      
      public var terrain:§[C§;
      
      public var §^>§:Number;
      
      public var §^]§:Number;
      
      public var §[!F§:§=!U§;
      
      public var §4u§:Number;
      
      public var §?!'§:int;
      
      public var §,E§:Point3D;
      
      public var §1§:§[C§;
      
      public var bridge:Bridge;
      
      public function §#d§(param1:Bridge, param2:int, param3:§#d§, param4:§#d§)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               §4u§ = -1;
               if(_loc7_)
               {
                  break;
               }
            }
            bridge = param1;
            if(_loc6_)
            {
               §?!'§ = param2;
            }
            break;
         }
         var _loc5_:TunnelSection = param1.§9_§;
         § L§.low = 948729;
         while(true)
         {
            if(_loc6_)
            {
               while(true)
               {
                  §§push(§§findproperty(terrain));
                  if(!_loc7_)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc6_)
                           {
                              if(param2 < 0)
                              {
                                 break loop3;
                              }
                              if(!_loc6_)
                              {
                                 break loop3;
                              }
                              §§pop();
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(param2 < int(_loc5_.terrain.length));
                              if(_loc7_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop3;
                        }
                     }
                     if(§§pop())
                     {
                        break loop4;
                     }
                     §§push(null);
                     break;
                  }
                  §§push(_loc5_.terrain[param2]);
                  break;
               }
               §§pop().terrain = §§pop();
               if(!_loc6_)
               {
                  break;
               }
               §^>§ = Number(Math.POSITIVE_INFINITY);
               §^]§ = param1.§9_§.tileWidth;
            }
            §[!F§ = new IntMap();
            break;
         }
         §>!J§(2,param3);
         §>!J§(1,param4);
      }
      
      public function update(param1:§8R§) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = null as Bridge;
         var _loc3_:* = NaN;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = NaN;
         loop0:
         while(true)
         {
            if(!_loc7_)
            {
               if(§1§ != null)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           loop12:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc6_)
                                    {
                                       §§push(false);
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       if(terrain == null)
                                       {
                                          break loop13;
                                       }
                                       if(!_loc6_)
                                       {
                                          break loop12;
                                       }
                                       §§pop();
                                       if(_loc7_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    §§push(terrain.§ !&§ == null);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    break loop12;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc7_)
                                 {
                                    break loop12;
                                 }
                                 break;
                              }
                              if(!§§pop())
                              {
                                 break loop1;
                              }
                              if(!_loc6_)
                              {
                                 break loop1;
                              }
                              §§pop();
                              if(!_loc6_)
                              {
                                 break loop0;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop13;
                        }
                        §§push(terrain.§5!J§ < 3600);
                        if(!_loc7_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        addr00bc:
                        §#"§(false);
                     }
                     break;
                  }
                  _loc2_ = bridge;
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§push(param1.strength);
                              if(_loc6_)
                              {
                                 §§push(_loc2_.§+!M§);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + _loc2_.§8D§);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_)
                                    {
                                       break loop4;
                                    }
                                 }
                              }
                              _loc3_ = §§pop();
                              if(_loc7_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(_loc3_);
                           break loop4;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!_loc7_)
                           {
                              break loop3;
                           }
                           §§goto(addr012f);
                        }
                        else
                        {
                           _loc4_ = §,E§;
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push((_loc4_.x - param1.x) * (_loc4_.x - param1.x));
                                          §§push(_loc4_.y - param1.y);
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_.y - param1.y);
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop() * §§pop());
                                             if(_loc6_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc6_)
                                                {
                                                   break loop8;
                                                }
                                             }
                                             §§push(_loc4_.z);
                                             if(!_loc6_)
                                             {
                                                break loop7;
                                             }
                                          }
                                          §§push(param1.z);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             §§push(_loc4_.z);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() - param1.z);
                                             }
                                          }
                                          break;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!_loc6_)
                                       {
                                          break loop7;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       §§goto(addr01cc);
                                    }
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       addr01cc:
                                       §§push(_loc5_);
                                       §§push(170569);
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       break;
                                    }
                                    §§goto(addr01e1);
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       addr01e1:
                                       §#"§(false);
                                       if(_loc6_)
                                       {
                                       }
                                    }
                                    break;
                                 }
                                 §§push(§1§.model);
                                 §§push(0.05);
                                 if(_loc6_)
                                 {
                                    §§push(1);
                                    §§push(_loc5_);
                                    if(_loc6_)
                                    {
                                       §§push(170569);
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(1);
                                       §§push(1);
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(§^>§);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(0.03333333333333333);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + 1);
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop() / §§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §§push(0.6499999999999999);
                                          }
                                          §§push(§§pop() * §§pop());
                                          break;
                                       }
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§pop().§0!9§(§§pop());
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §#"§(true);
                              break;
                           }
                        }
                     }
                     §§push(§^>§);
                     break loop5;
                  }
                  §#"§(false);
                  addr012f:
                  return;
               }
               return;
            }
            §§goto(addr00bc);
         }
      }
      
      public function §#"§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(§1§ == null)
                        {
                           §§push(param1);
                           break;
                        }
                        if(_loc2_)
                        {
                           break loop2;
                        }
                        §§push(§1§.model.visible);
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        if(§§pop() == param1)
                        {
                           break loop0;
                        }
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §1§.model.§#"§(param1);
                     §§push(param1);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           break loop2;
                        }
                        break loop0;
                     }
                     break;
                  }
                  §§goto(addr009e);
               }
               §1§.model.update(0);
               if(_loc3_)
               {
                  break loop0;
               }
               §§goto(addr0096);
            }
            return §§pop();
         }
         §1§.§2!9§ = param1;
         addr0096:
         §§push(param1);
         if(!_loc2_)
         {
            break loop1;
         }
         addr009e:
         return §§pop();
      }
      
      public function §>!J§(param1:int, param2:§#d§) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               if(param2 == null)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
               §[!F§.§1!R§(param1,param2);
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(param2.§[!F§);
            §§push(§>5§.§""§(param1));
            if(!_loc3_)
            {
               §§push(int(§§pop()));
            }
            §§pop().§1!R§(§§pop(),this);
            break;
         }
      }
      
      public function §6L§(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(§[!F§.get(param1) == null)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§[!F§.get(param1).§^>§ > 30);
                  if(_loc2_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr009a);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §[!F§.get(param1).§^>§ = 30;
         addr009a:
      }
      
      public function § x§(param1:§#d§, param2:Vector.<§#d§>) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         if(param1 != null)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(param1.§^>§);
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(§^>§);
                           if(_loc5_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 break loop3;
                              }
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                              §§push(param1.§^>§);
                              if(_loc4_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§^>§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + param1.§^]§);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                           }
                           if(§§pop() > §§pop())
                           {
                              §§push(param1);
                              §§push(§^>§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + param1.§^]§);
                                 if(_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§pop().§^>§ = §§pop();
                              if(_loc4_)
                              {
                              }
                              break loop1;
                           }
                           §§push(param1.§^>§);
                           if(_loc5_)
                           {
                              break;
                           }
                           break loop0;
                        }
                     }
                     §§push(Number(§§pop()));
                     break loop0;
                  }
               }
               param2.push(param1);
               break loop3;
            }
            _loc3_ = §§pop();
            if(!_loc4_)
            {
               while(true)
               {
                  §§push(param1);
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     §§push(0.25);
                     if(!_loc4_)
                     {
                        §§push(§^>§);
                        if(_loc5_)
                        {
                           §§push(§§pop() - _loc3_);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§^>§ = §§pop();
               break loop1;
            }
         }
      }
      
      public function §40§(param1:Vector.<§#d§>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(§4u§ == §^>§)
            {
               return;
            }
            §4u§ = §^>§;
         }
         § x§(§[!F§.get(2),param1);
         § x§(§[!F§.get(0),param1);
         if(_loc2_)
         {
            § x§(§[!F§.get(1),param1);
         }
         § x§(§[!F§.get(3),param1);
      }
      
      public function init(param1:§0!E§) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = null as String;
         var _loc4_:* = null as String;
         var _loc5_:* = null as Model;
         var _loc6_:* = null as Vector.<Model>;
         var _loc7_:* = null as Vector.<Number>;
         var _loc8_:* = null as §!!V§;
         var _loc9_:* = null as PositionData3D;
         var _loc10_:* = null as Point3D;
         var _loc11_:* = null as Point3D;
         loop0:
         while(true)
         {
            §§push(false);
            if(terrain != null)
            {
               §§pop();
               §§push(terrain.§@p§.§4!5§ != §-n§.§6!P§);
               if(_loc12_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§"=§.§,n§[terrain.§@p§.§<T§]);
                           if(_loc13_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc12_)
                                 {
                                    _loc3_ = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!_loc12_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc13_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                             if(_loc13_)
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc13_)
                                                {
                                                   §§push(_loc4_);
                                                }
                                                else
                                                {
                                                   §§goto(addr0165);
                                                }
                                             }
                                             if(§§pop() == "battery")
                                             {
                                                break loop14;
                                             }
                                          }
                                          §§push(_loc4_);
                                          §§push("bridge");
                                          if(!_loc12_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                break loop14;
                                             }
                                             §§push(_loc4_);
                                             if(!_loc13_)
                                             {
                                                break loop6;
                                             }
                                             §§push("crumbling");
                                             if(_loc12_)
                                             {
                                                continue loop7;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                addr0122:
                                                §§push(_loc4_);
                                                §§push("fast");
                                                continue loop7;
                                             }
                                             §§goto(addr0103);
                                          }
                                          else
                                          {
                                             §§goto(addr01f0);
                                          }
                                       }
                                    }
                                    §§push(true);
                                    if(_loc13_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc12_)
                                       {
                                          break loop1;
                                       }
                                       addr0103:
                                       §§push(true);
                                       break loop0;
                                    }
                                    break;
                                 }
                                 §§goto(addr0233);
                              }
                              §§goto(addr0297);
                           }
                           §§goto(addr0122);
                        }
                        §§push("slow");
                        break loop10;
                     }
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              §^>§ = 0;
                              if(_loc12_)
                              {
                                 break;
                              }
                              §6L§(3);
                              if(_loc13_)
                              {
                                 §§push(false);
                                 if(_loc13_)
                                 {
                                    _loc2_ = Boolean(§§pop());
                                    if(_loc13_)
                                    {
                                       break loop1;
                                    }
                                    §§goto(addr01f4);
                                 }
                                 else
                                 {
                                    §§goto(addr024d);
                                 }
                              }
                           }
                           else if(_loc4_ != "left")
                           {
                              §§push(_loc4_);
                              if(!_loc12_)
                              {
                                 if(§§pop() != "ramp")
                                 {
                                    if(!_loc12_)
                                    {
                                       break loop7;
                                    }
                                    §§goto(addr01f4);
                                 }
                                 §§goto(addr01b7);
                              }
                              §§goto(addr01b0);
                           }
                           addr0165:
                           §^>§ = 0;
                           if(_loc13_)
                           {
                              §6L§(2);
                              if(_loc13_)
                              {
                                 §§push(false);
                                 if(_loc13_)
                                 {
                                    _loc2_ = Boolean(§§pop());
                                    if(_loc13_)
                                    {
                                    }
                                    break loop1;
                                 }
                                 break loop2;
                              }
                              break loop7;
                           }
                           break loop1;
                        }
                        §§push(false);
                        if(_loc13_)
                        {
                           _loc2_ = Boolean(§§pop());
                           if(!_loc12_)
                           {
                              break loop1;
                           }
                           break loop11;
                        }
                     }
                     addr01b0:
                     while(true)
                     {
                        if(_loc4_ != "steepRamp")
                        {
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push("right");
                                    if(_loc13_)
                                    {
                                       addr01f0:
                                       if(§§pop() == §§pop())
                                       {
                                          addr01f4:
                                          §^>§ = 0;
                                          if(_loc13_)
                                          {
                                             §6L§(0);
                                          }
                                          §§push(false);
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                          §§goto(addr0213);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          if(_loc12_)
                                          {
                                             break loop6;
                                          }
                                          §§push("ruined");
                                          if(_loc12_)
                                          {
                                             break loop10;
                                          }
                                       }
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc4_);
                                       break loop6;
                                    }
                                    if(_loc12_)
                                    {
                                       break loop11;
                                    }
                                    §§push(true);
                                    if(_loc13_)
                                    {
                                       addr024d:
                                       _loc2_ = Boolean(§§pop());
                                       if(_loc13_)
                                       {
                                          §§push(§§findproperty(§^]§));
                                          §§push(§^]§);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() * 0.25);
                                          }
                                          §§pop().§^]§ = §§pop();
                                          if(_loc13_)
                                          {
                                          }
                                       }
                                       break loop1;
                                    }
                                    §§goto(addr0296);
                                 }
                                 §§goto(addr0297);
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              §^>§ = 0;
                              §6L§(1);
                              if(_loc13_)
                              {
                                 addr0297:
                                 _loc2_ = false;
                                 addr0296:
                                 if(_loc12_)
                                 {
                                 }
                              }
                              break loop1;
                           }
                           §^>§ = 0;
                           if(!_loc12_)
                           {
                              break loop8;
                           }
                           break loop1;
                        }
                        §^>§ = bridge.§9_§.tileWidth;
                        §6L§(1);
                        if(!_loc13_)
                        {
                           break loop8;
                        }
                        §§push(true);
                        if(!_loc12_)
                        {
                           _loc2_ = Boolean(§§pop());
                           break loop1;
                        }
                        addr0213:
                        §§push(Boolean(§§pop()));
                        if(!_loc12_)
                        {
                           _loc2_ = §§pop();
                           break loop1;
                        }
                        §§goto(addr02ca);
                        break loop11;
                     }
                     §§goto(addr0478);
                  }
                  else
                  {
                     §§push(true);
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               _loc2_ = §§pop();
               break;
            }
            addr02ca:
            if(_loc2_)
            {
               _loc5_ = param1.§@8§[0];
               _loc6_ = param1.§@8§;
               _loc7_ = _loc5_.vertices.§@!Y§.slice(0,16777215);
               _loc8_ = Type.createInstance(_loc5_.§1Z§.§?"§,[null,_loc7_]);
               if(_loc13_)
               {
                  _loc6_[0] = new Model(_loc8_,_loc5_.indices,_loc5_.§1Z§);
                  while(true)
                  {
                     if(_loc13_)
                     {
                        §1§ = §[C§.§4r§(bridge.§9_§.tunnel,param1);
                        if(!_loc13_)
                        {
                           break;
                        }
                     }
                     §1§.model.§0p§ = 1;
                     break;
                  }
               }
               _loc9_ = bridge.§9_§.layout.§<!C§(§?!'§);
               §1§.§,W§(_loc9_,bridge.§9_§);
               if(_loc13_)
               {
                  var _temp_2:* = §1§.transform.§%!7§;
                  §§push(_temp_2);
                  §§push(_temp_2.z);
                  if(!_loc12_)
                  {
                     §§push(§§pop() + bridge.§9_§.startZ);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().z = §§pop();
                  §1§.reset();
               }
               §#"§(false);
               if(_loc13_)
               {
                  bridge.§9_§.tunnel.§4M§(§1§);
               }
               §,E§ = _loc9_.position;
               _loc10_ = §,E§;
               _loc11_ = §1§.transform.§%!7§;
               while(true)
               {
                  if(!_loc12_)
                  {
                     _loc10_.x = _loc11_.x;
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  _loc10_.y = _loc11_.y;
                  if(!_loc12_)
                  {
                     _loc10_.z = _loc11_.z;
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
                  var _temp_3:* = §,E§;
                  §§push(_temp_3);
                  §§push(_temp_3.z);
                  if(!_loc12_)
                  {
                     §§push(§§pop() + §1§.§[l§);
                     if(_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().z = §§pop();
                  break;
               }
            }
            addr0478:
            return;
         }
         _loc2_ = Boolean(§§pop());
         §§push(§§findproperty(§^]§));
         §§push(§^]§);
         if(!_loc12_)
         {
            §§push(§§pop() * 0.1);
         }
         §§pop().§^]§ = §§pop();
         break loop1;
      }
   }
}

