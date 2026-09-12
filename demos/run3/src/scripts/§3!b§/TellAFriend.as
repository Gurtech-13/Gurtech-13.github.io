package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §2X§.§>N§;
   import §6!Q§.§]u§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§ L§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import openfl.Assets;
   import openfl.Lib;
   
   public class TellAFriend extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:§^s§;
      
      public var §-P§:§^s§;
      
      public var box:§[C§;
      
      public function TellAFriend()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§>=§,0);
               if(_loc2_)
               {
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
                  §§pop().frames = null;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            name = "Tell a Friend";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               tunnel = null;
               if(_loc1_)
               {
                  student = null;
                  if(!_loc2_)
                  {
                     §-P§ = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:§+#§ = §+#§.§<!L§();
         § L§.high = 208883;
         loop0:
         while(true)
         {
            §§push(true);
            if(!param2)
            {
               §§pop();
               §§push(§!!6§ == 4);
               if(!_loc4_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     Main.instance.§,Z§(null);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §]u§.§@!A§().§5!@§ = false;
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                  }
                  §§push(_loc3_.§>c§());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
                  §§push(!§§pop());
                  break loop0;
               }
               §§goto(addr00b4);
            }
            §+#§.§1!"§(_loc3_);
            break loop2;
         }
         if(§§pop())
         {
            if(_loc4_)
            {
               break loop1;
            }
         }
         addr00b4:
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            student = new §^s§(§9_§,§'O§.student,false,null,false,null);
            while(true)
            {
               if(_loc5_)
               {
                  student.billboardMode = true;
                  if(_loc6_)
                  {
                     break;
                  }
               }
               sprites.push(student);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               student.goesTo = new § !N§(_loc2_,0);
               if(_loc6_)
               {
                  break;
               }
            }
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr00dc);
         }
         §-P§.billboardMode = true;
         if(_loc5_)
         {
            sprites.push(§-P§);
         }
         addr00dc:
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc6_)
         {
            §-P§.goesTo = new § !N§(_loc4_,0);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               student.spritesheet.§,=§(92);
               if(!_loc3_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(false);
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr005a);
         }
         §-P§.spritesheet.§,=§(76);
         if(!_loc4_)
         {
            §-P§.spritesheet.§@S§(true);
         }
         addr005a:
         var _loc1_:* = §&!S§.width(1800);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("We need more of these. Where should I look?");
                     §§push(-80);
                     §§push(-160);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break loop2;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           §§goto(addr00d4);
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr00df);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00da);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc4_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00df:
         }
         _loc2_ = new § 6§(student.§<!U§());
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
                     §§push("Oh, right! Follow me.");
                     §§push(320);
                     §§push(120);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break loop5;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop5;
                           }
                           §§goto(addr015b);
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop5;
                  }
                  §§goto(addr0174);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0161);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr0174:
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               student.§9E§(2,6);
               if(!_loc3_)
               {
                  student.spritesheet.§,=§(91);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §-P§.§9E§(2.8,5.9);
            if(!_loc3_)
            {
               §-P§.spritesheet.§,=§(69);
            }
            break;
         }
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(§&!;§);
               §§push(16777215);
               §§push(dialog.§[Y§);
               if(_loc4_)
               {
                  §§push(0.6);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     break loop1;
                  }
               }
               §§push(§&d§.§;`§().scale.y);
               break;
            }
            §§push(§§pop() * §§pop());
            break;
         }
         var _loc1_:TextField = §§pop().§9Q§(§§pop(),§§pop(),null,null,Lib.get_current().stage.stageWidth * 1.1,Lib.get_current().stage.stageHeight * 1.1,null,null,"center");
         loop3:
         while(true)
         {
            if(_loc4_)
            {
               _loc1_.x = (Lib.get_current().stage.stageWidth - _loc1_.width) / 2;
               while(true)
               {
                  if(!_loc3_)
                  {
                     _loc1_.alpha = 0.7;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  _loc1_.mouseEnabled = false;
                  if(_loc4_)
                  {
                     _loc1_.htmlText = Assets.getText("text/wall/TellAFriend.txt");
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop3;
                  }
                  break;
               }
            }
            dialog.addChild(_loc1_);
            break;
         }
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc4_)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Interesting...");
                  §§push(-240);
                  §§push(280);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              addr016c:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop5;
                           }
                           addr0186:
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr0186);
                              }
                              else
                              {
                                 §§push(null);
                              }
                           }
                        }
                        §§push(§§pop() / 2.5);
                        break;
                     }
                     break loop5;
                  }
                  §§goto(addr016c);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
               if(!_loc3_)
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
                           §§push("But let me rephrase my question.");
                           §§push(0);
                           §§push(360);
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr01e4:
                                       §§push(null);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       break loop7;
                                    }
                                    addr01fe:
                                    §§push(null);
                                    if(!_loc4_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       if(§§pop() >= 0)
                                       {
                                          §§push(null);
                                          break loop7;
                                       }
                                       §§goto(addr01fe);
                                    }
                                 }
                                 §§push(§§pop());
                                 break loop8;
                              }
                              break;
                           }
                           §§goto(addr01e4);
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),0,null);
                  }
                  §§push(§§pop() / 2.5);
                  break loop8;
               }
            }
            §§push(§§pop());
            break loop6;
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
               box = §[C§.§4r§(tunnel,§"=§.§]R§(tunnel,"movableBox"));
               if(!_loc9_)
               {
                  box.§0Y§(50);
                  box.§7n§(50);
               }
               box.§^V§(600);
               if(_loc10_)
               {
                  box.reset();
                  if(!_loc10_)
                  {
                     break;
                  }
               }
            }
            tunnel.§`=§(box);
            break;
         }
         var _loc1_:Point3D = new Point3D(-0.139,0.046,0.989);
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc10_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(2.740166925631097)));
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc10_)
         {
            _loc2_.x = _loc1_.x * _loc3_;
            while(true)
            {
               if(!_loc9_)
               {
                  _loc2_.y = _loc1_.y * _loc3_;
                  if(_loc10_)
                  {
                     §§push(_loc2_);
                     §§push(_loc1_.z);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(_loc9_)
                     {
                        break;
                     }
                  }
               }
               _loc2_.w = Number(Math.cos(2.740166925631097));
               break;
            }
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            if(_loc10_)
            {
               while(true)
               {
                  §§push(_loc2_.y);
                  if(_loc10_)
                  {
                     §§push(_loc2_.y);
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(_loc10_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc9_)
                        {
                           §§push(_loc2_.w);
                           §§push(_loc2_.w);
                           break;
                        }
                        break loop3;
                     }
                     break;
                  }
                  break loop3;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:Number = §§pop();
         §§push(_loc4_);
         if(!_loc9_)
         {
            §§push(§§pop() - 1);
            if(_loc10_)
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
               §§push(_loc5_);
               §§push(0);
               if(_loc10_)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc5_);
                        if(!_loc10_)
                        {
                           break;
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
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(_loc4_);
                           break;
                        }
                        break loop5;
                     }
                     break loop6;
                  }
               }
               if(§§pop() != §§pop())
               {
                  _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc10_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                  }
                  break;
               }
               if(_loc10_)
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§goto(addr0291);
            }
            tunnel.§<!M§.reset();
            if(_loc10_)
            {
               tunnel.§<!M§.§6!&§(61,75,206);
               if(!_loc9_)
               {
                  tunnel.§<!M§.§3;§();
               }
               break;
            }
            §§goto(addr0291);
         }
         tunnel.display(0);
         student.§9E§(2,5);
         addr0291:
         student.spritesheet.§,=§(62);
         if(_loc10_)
         {
            student.spritesheet.§@S§(true);
            §-P§.§9E§(3,6.7);
         }
         §-P§.spritesheet.§,=§(78);
         var _loc6_:* = §&!S§.scale(0.5);
         var _loc7_:* = §&!S§.width(600);
         while(true)
         {
            if(_loc10_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I know I\'m glossing over some important-");
                  §§push(320);
                  §§push(-280);
                  if(_loc10_)
                  {
                     if(_loc6_ == null)
                     {
                        if(!_loc9_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else if(_loc6_ >= 0)
                     {
                        §§push(_loc6_ / 2.5);
                        break;
                     }
                  }
                  §§push(_loc6_);
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc7_ == null ? null : int(Math.round(_loc7_ / 2.5)),null,null);
               if(!_loc10_)
               {
                  break;
               }
            }
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  §§push(dialog);
                  §§push("Huh?");
                  §§push(40);
                  §§push(-160);
                  if(!_loc9_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc10_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc10_)
                              {
                                 break loop10;
                              }
                              §§goto(addr0395);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(_loc9_)
                              {
                                 break loop9;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop9;
                     }
                  }
                  §§push(null);
                  if(_loc10_)
                  {
                     break;
                  }
                  break loop9;
               }
               §§goto(addr0395);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr0395:
            break;
         }
         _loc6_ = §&!S§.width(1000);
         var _loc8_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc10_)
         {
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  §§push(dialog);
                  §§push("Never mind. Check out what I found!");
                  §§push(320);
                  §§push(-40);
                  if(!_loc9_)
                  {
                     §§push(null);
                     if(_loc9_)
                     {
                        break loop12;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc9_)
                           {
                              §§goto(addr0432);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc10_)
                           {
                              break loop13;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop12;
                     }
                  }
                  §§push(null);
                  if(_loc10_)
                  {
                     break;
                  }
                  break loop12;
               }
               §§goto(addr0432);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),0,_loc8_);
            addr0432:
         }
         _loc8_ = new § 6§(§-P§.§<!U§());
         if(!_loc9_)
         {
            loop15:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("You brought a box?\nHow\'s that work?");
                  §§push(-340);
                  §§push(40);
                  if(_loc10_)
                  {
                     §§push(null);
                     if(!_loc9_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc9_)
                           {
                              §§push(null);
                              if(!_loc9_)
                              {
                                 addr049d:
                                 §§push(§§pop());
                                 break;
                              }
                              break loop15;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc10_)
                           {
                              break loop15;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop15;
                           }
                        }
                        addr04b1:
                        §§push(null);
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop15;
                     }
                     §§goto(addr049d);
                  }
                  §§goto(addr04b1);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),1,_loc8_);
            }
            §§push(§§pop() / 2.5);
            break loop16;
         }
      }
   }
}

