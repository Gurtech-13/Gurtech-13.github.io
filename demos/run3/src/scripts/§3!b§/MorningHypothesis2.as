package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §,!W§.§`'§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class MorningHypothesis2 extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:§^s§;
      
      public function MorningHypothesis2()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         super(§>K§.§@§,1,null,{"stopLoadingAfter":2});
         §8#§ = true;
         while(true)
         {
            if(_loc2_)
            {
               §3!<§(new § !N§(§>K§.§@§,2));
               if(!_loc2_)
               {
                  break;
               }
               followingCutscene = "MorningHypothesis3";
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
            §§pop().frames = null;
            name = "Morning Hypothesis 2";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §`'§.§@!A§().§`%§();
            while(true)
            {
               if(!_loc1_)
               {
                  tunnel = null;
                  if(_loc2_)
                  {
                     student = null;
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
               sprites.length = 0;
               break;
            }
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
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
         if(!_loc3_)
         {
            student.goesTo = new § !N§(_loc2_,2);
         }
      }
      
      public function frame9() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            student.§9E§(18,-1.4);
            if(!_loc2_)
            {
               student.spritesheet.§,=§(66);
            }
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Hello?",220,60,null,null,null,_loc1_,null);
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
               student.§9E§(17.8,-1.2,null,-4);
               if(!_loc2_)
               {
                  break;
               }
               student.spritesheet.§,=§(95);
               if(!_loc2_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Um... hello?",-200,-20,null,null,null,_loc1_,null);
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            student.spritesheet.§,=§(94);
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            student.spritesheet.§,=§(66);
            if(!_loc2_)
            {
               student.spritesheet.§@S§(true);
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
            §`'§.§@!A§().§4§(tunnel);
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(!_loc8_)
         {
            student.§9_§ = tunnel.§]!#§(7000,true);
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 76;
               if(!_loc8_)
               {
                  _loc1_.y = -60;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 7340;
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
         §§push(Number(Math.sin(1.0908307824964558)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc2_);
            §§push(-0.011);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.077);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(-0.997);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
               }
               _loc2_.w = Number(Math.cos(1.0908307824964558));
               break;
            }
         }
         §§push(_loc2_.x * _loc2_.x);
         if(_loc9_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           §§push(_loc2_.y);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(_loc8_)
                           {
                              break loop5;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break loop3;
                           }
                        }
                        §§push(_loc2_.z);
                        if(_loc9_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           break loop4;
                        }
                        break;
                     }
                     §§goto(addr013f);
                  }
               }
               §§push(Number(§§pop()));
               §§push(_loc2_.w);
               if(!_loc8_)
               {
                  addr013f:
                  §§push(§§pop() * _loc2_.w);
               }
               break;
            }
         }
         break loop5;
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 101;
               if(!_loc8_)
               {
                  _loc1_.y = -34;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 6997;
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
         §§push(Number(Math.sin(1.5446163880149817)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.695);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(0.716);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(0.065);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc8_)
               {
                  _loc2_.w = Number(Math.cos(1.5446163880149817));
               }
            }
            break;
         }
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            §§push(_loc2_.y);
            if(_loc9_)
            {
               §§push(§§pop() + §§pop() * §§pop());
               §§push(_loc2_.z);
               §§push(_loc2_.z);
               if(_loc8_)
               {
                  break;
               }
            }
            §§goto(addr010c);
         }
         addr010c:
         §§push(§§pop() * §§pop());
         if(!_loc8_)
         {
            §§push(§§pop() + §§pop());
            §§push(_loc2_.w);
            if(_loc9_)
            {
               §§push(_loc2_.w);
               break loop3;
            }
         }
         §§push(§§pop() + §§pop());
         if(_loc9_)
         {
            §§push(Number(§§pop()));
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(_loc9_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
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
               §§push(_loc5_);
               §§push(0);
               if(_loc9_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                     }
                  }
                  else
                  {
                     §§push(-_loc5_);
                  }
                  §§push(§§pop() < 1e-10);
                  if(!_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc9_)
                  {
                     break loop4;
                  }
                  §§push(_loc4_);
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  if(!_loc8_)
                  {
                     _loc2_.w = 1;
                     break;
                  }
               }
               else
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc4_ = §§pop();
               }
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().x = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     break;
                  }
               }
               §§goto(addr020f);
            }
            tunnel.§<!M§.reset();
            break;
         }
         tunnel.display(0);
         if(!_loc8_)
         {
            addr020f:
            student.§9E§(1.2,90.5,null,31);
            if(!_loc8_)
            {
               student.spritesheet.§,=§(101);
            }
            student.spritesheet.§@S§(false);
            dialog.§";§("I know!",-300,-320,null,null,null,null,null);
         }
         var _loc6_:* = §&!S§.width(900);
         var _loc7_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Today\'s hypothesis is that solo teleportation has to do with awareness!",-40,-130,null,_loc6_,-1,_loc7_,null);
         }
         _loc6_ = §&!S§.width(1000);
         _loc7_ = new § 6§(student.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Maybe if you focus on staying calm, that means you\'re more aware.",-60,270,null,_loc6_,null,_loc7_,null);
         }
         _loc6_ = §&!S§.scale(0.5);
         if(!_loc8_)
         {
            dialog.§";§("Or less aware, for all I know.",110,380,_loc6_,null,-1,null,null);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc5_)
         {
            _loc1_.x = 76;
            _loc1_.y = 24;
         }
         _loc1_.z = 6500;
         tunnel.§<!M§.reset();
         tunnel.display(0);
         while(true)
         {
            if(!_loc5_)
            {
               student.§9E§(1.3,89.2,null,26);
               if(_loc5_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(62);
            break;
         }
         var _loc2_:* = §&!S§.width(480);
         while(true)
         {
            if(!_loc5_)
            {
               dialog.§";§("Maybe it\'s something else, such as...",-280,-210,null,_loc2_,null,null,null);
               if(_loc5_)
               {
                  break;
               }
            }
            dialog.§";§("...um...",0,-40,null,null,-1,null,null);
            break;
         }
         var _loc3_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("...I\'m not sure.",140,80,null,null,-1,_loc3_,null);
         }
         _loc3_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("What else changes when your mood changes?",20,360,null,null,null,_loc3_,null);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc5_)
         {
            _loc1_.x = 96;
            _loc1_.y = 18;
         }
         _loc1_.z = 6434;
         tunnel.§<!M§.reset();
         tunnel.display(0);
         if(_loc4_)
         {
            student.§9E§(1.1,88,null,21);
            student.spritesheet.§,=§(54);
         }
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Or even whether it matters.",-100,-120,null,null,null,_loc2_,null);
            if(!_loc5_)
            {
               § !C§("whether");
            }
         }
         var _loc3_:* = §&!S§.width(710);
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("After yesterday\'s test, I\'m starting to think it\'s something else...",60,350,null,_loc3_,null,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 112;
               if(_loc9_)
               {
                  break;
               }
               _loc1_.y = 23;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 6377;
            break;
         }
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
         §§push(Number(Math.sin(0.7941248096574199)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(0.102);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.106);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(-0.989);
                     if(!_loc9_)
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
            _loc2_.w = Number(Math.cos(0.7941248096574199));
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
                  §§push(_loc2_.y);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        break loop4;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     break loop4;
                  }
                  §§goto(addr011d);
               }
               §§push(_loc2_.w);
               break loop3;
            }
            §§push(_loc2_.w);
            break loop11;
         }
         addr011d:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc8_)
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
               if(!_loc8_)
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
               §§push(_loc5_);
               §§push(0);
               if(!_loc9_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc5_);
                  }
                  else
                  {
                     §§push(-_loc5_);
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() < 1e-10);
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop6;
                  }
                  §§push(_loc4_);
                  §§push(0);
               }
               if(§§pop() != §§pop())
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  break;
               }
               _loc2_.x = 0;
               if(_loc8_)
               {
                  _loc2_.y = 0;
                  if(!_loc9_)
                  {
                     _loc2_.z = 0;
                     if(_loc8_)
                     {
                        _loc2_.w = 1;
                        break loop6;
                     }
                  }
               }
               else
               {
                  addr01dd:
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc8_)
                  {
                     addr01f3:
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
                     §§goto(addr0212);
                  }
                  §§goto(addr023c);
               }
               §§goto(addr0246);
            }
            _loc4_ = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               while(true)
               {
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§goto(addr01dd);
                  }
                  §§goto(addr01f3);
               }
               §§goto(addr0246);
            }
            §§goto(addr023c);
         }
         tunnel.§<!M§.reset();
         addr0212:
         tunnel.display(0);
         student.§9E§(1.1,86.9,null,18);
         if(_loc8_)
         {
            student.spritesheet.§,=§(47);
         }
         addr023c:
         student.spritesheet.§@S§(true);
         addr0246:
         var _loc6_:* = §&!S§.width(690);
         if(_loc8_)
         {
            dialog.§";§("I need to do more tests on this whole solo teleport thing.",-100,-210,null,_loc6_,null,null,null);
         }
         var _loc7_:§ 7§ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc8_)
            {
               dialog.§";§("I just don\'t get it.",-280,40,null,null,-1,_loc7_,null);
               if(_loc9_)
               {
                  break;
               }
            }
            dialog.§";§("Why is your mood so important when you teleport?",60,320,null,null,-1,null,null);
            break;
         }
      }
   }
}

