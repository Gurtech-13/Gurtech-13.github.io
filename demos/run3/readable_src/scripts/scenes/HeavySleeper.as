package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§8!8§;
   import §-!!§.§@b§;
   import geom3d.Transform;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import motion.actuators.GenericActuator;
   import motion.easing.Expo;
   import motion.easing.IEasing;
   import nme3D.Scene3D;
   import nme3D.model.Object3D;
   import nme3D.model.Model;
   
   public class HeavySleeper extends §+Z§
   {
      
      public var skaterFollowingLevel:§ !N§;
      
      public var skater:StageActor;
      
      public var lizardFollowingLevel:§ !N§;
      
      public var lizard:StageActor;
      
      public function HeavySleeper()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§0x§,39,null,{
                  "stopLoadingAfter":40,
                  "startTilesLength":0,
                  "modifyData":function(param1:int, param2:String):String
                  {
                     var _temp_1:* = false;
                     var _loc7_:Boolean = true;
                     var _loc8_:Boolean = _temp_1;
                     var _loc3_:* = null as Array;
                     var _loc4_:* = 0;
                     var _loc5_:* = 0;
                     var _loc6_:* = 0;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(param1);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(39);
                                    if(!_loc7_)
                                    {
                                       break loop5;
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       break loop4;
                                    }
                                    if(_loc8_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop().split("|"));
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc7_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc8_)
                                                         {
                                                            break loop6;
                                                         }
                                                      }
                                                      addr007e:
                                                      §§push(int(§§pop()));
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      _loc5_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         break loop3;
                                                      }
                                                   }
                                                   §§goto(addr0135);
                                                }
                                                §§goto(addr0133);
                                             }
                                             §§goto(addr00ac);
                                          }
                                          §§goto(addr0113);
                                       }
                                    }
                                    addr0075:
                                    while(true)
                                    {
                                       §§push(int(§§pop().length));
                                       if(_loc7_)
                                       {
                                          §§goto(addr007e);
                                       }
                                       §§goto(addr0135);
                                    }
                                    §§goto(addr00ac);
                                 }
                                 §§goto(addr014f);
                              }
                              _loc4_ = §§pop();
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    §§goto(addr0075);
                                    §§push(_loc3_);
                                 }
                                 §§goto(addr0133);
                              }
                              §§goto(addr00ac);
                           }
                           loop0:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop3;
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc7_)
                                 {
                                    _loc4_++;
                                    if(_loc7_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 addr00ac:
                                 _loc6_ = §§pop();
                                 if(_loc7_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc8_)
                                          {
                                             §§push(StringTools.startsWith(_loc3_[_loc6_],"terrain-"));
                                             if(!_loc8_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             if(!_loc7_)
                                             {
                                                break loop8;
                                             }
                                          }
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc7_)
                                             {
                                                addr0123:
                                                §§push(_loc6_);
                                                if(!_loc8_)
                                                {
                                                   §§push(int(§§pop()[§§pop()].indexOf("~crumbling")));
                                                   break loop7;
                                                }
                                                §§pop().splice(§§pop(),1);
                                                if(_loc7_)
                                                {
                                                   break loop3;
                                                }
                                                break loop4;
                                             }
                                             addr0121:
                                             §§goto(addr0123);
                                          }
                                          §§goto(addr013c);
                                          §§push(_loc6_);
                                       }
                                       addr010f:
                                       if(§§pop())
                                       {
                                          addr0113:
                                          if(_loc8_)
                                          {
                                             break loop3;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             addr0135:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                continue loop0;
                                             }
                                          }
                                          addr0133:
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break loop9;
                                 }
                                 §§push(_loc3_);
                                 if(_loc7_)
                                 {
                                    §§goto(addr0121);
                                 }
                                 §§goto(addr013c);
                              }
                              §§push(§§pop() >= 0);
                              if(_loc7_)
                              {
                                 break loop8;
                              }
                              §§goto(addr010f);
                           }
                           break loop3;
                        }
                        addr014f:
                        return param2;
                     }
                     addr013c:
                     §§push(_loc3_.join("|"));
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                     }
                     param2 = §§pop();
                     break loop4;
                  }
               });
               skaterFollowingLevel = new § !N§(§>K§.§0x§,40);
               if(!_loc1_)
               {
                  break;
               }
            }
            lizardFollowingLevel = new § !N§(§>K§.§>=§,0);
            break;
         }
         §3!<§(skaterFollowingLevel);
         if(_loc1_)
         {
            §§push(§§findproperty(frames));
            §§push(frame0);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame1);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame2);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame3);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame4);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame5);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame6);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame7);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame8);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame9);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame10);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame11);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame12);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame13);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame14);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame15);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame16);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame17);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame18);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame19);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame20);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame21);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame22);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
         }
         name = "Heavy Sleeper";
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         tunnel.§<M§(1);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  tunnel.camera.§`F§(false,false);
                  if(!_loc1_)
                  {
                     break;
                  }
                  tunnel.camera.§'!=§(false,false);
                  if(!_loc1_)
                  {
                     break loop0;
                  }
               }
               super.unloadLevel();
               break;
            }
            tunnel = null;
            if(_loc1_)
            {
               lizard = null;
               break;
            }
            §§goto(addr0087);
         }
         skater = null;
         sprites.length = 0;
         addr0087:
      }
      
      override public function skip(param1:Event = undefined) : void
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
                  §§push(true);
                  if(_loc3_)
                  {
                     if(§"J§ >= 10)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     §§push(§!!6§ == 1);
                     if(_loc3_)
                     {
                        §§push(!§§pop());
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        break;
                     }
                     break loop0;
                  }
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     super.skip(param1);
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
               else
               {
                  §"J§ = 10;
                  if(_loc3_)
                  {
                     dialog.visible = false;
                  }
               }
            }
            §§push(Boolean(§§pop()));
            break loop1;
         }
      }
      
      public function select(param1:CharacterDef, param2:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  CharacterRegistry.§3§(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(CharacterRegistry.§;<§ != param1)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  dialog.visible = false;
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               if(param1 != CharacterRegistry.lizard)
               {
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               break;
            }
            return;
         }
         §"J§ = int(frames.length);
         break loop1;
      }
      
      public function onTweenUpdate(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               lizard.§^0§();
               if(!_loc2_)
               {
                  break;
               }
            }
            tunnel.display(param1);
            break;
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(CharacterRegistry.§;<§ == CharacterRegistry.lizard)
            {
               if(_loc4_)
               {
                  §3!<§(lizardFollowingLevel);
                  if(_loc3_)
                  {
                  }
                  addr006a:
                  super.loadNext(param1,param2);
               }
            }
            else
            {
               §3!<§(skaterFollowingLevel);
               if(_loc4_)
               {
                  §§goto(addr006a);
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               lizard = new StageActor(section,CharacterRegistry.lizard,false,null,false,null);
               if(!_loc4_)
               {
                  lizard.billboardMode = true;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            sprites.push(lizard);
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("sidePathB");
         loop1:
         while(true)
         {
            if(_loc5_)
            {
               lizard.goesTo = new § !N§(_loc1_,0);
               while(true)
               {
                  if(_loc5_)
                  {
                     skater = new StageActor(section,CharacterRegistry.skater,false,null,false,null);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  skater.billboardMode = true;
                  if(_loc5_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            sprites.push(skater);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc2_);
         if(!_loc4_)
         {
            skater.goesTo = new § !N§(_loc3_,40);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         skater.placeAt(6.6,74.9,null,1);
         skater.spritesheet.§,=§(94);
         if(!_loc4_)
         {
            skater.spritesheet.§@S§(true);
            if(!_loc4_)
            {
               lizard.placeAt(6.3,74.5,null,-7);
            }
            lizard.spritesheet.§,=§(66);
            lizard.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.scale(0.7);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("I\'ll let you sleep then.",-300,-10,_loc1_,null,null,_loc2_,null);
         }
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            skater.placeAt(6.6,74.65,null,1);
            skater.spritesheet.§,=§(81);
            if(_loc4_)
            {
               skater.spritesheet.§@S§(true);
               lizard.placeAt(6.3,74.5,null,-7);
               lizard.spritesheet.§,=§(66);
            }
         }
         lizard.spritesheet.§@S§(false);
         dialog.§";§("Are you o...",-340,0,null,null,null,null,null);
         var _loc1_:* = §&!S§.scale(0.8);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Oh, you\'re asleep.",-120,10,_loc1_,null,-1,_loc2_,null);
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               skater.placeAt(6.7,74.8,null,1);
               skater.spritesheet.§,=§(74);
               skater.spritesheet.§@S§(true);
               lizard.placeAt(6.3,74.5,null,-7);
               if(_loc2_)
               {
                  lizard.spritesheet.§,=§(66);
                  if(_loc1_)
                  {
                     break;
                  }
               }
            }
            lizard.spritesheet.§@S§(false);
            break;
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -20;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 47;
            if(!_loc8_)
            {
               _loc1_.z = 5329;
            }
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               _loc2_.x = _loc3_;
               if(!_loc8_)
               {
                  _loc2_.y = 0 * _loc3_;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc2_.z = 0 * _loc3_;
            if(_loc9_)
            {
               _loc2_.w = Number(Math.cos(0));
            }
            break;
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§push(_loc2_.z);
                  §§push(_loc2_.z);
                  if(!_loc9_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() + §§pop() * §§pop());
               break;
            }
            §§push(Number(§§pop()));
            if(_loc9_)
            {
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break;
            }
            §§goto(addr00f6);
         }
         addr00f6:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc9_)
            {
               §§push(§§pop() - 1);
               if(!_loc9_)
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
            loop7:
            while(true)
            {
               loop9:
               while(true)
               {
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc9_)
                        {
                           §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                           if(_loc9_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop9;
                           }
                           §§push(_loc4_);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           break;
                        }
                        if(_loc8_)
                        {
                           addr01be:
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           break loop6;
                        }
                     }
                     _loc4_ = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     if(_loc8_)
                     {
                        break loop7;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc9_)
                     {
                        break loop6;
                     }
                     §§goto(addr01be);
                  }
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  if(!_loc9_)
                  {
                     break loop6;
                  }
                  _loc2_.z = 0;
                  if(_loc8_)
                  {
                     break loop7;
                  }
                  _loc2_.w = 1;
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§goto(addr01e7);
               }
               §§goto(addr01de);
            }
            skater.spritesheet.§@S§(true);
            §§goto(addr0254);
         }
         §§push(_loc2_);
         §§push(_loc2_.w);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().w = §§pop();
         addr01de:
         tunnel.camera.reset();
         addr01e7:
         tunnel.display(0);
         while(true)
         {
            if(!_loc8_)
            {
               lizard.placeAt(6.3,74.5,null,-7);
               if(!_loc9_)
               {
                  break;
               }
            }
            lizard.spritesheet.§,=§(66);
            if(!_loc8_)
            {
               lizard.spritesheet.§@S§(false);
            }
            skater.placeAt(6.8,75.1,null,1);
            skater.spritesheet.§,=§(81);
            if(!_loc8_)
            {
               break loop7;
            }
            break;
         }
         addr0254:
         var _loc6_:* = §&!S§.width(900);
         if(!_loc8_)
         {
            dialog.§";§("I\'m trying not to do that anymore, but it caught me off-guard when the gravity...",-100,-210,null,_loc6_,null,null,null);
         }
         var _loc7_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Um, hello?",-100,-40,null,null,-1,_loc7_,null);
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         skater.placeAt(7,75.4);
         skater.spritesheet.§,=§(91);
         if(_loc2_)
         {
            skater.spritesheet.§@S§(true);
            lizard.placeAt(6.3,74.5,null,-7);
            lizard.spritesheet.§,=§(66);
            lizard.spritesheet.§@S§(false);
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Sorry about that!",-80,-20,null,null,null,_loc1_,null);
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Scene3D = tunnel.§"[§;
         var _loc2_:Model = lizard.model;
         if(_loc2_.§0p§ > 0)
         {
            §§push(_loc1_.§3!#§);
         }
         else
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(!_loc5_)
                  {
                     if(_loc2_.§0p§ >= 0)
                     {
                        break loop0;
                     }
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(_loc1_.§9!R§ == null);
                        if(_loc5_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break loop0;
               }
            }
            if(§§pop())
            {
               break loop1;
            }
            §§push(_loc1_.§@8§);
         }
         §§pop().§4w§(_loc2_);
         tunnel.§"[§.§&!2§(lizard.model);
         lizard.placeAt(6.6,74.5,null,-7);
         if(_loc4_)
         {
            lizard.spritesheet.§,=§(66);
         }
         lizard.spritesheet.§@S§(false);
         skater.placeAt(7.2,74.9,null,-3);
         if(_loc4_)
         {
            skater.spritesheet.§,=§(9);
         }
         skater.spritesheet.§@S§(true);
         var _loc3_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("Watch out!",-140,320,null,null,null,_loc3_,null);
            if(_loc4_)
            {
               §,!J§ = 0.15;
            }
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            lizard.placeAt(6.8,74.5,null,-7);
            lizard.spritesheet.§,=§(64);
         }
         lizard.spritesheet.§@S§(false);
         if(_loc3_)
         {
            skater.placeAt(7.2,74.4);
         }
         skater.spritesheet.§,=§(7);
         skater.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(!_loc2_)
            {
               dialog.§";§("Watch out!",-140,320,null,null,null,_loc1_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            §,!J§ = 0.05;
            break;
         }
      }
      
      public function frame22() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc1_:Number = 4;
         if(!_loc11_)
         {
            tunnel.camera.§7#§(_loc1_,-393,-117,2320).ease(Expo.§<y§());
         }
         var _loc2_:Transform = tunnel.camera;
         var _loc3_:Quaternion = null;
         while(true)
         {
            if(_loc10_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(-0.7766715171374767)));
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc11_)
            {
               _loc3_.x = 0 * _loc4_;
               if(_loc11_)
               {
                  break;
               }
            }
            _loc3_.y = _loc4_;
            if(!_loc11_)
            {
               _loc3_.z = 0 * _loc4_;
               if(!_loc11_)
               {
                  break;
               }
               addr00c2:
               §§push(_loc3_.x);
               §§push(_loc3_.x);
               if(_loc10_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc3_.y);
                        if(_loc10_)
                        {
                           §§push(_loc3_.y);
                           if(!_loc11_)
                           {
                              §§push(§§pop() + §§pop() * §§pop());
                              §§push(_loc3_.z);
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(_loc3_.z);
                              if(_loc11_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        §§push(_loc3_.w);
                        break;
                     }
                     §§push(_loc3_.w);
                     break;
                  }
               }
               var _loc5_:* = §§pop() + §§pop();
               §§push(_loc5_);
               if(!_loc11_)
               {
                  §§push(§§pop() - 1);
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc6_:* = §§pop();
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     §§push(_loc6_);
                     if(!_loc11_)
                     {
                        §§push(0);
                        if(!_loc10_)
                        {
                           continue loop6;
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc6_);
                              if(_loc11_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(-_loc6_);
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc10_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§push(_loc5_);
                              break;
                           }
                           break loop5;
                        }
                     }
                     §§push(0);
                     continue loop6;
                  }
                  _loc2_.§&!?§(_loc1_,_loc3_).ease(Expo.§<y§());
                  if(!_loc11_)
                  {
                     §§goto(addr0207);
                  }
                  §§goto(addr021c);
               }
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        _loc3_.x = 0;
                        _loc3_.y = 0;
                        if(_loc10_)
                        {
                           _loc3_.z = 0;
                           _loc3_.w = 1;
                           if(!_loc11_)
                           {
                              break loop5;
                           }
                           break loop6;
                        }
                     }
                     else
                     {
                        §§push(1 / Number(Math.sqrt(_loc5_)));
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc5_ = §§pop();
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(_loc10_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().x = §§pop();
                     }
                     §§push(_loc3_);
                     §§push(_loc3_.y);
                     if(!_loc11_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().y = §§pop();
                     if(_loc10_)
                     {
                        break loop6;
                     }
                     addr0207:
                     §§push(dialog);
                     §§push(onTweenUpdate);
                     if(_loc10_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§+!P§ = §§pop();
                     break;
                  }
                  addr021c:
                  lizard.transform.translate(-300,150,-100);
                  §§goto(addr0231);
               }
               §§push(_loc3_);
               §§push(_loc3_.z);
               if(_loc10_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               §§push(_loc3_);
               §§push(_loc3_.w);
               if(_loc10_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().w = §§pop();
               if(_loc10_)
               {
                  break loop5;
               }
               addr0231:
               var _loc7_:Transform = lizard.transform;
               var _loc8_:Quaternion = null;
               if(_loc8_ == null)
               {
                  _loc8_ = new Quaternion();
               }
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        §§push(Number(Math.sin(-0.17453292519943295)));
                        if(_loc10_)
                        {
                           loop15:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc11_)
                                 {
                                    _loc5_ = §§pop();
                                    _loc8_.x = 0 * _loc5_;
                                    _loc8_.y = _loc5_;
                                    if(_loc11_)
                                    {
                                       break loop9;
                                    }
                                    _loc8_.z = 0 * _loc5_;
                                    _loc8_.w = Number(Math.cos(-0.17453292519943295));
                                    §§push(_loc8_.x * _loc8_.x);
                                    §§push(_loc8_.y);
                                    §§push(_loc8_.y);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc11_)
                                    {
                                       break loop15;
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(Number(§§pop()));
                                 §§push(_loc8_.z);
                                 §§push(_loc8_.z);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(!_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                       §§push(_loc8_.w);
                                       §§push(_loc8_.w);
                                       break;
                                    }
                                    break loop14;
                                 }
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc11_)
                           {
                              continue loop11;
                           }
                           §§push(Number(§§pop()));
                        }
                        §§push(Number(§§pop()));
                        if(!_loc11_)
                        {
                           _loc6_ = §§pop();
                           break loop9;
                        }
                        continue loop11;
                     }
                     §§push(Number(§§pop()));
                     continue loop11;
                  }
                  §§push(_loc6_);
                  if(!_loc10_)
                  {
                     break loop14;
                  }
                  §§push(§§pop() - 1);
                  if(!_loc11_)
                  {
                     break loop14;
                  }
                  continue loop11;
               }
               var _loc9_:* = §§pop();
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc9_);
                        §§push(0);
                        if(_loc10_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc9_);
                              if(!_loc11_)
                              {
                                 addr0330:
                                 §§push(§§pop() < 1e-10);
                                 if(_loc10_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop11;
                                 }
                                 §§push(_loc6_);
                                 if(_loc11_)
                                 {
                                    break loop10;
                                 }
                              }
                           }
                           else
                           {
                              §§push(_loc9_);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§push(-§§pop());
                              if(_loc10_)
                              {
                                 §§goto(addr0330);
                              }
                           }
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc6_)));
                           break;
                        }
                        if(_loc10_)
                        {
                           _loc8_.x = 0;
                           _loc8_.y = 0;
                           _loc8_.z = 0;
                           _loc8_.w = 1;
                           break loop11;
                        }
                        §§goto(addr0384);
                     }
                     §§push(Number(§§pop()));
                     break loop10;
                  }
                  _loc7_.rotate(_loc8_);
                  if(_loc10_)
                  {
                     §§goto(addr03f8);
                  }
                  §§goto(addr0403);
               }
               _loc6_ = §§pop();
               while(true)
               {
                  if(_loc10_)
                  {
                     addr0384:
                     §§push(_loc8_);
                     §§push(_loc8_.x);
                     if(!_loc11_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().x = §§pop();
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(_loc8_);
                  §§push(_loc8_.y);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
                  §§pop().y = §§pop();
                  break;
               }
               §§push(_loc8_);
               §§push(_loc8_.z);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc6_);
               }
               §§pop().z = §§pop();
               if(_loc10_)
               {
                  §§push(_loc8_);
                  §§push(_loc8_.w);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
                  §§pop().w = §§pop();
                  if(!_loc11_)
                  {
                     break loop11;
                  }
                  addr03f8:
                  lizard.spritesheet.§,=§(19);
                  addr0403:
                  return;
               }
               break loop11;
            }
            break;
         }
         _loc3_.w = Number(Math.cos(-0.7766715171374767));
         §§goto(addr00c2);
      }
      
      public function frame21() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               lizard.placeAt(12.1,29.3,null,10);
               if(!_loc2_)
               {
                  break;
               }
            }
            lizard.spritesheet.§,=§(14);
            if(!_loc1_)
            {
               lizard.spritesheet.§@S§(true);
               if(_loc2_)
               {
                  §,!J§ = 0.1;
               }
            }
            break;
         }
      }
      
      public function frame20() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            lizard.placeAt(13,29.3);
            if(_loc1_)
            {
               lizard.spritesheet.§,=§(24);
               if(_loc1_)
               {
                  lizard.spritesheet.§@S§(true);
                  if(!_loc2_)
                  {
                     §,!J§ = 0.3;
                  }
               }
            }
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         lizard.placeAt(6.8,74.5,null,-7);
         lizard.spritesheet.§,=§(64);
         lizard.spritesheet.§@S§(false);
         skater.placeAt(7.2,72.5,null,50);
         skater.spritesheet.§,=§(5);
         if(!_loc2_)
         {
            skater.spritesheet.§@S§(true);
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Watch out!",-140,320,null,null,null,_loc1_,null);
            if(!_loc2_)
            {
               §,!J§ = 0.15;
            }
         }
      }
      
      public function frame19() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               lizard.placeAt(2.4,31.3,null,14);
               if(_loc1_)
               {
                  lizard.spritesheet.§,=§(14);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            lizard.spritesheet.§@S§(true);
            if(!_loc2_)
            {
               §,!J§ = 0.35;
            }
            break;
         }
      }
      
      public function frame18() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               lizard.placeAt(2.8,32.2,null,14);
               while(true)
               {
                  if(_loc1_)
                  {
                     lizard.spritesheet.§,=§(24);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  lizard.spritesheet.§@S§(true);
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §,!J§ = 0.2;
            break;
         }
      }
      
      public function frame17() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         tunnel.camera.§`F§(true,false);
         tunnel.camera.§'!=§(true,false);
         lizard.placeAt(2.8,34.9,null,65);
         if(!_loc1_)
         {
            lizard.spritesheet.§,=§(7);
            lizard.spritesheet.§@S§(true);
         }
         §,!J§ = 0.4;
      }
      
      public function frame16() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               lizard.placeAt(9,74.5,null,0);
               if(!_loc8_)
               {
                  lizard.spritesheet.§,=§(66);
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            lizard.spritesheet.§@S§(false);
            break;
         }
         §§push(4.13);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc8_)
         {
            tunnel.camera.§7#§(_loc1_,512,-116,2556).ease(Expo.§<y§());
         }
         var _loc2_:Transform = tunnel.camera;
         var _loc3_:Quaternion = null;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(-1.0471975511965976)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc8_)
         {
            _loc3_.x = 0 * _loc4_;
            while(true)
            {
               if(!_loc8_)
               {
                  _loc3_.y = _loc4_;
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc3_.z = 0 * _loc4_;
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc3_.w = Number(Math.cos(-1.0471975511965976));
               break;
            }
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc3_.x * _loc3_.x);
               §§push(_loc3_.y);
               §§push(_loc3_.y);
               if(!_loc8_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(_loc3_.z);
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(_loc3_.z);
                  if(_loc8_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() * §§pop());
               if(!_loc8_)
               {
                  break;
               }
               §§goto(addr0151);
            }
            §§push(§§pop() + §§pop());
            §§push(_loc3_.w);
            if(_loc7_)
            {
               §§push(_loc3_.w);
               break;
            }
            §§goto(addr0151);
         }
         addr0151:
         var _loc5_:* = §§pop() + §§pop() * §§pop();
         §§push(_loc5_);
         if(_loc7_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(_loc6_);
                  §§push(0);
                  if(!_loc8_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(_loc6_);
                     }
                     else
                     {
                        §§push(-_loc6_);
                     }
                     §§push(§§pop() < 1e-10);
                     if(_loc7_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop6;
                     }
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        break loop5;
                     }
                     §§push(0);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc5_)));
                     break loop5;
                  }
                  _loc3_.x = 0;
                  _loc3_.y = 0;
                  _loc3_.z = 0;
                  while(true)
                  {
                     if(_loc7_)
                     {
                        _loc3_.w = 1;
                        break loop6;
                     }
                     §§goto(addr0247);
                  }
                  §§goto(addr027b);
               }
               §§goto(addr0263);
            }
            _loc2_.§&!?§(_loc1_,_loc3_).ease(Expo.§<y§());
            if(_loc7_)
            {
               addr0247:
               §§push(dialog);
               §§push(onTweenUpdate);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
               §§goto(addr025c);
            }
            §§goto(addr027b);
         }
         _loc5_ = §§pop();
         §§push(_loc3_);
         §§push(_loc3_.x);
         if(_loc7_)
         {
            §§push(§§pop() * _loc5_);
         }
         §§pop().x = §§pop();
         §§push(_loc3_);
         §§push(_loc3_.y);
         if(_loc7_)
         {
            §§push(§§pop() * _loc5_);
         }
         §§pop().y = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               §§push(_loc3_);
               §§push(_loc3_.z);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc3_);
                  §§push(_loc3_.w);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().w = §§pop();
                  break loop6;
               }
               addr025c:
               §=!`§ = _loc1_;
            }
            addr0263:
            while(true)
            {
               §§push(§§findproperty(§,!J§));
               §§push(_loc1_);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1.4);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§,!J§ = §§pop();
            break;
         }
         addr027b:
      }
      
      public function frame15() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               skater.model.§#"§(false);
               if(!_loc1_)
               {
                  break;
               }
               §,!J§ = 0.001;
               if(!_loc1_)
               {
                  break;
               }
            }
            §[!_§ = 2;
            break;
         }
      }
      
      public function frame14() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         tunnel.camera.§`F§(true,false);
         tunnel.camera.§'!=§(true,false);
         lizard.placeAt(7.5,74.5,null,-26);
         lizard.spritesheet.§,=§(65);
         if(_loc2_)
         {
            lizard.spritesheet.§@S§(false);
            if(!_loc1_)
            {
               skater.placeAt(6.2,0);
            }
         }
         skater.spritesheet.§,=§(32);
         if(!_loc1_)
         {
            skater.spritesheet.§@S§(true);
         }
      }
      
      public function frame13() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §§push(dialog);
         §§push(onTweenUpdate);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         §§pop().§+!P§ = §§pop();
         lizard.placeAt(7.5,74.5,null,-26);
         while(true)
         {
            if(_loc6_)
            {
               lizard.spritesheet.§,=§(65);
               lizard.spritesheet.§@S§(false);
               if(_loc7_)
               {
                  break;
               }
               skater.placeAt(6.2,-6,null,-15);
               if(_loc7_)
               {
                  break;
               }
               skater.spritesheet.§,=§(37);
               if(_loc7_)
               {
                  break;
               }
            }
            skater.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:Transform = lizard.transform;
         var _loc2_:Quaternion = null;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.3141592653589793)));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc7_)
         {
            _loc2_.x = 0 * _loc3_;
            while(true)
            {
               if(_loc6_)
               {
                  _loc2_.y = 0 * _loc3_;
                  if(_loc7_)
                  {
                     break;
                  }
               }
               _loc2_.z = _loc3_;
               if(_loc6_)
               {
                  _loc2_.w = Number(Math.cos(0.3141592653589793));
               }
               break;
            }
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.x);
            §§push(_loc2_.x);
            if(!_loc7_)
            {
               §§push(§§pop() * §§pop());
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc7_)
               {
                  break;
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc6_)
            {
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(!_loc7_)
                  {
                     §§push(_loc2_.z);
                     if(_loc6_)
                     {
                        §§push(_loc2_.z);
                        if(!_loc7_)
                        {
                           break loop3;
                        }
                        addr015c:
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                  }
                  addr0166:
                  §§push(Number(§§pop()));
                  break;
               }
               §§goto(addr0167);
            }
            addr0156:
            §§goto(addr015c);
         }
         while(true)
         {
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc7_)
            {
               §§goto(addr0156);
               §§push(Number(§§pop()));
            }
            §§goto(addr0166);
         }
         addr0167:
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc7_)
         {
            §§push(§§pop() - 1);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            if(_loc6_)
            {
               §§push(_loc5_);
               §§push(0);
               if(_loc6_)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc6_)
                        {
                           break loop5;
                        }
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§push(-_loc5_);
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           break;
                        }
                     }
                     break loop5;
                  }
               }
               if(§§pop() != §§pop())
               {
                  _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(_loc6_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                  }
                  break;
               }
            }
            _loc2_.x = 0;
            _loc2_.y = 0;
            _loc2_.z = 0;
            _loc2_.w = 1;
            break;
         }
         _loc1_.rotate(_loc2_);
         §,!J§ = 0.5;
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            §§push(dialog);
            §§push(onTweenUpdate);
            if(_loc6_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
            lizard.placeAt(7.5,74.5,null,-20);
            if(!_loc7_)
            {
               lizard.spritesheet.§,=§(4);
               lizard.spritesheet.§@S§(false);
               skater.placeAt(6.2,-8,null,-15);
            }
            skater.spritesheet.§,=§(29);
            skater.spritesheet.§@S§(true);
         }
         var _loc1_:Transform = lizard.transform;
         var _loc2_:Quaternion = null;
         while(true)
         {
            if(_loc6_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.3141592653589793)));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            if(!_loc7_)
            {
               _loc2_.x = 0 * _loc3_;
               while(true)
               {
                  if(_loc6_)
                  {
                     _loc2_.y = 0 * _loc3_;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  _loc2_.z = _loc3_;
                  if(_loc6_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            _loc2_.w = Number(Math.cos(0.3141592653589793));
            break;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(_loc2_.x);
               if(_loc6_)
               {
                  §§push(§§pop() * _loc2_.x);
                  §§push(_loc2_.y);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(_loc2_.y);
                  if(!_loc6_)
                  {
                     break loop3;
                  }
                  §§push(§§pop() + §§pop() * §§pop());
               }
               while(true)
               {
                  §§push(Number(§§pop()));
                  §§push(_loc2_.z);
                  if(_loc6_)
                  {
                     break loop4;
                  }
                  §§goto(addr0159);
               }
               §§goto(addr015a);
            }
            §§push(_loc2_.z);
            if(!_loc6_)
            {
               break;
            }
            loop11:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.w);
                     if(_loc7_)
                     {
                        break loop11;
                     }
                  }
                  §§push(_loc2_.w);
                  break loop3;
               }
               §§goto(addr015a);
            }
            §§goto(addr0159);
         }
         addr0159:
         addr015a:
         §§push(§§pop() + §§pop() * §§pop());
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(_loc7_)
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
                     if(_loc6_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc6_)
                           {
                              break loop8;
                           }
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(-§§pop());
                        }
                        §§push(§§pop() < 1e-10);
                        if(!_loc7_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop7;
                        }
                        §§push(_loc4_);
                        if(!_loc6_)
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
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     if(_loc6_)
                     {
                        break loop7;
                     }
                     §§goto(addr022c);
                  }
                  §§goto(addr01e4);
               }
               §§goto(addr01f5);
            }
            _loc1_.rotate(_loc2_);
            if(!_loc7_)
            {
               §§goto(addr0248);
            }
            §§goto(addr0250);
         }
         addr01e4:
         _loc4_ = Number(§§pop());
         §§push(_loc2_);
         §§push(_loc2_.x);
         if(_loc6_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().x = §§pop();
         addr01f5:
         §§push(_loc2_);
         §§push(_loc2_.y);
         if(!_loc7_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().y = §§pop();
         if(_loc6_)
         {
            §§push(_loc2_);
            §§push(_loc2_.z);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().z = §§pop();
            if(_loc6_)
            {
               addr022c:
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               break loop7;
            }
         }
         addr0248:
         §,!J§ = 0.5;
         addr0250:
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc10_)
            {
               tunnel.§<M§(1);
               if(_loc11_)
               {
                  §6!I§.visible = true;
                  if(_loc10_)
                  {
                     break;
                  }
               }
            }
            skater.section = tunnel.§]!#§(skater.transform.position.z,true);
            break;
         }
         var _loc1_:Number = 3;
         if(_loc11_)
         {
            tunnel.camera.§7#§(_loc1_,tunnel.camera.position.x + 320,tunnel.camera.position.y,tunnel.camera.position.z - 300);
         }
         var _loc2_:Transform = tunnel.camera;
         var _loc3_:Quaternion = null;
         while(true)
         {
            if(!_loc10_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(-0.39269908169872414)));
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc10_)
            {
               _loc3_.x = 0 * _loc4_;
               if(_loc10_)
               {
                  break;
               }
               _loc3_.y = _loc4_;
               if(_loc10_)
               {
                  break;
               }
            }
            _loc3_.z = 0 * _loc4_;
            if(_loc11_)
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
                     §§push(_loc3_.x);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc3_.x);
                        if(!_loc10_)
                        {
                           §§push(_loc3_.y);
                           §§push(_loc3_.y);
                           if(!_loc11_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           §§push(_loc3_.z);
                           §§push(_loc3_.z);
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc11_)
                           {
                              break loop4;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc10_)
                           {
                              break loop3;
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc3_.w);
                     if(!_loc10_)
                     {
                        break loop4;
                     }
                     addr0158:
                     §§push(§§pop() + §§pop());
                     if(_loc11_)
                     {
                        break loop3;
                     }
                     §§goto(addr0160);
                  }
                  §§goto(addr0158);
               }
               §§push(_loc3_.w);
               break loop18;
            }
            addr0160:
            var _loc5_:* = Number(§§pop());
            §§push(_loc5_);
            if(_loc11_)
            {
               §§push(§§pop() - 1);
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        if(_loc11_)
                        {
                           §§push(_loc6_);
                           if(_loc11_)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          break loop16;
                                       }
                                       §§push(_loc6_);
                                    }
                                    else
                                    {
                                       §§push(_loc6_);
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       §§push(-§§pop());
                                    }
                                    §§push(§§pop() < 1e-10);
                                    if(_loc11_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       break loop5;
                                    }
                                    if(!_loc11_)
                                    {
                                       break loop7;
                                    }
                                    §§push(_loc5_);
                                    §§push(0);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc11_)
                                    {
                                       _loc3_.x = 0;
                                    }
                                    _loc3_.y = 0;
                                    if(_loc11_)
                                    {
                                       _loc3_.z = 0;
                                       if(_loc10_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    _loc3_.w = 1;
                                    break loop5;
                                 }
                                 §§push(1 / Number(Math.sqrt(_loc5_)));
                                 break;
                              }
                           }
                           _loc5_ = §§pop();
                           if(!_loc11_)
                           {
                              break loop6;
                           }
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc5_);
                           }
                           §§pop().x = §§pop();
                           if(_loc10_)
                           {
                              break loop5;
                           }
                        }
                        §§push(_loc3_);
                        §§push(_loc3_.y);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().y = §§pop();
                        if(_loc11_)
                        {
                           break loop7;
                        }
                        §§goto(addr027c);
                     }
                     §§goto(addr02cf);
                  }
                  §§push(_loc3_);
                  §§push(_loc3_.z);
                  if(_loc11_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().z = §§pop();
                  §§push(_loc3_);
                  §§push(_loc3_.w);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().w = §§pop();
                  break loop5;
               }
               var _loc7_:Transform = lizard.transform;
               var _loc8_:Quaternion = null;
               if(_loc8_ == null)
               {
                  _loc8_ = new Quaternion();
               }
               §§push(Number(Math.sin(-0.3141592653589793)));
               if(_loc11_)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc10_)
                           {
                              _loc5_ = §§pop();
                              _loc8_.x = 0 * _loc5_;
                              _loc8_.y = 0 * _loc5_;
                              if(_loc10_)
                              {
                                 break;
                              }
                              _loc8_.z = _loc5_;
                              _loc8_.w = Number(Math.cos(-0.3141592653589793));
                              §§push(_loc8_.x);
                              §§push(_loc8_.x);
                              if(!_loc11_)
                              {
                                 break loop9;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc10_)
                              {
                                 break loop8;
                              }
                           }
                           while(true)
                           {
                              §§push(_loc8_.y);
                              if(_loc11_)
                              {
                                 §§push(_loc8_.y);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() + §§pop() * §§pop());
                                    break loop8;
                                 }
                                 §§goto(addr038c);
                              }
                              §§goto(addr039f);
                           }
                           §§goto(addr03ae);
                        }
                        §§goto(addr03a9);
                     }
                     while(true)
                     {
                        §§push(_loc8_.z);
                        if(_loc11_)
                        {
                           addr038c:
                           §§push(§§pop() * §§pop());
                           if(_loc11_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc10_)
                              {
                                 break;
                              }
                              §§push(_loc8_.w);
                           }
                           addr039f:
                           §§push(_loc8_.w);
                        }
                        §§goto(addr03a4);
                     }
                     §§goto(addr03ae);
                  }
                  §§push(Number(§§pop()));
                  if(_loc11_)
                  {
                     while(true)
                     {
                        §§push(_loc8_.z);
                        if(_loc11_)
                        {
                           break loop9;
                        }
                        addr03a4:
                        _loc6_ = §§pop() + §§pop();
                        addr03a9:
                        §§push(_loc6_ - 1);
                        break;
                     }
                  }
                  addr03ae:
               }
               var _loc9_:* = §§pop();
               loop14:
               while(true)
               {
                  if(_loc11_)
                  {
                     while(true)
                     {
                        §§push(_loc9_);
                        §§push(0);
                        if(!_loc10_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc9_);
                           }
                           else
                           {
                              §§push(_loc9_);
                              if(!_loc11_)
                              {
                                 break;
                              }
                              §§push(-§§pop());
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc11_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop14;
                           }
                           §§push(_loc6_);
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc6_)));
                           break;
                        }
                        _loc8_.x = 0;
                        if(!_loc11_)
                        {
                           §§goto(addr044c);
                        }
                     }
                     _loc6_ = Number(§§pop());
                     §§push(_loc8_);
                     §§push(_loc8_.x);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().x = §§pop();
                     if(_loc11_)
                     {
                        §§push(_loc8_);
                        §§push(_loc8_.y);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().y = §§pop();
                     }
                     addr044c:
                     §§push(_loc8_);
                     §§push(_loc8_.z);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc10_)
                     {
                        §§push(_loc8_);
                        §§push(_loc8_.w);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().w = §§pop();
                        break;
                     }
                     §§goto(addr0493);
                  }
                  _loc8_.y = 0;
                  _loc8_.z = 0;
                  if(_loc11_)
                  {
                     _loc8_.w = 1;
                  }
                  break;
               }
               _loc7_.rotate(_loc8_);
               if(_loc11_)
               {
                  addr0493:
                  §,!J§ = 0.5;
                  §§goto(addr049b);
               }
               addr049b:
               return;
            }
            _loc2_.§&!?§(_loc1_,_loc3_);
            §§push(dialog);
            §§push(onTweenUpdate);
            if(_loc11_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
            addr027c:
            lizard.placeAt(7.4,74.5,null,-20);
            if(!_loc10_)
            {
               lizard.spritesheet.§,=§(66);
            }
            lizard.spritesheet.§@S§(false);
            if(!_loc10_)
            {
               skater.placeAt(6.2,-10,null,-15);
               skater.spritesheet.§,=§(45);
               if(!_loc11_)
               {
                  break loop6;
               }
            }
            addr02cf:
            skater.spritesheet.§@S§(true);
            break loop6;
         }
         _loc3_.w = Number(Math.cos(-0.39269908169872414));
         continue loop4;
      }
      
      public function frame10() : void
      {
         var skaterButton:§8!8§;
         var a11:CharacterDef;
         var f1:Function;
         var lizardButton:§8!8§;
         var a1:CharacterDef;
         var f:Function;
         var _gthis:HeavySleeper;
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         _gthis = this;
         if(CharacterRegistry.lizard.§#U§)
         {
            if(!_loc11_)
            {
               §"J§ = int(frames.length);
               §,!J§ = 0.001;
               return;
            }
         }
         else if(§!!6§ != 1)
         {
            select(CharacterRegistry.lizard,null);
            §,!J§ = 0.001;
         }
         else
         {
            §6!I§.visible = false;
            tunnel.§<M§(0.2);
            if(_loc10_)
            {
               §5! §.§@!A§().§'J§(1);
               if(_loc10_)
               {
                  tunnel.display(0);
               }
            }
            var _loc1_:Scene3D = tunnel.§"[§;
            var _loc2_:Model = lizard.model;
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc2_.§0p§ > 0)
                  {
                     §§push(_loc1_.§3!#§);
                  }
                  else
                  {
                     §§push(false);
                     if(!_loc11_)
                     {
                        if(_loc2_.§0p§ < 0)
                        {
                           while(true)
                           {
                              if(!_loc11_)
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    break loop1;
                                 }
                                 §§push(_loc1_.§9!R§ == null);
                                 if(!_loc11_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc10_)
                        {
                           break loop0;
                        }
                        §§push(_loc1_.§9!R§);
                     }
                     else
                     {
                        §§push(_loc1_.§@8§);
                     }
                  }
                  §§pop().§4w§(_loc2_);
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        break loop0;
                     }
                     §§goto(addr0194);
                  }
                  §§goto(addr019e);
               }
               skater.spritesheet.§,=§(42);
               while(true)
               {
                  if(_loc10_)
                  {
                     skater.spritesheet.§@S§(true);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  lizard.placeAt(6.3,74.5,null,-7);
                  §§goto(addr0183);
               }
               §§goto(addr0194);
            }
            tunnel.§"[§.§&!2§(lizard.model);
            skater.placeAt(6.6,76,null,1);
            while(true)
            {
               if(_loc10_)
               {
                  break loop1;
               }
               addr0183:
               lizard.spritesheet.§,=§(66);
               if(!_loc11_)
               {
                  break;
               }
               addr019e:
               var _loc3_:* = §&!S§.scale(2);
               dialog.§`!^§("Choose your character!",0,-250,_loc3_,null,16777215);
               §§push(§§newactivation());
               §§push(select);
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[2] = §§pop();
               a1 = CharacterRegistry.lizard;
               lizardButton = new §8!8§(function(param1:MouseEvent):void
               {
                  f(a1,param1);
               });
               dialog.addChild(lizardButton);
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(_loc10_)
                     {
                        §§push(§§newactivation());
                        §§push(select);
                        if(_loc10_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§§slot[5] = §§pop();
                        while(true)
                        {
                           if(_loc10_)
                           {
                              a11 = CharacterRegistry.skater;
                              if(!_loc10_)
                              {
                                 break loop4;
                              }
                              skaterButton = new §8!8§(function(param1:MouseEvent):void
                              {
                                 f1(a11,param1);
                              });
                              if(_loc11_)
                              {
                                 break;
                              }
                              dialog.addChild(skaterButton);
                           }
                           dialog.layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
                           {
                              var _temp_1:* = false;
                              var _loc7_:Boolean = true;
                              var _loc8_:Boolean = _temp_1;
                              _gthis.lizard.§]<§ = true;
                              if(!_loc8_)
                              {
                                 _gthis.skater.§]<§ = true;
                                 if(_loc7_)
                                 {
                                    _gthis.tunnel.display(0);
                                    if(!_loc8_)
                                    {
                                       lizardButton.§@F§();
                                       if(!_loc8_)
                                       {
                                          skaterButton.§@F§();
                                       }
                                    }
                                 }
                              }
                              var _loc1_:§38§ = _gthis.dialog.layout.scale;
                              §§push(10);
                              §§push(_loc1_.x);
                              if(!_loc8_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() + _loc1_.y);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(§§pop() / 2);
                                    break;
                                 }
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              var _loc3_:Rectangle = _gthis.lizard.§<!U§();
                              if(!_loc8_)
                              {
                                 lizardButton.§[a§(_loc2_,16777215,0,null,null,null,_loc3_);
                              }
                              var _loc4_:§38§ = _gthis.dialog.layout.scale;
                              §§push(10);
                              §§push(_loc4_.x);
                              if(!_loc8_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() + _loc4_.y);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(§§pop() / 2);
                                    break;
                                 }
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              var _loc6_:Rectangle = _gthis.skater.§<!U§();
                              if(!_loc8_)
                              {
                                 skaterButton.§[a§(_loc5_,16777215,0,null,null,null,_loc6_);
                              }
                           })));
                           break;
                        }
                        _gthis.lizard.§]<§ = true;
                        _gthis.skater.§]<§ = true;
                        _gthis.tunnel.display(0);
                        if(_loc11_)
                        {
                           break loop3;
                        }
                     }
                     lizardButton.§@F§();
                     break loop3;
                  }
                  var _loc4_:§38§ = _gthis.dialog.layout.scale;
                  while(true)
                  {
                     §§push(10);
                     §§push(_loc4_.x);
                     if(_loc10_)
                     {
                        §§push(§§pop() + _loc4_.y);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() / 2);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:Rectangle = _gthis.lizard.§<!U§();
                  if(!_loc11_)
                  {
                     lizardButton.§[a§(_loc5_,16777215,0,null,null,null,_loc6_);
                  }
                  var _loc7_:§38§ = _gthis.dialog.layout.scale;
                  while(true)
                  {
                     §§push(10);
                     §§push(_loc7_.x);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + _loc7_.y);
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc11_)
                     {
                        §§push(§§pop() / 2);
                     }
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  var _loc9_:Rectangle = _gthis.skater.§<!U§();
                  if(_loc10_)
                  {
                     skaterButton.§[a§(_loc8_,16777215,0,null,null,null,_loc9_);
                     if(!_loc11_)
                     {
                        §=!`§ = Number(Math.POSITIVE_INFINITY);
                     }
                  }
                  return;
               }
               skaterButton.§@F§();
               break loop4;
            }
            addr0194:
            lizard.spritesheet.§@S§(false);
            §§goto(addr019e);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         lizard.placeAt(6.8,74.5,null,-7);
         lizard.spritesheet.§,=§(64);
         lizard.spritesheet.§@S§(false);
         skater.placeAt(7.2,71,null,40);
         skater.spritesheet.§,=§(0);
         if(_loc2_)
         {
            skater.spritesheet.§@S§(true);
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(_loc2_)
            {
               dialog.§";§("Watch out!",-140,320,null,null,null,_loc1_,null);
               if(!_loc2_)
               {
                  break;
               }
            }
            §,!J§ = 0.15;
            break;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_)
         {
            §6!I§.visible = true;
         }
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(!_loc6_)
         {
            _loc1_.x = -20;
            while(true)
            {
               if(!_loc6_)
               {
                  _loc1_.y = 47;
                  if(_loc6_)
                  {
                     break;
                  }
               }
               _loc1_.z = 5270;
               break;
            }
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
         §§push(Number(Math.sin(0)));
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               _loc2_.x = _loc3_;
               if(_loc6_)
               {
                  break;
               }
            }
            _loc2_.y = 0 * _loc3_;
            if(_loc7_)
            {
               _loc2_.z = 0 * _loc3_;
               if(_loc7_)
               {
                  _loc2_.w = Number(Math.cos(0));
               }
            }
            break;
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x);
               §§push(_loc2_.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     break loop3;
                  }
               }
               §§push(_loc2_.y);
               if(!_loc6_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(_loc2_.z);
                  if(_loc6_)
                  {
                     break loop3;
                  }
                  §§push(_loc2_.z);
                  if(_loc7_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§goto(addr011d);
                  }
               }
               addr0113:
               §§push(§§pop() * §§pop());
               break loop3;
            }
            §§goto(addr0113);
         }
         §§push(§§pop() + §§pop());
         if(_loc7_)
         {
            addr011d:
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               §§push(§§pop() - 1);
               if(!_loc7_)
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
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(!_loc6_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        §§push(-_loc5_);
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        continue loop9;
                     }
                     if(!_loc7_)
                     {
                        break loop6;
                     }
                     §§push(_loc4_);
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc2_.x = 0;
                     if(!_loc7_)
                     {
                        break loop6;
                     }
                     _loc2_.y = 0;
                     if(_loc6_)
                     {
                        continue loop9;
                     }
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     if(_loc7_)
                     {
                        continue loop9;
                     }
                  }
                  else
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  break;
               }
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(_loc7_)
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
               continue loop9;
            }
            tunnel.camera.reset();
            loop9:
            while(true)
            {
               while(true)
               {
                  if(!_loc6_)
                  {
                     tunnel.display(0);
                     if(!_loc7_)
                     {
                        break;
                     }
                     lizard.placeAt(6.8,74.5,null,-7);
                     if(!_loc7_)
                     {
                        break loop9;
                     }
                  }
                  lizard.spritesheet.§,=§(64);
                  if(_loc7_)
                  {
                     lizard.spritesheet.§@S§(false);
                     if(!_loc6_)
                     {
                        skater.placeAt(8.4,68.2,null,5);
                        break loop6;
                     }
                     break;
                  }
                  break loop9;
               }
               §§goto(addr0297);
            }
            §§goto(addr027e);
         }
         skater.spritesheet.§,=§(0);
         addr027e:
         skater.spritesheet.§@S§(true);
         if(!_loc6_)
         {
            §,!J§ = 0.3;
         }
         addr0297:
      }
   }
}

