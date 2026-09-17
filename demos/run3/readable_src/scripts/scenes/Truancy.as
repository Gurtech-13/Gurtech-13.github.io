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
   
   public class Truancy extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:StageActor;
      
      public var skater:StageActor;
      
      public function Truancy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§]0§,-1,Truancy.§3S§,{
                  "endTiles":false,
                  "noCrumblingTiles":true
               });
               if(_loc2_)
               {
                  §8#§ = true;
                  if(!_loc2_)
                  {
                     break;
                  }
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
            }
            name = "Truancy";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               tunnel = null;
               if(_loc2_)
               {
                  student = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
            }
            skater = null;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0053);
         }
         sprites.length = 0;
         addr0053:
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(_loc6_)
            {
               student = new StageActor(section,CharacterRegistry.student,false,null,false,null);
               if(!_loc6_)
               {
                  break;
               }
            }
            student.billboardMode = true;
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr0058);
         }
         sprites.push(student);
         addr0058:
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         loop1:
         while(true)
         {
            if(_loc6_)
            {
               student.goesTo = new § !N§(_loc2_,-2);
               while(true)
               {
                  if(_loc6_)
                  {
                     skater = new StageActor(section,CharacterRegistry.skater,false,null,false,null);
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  skater.billboardMode = true;
                  if(!_loc5_)
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
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc5_)
         {
            skater.goesTo = new § !N§(_loc4_,-1);
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         student.placeAt(4.3,51.1,null,-5);
         student.spritesheet.§,=§(66);
         student.spritesheet.§@S§(false);
         skater.placeAt(4.4,52,null,-5);
         if(_loc4_)
         {
            skater.spritesheet.§,=§(65);
         }
         skater.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Wait, you have work to get back to?",180,-200,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(340);
         _loc1_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Skating practice. Close enough.",-320,-10,null,_loc2_,null,_loc1_,null);
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         student.placeAt(4.3,51.1,null,-5);
         student.spritesheet.§,=§(92);
         if(_loc3_)
         {
            student.spritesheet.§@S§(true);
            skater.placeAt(4.6,52,null,-12);
            skater.spritesheet.§,=§(85);
         }
         skater.spritesheet.§@S§(true);
         if(_loc3_)
         {
            dialog.§";§("Anyway, I should get back to work.",-60,-300,null,null,null,null,null);
         }
         var _loc1_:* = §&!S§.width(340);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Me too. Nice talking to you!",-200,-110,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(490);
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("I think I\'m getting close to thinking of a good experiment...",340,-20,null,_loc1_,0,_loc2_,null);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            student.placeAt(4.3,51.3,null,-5);
            student.spritesheet.§,=§(70);
            student.spritesheet.§@S§(false);
            skater.placeAt(4.6,52,null,-12);
         }
         skater.spritesheet.§,=§(87);
         if(!_loc3_)
         {
            skater.spritesheet.§@S§(true);
         }
         var _loc1_:* = §&!S§.width(680);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("Why don\'t you head back? You\'re missing out on your education.",180,-270,null,_loc1_,null,_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            § !C§("you ");
            break;
         }
         _loc1_ = §&!S§.width(510);
         _loc2_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("No thanks. School is boring, so I\'m just gonna skip a few years.",-220,0,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("That... isn\'t how that works.",220,360,null,null,null,_loc2_,null);
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            student.placeAt(4.3,51.3,null,-5);
            student.spritesheet.§,=§(95);
            student.spritesheet.§@S§(false);
            skater.placeAt(4.6,52,null,-12);
            while(true)
            {
               if(_loc1_)
               {
                  skater.spritesheet.§,=§(87);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               skater.spritesheet.§@S§(true);
               break;
            }
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         student.placeAt(4.3,51.3,null,-5);
         student.spritesheet.§,=§(95);
         while(true)
         {
            if(!_loc4_)
            {
               student.spritesheet.§@S§(true);
               skater.placeAt(4.6,52,null,-12);
               if(!_loc3_)
               {
                  break;
               }
            }
            skater.spritesheet.§,=§(85);
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr009d);
         }
         skater.spritesheet.§@S§(true);
         dialog.§";§("So call yourself \"the Scientist.\"",80,-280,null,null,null,null,null);
         addr009d:
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("It\'s taken.",220,-80,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(370);
         _loc1_ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("How about \"the Mad Scientist\"?",-220,70,null,_loc2_,0,_loc1_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("How about no?",300,320,null,null,1,null,null);
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         student.placeAt(4.3,51.3,null,-5);
         if(!_loc3_)
         {
            student.spritesheet.§,=§(94);
            student.spritesheet.§@S§(true);
            if(_loc4_)
            {
               skater.placeAt(4.6,51.97,null,-12);
            }
         }
         skater.spritesheet.§,=§(87);
         if(!_loc3_)
         {
            skater.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(410);
         if(_loc4_)
         {
            dialog.§";§("School can wait. Science will not.",-120,-290,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(620);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               dialog.§";§("If I figure out how the Tunnels work, I\'ll go down in history!",100,-50,null,_loc1_,-1,_loc2_,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            dialog.§";§("But if I\'m too slow, someone else will get the glory.",20,360,null,null,-1,null,null);
            break;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         student.placeAt(4.3,51.3,null,-5);
         while(true)
         {
            if(!_loc3_)
            {
               student.spritesheet.§,=§(98);
               if(!_loc4_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(true);
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr00a1);
         }
         skater.placeAt(4.6,52,null,-12);
         skater.spritesheet.§,=§(84);
         skater.spritesheet.§@S§(true);
         if(!_loc3_)
         {
            dialog.§";§("You know my name is \"the Student,\" right?",120,-300,null,null,null,null,null);
         }
         addr00a1:
         var _loc1_:* = §&!S§.width(590);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Does that sound like someone who hates school?",160,-70,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Then why not head back?",-240,340,null,null,null,_loc2_,null);
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
            if(!_loc7_)
            {
               _loc1_.x = -259;
               if(_loc7_)
               {
                  break;
               }
               _loc1_.y = 150;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 3885;
            break;
         }
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
         §§push(Number(Math.sin(0.6719517620178169)));
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
               §§push(0.135);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc7_)
               {
                  §§push(_loc2_);
                  §§push(0.979);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc2_);
            §§push(-0.152);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr00d5);
         }
         _loc2_.w = Number(Math.cos(0.6719517620178169));
         addr00d5:
         §§push(_loc2_.x * _loc2_.x);
         if(_loc8_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc2_.z);
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(_loc2_.z);
                     if(_loc7_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
               §§push(§§pop() + §§pop());
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break;
            }
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc7_)
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
            loop7:
            while(true)
            {
               loop9:
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
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              break loop9;
                           }
                           §§push(-§§pop());
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           §§push(_loc4_);
                           if(!_loc7_)
                           {
                              break;
                           }
                           break loop6;
                        }
                        break loop7;
                     }
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     break;
                  }
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  if(!_loc7_)
                  {
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     break loop7;
                  }
                  §§goto(addr01e5);
               }
               §§push(Number(§§pop()));
               break loop6;
            }
            tunnel.camera.reset();
            tunnel.display(0);
            student.placeAt(4.3,51.3,null,-5);
            student.spritesheet.§,=§(64);
            student.spritesheet.§@S§(true);
            while(true)
            {
               if(!_loc7_)
               {
                  §§goto(addr023a);
               }
               §§goto(addr0265);
            }
            §§goto(addr0286);
         }
         _loc4_ = §§pop();
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
               if(!_loc8_)
               {
                  break loop7;
               }
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
                  addr01e5:
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(_loc8_)
                  {
                     break loop7;
                  }
                  addr023a:
                  skater.placeAt(4.6,52,null,-12);
               }
               skater.spritesheet.§,=§(85);
               skater.spritesheet.§@S§(false);
               if(_loc7_)
               {
                  break;
               }
            }
            addr0265:
            dialog.§";§("It\'s nice not to have school.",-220,-280,null,null,null,null,null);
            break;
         }
         addr0286:
         var _loc6_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("Don\'t you think?",-220,-40,null,null,-1,_loc6_,null);
         }
         _loc6_ = new § 6§(student.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("Um...",240,120,null,null,null,_loc6_,null);
         }
      }
   }
}

