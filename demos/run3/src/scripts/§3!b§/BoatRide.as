package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §1^§.Transform;
   import §2!"§.§8f§;
   import §2X§.PositionData3D;
   import §6!Q§.§'[§;
   import §6!Q§.§]u§;
   import §<!&§.§%!§;
   import §>!O§.§^`§;
   import §@]§.§;!!§;
   import §[^§.§>!3§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   import motion.easing.§2f§;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   import nme3D.§1![§;
   import nme3D.Context3DUtils;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.shader.§<!9§;
   
   public class BoatRide extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §;D§:§"B§;
      
      public var §-$§:Point3D;
      
      public var pastafarian:§^s§;
      
      public var duplicator:§^s§;
      
      public var § !V§:§^s§;
      
      public var child:§^s§;
      
      public var §7!!§:Transform;
      
      public var §[c§:TunnelSection;
      
      public var §0-§:Point3D;
      
      public var §<"§:§"B§;
      
      public var §4d§:Point3D;
      
      public var §7W§:§^s§;
      
      public var §9p§:Model;
      
      public var §#!P§:§^s§;
      
      public function BoatRide()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.home0,-1,null,{
                  "startTilesLength":0,
                  "customDate":§>K§.home3.§99§()
               },null,§+!"§.IF_FOLLOWING_LEVEL_REACHED);
               if(_loc1_)
               {
                  break;
               }
            }
            §3!<§(new § !N§(§>K§.home3,0));
            if(_loc2_)
            {
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame1);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame2);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame3);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame4);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame5);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame6);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame7);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame8);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame9);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame10);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame11);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame12);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame13);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame14);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame15);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame16);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame17);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame18);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame19);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame20);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame21);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame22);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame23);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc1_)
               {
                  break;
               }
            }
            name = "Boat Ride";
            break;
         }
      }
      
      public function §&8§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc9_)
            {
               while(true)
               {
                  §§push(true);
                  if(_loc10_)
                  {
                     if(§0-§ == null)
                     {
                        break;
                     }
                     if(_loc9_)
                     {
                        break;
                     }
                     §§pop();
                     if(!_loc10_)
                     {
                        break loop0;
                     }
                     §§push(§4d§ == null);
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               if(!§§pop())
               {
                  var _loc2_:Point3D = §0-§;
                  var _loc3_:Point3D = §4d§;
                  var _loc4_:Point3D = §0-§;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc10_)
                        {
                           if(_loc4_ != null)
                           {
                              break;
                           }
                           if(_loc9_)
                           {
                              break loop2;
                           }
                        }
                        _loc4_ = new Point3D(0,0,0);
                        break;
                     }
                     _loc4_.x = _loc2_.x + _loc3_.x * param1;
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           break loop2;
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr0129);
                  }
                  _loc4_.y = _loc2_.y + _loc3_.y * param1;
                  if(_loc10_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc2_.z);
                        if(_loc10_)
                        {
                           §§push(_loc3_.z);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().z = §§pop();
                     if(_loc10_)
                     {
                        addr00fa:
                        §§push(§7W§.transform);
                        §§push(§0-§.x * param1);
                        §§push(§0-§.y * param1);
                        §§push(§0-§.z);
                        if(_loc10_)
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().translate(§§pop(),§§pop(),§§pop());
                     }
                  }
                  var _loc5_:Point = §0-§;
                  addr0129:
                  while(true)
                  {
                     §§push(_loc5_.x * _loc5_.x);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + _loc5_.y * _loc5_.y);
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc10_)
                     {
                        break;
                     }
                     var _loc6_:* = §§pop();
                     var _loc7_:Point = §0-§;
                     var _loc8_:Point = §4d§;
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc7_.x * _loc8_.x + _loc7_.y * _loc8_.y);
                                 if(_loc10_)
                                 {
                                    §§push(Number(§§pop()));
                                    §§push(0);
                                    if(!_loc10_)
                                    {
                                       break loop8;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          _loc6_ = -§§pop();
                                          if(_loc9_)
                                          {
                                             break loop7;
                                          }
                                       }
                                    }
                                    §§push(_loc6_);
                                    §§push(-40000);
                                    if(_loc9_)
                                    {
                                       break loop8;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       §7W§.spritesheet.§,=§(15);
                                       if(_loc10_)
                                       {
                                          break loop7;
                                       }
                                       break loop6;
                                    }
                                    §§push(_loc6_);
                                 }
                                 §§push(2500);
                                 break loop8;
                              }
                              if(§§pop() < 90000)
                              {
                                 if(!_loc9_)
                                 {
                                    §7W§.spritesheet.§,=§(17);
                                 }
                                 break loop7;
                              }
                              §7W§.spritesheet.§,=§(18);
                              if(_loc10_)
                              {
                                 while(true)
                                 {
                                    §§push(§9_§.tunnelBounds.contains(§7W§.transform.§<!C§()));
                                    if(_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(!§§pop());
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    break loop6;
                                 }
                                 break loop7;
                              }
                              break loop6;
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc6_);
                              break loop9;
                           }
                           §7W§.spritesheet.§,=§(16);
                           if(_loc10_)
                           {
                              break;
                           }
                           §§goto(addr0297);
                        }
                        return;
                     }
                     §7W§.model.§#"§(false);
                     §0-§ = null;
                     if(_loc10_)
                     {
                        §4d§ = null;
                        if(_loc10_)
                        {
                           addr0297:
                           dialog.§+!P§ = null;
                        }
                     }
                     break loop7;
                  }
                  §§push(Number(§§pop()));
                  continue loop8;
               }
               if(_loc9_)
               {
                  break;
               }
            }
            dialog.§+!P§ = null;
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         Context3DUtils.§7"§ = 3000;
         Context3DUtils.§37§(Context3DUtils.§&#§);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc2_)
               {
                  §<!9§.§%!1§();
                  §7!!§ = null;
                  if(_loc2_)
                  {
                     break;
                  }
                  §[c§ = null;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §0-§ = null;
                        if(!_loc1_)
                        {
                           break;
                        }
                        §4d§ = null;
                        if(_loc2_)
                        {
                           break;
                        }
                        §<"§ = null;
                        if(!_loc1_)
                        {
                           break loop1;
                        }
                        §9p§ = null;
                     }
                     §-$§ = null;
                     tunnel = null;
                     break;
                  }
                  pastafarian = null;
                  if(!_loc1_)
                  {
                     break loop0;
                  }
                  §#!P§ = null;
               }
               §7W§ = null;
               if(_loc1_)
               {
                  § !V§ = null;
                  break;
               }
               §§goto(addr00ea);
            }
            duplicator = null;
            child = null;
            break;
         }
         sprites.length = 0;
         addr00ea:
      }
      
      public function §`k§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            if(§-$§ != null)
            {
               while(true)
               {
                  §§push(Number(Math.random()));
                  if(!_loc5_)
                  {
                     §§push(§§pop() + -0.5);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc1_:* = §§pop();
               var _loc2_:* = 0;
               var _loc3_:Number = 0;
               §-$§.x = _loc1_;
               §-$§.y = _loc2_;
               §-$§.z = _loc3_;
               §4!R§.§@!M§(BoatRide.§;D§,§-$§,§-$§);
               §§push(§#!P§.transform);
               §§push(0.2);
               §§push(§#!P§.§#!K§());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     §§push(§§pop() + §-$§.x);
                  }
               }
               while(true)
               {
                  §§push(§#!P§.§>p§());
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() + §-$§.y);
                  break;
               }
               §§push(§#!P§.§'j§());
               if(_loc4_)
               {
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        §§push(§§pop() + §-$§.z);
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
               }
               §§pop().§7#§(§§pop(),§§pop(),§§pop(),§§pop());
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc4_)
                              {
                                 §§push(2);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    break loop7;
                                 }
                                 _loc1_ = Number(§§pop());
                                 §§push(_loc3_);
                                 if(!_loc4_)
                                 {
                                    break loop7;
                                 }
                              }
                              §§push(2);
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc5_)
                           {
                              break loop4;
                           }
                           _loc3_ = §§pop();
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                        }
                        §§push(Number(Math.sqrt(1 - _loc1_ * _loc1_)));
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     §-$§.x = _loc1_;
                     §-$§.y = _loc2_;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §-$§.z = _loc3_;
                  break;
               }
               §4!R§.§@!M§(BoatRide.§;D§,§-$§,§-$§);
               while(true)
               {
                  §§push(§7W§.transform);
                  §§push(0.2);
                  §§push(§7W§.§#!K§());
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() + §-$§.x);
                  break;
               }
               §§push(§7W§.§>p§());
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc5_)
                  {
                     §§push(§§pop() + §-$§.y);
                  }
               }
               while(true)
               {
                  §§push(§7W§.§'j§());
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() + §-$§.z);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
               §§push(§§pop().§7#§(§§pop(),§§pop(),§§pop(),§§pop()).delay(0.04));
               §§push(§`k§);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().onComplete(§§pop());
               return;
            }
         }
      }
      
      public function §0!a§(param1:§^s§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               param1.transform.§5!,§(null);
               if(!_loc3_)
               {
                  break;
               }
            }
            param1.§9_§ = §9_§;
            break;
         }
      }
      
      public function §`!6§() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         if(!_loc11_)
         {
            §8j§();
         }
         §§push(§9_§.layout);
         §§push(int(§9_§.terrain.length));
         if(!_loc11_)
         {
            §§push(§§pop() - 28);
         }
         var _loc1_:PositionData3D = §§pop().§<!C§(§§pop());
         var _loc2_:§"B§ = _loc1_.rotation;
         var _loc3_:§"B§ = null;
         while(true)
         {
            if(!_loc11_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.5707963267948966)));
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc10_)
            {
               _loc3_.x = 0 * _loc4_;
               if(_loc10_)
               {
                  _loc3_.y = 0 * _loc4_;
                  if(!_loc10_)
                  {
                     break;
                  }
                  _loc3_.z = _loc4_;
                  if(!_loc10_)
                  {
                     break;
                  }
               }
            }
            _loc3_.w = Number(Math.cos(1.5707963267948966));
            break;
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               §§push(_loc3_.x);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc3_.x);
                  §§push(_loc3_.y);
                  if(_loc10_)
                  {
                     loop14:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc3_.y);
                           if(_loc10_)
                           {
                              §§push(§§pop() + §§pop() * §§pop());
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc11_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(_loc3_.z);
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(_loc3_.z);
                              if(_loc11_)
                              {
                                 break loop14;
                              }
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc11_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc10_)
                              {
                                 break loop3;
                              }
                              §§push(_loc3_.w);
                              if(_loc11_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc3_.w);
                           break loop14;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break loop15;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     break loop2;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_)
            {
               §§push(§§pop() - 1);
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               §§push(_loc6_);
               if(_loc10_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc6_);
                     if(_loc11_)
                     {
                        break loop5;
                     }
                  }
                  else
                  {
                     §§push(-_loc6_);
                  }
               }
               §§push(§§pop() < 1e-10);
               if(_loc10_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        break loop6;
                     }
                     §§goto(addr01ce);
                  }
                  §§goto(addr01fb);
               }
               §§goto(addr020b);
            }
            if(§§pop() != §§pop())
            {
               §§push(1 / Number(Math.sqrt(_loc5_)));
               break;
            }
            _loc3_.x = 0;
            _loc3_.y = 0;
            _loc3_.z = 0;
            _loc3_.w = 1;
            §§goto(addr020b);
         }
         _loc5_ = Number(§§pop());
         while(true)
         {
            if(!_loc11_)
            {
               §§push(_loc3_);
               §§push(_loc3_.x);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().x = §§pop();
               addr01ce:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().y = §§pop();
               if(_loc11_)
               {
                  break;
               }
               §§push(_loc3_);
               §§push(_loc3_.z);
               if(_loc10_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               if(!_loc10_)
               {
                  break;
               }
            }
            addr01fb:
            §§push(_loc3_);
            §§push(_loc3_.w);
            if(!_loc11_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().w = §§pop();
            break;
         }
         addr020b:
         §4!R§.§9!L§(_loc2_,_loc3_,_loc1_.rotation);
         var _loc7_:Point3D = §9p§.transform.§<!C§();
         if(!_loc11_)
         {
            _loc7_.x = -0.47;
            while(true)
            {
               if(!_loc11_)
               {
                  _loc7_.y = -0.2;
                  if(!_loc11_)
                  {
                     _loc7_.z = 0;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
               }
               §4!R§.§@!M§(_loc1_.rotation,_loc7_,_loc7_);
               break;
            }
         }
         var _loc8_:Point3D = _loc1_.position;
         var _loc9_:Point3D = _loc1_.position;
         loop9:
         while(true)
         {
            if(_loc10_)
            {
               while(true)
               {
                  if(_loc9_ == null)
                  {
                     if(_loc11_)
                     {
                        break;
                     }
                     _loc9_ = new Point3D(0,0,0);
                  }
                  _loc9_.x = _loc7_.x + _loc8_.x;
                  if(!_loc11_)
                  {
                     _loc9_.y = _loc7_.y + _loc8_.y;
                     if(_loc10_)
                     {
                        break;
                     }
                     break loop9;
                  }
                  break;
               }
            }
            while(true)
            {
               §§push(_loc9_);
               §§push(_loc7_.z);
               if(!_loc11_)
               {
                  §§push(§§pop() + _loc8_.z);
                  if(_loc11_)
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
         _loc8_ = _loc1_.position;
         if(_loc10_)
         {
            _loc5_ = §9_§.tileWidth;
         }
         _loc9_ = _loc1_.position;
         while(true)
         {
            if(_loc9_ == null)
            {
               if(!_loc10_)
               {
                  break;
               }
               _loc9_ = new Point3D(0,0,0);
            }
            _loc9_.x = _loc8_.x * _loc5_;
            if(!_loc11_)
            {
               _loc9_.y = _loc8_.y * _loc5_;
               if(_loc11_)
               {
                  break;
               }
               §§push(_loc9_);
               §§push(_loc8_.z);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
            }
            §9p§.transform.§"w§(_loc1_.position);
            if(_loc10_)
            {
               break;
            }
            §§goto(addr038a);
         }
         §9p§.transform.§"I§(_loc1_.rotation);
         §9p§.update(0);
         addr038a:
      }
      
      public function §"5§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §7!!§.translate(0,0,500);
            while(true)
            {
               if(!_loc2_)
               {
                  tunnel.§<!M§.translate(0,0,500);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               tunnel.display(0);
               break;
            }
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var firstTime:Boolean;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     if(param2)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(§!!6§ == 4);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               super.loadNext(param1,param2);
               break;
            }
            §]u§.§@!A§().§5!@§ = false;
            firstTime = true;
            Main.instance.§#f§(0,§>K§.home3,null,{"modifyData":function(param1:int, param2:String):String
            {
               var _temp_1:* = false;
               var _loc3_:Boolean = true;
               var _loc4_:Boolean = _temp_1;
               loop0:
               while(true)
               {
                  §§push(false);
                  if(!_loc4_)
                  {
                     if(param1 != 0)
                     {
                        break;
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §§push(firstTime);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        break loop0;
                     }
                     addr0036:
                     firstTime = false;
                     break;
                  }
                  §§goto(addr003d);
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr0036);
                  }
                  addr003d:
                  return "id--320|layout-tunnel15,1|color0-0xD8F75F|terrain-pos-0*:3`0N|spawn-6|spawnZ-300";
               }
               return param2;
            }});
            if(!_loc3_)
            {
               §'[§.§7!@§(§'O§.duplicator,["Son, why didn\'t you come with me?","Wait, I know: you\'re gathering intelligence!","Good for you, son! I\'m glad you\'re learning to take initiative."]);
            }
            break;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            pastafarian = new §^s§(§9_§,§'O§.pastafarian,false,null,false,"cutscene/TrainRide/Spritesheet.png");
            if(_loc7_)
            {
               sprites.push(pastafarian);
            }
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("homePlanA");
         while(true)
         {
            if(_loc7_)
            {
               pastafarian.goesTo = new § !N§(_loc1_,0);
               if(_loc6_)
               {
                  break;
               }
            }
            §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,"cutscene/TrainRide/Spritesheet.png");
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr00a2);
         }
         sprites.push(§#!P§);
         addr00a2:
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("homeLaunchSiteA");
         if(!_loc6_)
         {
            §#!P§.goesTo = new § !N§(_loc2_,0);
            while(true)
            {
               if(_loc7_)
               {
                  §7W§ = new §^s§(§9_§,§'O§.§7W§,false,null,false,"cutscene/TrainRide/Spritesheet.png");
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               sprites.push(§7W§);
               break;
            }
         }
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get("homePlanA");
         while(true)
         {
            if(!_loc6_)
            {
               §7W§.goesTo = new § !N§(_loc3_,1);
               if(_loc7_)
               {
                  § !V§ = new §^s§(§9_§,§'O§.duplicator,false,0.6,false,"cutscene/TrainRide/Spritesheet.png");
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            sprites.push(§ !V§);
            if(_loc7_)
            {
               duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,"cutscene/TrainRide/Spritesheet.png");
               if(!_loc6_)
               {
                  sprites.push(duplicator);
               }
            }
            break;
         }
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get("home3");
         while(true)
         {
            if(!_loc6_)
            {
               duplicator.goesTo = new § !N§(_loc4_,0);
               if(!_loc7_)
               {
                  break;
               }
            }
            child = new §^s§(§9_§,§'O§.child,false,null,false,"cutscene/TrainRide/Spritesheet.png");
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr0203);
         }
         sprites.push(child);
         addr0203:
         var _loc5_:§ !>§ = §>K§.§@!A§().§7j§.get("home3");
         if(_loc7_)
         {
            child.goesTo = new § !N§(_loc5_,-1);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               _loc1_.x = 2;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        _loc1_.y = 0;
                        _loc1_.z = 9532;
                        tunnel.§<!M§.reset();
                        tunnel.display(0);
                        §#!P§.§9E§(1.4,0.1);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §#!P§.spritesheet.§,=§(1);
                        §#!P§.spritesheet.§@S§(true);
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                     }
                     pastafarian.§9E§(0.4,1.2);
                     pastafarian.spritesheet.§,=§(64);
                     pastafarian.spritesheet.§@S§(false);
                     §7W§.§9E§(7.2,-3,true,85);
                     §7W§.spritesheet.§,=§(19);
                     if(_loc3_)
                     {
                        §7W§.spritesheet.§@S§(false);
                        break;
                     }
                     addr00ea:
                     duplicator.spritesheet.§@S§(true);
                     break loop1;
                  }
                  duplicator.§9E§(8.2,-2.6,true);
                  duplicator.spritesheet.§,=§(46);
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  §§goto(addr00ea);
               }
            }
            break loop1;
         }
         child.spritesheet.§,=§(31);
         if(_loc3_)
         {
            child.spritesheet.§@S§(false);
         }
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("So? Are you coming?",-340,-20,null,null,null,_loc2_,null);
         }
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §#!P§.§9E§(1.4,0.1);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  §#!P§.spritesheet.§,=§(0);
                  if(_loc4_)
                  {
                     break;
                  }
                  §#!P§.spritesheet.§@S§(false);
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  pastafarian.§9E§(0.4,1.2);
               }
               pastafarian.spritesheet.§,=§(62);
               pastafarian.spritesheet.§@S§(false);
               if(_loc5_)
               {
                  §7W§.§9E§(7,-5,true,5);
                  break loop0;
               }
               break;
            }
            var _loc1_:* = §&!S§.scale(0.3);
            var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
            if(_loc5_)
            {
               dialog.§";§("Please do try to be respectful.",0,70,_loc1_,null,null,_loc2_,null);
            }
            _loc1_ = §&!S§.scale(0.5);
            _loc2_ = new § 6§(child.§<!U§());
            if(_loc5_)
            {
               dialog.§";§("What if it\'s reverse philosophy?",260,140,_loc1_,null,null,_loc2_,null);
            }
            _loc1_ = §&!S§.scale(0.5);
            var _loc3_:* = §&!S§.width(410);
            _loc2_ = new § 6§(duplicator.§<!U§());
            if(!_loc4_)
            {
               dialog.§";§("\"Reverse psychology,\" and that\'s quite possible now that you mention it.",-20,340,_loc1_,_loc3_,null,_loc2_,null);
            }
            return;
         }
         §7W§.spritesheet.§,=§(19);
         §7W§.spritesheet.§@S§(false);
         duplicator.§9E§(8.2,-2.6,true);
         duplicator.spritesheet.§,=§(49);
         duplicator.spritesheet.§@S§(true);
         child.§9E§(7.8,-2.8,true);
         child.spritesheet.§,=§(31);
         if(_loc5_)
         {
            child.spritesheet.§@S§(false);
         }
         break loop1;
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §7W§.model.§#"§(true);
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc5_)
                  {
                     _loc1_.x = 2;
                     if(_loc5_)
                     {
                        break;
                     }
                     _loc1_.y = 0;
                     _loc1_.z = 9439;
                     tunnel.§<!M§.reset();
                     tunnel.display(0);
                     pastafarian.§9E§(0.4,1.2);
                     if(_loc5_)
                     {
                        break loop1;
                     }
                     pastafarian.spritesheet.§,=§(62);
                     pastafarian.spritesheet.§@S§(false);
                     if(_loc4_)
                     {
                        §#!P§.§9E§(1.4,0.1);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        §#!P§.spritesheet.§,=§(0);
                        §#!P§.spritesheet.§@S§(false);
                        §7W§.§9E§(7,-8,true,55);
                        §7W§.spritesheet.§,=§(18);
                     }
                     §7W§.spritesheet.§@S§(false);
                     if(_loc5_)
                     {
                        break loop0;
                     }
                     duplicator.§9E§(8.2,-2.6,true);
                     duplicator.spritesheet.§,=§(49);
                  }
                  duplicator.spritesheet.§@S§(true);
                  child.§9E§(7.8,-2.8,true);
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  break;
               }
               §§goto(addr012a);
            }
            var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
            if(_loc4_)
            {
               dialog.§";§("Don\'t do it, it\'s a trick.",-340,20,null,null,null,_loc2_,null);
            }
            var _loc3_:* = §&!S§.width(350);
            _loc2_ = new § 6§(§#!P§.§<!U§());
            if(!_loc5_)
            {
               dialog.§";§("Fine, stay here for all I care.",300,130,null,_loc3_,null,_loc2_,null);
            }
            return;
         }
         child.spritesheet.§,=§(31);
         addr012a:
         child.spritesheet.§@S§(false);
         break loop1;
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         pastafarian.§9E§(0.4,1.2);
         pastafarian.spritesheet.§,=§(62);
         pastafarian.spritesheet.§@S§(false);
         §#!P§.§9E§(1.4,0);
         §#!P§.spritesheet.§,=§(3);
         §#!P§.spritesheet.§@S§(false);
         §7W§.§9E§(0,0);
         if(!_loc8_)
         {
            §7W§.spritesheet.§,=§(18);
         }
         §7W§.spritesheet.§@S§(false);
         if(!_loc8_)
         {
            duplicator.§9E§(8.2,-2.6,true);
            duplicator.spritesheet.§,=§(46);
            duplicator.spritesheet.§@S§(true);
            child.§9E§(7.8,-2.7,true);
            child.spritesheet.§,=§(31);
            child.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(540);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc7_)
         {
            dialog.§";§("We\'re gonna cross whether you like it or not!",220,-230,null,_loc1_,null,_loc2_,null);
         }
         var _loc3_:§'§ = dialog;
         while(true)
         {
            if(_loc7_)
            {
               if(int(_loc3_.§@#§.length) <= 0)
               {
                  §§push(null);
                  break;
               }
            }
            §§push(_loc3_.§@#§);
            §§push(int(_loc3_.§@#§.length));
            if(_loc7_)
            {
               §§push(§§pop() - 1);
            }
            §§push(§§pop()[§§pop()]);
            break;
         }
         var _loc4_:§^U§ = §§pop();
         _loc1_ = §&!S§.width(450);
         if(!_loc8_)
         {
            dialog.§";§("I have no idea what you\'re talking about, and neither do you.",-320,-60,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(290);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(!_loc8_)
            {
               dialog.§";§("Now shut up and get on.",-280,250,null,_loc1_,-1,_loc2_,null);
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc4_.§7s§ = 300;
            if(!_loc8_)
            {
               break;
            }
            var _loc5_:§'§ = dialog;
            loop2:
            while(true)
            {
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(int(_loc5_.§@#§.length) <= 0)
                     {
                        §§push(null);
                        break;
                     }
                     if(_loc8_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc5_.§@#§);
                  §§push(int(_loc5_.§@#§.length));
                  if(_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
                  break;
               }
               §§pop().§7s§ = 220;
               break;
            }
            var _loc6_:§'§ = dialog;
            if(!_loc8_)
            {
               while(true)
               {
                  if(int(_loc6_.§@#§.length) > 0)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(_loc6_.§@#§);
                     §§push(int(_loc6_.§@#§.length));
                     if(_loc7_)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§push(§§pop()[§§pop()]);
                  }
                  else
                  {
                     §§push(null);
                  }
                  §§pop().§6;§();
                  break;
               }
            }
            return;
         }
         _loc4_.§6;§();
         continue loop2;
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §7!!§.translate(0,0,900);
            if(!_loc5_)
            {
               tunnel.§0a§(§ !V§);
            }
         }
         var _loc1_:Vector.<§^s§> = sprites.splice(int(sprites.indexOf(§ !V§,0)),1);
         var _loc2_:§1![§ = tunnel.§"[§;
         var _loc3_:Model = §9p§;
         loop0:
         while(true)
         {
            if(_loc3_.§0p§ > 0)
            {
               §§push(_loc2_.§3!#§);
            }
            else
            {
               §§push(false);
               if(!_loc5_)
               {
                  if(_loc3_.§0p§ < 0)
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc2_.§9!R§ == null);
                           if(!_loc5_)
                           {
                              §§push(!§§pop());
                              if(_loc5_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                     }
                  }
               }
               §§push(§§pop() ? _loc2_.§9!R§ : _loc2_.§@8§);
            }
            §§pop().§4w§(_loc3_);
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           §4d§ = null;
                           if(!_loc5_)
                           {
                              §0-§ = null;
                              §#!P§.§9E§(1.4,0);
                              §#!P§.spritesheet.§,=§(5);
                              §#!P§.spritesheet.§@S§(false);
                              if(_loc6_)
                              {
                                 pastafarian.§9E§(0.4,1.2);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 pastafarian.spritesheet.§,=§(62);
                              }
                              pastafarian.spritesheet.§@S§(false);
                              if(!_loc5_)
                              {
                                 §7W§.§9E§(0,0);
                                 if(_loc5_)
                                 {
                                    break loop5;
                                 }
                                 §7W§.spritesheet.§,=§(18);
                                 if(!_loc6_)
                                 {
                                    break loop3;
                                 }
                                 §7W§.spritesheet.§@S§(false);
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                              }
                           }
                        }
                        duplicator.§9E§(8.2,-2.6,true);
                        break;
                     }
                     duplicator.spritesheet.§,=§(45);
                     break loop3;
                  }
                  child.spritesheet.§,=§(32);
                  child.spritesheet.§@S§(false);
                  break loop2;
               }
               duplicator.spritesheet.§@S§(true);
               break loop0;
            }
            var _loc4_:§ 7§ = new § 6§(duplicator.§<!U§());
            while(true)
            {
               if(_loc6_)
               {
                  dialog.§";§("Why are you here?",-300,200,null,null,null,_loc4_,null);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               § !C§("you");
               if(_loc6_)
               {
                  dialog.§";§("To gloat?",-40,340,null,null,-1,null,null);
               }
               break;
            }
            return;
         }
         child.§9E§(8,-2.9,true);
         break loop5;
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §7!!§.translate(0,0,9040);
            if(_loc5_)
            {
               §§push(dialog);
               §§push(§&8§);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
            }
         }
         var _loc1_:Rectangle = new Rectangle();
         var _loc2_:§ 7§ = new § 6§(_loc1_);
         var _loc3_:§&d§ = dialog.layout;
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(_loc3_ != null)
                  {
                     §§push(_loc3_);
                     break;
                  }
                  if(!_loc5_)
                  {
                     continue loop2;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc2_,new §;!!§(400,§2u§.LEFT));
            continue loop2;
         }
         _loc2_ = new § 6§(_loc1_);
         _loc3_ = dialog.layout;
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(_loc3_ == null)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(§&d§.§1$§());
                  }
                  else
                  {
                     §§push(_loc3_);
                  }
                  §§pop().add(_loc2_,new §;!!§(800,§2u§.TOP));
                  if(!_loc5_)
                  {
                     break loop2;
                  }
                  § !V§.§9E§(8,-1.8,true);
               }
               § !V§.spritesheet.§,=§(52);
               if(_loc5_)
               {
                  § !V§.spritesheet.§@S§(false);
                  duplicator.§9E§(8,-2.6,true);
                  duplicator.spritesheet.§,=§(52);
                  duplicator.spritesheet.§@S§(false);
               }
               child.§9E§(8,-3,true);
               break loop2;
            }
            §#!P§.§9E§(0,0);
            §#!P§.spritesheet.§,=§(0);
            while(true)
            {
               if(_loc5_)
               {
                  §#!P§.spritesheet.§@S§(false);
                  §§goto(addr0195);
               }
               §§goto(addr01b2);
            }
            §§goto(addr01bc);
         }
         child.spritesheet.§,=§(38);
         child.spritesheet.§@S§(false);
         if(_loc5_)
         {
            break loop3;
         }
         addr0195:
         pastafarian.§9E§(0,0);
         pastafarian.spritesheet.§,=§(0);
         if(!_loc4_)
         {
            addr01b2:
            pastafarian.spritesheet.§@S§(false);
         }
         addr01bc:
         _loc2_ = new § 6§(child.§<!U§());
         if(_loc5_)
         {
            dialog.§";§("Did it work?",220,60,null,null,null,_loc2_,null);
         }
         _loc2_ = new § 6§(_loc1_);
         if(!_loc4_)
         {
            dialog.§";§("How could you possibly expect that to work?",-20,280,null,null,null,_loc2_,null);
            if(_loc5_)
            {
               § !C§("possibly");
            }
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(dialog);
            §§push(§&8§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
         }
         §,!J§ = 0.5;
         if(_loc1_)
         {
            § !V§.§9E§(8,-1.8,true);
            § !V§.spritesheet.§,=§(52);
         }
         § !V§.spritesheet.§@S§(false);
         duplicator.§9E§(8,-2.6,true);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  duplicator.spritesheet.§,=§(52);
                  if(!_loc1_)
                  {
                     break;
                  }
                  duplicator.spritesheet.§@S§(false);
                  child.§9E§(8,-3,true);
                  child.spritesheet.§,=§(38);
                  child.spritesheet.§@S§(false);
                  if(!_loc1_)
                  {
                     break loop0;
                  }
               }
               §#!P§.§9E§(0,0);
               if(_loc1_)
               {
                  §#!P§.spritesheet.§,=§(0);
               }
               §#!P§.spritesheet.§@S§(false);
               break loop0;
            }
            return;
         }
         pastafarian.§9E§(0,0);
         if(!_loc2_)
         {
            pastafarian.spritesheet.§,=§(0);
         }
         pastafarian.spritesheet.§@S§(false);
         break loop1;
      }
      
      public function frame23() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §7!!§.translate(0,0,500);
            §§push(§9p§.transform);
            §§push(-1.2);
            if(_loc3_)
            {
               §§push(§§pop() * §9p§.transform.position.x);
            }
            §§push(-1.2);
            if(_loc3_)
            {
               §§push(§§pop() * §9p§.transform.position.y);
            }
            §§pop().§6!&§(§§pop(),§§pop(),§9p§.transform.position.z);
            pastafarian.§9E§(0.5,2.6);
            while(true)
            {
               if(!_loc4_)
               {
                  pastafarian.spritesheet.§,=§(62);
                  if(_loc4_)
                  {
                     break;
                  }
                  pastafarian.spritesheet.§@S§(false);
                  §#!P§.§9E§(1.6,2.7);
               }
               §#!P§.spritesheet.§,=§(2);
               if(!_loc4_)
               {
                  §#!P§.spritesheet.§@S§(true);
               }
               §7W§.§9E§(0.5,0.3,null,10);
               if(!_loc4_)
               {
                  §7W§.spritesheet.§,=§(22);
                  §7W§.spritesheet.§@S§(false);
                  duplicator.§9E§(9.8,-50.2,true);
                  duplicator.spritesheet.§,=§(52);
                  if(!_loc4_)
                  {
                     duplicator.spritesheet.§@S§(false);
                  }
                  child.§9E§(1.5,0);
               }
               break;
            }
         }
         child.spritesheet.§,=§(39);
         if(_loc3_)
         {
            child.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(390);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Stop! Why aren\'t we stopping?",-300,-110,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(440);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Maybe he wanted to take a walk.",300,-110,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(1000);
         if(!_loc4_)
         {
            dialog.§";§("And that\'s what he\'ll have to do, because we don\'t have time for any more of his nonsense.",20,350,null,_loc1_,-1,null,null);
         }
      }
      
      public function frame22() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         child.model.§#"§(true);
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               §0!a§(duplicator);
               if(_loc4_)
               {
                  break;
               }
               §7!!§.translate(0,0,500);
               pastafarian.§9E§(0.5,2.6);
               pastafarian.spritesheet.§,=§(62);
               if(!_loc3_)
               {
                  break;
               }
            }
            pastafarian.spritesheet.§@S§(false);
            §#!P§.§9E§(1.6,2.7);
            §#!P§.spritesheet.§,=§(5);
            §#!P§.spritesheet.§@S§(false);
            §7W§.§9E§(0.4,0.3,null,10);
            §7W§.spritesheet.§,=§(22);
            if(!_loc3_)
            {
               break;
            }
            §7W§.spritesheet.§@S§(false);
            while(true)
            {
               if(_loc3_)
               {
                  duplicator.§9E§(9.8,-50,true,15);
                  duplicator.spritesheet.§,=§(55);
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  §§goto(addr0145);
               }
               addr0101:
               child.spritesheet.§,=§(35);
               addr010c:
               child.spritesheet.§@S§(false);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr0145);
            }
            dialog.§";§("My balloon!",-120,-200,null,null,null,null,null);
            addr0145:
            var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
            if(!_loc4_)
            {
               dialog.§";§("Child!",140,0,null,null,null,_loc1_,null);
            }
            _loc1_ = new § 6§(child.§<!U§());
            while(true)
            {
               if(!_loc4_)
               {
                  dialog.§";§("Dad!",-140,20,null,null,0,_loc1_,null);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §8j§();
               break;
            }
            var _loc2_:Point3D = duplicator.transform.§<!C§();
            _loc2_.x = -15;
            _loc2_.y = -60;
            _loc2_.z = 0;
            §4!R§.§@!M§(BoatRide.§;D§,_loc2_,_loc2_);
            §§push(§9p§.transform);
            §§push(duplicator.transform.position.x + _loc2_.x);
            §§push(duplicator.transform.position.y + _loc2_.y);
            §§push(duplicator.transform.position.z);
            if(!_loc4_)
            {
               §§push(§§pop() + _loc2_.z);
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§6!&§(§§pop(),§§pop(),§§pop());
            §9p§.transform.§"I§(BoatRide.§;D§);
            §9p§.update(0);
            return;
         }
         duplicator.spritesheet.§@S§(false);
         while(true)
         {
            if(!_loc4_)
            {
               child.§9E§(1.5,0);
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr0101);
            }
            §§goto(addr010c);
         }
         §§goto(addr011d);
      }
      
      public function frame21() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            child.model.§#"§(false);
            §"5§();
            pastafarian.§9E§(0.5,2.6);
         }
         pastafarian.spritesheet.§,=§(62);
         pastafarian.spritesheet.§@S§(false);
         §#!P§.§9E§(1.6,2.7);
         §#!P§.spritesheet.§,=§(2);
         §#!P§.spritesheet.§@S§(true);
         §7W§.§9E§(0.4,0.3,null,15);
         while(true)
         {
            if(_loc2_)
            {
               §7W§.spritesheet.§,=§(19);
               §7W§.spritesheet.§@S§(false);
               if(!_loc2_)
               {
                  break;
               }
            }
            duplicator.§9E§(1.1,0.1);
            duplicator.spritesheet.§,=§(54);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr00d5);
         }
         duplicator.spritesheet.§@S§(false);
         if(_loc2_)
         {
            addr00d5:
            child.§9E§(1.5,0.4);
            child.spritesheet.§,=§(35);
            §§goto(addr00eb);
         }
         addr00eb:
         child.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Stay in the vehicle!",-120,-160,null,null,null,_loc1_,null);
         }
      }
      
      public function frame20() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §"5§();
            pastafarian.§9E§(0.5,2.6);
            pastafarian.spritesheet.§,=§(62);
            pastafarian.spritesheet.§@S§(false);
         }
         §#!P§.§9E§(1.6,2.7);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  §#!P§.spritesheet.§,=§(5);
                  if(!_loc5_)
                  {
                     §#!P§.spritesheet.§@S§(false);
                     §7W§.§9E§(0.4,0.3,null,6);
                     §7W§.spritesheet.§,=§(22);
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §7W§.spritesheet.§@S§(false);
                  duplicator.§9E§(1.1,0.9);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               duplicator.spritesheet.§,=§(53);
               duplicator.spritesheet.§@S§(false);
               if(_loc4_)
               {
                  child.§9E§(1.5,0.8);
                  break loop0;
               }
               break;
            }
            child.spritesheet.§@S§(false);
            var _loc1_:* = §&!S§.scale(0.7);
            var _loc2_:* = §&!S§.width(460);
            var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
            if(_loc4_)
            {
               dialog.§";§("Come on, let\'s get out of here before she indoctrinates you.",-160,-50,_loc1_,_loc2_,null,_loc3_,null);
            }
            _loc3_ = new § 6§(child.§<!U§());
            if(_loc4_)
            {
               dialog.§";§("But...!",-240,220,null,null,null,_loc3_,null);
            }
            return;
         }
         child.spritesheet.§,=§(32);
         break loop1;
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(dialog);
         §§push(§&8§);
         if(_loc2_)
         {
            §§push(§§pop());
         }
         §§pop().§+!P§ = §§pop();
         if(!_loc1_)
         {
            §,!J§ = 0.2;
         }
         § !V§.§9E§(8,-1.9,true);
         § !V§.spritesheet.§,=§(51);
         § !V§.spritesheet.§@S§(false);
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               duplicator.§9E§(8,-2.5,true,14);
               duplicator.spritesheet.§,=§(51);
               duplicator.spritesheet.§@S§(false);
               while(true)
               {
                  if(!_loc1_)
                  {
                     child.§9E§(8,-2.8,true,21);
                     if(_loc1_)
                     {
                        break loop0;
                     }
                     child.spritesheet.§,=§(37);
                     if(_loc2_)
                     {
                        child.spritesheet.§@S§(false);
                        if(_loc1_)
                        {
                           break;
                        }
                     }
                  }
                  §#!P§.§9E§(0,0);
                  §#!P§.spritesheet.§,=§(0);
                  §#!P§.spritesheet.§@S§(false);
                  break;
               }
               pastafarian.§9E§(0,0);
            }
            pastafarian.spritesheet.§,=§(0);
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr011b);
         }
         pastafarian.spritesheet.§@S§(false);
         addr011b:
      }
      
      public function frame19() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §"5§();
            pastafarian.§9E§(0.5,2.6);
         }
         pastafarian.spritesheet.§,=§(63);
         pastafarian.spritesheet.§@S§(false);
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               §#!P§.§9E§(1.6,2.7);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §#!P§.spritesheet.§,=§(5);
                        if(!_loc4_)
                        {
                           break;
                        }
                        §#!P§.spritesheet.§@S§(false);
                        §7W§.§9E§(0.4,0.3,null,25);
                        §7W§.spritesheet.§,=§(20);
                        if(!_loc4_)
                        {
                           break;
                        }
                        §7W§.spritesheet.§@S§(false);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        duplicator.§9E§(1,1.3);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     duplicator.spritesheet.§,=§(46);
                     break loop1;
                  }
               }
               duplicator.spritesheet.§@S§(true);
               child.§9E§(1.5,0.8);
               child.spritesheet.§,=§(32);
               break loop2;
            }
            child.spritesheet.§@S§(false);
            break;
         }
         dialog.§";§("A pirate\'s wisdom is universal, I suppose.",-100,-280,null,null,null,null,null);
         var _loc1_:* = §&!S§.width(660);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Say, would you like to learn the Eight Condiments of Piracy?",160,-110,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("No he would not!",200,340,null,null,null,_loc2_,null);
         }
      }
      
      public function frame18() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(_loc10_)
         {
            §+_§(§>K§.home3,0,{
               "stopLoadingAfter":1,
               "endTiles":false
            });
            if(!_loc9_)
            {
               tunnel.§0a§(§ !V§);
            }
         }
         var _loc1_:Vector.<§^s§> = sprites.splice(int(sprites.indexOf(§ !V§,0)),1);
         §4!@§();
         §7!!§.translate(0,0,2100);
         §8E§(§#!P§);
         §8E§(§7W§);
         if(_loc10_)
         {
            §8E§(child);
            §8E§(duplicator);
            §8E§(pastafarian);
         }
         var _loc2_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc2_.x = 0;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc2_.y = 0;
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(§7!!§.position.z);
               if(!_loc9_)
               {
                  §§push(§§pop() - 243);
               }
               §§pop().z = §§pop();
            }
            break;
         }
         var _loc3_:§"B§ = tunnel.§<!M§.§,t§;
         var _loc4_:§"B§ = BoatRide.§;D§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  _loc3_.x = _loc4_.x;
                  _loc3_.y = _loc4_.y;
                  if(_loc9_)
                  {
                     break;
                  }
                  _loc3_.z = _loc4_.z;
                  _loc3_.w = _loc4_.w;
                  tunnel.§<!M§.reset();
                  tunnel.display(0);
                  if(!_loc10_)
                  {
                     break loop1;
                  }
                  pastafarian.§9E§(0.5,2.6);
                  if(_loc9_)
                  {
                     break loop1;
                  }
               }
               pastafarian.spritesheet.§,=§(63);
               break;
            }
            pastafarian.spritesheet.§@S§(false);
            §#!P§.§9E§(1.6,2.7);
            §#!P§.spritesheet.§,=§(5);
            if(!_loc9_)
            {
               §#!P§.spritesheet.§@S§(false);
               §7W§.§9E§(0.4,0.3,null,10);
               if(_loc10_)
               {
                  §7W§.spritesheet.§,=§(19);
                  if(!_loc10_)
                  {
                     break;
                  }
                  §7W§.spritesheet.§@S§(false);
                  duplicator.§9E§(1,0.6);
               }
               duplicator.spritesheet.§,=§(45);
               duplicator.spritesheet.§@S§(false);
               break;
            }
            §§goto(addr0212);
         }
         child.§9E§(1.5,0.8);
         addr0212:
         child.spritesheet.§,=§(32);
         if(_loc10_)
         {
            child.spritesheet.§@S§(false);
         }
         dialog.§";§("Did Blackbeard have a bunny?",-220,-300,null,null,null,null,null);
         var _loc5_:* = §&!S§.width(450);
         if(_loc10_)
         {
            dialog.§";§("Not to the best of my knowledge.",0,-130,null,_loc5_,null,null,null);
         }
         var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc9_)
         {
            dialog.§";§("What makes you believe he did?",240,20,null,null,-1,_loc6_,null);
         }
         _loc5_ = §&!S§.width(580);
         _loc6_ = new § 6§(child.§<!U§());
         if(_loc10_)
         {
            dialog.§";§("Then how\'d he know how to calm down the Bunny?",-200,330,null,_loc5_,0,_loc6_,null);
         }
         var _loc7_:§'§ = dialog;
         if(_loc10_)
         {
            while(true)
            {
               if(int(_loc7_.§@#§.length) > 0)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(_loc7_.§@#§);
                  §§push(int(_loc7_.§@#§.length));
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§7s§ = 115;
               break;
            }
         }
         var _loc8_:§'§ = dialog;
         if(!_loc9_)
         {
            while(true)
            {
               if(int(_loc8_.§@#§.length) > 0)
               {
                  if(!_loc10_)
                  {
                     break;
                  }
                  §§push(_loc8_.§@#§);
                  §§push(int(_loc8_.§@#§.length));
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§6;§();
               break;
            }
         }
      }
      
      public function frame17() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               §7!!§.translate(0,0,250);
               tunnel.§<!M§.translate(0,0,200);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §#!P§.§9E§(1.6,2.4);
                        if(_loc2_)
                        {
                           break;
                        }
                        §#!P§.spritesheet.§,=§(5);
                        §#!P§.spritesheet.§@S§(false);
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        pastafarian.§9E§(0.4,2.4);
                        if(_loc2_)
                        {
                           break loop1;
                        }
                     }
                     pastafarian.spritesheet.§,=§(60);
                     pastafarian.spritesheet.§@S§(false);
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     addr00de:
                     duplicator.spritesheet.§,=§(46);
                     §§goto(addr00e9);
                  }
                  duplicator.§9E§(0.4,0.5);
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  §§goto(addr00de);
               }
               §7W§.§9E§(1.1,0.4,null,25);
               §7W§.spritesheet.§,=§(16);
               §7W§.spritesheet.§@S§(true);
               if(_loc3_)
               {
                  break loop2;
               }
               addr00e9:
               duplicator.spritesheet.§@S§(false);
               child.§9E§(1.7,0.6);
               if(_loc2_)
               {
                  break;
               }
            }
            child.spritesheet.§,=§(40);
            if(_loc3_)
            {
               break;
            }
            var _loc1_:* = §&!S§.scale(0.3);
            §§goto(addr0120);
         }
         child.spritesheet.§@S§(false);
         addr0120:
         if(_loc3_)
         {
            dialog.§`!^§("I\'ve got my eye on you.",-10,70,_loc1_,null,16777215);
            if(_loc3_)
            {
               §[!_§ = 0.2;
            }
         }
      }
      
      public function frame16() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §7!!§.translate(0,0,200);
         tunnel.§<!M§.translate(0,0,100);
         if(!_loc3_)
         {
            tunnel.display(0);
            pastafarian.§9E§(0.4,2.4);
            if(_loc2_)
            {
               pastafarian.spritesheet.§,=§(60);
               pastafarian.spritesheet.§@S§(false);
               §#!P§.§9E§(1.6,2.3);
               while(true)
               {
                  if(_loc2_)
                  {
                     §#!P§.spritesheet.§,=§(1);
                     if(!_loc3_)
                     {
                        §#!P§.spritesheet.§@S§(true);
                        §7W§.§9E§(1.1,0.4,null,5);
                        §7W§.spritesheet.§,=§(15);
                        if(_loc3_)
                        {
                           break;
                        }
                        §7W§.spritesheet.§@S§(true);
                        duplicator.§9E§(0.4,0.5);
                     }
                  }
                  duplicator.spritesheet.§,=§(46);
                  duplicator.spritesheet.§@S§(false);
                  if(_loc2_)
                  {
                     child.§9E§(1.7,0.6);
                  }
                  break;
               }
            }
            child.spritesheet.§,=§(40);
         }
         child.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Wheee!",-300,200,null,null,null,_loc1_,null);
         }
      }
      
      public function frame15() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.§9E§(1.4,2.3);
         §#!P§.spritesheet.§,=§(1);
         §#!P§.spritesheet.§@S§(true);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc3_)
               {
                  pastafarian.§9E§(0.4,1.6);
                  while(true)
                  {
                     if(_loc4_)
                     {
                        pastafarian.spritesheet.§,=§(60);
                        if(_loc3_)
                        {
                           break;
                        }
                        pastafarian.spritesheet.§@S§(false);
                        §7W§.§9E§(1.3,0.4,null,5);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §7W§.spritesheet.§,=§(22);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §7W§.spritesheet.§@S§(true);
                     }
                     duplicator.§9E§(0.5,0.3);
                     break;
                  }
               }
               duplicator.spritesheet.§,=§(46);
               break loop0;
            }
            child.spritesheet.§,=§(31);
            if(_loc4_)
            {
               child.spritesheet.§@S§(false);
               if(_loc4_)
               {
                  dialog.§";§("Phew. Don\'t let that happen again.",-120,-280,null,null,null,null,null);
               }
            }
            var _loc1_:* = §&!S§.width(380);
            var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(_loc4_)
            {
               dialog.§";§("Time to go. Everyone hold on!",-60,-70,null,_loc1_,-1,_loc2_,null);
            }
            return;
         }
         duplicator.spritesheet.§@S§(false);
         if(_loc4_)
         {
            child.§9E§(0.9,0.2);
         }
         break loop1;
      }
      
      public function frame14() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         pastafarian.§9E§(0.8,1.1);
         loop0:
         while(true)
         {
            if(!_loc6_)
            {
               pastafarian.spritesheet.§,=§(62);
               pastafarian.spritesheet.§@S§(false);
               §#!P§.§9E§(1.4,0.3);
               if(_loc6_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(8);
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc5_)
                  {
                     §#!P§.spritesheet.§@S§(true);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §7W§.§9E§(1.3,0.3,null,15);
                     if(!_loc5_)
                     {
                        break loop1;
                     }
                     §7W§.spritesheet.§,=§(21);
                     if(_loc6_)
                     {
                        break loop0;
                     }
                  }
                  §7W§.spritesheet.§@S§(false);
                  duplicator.§9E§(0.5,0.3);
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  dialog.§";§("Hi Bunny, it\'s me.",-380,-300,null,null,null,null,null);
                  addr0128:
                  var _loc1_:* = §&!S§.width(700);
                  var _loc2_:§ 7§ = new § 6§(child.§<!U§());
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        dialog.§";§("The adults say you need to stop biting him even though he totally deserves it, so here\'s a treat for you to have instead.",40,-130,null,_loc1_,-1,_loc2_,null);
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     §7W§.transform.§"I§(§<"§);
                     if(_loc5_)
                     {
                        §<"§ = null;
                     }
                     break;
                  }
                  var _loc3_:§'§ = dialog;
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        if(int(_loc3_.§@#§.length) > 0)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(_loc3_.§@#§);
                           §§push(int(_loc3_.§@#§.length));
                           if(_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           §§push(§§pop()[§§pop()]);
                        }
                        else
                        {
                           §§push(null);
                        }
                        §§pop().§7s§ = 300;
                        break;
                     }
                  }
                  var _loc4_:§'§ = dialog;
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        if(int(_loc4_.§@#§.length) > 0)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(_loc4_.§@#§);
                           §§push(int(_loc4_.§@#§.length));
                           if(!_loc6_)
                           {
                              §§push(§§pop() - 1);
                           }
                           §§push(§§pop()[§§pop()]);
                        }
                        else
                        {
                           §§push(null);
                        }
                        §§pop().§6;§();
                        break;
                     }
                  }
                  return;
                  addr00fb:
               }
               duplicator.spritesheet.§@S§(false);
               if(_loc5_)
               {
                  §§goto(addr00d5);
               }
               §§goto(addr00fb);
            }
            duplicator.spritesheet.§,=§(49);
            if(_loc5_)
            {
               break loop2;
            }
            addr00d5:
            child.§9E§(0.9,0.2);
            break;
         }
         child.spritesheet.§,=§(34);
         child.spritesheet.§@S§(false);
         if(!_loc6_)
         {
            §§goto(addr00fb);
         }
         §§goto(addr0128);
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         §8E§(duplicator);
         §7W§.model.§#"§(true);
         §#!P§.§9E§(1.4,0.3);
         if(!_loc7_)
         {
            §#!P§.spritesheet.§,=§(8);
            §#!P§.spritesheet.§@S§(true);
            pastafarian.§9E§(0.8,1.1);
            pastafarian.spritesheet.§,=§(68);
         }
         pastafarian.spritesheet.§@S§(false);
         §7W§.§9E§(1.3,0.3,null,15);
         §7W§.spritesheet.§,=§(21);
         §7W§.spritesheet.§@S§(false);
         if(!_loc7_)
         {
            duplicator.§9E§(0.8,0.1);
         }
         duplicator.spritesheet.§,=§(49);
         duplicator.spritesheet.§@S§(true);
         child.§9E§(0.5,0);
         child.spritesheet.§,=§(31);
         child.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(510);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("Son, we\'re losing the moral high ground here.",-220,350,null,_loc1_,null,_loc2_,null);
         }
         var _loc3_:§'§ = dialog;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  if(int(_loc3_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc8_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc3_.§@#§);
               §§push(int(_loc3_.§@#§.length));
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§7s§ = 100;
            break;
         }
         var _loc4_:§'§ = dialog;
         if(!_loc7_)
         {
            while(true)
            {
               if(int(_loc4_.§@#§.length) > 0)
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  §§push(_loc4_.§@#§);
                  §§push(int(_loc4_.§@#§.length));
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§6;§();
               break;
            }
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("Oh, fiiine.",360,280,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(700);
         _loc2_ = new § 6§(pastafarian.§<!U§());
         if(!_loc7_)
         {
            dialog.§";§("As Blackbeard famously taught, \"Hatred cannot quell hatred. Peace is achieved only through love.\"",-60,-180,null,_loc1_,null,_loc2_,null);
         }
         var _loc5_:§'§ = dialog;
         loop3:
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  if(int(_loc5_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc8_)
                  {
                     break loop3;
                  }
               }
               §§push(_loc5_.§@#§);
               §§push(int(_loc5_.§@#§.length));
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§7s§ = 300;
            break;
         }
         var _loc6_:§'§ = dialog;
         if(!_loc7_)
         {
            while(true)
            {
               if(int(_loc6_.§@#§.length) > 0)
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  §§push(_loc6_.§@#§);
                  §§push(int(_loc6_.§@#§.length));
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§6;§();
               if(!_loc7_)
               {
                  §7W§.transform.§"I§(§<"§);
               }
               break;
            }
         }
      }
      
      public function frame12() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.transform.§`F§(false,false);
         §7W§.transform.§`F§(false,false);
         §-$§ = null;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     §8E§(child);
                     §7W§.model.§#"§(false);
                     pastafarian.§9E§(1.1,0.5);
                     pastafarian.spritesheet.§,=§(65);
                     pastafarian.spritesheet.§@S§(false);
                     §#!P§.§9E§(1.4,0.3);
                     if(_loc4_)
                     {
                        §#!P§.spritesheet.§,=§(7);
                        §#!P§.spritesheet.§@S§(true);
                        if(!_loc4_)
                        {
                           break;
                        }
                        §7W§.§9E§(1.6,0.3,null,14);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        §7W§.spritesheet.§,=§(23);
                        §7W§.spritesheet.§@S§(false);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        duplicator.§9E§(8,-1.1,true,25);
                     }
                  }
                  duplicator.spritesheet.§,=§(47);
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  break;
               }
               var _loc1_:* = §&!S§.width(310);
               var _loc2_:§ 7§ = new § 6§(child.§<!U§());
               if(_loc4_)
               {
                  dialog.§";§("But why should I help you?",200,70,null,_loc1_,-1,_loc2_,null);
               }
               _loc2_ = new § 6§(§#!P§.§<!U§());
               if(_loc4_)
               {
                  dialog.§";§("It tickles!",-260,240,null,null,0,_loc2_,null);
               }
               return;
            }
            child.spritesheet.§,=§(31);
            child.spritesheet.§@S§(false);
            dialog.§";§("Get this thing off me!",-280,-200,null,null,null,null,null);
            if(!_loc3_)
            {
               dialog.§";§("I could...",-60,-40,null,null,null,null,null);
            }
            break loop2;
         }
         duplicator.spritesheet.§@S§(true);
         if(_loc4_)
         {
            child.§9E§(0.5,0);
         }
         break loop1;
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         pastafarian.§9E§(0.6,1.1);
         pastafarian.spritesheet.§,=§(66);
         while(true)
         {
            if(_loc3_)
            {
               pastafarian.spritesheet.§@S§(false);
               §#!P§.§9E§(1.4,0.3);
               §#!P§.spritesheet.§,=§(8);
               if(!_loc3_)
               {
                  break;
               }
               §#!P§.spritesheet.§@S§(true);
               §7W§.§9E§(1.3,0.3,null,15);
               §7W§.spritesheet.§,=§(19);
               §7W§.spritesheet.§@S§(false);
               duplicator.§9E§(8.2,-2.6,true);
               duplicator.spritesheet.§,=§(45);
               while(true)
               {
                  if(!_loc4_)
                  {
                     duplicator.spritesheet.§@S§(true);
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  child.§9E§(7.8,-1.2,true,30);
                  break;
               }
            }
            child.spritesheet.§,=§(33);
            child.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.width(370);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("It\'s trying to eat my antenna!",-340,30,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(child.§<!U§());
         while(true)
         {
            if(!_loc4_)
            {
               dialog.§";§("Good Bunny!",260,100,null,null,null,_loc2_,null);
               §7W§.transform.§"I§(§<"§);
               if(!_loc3_)
               {
                  break;
               }
            }
            §#!P§.transform.§`F§(false,false);
            if(!_loc4_)
            {
               §7W§.transform.§`F§(false,false);
               §7W§.model.update(0);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr01d3);
            }
            break;
         }
         §#!P§.transform.§3;§();
         if(_loc3_)
         {
            §7W§.transform.§3;§();
            if(!_loc4_)
            {
               §-$§ = new Point3D();
               §`k§();
            }
         }
         addr01d3:
      }
      
      public function frame10() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         if(!_loc10_)
         {
            §8E§(§7W§);
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc11_)
                  {
                     _loc1_.x = 2;
                     if(_loc10_)
                     {
                        break;
                     }
                     _loc1_.y = 0;
                     if(!_loc11_)
                     {
                        break loop1;
                     }
                     _loc1_.z = 9680;
                     if(!_loc11_)
                     {
                        break loop0;
                     }
                  }
                  tunnel.§<!M§.reset();
                  break;
               }
               tunnel.display(0);
               break loop0;
            }
            duplicator.spritesheet.§@S§(true);
            §§goto(addr0121);
         }
         §#!P§.§9E§(1.4,0.1);
         while(true)
         {
            if(_loc11_)
            {
               §#!P§.spritesheet.§,=§(8);
               if(!_loc10_)
               {
                  §#!P§.spritesheet.§@S§(true);
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        pastafarian.§9E§(0.4,1.2);
                        if(_loc10_)
                        {
                           break;
                        }
                        pastafarian.spritesheet.§,=§(63);
                        pastafarian.spritesheet.§@S§(false);
                        §7W§.§9E§(1.3,0.1,null,15);
                        if(!_loc11_)
                        {
                           break;
                        }
                        §7W§.spritesheet.§,=§(19);
                     }
                     §7W§.spritesheet.§@S§(false);
                     break;
                  }
                  duplicator.§9E§(8.2,-2.6,true);
                  duplicator.spritesheet.§,=§(45);
                  if(_loc11_)
                  {
                     break loop1;
                  }
               }
               addr0121:
               child.§9E§(7.8,-2.8,true);
               if(_loc10_)
               {
                  break;
               }
            }
            child.spritesheet.§,=§(31);
            break;
         }
         child.spritesheet.§@S§(false);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc11_)
         {
            dialog.§";§("Gah!",-280,160,null,null,null,_loc2_,null);
         }
         var _loc3_:Transform = §7W§.transform;
         var _loc4_:§"B§ = null;
         while(true)
         {
            if(!_loc10_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(-0.6283185307179586)));
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc11_)
            {
               _loc4_.x = 0 * _loc5_;
               if(!_loc11_)
               {
                  break;
               }
            }
            _loc4_.y = 0 * _loc5_;
            if(_loc11_)
            {
               break;
            }
            §§goto(addr01ee);
         }
         _loc4_.z = _loc5_;
         if(_loc11_)
         {
            addr01ee:
            _loc4_.w = Number(Math.cos(-0.6283185307179586));
            §§goto(addr01fc);
         }
         addr01fc:
         loop6:
         while(true)
         {
            §§push(_loc4_.x);
            if(!_loc10_)
            {
               while(true)
               {
                  §§push(§§pop() * _loc4_.x);
                  if(!_loc10_)
                  {
                     §§push(_loc4_.y);
                     if(!_loc10_)
                     {
                        §§push(_loc4_.y);
                        if(_loc10_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(_loc4_.z);
                  §§push(_loc4_.z);
                  if(_loc11_)
                  {
                     break;
                  }
                  addr0256:
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc11_)
                  {
                     break loop6;
                  }
                  §§push(Number(§§pop()));
               }
               §§push(§§pop() * §§pop());
               if(!_loc10_)
               {
                  §§push(§§pop() + §§pop());
                  §§push(_loc4_.w);
               }
               §§goto(addr0256);
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(_loc6_);
            if(!_loc10_)
            {
               §§push(§§pop() - 1);
               if(!_loc11_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         loop9:
         while(true)
         {
            if(_loc11_)
            {
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc7_);
                        §§push(0);
                        if(!_loc10_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc7_);
                           }
                           else
                           {
                              §§push(_loc7_);
                              if(_loc10_)
                              {
                                 break;
                              }
                              §§push(-§§pop());
                           }
                           §§push(§§pop() < 1e-10);
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop11;
                           }
                           if(!_loc11_)
                           {
                              break loop10;
                           }
                           §§push(_loc6_);
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc4_.x = 0;
                           _loc4_.y = 0;
                           _loc4_.z = 0;
                           if(_loc11_)
                           {
                              break loop10;
                           }
                           break loop9;
                        }
                        §§push(1 / Number(Math.sqrt(_loc6_)));
                        if(_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                        break;
                     }
                     _loc6_ = §§pop();
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc10_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().y = §§pop();
                        §§push(_loc4_);
                        §§push(_loc4_.z);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().z = §§pop();
                        §§push(_loc4_);
                        §§push(_loc4_.w);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().w = §§pop();
                        break;
                     }
                     break loop9;
                  }
               }
               _loc4_.w = 1;
            }
            break loop11;
         }
         var _loc8_:§"B§ = §7W§.transform.§+n§();
         var _loc9_:§"B§ = new §"B§();
         while(true)
         {
            if(_loc11_)
            {
               _loc9_.x = _loc8_.x;
               if(!_loc11_)
               {
                  break;
               }
            }
            _loc9_.y = _loc8_.y;
            if(_loc11_)
            {
               _loc9_.z = _loc8_.z;
               if(!_loc10_)
               {
                  break;
               }
            }
            §§goto(addr03a1);
         }
         _loc9_.w = _loc8_.w;
         if(!_loc10_)
         {
            §<"§ = _loc9_;
         }
         addr03a1:
         _loc1_ = new Point3D(0,5,14);
         while(true)
         {
            if(!_loc10_)
            {
               §4!R§.§@!M§(BoatRide.§;D§,_loc1_,_loc1_);
               if(_loc11_)
               {
                  §§push(§7W§.transform);
                  §§push(-_loc1_.x);
                  §§push(-_loc1_.y);
                  §§push(_loc1_.z);
                  if(!_loc10_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().translate(§§pop(),§§pop(),§§pop());
                  if(_loc10_)
                  {
                     break;
                  }
               }
               §7W§.model.update(0);
               if(_loc11_)
               {
                  §#!P§.transform.§7#§(0.25,§#!P§.transform.position.x,§#!P§.transform.position.y,§#!P§.transform.position.z + 14).ease(Quad.get_easeOut());
                  if(_loc10_)
                  {
                     break;
                  }
               }
            }
            §§push(§7W§.transform);
            §§push(0.4);
            §§push(§7W§.transform.position.x + _loc1_.x);
            §§push(§7W§.transform.position.y + _loc1_.y);
            §§push(§7W§.transform.position.z);
            if(_loc11_)
            {
               §§push(§§pop() + _loc1_.z);
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§7#§(§§pop(),§§pop(),§§pop(),§§pop()).ease(§2f§.get_easeOut());
            break;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §4d§ = new Point3D(0,422,0);
         }
         §0-§ = new Point3D(0,-300,500);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §4!R§.§@!M§(BoatRide.§;D§,§4d§,§4d§);
                  §4!R§.§@!M§(BoatRide.§;D§,§0-§,§0-§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(dialog);
                  §§push(§&8§);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§+!P§ = §§pop();
                  §,!J§ = 0.3;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  §7W§.§9E§(8,-1.95,true,60);
                  §7W§.spritesheet.§,=§(15);
                  §7W§.spritesheet.§@S§(false);
                  § !V§.§9E§(8,-2,true);
                  § !V§.spritesheet.§,=§(51);
               }
               § !V§.spritesheet.§@S§(false);
               if(_loc2_)
               {
                  duplicator.§9E§(8,-2.3,true,18);
                  duplicator.spritesheet.§,=§(51);
                  duplicator.spritesheet.§@S§(false);
                  if(!_loc1_)
                  {
                     break loop0;
                  }
                  break;
               }
               §§goto(addr015a);
            }
            pastafarian.§9E§(0,0);
            pastafarian.spritesheet.§,=§(0);
            if(!_loc1_)
            {
               §§goto(addr0199);
            }
            §§goto(addr01a3);
         }
         child.§9E§(8,-2.5,true,30);
         child.spritesheet.§,=§(37);
         child.spritesheet.§@S§(false);
         §#!P§.§9E§(0,0);
         if(_loc2_)
         {
            addr015a:
            §#!P§.spritesheet.§,=§(0);
            if(!_loc1_)
            {
               §#!P§.spritesheet.§@S§(false);
               break loop1;
            }
            addr0199:
            pastafarian.spritesheet.§@S§(false);
         }
         addr01a3:
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               §4!@§();
               if(!_loc4_)
               {
                  break;
               }
            }
            §8E§(§#!P§);
            if(_loc4_)
            {
               break;
            }
            addr0050:
            §`!6§();
            addr0057:
            var _loc1_:§"B§ = tunnel.§<!M§.§,t§;
            var _loc2_:§"B§ = BoatRide.§;D§;
            while(true)
            {
               if(!_loc5_)
               {
                  _loc1_.x = _loc2_.x;
                  if(_loc4_)
                  {
                     _loc1_.y = _loc2_.y;
                     if(!_loc5_)
                     {
                        _loc1_.z = _loc2_.z;
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                  }
               }
               _loc1_.w = _loc2_.w;
               break;
            }
            var _loc3_:Point3D = tunnel.§<!M§.§%!7§;
            _loc3_.x = 2;
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
                        if(_loc4_)
                        {
                           _loc3_.y = 0;
                           _loc3_.z = 9285;
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           tunnel.§<!M§.reset();
                           tunnel.display(0);
                           Context3DUtils.§7"§ = 5000;
                           Context3DUtils.§37§(Context3DUtils.§&#§);
                           if(_loc5_)
                           {
                              break;
                           }
                           §<!9§.§%!1§();
                           §7W§.§9E§(8,-2.05,true,88);
                           §7W§.spritesheet.§,=§(18);
                           §7W§.spritesheet.§@S§(false);
                           if(_loc5_)
                           {
                              break loop4;
                           }
                           § !V§.§9E§(8,-2,true);
                           § !V§.spritesheet.§,=§(50);
                           § !V§.spritesheet.§@S§(false);
                           duplicator.§9E§(8,-2,true,28);
                           duplicator.spritesheet.§,=§(50);
                           if(_loc5_)
                           {
                              break loop3;
                           }
                           duplicator.spritesheet.§@S§(false);
                           if(_loc5_)
                           {
                              break loop2;
                           }
                           child.§9E§(8,-2,true,53);
                           child.spritesheet.§,=§(36);
                        }
                        child.spritesheet.§@S§(false);
                        §#!P§.§9E§(0,0);
                        if(!_loc5_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §#!P§.spritesheet.§,=§(0);
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop3;
                  }
                  §#!P§.spritesheet.§@S§(false);
                  break loop2;
               }
               pastafarian.spritesheet.§,=§(0);
               pastafarian.spritesheet.§@S§(false);
               return;
            }
            pastafarian.§9E§(0,0);
            break loop3;
         }
         §8E§(pastafarian);
         if(_loc4_)
         {
            §§goto(addr0050);
         }
         §§goto(addr0057);
      }
      
      public function §4!@§() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(!_loc9_)
         {
            §7!!§ = new Transform();
         }
         var _loc1_:Point3D = §7!!§.§<!C§();
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.y = 130;
               if(_loc9_)
               {
                  break;
               }
               §4!R§.§@!M§(BoatRide.§;D§,_loc1_,_loc1_);
               if(_loc9_)
               {
                  break;
               }
            }
            §7!!§.§"w§(_loc1_);
            break;
         }
         var _loc2_:§"B§ = §7!!§.§+n§();
         var _loc3_:§"B§ = _loc2_;
         while(true)
         {
            if(_loc10_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.5707963267948966)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               _loc3_.x = 0 * _loc4_;
               if(_loc9_)
               {
                  break;
               }
               _loc3_.y = 0 * _loc4_;
               if(!_loc10_)
               {
                  break;
               }
            }
            _loc3_.z = _loc4_;
            if(_loc10_)
            {
               _loc3_.w = Number(Math.cos(1.5707963267948966));
            }
            break;
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc3_.x * _loc3_.x);
               §§push(_loc3_.y);
               if(_loc10_)
               {
                  §§push(_loc3_.y);
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(_loc3_.z);
                  §§push(_loc3_.z);
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() + §§pop());
               §§push(_loc3_.w);
               break loop3;
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               §§push(_loc5_);
               if(!_loc9_)
               {
                  §§push(§§pop() - 1);
                  if(_loc9_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc6_:* = §§pop();
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        §§push(_loc6_);
                        §§push(0);
                        if(_loc9_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(-_loc6_);
                           break loop7;
                        }
                     }
                     §§push(_loc6_);
                     if(!_loc9_)
                     {
                        break loop7;
                     }
                     break loop6;
                  }
                  §§goto(addr0178);
               }
               §§push(§§pop() < 1e-10);
               if(_loc10_)
               {
                  §§push(!§§pop());
               }
               while(true)
               {
                  if(§§pop())
                  {
                     §§push(_loc5_);
                     break loop6;
                  }
                  §§goto(addr020f);
               }
               §§goto(addr021e);
            }
            addr0178:
            while(true)
            {
               if(§§pop() == 0)
               {
                  if(!_loc9_)
                  {
                     _loc3_.x = 0;
                     if(_loc10_)
                     {
                        _loc3_.y = 0;
                        _loc3_.z = 0;
                        _loc3_.w = 1;
                     }
                     else
                     {
                        addr01f9:
                        §§push(_loc3_);
                        §§push(_loc3_.w);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().w = §§pop();
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                  }
               }
               else
               {
                  _loc5_ = 1 / Number(Math.sqrt(_loc5_));
                  if(!_loc9_)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc3_);
                     §§push(_loc3_.y);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§push(_loc3_);
                     §§push(_loc3_.z);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().z = §§pop();
                     §§goto(addr01f9);
                  }
               }
               addr020f:
               §4!R§.§9!L§(_loc2_,BoatRide.§;D§,_loc2_);
               break;
            }
            addr021e:
            §7!!§.§"I§(_loc2_);
            §7!!§.§3;§();
            var _loc7_:Model = §>!3§.§,9§(true,false,false,tunnel,null);
            while(true)
            {
               if(!_loc9_)
               {
                  _loc7_.§;!6§(new Transform());
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               _loc7_.transform.§5!,§(§7!!§);
               break;
            }
            var _loc8_:Point3D = _loc7_.transform.§%!7§;
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc8_ == null)
                  {
                     _loc8_ = new Point3D(0,0,0);
                  }
                  _loc8_.x = _loc1_.x * 0.01;
                  _loc8_.y = _loc1_.y * 0.01;
                  §§push(_loc8_);
                  §§push(_loc1_.z);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * 0.01);
                  }
                  §§pop().z = §§pop();
                  _loc7_.transform.§%!7§.z = 175;
                  if(_loc9_)
                  {
                     break;
                  }
                  §4!R§.§1!A§(-1.5707963267948966,0,0,_loc7_.transform.§,t§);
                  if(!_loc10_)
                  {
                     break;
                  }
                  _loc7_.transform.reset();
               }
               tunnel.§"[§.§&!2§(_loc7_);
               if(_loc10_)
               {
                  break;
               }
               §§goto(addr0338);
            }
            §[c§ = new TunnelSection(tunnel,tunnel.§"[§,Vector.<§%!§>([]),"layout-grid3x1|tileWidth-70",1,0);
            addr0338:
            return;
         }
         §§push(_loc3_.w);
         break loop4;
      }
      
      public function §8j§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:§6O§ = child.§!8§;
         var _loc2_:§6O§ = child.§!8§;
         while(true)
         {
            if(_loc3_)
            {
               §9p§ = new §8f§("cutscene/TrainRide/Balloon.png",18.272425249169437,36.544850498338874,false);
               if(_loc4_)
               {
                  break;
               }
            }
            §9p§.§0p§ = 2;
            if(!_loc4_)
            {
               §9p§.§;!6§(new Transform());
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr00a2);
            }
            break;
         }
         tunnel.§"[§.§&!2§(§9p§);
         addr00a2:
      }
      
      public function §8E§(param1:§^s§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               param1.transform.§5!,§(§7!!§);
               if(_loc3_)
               {
                  break;
               }
            }
            param1.§9_§ = §[c§;
            break;
         }
      }
   }
}

