package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import layout3d.§>N§;
   import §6!Q§.§]u§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class MorningHypothesis4 extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:StageActor;
      
      public function MorningHypothesis4()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         super(§>K§.§@§,3,null,{"stopLoadingAfter":4});
         §8#§ = true;
         if(!_loc1_)
         {
            §3!<§(new § !N§(§>K§.§@§,4));
            followingCutscene = "MorningHypothesis5";
            §§push(§§findproperty(frames));
            §§push(frame0);
            if(_loc2_)
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
            if(_loc2_)
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
            §§push(frame9);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
         }
         name = "Morning Hypothesis 4";
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            tunnel = null;
            if(!_loc2_)
            {
               student = null;
               if(!_loc2_)
               {
                  sprites.length = 0;
               }
            }
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            student = new StageActor(section,CharacterRegistry.student,false,null,false,null);
            if(_loc3_)
            {
               student.billboardMode = true;
               if(!_loc4_)
               {
                  sprites.push(student);
               }
            }
         }
         §§push(§!^§.pathName);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(_loc3_)
         {
            student.goesTo = new § !N§(_loc2_,2);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            student.spritesheet.§,=§(93);
            if(_loc3_)
            {
               student.spritesheet.§@S§(true);
            }
         }
         var _loc1_:* = §&!S§.width(810);
         if(_loc3_)
         {
            dialog.§";§("By the way, my other hypothesis is that you aren\'t a person at all!",-40,-270,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(720);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("If you are a person and you think that\'s rude, too bad!",140,-90,null,_loc1_,-1,_loc2_,null);
            if(!_loc4_)
            {
               § !C§("are");
            }
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Because you\'ve been nothing but rude to me!",-20,300,null,null,null,_loc2_,null);
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            student.spritesheet.§,=§(102);
            if(_loc2_)
            {
               dialog.§";§("...Really?",-300,-260,null,null,null,null,null);
            }
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Hmm...",-80,-120,null,null,-1,_loc1_,null);
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Guess it\'s time for my other hypothesis.",40,300,null,null,null,_loc1_,null);
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               student.placeAt(22,-1.4);
               if(!_loc2_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(100);
            break;
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               student.placeAt(22,-1.2);
               while(true)
               {
                  if(_loc3_)
                  {
                     student.spritesheet.§,=§(70);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  student.spritesheet.§@S§(false);
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            dialog.§";§("I didn\'t go far, by the way.",-300,-200,null,null,null,null,null);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("In case that\'s an issue.",240,-80,null,null,-1,_loc1_,null);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc7_)
            {
               _loc1_.x = 213;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = -194;
            if(_loc8_)
            {
               break;
            }
            addr004e:
            var _loc2_:Quaternion = tunnel.camera.§,t§;
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
            §§push(Number(Math.sin(1.6929693744344996)));
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop2:
            while(true)
            {
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.074);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().x = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.031);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(_loc8_)
                  {
                     break loop2;
                  }
                  addr00c8:
                  _loc2_.w = Number(Math.cos(1.6929693744344996));
                  break;
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc2_.x);
                        §§push(_loc2_.y);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                     }
                     §§goto(addr0133);
                  }
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  addr0133:
                  §§push(Number(§§pop()));
                  if(!_loc7_)
                  {
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc8_)
                        {
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.w);
                        }
                     }
                     §§push(_loc2_.w);
                     break;
                  }
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
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              §§push(0);
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                              if(_loc8_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break loop7;
                              }
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(0);
                           break;
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           break loop6;
                        }
                        if(_loc8_)
                        {
                           _loc2_.x = 0;
                           if(_loc8_)
                           {
                              _loc2_.y = 0;
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    _loc2_.z = 0;
                                    _loc2_.w = 1;
                                    break loop7;
                                 }
                                 §§goto(addr024b);
                              }
                           }
                           §§goto(addr026c);
                        }
                        else
                        {
                           §§goto(addr01ff);
                        }
                     }
                     tunnel.camera.reset();
                     if(!_loc7_)
                     {
                        tunnel.display(0);
                        if(!_loc7_)
                        {
                           §§goto(addr022f);
                        }
                     }
                     §§goto(addr026c);
                  }
                  _loc4_ = Number(§§pop());
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.z);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().z = §§pop();
                        addr01ff:
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        break loop7;
                     }
                     addr022f:
                     student.placeAt(22,-1);
                     if(_loc8_)
                     {
                        student.spritesheet.§,=§(101);
                     }
                     addr024b:
                     dialog.§";§("I\'m back!",-300,-260,null,null,null,null,null);
                     break;
                  }
                  var _loc6_:§ 7§ = new § 6§(student.§<!U§());
                  addr026c:
                  if(!_loc7_)
                  {
                     dialog.§";§("Did you miss me?",60,-120,null,null,-1,_loc6_,null);
                  }
                  return;
               }
               §§push(§§pop() * §§pop());
               break loop5;
            }
            §§push(_loc2_);
            §§push(0.997);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc7_)
            {
               continue loop4;
            }
            §§goto(addr00c8);
         }
         _loc1_.z = -226;
         §§goto(addr004e);
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            student.spritesheet.§,=§(66);
            if(_loc3_)
            {
               dialog.§";§("Ok, seriously?",-240,-240,null,null,null,null,null);
            }
         }
         var _loc1_:* = §&!S§.width(730);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("I know you said to stay where I was, but I\'ve barely gone anywhere!",120,-110,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("How did you lose track of me already?",0,320,null,null,null,_loc2_,null);
            if(_loc3_)
            {
               §[!_§ = 0.2;
            }
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            student.spritesheet.§,=§(94);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            student.spritesheet.§,=§(95);
            if(!_loc3_)
            {
               student.spritesheet.§@S§(true);
            }
         }
         var _loc1_:* = §&!S§.width(700);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("And maybe you could try to be a bit nicer this time.",-80,-80,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         _loc1_.x = 143;
         while(true)
         {
            if(_loc3_)
            {
               _loc1_.y = -249;
               if(!_loc3_)
               {
                  break;
               }
               _loc1_.z = 8720;
            }
            tunnel.camera.reset();
            break;
         }
         tunnel.display(0);
         student.placeAt(21,95.31);
         if(_loc3_)
         {
            student.spritesheet.§,=§(93);
         }
         student.spritesheet.§@S§(false);
         dialog.§";§("Are you still there?",-260,-280,null,null,null,null,null);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("\'Cause if so, we need to talk.",20,-80,null,null,-1,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(_loc8_)
         {
            _loc1_.x = 95;
            if(_loc8_)
            {
               _loc1_.y = -228;
               if(!_loc9_)
               {
                  _loc1_.z = 8817;
               }
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
         §§push(Number(Math.sin(1.5882496193148399)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            §§push(_loc2_);
            §§push(0.929);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.286);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.236);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  _loc2_.w = Number(Math.cos(1.5882496193148399));
               }
               break;
            }
         }
         while(true)
         {
            §§push(_loc2_.x);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc2_.x);
               if(_loc9_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc9_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc8_)
                  {
                     §§push(§§pop() + §§pop());
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(_loc2_.z);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(_loc2_.w);
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     §§push(_loc2_.w);
                  }
               }
               §§push(§§pop() * §§pop());
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc9_)
            {
               break;
            }
            addr0137:
            var _loc4_:* = Number(§§pop());
            §§goto(addr0136);
         }
         §§push(Number(§§pop()));
         if(!_loc9_)
         {
            addr0136:
            §§push(_loc4_);
            if(!_loc9_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           loop8:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             break loop8;
                                          }
                                          addr0180:
                                          §§push(_loc5_ < 1e-10);
                                          if(!_loc9_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!§§pop())
                                          {
                                             break loop6;
                                          }
                                          if(_loc9_)
                                          {
                                             break loop7;
                                          }
                                          §§push(_loc4_);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             §§goto(addr0180);
                                             §§push(-§§pop());
                                          }
                                       }
                                       §§push(0);
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          addr01b7:
                                          _loc2_.x = 0;
                                          if(_loc8_)
                                          {
                                             break loop7;
                                          }
                                          break loop4;
                                       }
                                       break loop8;
                                    }
                                    §§push(1 / Number(Math.sqrt(_loc4_)));
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              _loc4_ = §§pop();
                              break;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().y = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           if(!_loc9_)
                           {
                              break loop6;
                           }
                           break loop4;
                        }
                        §§goto(addr01b7);
                     }
                     _loc2_.y = 0;
                     if(_loc8_)
                     {
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                        break;
                     }
                     break loop5;
                  }
                  tunnel.camera.reset();
                  break;
               }
               tunnel.display(0);
               student.placeAt(21,95.3);
               if(_loc8_)
               {
                  student.spritesheet.§,=§(70);
                  if(_loc9_)
                  {
                     break;
                  }
                  student.spritesheet.§@S§(true);
               }
               dialog.§";§("Hey... you.",-340,-240,null,null,null,null,null);
               break;
            }
            var _loc6_:§ 7§ = new § 6§(student.§<!U§());
            if(_loc8_)
            {
               dialog.§";§("Strange voice.",-40,-220,null,null,-1,_loc6_,null);
            }
            _loc6_ = new § 6§(student.§<!U§());
            if(_loc8_)
            {
               dialog.§";§("Whoever you are.",20,300,null,null,null,_loc6_,null);
            }
            var _loc7_:* = §&!S§.scale(0.5);
            if(!_loc9_)
            {
               dialog.§`!^§("Authorities? Talking tunnel?",120,-180,_loc7_,null,16777215);
            }
            return;
         }
         §§goto(addr0137);
      }
   }
}

