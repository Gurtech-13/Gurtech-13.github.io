package §3!b§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §1^§.Transform;
   import §2X§.§>N§;
   import §6!Q§.§]u§;
   import §9!<§.§[0§;
   import §>T§.§-n§;
   import §>T§.§[C§;
   import §`_§.§^s§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxe.Timer;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   
   public class SomethingWeird extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:§^s§;
      
      public var §8!a§:TextFormat;
      
      public var cameraRotation:GenericActuator;
      
      public var cameraPosition:GenericActuator;
      
      public var box:§[C§;
      
      public var §=!Y§:§[0§;
      
      public function SomethingWeird()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  super(§>K§.§>-§,5,SomethingWeird.§3S§,{"startTilesLength":2000});
                  if(_loc2_)
                  {
                     break;
                  }
                  §8!a§ = new TextFormat();
                  if(!_loc1_)
                  {
                     break;
                  }
                  §8!a§.align = "center";
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
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
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame5);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame6);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame7);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame8);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame9);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame10);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame11);
               if(_loc1_)
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
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc2_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         name = "Something Weird";
         break loop1;
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §=!Y§ = null;
         box = null;
         if(cameraPosition != null)
         {
            Actuate.stop(cameraPosition,null,false,false);
         }
         tunnel = null;
         if(_loc1_)
         {
            student = null;
            sprites.length = 0;
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
            if(_loc4_)
            {
               if(param2)
               {
                  break;
               }
            }
            §§pop();
            §§push(§!!6§ == 4);
            if(_loc4_)
            {
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  addr0095:
                  §§push(Boolean(§§pop()));
                  break;
               }
               §§goto(addr0096);
            }
            break;
         }
         if(§§pop())
         {
            Main.instance.§,Z§(null);
         }
         else
         {
            §]u§.§@!A§().§5!@§ = false;
            §§push(_loc3_.§>c§());
            if(!_loc5_)
            {
               §§goto(addr0095);
            }
            addr0096:
            if(!§§pop())
            {
               if(!_loc5_)
               {
                  §+#§.§1!"§(_loc3_);
               }
            }
            §§goto(addr00a9);
         }
         addr00a9:
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               student = new §^s§(§9_§,§'O§.student,false,null,false,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            student.billboardMode = true;
            if(!_loc4_)
            {
               sprites.push(student);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(!_loc4_)
         {
            student.goesTo = new § !N§(_loc2_,5);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            student.§9E§(0.36,25.95,null,-45);
            if(!_loc2_)
            {
               student.spritesheet.§,=§(88);
               if(_loc1_)
               {
                  tunnel.§<!M§.translate(20,0,-3);
               }
            }
         }
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = §&!S§.scale(0.6);
         if(!_loc2_)
         {
            dialog.§ q§("Oops.",160,240,_loc1_,null,16777215);
            if(_loc3_)
            {
               tunnel.§<!M§.translate(20,0,-3);
            }
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               student.§9E§(0.36,26.1,null,-41);
               if(!_loc2_)
               {
                  student.spritesheet.§,=§(87);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            tunnel.§<!M§.translate(20,0,-3);
            break;
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               student.§9E§(0.34,26.1,null,-15);
               if(!_loc2_)
               {
                  student.spritesheet.§,=§(15);
                  if(_loc2_)
                  {
                     break;
                  }
                  student.transform.rotate(§4!R§.§1!A§(0,3.7699111843077517,0));
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            tunnel.§<!M§.translate(20,0,-3);
            break;
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               Actuate.stop(cameraPosition,null,true);
               Actuate.stop(cameraRotation,null,true);
               cameraPosition = null;
               cameraRotation = null;
               tunnel.§<!M§.§3;§();
               if(_loc2_)
               {
                  break;
               }
               §=!Y§.§^!^§();
            }
            §=!Y§ = null;
            if(_loc3_)
            {
               student.§9E§(0.36,26.1,null,10);
               student.spritesheet.§,=§(86);
            }
            student.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.scale(1);
         if(_loc3_)
         {
            dialog.§ q§("The next few steps can be summarized as\n\"mess around and see what happens.\"",0,-296,_loc1_,null,16777215).setTextFormat(§8!a§);
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = null as TunnelSection;
         var _loc5_:* = null as §[C§;
         while(true)
         {
            if(!_loc15_)
            {
               student.§9E§(0.7,26.1,null,42.5);
               if(!_loc14_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(false);
            break;
         }
         §§push(0);
         if(_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(int(§9_§.terrain.length));
         if(_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop2:
         while(true)
         {
            if(!_loc15_)
            {
               while(_loc1_ < _loc2_)
               {
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc14_)
                     {
                        _loc1_++;
                        if(_loc15_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc3_ = §§pop();
                  _loc4_ = §9_§;
                  loop4:
                  while(true)
                  {
                     if(_loc14_)
                     {
                        § L§.low = 948729;
                        if(!_loc15_)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc15_)
                              {
                                 if(_loc3_ >= 0)
                                 {
                                    if(_loc14_)
                                    {
                                       §§pop();
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       §§push(_loc3_ < int(_loc4_.terrain.length));
                                       if(_loc14_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              §§push(null);
                              break loop4;
                           }
                        }
                     }
                     §§push(_loc4_.terrain[_loc3_]);
                     break;
                  }
                  _loc5_ = §§pop();
                  if(_loc15_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(false);
                     if(!_loc15_)
                     {
                        if(_loc5_ == null)
                        {
                           break;
                        }
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                     §§pop();
                     if(_loc14_)
                     {
                        §§push(_loc5_.§4!5§ == §-n§.§'!%§);
                        if(!_loc15_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        break;
                     }
                     break loop2;
                  }
                  if(§§pop())
                  {
                     if(_loc14_)
                     {
                        box = _loc5_;
                        if(!_loc15_)
                        {
                           break;
                        }
                     }
                     break loop2;
                  }
               }
            }
            §=!Y§ = new §[0§(tunnel,box,student);
            if(_loc14_)
            {
               §§push(dialog);
               §§push(§=!Y§.update);
               if(!_loc15_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
            }
            break;
         }
         var _loc6_:Number = 3;
         if(_loc14_)
         {
            cameraPosition = tunnel.§<!M§.§7#§(_loc6_,tunnel.§<!M§.position.x,tunnel.§<!M§.position.y,2275);
         }
         var _loc7_:Transform = tunnel.§<!M§;
         var _loc8_:Point3D = new Point3D(-0.604,-0.547,-0.579);
         var _loc9_:§"B§ = null;
         while(true)
         {
            if(_loc14_)
            {
               if(_loc9_ != null)
               {
                  break;
               }
            }
            _loc9_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.0908307824964558)));
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         while(true)
         {
            if(!_loc15_)
            {
               _loc9_.x = _loc8_.x * _loc10_;
               if(!_loc14_)
               {
                  break;
               }
            }
            _loc9_.y = _loc8_.y * _loc10_;
            if(!_loc15_)
            {
               §§push(_loc9_);
               §§push(_loc8_.z);
               if(_loc14_)
               {
                  §§push(§§pop() * _loc10_);
               }
               §§pop().z = §§pop();
               if(!_loc14_)
               {
                  break;
               }
            }
            _loc9_.w = Number(Math.cos(1.0908307824964558));
            break;
         }
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(_loc9_.x * _loc9_.x);
                  if(!_loc15_)
                  {
                     §§push(_loc9_.y);
                     §§push(_loc9_.y);
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc15_)
                     {
                        break loop10;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc14_)
                     {
                        break loop9;
                     }
                  }
                  §§push(Number(§§pop()));
                  §§push(_loc9_.z);
                  if(!_loc15_)
                  {
                     break loop10;
                  }
                  §§goto(addr02c7);
               }
               §§goto(addr02cb);
            }
            §§push(_loc9_.z);
            if(_loc15_)
            {
               break loop16;
            }
            §§push(§§pop() * §§pop());
            if(!_loc15_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc15_)
               {
                  break;
               }
               §§goto(addr02d5);
            }
            §§goto(addr02c7);
         }
         addr02d5:
         §§push(Number(§§pop()));
         §§push(_loc9_.w);
         if(!_loc15_)
         {
            addr02c7:
            addr02cb:
            §§push(§§pop() * _loc9_.w);
         }
         §§push(§§pop() + §§pop());
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         while(true)
         {
            §§push(_loc11_);
            if(!_loc15_)
            {
               §§push(§§pop() - 1);
               if(_loc15_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc12_:* = §§pop();
         loop12:
         while(true)
         {
            while(true)
            {
               §§push(_loc12_);
               if(_loc14_)
               {
                  §§push(0);
                  if(_loc15_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     while(true)
                     {
                        addr0342:
                        if(_loc14_)
                        {
                           §§push(_loc12_);
                           break loop12;
                        }
                        _loc9_.z = 0;
                        _loc9_.w = 1;
                        §§goto(addr03ae);
                     }
                     §§goto(addr03e9);
                  }
                  else
                  {
                     §§push(_loc12_);
                  }
               }
               §§push(-§§pop());
               break loop12;
            }
            if(§§pop() == §§pop())
            {
               _loc9_.x = 0;
               _loc9_.y = 0;
               if(_loc14_)
               {
                  §§goto(addr0342);
               }
            }
            else
            {
               §§goto(addr035e);
               §§push(1 / Number(Math.sqrt(_loc11_)));
            }
            §§goto(addr03e9);
         }
         §§push(§§pop() < 1e-10);
         if(!_loc15_)
         {
            §§push(!§§pop());
         }
         while(true)
         {
            if(§§pop())
            {
               addr035e:
               §§push(_loc11_);
               if(_loc14_)
               {
                  §§push(0);
                  break loop13;
               }
               _loc11_ = §§pop();
               §§push(_loc9_);
               §§push(_loc9_.x);
               if(!_loc15_)
               {
                  §§push(§§pop() * _loc11_);
               }
               §§pop().x = §§pop();
               §§push(_loc9_);
               §§push(_loc9_.y);
               if(_loc14_)
               {
                  §§push(§§pop() * _loc11_);
               }
               §§pop().y = §§pop();
               §§push(_loc9_);
               §§push(_loc9_.z);
               if(!_loc15_)
               {
                  §§push(§§pop() * _loc11_);
               }
               §§pop().z = §§pop();
               §§push(_loc9_);
               §§push(_loc9_.w);
               if(_loc14_)
               {
                  §§push(§§pop() * _loc11_);
               }
               §§pop().w = §§pop();
               if(_loc15_)
               {
                  break;
               }
            }
            addr03ae:
            cameraRotation = _loc7_.§&!?§(_loc6_,_loc9_);
            §§push(Timer);
            §§push(§=!Y§.§#!X§);
            if(!_loc15_)
            {
               §§push(§§pop());
            }
            §§pop().delay(§§pop(),500);
            break;
         }
         addr03e9:
         var _loc13_:* = §&!S§.scale(1);
         if(_loc14_)
         {
            dialog.§ q§("The next few steps can be summarized as\n\"mess around and see what happens.\"",0,-296,_loc13_,null,16777215).setTextFormat(§8!a§);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            student.§9E§(0.5,25.7,null,42.5);
            if(_loc2_)
            {
               student.spritesheet.§,=§(85);
            }
         }
         var _loc1_:* = §&!S§.scale(1);
         if(_loc2_)
         {
            dialog.§ q§("The first step is to notice something weird.",0,-280,_loc1_,null,16777215);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            student.§9E§(0,25.2,null,43);
            while(true)
            {
               if(_loc2_)
               {
                  student.spritesheet.§,=§(24);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               student.spritesheet.§@S§(true);
               break;
            }
         }
         var _loc1_:* = §&!S§.scale(1);
         if(!_loc3_)
         {
            dialog.§ q§("The first step is to notice something weird.",0,-280,_loc1_,null,16777215);
         }
      }
      
      public function frame14() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            student.§9E§(0.39,27,null,-80);
            while(true)
            {
               if(!_loc1_)
               {
                  student.spritesheet.§,=§(7);
                  if(_loc2_)
                  {
                     student.transform.rotate(§4!R§.§1!A§(0,0.3141592653589793,0));
                     if(_loc1_)
                     {
                        break;
                     }
                  }
               }
               box.transform.translate(0,0,30);
               break;
            }
         }
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               student.§9E§(0.41,26.6,null,-60);
               if(_loc1_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(6);
            if(_loc2_)
            {
               student.transform.rotate(§4!R§.§1!A§(0,-0.6283185307179586,0));
               if(!_loc2_)
               {
                  break;
               }
            }
            box.transform.translate(0,0,40);
            break;
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               student.§9E§(0.43,25.9,null,-17);
               if(!_loc2_)
               {
                  student.spritesheet.§,=§(0);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               student.transform.rotate(§4!R§.§1!A§(0,-1.5707963267948966,0));
               if(!_loc1_)
               {
                  break;
               }
            }
            box.transform.translate(0,0,50);
            break;
         }
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               tunnel.§<!M§.translate(20,0,-3);
               if(_loc2_)
               {
                  break;
               }
            }
            student.§9E§(0.46,25.69,null,-17);
            if(_loc1_)
            {
               break;
            }
            §§goto(addr005b);
         }
         student.spritesheet.§,=§(89);
         addr005b:
      }
      
      public function frame10() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            student.§9E§(0.36,25.73,null,-28);
            if(!_loc2_)
            {
               student.spritesheet.§,=§(90);
            }
         }
         var _loc1_:* = §&!S§.scale(0.6);
         while(true)
         {
            if(!_loc2_)
            {
               dialog.§ q§("Hmm...",120,320,_loc1_,null,16777215);
               if(!_loc3_)
               {
                  break;
               }
            }
            tunnel.§<!M§.translate(20,0,-3);
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               student.§9E§(11.6,28,null,95);
               if(_loc3_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(14);
            break;
         }
         var _loc1_:* = §&!S§.scale(1);
         if(_loc2_)
         {
            dialog.§ q§("The first step is to notice something weird.",0,-280,_loc1_,null,16777215);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = new Point3D(-0.681,-0.664,-0.308);
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.2304571226560022)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               _loc2_.x = _loc1_.x * _loc3_;
               while(true)
               {
                  if(_loc7_)
                  {
                     _loc2_.y = _loc1_.y * _loc3_;
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(_loc2_);
                  §§push(_loc1_.z);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            _loc2_.w = Number(Math.cos(1.2304571226560022));
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
                  §§push(_loc2_.x);
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc7_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           §§push(_loc2_.z);
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break loop4;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(_loc2_.w);
                        if(!_loc8_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     §§push(_loc2_.w);
                     break loop4;
                  }
                  §§goto(addr0101);
               }
               §§goto(addr0109);
            }
            §§push(§§pop() * §§pop());
            break;
         }
         addr0101:
         §§push(§§pop() + §§pop());
         if(!_loc8_)
         {
            addr0109:
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(_loc7_)
         {
            §§push(§§pop() - 1);
            if(_loc7_)
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
               if(_loc7_)
               {
                  §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                  if(!_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
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
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  if(!_loc8_)
                  {
                     _loc2_.z = 0;
                     break loop5;
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
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().z = §§pop();
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(_loc7_)
                     {
                        break loop6;
                     }
                     addr0209:
                     tunnel.§<!M§.§3;§();
                     if(_loc7_)
                     {
                        tunnel.display(0);
                     }
                     student.§9E§(11.5,29,null,65);
                     break;
                  }
                  student.transform.translate(0,-15,0);
               }
               student.spritesheet.§,=§(84);
               student.spritesheet.§@S§(true);
               var _loc6_:* = §&!S§.scale(1);
               if(!_loc8_)
               {
                  dialog.§ q§("The first step is to notice something weird.",0,-280,_loc6_,null,16777215);
               }
               return;
            }
            tunnel.§<!M§.reset();
            tunnel.§<!M§.§6!&§(-40,-300,2550);
            §§goto(addr0209);
         }
         _loc2_.w = 1;
         break loop6;
      }
   }
}

