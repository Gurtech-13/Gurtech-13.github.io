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
   
   public class Sneaking extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var child:§^s§;
      
      public var §#!P§:§^s§;
      
      public function Sneaking()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this);
            §§push(§>K§.home2);
            §§push(1);
            §§push(null);
            §§push("endTiles");
            §§push(false);
            §§push("customDate");
            §§push(§>K§.home2.§99§(§>K§.home2.levelCount));
            if(_loc1_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().super(§§pop(),§§pop(),§§pop(),null,null,§+!"§.CUSTOM(§>K§.home2.§#R§));
            if(!_loc2_)
            {
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
               if(_loc1_)
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
               §§push(frame6);
               if(!_loc2_)
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
               §§pop().frames = null;
               if(!_loc2_)
               {
                  name = "Sneaking";
               }
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
            child = null;
            if(!_loc1_)
            {
               sprites.length = 0;
            }
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
            if(_loc6_)
            {
               §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
               if(!_loc6_)
               {
                  break;
               }
               §#!P§.billboardMode = true;
               if(!_loc6_)
               {
                  break;
               }
            }
            sprites.push(§#!P§);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc6_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,0);
               if(!_loc6_)
               {
                  break;
               }
            }
            child = new §^s§(§9_§,§'O§.child,false,null,false,null);
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr00dc);
         }
         child.billboardMode = true;
         if(!_loc5_)
         {
            sprites.push(child);
         }
         addr00dc:
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc5_)
         {
            child.goesTo = new § !N§(_loc4_,1);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §#!P§.§9E§(18.1,-46,true,22);
         while(true)
         {
            if(_loc2_)
            {
               §#!P§.spritesheet.§,=§(73);
               if(!_loc2_)
               {
                  break;
               }
               §#!P§.spritesheet.§@S§(true);
            }
            child.§9E§(16.2,-33.4,true);
            child.spritesheet.§,=§(119);
            child.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("You\'re off the hook. No hard feelings.",40,70,null,null,null,_loc1_,null);
            if(!_loc3_)
            {
               §#!P§.transform.§"I§(child.transform.§+n§());
            }
         }
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.§9E§(17.8,-43.2,true);
         §#!P§.spritesheet.§,=§(28);
         §#!P§.spritesheet.§@S§(true);
         child.§9E§(16.2,-33,true);
         child.spritesheet.§,=§(119);
         child.spritesheet.§@S§(false);
         if(!_loc3_)
         {
            dialog.§";§("So you know your father is a liar?",-120,-280,null,null,null,null,null);
         }
         var _loc1_:* = §&!S§.width(370);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("There may be hope for you yet!",-160,-110,null,_loc1_,-1,_loc2_,null);
            if(!_loc3_)
            {
               child.§2e§(§#!P§);
            }
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §#!P§.§9E§(17.8,-43.2,true);
            §#!P§.spritesheet.§,=§(46);
            §#!P§.spritesheet.§@S§(false);
            child.§9E§(16.2,-32,true);
            child.spritesheet.§,=§(119);
            child.spritesheet.§@S§(false);
         }
         dialog.§";§("That\'s only a game.",-320,-340,null,null,null,null,null);
         var _loc1_:* = §&!S§.width(570);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Dad calls it \"Conspircy,\" but it\'s really Hide-and-Seek.",-80,-190,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Oh!",-20,280,null,null,null,_loc2_,null);
            if(_loc4_)
            {
               child.§2e§(§#!P§);
            }
         }
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
               §#!P§.§9E§(17.8,-43.2,true);
               if(_loc4_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(46);
            if(!_loc4_)
            {
               §#!P§.spritesheet.§@S§(false);
               break;
            }
            §§goto(addr0076);
         }
         child.§9E§(16.2,-31.4,true);
         if(!_loc4_)
         {
            child.spritesheet.§,=§(119);
         }
         child.spritesheet.§@S§(false);
         addr0076:
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Um... no? I got a question for you, that\'s all.",120,-180,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(500);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Is that really the best excuse you can think of?",-340,10,null,_loc2_,null,_loc1_,null);
            if(_loc3_)
            {
               § !C§("really");
            }
         }
         _loc2_ = §&!S§.width(860);
         if(_loc3_)
         {
            dialog.§";§("You\'ve been spying on me for ages now. Did you have questions all those times too?",0,290,null,_loc2_,-1,null,null);
            if(_loc3_)
            {
               child.§2e§(§#!P§);
            }
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.§9E§(17.8,-43.2,true);
         §#!P§.spritesheet.§,=§(46);
         §#!P§.spritesheet.§@S§(false);
         child.§9E§(16.2,-30.4,true,-22);
         if(!_loc3_)
         {
            child.spritesheet.§,=§(111);
            child.spritesheet.§@S§(true);
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("All this sneaking around.",-100,-300,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(800);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Do you do it because you want to, or because your father tells you to?",-80,330,null,_loc2_,null,_loc1_,null);
            if(_loc4_)
            {
               child.§2e§(§#!P§);
            }
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §#!P§.spritesheet.§,=§(71);
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.§9E§(17.8,-43.2,true);
         §#!P§.spritesheet.§,=§(80);
         §#!P§.spritesheet.§@S§(true);
         child.§9E§(16.2,-30.4,true,-22);
         if(!_loc3_)
         {
            child.spritesheet.§,=§(111);
         }
         child.spritesheet.§@S§(true);
         var _loc1_:* = §&!S§.width(370);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("Does your father put you up to this?",-320,-50,null,_loc1_,null,_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            child.§2e§(§#!P§);
            break;
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §#!P§.§9E§(17.8,-43.2,true);
               if(!_loc1_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(75);
            if(!_loc2_)
            {
               §#!P§.spritesheet.§@S§(true);
               if(!_loc1_)
               {
                  break;
               }
            }
            child.§2e§(§#!P§);
            break;
         }
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Or kick you!",80,150,null,null,null,_loc1_,null);
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §#!P§.§9E§(18.1,0,null,22);
         §#!P§.spritesheet.§,=§(73);
         §#!P§.spritesheet.§@S§(false);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  child.§9E§(16.2,-34.1,true);
                  if(!_loc2_)
                  {
                     break;
                  }
                  child.spritesheet.§,=§(119);
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               child.spritesheet.§@S§(false);
               break loop0;
            }
            var _loc1_:§ 7§ = new § 6§(child.§<!U§());
            if(!_loc3_)
            {
               dialog.§";§("I didn\'t even get to ask my question!",80,-120,null,null,-1,_loc1_,null);
            }
            return;
         }
         dialog.§";§("Hey, wait!",140,-240,null,null,null,null,null);
         break loop1;
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               §#!P§.§9E§(17.3,-42.8,true,-4);
               if(_loc4_)
               {
                  break;
               }
               §#!P§.spritesheet.§,=§(78);
               if(_loc4_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.scale(0.6);
         var _loc2_:* = §&!S§.width(270);
         var _loc3_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc5_)
         {
            dialog.§";§("I could have sworn...",100,250,_loc1_,_loc2_,null,_loc3_,null);
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
            if(!_loc9_)
            {
               _loc1_.x = 7;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = -81;
            if(_loc8_)
            {
               break;
            }
            addr0046:
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
            §§push(Number(Math.sin(1.5707963267948966)));
            if(_loc8_)
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
                     §§push(-0.024);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     §§push(0.059);
                     if(!_loc9_)
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
                  §§push(-0.998);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc9_)
                  {
                     break loop2;
                  }
                  break;
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
                        §§push(_loc2_.x);
                        §§push(_loc2_.x);
                        if(!_loc9_)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc9_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.y);
                                       if(!_loc9_)
                                       {
                                          §§push(_loc2_.y);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc9_)
                                          {
                                             break loop11;
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc9_)
                                       {
                                          §§push(_loc2_.z);
                                          break loop11;
                                       }
                                       break loop5;
                                    }
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(!_loc8_)
                                    {
                                       break loop10;
                                    }
                                 }
                                 §§push(_loc2_.z);
                                 if(_loc8_)
                                 {
                                    break loop12;
                                 }
                                 break loop6;
                              }
                              §§push(Number(§§pop()));
                              if(_loc8_)
                              {
                                 break;
                              }
                              break loop5;
                           }
                           §§push(_loc2_.w);
                           if(!_loc8_)
                           {
                              break loop4;
                           }
                        }
                        §§push(_loc2_.w);
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     break loop4;
                  }
                  §§push(Number(§§pop()));
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
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
                              §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                              if(!_loc9_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 break loop8;
                              }
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 break loop7;
                              }
                              §§push(0);
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              break loop7;
                           }
                           if(!_loc9_)
                           {
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                              break;
                           }
                           §§goto(addr01df);
                        }
                        §§goto(addr0206);
                     }
                     child.§9E§(16.2,-30.4,true,-22);
                     §§goto(addr0249);
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
                  addr01df:
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
                     addr0206:
                     tunnel.§<!M§.reset();
                     tunnel.display(0);
                     §#!P§.§9E§(17.1,-42,true);
                     §#!P§.spritesheet.§,=§(68);
                     §#!P§.spritesheet.§@S§(false);
                     break loop8;
                  }
                  addr0249:
                  child.spritesheet.§,=§(111);
                  child.spritesheet.§@S§(true);
                  var _loc6_:* = §&!S§.scale(0.6);
                  var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
                  if(!_loc9_)
                  {
                     dialog.§";§("Well, this isn\'t the right way.",120,210,_loc6_,null,null,_loc7_,null);
                  }
                  return;
               }
               §§push(§§pop() + §§pop());
               break loop5;
            }
            _loc2_.w = Number(Math.cos(1.5707963267948966));
            break loop3;
         }
         _loc1_.z = 3760;
         §§goto(addr0046);
      }
   }
}

