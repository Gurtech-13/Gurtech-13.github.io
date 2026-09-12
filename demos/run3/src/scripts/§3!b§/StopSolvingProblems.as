package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §1^§.Transform;
   import §<!&§.§%!§;
   import §[^§.§>!3§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.§>!9§;
   import motion.easing.IEasing;
   import nme3D.model.Model;
   
   public class StopSolvingProblems extends §+Z§
   {
      
      public var duplicator:§^s§;
      
      public var §7!!§:Transform;
      
      public var §[c§:TunnelSection;
      
      public var §#!P§:§^s§;
      
      public function StopSolvingProblems()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§"!R§,0,null,{"startTilesLength":0});
               if(!_loc2_)
               {
                  break;
               }
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
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame6);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame7);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame8);
            if(!_loc1_)
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
            §§push(frame13);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(_loc2_)
            {
               name = "Stop Solving Problems";
            }
            break;
         }
      }
      
      public function §^!`§() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc6_:* = null as §`! §;
         var _loc7_:* = null as Vector.<§^U§>;
         var _loc8_:* = null as §^U§;
         §§push(tunnel.§<!M§);
         §§push(0);
         §§push(0);
         §§push(duplicator.transform.position.z);
         if(_loc10_)
         {
            §§push(§§pop() - 290);
         }
         §§pop().§6!&§(§§pop(),§§pop(),§§pop());
         if(!_loc9_)
         {
            tunnel.display(0);
            duplicator.§]<§ = true;
         }
         duplicator.§<!U§();
         §#!P§.§]<§ = true;
         if(!_loc9_)
         {
            §#!P§.§<!U§();
         }
         var _loc1_:§'§ = dialog;
         §§push(true);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(true);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc10_)
         {
            §§push(0);
            if(!_loc9_)
            {
               §§push(int(§§pop()));
            }
            _loc4_ = §§pop();
         }
         var _loc5_:Vector.<§`! §> = _loc1_.§+j§;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(_loc10_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc10_)
                     {
                        break loop4;
                     }
                     if(§§pop() < int(_loc5_.length))
                     {
                        _loc6_ = _loc5_[_loc4_];
                        if(!_loc9_)
                        {
                           _loc4_++;
                           if(_loc9_)
                           {
                              continue;
                           }
                        }
                        _loc6_.layout.apply();
                        continue;
                     }
                     if(_loc9_)
                     {
                        break loop3;
                     }
                  }
               }
               §§push(_loc2_);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              §§push(0);
                              if(!_loc10_)
                              {
                                 break loop4;
                              }
                              §§push(int(§§pop()));
                              if(!_loc9_)
                              {
                                 _loc4_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    break loop3;
                                 }
                                 break loop5;
                              }
                              §§goto(addr0196);
                           }
                           §§goto(addr018e);
                        }
                        §§goto(addr01e8);
                     }
                     §§goto(addr0199);
                  }
                  §§goto(addr0183);
               }
               §§goto(addr0184);
            }
            _loc4_ = §§pop();
            break loop5;
         }
         _loc7_ = _loc1_.§]n§;
         if(!_loc9_)
         {
            while(_loc4_ < int(_loc7_.length))
            {
               _loc8_ = _loc7_[_loc4_];
               if(!_loc9_)
               {
                  _loc4_++;
                  if(_loc10_)
                  {
                     _loc8_.§6;§();
                  }
               }
            }
         }
         addr0183:
         addr0184:
         if(_loc3_)
         {
            if(_loc10_)
            {
               addr018e:
               §§push(0);
               if(!_loc9_)
               {
                  addr0196:
                  §§push(int(§§pop()));
               }
               break loop4;
            }
            addr0199:
            _loc7_ = _loc1_.§@#§;
            if(!_loc9_)
            {
               while(_loc4_ < int(_loc7_.length))
               {
                  _loc8_ = _loc7_[_loc4_];
                  if(!_loc9_)
                  {
                     _loc4_++;
                     if(_loc10_)
                     {
                        _loc8_.§6;§();
                     }
                  }
               }
            }
         }
         addr01e8:
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         Actuate.stop(§7!!§,null,false,false);
         if(!_loc1_)
         {
            §7!!§ = null;
         }
         §[c§ = null;
         tunnel = null;
         duplicator = null;
         §#!P§ = null;
         sprites.length = 0;
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,null);
            while(true)
            {
               if(_loc5_)
               {
                  duplicator.billboardMode = true;
                  if(_loc4_)
                  {
                     break;
                  }
               }
               sprites.push(duplicator);
               break;
            }
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("homePlanA");
         while(true)
         {
            if(_loc5_)
            {
               duplicator.goesTo = new § !N§(_loc1_,-1);
               if(!_loc5_)
               {
                  break;
               }
               §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
               if(!_loc5_)
               {
                  break;
               }
               §#!P§.billboardMode = true;
               if(!_loc5_)
               {
                  break;
               }
            }
            sprites.push(§#!P§);
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
            §#!P§.goesTo = new § !N§(_loc3_,0);
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
               §7!!§.§7#§(0.8,§7!!§.position.x,§7!!§.position.y,§9_§.endZ + 600).ease(§>!9§.get_easeOut());
               if(!_loc4_)
               {
                  break;
               }
               duplicator.§9E§(10,-4.1,true);
               if(_loc5_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§,=§(45);
            duplicator.spritesheet.§@S§(true);
            §#!P§.§9E§(0.3,1.5);
            §#!P§.spritesheet.§,=§(29);
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.scale(1.1);
         var _loc2_:* = §&!S§.width(730);
         var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("And don\'t forget the time you appeared out of nowhere and flew us across that big hole!",-140,110,_loc1_,_loc2_,null,_loc3_,200);
            if(!_loc5_)
            {
               §^!`§();
            }
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §7!!§.translate(0,0,-10);
         while(true)
         {
            if(!_loc5_)
            {
               duplicator.§9E§(10,-4.5,true);
               if(_loc5_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§,=§(38);
            if(!_loc5_)
            {
               duplicator.spritesheet.§@S§(true);
               §#!P§.§9E§(0.3,1.4);
            }
            §#!P§.spritesheet.§,=§(29);
            break;
         }
         §#!P§.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.scale(1.2);
         var _loc2_:* = §&!S§.width(690);
         if(_loc4_)
         {
            dialog.§";§("Then after you separated me from my son...",100,-260,_loc1_,_loc2_,null,null,null);
         }
         _loc1_ = §&!S§.scale(1.2);
         _loc2_ = §&!S§.width(570);
         var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("You went and found him another balloon the moment he asked!",240,120,_loc1_,_loc2_,-1,_loc3_,240);
            if(!_loc5_)
            {
               §^!`§();
            }
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            §7!!§.translate(0,0,-70);
         }
         duplicator.§9E§(10,-4.7,true);
         duplicator.spritesheet.§,=§(86);
         while(true)
         {
            if(!_loc4_)
            {
               duplicator.spritesheet.§@S§(true);
               §#!P§.§9E§(0.3,1.4);
               if(!_loc5_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(66);
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr0087);
         }
         §#!P§.spritesheet.§@S§(false);
         addr0087:
         var _loc1_:* = §&!S§.scale(1.1);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Then you left me behind!",-300,-40,_loc1_,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(1.1);
         var _loc3_:* = §&!S§.width(470);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc5_)
         {
            dialog.§";§("I warned you about wasting my time.",360,20,_loc1_,_loc3_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(0.4);
         if(_loc5_)
         {
            dialog.§`!^§("You\'re lucky I\'m multitasking right now.",360,110,_loc1_,null,16777215);
            if(!_loc4_)
            {
               §^!`§();
            }
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  §7!!§.translate(0,0,-50);
                  if(!_loc4_)
                  {
                     break;
                  }
                  duplicator.§9E§(10,-5,true);
                  while(true)
                  {
                     if(_loc4_)
                     {
                        duplicator.spritesheet.§,=§(38);
                        if(_loc4_)
                        {
                           duplicator.spritesheet.§@S§(true);
                           if(!_loc4_)
                           {
                              break;
                           }
                        }
                     }
                     §#!P§.§9E§(0.3,1.4);
                     if(!_loc5_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               §#!P§.spritesheet.§,=§(66);
               break;
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.scale(1.1);
         var _loc2_:* = §&!S§.width(500);
         var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("You kicked me off that hovercar thing!",-320,-20,_loc1_,_loc2_,null,_loc3_,230);
         }
         _loc1_ = §&!S§.scale(1.1);
         _loc2_ = §&!S§.width(470);
         _loc3_ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(!_loc5_)
            {
               dialog.§";§("You jumped off. I told you not to.",340,70,_loc1_,_loc2_,null,_loc3_,null);
               if(_loc5_)
               {
                  break;
               }
            }
            § !C§("You");
            if(!_loc5_)
            {
               § !C§("I");
               if(_loc5_)
               {
                  break;
               }
            }
            §^!`§();
            break;
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §7!!§.translate(0,-10,-5);
         duplicator.§9E§(10,-5.5,true);
         duplicator.spritesheet.§,=§(31);
         while(true)
         {
            if(!_loc5_)
            {
               duplicator.spritesheet.§@S§(true);
               if(!_loc4_)
               {
                  break;
               }
               §#!P§.§9E§(0.3,1.4);
               §#!P§.spritesheet.§,=§(66);
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.scale(1.1);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("So?",-460,-260,_loc1_,null,null,_loc2_,300);
         }
         _loc1_ = §&!S§.scale(1.3);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("So it\'s a stupid question!",80,-230,_loc1_,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(1.1);
         var _loc3_:* = §&!S§.width(520);
         if(!_loc5_)
         {
            dialog.§";§("What am I supposedly \"getting away with\"?",280,60,_loc1_,_loc3_,-1,null,null);
            if(!_loc5_)
            {
               §^!`§();
            }
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               duplicator.§9E§(10,-6.4,true);
               if(!_loc3_)
               {
                  duplicator.spritesheet.§,=§(86);
                  if(!_loc3_)
                  {
                     duplicator.spritesheet.§@S§(false);
                  }
                  §#!P§.§9E§(0.3,1.4);
                  if(_loc3_)
                  {
                     break;
                  }
                  §#!P§.spritesheet.§,=§(46);
               }
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("413",-200,70,null,null,null,_loc1_,300);
         }
         var _loc2_:* = §&!S§.scale(1.4);
         if(!_loc3_)
         {
            dialog.§";§("I said, do you think you\'re-",-200,70,_loc2_,null,null,null,null);
         }
         _loc2_ = §&!S§.scale(1.5);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("I heard!",140,50,_loc2_,null,null,_loc1_,null);
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
               §7!!§.translate(0,-8,0);
               duplicator.§9E§(10,-6.4,true);
               duplicator.spritesheet.§,=§(28);
               duplicator.spritesheet.§@S§(true);
               §#!P§.§9E§(0.4,1.3);
               if(_loc1_)
               {
                  §#!P§.spritesheet.§,=§(47);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            §#!P§.spritesheet.§@S§(false);
            §^!`§();
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            duplicator.§9E§(10,-6.6,true);
            duplicator.spritesheet.§,=§(40);
            if(_loc5_)
            {
               duplicator.spritesheet.§@S§(true);
               §#!P§.§9E§(0.6,1.2);
               §#!P§.spritesheet.§,=§(13);
            }
         }
         §#!P§.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.scale(1.2);
         var _loc2_:* = §&!S§.width(620);
         var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
         while(true)
         {
            if(_loc5_)
            {
               dialog.§";§("Do you think you\'re going to get away with it?",-220,100,_loc1_,_loc2_,null,_loc3_,null);
               if(!_loc5_)
               {
                  break;
               }
            }
            §^!`§();
            break;
         }
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §7!!§.translate(0,0,-20);
         while(true)
         {
            if(!_loc4_)
            {
               duplicator.§9E§(10,-3.1,true);
               if(_loc4_)
               {
                  break;
               }
               duplicator.spritesheet.§,=§(86);
            }
            duplicator.spritesheet.§@S§(true);
            break;
         }
         §#!P§.§9E§(0.3,1.4);
         while(true)
         {
            if(_loc5_)
            {
               §#!P§.spritesheet.§,=§(66);
               if(_loc4_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.width(410);
         if(!_loc4_)
         {
            dialog.§";§("That\'s it, no more talking to my son!",-320,-190,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.scale(1.2);
         var _loc2_:* = §&!S§.width(550);
         if(!_loc4_)
         {
            dialog.§";§("And no more problem-solving, either!",-280,140,_loc1_,_loc2_,-1,null,null);
         }
         _loc1_ = §&!S§.width(350);
         var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc5_)
         {
            dialog.§";§("Give him a chance to learn.",300,210,null,_loc1_,-1,_loc3_,null);
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               §7!!§.translate(0,0,-40);
               if(!_loc5_)
               {
                  duplicator.§9E§(10,-3.1,true);
               }
               duplicator.spritesheet.§,=§(36);
               if(_loc5_)
               {
                  break;
               }
               duplicator.spritesheet.§@S§(true);
               if(!_loc4_)
               {
                  break;
               }
               §#!P§.§9E§(0.3,1.4);
               if(!_loc5_)
               {
                  §#!P§.spritesheet.§,=§(66);
               }
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.scale(1.2);
         var _loc2_:* = §&!S§.width(810);
         var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("You don\'t even care that he\'s starting to trust the Government!",100,-280,_loc1_,_loc2_,null,_loc3_,350);
         }
         _loc1_ = §&!S§.scale(1.1);
         _loc3_ = new § 6§(§#!P§.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("So what?",-200,-40,_loc1_,null,null,_loc3_,null);
         }
         _loc1_ = §&!S§.width(620);
         if(_loc4_)
         {
            dialog.§";§("The Government may be a bunch of idiots, but they\'re still better role models than you.",-280,200,null,_loc1_,-1,null,null);
            if(!_loc5_)
            {
               §^!`§();
            }
         }
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               §7!!§.translate(0,0,-30);
               duplicator.§9E§(10,-3.4,true);
               if(!_loc5_)
               {
                  break;
               }
               duplicator.spritesheet.§,=§(34);
               duplicator.spritesheet.§@S§(true);
               if(_loc4_)
               {
                  break;
               }
            }
            §#!P§.§9E§(0.3,1.4);
            if(_loc5_)
            {
               §#!P§.spritesheet.§,=§(66);
               if(!_loc4_)
               {
                  break;
               }
               var _loc1_:* = §&!S§.scale(1.1);
               var _loc2_:* = §&!S§.width(520);
               §§goto(addr008a);
            }
            break;
         }
         §#!P§.spritesheet.§@S§(false);
         addr008a:
         while(true)
         {
            if(_loc5_)
            {
               dialog.§";§("You\'re teaching my son not to solve problems!",240,-240,_loc1_,_loc2_,null,null,null);
               if(_loc4_)
               {
                  break;
               }
            }
            § !C§("not");
            break;
         }
         _loc1_ = §&!S§.scale(1.1);
         _loc2_ = §&!S§.width(980);
         var _loc3_:§ 7§ = new § 6§(duplicator.§<!U§());
         while(true)
         {
            if(_loc5_)
            {
               dialog.§";§("You\'re teaching him that if he waits long enough, someone else will come along and solve his problems for him!",100,150,_loc1_,_loc2_,-1,_loc3_,200);
               if(_loc4_)
               {
                  break;
               }
            }
            §^!`§();
            break;
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               §7!!§.translate(0,0,-20);
               if(_loc4_)
               {
                  duplicator.§9E§(10,-3.7,true);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               duplicator.spritesheet.§,=§(30);
               duplicator.spritesheet.§@S§(true);
               if(_loc5_)
               {
                  break;
               }
            }
            §#!P§.§9E§(0.3,1.4);
            if(_loc4_)
            {
               §#!P§.spritesheet.§,=§(66);
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.scale(1.3);
         var _loc2_:* = §&!S§.width(800);
         if(_loc4_)
         {
            dialog.§";§("What kind of lessons do you think you\'re teaching my son?",80,-270,_loc1_,_loc2_,null,null,null);
         }
         var _loc3_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("How to solve problems.",-260,60,null,null,null,_loc3_,null);
         }
         _loc1_ = §&!S§.scale(1.1);
         _loc3_ = new § 6§(duplicator.§<!U§());
         while(true)
         {
            if(!_loc5_)
            {
               dialog.§";§("No, you aren\'t!",320,160,_loc1_,null,0,_loc3_,null);
               if(_loc5_)
               {
                  break;
               }
            }
            §^!`§();
            break;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            duplicator.§9E§(10,-7.3,true);
            duplicator.spritesheet.§,=§(34);
         }
         duplicator.spritesheet.§@S§(true);
         if(!_loc2_)
         {
            §#!P§.§9E§(0.6,1);
         }
         §#!P§.spritesheet.§,=§(9);
         if(!_loc2_)
         {
            §#!P§.spritesheet.§@S§(false);
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("I\'m busy, go away.",220,0,null,null,null,_loc1_,null);
            if(!_loc2_)
            {
               §^!`§();
            }
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         while(true)
         {
            if(_loc10_)
            {
               §4!@§();
               if(!_loc10_)
               {
                  break;
               }
            }
            §8E§(§#!P§);
            break;
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc10_)
            {
               _loc1_.x = 0;
               if(!_loc10_)
               {
                  break;
               }
            }
            _loc1_.y = 0;
            if(_loc10_)
            {
               break;
            }
            addr0068:
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
            §§push(Number(Math.sin(1.0471975511965976)));
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop3:
            while(true)
            {
               while(true)
               {
                  if(_loc10_)
                  {
                     _loc2_.x = 0 * _loc3_;
                     if(_loc9_)
                     {
                        break;
                     }
                     _loc2_.y = 0 * _loc3_;
                     if(!_loc10_)
                     {
                        break loop3;
                     }
                  }
                  _loc2_.z = _loc3_;
                  if(!_loc9_)
                  {
                     break loop3;
                  }
                  break;
               }
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.x * _loc2_.x);
                        if(!_loc9_)
                        {
                           §§push(_loc2_.y);
                           §§push(_loc2_.y);
                           if(!_loc10_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc10_)
                           {
                              break loop6;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc10_)
                           {
                              break loop5;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(_loc10_)
                        {
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              break loop6;
                           }
                           addr0123:
                           §§goto(addr0126);
                           §§push(_loc2_.w);
                        }
                        §§goto(addr0136);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc10_)
                     {
                        §§goto(addr0123);
                        §§push(_loc2_.w);
                     }
                     §§goto(addr012e);
                  }
                  §§push(_loc2_.z);
                  if(_loc10_)
                  {
                     break loop10;
                  }
                  addr0126:
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc9_)
                  {
                     break;
                  }
                  addr012e:
                  §§push(Number(§§pop()));
                  if(_loc10_)
                  {
                     break;
                  }
                  §§goto(addr0136);
               }
               addr0136:
               var _loc4_:* = Number(§§pop());
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc10_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc10_)
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
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc10_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc9_)
                              {
                                 break;
                              }
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
                           if(!_loc9_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop8;
                           }
                           §§push(_loc4_);
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc10_)
                           {
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(_loc10_)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.x);
                              if(_loc10_)
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
                              if(_loc10_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              §§push(_loc2_);
                              §§push(_loc2_.w);
                              if(_loc10_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().w = §§pop();
                              break loop8;
                           }
                           §§goto(addr023b);
                        }
                     }
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     if(_loc10_)
                     {
                        break;
                     }
                     break loop8;
                  }
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  break;
               }
               tunnel.§<!M§.reset();
               if(_loc10_)
               {
                  tunnel.display(0);
                  duplicator.§9E§(10,-8,true);
                  addr023b:
                  duplicator.spritesheet.§,=§(30);
                  duplicator.spritesheet.§@S§(true);
                  if(_loc10_)
                  {
                     §#!P§.§9E§(0.6,2.78e-17,null,54);
                  }
               }
               §#!P§.spritesheet.§,=§(73);
               if(_loc10_)
               {
                  §#!P§.spritesheet.§@S§(false);
               }
               var _loc6_:§ 7§ = new § 6§(§#!P§.§<!U§());
               if(_loc10_)
               {
                  dialog.§";§("Yes?",160,-160,null,null,null,_loc6_,null);
               }
               var _loc7_:* = §&!S§.scale(1.3);
               var _loc8_:* = §&!S§.width(570);
               _loc6_ = new § 6§(duplicator.§<!U§());
               if(_loc10_)
               {
                  dialog.§";§("Get down here so I can yell at you!",-260,110,_loc7_,_loc8_,null,_loc6_,null);
               }
               return;
            }
            _loc2_.w = Number(Math.cos(1.0471975511965976));
            break loop4;
         }
         _loc1_.z = 4030;
         §§goto(addr0068);
      }
      
      public function §4!@§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:Transform = new Transform();
         var _loc2_:§"B§ = null;
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
         §§push(Number(Math.sin(-0.5235987755982988)));
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc9_)
            {
               _loc2_.x = 0 * _loc3_;
               if(!_loc10_)
               {
                  _loc2_.y = 0 * _loc3_;
                  if(_loc10_)
                  {
                     break;
                  }
                  _loc2_.z = _loc3_;
                  if(_loc10_)
                  {
                     break;
                  }
               }
            }
            _loc2_.w = Number(Math.cos(-0.5235987755982988));
            break;
         }
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            if(_loc9_)
            {
               §§push(_loc2_.y);
               if(!_loc9_)
               {
                  break;
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            §§push(_loc2_.z);
            if(!_loc10_)
            {
               §§push(_loc2_.z);
               if(_loc9_)
               {
                  break;
               }
               addr00c5:
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(_loc9_)
            {
               §§push(§§pop() - 1);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        loop13:
                        while(true)
                        {
                           loop14:
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 loop16:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc10_)
                                       {
                                          §§push(0);
                                          if(_loc10_)
                                          {
                                             break loop16;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                break loop15;
                                             }
                                             §§push(_loc5_);
                                             if(!_loc9_)
                                             {
                                                break loop14;
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc5_);
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             §§push(-§§pop());
                                             if(_loc10_)
                                             {
                                                break loop13;
                                             }
                                          }
                                       }
                                       §§push(§§pop() < 1e-10);
                                       if(!_loc10_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          §§push(_loc4_);
                                          if(_loc9_)
                                          {
                                             break loop13;
                                          }
                                          break;
                                       }
                                       break loop15;
                                    }
                                    §§goto(addr0173);
                                 }
                                 §§goto(addr013e);
                              }
                           }
                           §§goto(addr0173);
                        }
                        addr013e:
                        if(§§pop() == 0)
                        {
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           if(_loc10_)
                           {
                              break loop4;
                           }
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                        }
                        else
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           if(_loc9_)
                           {
                              break loop14;
                           }
                           addr0173:
                           _loc4_ = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(!_loc10_)
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
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              §§push(_loc2_.w);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().w = §§pop();
                              if(_loc10_)
                              {
                                 break loop3;
                              }
                           }
                        }
                     }
                     break loop15;
                  }
                  §7!!§.§5!,§(_loc1_);
                  while(true)
                  {
                     §§push(§7!!§);
                     §§push(0);
                     §§push(120);
                     §§push(§9_§.endZ);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + 300);
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().§6!&§(§§pop(),§§pop(),§§pop());
                  break;
               }
               §7!!§.§3;§();
               break;
            }
            var _loc6_:Model = §>!3§.§,9§(false,true,false,tunnel,null);
            while(true)
            {
               if(!_loc10_)
               {
                  _loc6_.§;!6§(new Transform());
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc6_.transform.§5!,§(§7!!§);
               if(!_loc10_)
               {
                  break;
               }
               §§goto(addr0278);
            }
            _loc6_.transform.§%!7§.y = 2;
            if(_loc9_)
            {
               addr0278:
               _loc6_.transform.§%!7§.z = 175;
               §§goto(addr0283);
            }
            addr0283:
            var _loc7_:§"B§ = _loc6_.transform.§,t§;
            while(true)
            {
               if(!_loc10_)
               {
                  if(_loc7_ == null)
                  {
                     if(_loc10_)
                     {
                        break;
                     }
                     _loc7_ = new §"B§();
                  }
                  _loc4_ = Number(Math.sin(0.7853981633974483));
               }
               _loc7_.x = 0 * _loc4_;
               _loc7_.y = _loc4_;
               _loc7_.z = 0 * _loc4_;
               _loc7_.w = Number(Math.cos(0.7853981633974483));
               §§push(_loc7_.x * _loc7_.x);
               §§push(_loc7_.y);
               §§push(_loc7_.y);
               if(_loc9_)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc9_)
                        {
                           §§push(_loc7_.z);
                           if(!_loc10_)
                           {
                              §§push(_loc7_.z);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc10_)
                              {
                                 break loop7;
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(Number(§§pop()));
                        §§push(_loc7_.w);
                        break loop7;
                     }
                  }
                  §§push(_loc7_.w);
                  break loop8;
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(_loc9_)
               {
                  _loc5_ = §§pop();
                  break;
               }
               §§goto(addr033c);
            }
            §§push(_loc5_);
            if(_loc9_)
            {
               addr033c:
               §§goto(addr0346);
            }
            addr0346:
            §§push(§§pop() - 1);
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            loop9:
            while(true)
            {
               if(!_loc10_)
               {
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc8_);
                        §§push(0);
                        if(!_loc10_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc9_)
                              {
                                 break loop10;
                              }
                              §§push(_loc8_);
                           }
                           else
                           {
                              §§push(-_loc8_);
                           }
                           §§push(§§pop() < 1e-10);
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           if(_loc10_)
                           {
                              break loop10;
                           }
                           §§push(_loc5_);
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc7_.x = 0;
                           _loc7_.y = 0;
                           if(!_loc10_)
                           {
                              break loop10;
                           }
                           break;
                        }
                        _loc5_ = 1 / Number(Math.sqrt(_loc5_));
                        §§push(_loc7_);
                        §§push(_loc7_.x);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().x = §§pop();
                        §§push(_loc7_);
                        §§push(_loc7_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().y = §§pop();
                        §§push(_loc7_);
                        §§push(_loc7_.z);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().z = §§pop();
                        §§push(_loc7_);
                        §§push(_loc7_.w);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().w = §§pop();
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     _loc6_.transform.reset();
                     if(!_loc9_)
                     {
                        break loop9;
                     }
                  }
                  _loc7_.z = 0;
                  _loc7_.w = 1;
                  break loop11;
               }
               tunnel.§"[§.§&!2§(_loc6_);
               break;
            }
            §[c§ = new TunnelSection(tunnel,tunnel.§"[§,Vector.<§%!§>([]),"layout-grid3x1|tileWidth-70",1,0);
            return;
         }
         §§goto(addr00c5);
      }
      
      public function §8E§(param1:§^s§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               param1.transform.§5!,§(§7!!§);
               if(_loc2_)
               {
                  break;
               }
            }
            param1.§9_§ = §[c§;
            break;
         }
      }
   }
}

