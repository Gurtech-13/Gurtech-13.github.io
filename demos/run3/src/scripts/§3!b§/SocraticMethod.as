package §3!b§
{
   import §!!$§.§ 6§;
   import §!]§.§4N§;
   import §!]§.§9u§;
   import §!]§.Path;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §2!"§.§8f§;
   import §<!&§.§%!§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class SocraticMethod extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var §-P§:§^s§;
      
      public var §?m§:Array;
      
      public var §%!G§:Shape;
      
      public var §>!$§:Array;
      
      public var §1n§:Shape;
      
      public var child:§^s§;
      
      public function SocraticMethod()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§;!4§,-1,null,{"endTiles":false});
               if(_loc1_)
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
               if(!_loc1_)
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
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc1_)
               {
                  break;
               }
            }
            name = "Socratic Method";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §>!$§ = null;
         §?m§ = null;
         §%!G§ = null;
         §1n§ = null;
         if(!_loc1_)
         {
            tunnel = null;
            child = null;
            if(_loc2_)
            {
               §-P§ = null;
               if(_loc2_)
               {
                  sprites.length = 0;
               }
            }
         }
      }
      
      public function §3m§() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc8_:* = null as Path;
         var _loc9_:* = null as §9u§;
         while(true)
         {
            if(!_loc11_)
            {
               §%!G§.x = -750 * dialog.layout.scale.x;
               §%!G§.y = 100 * dialog.layout.scale.y;
               if(_loc11_)
               {
                  break;
               }
               §%!G§.graphics.clear();
               if(_loc10_)
               {
                  §%!G§.graphics.beginFill(12364668);
               }
            }
            §%!G§.graphics.drawRect(-§%!G§.x,-§%!G§.y,dialog.layout.§&#§.width,dialog.layout.§&#§.height);
            if(!_loc11_)
            {
               §%!G§.graphics.endFill();
               if(!_loc10_)
               {
                  break;
               }
            }
            §4N§.§@!A§().§#!T§(§%!G§.graphics,§>!$§,§?m§,false);
            break;
         }
         var _loc1_:Path = §4N§.§@!A§().§;O§(§>K§.§;!4§.pathName);
         var _loc2_:Point = _loc1_.§;3§(§>+§);
         while(true)
         {
            if(!_loc11_)
            {
               §%!G§.graphics.lineStyle();
               if(!_loc10_)
               {
                  break;
               }
            }
            §%!G§.graphics.beginFill(0);
            break;
         }
         var _loc3_:§38§ = dialog.layout.scale;
         while(true)
         {
            if(!_loc11_)
            {
               §%!G§.graphics.drawCircle(_loc2_.x,_loc2_.y,4 * ((_loc3_.x + _loc3_.y) / 2));
               if(!_loc10_)
               {
                  break;
               }
            }
            §%!G§.graphics.endFill();
            if(!_loc11_)
            {
               break;
            }
            addr01bf:
            var _loc4_:Shape = §1n§;
            §§goto(addr01af);
         }
         if(§1n§ != null)
         {
            addr01af:
            if(_loc10_)
            {
               if(_loc4_ != §%!G§)
               {
                  if(!_loc11_)
                  {
                     _loc4_.graphics.clear();
                  }
               }
            }
            var _loc5_:Path = §4N§.§@!A§().§;O§(§>K§.§2s§.pathName);
            if(_loc10_)
            {
               _loc5_.draw(_loc4_.graphics,false,true);
            }
            var _loc6_:Point = _loc5_.§;3§(0);
            while(true)
            {
               if(!_loc11_)
               {
                  _loc4_.graphics.lineStyle();
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               _loc4_.graphics.beginFill(0);
               break;
            }
            var _loc7_:§38§ = dialog.layout.scale;
            loop4:
            while(true)
            {
               if(_loc10_)
               {
                  _loc4_.graphics.drawCircle(_loc6_.x,_loc6_.y,4 * ((_loc7_.x + _loc7_.y) / 2));
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        _loc4_.graphics.endFill();
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     if(_loc4_ != §%!G§)
                     {
                        break;
                     }
                     break loop4;
                  }
               }
               _loc8_ = §4N§.§@!A§().§;O§(§>K§.§>-§.pathName);
               §§push(_loc8_.waypoints);
               §§push(int(_loc8_.waypoints.length));
               if(_loc10_)
               {
                  §§push(§§pop() - 1);
               }
               _loc9_ = §§pop()[§§pop()];
               if(_loc10_)
               {
                  _loc4_.x = _loc9_.x * dialog.layout.scale.x - _loc6_.x + §%!G§.x;
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               _loc4_.y = _loc9_.y * dialog.layout.scale.y - _loc6_.y + §%!G§.y;
               break;
            }
            return;
         }
         §§push(§%!G§);
         §§goto(addr01bf);
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
               child = new §^s§(§9_§,§'O§.child,false,null,false,null);
               if(_loc5_)
               {
                  break;
               }
               child.billboardMode = true;
               if(!_loc6_)
               {
                  break;
               }
            }
            sprites.push(child);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(!_loc5_)
         {
            child.goesTo = new § !N§(_loc2_,-2);
            if(_loc6_)
            {
               §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
               if(!_loc5_)
               {
                  §-P§.billboardMode = true;
                  if(_loc6_)
                  {
                     sprites.push(§-P§);
                  }
               }
            }
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc6_)
         {
            §-P§.goesTo = new § !N§(_loc4_,-1);
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.§9E§(18.7,1);
         child.spritesheet.§,=§(116);
         child.spritesheet.§@S§(true);
         §-P§.§9E§(18.8,1.2);
         if(!_loc3_)
         {
            §-P§.spritesheet.§,=§(85);
            §-P§.spritesheet.§@S§(false);
         }
         dialog.§";§("Sorry about, um, \"lying\" to you.",20,-280,null,null,null,null,null);
         var _loc1_:* = §&!S§.scale(0.5);
         if(!_loc3_)
         {
            dialog.§`!^§("There, I put it back.",220,-230,_loc1_,null,16777215);
         }
         _loc1_ = §&!S§.width(740);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Now that you figured it out, go ahead and add the name you thought of.",-120,-10,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Yay! Now it\'s really \"The River\"!",80,340,null,null,null,_loc2_,null);
            if(!_loc3_)
            {
               § !C§("really");
            }
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         child.§9E§(18.65,0.9);
         while(true)
         {
            if(_loc3_)
            {
               child.spritesheet.§,=§(104);
               if(_loc4_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(true);
            §-P§.§9E§(18.8,1.2);
            break;
         }
         §-P§.spritesheet.§,=§(46);
         §-P§.spritesheet.§@S§(false);
         if(!_loc4_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("Wait, no!");
                  §§push(80);
                  §§push(-260);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              §§goto(addr00bd);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop1;
                     }
                  }
                  §§push(null);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§goto(addr00bd);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr00bd:
         }
         var _loc1_:* = §&!S§.width(1340);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I\'ve been there, and there\'s nothing. This map is lying!");
                     §§push(220);
                     §§push(-72);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop5;
                              }
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop4;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),-1,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Exactly.");
                     §§push(-100);
                     §§push(300);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 addr01be:
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 break loop7;
                              }
                              addr01d7:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break loop7;
                                 }
                                 §§goto(addr01d7);
                              }
                           }
                           §§push(§§pop());
                           break loop8;
                        }
                        break;
                     }
                     §§goto(addr01be);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop8;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            child.§9E§(18.7,1);
            loop0:
            while(true)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     child.spritesheet.§,=§(116);
                     if(_loc4_)
                     {
                        break;
                     }
                     child.spritesheet.§@S§(true);
                     §-P§.§9E§(18.8,1.2);
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §-P§.spritesheet.§,=§(46);
                  break;
               }
               §-P§.spritesheet.§@S§(false);
               break;
            }
         }
         break loop0;
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         child.§9E§(18.65,0.9);
         child.spritesheet.§,=§(113);
         if(!_loc2_)
         {
            child.spritesheet.§@S§(true);
            if(!_loc2_)
            {
               §-P§.§9E§(18.8,1.2);
            }
         }
         §-P§.spritesheet.§,=§(85);
         if(_loc3_)
         {
            §-P§.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(520);
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("But, what if I put Tunnel A somewhere else?",-260,-310,null,_loc1_,null,null,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("Such as... over here.",120,-190,null,null,-1,null,null);
            break;
         }
         _loc1_ = §&!S§.width(330);
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("Now, how would you get to A-1?",400,10,null,_loc1_,-1,null,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("Easy!",-200,240,null,null,null,null,null);
            if(!_loc2_)
            {
               §"d§(true);
            }
            break;
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         child.§9E§(18.7,1);
         if(!_loc3_)
         {
            child.spritesheet.§,=§(116);
         }
         child.spritesheet.§@S§(true);
         §-P§.§9E§(18.8,1.3);
         §-P§.spritesheet.§,=§(56);
         §-P§.spritesheet.§@S§(false);
         dialog.§";§("I go back,",-480,100,null,null,null,null,null);
         if(_loc2_)
         {
            dialog.§";§("turn right,",-180,-100,null,null,-1,null,null);
            dialog.§";§("then up,",100,-60,null,null,-1,null,null);
         }
         var _loc1_:* = §&!S§.width(220);
         while(true)
         {
            if(_loc2_)
            {
               dialog.§";§("then right again.",440,-370,null,_loc1_,-1,null,null);
               if(_loc3_)
               {
                  break;
               }
               dialog.§";§("Good!",400,220,null,null,null,null,null);
               if(!_loc2_)
               {
                  break;
               }
            }
            §"d§();
            break;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         child.§9E§(18.7,1);
         if(!_loc2_)
         {
            child.spritesheet.§,=§(116);
            if(!_loc2_)
            {
               child.spritesheet.§@S§(true);
            }
         }
         §-P§.§9E§(18.8,1.3);
         while(true)
         {
            if(_loc3_)
            {
               §-P§.spritesheet.§,=§(56);
               if(_loc2_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§@S§(false);
            if(!_loc2_)
            {
               dialog.§";§("Imagine you want to reach, say...",-200,-260,null,null,null,null,null);
               dialog.§";§("A-1.",380,-200,null,null,-1,null,null);
            }
            break;
         }
         var _loc1_:* = §&!S§.width(310);
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("How would you get there?",340,30,null,_loc1_,-1,null,null);
               if(_loc2_)
               {
                  break;
               }
            }
            §"d§();
            break;
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(_loc9_)
         {
            §>!$§ = [§>K§.§0x§.pathName,§>K§.§>-§.pathName,§>K§.§;!4§.pathName,§>K§.§7&§.pathName,§>K§.§>y§.pathName,§>K§.§`!5§.pathName,§>K§.§>=§.pathName,§>K§.§^!+§.pathName,§>K§.§,[§.pathName,§>K§.§1k§.pathName];
            while(true)
            {
               if(_loc9_)
               {
                  §?m§ = [§>K§.§>=§.pathName,§>K§.§>-§.pathName];
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §%!G§ = null;
               if(!_loc10_)
               {
                  break;
               }
            }
            §1n§ = null;
         }
         var _loc1_:§%!§ = new §%!§(tunnel,false,new §8f§("MapWithTeapot.png",40,25));
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  §-P§.§9E§(18.7,1.1,null,-14);
                  _loc1_.transform.§"w§(§-P§.transform.§<!C§());
                  if(!_loc10_)
                  {
                     _loc1_.transform.§3;§();
                     §4!R§.§1!A§(0,0,1.5707963267948966,_loc1_.transform.§,t§);
                     if(_loc10_)
                     {
                        break;
                     }
                     §4!R§.§9!L§(_loc1_.transform.§,t§,§4!R§.§1!A§(-1.5707963267948966,0,0),_loc1_.transform.§,t§);
                  }
                  §4!R§.§9!L§(_loc1_.transform.§,t§,§4!R§.§1!A§(0,1.5707963267948966,0),_loc1_.transform.§,t§);
                  if(_loc10_)
                  {
                     break loop1;
                  }
               }
               _loc1_.transform.reset();
               break loop1;
            }
            var _loc2_:Point3D = tunnel.§<!M§.§%!7§;
            while(true)
            {
               if(!_loc10_)
               {
                  _loc2_.x = 193;
                  if(_loc10_)
                  {
                     break;
                  }
               }
               _loc2_.y = 186;
               if(_loc9_)
               {
                  _loc2_.z = 285;
               }
               break;
            }
            var _loc3_:§"B§ = tunnel.§<!M§.§,t§;
            while(true)
            {
               if(_loc9_)
               {
                  if(_loc3_ != null)
                  {
                     break;
                  }
               }
               _loc3_ = new §"B§();
               break;
            }
            §§push(Number(Math.sin(2.2078415037728267)));
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop5:
            while(true)
            {
               if(_loc9_)
               {
                  §§push(_loc3_);
                  §§push(-0.488);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        §§push(_loc3_);
                        §§push(-0.728);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                     §§push(_loc3_);
                     §§push(0.481);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(_loc9_)
                     {
                        break;
                     }
                     break loop5;
                  }
               }
               _loc3_.w = Number(Math.cos(2.2078415037728267));
               break;
            }
            loop7:
            while(true)
            {
               §§push(_loc3_.x);
               if(!_loc10_)
               {
                  §§push(_loc3_.x);
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
               }
               while(true)
               {
                  §§push(_loc3_.y);
                  if(!_loc10_)
                  {
                     §§push(_loc3_.y);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                     §§push(_loc3_.z);
                     §§push(_loc3_.z);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc9_)
                     {
                        break loop7;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  var _loc5_:Number = Number(§§pop());
                  §§push(_loc5_);
                  if(!_loc10_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        loop24:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(0);
                              if(!_loc10_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc10_)
                                    {
                                       §§push(_loc6_);
                                    }
                                    else
                                    {
                                       §§goto(addr036d);
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc6_);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(-§§pop());
                                 }
                                 §§push(§§pop() < 1e-10);
                                 if(!_loc10_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop10;
                                 }
                                 if(!_loc9_)
                                 {
                                    break loop10;
                                 }
                                 §§push(_loc5_);
                                 if(!_loc9_)
                                 {
                                    break loop9;
                                 }
                                 §§push(0);
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    _loc3_.x = 0;
                                    _loc3_.y = 0;
                                    if(_loc9_)
                                    {
                                       _loc3_.z = 0;
                                       _loc3_.w = 1;
                                       break loop10;
                                    }
                                    break loop24;
                                 }
                                 break loop10;
                              }
                              §§push(1 / Number(Math.sqrt(_loc5_)));
                              break loop9;
                           }
                           §§goto(addr032f);
                        }
                        §§goto(addr03c2);
                     }
                     tunnel.§<!M§.reset();
                     tunnel.display(0);
                     §§goto(addr0395);
                  }
                  addr032f:
                  _loc5_ = §§pop();
                  §§push(_loc3_);
                  §§push(_loc3_.x);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc3_);
                  §§push(_loc3_.y);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().y = §§pop();
                  loop11:
                  while(true)
                  {
                     if(_loc9_)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.z);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().z = §§pop();
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 addr036d:
                                 §§push(_loc3_);
                                 §§push(_loc3_.w);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() * _loc5_);
                                 }
                                 §§pop().w = §§pop();
                                 if(_loc9_)
                                 {
                                    break loop10;
                                 }
                                 addr0395:
                                 child.§9E§(18.7,0.9);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 child.spritesheet.§,=§(104);
                                 if(_loc10_)
                                 {
                                    break loop12;
                                 }
                                 child.spritesheet.§@S§(true);
                              }
                              addr03c2:
                              §-P§.§9E§(18.9,1.3);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              break loop11;
                           }
                           §-P§.spritesheet.§,=§(46);
                           break;
                        }
                     }
                     break loop12;
                  }
                  var _loc7_:* = §&!S§.width(2000);
                  var _loc8_:§ 7§ = new § 6§(child.§<!U§());
                  loop14:
                  while(true)
                  {
                     if(_loc9_)
                     {
                        loop15:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("You\'ll let me change the name of this tunnel, but not anything else about it?");
                              §§push(60);
                              §§push(-100);
                              if(_loc9_)
                              {
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc10_)
                                       {
                                          addr0437:
                                          §§push(null);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop());
                                             break;
                                          }
                                          break loop15;
                                       }
                                       addr0453:
                                       §§push(null);
                                       if(!_loc10_)
                                       {
                                          break loop15;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(!_loc10_)
                                       {
                                          if(§§pop() < 0)
                                          {
                                             §§goto(addr0453);
                                          }
                                          else
                                          {
                                             §§push(null);
                                          }
                                       }
                                    }
                                 }
                                 §§push(§§pop() / 2.5);
                                 break;
                              }
                              §§goto(addr0437);
                           }
                           §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc7_ == null ? null : int(Math.round(_loc7_ / 2.5)),null,_loc8_);
                           if(_loc10_)
                           {
                              break loop14;
                           }
                        }
                        §§push(§§pop());
                        break loop16;
                     }
                     loop17:
                     while(true)
                     {
                        loop18:
                        while(true)
                        {
                           loop19:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(dialog);
                                 §§push("Yep.");
                                 §§push(-180);
                                 §§push(120);
                                 if(_loc9_)
                                 {
                                    §§push(null);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    if(§§pop() != null)
                                    {
                                       §§push(null);
                                       if(_loc9_)
                                       {
                                          break loop18;
                                       }
                                       break;
                                    }
                                    if(!_loc9_)
                                    {
                                       break loop17;
                                    }
                                 }
                                 §§push(null);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                    break loop19;
                                 }
                                 break loop18;
                              }
                              §§goto(addr04de);
                           }
                           §§goto(addr04e3);
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§goto(addr04de);
                        §§push(null);
                     }
                     §§pop().§";§(§§pop(),§§pop(),null,_loc9_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
                     addr04e3:
                     break;
                  }
                  _loc8_ = new § 6§(§-P§.§<!U§());
                  if(!_loc10_)
                  {
                     loop21:
                     while(true)
                     {
                        loop22:
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Let\'s see if you can figure out why.");
                           §§push(-80);
                           §§push(340);
                           if(_loc9_)
                           {
                              §§push(null);
                              if(!_loc10_)
                              {
                                 while(true)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(_loc9_)
                                       {
                                          addr0547:
                                          §§push(null);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop());
                                             break loop22;
                                          }
                                          break loop21;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(!_loc9_)
                                       {
                                          break loop21;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(null);
                                          break;
                                       }
                                    }
                                    §§push(null);
                                    if(_loc9_)
                                    {
                                       break loop21;
                                    }
                                    break;
                                 }
                                 §§push(§§pop() / 2.5);
                                 break;
                              }
                              break loop21;
                           }
                           §§goto(addr0547);
                        }
                        §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc8_);
                     }
                     §§push(§§pop());
                     break loop22;
                  }
                  return;
               }
               addr028f:
               §§goto(addr0290);
            }
            §§push(§§pop() + §§pop());
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            §§push(_loc3_.w);
            if(!_loc10_)
            {
               §§goto(addr028f);
               §§push(_loc3_.w);
            }
            §§goto(addr0290);
         }
         tunnel.§`=§(_loc1_);
         break loop2;
      }
      
      public function §"d§(param1:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(param1 == null)
         {
            param1 = false;
         }
         if(§%!G§ == null)
         {
            §%!G§ = new Shape();
         }
         dialog.addChildAt(§%!G§,0);
         while(true)
         {
            if(!_loc3_)
            {
               if(!param1)
               {
                  if(§1n§ != null)
                  {
                     if(_loc4_)
                     {
                        §1n§ = null;
                     }
                  }
                  break;
               }
            }
            if(§1n§ == null)
            {
               if(!_loc4_)
               {
                  break;
               }
               §1n§ = new Shape();
            }
            dialog.addChildAt(§1n§,1);
            if(_loc4_)
            {
            }
            break;
         }
         while(true)
         {
            §§push(§3m§);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            dialog.layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc2_)));
            if(_loc4_)
            {
               _loc2_();
            }
         }
      }
   }
}

