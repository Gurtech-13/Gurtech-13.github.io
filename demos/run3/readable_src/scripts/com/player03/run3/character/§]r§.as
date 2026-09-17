package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §"!M§.§9!5§;
   import §%!Z§.§&!S§;
   import §-d§.§-!'§;
   import §-d§.§1M§;
   import §2!"§.Spritesheet;
   import §=w§.§@[§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class §]r§ implements §@[§
   {
      
      public var spritesheet:Spritesheet;
      
      public var §?!<§:§1M§;
      
      public var § !B§:CharacterBase;
      
      public var § R§:Object;
      
      public var §9!U§:Object;
      
      public var §^§:§1M§;
      
      public var animations:§-!'§;
      
      public var § ^§:Number;
      
      public function §]r§(param1:CharacterBase, param2:Spritesheet, param3:§-!'§)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         § R§ = null;
         §9!U§ = null;
         §^§ = null;
         if(_loc4_)
         {
            § !B§ = param1;
         }
         spritesheet = param2;
         animations = param3;
         if(!_loc5_)
         {
            reset();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc5_:* = null as §1M§;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = null as CharacterBase;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = null as §1M§;
         §§push(§ !B§.§`!1§());
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(§ !B§.§<!B§());
            if(_loc14_)
            {
               §§push(Number(§§pop()));
               if(!_loc14_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(§ !B§.§;H§());
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
               if(!_loc14_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc13_)
               {
                  if(§^§ != null)
                  {
                     if(_loc14_)
                     {
                        _loc5_ = §^§;
                        break;
                     }
                     break loop2;
                  }
                  while(true)
                  {
                     §§push(§ !B§.physicsData.onGround);
                     if(!_loc13_)
                     {
                        §§push(!§§pop());
                        if(_loc14_)
                        {
                           if(§§pop())
                           {
                              if(!_loc14_)
                              {
                                 break loop2;
                              }
                              _loc8_ = § !B§;
                              loop16:
                              while(true)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc13_)
                                       {
                                          §§push(_loc8_.level.unpausedTime - _loc8_.physicsData.§&!>§);
                                          if(_loc14_)
                                          {
                                             §§push(0.2);
                                             if(_loc14_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(!§ !B§.§?`§.active);
                                                      if(_loc14_)
                                                      {
                                                         _loc7_ = Boolean(§§pop());
                                                         if(!_loc14_)
                                                         {
                                                            break loop2;
                                                         }
                                                         §§push(_loc7_);
                                                         if(!_loc14_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         §§push(false);
                                                         if(_loc14_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         break loop16;
                                                      }
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(!_loc13_)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc14_)
                                                                     {
                                                                        if(§ !B§.§9!+§ == null)
                                                                        {
                                                                           break loop22;
                                                                        }
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           §§push(§ !B§.§!0§);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc13_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 break loop23;
                                                                              }
                                                                              if(!_loc14_)
                                                                              {
                                                                                 break loop23;
                                                                              }
                                                                              §§pop();
                                                                              §§push(false);
                                                                              §§push(§ !B§.§!0§);
                                                                           }
                                                                           §§push(1);
                                                                           break;
                                                                        }
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           break loop21;
                                                                        }
                                                                     }
                                                                     §§pop();
                                                                     break loop19;
                                                                  }
                                                                  §§goto(addr01b0);
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  break loop20;
                                                               }
                                                               §§pop();
                                                               if(!_loc14_)
                                                               {
                                                                  break loop2;
                                                               }
                                                               §§push(§ !B§.§9!+§.§@!B§ is §9!5§);
                                                            }
                                                            addr01b0:
                                                            §§push(Boolean(§§pop()));
                                                            break loop22;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         break;
                                                      }
                                                   }
                                                   §§push(§ !B§.§9!+§.§5!J§ >= 0);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   break loop21;
                                                }
                                                §§push(false);
                                                if(!_loc13_)
                                                {
                                                   _loc7_ = §§pop();
                                                   §§goto(addr0138);
                                                }
                                                §§push(!§§pop());
                                                if(_loc14_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr01d8:
                                                      §§push(§ !B§.physicsData.§8h§);
                                                      if(!_loc13_)
                                                      {
                                                         _loc6_ = Boolean(§§pop());
                                                         break loop2;
                                                      }
                                                      break loop16;
                                                   }
                                                   §§push(true);
                                                   if(!_loc14_)
                                                   {
                                                      break loop16;
                                                   }
                                                }
                                                _loc6_ = §§pop();
                                                break loop2;
                                             }
                                             break loop17;
                                          }
                                          break;
                                       }
                                       §§goto(addr01d8);
                                    }
                                    §§goto(addr03aa);
                                 }
                                 §§goto(addr03ad);
                              }
                              _loc6_ = §§pop();
                              if(!_loc13_)
                              {
                                 break loop2;
                              }
                              §§goto(addr03b1);
                           }
                           else
                           {
                              §§push(true);
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  _loc6_ = §§pop();
                  break loop2;
               }
               continue loop17;
            }
            loop25:
            while(true)
            {
               loop26:
               while(true)
               {
                  §§push(§ !B§.tunnel.§;!E§);
                  if(!_loc13_)
                  {
                     loop27:
                     while(true)
                     {
                        loop28:
                        while(true)
                        {
                           loop29:
                           while(true)
                           {
                              loop32:
                              while(true)
                              {
                                 if(§§pop() <= 0)
                                 {
                                    if(!_loc14_)
                                    {
                                       break loop26;
                                    }
                                    if(§9!U§ == null)
                                    {
                                       loop33:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(false);
                                             §§push(false);
                                             if(!_loc13_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(0);
                                                      if(_loc13_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            break loop33;
                                                         }
                                                         §§push(_loc4_);
                                                         if(_loc13_)
                                                         {
                                                            addr0448:
                                                            §§push(-§§pop());
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc13_)
                                                         {
                                                            §§goto(addr0448);
                                                         }
                                                      }
                                                   }
                                                   §§push(20);
                                                   break;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   break;
                                                }
                                                if(!_loc14_)
                                                {
                                                   break loop33;
                                                }
                                             }
                                             §§pop();
                                             if(_loc14_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc14_)
                                                {
                                                   if(§§pop() >= 0)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc13_)
                                                      {
                                                         addr047f:
                                                         §§push(-§§pop());
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr047f);
                                                      }
                                                   }
                                                }
                                                §§push(§§pop() < _loc5_.§]!Y§);
                                                if(!_loc13_)
                                                {
                                                   break loop33;
                                                }
                                                break;
                                             }
                                             break loop32;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§pop();
                                                if(_loc13_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc5_ == animations.run);
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   break;
                                                }
                                                break loop29;
                                             }
                                             §§push(§§findproperty(§ ^§));
                                             §§push(§ ^§);
                                             if(!_loc13_)
                                             {
                                                §§push(param1);
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop() * _loc5_.fps);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc13_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§pop().§ ^§ = §§pop();
                                             if(_loc13_)
                                             {
                                                break loop27;
                                             }
                                          }
                                          § ^§ = 0;
                                          if(_loc13_)
                                          {
                                             break loop28;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop34;
                                    }
                                    § ^§ = §9!U§;
                                 }
                                 §§push(§ !B§.§4U§);
                                 if(!_loc13_)
                                 {
                                    §§push(0.3);
                                    if(!_loc13_)
                                    {
                                       loop37:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§push(0);
                                                if(!_loc14_)
                                                {
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                if(_loc13_)
                                                {
                                                   break loop37;
                                                }
                                                _loc2_ = §§pop();
                                             }
                                             if(§9!U§ == null)
                                             {
                                                if(§?!<§ != _loc5_)
                                                {
                                                   break loop28;
                                                }
                                                §§push(false);
                                                if(_loc14_)
                                                {
                                                   if(_loc5_ == animations.run)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         §§goto(addr05bd);
                                                      }
                                                   }
                                                }
                                                §§goto(addr05db);
                                             }
                                             §§goto(addr0607);
                                          }
                                          §§goto(addr05cc);
                                       }
                                       §§goto(addr05cb);
                                    }
                                    §§goto(addr0572);
                                 }
                                 §§goto(addr0570);
                              }
                              §§goto(addr05da);
                           }
                           §§push(Number(Math.random()));
                           if(!_loc13_)
                           {
                              addr0572:
                              addr0570:
                              §§push(§§pop() < 0.5);
                              if(_loc14_)
                              {
                                 §§goto(addr0579);
                              }
                              §§goto(addr057a);
                           }
                        }
                        § ^§ = 0;
                        while(true)
                        {
                           §§push(false);
                           if(_loc14_)
                           {
                              if(_loc5_ == animations.run)
                              {
                                 while(true)
                                 {
                                    if(!_loc13_)
                                    {
                                       §§pop();
                                       if(_loc14_)
                                       {
                                          break loop29;
                                       }
                                       break loop25;
                                    }
                                    addr0579:
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                              }
                              addr057a:
                              if(§§pop())
                              {
                                 if(_loc14_)
                                 {
                                    § ^§ = animations.run.center.length / 2;
                                 }
                                 else
                                 {
                                    addr05df:
                                    §§push(§§findproperty(§ ^§));
                                    §§push(§ ^§);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() - _loc5_.center.length);
                                    }
                                    §§pop().§ ^§ = §§pop();
                                 }
                              }
                           }
                           else
                           {
                              addr05bd:
                              §§pop();
                              §§push(§ ^§);
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(int(§§pop()) >= _loc5_.center.length);
                              if(!_loc13_)
                              {
                                 addr05da:
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 §§goto(addr05df);
                              }
                           }
                           addr0607:
                           if(§ R§ != null)
                           {
                              break loop27;
                           }
                           break loop25;
                        }
                     }
                  }
                  _loc2_ = §§pop();
                  break loop25;
               }
               return;
            }
            _loc5_.§-!P§(spritesheet,int(§ ^§),_loc2_);
            §?!<§ = _loc5_;
            break loop26;
         }
         if(_loc6_)
         {
            _loc8_ = § !B§;
            loop4:
            while(true)
            {
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
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
                                    §§push(_loc8_.level.unpausedTime - _loc8_.physicsData.§'![§);
                                    if(_loc14_)
                                    {
                                       if(§§pop() < 0.3)
                                       {
                                          §§push(!§ !B§.§@y§(0.5235987755982988));
                                          if(!_loc14_)
                                          {
                                             break loop11;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc14_)
                                          {
                                             break loop11;
                                          }
                                          _loc10_ = §§pop();
                                          if(!_loc14_)
                                          {
                                             break loop10;
                                          }
                                       }
                                       else
                                       {
                                          §§push(false);
                                          if(_loc13_)
                                          {
                                             break loop11;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc14_)
                                          {
                                             continue loop8;
                                          }
                                          _loc10_ = §§pop();
                                       }
                                       §§push(_loc10_);
                                       if(_loc13_)
                                       {
                                          continue loop8;
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             break loop12;
                                          }
                                          §§push(§?!<§ == animations.§1p§);
                                          if(!_loc14_)
                                          {
                                             break loop11;
                                          }
                                          _loc9_ = §§pop();
                                          if(!_loc14_)
                                          {
                                             break loop10;
                                          }
                                       }
                                       else
                                       {
                                          §§push(false);
                                          if(!_loc14_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc14_)
                                          {
                                             break loop13;
                                          }
                                          _loc9_ = §§pop();
                                       }
                                       §§push(_loc9_);
                                       if(!_loc14_)
                                       {
                                          break loop6;
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(false);
                                          continue loop8;
                                       }
                                       if(!_loc14_)
                                       {
                                          break loop4;
                                       }
                                       §§push(§ ^§);
                                    }
                                    §§push(§§pop() > 5);
                                    if(!_loc13_)
                                    {
                                       break loop6;
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr0319);
                              }
                              §§goto(addr037d);
                           }
                           §§goto(addr037f);
                        }
                        §§goto(addr0300);
                     }
                     §§goto(addr0310);
                  }
                  addr0300:
                  _loc7_ = Boolean(§§pop());
                  break loop10;
               }
               _loc7_ = Boolean(§§pop());
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc13_)
                        {
                           addr0310:
                           §§push(_loc7_);
                           if(_loc14_)
                           {
                              addr0319:
                              if(§§pop())
                              {
                                 break loop4;
                              }
                              if(§?!<§ == animations.land)
                              {
                                 addr0342:
                                 _loc12_ = §?!<§;
                                 if(!_loc13_)
                                 {
                                    §§push(int(§ ^§) < _loc12_.center.length);
                                    if(!_loc13_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc13_)
                                       {
                                          _loc11_ = §§pop();
                                          if(_loc14_)
                                          {
                                             break;
                                          }
                                          break loop7;
                                       }
                                    }
                                    break loop8;
                                 }
                                 break loop7;
                              }
                              §§push(false);
                           }
                           addr037d:
                           _loc11_ = §§pop();
                           break;
                        }
                        §§goto(addr0342);
                     }
                     addr037f:
                     §§push(_loc11_);
                     break;
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  _loc5_ = animations.run;
                  break loop3;
               }
               _loc5_ = animations.land;
               break loop3;
            }
            _loc5_ = animations.land;
            break loop3;
         }
         addr03ad:
         addr03aa:
         if(_loc3_ > -10)
         {
            addr03b1:
            _loc5_ = animations.§1p§;
            break loop3;
         }
         _loc5_ = animations.jump;
         break loop3;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §?!<§ = animations.§1p§;
         while(true)
         {
            if(_loc1_)
            {
               §?!<§.§-!P§(spritesheet,0);
               § ^§ = 0;
               if(!_loc1_)
               {
                  break;
               }
               §9!U§ = null;
               §^§ = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            § R§ = null;
            break;
         }
      }
   }
}

