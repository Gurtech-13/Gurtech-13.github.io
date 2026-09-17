package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §"!L§.§%z§;
   import §"!L§.§@C§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%G§.§ m§;
   import §-d§.§!!-§;
   import §3!7§.§9y§;
   import §4n§.§!L§;
   import §4n§.§3!G§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.Level;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import nme3D.Scene3D;
   import nme3D.Context3DUtils;
   
   public class §8J§ extends § m§
   {
      
      public var §;i§:Number;
      
      public var §"@§:CharacterBase;
      
      public var cameraRotation:Quaternion;
      
      public function §8J§(param1:CharacterBase)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(param1);
         }
         §"@§ = param1;
         while(true)
         {
            if(!_loc2_)
            {
               length = -1;
               §§push(§§findproperty(§=!7§));
               §§push(§=!7§);
               if(!_loc2_)
               {
                  §§push(§§pop() | 0x20);
               }
               §§pop().§=!7§ = §§pop();
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§,N§));
            §§push(§,N§);
            if(!_loc2_)
            {
               §§push(32);
               if(!_loc2_)
               {
                  §§push(§§pop() | 4);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§,N§ = §§pop();
            if(_loc3_)
            {
               break;
            }
            §§goto(addr0090);
         }
         cameraRotation = new Quaternion();
         addr0090:
      }
      
      override public function §-A§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:Quaternion = cameraRotation;
         var _loc2_:Quaternion = §"@§.tunnel.§'!U§;
         while(true)
         {
            if(!_loc6_)
            {
               _loc1_.x = _loc2_.x;
               if(!_loc5_)
               {
                  break;
               }
            }
            _loc1_.y = _loc2_.y;
            if(_loc5_)
            {
               _loc1_.z = _loc2_.z;
               if(_loc5_)
               {
                  _loc1_.w = _loc2_.w;
                  if(_loc6_)
                  {
                     break;
                  }
               }
               §;i§ = §"@§.§"!$§;
            }
            break;
         }
         while(true)
         {
            §§push(§"@§.§`!1§());
            if(_loc5_)
            {
               §§push(Number(§§pop()));
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         §§push(§"@§.§<!B§());
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
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
                     §§push(§"@§);
                     if(_loc5_)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           if(§§pop() < 0)
                           {
                              addr00d3:
                              §§push(Number(Math.atan2(-_loc4_,_loc3_)));
                              if(!_loc6_)
                              {
                                 §§push(1.5707963267948966);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc6_)
                                    {
                                    }
                                    break loop3;
                                 }
                                 break;
                              }
                              break loop3;
                           }
                           §§push(1.5707963267948966);
                           if(_loc6_)
                           {
                              break loop3;
                           }
                        }
                        §§push(Number(Math.atan2(_loc4_,_loc3_)));
                        break;
                     }
                     §§goto(addr00d3);
                  }
                  §§push(§§pop() - §§pop());
                  break;
               }
               §§pop().§3r§(§§pop());
               while(true)
               {
                  if(!_loc6_)
                  {
                     §"@§.§<!R§(this);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §"@§.tunnel.§%K§.y = Level.§7!,§.y * 0.4;
                  if(!_loc6_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            §"@§.tunnel.§4-§ = cameraRotation;
            break;
         }
      }
      
      override public function §2!A§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         while(true)
         {
            if(_loc9_)
            {
               §"@§.§8!X§ = true;
               if(!_loc9_)
               {
                  break;
               }
            }
            if(§"@§.§4!Z§ != 0)
            {
               if(!_loc8_)
               {
                  return;
               }
               break;
            }
            §"@§.§-,§ = 0;
            if(!_loc8_)
            {
               §"@§.§4!A§(0);
            }
            break;
         }
         while(true)
         {
            §§push(§"@§.§<!B§());
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = 0;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               if(!_loc8_)
               {
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc9_)
                        {
                           §§push(_loc3_);
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§§pop() > §§pop())
                           {
                              if(_loc9_)
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                 }
                                 break loop3;
                              }
                              break loop11;
                           }
                           §§push(_loc2_);
                        }
                        §§push(_loc3_);
                        if(!_loc8_)
                        {
                           §§push(-§§pop());
                        }
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        break;
                     }
                     §§push(0);
                     if(_loc9_)
                     {
                        break loop3;
                     }
                     break loop2;
                  }
               }
               break loop11;
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(§>I§.get(§"@§));
            if(_loc9_)
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(§§pop() * 0.010471975511965976);
            if(_loc9_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc8_)
               {
                  break;
               }
            }
            §§goto(addr010a);
         }
         addr010a:
         var _loc5_:* = §§pop();
         if(_loc9_)
         {
            §"@§.§3r§(_loc5_,true);
         }
         var _loc6_:CharacterBase = §"@§;
         if(_loc9_)
         {
            while(true)
            {
               §§push(_loc6_);
               §§push(_loc6_.§]E§);
               if(!_loc8_)
               {
                  §§push(§§pop() + _loc5_);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§+!^§(§§pop());
         }
         while(true)
         {
            §§push(70);
            if(_loc9_)
            {
               §§push(12);
               if(_loc9_)
               {
                  §§push(§§pop() * §-S§);
               }
               §§push(§§pop() + §§pop());
               if(_loc8_)
               {
                  break;
               }
               §§push(Number(§§pop()));
               if(!_loc9_)
               {
                  break;
               }
               §§push(§§pop() * _loc4_);
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         if(_loc9_)
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
                        §§push(§"@§);
                        §§push(_loc2_);
                        if(!_loc8_)
                        {
                           §§push(param1);
                           if(_loc8_)
                           {
                              break loop8;
                           }
                           §§push(0.5);
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(0.5);
                              if(!_loc8_)
                              {
                                 break loop9;
                              }
                              break loop8;
                           }
                           if(!_loc9_)
                           {
                              break loop7;
                           }
                        }
                        §§push(param1);
                        if(!_loc8_)
                        {
                           break loop9;
                        }
                        break loop8;
                     }
                     §§push(§§pop() * §§pop());
                     break loop8;
                  }
                  §§push(_loc7_);
                  if(!_loc8_)
                  {
                     §§push(§§pop() - _loc2_);
                  }
                  break loop10;
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
            §§pop().§%8§(§§pop());
         }
      }
      
      override public function §2U§() : § m§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §"@§.§-,§ = 1;
         }
         return null;
      }
      
      override public function §0!1§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §§push(§"@§.physicsData.onGround);
               if(_loc1_)
               {
                  break;
               }
               §§push(!§§pop());
               if(!_loc2_)
               {
                  break;
               }
               if(!§§pop())
               {
                  §§push(false);
                  break;
               }
            }
            §§push(§"@§.physicsData.§8h§);
            if(!_loc1_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  break;
               }
            }
            return §§pop();
         }
         return §§pop();
      }
      
      override public function § A§() : Boolean
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
                  if(_loc1_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc2_)
                              {
                                 §§push(false);
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §§push(§"@§.physicsData.onGround);
                                 if(_loc1_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop4;
                                 }
                                 if(_loc2_)
                                 {
                                    break loop4;
                                 }
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(§"@§.§?`§.active);
                              if(_loc1_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                              }
                              break loop4;
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr008e);
                     }
                     §§pop();
                     addr008e:
                     §§push(§"@§.tunnel.unpausedTime >= 9);
                     if(!_loc2_)
                     {
                        addr008d:
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!_loc1_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                  }
                  while(true)
                  {
                     §§push(§"@§.tunnel.unpausedTime);
                     if(_loc1_)
                     {
                        §§push(§"@§.physicsData.§&!>§);
                        if(!_loc1_)
                        {
                           break;
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§push(9);
                     break;
                  }
                  §§push(§§pop() >= §§pop());
                  if(_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  break loop1;
               }
               if(§§pop())
               {
                  break loop0;
               }
               return false;
            }
            return §§pop();
         }
         §§push(Boolean(Math.isFinite(§"@§.physicsData.§&!>§)));
         if(!_loc2_)
         {
            return §§pop();
         }
         break loop1;
      }
   }
}

