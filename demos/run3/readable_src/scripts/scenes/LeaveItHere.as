package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import geom3d.Transform;
   import layout3d.§>N§;
   import §6!Q§.§]u§;
   import §>T§.§"=§;
   import §>T§.§-n§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   
   public class LeaveItHere extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var §9N§:Quaternion;
      
      public var §-P§:StageActor;
      
      public var §"!]§:Point3D;
      
      public var box:§[C§;
      
      public function LeaveItHere()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(§>K§.§`S§,3,LeaveItHere.§3S§,{"startTilesLength":3000});
            while(true)
            {
               if(_loc2_)
               {
                  §§push(§§findproperty(frames));
                  §§push(frame0);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame1);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame2);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame3);
                  if(!_loc1_)
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
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame7);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame8);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame9);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame10);
                  if(!_loc1_)
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
                  §§pop().frames = null;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               name = "Leave It Here";
               break;
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §"!]§ = null;
                  if(_loc1_)
                  {
                     break;
                  }
                  §9N§ = null;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               tunnel = null;
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            §-P§ = null;
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr0062);
         }
         sprites.length = 0;
         addr0062:
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:§+#§ = §+#§.§!!`§();
         § L§.high = 208883;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  §§push(true);
                  if(!_loc4_)
                  {
                     if(param2)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(!_loc5_)
                  {
                     break loop0;
                  }
               }
               addr00a0:
               §§push(§!!6§ == 4);
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  break;
               }
               if(!§§pop())
               {
                  §+#§.§1!"§(_loc3_);
               }
               §§goto(addr00ac);
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               §]u§.§@!A§().§5!@§ = false;
               §§goto(addr00a0);
               §§push(_loc3_.§>c§());
            }
            §§goto(addr00ac);
         }
         Main.instance.§,Z§(null);
         addr00ac:
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            §-P§.billboardMode = true;
            if(!_loc3_)
            {
               sprites.push(§-P§);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(_loc4_)
         {
            §-P§.goesTo = new § !N§(_loc2_,3);
         }
      }
      
      public function frame9() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            §-P§.placeAt(13,50.2,null,70);
            if(!_loc5_)
            {
               §-P§.spritesheet.§,=§(46);
               if(!_loc5_)
               {
                  §-P§.transform.rotate(QuaternionUtils.setFromEuler(0,-1.5707963267948966,0,§9N§));
               }
            }
         }
         var _loc1_:Quaternion = §9N§;
         var _loc2_:Quaternion = §-P§.transform.getRotation();
         while(true)
         {
            if(!_loc5_)
            {
               _loc1_.x = _loc2_.x;
               if(_loc5_)
               {
                  break;
               }
            }
            _loc1_.y = _loc2_.y;
            if(_loc6_)
            {
               _loc1_.z = _loc2_.z;
               if(!_loc5_)
               {
                  break;
               }
            }
            §§goto(addr00bf);
         }
         _loc1_.w = _loc2_.w;
         addr00bf:
         var _loc3_:* = §&!S§.width(1300);
         var _loc4_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc6_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("This tunnel needed a stepping stone anyway.");
                     §§push(140);
                     §§push(320);
                     if(!_loc5_)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           break loop2;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc6_)
                           {
                              break loop2;
                           }
                           §§goto(addr0130);
                        }
                     }
                     §§push(null);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr0147);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0142);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc5_ ? §§pop() : §§pop() / 2.5,_loc3_ == null ? null : int(Math.round(_loc3_ / 2.5)),null,_loc4_);
            addr0147:
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.placeAt(13,50.4,null,30);
               if(_loc3_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§,=§(73);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0066);
         }
         §-P§.transform.rotate(QuaternionUtils.setFromEuler(0,2.199114857512855,0,§9N§));
         if(_loc2_)
         {
            addr0066:
            dialog.§ q§("Oof",50,0,§&!S§.scale(0.5));
            var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
            §§goto(addr007d);
         }
         addr007d:
         if(_loc2_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("You know what?");
                  §§push(-120);
                  §§push(320);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              §§goto(addr00fb);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop1;
                     }
                  }
                  §§push(null);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§goto(addr00fb);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00fb:
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §§push(box.transform);
               §§push(§"!]§.x / 2);
               §§push(§"!]§.y / 2);
               §§push(§"!]§.z);
               if(!_loc2_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().translate(§§pop(),§§pop(),§§pop());
               if(_loc2_)
               {
                  break;
               }
            }
            §-P§.placeAt(12.95,50.3,null,10);
            if(!_loc2_)
            {
               §-P§.spritesheet.§,=§(81);
            }
            break;
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            box.transform.translate(§"!]§.x,§"!]§.y,§"!]§.z);
            if(!_loc2_)
            {
               §-P§.placeAt(13,50.3);
               if(!_loc2_)
               {
                  §-P§.spritesheet.§,=§(80);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §-P§.spritesheet.§@S§(true);
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                     §-P§.transform.rotate(QuaternionUtils.setFromEuler(0,0.18849555921538758,0,§9N§));
                     break;
                  }
               }
            }
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            box.transform.translate(§"!]§.x,§"!]§.y,§"!]§.z);
            if(_loc2_)
            {
               §-P§.placeAt(13.1,50.3);
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Come on...");
                  §§push(160);
                  §§push(-40);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr009b:
                              §§goto(addr00cb);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop0;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop0;
                           }
                        }
                        addr00ad:
                        §§push(null);
                        if(_loc2_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00cb);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00cb:
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §-P§.placeAt(13.25,50.3);
            if(_loc1_)
            {
               §-P§.spritesheet.§,=§(79);
            }
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.placeAt(13.3,49.7);
               if(_loc3_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§,=§(69);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc2_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Maybe if...");
                     §§push(200);
                     §§push(280);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           break loop2;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              break loop2;
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§push(null);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr00b5);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00a5);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00b5:
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §-P§.placeAt(13.4,50.5);
            if(!_loc2_)
            {
               §-P§.spritesheet.§,=§(75);
            }
         }
      }
      
      public function frame12() : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = null as TunnelSection;
         var _loc11_:* = null as TunnelSection;
         while(true)
         {
            if(!_loc13_)
            {
               tunnel.camera.§6!&§(104,-45,857);
               if(_loc13_)
               {
                  break;
               }
            }
            tunnel.camera.§3;§();
            break;
         }
         var _loc1_:Point3D = new Point3D(0.978,0.173,-0.114);
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc14_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.43116998663535)));
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc13_)
         {
            _loc2_.x = _loc1_.x * _loc3_;
            if(_loc14_)
            {
               _loc2_.y = _loc1_.y * _loc3_;
               if(_loc14_)
               {
                  §§push(_loc2_);
                  §§push(_loc1_.z);
                  if(_loc14_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc14_)
                  {
                     _loc2_.w = Number(Math.cos(1.43116998663535));
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            if(_loc14_)
            {
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc13_)
               {
                  break;
               }
               §§push(§§pop() + §§pop() * §§pop());
            }
            while(true)
            {
               §§push(Number(§§pop()));
               if(_loc14_)
               {
                  while(true)
                  {
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc13_)
                     {
                        break loop3;
                     }
                     addr0124:
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  addr0125:
                  §§push(§§pop() + §§pop());
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(Number(§§pop()));
                  if(_loc13_)
                  {
                     break;
                  }
               }
               addr0133:
               §§push(Number(§§pop()));
               break;
            }
            addr0134:
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(_loc14_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc14_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc5_:* = §§pop();
            loop7:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(!_loc13_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc5_);
                     }
                     else
                     {
                        §§push(_loc5_);
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(-§§pop());
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc13_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop7;
                     }
                     §§push(_loc4_);
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc2_.x = 0;
                     if(!_loc14_)
                     {
                        addr01bf:
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc13_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        if(_loc14_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(_loc14_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().y = §§pop();
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.z);
                        if(_loc14_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().z = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(_loc14_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        break loop7;
                     }
                     _loc2_.y = 0;
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     if(!_loc13_)
                     {
                        break loop7;
                     }
                     §§goto(addr0216);
                  }
                  else
                  {
                     §§push(1);
                     if(!_loc13_)
                     {
                        §§push(§§pop() / Number(Math.sqrt(_loc4_)));
                        if(!_loc13_)
                        {
                           break;
                        }
                        addr01bd:
                        _loc4_ = §§pop();
                        §§goto(addr01bf);
                     }
                  }
                  §§goto(addr0220);
               }
               §§goto(addr01bd);
            }
            tunnel.camera.reset();
            tunnel.display(0);
            addr0216:
            addr0220:
            §§push(0);
            if(_loc14_)
            {
               §§push(int(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(int(section.terrain.length));
            if(_loc14_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  if(_loc14_)
                  {
                     while(_loc6_ < _loc7_)
                     {
                        while(true)
                        {
                           §§push(_loc6_);
                           if(_loc14_)
                           {
                              _loc6_++;
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc8_ = §§pop();
                        _loc10_ = section;
                        loop12:
                        while(true)
                        {
                           loop13:
                           while(true)
                           {
                              loop16:
                              while(true)
                              {
                                 if(_loc14_)
                                 {
                                    § L§.low = 948729;
                                    loop17:
                                    while(true)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc14_)
                                             {
                                                §§push(false);
                                                if(!_loc14_)
                                                {
                                                   break loop13;
                                                }
                                                if(_loc8_ < 0)
                                                {
                                                   break;
                                                }
                                                if(_loc13_)
                                                {
                                                   break loop18;
                                                }
                                                §§pop();
                                                if(!_loc14_)
                                                {
                                                   break loop17;
                                                }
                                             }
                                             §§push(_loc8_ < int(_loc10_.terrain.length));
                                             if(!_loc13_)
                                             {
                                                break loop18;
                                             }
                                             break loop13;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc14_)
                                             {
                                                break loop17;
                                             }
                                             break loop12;
                                          }
                                          §§push(null);
                                          break loop16;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc14_)
                                       {
                                          break loop19;
                                       }
                                       break loop13;
                                    }
                                 }
                                 break loop17;
                              }
                              if(§§pop() != null)
                              {
                                 if(_loc13_)
                                 {
                                    break loop12;
                                 }
                                 _loc11_ = section;
                                 if(_loc14_)
                                 {
                                    § L§.low = 948729;
                                    if(!_loc14_)
                                    {
                                       continue loop14;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc8_ >= 0)
                                    {
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       if(!_loc14_)
                                       {
                                          break loop12;
                                       }
                                       §§push(_loc8_ < int(_loc11_.terrain.length));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc13_)
                                       {
                                          break loop12;
                                       }
                                       §§push(_loc11_.terrain[_loc8_]);
                                    }
                                    else
                                    {
                                       §§push(null);
                                    }
                                    §§push(§§pop().§4!5§ == §-n§.§!!A§);
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    _loc9_ = §§pop();
                                    if(_loc14_)
                                    {
                                       break loop12;
                                    }
                                    continue loop14;
                                 }
                                 §§goto(addr035f);
                              }
                              else
                              {
                                 §§push(false);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 §§goto(addr035b);
                              }
                           }
                           addr035b:
                           _loc9_ = Boolean(§§pop());
                           break;
                        }
                        addr035f:
                        if(_loc9_)
                        {
                           _loc11_ = section;
                           § L§.low = 948729;
                           loop14:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§§findproperty(box));
                                 if(!_loc13_)
                                 {
                                    §§push(false);
                                    if(_loc14_)
                                    {
                                       if(_loc8_ < 0)
                                       {
                                          break;
                                       }
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                    }
                                    §§pop();
                                    if(!_loc14_)
                                    {
                                       break loop14;
                                    }
                                 }
                                 §§push(_loc8_ < int(_loc11_.terrain.length));
                                 if(_loc14_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break;
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              §§goto(addr03c1);
                              §§push(null);
                           }
                           addr03c1:
                           §§pop().box = _loc11_.terrain[_loc8_];
                           if(!_loc13_)
                           {
                              box.§@p§ = box.§@p§.clone();
                              box.§@p§.§4!5§ = §-n§.§'!%§;
                              if(!_loc13_)
                              {
                                 box.§@p§.§>z§();
                                 box.model.§;!6§(null);
                                 box.model.§;Z§.§4w§(box.model);
                                 if(!_loc14_)
                                 {
                                    break loop9;
                                 }
                                 box.§9!4§(box.§@p§.§@8§[0]);
                                 box.model.§;!6§(box.transform);
                              }
                              tunnel.§"[§.§&!2§(box.model);
                              break;
                           }
                           break loop10;
                        }
                     }
                  }
                  §-P§.placeAt(17.55,7.5,null,16);
                  if(!_loc13_)
                  {
                     break loop9;
                  }
                  break;
               }
               var _loc12_:§ 7§ = new § 6§(§-P§.§<!U§());
               loop21:
               while(true)
               {
                  if(_loc14_)
                  {
                     loop22:
                     while(true)
                     {
                        loop23:
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Might as well take this box instead.");
                           §§push(-120);
                           §§push(-160);
                           if(_loc14_)
                           {
                              §§push(null);
                              if(!_loc13_)
                              {
                                 while(true)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       §§push(null);
                                       if(!_loc13_)
                                       {
                                          addr0522:
                                          §§push(§§pop());
                                          break loop23;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc13_)
                                       {
                                          break loop22;
                                       }
                                    }
                                    if(§§pop() < 0)
                                    {
                                       break;
                                    }
                                    §§push(null);
                                    break loop22;
                                 }
                                 addr0535:
                                 §§push(null);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop22;
                              }
                              §§goto(addr0522);
                           }
                           §§goto(addr0535);
                        }
                        §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc12_);
                        if(_loc13_)
                        {
                           break loop21;
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break loop23;
                  }
                  dialog.§ q§("Wow, these rings just snap into place.",400,600,§&!S§.scale(0.5),§&!S§.width(540));
                  break;
               }
               return;
            }
            §-P§.spritesheet.§,=§(84);
            if(!_loc13_)
            {
               §-P§.spritesheet.§@S§(true);
               if(_loc14_)
               {
                  §-P§.transform.rotate(QuaternionUtils.setFromEuler(0,-0.7853981633974483,0));
               }
            }
            break loop10;
         }
         while(true)
         {
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
               §§push(_loc2_.w);
               if(_loc14_)
               {
                  §§goto(addr0124);
                  §§push(_loc2_.w);
               }
               §§goto(addr0125);
            }
            §§goto(addr0133);
         }
         §§goto(addr0134);
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               box.§@p§ = box.§@p§.clone();
               box.§@p§.§4!5§ = §-n§.§!!A§;
               box.§@p§.§>z§();
               if(_loc2_)
               {
                  break;
               }
               box.model.§;!6§(null);
            }
            box.model.§;Z§.§4w§(box.model);
            if(_loc3_)
            {
               box.§9!4§(box.§@p§.§@8§[0]);
            }
            box.model.§;!6§(box.transform);
            tunnel.§"[§.§&!2§(box.model);
            §-P§.placeAt(13,50,null,44);
            §-P§.transform.setRotation(§9N§);
            if(_loc3_)
            {
               §-P§.spritesheet.§,=§(83);
            }
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         loop1:
         while(true)
         {
            if(!_loc2_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Aha!");
                        §§push(80);
                        §§push(-80);
                        if(_loc3_)
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop());
                                    break loop3;
                                 }
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop2;
                              }
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
                  if(!_loc3_)
                  {
                     break loop1;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop3;
            }
            §[!_§ = 0.15;
            break;
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §-P§.placeAt(12.9,50,null,44);
            if(_loc2_)
            {
               §-P§.transform.setRotation(§9N§);
               if(_loc2_)
               {
                  §-P§.spritesheet.§,=§(82);
               }
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("Now if I can just...");
                  §§push(-40);
                  §§push(-120);
                  if(!_loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
                                 {
                                    addr0099:
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop1;
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop0;
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0099);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §-P§.spritesheet.§@S§(true);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               box = §[C§.§4r§(tunnel,§"=§.§]R§(tunnel,"movableBox",null,null,null,"left,down"));
               if(_loc8_)
               {
                  break;
               }
               box.§ !&§ = null;
               box.reset();
            }
            box.transform.setRotation(QuaternionUtils.setFromEuler(0,-0.9424777960769379,0));
            if(_loc7_)
            {
               box.transform.§6!&§(-160,-30,3770);
               if(!_loc8_)
               {
                  tunnel.§`=§(box);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §"!]§ = new Point3D(-10,0,0);
               break;
            }
            §§goto(addr00f0);
         }
         QuaternionUtils.rotateVector(box.transform.getRotation(),§"!]§,§"!]§);
         addr00f0:
         var _loc1_:Point3D = new Point3D(0.869,-0.451,-0.201);
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.6929693744344996)));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               _loc2_.x = _loc1_.x * _loc3_;
               if(!_loc8_)
               {
                  _loc2_.y = _loc1_.y * _loc3_;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc2_);
            §§push(_loc1_.z);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc7_)
            {
               break;
            }
            §§goto(addr017e);
         }
         _loc2_.w = Number(Math.cos(1.6929693744344996));
         addr017e:
         §§push(_loc2_.x);
         if(_loc7_)
         {
            §§push(§§pop() * _loc2_.x);
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(_loc7_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        break loop4;
                     }
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  break loop4;
               }
               §§goto(addr01d5);
            }
            §§push(§§pop() + §§pop());
            §§push(_loc2_.w);
            §§push(_loc2_.w);
            break;
         }
         addr01d5:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop6:
         while(true)
         {
            §§push(_loc5_);
            §§push(0);
            if(!_loc8_)
            {
               §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
               if(_loc7_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               §§push(_loc4_);
               §§push(0);
            }
            while(true)
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  if(!_loc8_)
                  {
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     break loop6;
                  }
                  addr0264:
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
               }
               else
               {
                  _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     §§goto(addr0264);
                  }
               }
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               break loop6;
            }
            §§goto(addr02f3);
         }
         tunnel.camera.reset();
         tunnel.camera.§6!&§(-40,-135,4000);
         while(true)
         {
            if(_loc7_)
            {
               tunnel.camera.§3;§();
               if(_loc8_)
               {
                  break;
               }
               tunnel.display(0);
               while(true)
               {
                  if(_loc7_)
                  {
                     §9N§ = new Quaternion();
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §-P§.placeAt(13.4,50.3);
                  break;
               }
            }
            addr02f3:
            §-P§.spritesheet.§,=§(46);
            §§goto(addr02fe);
         }
         addr02fe:
         var _loc6_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc8_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  §§push(dialog);
                  §§push("Um...");
                  §§push(360);
                  §§push(80);
                  if(_loc7_)
                  {
                     §§push(null);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc7_)
                              {
                                 addr033f:
                                 §§push(null);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    break loop9;
                                 }
                                 break loop8;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc8_)
                              {
                                 break loop8;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break;
                              }
                           }
                           §§push(null);
                           if(!_loc8_)
                           {
                              break loop8;
                           }
                           break;
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr033f);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
            }
            §§push(§§pop());
            break loop9;
         }
      }
   }
}

