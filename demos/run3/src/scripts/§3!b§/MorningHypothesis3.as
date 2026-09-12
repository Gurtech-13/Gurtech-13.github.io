package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §,!W§.§`'§;
   import §-d§.§!!-§;
   import §[^§.§!A§;
   import §`_§.§7d§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   import motion.easing.§!!W§;
   import motion.easing.IEasing;
   
   public class MorningHypothesis3 extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:§^s§;
      
      public function MorningHypothesis3()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         super(§>K§.§@§,2,null,{"stopLoadingAfter":3});
         if(_loc2_)
         {
            §8#§ = true;
            if(_loc2_)
            {
               §3!<§(new § !N§(§>K§.§@§,3));
               if(_loc2_)
               {
                  followingCutscene = "MorningHypothesis4";
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
               name = "Morning Hypothesis 3";
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §`'§.§@!A§().§`%§();
               if(_loc1_)
               {
                  break;
               }
            }
            tunnel = null;
            if(_loc2_)
            {
               student = null;
               if(_loc2_)
               {
                  sprites.length = 0;
               }
            }
            break;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            student = new §^s§(§9_§,§'O§.student,false,null,false,null);
            while(true)
            {
               if(_loc4_)
               {
                  student.billboardMode = true;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               sprites.push(student);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(_loc4_)
         {
            student.goesTo = new § !N§(_loc2_,3);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               student.spritesheet.§,=§(70);
               if(!_loc4_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(true);
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr0063);
         }
         dialog.§";§("Who\'s there?",-420,-240,null,null,null,null,null);
         addr0063:
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Who said that?",-420,140,null,null,-1,_loc1_,null);
         }
         var _loc2_:* = §&!S§.scale(1.5);
         if(_loc4_)
         {
            dialog.§";§("Call failed.",-100,-350,_loc2_,null,null,null,null,true);
         }
         _loc2_ = §&!S§.scale(1.5);
         var _loc3_:* = §&!S§.width(700);
         if(!_loc5_)
         {
            dialog.§";§("The authorities have been notified of your location.",220,-80,_loc2_,_loc3_,null,null,null,true);
         }
         _loc2_ = §&!S§.scale(1.5);
         if(!_loc5_)
         {
            dialog.§";§("Please stay where you are.",0,350,_loc2_,null,null,null,null,true);
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc5_)
         {
            _loc1_.x = 91;
            _loc1_.y = -81;
            _loc1_.z = 4603;
            tunnel.§<!M§.reset();
            while(true)
            {
               if(_loc4_)
               {
                  tunnel.display(0);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               student.§9E§(16.9,99);
               break;
            }
            student.spritesheet.§,=§(67);
         }
         var _loc2_:* = §&!S§.scale(1.5);
         if(!_loc5_)
         {
            dialog.§";§("Happening:",-380,-270,_loc2_,null,null,null,null,true);
         }
         _loc2_ = §&!S§.scale(1.5);
         if(_loc4_)
         {
            dialog.§";§("Nothing appropriate.",180,-90,_loc2_,null,null,null,null,true);
         }
         var _loc3_:§ 7§ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("Aah!",-40,320,null,null,null,_loc3_,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            §`'§.§@!A§().§`%§();
            break;
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = 92;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = -79;
            if(_loc8_)
            {
               _loc1_.z = 4574;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.6231562043547263)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc2_);
            §§push(0.956);
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
                  §§push(0.239);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(-0.167);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(1.6231562043547263));
         }
         §§push(_loc2_.x);
         if(!_loc9_)
         {
            §§push(§§pop() * _loc2_.x);
            if(_loc8_)
            {
               while(true)
               {
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(!_loc9_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc8_)
                        {
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.w);
                        }
                        §§push(_loc2_.w);
                     }
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  break;
               }
            }
         }
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
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
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
                                 addr0164:
                                 §§push(_loc5_ < 1e-10);
                                 if(_loc8_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(_loc9_)
                                 {
                                    break loop7;
                                 }
                                 §§push(_loc4_);
                                 if(_loc9_)
                                 {
                                    break loop6;
                                 }
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(_loc8_)
                                 {
                                    §§goto(addr0164);
                                 }
                              }
                              §§push(0);
                           }
                           if(§§pop() == §§pop())
                           {
                              break loop7;
                           }
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           if(!_loc9_)
                           {
                              break loop6;
                           }
                           §§goto(addr01b9);
                        }
                     }
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     if(_loc9_)
                     {
                     }
                     break loop8;
                  }
                  addr01b9:
                  _loc4_ = Number(§§pop());
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(!_loc9_)
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
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(_loc9_)
                  {
                     break loop4;
                  }
               }
               tunnel.§<!M§.reset();
               break loop4;
            }
            var _loc6_:* = §&!S§.width(900);
            var _loc7_:§ 7§ = new § 6§(student.§<!U§());
            if(_loc8_)
            {
               dialog.§";§("And now I have to figure out, on my own, with nothing but an annoyingly loud tunnel, what is happening.",60,-70,null,_loc6_,-1,_loc7_,null);
            }
            return;
         }
         tunnel.display(0);
         if(_loc8_)
         {
            student.§9E§(16.9,98.7);
         }
         student.spritesheet.§,=§(102);
         if(!_loc9_)
         {
            dialog.§";§("But nope, seems I\'m alone.",-300,-260,null,null,null,null,null);
         }
         break loop5;
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               student.spritesheet.§,=§(72);
               if(_loc4_)
               {
                  break;
               }
               student.spritesheet.§@S§(false);
               if(!_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("Here\'s how you test for people:",-260,-320,null,null,null,null,null);
            break;
         }
         var _loc1_:* = §&!S§.scale(2);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Hey! Is anyone there?!",0,-100,_loc1_,null,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("See? That was easy!",-280,320,null,null,null,_loc2_,null);
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = 113;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = -50;
            if(_loc8_)
            {
               break;
            }
            addr0047:
            var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
               }
               _loc2_ = new §"B§();
               break;
            }
            §§push(Number(Math.sin(1.562069680534925)));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop2:
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.901);
                  if(!_loc9_)
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
               §§push(0.334);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(!_loc9_)
                  {
                     break loop2;
                  }
                  addr00c0:
                  _loc2_.w = Number(Math.cos(1.562069680534925));
                  break;
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x);
                     §§push(_loc2_.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(_loc2_.y);
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc9_)
                        {
                           break loop4;
                        }
                        §§push(Number(§§pop()));
                        §§push(_loc2_.z);
                     }
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§goto(addr0118);
                  }
                  while(true)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc8_)
                     {
                        break loop4;
                     }
                     §§goto(addr0128);
                  }
                  §§goto(addr0129);
               }
               §§push(Number(§§pop()));
               §§push(_loc2_.w);
               if(!_loc9_)
               {
                  addr0118:
                  §§push(§§pop() * _loc2_.w);
               }
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  addr0128:
                  §§push(Number(§§pop()));
                  break;
               }
               addr0129:
               var _loc4_:* = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc8_)
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
               loop8:
               while(true)
               {
                  loop9:
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
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(-_loc5_);
                              if(!_loc8_)
                              {
                                 break loop9;
                              }
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
                           if(!_loc8_)
                           {
                              break loop8;
                           }
                           §§push(_loc4_);
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           break;
                        }
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break loop9;
                     }
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     if(_loc8_)
                     {
                     }
                     break loop8;
                  }
                  _loc4_ = Number(§§pop());
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc9_)
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
                  if(_loc8_)
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
                  break;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               while(true)
               {
                  if(!_loc9_)
                  {
                     student.§9E§(16.9,97.7);
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  student.spritesheet.§,=§(94);
                  if(_loc8_)
                  {
                     student.spritesheet.§@S§(true);
                  }
                  break;
               }
               var _loc6_:* = §&!S§.width(840);
               if(!_loc9_)
               {
                  dialog.§";§("Maybe no one else is here, and this tunnel just started beeping on its own.",-40,-210,null,_loc6_,null,null,null);
               }
               var _loc7_:§ 7§ = new § 6§(student.§<!U§());
               if(_loc8_)
               {
                  dialog.§";§("I hope not.",100,0,null,null,-1,_loc7_,null);
               }
               _loc6_ = §&!S§.width(370);
               if(!_loc9_)
               {
                  dialog.§";§("It\'s easier to test for people.",300,290,null,_loc6_,-1,null,null);
               }
               return;
            }
            §§push(_loc2_);
            §§push(-0.275);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(!_loc8_)
            {
               continue loop4;
            }
            §§goto(addr00c0);
         }
         _loc1_.z = 4521;
         §§goto(addr0047);
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            student.§9E§(16.9,96.5);
            while(true)
            {
               if(!_loc1_)
               {
                  student.spritesheet.§,=§(29);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               student.spritesheet.§@S§(true);
               break;
            }
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               student.§9E§(16.9,96.1);
               if(!_loc3_)
               {
                  break;
               }
               student.spritesheet.§,=§(47);
               if(_loc2_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("And will you please stop that?!",80,-220,null,null,null,_loc1_,null);
               if(_loc2_)
               {
                  break;
               }
            }
            § !C§("please");
            break;
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            student.spritesheet.§,=§(93);
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Hello? I said, who\'s there?",80,-120,null,null,null,_loc1_,null);
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            student.spritesheet.§@S§(true);
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Who\'s there?",160,-200,null,null,null,_loc1_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 22;
               if(!_loc7_)
               {
                  break;
               }
               _loc1_.y = -19;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.z = 4129;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.2217304763960306)));
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.039);
               if(!_loc6_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               while(true)
               {
                  if(_loc7_)
                  {
                     §§push(_loc2_);
                     §§push(0.073);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().y = §§pop();
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(_loc2_);
                  §§push(-0.997);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            _loc2_.w = Number(Math.cos(1.2217304763960306));
            break;
         }
         loop4:
         while(true)
         {
            §§push(_loc2_.x);
            if(!_loc6_)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§pop() * _loc2_.x);
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(_loc7_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(_loc2_.z);
                        }
                        §§push(_loc2_.z);
                        if(!_loc7_)
                        {
                           break loop5;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     addr0128:
                     §§push(_loc2_.w);
                     break loop5;
                  }
                  §§goto(addr0128);
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc6_)
         {
            §§push(§§pop() - 1);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           break loop8;
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(-§§pop());
                        }
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        §§push(_loc4_);
                        §§push(0);
                        break loop8;
                     }
                     §§goto(addr020f);
                  }
                  §§goto(addr01ca);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc7_)
                  {
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     if(_loc7_)
                     {
                        _loc2_.z = 0;
                     }
                     _loc2_.w = 1;
                  }
               }
               else
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(_loc7_)
                  {
                     break loop9;
                  }
                  addr01ca:
                  _loc4_ = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc6_)
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
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
               }
               addr020f:
               tunnel.§<!M§.reset();
               if(_loc7_)
               {
                  tunnel.display(0);
                  student.§9E§(17,96);
                  student.spritesheet.§,=§(46);
               }
            }
            student.spritesheet.§@S§(false);
            if(!_loc6_)
            {
               §`'§.§@!A§().§4§(tunnel);
            }
            break;
         }
      }
   }
}

