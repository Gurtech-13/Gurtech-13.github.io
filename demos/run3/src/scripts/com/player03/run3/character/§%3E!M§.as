package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%G§.§ m§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class §>!M§ extends §'5§
   {
      
      public function §>!M§(param1:§6M§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               super(param1);
               if(_loc2_)
               {
                  break;
               }
               §>@§ = 1;
               if(!_loc3_)
               {
                  break;
               }
            }
            length = 0.8;
            break;
         }
      }
      
      override public function §-A§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.§-A§();
            if(_loc3_)
            {
               §"@§.§ !"§ = true;
            }
         }
         var _loc1_:§"B§ = §"@§.transform.§=0§.§+n§();
         var _loc2_:§"B§ = new §"B§();
         _loc2_.x = _loc1_.x;
         if(_loc3_)
         {
            _loc2_.y = _loc1_.y;
            _loc2_.z = _loc1_.z;
            if(_loc3_)
            {
               _loc2_.w = _loc1_.w;
               §"@§.tunnel.§4-§ = _loc2_;
            }
            invert();
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.reset();
            if(_loc2_)
            {
               §"@§.§ !"§ = false;
            }
         }
      }
      
      override public function §2!A§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§push(§-S§);
                        §§push(length);
                        if(_loc3_)
                        {
                           §§push(§§pop() / 2);
                        }
                        if(§§pop() <= §§pop())
                        {
                           break loop1;
                        }
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc2_)
                        {
                           break;
                        }
                        §§push(§"@§.§4!Z§ == 0);
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     break loop2;
                  }
               }
               break;
            }
            §§push(§4!R§);
            §§push(§"@§.tunnel.§4-§);
            §§push(§"@§.transform.§=0§.§+n§());
            §§push(§-S§);
            if(!_loc2_)
            {
               while(true)
               {
                  §§push(length);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / 2);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_)
                  {
                     §§push(param1);
                     break;
                  }
               }
            }
            §§pop().§+!Q§(§§pop(),§§pop(),§§pop(),§"@§.tunnel.§4-§);
            break;
         }
      }
      
      public function invert() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         §§push(§"@§.§]E§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(§"@§.§`!1§());
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         §"@§.§3r§(3.141592653589793,true,true);
         loop1:
         while(true)
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
                        if(!_loc4_)
                        {
                           §§push(§"@§);
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§4!A§(§§pop());
                           §"@§.§-,§ = 0.75;
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§"@§.§4!Z§);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() == 0)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(§"@§);
                                             §§push(§"@§.§&N§);
                                             if(!_loc4_)
                                             {
                                                §§push(-§§pop());
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(§§pop() * 0.8);
                                             break;
                                          }
                                          §§pop().§&!7§(§§pop());
                                       }
                                       §§push(_loc1_);
                                       if(_loc4_)
                                       {
                                          break loop4;
                                       }
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          break loop7;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          §"@§.§+!^§(3.141592653589793);
                                          §§push(§"@§.§`!1§());
                                          break loop6;
                                       }
                                       if(_loc4_)
                                       {
                                          break loop3;
                                       }
                                       §§push(0);
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc4_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc5_)
                                       {
                                          §§push(§"@§);
                                          §§push(3.141592653589793);
                                          if(_loc5_)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(0);
                                                      if(_loc4_)
                                                      {
                                                         break loop10;
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break loop11;
                                                            }
                                                            §§push(_loc1_);
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc1_);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(-§§pop());
                                                            if(_loc5_)
                                                            {
                                                               break loop12;
                                                            }
                                                            addr014b:
                                                            §§push(-1);
                                                            if(_loc5_)
                                                            {
                                                               break loop10;
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr0161);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               addr0130:
                                                               §§push(1);
                                                               if(_loc5_)
                                                               {
                                                               }
                                                               break loop10;
                                                            }
                                                            §§push(_loc1_);
                                                         }
                                                         §§push(_loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         break;
                                                      }
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§goto(addr014b);
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         if(_loc5_)
                                                         {
                                                            break loop10;
                                                         }
                                                      }
                                                      §§goto(addr0161);
                                                   }
                                                   §§goto(addr0130);
                                                }
                                             }
                                             addr0161:
                                             §§push(§§pop() - §§pop() * -§§pop());
                                             break loop11;
                                          }
                                          §§pop().§+!^§(§§pop());
                                          break loop3;
                                       }
                                       break;
                                    }
                                    break loop6;
                                 }
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break loop8;
                              }
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§push(-§§pop());
                              }
                              break loop2;
                           }
                           §§push(Number(§§pop()));
                           if(_loc5_)
                           {
                              _loc3_ = §§pop();
                              §§push(_loc3_);
                              §§push(0);
                              if(!_loc4_)
                              {
                                 break loop7;
                              }
                              break;
                           }
                           break loop4;
                        }
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr01f2);
                  }
                  §§goto(addr01f0);
               }
               §§goto(addr0200);
            }
            §§push(1e-10);
            if(_loc5_)
            {
               if(§§pop() < §§pop())
               {
                  if(!_loc4_)
                  {
                     §§push(Number(Math.random()));
                     break;
                  }
                  break loop3;
               }
               addr01f0:
               addr01f2:
               if(§"@§.§`!1§() > 0)
               {
                  §"@§.§+!^§(-3.141592653589793);
               }
               break loop3;
            }
            §§goto(addr01cf);
         }
         addr01cf:
         if(§§pop() < 0.5)
         {
            §"@§.§+!^§(-3.141592653589793);
            if(_loc5_)
            {
            }
         }
         addr0200:
      }
      
      override public function §2U§() : § m§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  §§push(§"@§.physicsData.onGround);
                  if(!_loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(true);
                           if(_loc1_)
                           {
                              if(§"@§.§4!Z§ == 0)
                              {
                                 if(!_loc1_)
                                 {
                                    break loop1;
                                 }
                                 §§pop();
                                 if(!_loc1_)
                                 {
                                    break loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(§0!1§());
                                    if(_loc1_)
                                    {
                                       §§push(!Boolean(§§pop()));
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        if(§§pop())
                        {
                           invert();
                           break loop0;
                        }
                        §§push(false);
                        §§push(§"@§.physicsData.onGround);
                        if(_loc1_)
                        {
                           §§push(!§§pop());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        §§push(§"@§.§4!Z§ == 0);
                     }
                  }
                  break loop1;
               }
               §§goto(addr00f3);
            }
            if(§§pop())
            {
               while(true)
               {
                  §§push(§"@§);
                  §§push(§"@§.§<!B§());
                  if(!_loc2_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() * 0.7);
                  break;
               }
               §§pop().§%8§(§§pop());
               var _temp_1:* = §"@§;
               §§push(_temp_1);
               §§push(_temp_1.§-,§);
               if(!_loc2_)
               {
                  §§push(§§pop() * 0.9);
               }
               §§pop().§-,§ = §§pop();
            }
            break;
         }
         §"@§.§ !"§ = false;
         addr00f3:
         §"@§.tunnel.§4-§ = null;
         return null;
      }
      
      override public function §0!1§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               while(true)
               {
                  §§push(§"@§.physicsData.onGround);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        if(!§§pop())
                        {
                           §§push(false);
                           break loop0;
                        }
                        if(_loc1_)
                        {
                           break;
                        }
                        §§push(§7o§.controlScheme.§,h§(§`B§));
                     }
                     §§push(!Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  return true;
               }
            }
            §§push(§"@§.§4!Z§ == 0);
            if(!_loc1_)
            {
               return !§§pop();
            }
            break;
         }
         return §§pop();
      }
      
      override public function § A§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §§push(super.§ A§());
               if(_loc2_)
               {
                  break;
               }
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  break;
               }
               if(!§§pop())
               {
                  §§push(false);
                  break;
               }
            }
            §§push(§"@§.§4!Z§ == 0);
            if(_loc1_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
   }
}

