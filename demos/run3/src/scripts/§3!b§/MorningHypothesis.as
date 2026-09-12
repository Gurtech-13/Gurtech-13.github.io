package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class MorningHypothesis extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:§^s§;
      
      public var §-P§:§^s§;
      
      public function MorningHypothesis()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         super(§>K§.§@§,1,null,{"stopLoadingAfter":2},null,§+!"§.IF_CUTSCENE_LEVEL_REACHED);
         if(_loc1_)
         {
            §8#§ = true;
            §3!<§(new § !N§(§>K§.§@§,1));
            if(_loc1_)
            {
               followingCutscene = "MorningHypothesis2";
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
               if(_loc1_)
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
               if(_loc1_)
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
               §§pop().frames = null;
            }
            name = "Morning Hypothesis";
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
               tunnel = null;
               if(!_loc2_)
               {
                  break;
               }
               §-P§ = null;
               if(_loc1_)
               {
                  break;
               }
               student = null;
               if(_loc1_)
               {
                  break;
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            §-P§.billboardMode = true;
            if(_loc3_)
            {
               sprites.push(§-P§);
            }
            student = new §^s§(§9_§,§'O§.student,false,null,false,null);
         }
         student.billboardMode = true;
         if(_loc3_)
         {
            sprites.push(student);
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
            student.goesTo = new § !N§(_loc2_,1);
         }
      }
      
      public function frame9() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         _loc1_.x = 112;
         _loc1_.y = -13;
         _loc1_.z = 6598;
         if(!_loc3_)
         {
            tunnel.§<!M§.reset();
            tunnel.display(0);
            student.§9E§(1.1,84.3,null,9);
            if(_loc4_)
            {
               student.spritesheet.§,=§(101);
               if(_loc4_)
               {
                  student.spritesheet.§@S§(false);
               }
            }
         }
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Good morning, Universe!",-140,-60,null,null,null,_loc2_,null);
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            student.spritesheet.§,=§(81);
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
               student.spritesheet.§,=§(74);
               if(_loc1_)
               {
                  break;
               }
            }
            §,!J§ = 0.3;
            break;
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            student.spritesheet.§,=§(80);
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            student.spritesheet.§,=§(104);
            if(_loc1_)
            {
               §,!J§ = 0.05;
            }
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            student.spritesheet.§,=§(76);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §-P§.§9E§(0,0);
               if(_loc2_)
               {
                  break;
               }
            }
            §-P§.model.§#"§(false);
            if(_loc1_)
            {
               student.§9E§(1.1,83.9,null,8);
               if(_loc2_)
               {
                  break;
               }
               student.spritesheet.§,=§(75);
               if(_loc2_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(true);
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §-P§.spritesheet.§,=§(96);
         }
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc4_)
         {
            _loc1_.x = 120;
            _loc1_.y = -10;
            _loc1_.z = 6701;
            tunnel.§<!M§.reset();
            tunnel.display(0);
            student.§9E§(1.1,85.9,null,14);
            student.spritesheet.§,=§(102);
            student.spritesheet.§@S§(false);
            dialog.§";§("Now for my practice hypothesis...",-140,-180,null,null,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("What should I test today?",120,0,null,null,-1,_loc2_,null);
         }
      }
      
      public function frame10() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         _loc1_.x = 116;
         _loc1_.y = -12;
         while(true)
         {
            if(!_loc2_)
            {
               _loc1_.z = 6644;
               if(_loc2_)
               {
                  break;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               student.§9E§(1.1,84.9,null,11);
               if(!_loc3_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(100);
            student.spritesheet.§@S§(true);
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §-P§.spritesheet.§,=§(95);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            §-P§.transform.§;!2§(0.9,0.9,0.9);
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 110;
               if(_loc6_)
               {
                  break;
               }
               _loc1_.y = -14;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.z = 6578;
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
         §§push(Number(Math.sin(1.5882496193148399)));
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
               §§push(0.704);
               if(!_loc6_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc7_)
               {
                  §§push(_loc2_);
                  §§push(0.709);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc2_);
            §§push(-0.037);
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
                  loop13:
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
                              break loop4;
                           }
                           §§push(_loc2_.y);
                           if(!_loc6_)
                           {
                              §§push(_loc2_.y);
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc6_)
                              {
                                 break loop13;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              break loop4;
                           }
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              break loop3;
                           }
                        }
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§goto(addr0143);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     break loop4;
                  }
                  §§push(§§pop() + §§pop());
                  break loop3;
               }
               §§push(Number(§§pop()));
               §§push(_loc2_.w);
               if(!_loc6_)
               {
                  addr0143:
                  §§push(§§pop() * _loc2_.w);
               }
               break loop13;
            }
            var _loc4_:* = Number(§§pop());
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
               loop7:
               while(true)
               {
                  if(_loc7_)
                  {
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 §§push(0);
                                 if(!_loc7_)
                                 {
                                    break loop9;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc5_);
                                 }
                                 else
                                 {
                                    §§push(_loc5_);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(-§§pop());
                                    if(_loc6_)
                                    {
                                       break loop8;
                                    }
                                 }
                              }
                              §§push(§§pop() < 1e-10);
                              if(_loc7_)
                              {
                                 §§push(!§§pop());
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc7_)
                                          {
                                             break loop8;
                                          }
                                          break loop10;
                                       }
                                       §§goto(addr01d8);
                                    }
                                    §§goto(addr0251);
                                 }
                              }
                              §§goto(addr025a);
                           }
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              break loop7;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                           if(!_loc6_)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().y = §§pop();
                              if(_loc6_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(_loc7_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           if(_loc6_)
                           {
                              break loop11;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           §§goto(addr0251);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           break loop10;
                        }
                        _loc2_.x = 0;
                        if(!_loc6_)
                        {
                           _loc2_.y = 0;
                           if(!_loc7_)
                           {
                              break loop6;
                           }
                           addr01d8:
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                           addr0251:
                           tunnel.§<!M§.reset();
                           addr025a:
                           tunnel.display(0);
                           if(!_loc6_)
                           {
                              student.§9E§(1,83.9,null,8);
                           }
                        }
                     }
                     §§push(0);
                     break loop9;
                  }
                  student.spritesheet.§,=§(103);
                  if(!_loc6_)
                  {
                     student.spritesheet.§@S§(false);
                     break loop6;
                  }
                  §§goto(addr02cb);
               }
               §-P§.spritesheet.§@S§(false);
               §§goto(addr02cb);
            }
            §-P§.§9E§(1.2,83.7,null,8);
            §-P§.spritesheet.§,=§(94);
            if(_loc7_)
            {
               break loop7;
            }
            addr02cb:
            return;
         }
         _loc2_.w = Number(Math.cos(1.5882496193148399));
         continue loop13;
      }
   }
}

