package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class Discoveries extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:§^s§;
      
      public var §#!P§:§^s§;
      
      public function Discoveries()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§>y§,4,Discoveries.§3S§,{"noCrumblingTiles":true});
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(frames));
            §§push(frame0);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame1);
            if(_loc1_)
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
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame5);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(_loc1_)
            {
               break;
            }
            §§goto(addr00ae);
         }
         name = "Discoveries";
         addr00ae:
      }
      
      override public function §1!F§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §'O§.§7W§.§>t§.§?F§("winter");
               if(!_loc2_)
               {
                  §'O§.§7W§.§ j§.§?F§(9);
                  §'O§.child.§>t§.§?F§("winter");
                  if(!_loc2_)
                  {
                     §'O§.child.§ j§.§?F§(6);
                     §'O§.duplicator.§>t§.§?F§("winter");
                     §'O§.duplicator.§ j§.§?F§(7);
                  }
                  §'O§.pastafarian.§>t§.§?F§("winter");
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            §'O§.pastafarian.§ j§.§?F§(10);
            if(!_loc2_)
            {
               super.§1!F§();
            }
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
               if(!_loc1_)
               {
                  §#!P§ = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
            }
            student = null;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0050);
         }
         sprites.length = 0;
         addr0050:
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
               if(!_loc4_)
               {
                  break;
               }
               §#!P§.billboardMode = true;
               if(!_loc4_)
               {
                  break;
               }
            }
            sprites.push(§#!P§);
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("winter");
         if(!_loc5_)
         {
            §#!P§.goesTo = new § !N§(_loc1_,8);
            while(true)
            {
               if(_loc4_)
               {
                  student = new §^s§(§9_§,§'O§.student,false,null,false,null);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               student.billboardMode = true;
               if(_loc4_)
               {
                  break;
               }
            }
            sprites.push(student);
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc2_);
         if(_loc4_)
         {
            student.goesTo = new § !N§(_loc3_,7);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.§9E§(0,2.6,null,2);
               if(_loc3_)
               {
                  break;
               }
               §#!P§.spritesheet.§,=§(66);
               if(!_loc4_)
               {
                  break;
               }
               §#!P§.spritesheet.§@S§(true);
            }
            student.§9E§(22.05,4,null,1);
            if(!_loc3_)
            {
               student.spritesheet.§,=§(72);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr0080);
            }
            break;
         }
         student.spritesheet.§@S§(false);
         addr0080:
         var _loc1_:* = §&!S§.width(980);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               dialog.§";§("And if you really cared about understanding, you\'d let actual scientists do the research.",-20,-150,null,_loc1_,null,_loc2_,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            § !C§("actual");
            break;
         }
         _loc1_ = §&!S§.width(120);
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("No!",140,230,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(700);
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("The Runner and I are more than qualified to handle this.",20,330,null,_loc1_,-1,null,null);
               if(_loc4_)
               {
                  dialog.§`!^§("Mostly the Runner.",320,400,§&!S§.scale(0.4));
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            student.§2e§(§#!P§);
            break;
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §#!P§.§9E§(0,2.6,null,2);
            if(_loc4_)
            {
               §#!P§.spritesheet.§,=§(71);
               while(true)
               {
                  if(_loc4_)
                  {
                     §#!P§.spritesheet.§@S§(true);
                     if(!_loc4_)
                     {
                        break;
                     }
                     student.§9E§(21.95,3.95,null,3);
                  }
                  student.spritesheet.§,=§(93);
                  student.spritesheet.§@S§(true);
                  break;
               }
            }
         }
         dialog.§";§("Sticking a ring to yourself isn\'t enough.",-140,-280,null,null,null,null,null);
         var _loc1_:* = §&!S§.width(830);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("You don\'t really understand something until you can build one from scratch.",120,-90,null,_loc1_,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(900);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Who cares about building new ones? We have plenty in good condition.",20,330,null,_loc1_,null,_loc2_,null);
            if(!_loc3_)
            {
               student.§2e§(§#!P§);
            }
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.§9E§(0,2.6,null,2);
         if(_loc4_)
         {
            §#!P§.spritesheet.§,=§(67);
         }
         §#!P§.spritesheet.§@S§(false);
         student.§9E§(21.95,3.95,null,3);
         student.spritesheet.§,=§(68);
         student.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(700);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("The Runner and I are close to figuring out how to suspend heavy objects in midair!",220,-240,null,_loc1_,null,_loc2_,210);
         }
         _loc1_ = §&!S§.width(600);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Congratulations, you discovered the yellow rings.",-230,290,null,_loc1_,null,_loc2_,null);
            if(_loc4_)
            {
               dialog.§";§("Only seven and a half months after I did.",180,380,null,null,-1,null,null);
               if(!_loc3_)
               {
                  student.§2e§(§#!P§);
               }
            }
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               §#!P§.§9E§(0,3.1,null,2);
               if(!_loc4_)
               {
                  break;
               }
               §#!P§.spritesheet.§,=§(71);
               if(!_loc3_)
               {
                  §#!P§.spritesheet.§@S§(false);
               }
               student.§9E§(21.95,3.95,null,3);
            }
            student.spritesheet.§,=§(67);
            break;
         }
         student.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(720);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("What scientific discoveries? The discovery that space is empty?",-140,-310,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(720);
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Oh come on. What about gravity manipulation, force fields, holograms, and teleportation?",220,-60,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("Aren\'t any of those worth your time?",40,360,null,null,null,_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            § !C§("any");
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr015c);
         }
         student.§2e§(§#!P§);
         addr015c:
      }
      
      public function frame1() : void
      {
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
                  §#!P§.§9E§(0,3.3,null,2);
                  if(!_loc3_)
                  {
                     §#!P§.spritesheet.§,=§(66);
                     if(_loc3_)
                     {
                        break;
                     }
                     §#!P§.spritesheet.§@S§(false);
                     if(_loc4_)
                     {
                        student.§9E§(21.95,3.95,null,3);
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
               }
               student.transform.§"I§(§#!P§.transform.§+n§());
               if(!_loc3_)
               {
                  break loop0;
               }
               break;
            }
            var _loc1_:* = §&!S§.width(1600);
            if(_loc4_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("You aren\'t very good at keeping track of time, are you.");
                     §§push(-100);
                     §§push(-268);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop2;
                        }
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop3;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop2;
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop2;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
               }
               §§push(§§pop() / 2.5);
               break loop3;
            }
            var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(_loc4_)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("It\'s been a year now.");
                     §§push(-220);
                     §§push(-68);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop5;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr019e);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop5;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop5;
                  }
                  §§goto(addr019e);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,_loc2_);
               addr019e:
            }
            _loc1_ = §&!S§.width(1600);
            _loc2_ = new § 6§(student.§<!U§());
            if(!_loc3_)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("So? Scientific discoveries take time. Be patient!");
                     §§push(120);
                     §§push(352);
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop8;
                                    }
                                    break loop7;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop7;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop7;
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop7;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
                  if(!_loc3_)
                  {
                     student.§2e§(§#!P§);
                  }
               }
               §§push(§§pop() / 2.5);
               break loop8;
            }
            return;
         }
         student.spritesheet.§,=§(69);
         if(_loc4_)
         {
            student.spritesheet.§@S§(false);
         }
         break loop1;
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc7_)
         {
            _loc1_.x = 100;
            if(_loc8_)
            {
               _loc1_.y = -150;
               if(!_loc7_)
               {
                  _loc1_.z = 50;
               }
            }
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
         §§push(Number(Math.sin(0.9162978572970231)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc2_);
            §§push(-0.31);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.139);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(-0.941);
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
               _loc2_.w = Number(Math.cos(0.9162978572970231));
               break;
            }
         }
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            §§push(_loc2_.y);
            if(_loc8_)
            {
               §§push(§§pop() + §§pop() * §§pop());
               §§push(_loc2_.z);
               §§push(_loc2_.z);
               if(_loc7_)
               {
                  break;
               }
            }
            §§goto(addr0105);
         }
         addr0105:
         §§push(§§pop() * §§pop());
         if(!_loc7_)
         {
            §§push(§§pop() + §§pop());
            §§push(_loc2_.w);
            §§push(_loc2_.w);
            break loop2;
         }
         §§push(§§pop() + §§pop());
         if(_loc8_)
         {
            §§push(Number(§§pop()));
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
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc5_);
               §§push(0);
               if(!_loc7_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        §§push(-§§pop());
                     }
                  }
                  §§push(§§pop() < 1e-10);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop3;
                  }
                  §§push(_loc4_);
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  break loop3;
               }
               §§push(1 / Number(Math.sqrt(_loc4_)));
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
            _loc4_ = §§pop();
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().x = §§pop();
            }
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(_loc8_)
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
            §§push(_loc2_);
            §§push(_loc2_.w);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().w = §§pop();
            break;
         }
         tunnel.§<!M§.reset();
         tunnel.display(0);
         §#!P§.§9E§(0,3.4,null,2);
         if(_loc8_)
         {
            §#!P§.spritesheet.§,=§(69);
            §#!P§.spritesheet.§@S§(true);
            if(_loc8_)
            {
               student.§9E§(22,4,null,5);
            }
         }
         student.spritesheet.§,=§(64);
         if(!_loc7_)
         {
            student.spritesheet.§@S§(true);
         }
         dialog.§";§("There you are!",-40,-240,null,null,null,null,null);
         var _loc6_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc7_)
         {
            dialog.§";§("I was about to head home without you!",-160,-120,null,null,-1,_loc6_,null);
         }
         _loc6_ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc8_)
            {
               dialog.§";§("Home?",120,240,null,null,null,_loc6_,null);
               if(!_loc7_)
               {
                  dialog.§";§("But we just got here!",320,360,null,null,-1,null,null);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            student.§2e§(§#!P§);
            break;
         }
      }
   }
}

