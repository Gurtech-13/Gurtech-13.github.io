package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class ChangeTheSubject extends §+Z§
   {
      
      public static var §2#§:* = {
         "obj":{"billboardMode":null},
         "fields":{
            "skater":{"fade":null},
            "pastafarian":{"fade":null}
         }
      };
      
      public var skater:StageActor;
      
      public var pastafarian:StageActor;
      
      public function ChangeTheSubject()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§0x§,-1,null,{
                  "endTiles":false,
                  "startTilesLength":3000
               });
               if(_loc1_)
               {
                  break;
               }
            }
            §§push(§§findproperty(frames));
            §§push(frame0);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame1);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame2);
            if(_loc2_)
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
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame6);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame7);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame8);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(_loc2_)
            {
               name = "Change the Subject";
            }
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               tunnel = null;
               if(_loc2_)
               {
                  break;
               }
               skater = null;
               if(_loc1_)
               {
                  pastafarian = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc5_)
            {
               skater = new StageActor(section,CharacterRegistry.skater,true,null,false,null);
               if(_loc6_)
               {
                  skater.billboardMode = true;
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            sprites.push(skater);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc5_)
            {
               skater.goesTo = new § !N§(_loc2_,-1);
               if(!_loc6_)
               {
                  break;
               }
            }
            pastafarian = new StageActor(section,CharacterRegistry.pastafarian,true,null,false,null);
            if(!_loc5_)
            {
               pastafarian.billboardMode = true;
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr00d9);
            }
            break;
         }
         sprites.push(pastafarian);
         addr00d9:
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc5_)
         {
            pastafarian.goesTo = new § !N§(_loc4_,-1);
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 1149;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = -408;
            if(!_loc9_)
            {
               break;
            }
            addr004f:
            var _loc2_:Quaternion = tunnel.camera.§,t§;
            while(true)
            {
               if(_loc8_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
               }
               _loc2_ = new Quaternion();
               break;
            }
            §§push(Number(Math.sin(1.1868238913561442)));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop2:
            while(true)
            {
               while(true)
               {
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(-0.144);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     §§push(-0.986);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc2_);
                  §§push(-0.087);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc8_)
                  {
                     break loop2;
                  }
                  break;
               }
               while(true)
               {
                  §§push(_loc2_.x);
                  if(_loc8_)
                  {
                     §§push(_loc2_.x);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc2_.y);
                     }
                     §§push(_loc2_.y);
                     if(_loc8_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                  }
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
                  break;
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc4_);
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(!_loc9_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(-_loc5_);
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop5;
                        }
                        §§push(_loc4_);
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(!_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc4_ = §§pop();
                        if(_loc8_)
                        {
                           break;
                        }
                        break loop5;
                     }
                     _loc2_.x = 0;
                     while(true)
                     {
                        if(_loc8_)
                        {
                           _loc2_.y = 0;
                           _loc2_.z = 0;
                           if(_loc9_)
                           {
                              break;
                           }
                           _loc2_.w = 1;
                           if(_loc8_)
                           {
                              break loop5;
                           }
                           addr01d3:
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().y = §§pop();
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.z);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().z = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        break;
                     }
                     §§goto(addr024d);
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  if(_loc8_)
                  {
                     §§goto(addr01d3);
                  }
                  §§goto(addr0258);
               }
               tunnel.camera.reset();
               if(!_loc9_)
               {
                  tunnel.display(0);
               }
               skater.placeAt(4.8,1.8);
               skater.spritesheet.§,=§(51);
               if(_loc8_)
               {
                  skater.spritesheet.§@S§(true);
                  addr024d:
                  pastafarian.placeAt(5,0.6);
               }
               addr0258:
               pastafarian.spritesheet.§,=§(75);
               pastafarian.spritesheet.§@S§(true);
               var _loc6_:* = §&!S§.scale(0.1);
               var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
               if(!_loc9_)
               {
                  dialog.§";§("Hitting a target requires a specific combiniation of throwing speed and angle, based on your distance away.",-100,0,_loc6_,null,null,_loc7_,null);
               }
               return;
            }
            _loc2_.w = Number(Math.cos(1.1868238913561442));
            break loop3;
         }
         _loc1_.z = 1903;
         §§goto(addr004f);
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(_loc8_)
         {
            _loc1_.x = 866;
            while(true)
            {
               if(!_loc9_)
               {
                  _loc1_.y = -265;
                  if(_loc9_)
                  {
                     break;
                  }
               }
               _loc1_.z = 778;
               break;
            }
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.0297442586766543)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(-0.139);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.984);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(-0.115);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
               }
            }
            _loc2_.w = Number(Math.cos(1.0297442586766543));
            break;
         }
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            §§push(_loc2_.y);
            if(!_loc9_)
            {
               §§push(§§pop() + §§pop() * §§pop());
               §§push(_loc2_.z);
               §§push(_loc2_.z);
               if(_loc9_)
               {
                  break;
               }
            }
            §§goto(addr010d);
         }
         addr010d:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         §§push(_loc2_.w);
         if(!_loc9_)
         {
            §§push(_loc2_.w);
            break loop3;
         }
         §§push(§§pop() + §§pop());
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
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
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               loop8:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc8_)
                              {
                                 break loop10;
                              }
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(-_loc5_);
                           }
                           §§push(§§pop() < 1e-10);
                           if(!_loc9_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop8;
                           }
                           if(_loc9_)
                           {
                              break loop6;
                           }
                           §§push(_loc4_);
                           if(!_loc8_)
                           {
                              break loop5;
                           }
                        }
                        §§push(0);
                        break;
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                        break loop5;
                     }
                     if(!_loc9_)
                     {
                        _loc2_.x = 0;
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 _loc2_.y = 0;
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 _loc2_.z = 0;
                                 if(!_loc8_)
                                 {
                                    break loop12;
                                 }
                              }
                              _loc2_.w = 1;
                              if(!_loc9_)
                              {
                                 break loop8;
                              }
                              break loop10;
                           }
                           §§goto(addr0278);
                        }
                        §§goto(addr024b);
                     }
                     §§goto(addr0240);
                  }
                  §§goto(addr01e7);
               }
               §§goto(addr0223);
            }
            skater.placeAt(4.8,2.1);
            addr0240:
            skater.spritesheet.§,=§(50);
            addr024b:
            skater.spritesheet.§@S§(true);
            while(true)
            {
               if(!_loc9_)
               {
                  §§goto(addr025c);
               }
               §§goto(addr0278);
            }
            §§goto(addr0282);
         }
         _loc4_ = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().x = §§pop();
               addr01e7:
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                  }
                  addr0223:
                  tunnel.camera.reset();
                  tunnel.display(0);
                  break loop6;
               }
            }
            addr025c:
            pastafarian.placeAt(5,1);
            pastafarian.spritesheet.§,=§(97);
            if(_loc8_)
            {
               break;
            }
            §§goto(addr0282);
         }
         addr0278:
         pastafarian.spritesheet.§@S§(true);
         addr0282:
         var _loc6_:* = §&!S§.scale(0.5);
         var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc9_)
         {
            dialog.§";§("To begin, grip the handle like so...",-120,-20,_loc6_,null,null,_loc7_,null);
         }
         _loc6_ = §&!S§.scale(0.4);
         _loc7_ = new § 6§(skater.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("Aim that way, you don\'t want to lose it again!",200,60,_loc6_,null,null,_loc7_,null);
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 323;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = -48;
            if(!_loc10_)
            {
               break;
            }
            addr0047:
            var _loc2_:Quaternion = tunnel.camera.§,t§;
            while(true)
            {
               if(!_loc10_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
               }
               _loc2_ = new Quaternion();
               break;
            }
            §§push(Number(Math.sin(0.8377580409572781)));
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               if(!_loc10_)
               {
                  §§push(_loc2_);
                  §§push(-0.156);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().x = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(-0.972);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().y = §§pop();
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  §§push(_loc2_);
                  §§push(-0.177);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc2_.w = Number(Math.cos(0.8377580409572781));
               break;
            }
            §§push(_loc2_.x);
            §§push(_loc2_.x);
            if(!_loc10_)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc2_.y);
                     if(_loc9_)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc2_.y);
                              if(_loc9_)
                              {
                                 §§push(§§pop() + §§pop() * §§pop());
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 §§push(_loc2_.z);
                                 if(_loc10_)
                                 {
                                    break loop5;
                                 }
                                 §§push(_loc2_.z);
                                 if(!_loc9_)
                                 {
                                    break loop4;
                                 }
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 break loop5;
                              }
                              break loop3;
                           }
                           §§push(Number(§§pop()));
                           §§push(_loc2_.w);
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        break loop6;
                     }
                     §§push(_loc2_.w);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
            }
            break loop3;
         }
         _loc1_.z = 189;
         §§goto(addr0047);
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 171;
               if(_loc8_)
               {
                  break;
               }
               _loc1_.y = 29;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.z = 7;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.5846852994181003)));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.197);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc7_)
               {
                  §§push(_loc2_);
                  §§push(-0.977);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc2_);
            §§push(-0.078);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(!_loc8_)
            {
               _loc2_.w = Number(Math.cos(0.5846852994181003));
            }
            break;
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            §§push(_loc2_.y);
            if(!_loc8_)
            {
               §§push(§§pop() + §§pop() * §§pop());
               §§push(_loc2_.z);
               §§push(_loc2_.z);
               if(_loc8_)
               {
                  break;
               }
            }
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           break loop5;
                        }
                        §§push(_loc2_.w);
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                     }
                     §§push(_loc2_.w);
                     break loop3;
                  }
                  §§goto(addr011b);
               }
               §§goto(addr0124);
            }
            addr011b:
            §§push(§§pop() + §§pop());
            if(_loc7_)
            {
               break loop5;
            }
            addr0124:
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(_loc7_)
            {
               §§push(§§pop() - 1);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
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
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc7_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(-_loc5_);
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc7_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop8;
                           }
                           if(_loc8_)
                           {
                              break loop7;
                           }
                           §§push(_loc4_);
                           if(!_loc7_)
                           {
                              break loop6;
                           }
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           break loop6;
                        }
                        if(!_loc8_)
                        {
                           _loc2_.x = 0;
                           if(!_loc8_)
                           {
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                              break loop8;
                           }
                           §§goto(addr025b);
                        }
                        skater.spritesheet.§,=§(81);
                        skater.spritesheet.§@S§(false);
                        pastafarian.placeAt(5,1);
                        if(_loc7_)
                        {
                           pastafarian.spritesheet.§,=§(103);
                           if(!_loc8_)
                           {
                              pastafarian.spritesheet.§@S§(true);
                           }
                        }
                        addr025b:
                        var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
                        if(!_loc8_)
                        {
                           dialog.§";§("Well... I like cooking, reading, knife throwing...",-80,-240,null,null,null,_loc6_,null);
                        }
                        _loc6_ = new § 6§(skater.§<!U§());
                        if(_loc7_)
                        {
                           dialog.§";§("Knife throwing?",320,-100,null,null,null,_loc6_,null);
                        }
                        _loc6_ = new § 6§(skater.§<!U§());
                        if(!_loc8_)
                        {
                           dialog.§";§("This I\'ve gotta see.",220,320,null,null,null,_loc6_,null);
                        }
                        return;
                     }
                     tunnel.display(0);
                     skater.placeAt(4.8,2.1);
                     §§goto(addr0218);
                  }
                  tunnel.camera.reset();
                  break loop9;
               }
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               break loop8;
            }
            _loc4_ = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().y = §§pop();
            break loop7;
         }
         §§push(§§pop() * §§pop());
         break loop4;
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         skater.placeAt(4.8,2.1);
         skater.spritesheet.§,=§(74);
         skater.spritesheet.§@S§(false);
         pastafarian.placeAt(5,1);
         pastafarian.spritesheet.§,=§(102);
         pastafarian.spritesheet.§@S§(true);
         var _loc1_:* = §&!S§.width(630);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Also, per the First Condiment, I won\'t hold it against you.",-60,-260,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(360);
         _loc2_ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("That\'s very interesting; let\'s talk hobbies.",400,-20,null,_loc1_,null,_loc2_,null);
            if(!_loc4_)
            {
               dialog.§";§("What do you do for fun?",220,280,null,null,-1,null,null);
            }
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  skater.placeAt(4.8,2.1);
                  skater.spritesheet.§,=§(81);
                  if(_loc4_)
                  {
                     break;
                  }
                  skater.spritesheet.§@S§(false);
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  pastafarian.placeAt(5,1);
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               pastafarian.spritesheet.§,=§(102);
               if(!_loc4_)
               {
                  break loop0;
               }
               break;
            }
            var _loc1_:* = §&!S§.width(560);
            var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
            if(!_loc4_)
            {
               dialog.§";§("I can\'t believe you believe in magic sky food!",220,-150,null,_loc1_,-1,_loc2_,null);
            }
            _loc1_ = §&!S§.scale(0.4);
            if(_loc3_)
            {
               dialog.§`!^§("Did you really just...",-360,290,_loc1_,null,16777215);
            }
            _loc1_ = §&!S§.width(700);
            _loc2_ = new § 6§(pastafarian.§<!U§());
            if(!_loc4_)
            {
               dialog.§";§("No, that\'s perfectly ok. He doesn\'t penalize nonbelievers excessively.",40,330,null,_loc1_,null,_loc2_,null);
            }
            return;
         }
         pastafarian.spritesheet.§@S§(true);
         dialog.§";§("I don\'t want to be rude, but...",-260,-300,null,null,null,null,null);
         break loop1;
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         skater.placeAt(4.8,2.1);
         if(_loc3_)
         {
            skater.spritesheet.§,=§(82);
            skater.spritesheet.§@S§(false);
            if(!_loc4_)
            {
               pastafarian.placeAt(5,1);
               pastafarian.spritesheet.§,=§(102);
               pastafarian.spritesheet.§@S§(true);
            }
         }
         var _loc1_:* = §&!S§.width(590);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("The Flying Spaghetti Monster extends His gratitude as well.",-20,-270,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            skater.placeAt(4.9,3.4);
         }
         skater.spritesheet.§,=§(80);
         skater.spritesheet.§@S§(false);
         pastafarian.placeAt(5,1);
         pastafarian.spritesheet.§,=§(87);
         pastafarian.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("What\'s up?",40,-320,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(560);
         _loc1_ = new § 6§(pastafarian.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("I wanted to thank you for returning my wooden spoon after I lost it.",-220,-120,null,_loc2_,null,_loc1_,null);
         }
         _loc1_ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("No problem. So how\'ve you been?",260,300,null,null,null,_loc1_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 110;
               if(_loc7_)
               {
                  break;
               }
               _loc1_.y = 25;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc1_.z = -61;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.3839724354387525)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.362);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(-0.924);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc7_)
            {
               break;
            }
            §§push(_loc2_);
            §§push(-0.122);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc8_)
            {
               break;
            }
            loop3:
            while(true)
            {
               §§push(_loc2_.x);
               §§push(_loc2_.x);
               if(_loc8_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_.y);
               }
               loop4:
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
                           §§push(_loc2_.y);
                           if(_loc8_)
                           {
                              §§push(§§pop() + §§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 break loop6;
                              }
                              §§push(_loc2_.z);
                              if(!_loc8_)
                              {
                                 break loop5;
                              }
                              §§push(_loc2_.z);
                              if(!_loc8_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 break;
                              }
                              break loop6;
                           }
                           break loop3;
                        }
                        §§push(_loc2_.w);
                        §§push(_loc2_.w);
                        break loop4;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        break loop3;
                     }
                     addr0134:
                     var _loc4_:* = §§pop();
                     §§push(_loc4_);
                     if(_loc8_)
                     {
                        §§push(§§pop() - 1);
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc5_:* = §§pop();
                     loop8:
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc8_)
                        {
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(_loc5_);
                              }
                              else
                              {
                                 §§push(-_loc5_);
                              }
                              §§push(§§pop() < 1e-10);
                              if(_loc8_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              break loop8;
                           }
                        }
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    _loc2_.x = 0;
                                    if(!_loc8_)
                                    {
                                       break loop8;
                                    }
                                    _loc2_.y = 0;
                                    _loc2_.z = 0;
                                    if(!_loc8_)
                                    {
                                       break loop11;
                                    }
                                    _loc2_.w = 1;
                                    if(!_loc7_)
                                    {
                                       break loop8;
                                    }
                                    skater.spritesheet.§,=§(50);
                                    if(_loc7_)
                                    {
                                       break loop10;
                                    }
                                 }
                                 else
                                 {
                                    §§push(1 / Number(Math.sqrt(_loc4_)));
                                    if(_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc2_.x);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() * _loc4_);
                                       }
                                       §§pop().x = §§pop();
                                       §§push(_loc2_);
                                       §§push(_loc2_.y);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() * _loc4_);
                                       }
                                       §§pop().y = §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(_loc2_);
                                          §§push(_loc2_.z);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() * _loc4_);
                                          }
                                          §§pop().z = §§pop();
                                       }
                                       §§push(_loc2_);
                                       §§push(_loc2_.w);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() * _loc4_);
                                       }
                                       §§pop().w = §§pop();
                                       break loop8;
                                    }
                                 }
                                 addr025e:
                                 skater.spritesheet.§@S§(false);
                                 pastafarian.placeAt(5,-0.2);
                                 break loop10;
                              }
                              §§goto(addr027e);
                           }
                           var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
                           if(!_loc7_)
                           {
                              dialog.§";§("Skater! A moment of your time!",-240,-80,null,null,null,_loc6_,null);
                           }
                           return;
                        }
                        pastafarian.spritesheet.§,=§(85);
                        addr027e:
                        pastafarian.spritesheet.§@S§(true);
                        break loop11;
                     }
                     tunnel.camera.reset();
                     if(_loc8_)
                     {
                        tunnel.display(0);
                        skater.placeAt(4.8,3.8);
                        if(!_loc8_)
                        {
                           break loop10;
                        }
                        §§goto(addr024c);
                     }
                     §§goto(addr025e);
                  }
                  §§push(§§pop() + §§pop());
                  break loop6;
               }
               §§push(§§pop() * §§pop());
               break loop5;
            }
            §§goto(addr0134);
         }
         _loc2_.w = Number(Math.cos(0.3839724354387525));
         §§goto(addr00d0);
      }
   }
}

