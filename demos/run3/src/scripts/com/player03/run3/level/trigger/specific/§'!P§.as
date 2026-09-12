package com.player03.run3.level.trigger.specific
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§[!H§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §'!P§ implements §[!H§
   {
      
      public var cameraRotation:§"B§;
      
      public function §'!P§()
      {
      }
      
      public function update(param1:§6M§, param2:Number) : Boolean
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:* = null as §"B§;
         var _loc5_:* = null as §"B§;
         var _loc6_:* = null as Point3D;
         var _loc7_:Number = NaN;
         §§push(param1.transform.position.z);
         if(!_loc8_)
         {
            §§push(§§pop() - param1.§73§.startZ);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc8_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc9_)
                     {
                        loop8:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(2000);
                              if(_loc9_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       §§push(param1.§"!+§);
                                       if(!_loc8_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(2000);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(17);
                                                }
                                                §§push(§§pop() / §§pop());
                                                break;
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    §§pop().§"!+§ = §§pop();
                                    if(_loc8_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 if(param1.§4!Z§ != 0)
                                 {
                                    if(_loc9_)
                                    {
                                       return true;
                                    }
                                    break;
                                 }
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    break loop8;
                                 }
                                 §§push(9000);
                                 if(!_loc9_)
                                 {
                                    break loop2;
                                 }
                              }
                              if(§§pop() > §§pop())
                              {
                                 break;
                              }
                              §§push(_loc3_);
                              break loop8;
                           }
                           if(cameraRotation == null)
                           {
                              addr00d1:
                              _loc4_ = param1.transform.§=0§.§+n§();
                              _loc5_ = new §"B§();
                              if(!_loc8_)
                              {
                                 _loc5_.x = _loc4_.x;
                                 if(_loc9_)
                                 {
                                    _loc5_.y = _loc4_.y;
                                    if(_loc9_)
                                    {
                                       _loc5_.z = _loc4_.z;
                                       if(_loc9_)
                                       {
                                          _loc5_.w = _loc4_.w;
                                          if(!_loc9_)
                                          {
                                             break loop0;
                                          }
                                       }
                                    }
                                    cameraRotation = _loc5_;
                                 }
                              }
                           }
                           break loop0;
                        }
                     }
                     break loop8;
                  }
                  if(§§pop() > §§pop())
                  {
                     break;
                  }
                  cameraRotation = null;
                  §§goto(addr0323);
               }
               loop3:
               while(true)
               {
                  §§push(param1);
                  §§push(0);
                  §§push(-12);
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(4000);
                        if(!_loc8_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(5000);
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc9_)
                        {
                           break;
                        }
                        break loop3;
                     }
                  }
                  §§push(param1.tunnel.§6!=§());
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc9_)
                     {
                        §§push(param1.§<!B§());
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc8_)
                           {
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc8_)
                                       {
                                          if(param1.transform.position.y >= -150)
                                          {
                                             break loop5;
                                          }
                                          if(_loc9_)
                                          {
                                             §§pop();
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             §§push(param1.§<!B§());
                                             if(!_loc9_)
                                             {
                                                break loop6;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc9_)
                                             {
                                                break loop6;
                                             }
                                             §§push(§§pop() < 0);
                                             if(_loc8_)
                                             {
                                                break loop5;
                                             }
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop5;
                                    }
                                    §§goto(addr02f8);
                                 }
                              }
                              if(!§§pop())
                              {
                                 §§push(0.4);
                                 break loop6;
                              }
                              if(!_loc8_)
                              {
                                 addr02f8:
                                 §§push(4);
                                 if(_loc8_)
                                 {
                                 }
                                 break loop6;
                              }
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
               §§pop().§'I§(§§pop(),§§pop() - §§pop());
               §§goto(addr0323);
            }
            §§goto(addr00d1);
         }
         param1.§!C§.§4-§ = cameraRotation;
         _loc6_ = param1.transform.§2!§();
         loop12:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  _loc7_ = -Number(Math.atan2(_loc6_.y,_loc6_.x)) + 3.141592653589793;
                  §§push(param1.§9@§);
                  §§push(0);
                  if(_loc8_)
                  {
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     break loop12;
                  }
                  param1.§9@§ = -0.7853981633974483;
               }
               §§push(param1);
               §§push(_loc7_);
               if(_loc9_)
               {
                  §§push(§§pop() - param1.§"!$§);
               }
               §§pop().§+!^§(§§pop());
               break loop12;
            }
            if(§§pop() > §§pop())
            {
               param1.tunnel.§?!I§.§%!U§(param1.§73§.§[9§,param1.§73§,param1.tunnel.§3j§);
               §§goto(addr0232);
            }
            §§goto(addr0323);
         }
         param1.§8!X§ = true;
         while(true)
         {
            if(!_loc8_)
            {
               §§push(param1);
               §§push(_loc7_);
               if(_loc9_)
               {
                  §§push(§§pop() - param1.§"!$§);
               }
               §§pop().§3r§(§§pop());
               if(_loc8_)
               {
                  break;
               }
            }
            param1.§&7§();
            if(!_loc8_)
            {
               while(true)
               {
                  §§push(param1);
                  §§push(-25 - param1.transform.position.x);
                  if(!_loc8_)
                  {
                     §§push(1.8);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(param1.§9@§);
                  if(_loc9_)
                  {
                     §§push(-§§pop());
                     if(_loc9_)
                     {
                        break;
                     }
                     addr0204:
                     §§pop().§'I§(§§pop(),§§pop());
                     param1.§-,§ = 0.1;
                     §§push(_loc3_);
                     §§push(17000);
                     break loop13;
                  }
                  break;
               }
               §§goto(addr0204);
            }
            addr0232:
            param1.tunnel.§8O§ = true;
            break;
         }
         Save.forceVisitMap.§?F§(true);
         addr0323:
         return true;
      }
   }
}

