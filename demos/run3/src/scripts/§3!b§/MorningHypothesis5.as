package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §,!W§.§`'§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class MorningHypothesis5 extends §+Z§
   {
      
      public var student:§^s§;
      
      public var §-P§:§^s§;
      
      public function MorningHypothesis5()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         super(§>K§.§@§,2,null,{"stopLoadingAfter":3});
         §8#§ = true;
         §3!<§(new § !N§(§>K§.§@§,5));
         followingCutscene = "MorningHypothesis6";
         §§push(§§findproperty(frames));
         §§push(frame0);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§push(frame1);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§push(frame2);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§push(frame3);
         if(!_loc2_)
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
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame9);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame10);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§push(frame11);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§push(frame12);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame13);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame14);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame15);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame16);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame17);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame18);
         if(!_loc2_)
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
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame23);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame24);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§push(frame25);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§push(frame26);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§pop().frames = null;
         name = "Morning Hypothesis 5";
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
               if(!_loc2_)
               {
                  break;
               }
            }
            tunnel = null;
            if(!_loc1_)
            {
               student = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            §-P§ = null;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0062);
         }
         sprites.length = 0;
         addr0062:
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               student = new §^s§(§9_§,§'O§.student,false,null,false,null);
               if(_loc3_)
               {
                  break;
               }
               student.billboardMode = true;
               if(_loc3_)
               {
                  break;
               }
            }
            sprites.push(student);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc3_)
            {
               student.goesTo = new § !N§(_loc2_,5);
               if(_loc4_)
               {
                  §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
                  if(!_loc3_)
                  {
                     §-P§.billboardMode = true;
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
            }
            sprites.push(§-P§);
            break;
         }
      }
      
      public function frame9() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 138;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = -9;
            if(!_loc8_)
            {
               _loc1_.z = 4392;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.7627825445142729)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(-0.61);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.186);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc2_);
            §§push(0.77);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc9_)
            {
               break;
            }
            loop3:
            while(true)
            {
               loop4:
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
                        break loop3;
                     }
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(_loc8_)
                           {
                              break loop4;
                           }
                           §§push(_loc2_.w);
                        }
                        §§push(_loc2_.w);
                        break;
                     }
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  break;
               }
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(_loc9_)
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
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(_loc9_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(-_loc5_);
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc9_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop7;
                        }
                        §§push(_loc4_);
                        if(!_loc9_)
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
                     if(_loc9_)
                     {
                        break loop7;
                     }
                     §§goto(addr01db);
                  }
                  §§goto(addr01a4);
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               student.§9E§(16.8,97.4);
               student.spritesheet.§,=§(92);
               student.spritesheet.§@S§(false);
               var _loc6_:* = §&!S§.width(870);
               while(true)
               {
                  if(!_loc8_)
                  {
                     dialog.§";§("Next, I complained about having to figure this out on my own.",-120,-310,null,_loc6_,null,null,null);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  dialog.§";§("And then you finally spoke up, and told me off.",150,-140,null,null,-1,null,null);
                  if(!_loc8_)
                  {
                     § !C§("then");
                  }
                  break;
               }
               _loc6_ = §&!S§.width(1000);
               var _loc7_:§ 7§ = new § 6§(student.§<!U§());
               if(_loc9_)
               {
                  dialog.§";§("And you said I should stay here because the Authorities were on their way.",-20,10,null,_loc6_,-1,_loc7_,null);
               }
               return;
            }
            addr01a4:
            _loc4_ = Number(§§pop());
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(_loc9_)
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
            }
            §§push(_loc2_);
            §§push(_loc2_.z);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().z = §§pop();
            addr01db:
            §§push(_loc2_);
            §§push(_loc2_.w);
            if(_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().w = §§pop();
            break loop7;
         }
         _loc2_.w = Number(Math.cos(1.7627825445142729));
         continue loop3;
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               student.§9E§(17,95.2);
               if(!_loc4_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(56);
            break;
         }
         var _loc1_:* = §&!S§.width(630);
         if(_loc4_)
         {
            dialog.§";§("At this point, I thought you might be a person.",-100,-230,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(480);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("But when I asked, you said nothing.",60,-10,null,_loc1_,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(920);
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("People usually respond when I shout at them, so I figured you were something else.",80,350,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 78;
               if(_loc7_)
               {
                  _loc1_.y = 28;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 4103;
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
         §§push(Number(Math.sin(2.0420352248333655)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            §§push(-0.063);
            if(_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.069);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(0.996);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc2_.w = Number(Math.cos(2.0420352248333655));
               break;
            }
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc7_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(Number(§§pop()));
                  §§push(_loc2_.z);
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc8_)
                     {
                        break loop3;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.w);
                     §§push(_loc2_.w);
                  }
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc8_)
               {
                  break loop3;
               }
               break;
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
            if(_loc7_)
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
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           while(true)
                           {
                              §§push(0);
                              if(!_loc8_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    addr016c:
                                    §§push(_loc5_ < 1e-10);
                                    if(!_loc8_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       break loop6;
                                    }
                                    §§push(_loc4_);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       §§goto(addr016c);
                                    }
                                 }
                                 §§push(0);
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break;
                              }
                              _loc2_.x = 0;
                              if(!_loc7_)
                              {
                                 break loop8;
                              }
                              _loc2_.y = 0;
                              if(!_loc8_)
                              {
                                 _loc2_.z = 0;
                                 _loc2_.w = 1;
                                 break loop6;
                              }
                              §§goto(addr0225);
                           }
                        }
                        _loc4_ = §§pop();
                        if(!_loc8_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                           break;
                        }
                        break loop7;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        break loop6;
                     }
                     §§goto(addr0238);
                  }
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               if(_loc7_)
               {
                  addr0225:
                  student.§9E§(16.7,94);
                  if(!_loc7_)
                  {
                     break loop7;
                  }
               }
               addr0238:
               student.spritesheet.§,=§(53);
            }
            break loop7;
         }
         §§push(Number(§§pop()));
         break loop4;
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            student.spritesheet.§,=§(107);
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Oh.",-120,-120,null,null,null,_loc1_,null);
            if(_loc3_)
            {
               §[!_§ = 0.2;
            }
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            student.spritesheet.§,=§(95);
            if(!_loc2_)
            {
               student.spritesheet.§@S§(true);
            }
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 31;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = -114;
            if(_loc8_)
            {
               break;
            }
            addr0042:
            var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
            while(true)
            {
               if(_loc8_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
               }
               _loc2_ = new §"B§();
               break;
            }
            §§push(Number(Math.sin(1.0297442586766543)));
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
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(-0.535);
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
                     §§push(-0.055);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().y = §§pop();
                     if(_loc9_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc2_);
                  §§push(-0.843);
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
               §§push(_loc2_.x);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc2_.x);
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(_loc8_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(_loc9_)
                        {
                           break loop4;
                        }
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           §§push(_loc2_.w);
                           §§push(_loc2_.w);
                           break loop4;
                        }
                        §§goto(addr0118);
                     }
                     §§goto(addr0119);
                  }
                  §§goto(addr0118);
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc9_)
               {
                  break loop5;
               }
               addr0119:
               var _loc4_:* = Number(§§pop());
               addr0118:
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc8_)
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
                  loop8:
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
                                 break loop8;
                              }
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(-§§pop());
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc8_)
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
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           break;
                        }
                        if(_loc8_)
                        {
                           _loc2_.x = 0;
                           if(!_loc9_)
                           {
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                              break loop7;
                           }
                        }
                        else
                        {
                           addr01c7:
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().y = §§pop();
                           if(!_loc8_)
                           {
                              break loop7;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(_loc8_)
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
                              break loop7;
                           }
                           §§goto(addr022b);
                        }
                        §§goto(addr0236);
                     }
                     _loc4_ = §§pop();
                     if(!_loc9_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr01c7);
                        }
                        §§goto(addr0236);
                     }
                     §§goto(addr0211);
                  }
                  student.§9E§(18.5,-0.9,null,-1);
                  addr022b:
                  student.spritesheet.§,=§(67);
                  §§goto(addr0236);
               }
               tunnel.§<!M§.reset();
               if(!_loc9_)
               {
                  addr0211:
                  tunnel.display(0);
                  break loop8;
               }
               addr0236:
               dialog.§";§("Hey, voice! I\'m about to go get the Skater!",-80,-340,null,null,null,null,null);
               var _loc6_:* = §&!S§.width(680);
               var _loc7_:§ 7§ = new § 6§(student.§<!U§());
               if(_loc8_)
               {
                  dialog.§";§("I need his help to do teleportation experiments!",160,-150,null,_loc6_,-1,_loc7_,null);
               }
               _loc7_ = new § 6§(student.§<!U§());
               while(true)
               {
                  if(!_loc9_)
                  {
                     dialog.§";§("Don\'t you have anything to say to that?",20,280,null,null,null,_loc7_,null);
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  dialog.§";§("Hint, hint!",220,360,null,null,-1,null,null);
                  break;
               }
               return;
            }
            _loc2_.w = Number(Math.cos(1.0297442586766543));
            break loop3;
         }
         _loc1_.z = -67;
         §§goto(addr0042);
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = §&!S§.width(700);
         if(_loc4_)
         {
            dialog.§";§("I said... that I needed someone to push me off the edge.",-160,-210,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(490);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("So that I couldn\'t anticipate the fall.",140,-30,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("And then I said I was about to go get the Skater.",20,340,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(0.5);
         if(!_loc3_)
         {
            dialog.§`!^§("Still gotta test that sometime...",300,40,_loc1_,null,16777215);
         }
      }
      
      public function frame26() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §-P§.§9E§(16.8,104.1,null,-47);
            if(!_loc3_)
            {
               §-P§.spritesheet.§,=§(59);
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("I had all the information I needed, all along.",-100,-220,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Guess I just needed to sleep on it.",140,220,null,null,null,_loc1_,null);
         }
      }
      
      public function frame25() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §`'§.§@!A§().§4§(tunnel);
            if(!_loc3_)
            {
               §-P§.spritesheet.§,=§(74);
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("I knew it!",260,20,null,null,null,_loc1_,null);
         }
      }
      
      public function frame24() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Shape = new Shape();
         if(!_loc3_)
         {
            §<!T§.fillRect(_loc1_,§^F§.SOLID(0),null,null,null,null,dialog.layout);
            if(!_loc3_)
            {
               dialog.addChild(_loc1_);
            }
         }
         var _loc2_:* = §&!S§.scale(2.5);
         if(_loc4_)
         {
            dialog.§`!^§("2 seconds later",0,0,_loc2_,null,16777215);
            if(_loc4_)
            {
               §,!J§ = 1.6;
               if(_loc4_)
               {
                  §[!_§ = 0.2;
               }
            }
         }
      }
      
      public function frame23() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §-P§.spritesheet.§,=§(78);
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         while(true)
         {
            if(!_loc2_)
            {
               dialog.§";§("Wait, I might have figured out what caused it.",-80,-160,null,null,null,_loc1_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            §[!_§ = 0.2;
            break;
         }
      }
      
      public function frame22() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §-P§.spritesheet.§,=§(95);
         }
      }
      
      public function frame21() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc6_)
            {
               _loc1_.x = 84;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.y = -83;
            if(!_loc6_)
            {
               _loc1_.z = 4902;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc6_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.6667894356545847)));
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               §§push(-0.923);
               if(!_loc6_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(-0.382);
            if(!_loc6_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(!_loc6_)
            {
               §§push(_loc2_);
               §§push(0.049);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc6_)
               {
                  break;
               }
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc2_.x);
                           if(_loc7_)
                           {
                              §§push(§§pop() * _loc2_.x);
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(_loc2_.y);
                              §§push(_loc2_.y);
                              if(_loc6_)
                              {
                                 break loop8;
                              }
                              §§push(§§pop() + §§pop() * §§pop());
                              §§push(_loc2_.z);
                              §§push(_loc2_.z);
                              if(_loc6_)
                              {
                                 break loop8;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 break loop4;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(_loc2_.w);
                           break loop4;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        break loop3;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     break loop9;
                  }
                  §§push(_loc2_.w);
                  break loop8;
               }
               var _loc4_:* = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc7_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc6_)
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
                     if(!_loc6_)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(!_loc6_)
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
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(_loc4_);
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           if(!_loc6_)
                           {
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                              break;
                           }
                           break loop6;
                        }
                        _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc6_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     break loop6;
                  }
                  tunnel.§<!M§.reset();
                  if(!_loc6_)
                  {
                     tunnel.display(0);
                     student.§9E§(16.69,98.1,null,-11);
                  }
                  §-P§.§9E§(16.8,105,null,-50);
                  if(!_loc6_)
                  {
                     §-P§.spritesheet.§@S§(false);
                  }
                  return;
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
               break loop7;
            }
            break;
         }
         _loc2_.w = Number(Math.cos(1.6667894356545847));
         continue loop8;
      }
      
      public function frame20() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Shape = new Shape();
         while(true)
         {
            if(_loc3_)
            {
               §<!T§.fillRect(_loc1_,§^F§.SOLID(0),null,null,null,null,dialog.layout);
               if(!_loc3_)
               {
                  break;
               }
            }
            dialog.addChild(_loc1_);
            break;
         }
         var _loc2_:* = §&!S§.scale(2.5);
         while(true)
         {
            if(!_loc4_)
            {
               dialog.§`!^§("7 hours later",0,0,_loc2_,null,16777215);
               if(!_loc3_)
               {
                  break;
               }
            }
            §[!_§ = 0.2;
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc5_)
                  {
                     _loc1_.x = 33;
                     _loc1_.y = -20;
                     if(!_loc5_)
                     {
                        break;
                     }
                     _loc1_.z = -156;
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     tunnel.§<!M§.reset();
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  tunnel.display(0);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  break loop1;
               }
               §§goto(addr0095);
            }
            var _loc2_:* = §&!S§.width(730);
            if(!_loc4_)
            {
               dialog.§";§("Maybe it reacted to something I said, not anything I did.",-40,-110,null,_loc2_,-1,null,null);
            }
            var _loc3_:§ 7§ = new § 6§(student.§<!U§());
            if(!_loc4_)
            {
               dialog.§";§("What was I talking about?",320,40,null,null,-1,_loc3_,null);
            }
            return;
         }
         student.§9E§(18,-0.9);
         student.spritesheet.§,=§(102);
         if(!_loc4_)
         {
            addr0095:
            dialog.§";§("Guess not.",-380,-260,null,null,null,null,null);
         }
         break loop1;
      }
      
      public function frame19() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §-P§.spritesheet.§,=§(94);
            while(true)
            {
               if(!_loc2_)
               {
                  §,!J§ = 0.1;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               §[!_§ = 2;
               break;
            }
         }
      }
      
      public function frame18() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §-P§.spritesheet.§,=§(95);
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Maybe they\'ll get here tomorrow.",60,-180,null,null,null,_loc1_,null);
         }
      }
      
      public function frame17() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §-P§.transform.§;!2§(0.8,0.8,0.8);
         student.§9E§(16.685,98.1,null,-2);
         while(true)
         {
            if(!_loc1_)
            {
               student.spritesheet.§,=§(103);
               §-P§.model.§#"§(true);
               §-P§.§9E§(16.8,98,null,-5);
               §-P§.spritesheet.§,=§(96);
               if(!_loc2_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§@S§(true);
            break;
         }
      }
      
      public function frame16() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               student.spritesheet.§,=§(109);
               if(_loc1_)
               {
                  break;
               }
            }
            §[!_§ = 0.5;
            break;
         }
      }
      
      public function frame15() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            student.spritesheet.§,=§(108);
         }
      }
      
      public function frame14() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 69;
               if(_loc6_)
               {
                  break;
               }
            }
            _loc1_.y = -46;
            if(_loc7_)
            {
               break;
            }
            addr0048:
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
            §§push(Number(Math.sin(1.902408884673819)));
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               if(!_loc6_)
               {
                  §§push(_loc2_);
                  §§push(-0.206);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().x = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(-0.276);
               if(!_loc6_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(!_loc6_)
               {
                  §§push(_loc2_);
                  §§push(0.939);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               _loc2_.w = Number(Math.cos(1.902408884673819));
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
                     §§push(_loc2_.x * _loc2_.x);
                     §§push(_loc2_.y);
                     if(_loc7_)
                     {
                        §§push(_loc2_.y);
                        if(_loc6_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           break loop3;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     §§push(_loc2_.w);
                     if(!_loc6_)
                     {
                        break loop3;
                     }
                     §§goto(addr0113);
                  }
                  §§goto(addr011c);
               }
               addr0113:
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc6_)
               {
                  break loop5;
               }
               var _loc4_:* = Number(§§pop());
               addr011c:
               §§push(_loc4_);
               if(!_loc6_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc6_)
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
                        if(!_loc6_)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc5_);
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                    }
                                    §§push(-§§pop());
                                    break;
                                 }
                              }
                              §§push(§§pop() < 1e-10);
                              if(!_loc6_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          addr01c0:
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             §§push(0);
                                             break loop9;
                                          }
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       addr01c1:
                                       _loc4_ = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(_loc2_);
                                          §§push(_loc2_.x);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * _loc4_);
                                          }
                                          §§pop().x = §§pop();
                                          if(!_loc7_)
                                          {
                                             break loop8;
                                          }
                                       }
                                       §§push(_loc2_);
                                       §§push(_loc2_.y);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() * _loc4_);
                                       }
                                       §§pop().y = §§pop();
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
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
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    break loop6;
                                 }
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc7_)
                              {
                                 break loop7;
                              }
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                           }
                           else
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              if(!_loc6_)
                              {
                                 §§goto(addr01c0);
                              }
                              §§goto(addr01c1);
                           }
                        }
                        tunnel.§<!M§.reset();
                        tunnel.display(0);
                        if(_loc7_)
                        {
                           break loop6;
                        }
                        break;
                     }
                     §§goto(addr0256);
                  }
                  student.spritesheet.§@S§(true);
                  §§goto(addr0272);
               }
               student.§9E§(16.7,98.2,null,-10);
               if(_loc7_)
               {
                  addr0256:
                  student.spritesheet.§,=§(74);
                  if(_loc7_)
                  {
                     break loop7;
                  }
               }
               addr0272:
               return;
            }
            §§push(_loc2_.w);
            break loop4;
         }
         _loc1_.z = 4358;
         §§goto(addr0048);
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            student.§9E§(16.7,98.1,null,-10);
            if(_loc3_)
            {
               student.spritesheet.§,=§(71);
            }
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("Whenever they get here...",220,360,null,null,null,_loc1_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            §[!_§ = 0.5;
            break;
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               student.§9E§(17,97.6);
               if(!_loc3_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(102);
            if(!_loc4_)
            {
               student.spritesheet.§@S§(false);
            }
            break;
         }
         var _loc1_:* = §&!S§.width(730);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("I guess I could just ask the Authorities to explain all this.",-80,-190,null,_loc1_,null,_loc2_,null);
               if(_loc4_)
               {
                  break;
               }
            }
            §[!_§ = 0.5;
            break;
         }
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            student.spritesheet.§,=§(94);
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(_loc7_)
         {
            _loc1_.x = 93;
            while(true)
            {
               if(!_loc8_)
               {
                  _loc1_.y = -46;
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 4485;
               break;
            }
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
         §§push(Number(Math.sin(1.6667894356545847)));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(-0.915);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc8_)
               {
                  break;
               }
               §§push(_loc2_);
               §§push(-0.307);
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
            §§push(_loc2_);
            §§push(0.261);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc7_)
            {
               break;
            }
            addr00cf:
            loop3:
            while(true)
            {
               §§push(_loc2_.x);
               if(_loc7_)
               {
                  while(true)
                  {
                     §§push(§§pop() * _loc2_.x);
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc8_)
                        {
                           break loop3;
                        }
                        §§push(Number(§§pop()));
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc7_)
                           {
                              break loop3;
                           }
                           §§push(Number(§§pop()));
                           §§push(_loc2_.w);
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(_loc2_.w);
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
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
            loop5:
            while(true)
            {
               loop6:
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
                           break loop6;
                        }
                        if(!_loc7_)
                        {
                           break loop5;
                        }
                        §§push(_loc4_);
                        §§push(0);
                     }
                     if(§§pop() == §§pop())
                     {
                        break;
                     }
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
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
                     break loop5;
                  }
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  if(!_loc8_)
                  {
                     _loc2_.z = 0;
                     if(_loc7_)
                     {
                        _loc2_.w = 1;
                        if(_loc8_)
                        {
                        }
                     }
                  }
                  break;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               student.§9E§(16.9,97.4);
               student.spritesheet.§,=§(93);
               if(!_loc8_)
               {
                  student.spritesheet.§@S§(true);
               }
               var _loc6_:§ 7§ = new § 6§(student.§<!U§());
               if(_loc7_)
               {
                  dialog.§";§("Is that ringing any bells?",-240,-160,null,null,null,_loc6_,null);
               }
               _loc6_ = new § 6§(student.§<!U§());
               if(_loc7_)
               {
                  dialog.§";§("Hello?",280,200,null,null,null,_loc6_,null);
               }
               return;
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
            break loop6;
         }
         _loc2_.w = Number(Math.cos(1.6667894356545847));
         §§goto(addr00cf);
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            student.spritesheet.§,=§(110);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc7_)
            {
               _loc1_.x = 2;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc1_.y = 0;
            if(_loc8_)
            {
               _loc1_.z = -201;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.0122909661567112)));
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
               §§push(-0.033);
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
            §§push(0.165);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(!_loc7_)
            {
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
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  break;
               }
               §§push(_loc2_.w);
               if(!_loc7_)
               {
                  §§push(_loc2_.w);
                  break;
               }
               §§goto(addr010f);
            }
            addr010f:
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc8_)
                     {
                        §§push(0);
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              break loop6;
                           }
                           break loop5;
                        }
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           break loop5;
                        }
                     }
                     §§push(-§§pop());
                     break loop6;
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
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  if(!_loc7_)
                  {
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                  }
                  §§goto(addr0211);
               }
               §§push(§§pop() < 1e-10);
               if(_loc8_)
               {
                  §§push(!§§pop());
               }
               while(true)
               {
                  if(§§pop())
                  {
                     §§push(_loc4_);
                     §§push(0);
                     break loop9;
                  }
                  §§goto(addr0211);
               }
               §§goto(addr0251);
            }
            _loc4_ = §§pop();
            loop7:
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
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc7_)
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
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        break loop7;
                     }
                     addr0251:
                     student.spritesheet.§@S§(false);
                     dialog.§";§("Stand here.",-300,-280,null,null,null,null,null);
                     break;
                  }
                  §§goto(addr027c);
               }
               break;
            }
            addr0211:
            tunnel.§<!M§.reset();
            if(!_loc7_)
            {
               tunnel.display(0);
               §-P§.model.§#"§(false);
               if(!_loc7_)
               {
                  student.§9E§(18,-0.7);
                  student.spritesheet.§,=§(106);
                  §§goto(addr0251);
               }
            }
            addr027c:
            dialog.§";§("Eye closed.\nArms out.",-200,-50,null,null,-1,null,null);
            var _loc6_:§ 7§ = new § 6§(student.§<!U§());
            if(_loc8_)
            {
               dialog.§";§("Focus...",-200,180,null,null,-1,_loc6_,null);
            }
            return;
         }
         §§push(_loc2_);
         §§push(-0.986);
         if(_loc8_)
         {
            §§push(§§pop() * _loc3_);
         }
         §§pop().z = §§pop();
         if(_loc8_)
         {
            _loc2_.w = Number(Math.cos(1.0122909661567112));
         }
         continue loop3;
      }
   }
}

