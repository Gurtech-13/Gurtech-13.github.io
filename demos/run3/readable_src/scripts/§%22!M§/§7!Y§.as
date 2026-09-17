package §"!M§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§&r§;
   import §%!Q§.§>K§;
   import §0!"§.§,!Z§;
   import §0!"§.§5n§;
   import §0!"§.§[T§;
   import scenes.Cutscenes;
   import scenes.TheGap;
   import game.§&!K§;
   import §>T§.§-n§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import com.player03.run3.Save;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.events.MouseEvent;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §7!Y§ extends §5n§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public var tile:§[C§;
      
      public var §;!S§:Point3D;
      
      public function §7!Y§(param1:§[C§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     if(param1.§4!5§ == §-n§.§?!W§)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§pop();
                  §§push(param1.§4!5§ == §-n§.§9l§);
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  break;
               }
               if(§§pop())
               {
                  Boot.lastError = new Error();
                  if(_loc3_)
                  {
                     throw new Error("TileCollider only works for tiles!");
                  }
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(param1);
                     §§push(§0!E§.§8!W§);
                     §§push(param1.§0w§);
                     if(!_loc2_)
                     {
                        §§push(2);
                        if(_loc2_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc2_)
                        {
                           §§push(§§pop() * param1.§[l§);
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                        }
                     }
                     §§push(2);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
               §§pop().super(§§pop(),§§pop(),§§pop());
               while(true)
               {
                  if(_loc3_)
                  {
                     tile = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §;!S§ = new Point3D(0,0,0);
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break loop1;
         }
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(true);
                  if(!_loc4_)
                  {
                     if(param2)
                     {
                        break loop0;
                     }
                     if(_loc4_)
                     {
                        break loop0;
                     }
                     §§pop();
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(param3);
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop0;
               }
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §@t§();
               }
            }
            break loop1;
         }
      }
      
      override public function §1%§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:Quaternion = undefined) : Point3D
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc8_:* = NaN;
         param5 = super.§1%§(param1,param2,param3,param4,param5,param6);
         var _loc7_:Number = Number(param5.x);
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(_loc7_);
                           if(_loc9_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 break;
                              }
                              if(!_loc10_)
                              {
                                 while(true)
                                 {
                                    §§push(tile.axis1.§2O§(param5));
                                    if(_loc9_)
                                    {
                                       _loc8_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          break loop6;
                                       }
                                       §§push(true);
                                       §§push(_loc8_);
                                       if(_loc9_)
                                       {
                                          while(true)
                                          {
                                             §§push(tile.§0w§);
                                             if(_loc9_)
                                             {
                                                §§push(tile.§0w§);
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_)
                                                {
                                                   break loop2;
                                                }
                                             }
                                             if(§§pop() <= §§pop())
                                             {
                                                §§pop();
                                                §§push(_loc8_);
                                                if(_loc10_)
                                                {
                                                   break loop0;
                                                }
                                                §§push(tile.§0w§);
                                                if(_loc9_)
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * tile.§0w§);
                                                   }
                                                }
                                                §§push(§§pop() < §§pop());
                                                if(_loc10_)
                                                {
                                                   break loop5;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr0150);
                                       }
                                       §§goto(addr0137);
                                    }
                                    §§goto(addr016f);
                                 }
                                 §§goto(addr0179);
                              }
                              else
                              {
                                 §§goto(addr010b);
                              }
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr019b);
                     }
                     §§goto(addr0187);
                  }
                  §§goto(addr0178);
               }
               §§goto(addr0157);
            }
            loop3:
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        break loop3;
                     }
                     param5.x = Number(Math.NaN);
                     if(!_loc9_)
                     {
                        break;
                     }
                     param5.y = Number(Math.NaN);
                     if(_loc10_)
                     {
                        break loop3;
                     }
                     param5.z = Number(Math.NaN);
                  }
                  §§push(tile.axis2.§2O§(param5));
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break loop0;
               }
               §§goto(addr0191);
            }
            §§goto(addr017d);
         }
         _loc8_ = §§pop();
         addr0179:
         §§push(true);
         if(!_loc10_)
         {
            addr0137:
            §§push(_loc8_);
            §§push(tile.§[l§);
            if(_loc9_)
            {
               addr0150:
               §§push(§§pop() * tile.§[l§);
               if(_loc9_)
               {
                  addr0157:
                  §§push(§§pop() * 4);
               }
            }
            if(§§pop() <= §§pop())
            {
               §§pop();
               addr016f:
               §§push(_loc8_ < 0);
               if(_loc9_)
               {
                  addr0178:
                  §§push(Boolean(§§pop()));
               }
            }
         }
         if(§§pop())
         {
            addr017d:
            param5.x = Number(Math.NaN);
            addr0187:
            param5.y = Number(Math.NaN);
            addr0191:
            param5.z = Number(Math.NaN);
         }
         addr019b:
         return param5;
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc3_:* = null as §[T§;
         var _loc4_:* = null as Point3D;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = null as Point3D;
         if(!_loc11_)
         {
            if(param1 is §[T§)
            {
               if(!_loc11_)
               {
                  _loc3_ = param1;
                  _loc4_ = param1.§!K§.transform.§2!§();
                  _loc5_ = tile.axis1.§2O§(_loc4_);
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc12_)
                           {
                              while(true)
                              {
                                 §§push(tile.§0w§);
                                 §§push(tile.§0w§);
                                 if(_loc12_)
                                 {
                                    if(§§pop() > §§pop() * §§pop())
                                    {
                                       §§push(1);
                                       if(_loc12_)
                                       {
                                          break;
                                       }
                                       break loop12;
                                    }
                                    §§push(_loc5_);
                                    §§push(-tile.§0w§);
                                    §§push(tile.§0w§);
                                    if(!_loc12_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc12_)
                                 {
                                    break loop0;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(0);
                                    break;
                                 }
                                 if(_loc12_)
                                 {
                                    §§push(-1);
                                    break;
                                 }
                                 §§push(tile.axis2.§2O§(_loc4_));
                              }
                              _loc6_ = §§pop();
                              §§goto(addr00ea);
                           }
                           §§push(Number(§§pop()));
                           if(!_loc11_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc12_)
                              {
                                 _loc7_ = §§pop();
                                 §§push(_loc7_);
                              }
                           }
                           §§push(tile.§[l§);
                           if(!_loc11_)
                           {
                              §§push(tile.§[l§);
                              break loop1;
                           }
                           §§goto(addr0126);
                        }
                        §§goto(addr0149);
                     }
                     addr0126:
                     §§push(§§pop() * §§pop() * 4);
                     break;
                  }
                  if(§§pop() > §§pop())
                  {
                     addr0149:
                     §§push(1);
                  }
                  else if(_loc7_ < 0)
                  {
                     §§goto(addr0149);
                     §§push(-1);
                  }
                  else
                  {
                     §§push(0);
                     if(_loc12_)
                     {
                        §§goto(addr0149);
                     }
                  }
                  _loc8_ = §§pop();
                  if(!_loc11_)
                  {
                     §§push(false);
                     if(_loc12_)
                     {
                        if(_loc6_ == 0)
                        {
                           if(_loc12_)
                           {
                              §§pop();
                              §§push(_loc8_ == 0);
                              if(_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        super.§&D§(param1,param2);
                     }
                     else
                     {
                        _loc9_ = §;!S§;
                        _loc10_ = tile.axis1.origin;
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc11_)
                              {
                                 _loc9_.x = _loc10_.x;
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 _loc9_.y = _loc10_.y;
                                 if(_loc11_)
                                 {
                                    break loop2;
                                 }
                                 _loc9_.z = _loc10_.z;
                                 § i§.§%r§ = false;
                                 if(!_loc12_)
                                 {
                                    break loop2;
                                 }
                              }
                              param1.§ i§.§%r§ = false;
                              if(_loc12_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                §§push(0);
                                                if(_loc12_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push(tile.§'!_§);
                                                      §§push(1);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc12_)
                                                         {
                                                            if(§§pop() != 0)
                                                            {
                                                               return;
                                                            }
                                                            tile.axis1.§>!D§(§;!S§,tile.§0w§,§;!S§);
                                                            if(_loc12_)
                                                            {
                                                               break loop2;
                                                            }
                                                            break loop9;
                                                         }
                                                         §§goto(addr0328);
                                                      }
                                                      §§goto(addr0315);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc6_);
                                                      §§push(0);
                                                      if(_loc11_)
                                                      {
                                                         break loop7;
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(tile.axis1);
                                                            §§push(§;!S§);
                                                            if(_loc12_)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!_loc11_)
                                                               {
                                                                  if(§§pop() >= 0)
                                                                  {
                                                                     addr02e5:
                                                                     §§push(Number(Math.sqrt(_loc5_)));
                                                                     if(_loc12_)
                                                                     {
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(Number(Math.sqrt(-_loc5_)));
                                                                  if(!_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(-§§pop());
                                                               break;
                                                            }
                                                            §§goto(addr02e5);
                                                         }
                                                         §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                                         break loop2;
                                                      }
                                                      §§push(tile.§'!_§);
                                                      if(!_loc12_)
                                                      {
                                                         break loop6;
                                                      }
                                                      §§push(2);
                                                   }
                                                }
                                                §§push(§§pop() & §§pop());
                                                if(_loc11_)
                                                {
                                                   break loop8;
                                                }
                                                if(§§pop() == 0)
                                                {
                                                   §§push(tile.axis1);
                                                   §§push(§;!S§);
                                                   §§push(tile.§0w§);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                                   if(!_loc11_)
                                                   {
                                                      break loop2;
                                                   }
                                                   break loop9;
                                                }
                                                if(_loc12_)
                                                {
                                                   return;
                                                }
                                                §§goto(addr0384);
                                             }
                                             §§goto(addr038d);
                                          }
                                       }
                                       §§goto(addr0378);
                                    }
                                    §§goto(addr0392);
                                 }
                                 §§goto(addr0313);
                              }
                              break loop9;
                           }
                           _loc3_.§!z§(§;!S§,this);
                        }
                        addr0313:
                        addr0315:
                        if(_loc8_ > 0)
                        {
                           if(!_loc12_)
                           {
                              break loop3;
                           }
                           addr0328:
                           §§push(tile.§'!_§ & 4);
                           if(!_loc11_)
                           {
                              if(§§pop() != 0)
                              {
                                 if(_loc12_)
                                 {
                                    return;
                                 }
                                 break loop3;
                              }
                              §§push(tile.axis2);
                              §§push(§;!S§);
                              §§push(tile.§[l§);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() * 2);
                              }
                              §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                              if(_loc12_)
                              {
                              }
                              break loop3;
                           }
                           addr038d:
                           addr0392:
                           if((§§pop() & 8) == 0)
                           {
                              tile.axis2.§>!D§(§;!S§,0,§;!S§);
                              break loop3;
                           }
                           if(_loc12_)
                           {
                              return;
                           }
                        }
                        else
                        {
                           addr0378:
                           if(_loc8_ >= 0)
                           {
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(tile.axis2);
                                    §§push(§;!S§);
                                    if(_loc12_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       if(§§pop() < 0)
                                       {
                                          §§push(Number(Math.sqrt(-_loc7_)));
                                          if(_loc12_)
                                          {
                                             break loop4;
                                          }
                                          break;
                                       }
                                    }
                                    §§push(Number(Math.sqrt(_loc7_)));
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    break loop4;
                                 }
                                 §§pop().§>!D§(§§pop(),§§pop(),§;!S§);
                                 break loop3;
                              }
                              §§push(-§§pop());
                              break loop5;
                           }
                           if(_loc12_)
                           {
                              addr0384:
                              §§goto(addr038d);
                              §§push(tile.§'!_§);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               super.§&D§(param1,param2);
            }
         }
      }
   }
}

