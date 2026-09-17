package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class MyTurn extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var offset:Point3D;
      
      public static var §@!Q§:Quaternion;
      
      public static var §,b§:Quaternion;
      
      public var §-P§:StageActor;
      
      public var §+!V§:Point3D;
      
      public var §#!P§:StageActor;
      
      public function MyTurn()
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:* = false;
         var _loc6_:* = false;
         var _loc7_:* = null as §]k§;
         if(_loc9_)
         {
            super(§>K§.§>-§,-1,MyTurn.§3S§,{"endTiles":false});
         }
         var _loc2_:§ !>§ = §>K§.§>-§;
         var _loc3_:§-Q§ = _loc2_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.levelCount);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc9_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc8_)
                        {
                           §§push(_loc5_);
                           if(!_loc9_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(!_loc9_)
                              {
                                 break loop2;
                              }
                              §§push(_loc4_);
                              if(_loc9_)
                              {
                              }
                           }
                           else
                           {
                              §§push(_loc5_);
                           }
                        }
                        §§push(_loc2_.levelCount);
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§?^§ != null)
                           {
                              if(!_loc8_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                           §§push(false);
                           if(_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 addr014d:
                                 _loc1_ = §§pop();
                                 break;
                              }
                           }
                           _loc6_ = §§pop();
                           if(_loc8_)
                           {
                              break;
                           }
                           §§goto(addr0123);
                        }
                        else
                        {
                           §§push(false);
                           if(_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr014d);
                     }
                  }
                  _loc7_ = §?^§;
                  §§push(Boolean(Save.§@!A§().get(_loc7_.§=-§,Boolean(_loc7_.§ -§))));
                  if(_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  _loc6_ = §§pop();
                  addr0123:
                  §§push(_loc6_);
                  if(_loc9_)
                  {
                     §§push(!§§pop());
                     if(!_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                  }
                  _loc1_ = §§pop();
                  if(_loc8_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc1_);
               break;
            }
            if(§§pop())
            {
               if(!_loc8_)
               {
                  §,!N§(true);
               }
            }
            §§push(§§findproperty(frames));
            §§push(frame0);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§push(frame1);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            §§push(frame2);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§push(frame3);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§push(frame4);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§push(frame5);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(_loc9_)
            {
               name = "My Turn";
            }
            break;
         }
      }
      
      public static function §0k§(param1:StageActor, param2:TunnelSection, param3:Number, param4:Number, param5:Object = undefined, param6:Object = undefined, param7:Number = 0) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         while(true)
         {
            if(param5 == null)
            {
               if(!_loc13_)
               {
                  break;
               }
               param5 = false;
            }
            param1.placeAt(int(Math.round(param3)),int(Math.floor(param4)),param5);
            break;
         }
         §§push(param2.tileWidth / 2);
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc13_)
            {
               §§push(MyTurn.offset);
               §§push(int(Math.round(param3)) - param3);
               if(!_loc14_)
               {
                  §§push(§§pop() * param2.tileWidth);
               }
               §§pop().x = §§pop();
               if(!_loc13_)
               {
                  break;
               }
            }
            §§push(MyTurn.offset);
            §§push(_loc8_);
            if(!_loc14_)
            {
               §§push(-§§pop());
               if(!_loc14_)
               {
                  §§push(§§pop() - param7);
               }
            }
            §§pop().y = §§pop();
            if(_loc13_)
            {
               break;
            }
            addr00c0:
            var _loc9_:Quaternion = param1.transform.getRotation();
            while(true)
            {
               if(_loc13_)
               {
                  if(param6 == null)
                  {
                     break;
                  }
                  if(_loc13_)
                  {
                     while(true)
                     {
                        §§push(QuaternionUtils);
                        §§push(_loc9_);
                        if(_loc13_)
                        {
                           if(!param6)
                           {
                              §§push(MyTurn.§@!Q§);
                              break;
                           }
                        }
                        §§push(MyTurn.§,b§);
                        break;
                     }
                     §§pop().§9!L§(§§pop(),§§pop(),_loc9_);
                     if(_loc14_)
                     {
                        break;
                     }
                  }
               }
               param1.transform.setRotation(_loc9_);
               if(!_loc14_)
               {
                  break;
               }
               var _loc10_:Point3D = param1.transform.getPosition();
               var _loc11_:Point3D = MyTurn.offset;
               var _loc12_:Point3D = _loc10_;
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(_loc13_)
                     {
                        if(_loc12_ == null)
                        {
                           if(_loc14_)
                           {
                              break;
                           }
                           _loc12_ = new Point3D(0,0,0);
                        }
                        _loc12_.x = _loc10_.x + _loc11_.x;
                        if(_loc14_)
                        {
                           break loop4;
                        }
                     }
                     _loc12_.y = _loc10_.y + _loc11_.y;
                     if(_loc13_)
                     {
                        while(true)
                        {
                           §§push(_loc12_);
                           §§push(_loc10_.z);
                           if(_loc13_)
                           {
                              §§push(§§pop() + _loc11_.z);
                              if(!_loc13_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().z = §§pop();
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     break loop4;
                  }
                  param1.transform.§"w§(_loc10_);
                  break;
               }
               return;
            }
            QuaternionUtils.rotateVector(_loc9_,MyTurn.offset,MyTurn.offset);
            continue loop4;
         }
         loop7:
         while(true)
         {
            while(true)
            {
               §§push(MyTurn.offset);
               §§push(param4);
               if(!_loc14_)
               {
                  §§push(int(Math.floor(param4)));
                  if(!_loc13_)
                  {
                     break;
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc13_)
                  {
                     break loop7;
                  }
               }
               §§push(param2.tileWidth);
               break;
            }
            §§push(§§pop() * §§pop());
            break;
         }
         §§pop().z = §§pop();
         §§goto(addr00c0);
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  tunnel = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §#!P§ = null;
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §-P§ = null;
               if(_loc2_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         sprites.length = 0;
         break loop1;
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
            if(!_loc6_)
            {
               sprites.push(§#!P§);
            }
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc6_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,4);
               if(!_loc5_)
               {
                  break;
               }
            }
            §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
            if(_loc5_)
            {
               break;
            }
            §§goto(addr00c0);
         }
         sprites.push(§-P§);
         addr00c0:
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc6_)
         {
            §-P§.goesTo = new § !N§(_loc4_,-1);
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         tunnel.camera.§6!&§(§+!V§.x,§+!V§.y,10000 + §"J§ * 300);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  tunnel.display(0);
                  MyTurn.§0k§(§-P§,section,3.8,39,false,false,15);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §-P§.spritesheet.§,=§(64);
                  if(_loc3_)
                  {
                     break;
                  }
                  §-P§.spritesheet.§@S§(true);
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §#!P§.placeAt(4,38.6,null,205);
               if(!_loc3_)
               {
                  break;
               }
               break loop0;
            }
            §#!P§.spritesheet.§,=§(14);
            break;
         }
         §#!P§.spritesheet.§@S§(false);
         §#!P§.transform.setRotation(§-P§.transform.getRotation());
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc2_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("How come everyone already\nwants to go home?");
                  §§push(-120);
                  §§push(-180);
                  if(_loc2_)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc2_)
                                 {
                                    addr0114:
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop3;
                                    }
                                    break loop2;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop4;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop2;
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0114);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               if(_loc2_)
               {
                  § !C§("already");
               }
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         tunnel.camera.§6!&§(§+!V§.x,§+!V§.y,10000 + §"J§ * 300);
         if(!_loc4_)
         {
            tunnel.display(0);
            §#!P§.placeAt(3.9,38,null,70);
            while(true)
            {
               if(!_loc4_)
               {
                  §#!P§.spritesheet.§,=§(6);
                  §#!P§.spritesheet.§@S§(false);
                  §-P§.placeAt(4.3,38.2,null,54);
                  §-P§.spritesheet.§,=§(48);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §-P§.spritesheet.§@S§(false);
               break;
            }
         }
         var _loc1_:* = §&!S§.width(400);
         if(_loc3_)
         {
            dialog.§";§("Could I please get a word in edgewise?",-80,-280,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Because I have a question.",-40,-40,null,null,-1,_loc2_,null);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         tunnel.camera.§6!&§(§+!V§.x,§+!V§.y,10000 + §"J§ * 300);
         tunnel.display(0);
         MyTurn.§0k§(§#!P§,section,3.85,36.5,null,null,15);
         if(_loc2_)
         {
            §#!P§.spritesheet.§,=§(0);
            MyTurn.§0k§(§-P§,section,4.07,37,null,null,-15);
            §-P§.spritesheet.§,=§(22);
         }
         while(true)
         {
            §§push(dialog);
            §§push("Well, I say you\'ve had your chance!");
            §§push(120);
            §§push(-280);
            if(!_loc3_)
            {
               §§push(-1);
               if(!_loc3_)
               {
                  if(§§pop() == null)
                  {
                     if(_loc2_)
                     {
                        addr00bb:
                        §§push(null);
                        break;
                     }
                     addr00d0:
                     §§push(-1);
                     if(!_loc2_)
                     {
                        addr00df:
                        §§push(§§pop() / 2.5);
                        break;
                     }
                  }
                  else
                  {
                     §§push(-1);
                     if(!_loc3_)
                     {
                        if(§§pop() < 0)
                        {
                           §§goto(addr00d0);
                        }
                        else
                        {
                           §§push(-1);
                        }
                        §§goto(addr00df);
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr00df);
            }
            §§goto(addr00bb);
         }
         §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),900 == null ? null : int(Math.round(900 / 2.5)),null,null);
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Give me the map.");
               §§push(200);
               §§push(-120);
               if(_loc2_)
               {
                  §§push(-1);
                  if(!_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           addr0153:
                           §§push(null);
                           break;
                        }
                        addr0167:
                        §§push(-1);
                        if(!_loc3_)
                        {
                           addr016e:
                           §§push(§§pop());
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc2_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr0167);
                           }
                           else
                           {
                              §§push(-1);
                           }
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr016e);
               }
               §§goto(addr0153);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc1_);
         }
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(_loc2_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("...");
               §§push(-200);
               §§push(200);
               if(_loc2_)
               {
                  §§push(-1);
                  if(_loc2_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           addr01d7:
                           §§push(null);
                           break;
                        }
                        addr01eb:
                        §§push(-1);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc2_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr01eb);
                           }
                           else
                           {
                              §§push(-1);
                           }
                        }
                     }
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr01d7);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc1_);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     tunnel.camera.§6!&§(§+!V§.x,§+!V§.y,10000 + §"J§ * 300);
                     if(!_loc2_)
                     {
                        break;
                     }
                     tunnel.display(0);
                     MyTurn.§0k§(§#!P§,section,3.85,35.5);
                     if(!_loc3_)
                     {
                        §#!P§.spritesheet.§,=§(34);
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        MyTurn.§0k§(§-P§,section,4.05,36,null,null,10);
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §-P§.spritesheet.§,=§(0);
                  break;
               }
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("We\'ve been out here for how long now?");
                     §§push(-120);
                     §§push(-360);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr00ca:
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop9;
                              }
                              addr00e4:
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop9;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break loop9;
                                 }
                                 §§goto(addr00e4);
                              }
                           }
                           §§push(§§pop());
                           break;
                        }
                        break loop9;
                     }
                     §§goto(addr00ca);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
                  break loop0;
               }
               §§push(§§pop() / 2.5);
               break loop10;
            }
            var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(_loc2_)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("You\'ve had more than enough time to find a way back home.");
                     §§push(120);
                     §§push(-60);
                     if(!_loc3_)
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           break loop7;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              break;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc2_)
                           {
                              break loop7;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop7;
                           }
                        }
                     }
                     §§push(-1);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop7;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),2,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop8;
            }
            return;
         }
         while(true)
         {
            §§push(dialog);
            §§push("Months?");
            §§push(-200);
            §§push(-240);
            if(_loc2_)
            {
               §§push(-1);
               if(!_loc3_)
               {
                  if(§§pop() == null)
                  {
                     if(!_loc3_)
                     {
                        addr013d:
                        §§push(null);
                        break;
                     }
                     addr015e:
                     §§push(-1);
                     if(_loc3_)
                     {
                        addr016d:
                        §§push(§§pop() / 2.5);
                        break;
                     }
                  }
                  else
                  {
                     §§push(-1);
                     if(!_loc3_)
                     {
                        if(§§pop() < 0)
                        {
                           §§goto(addr015e);
                        }
                        else
                        {
                           §§push(-1);
                        }
                        §§goto(addr016d);
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr016d);
            }
            §§goto(addr013d);
         }
         §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,null);
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(dialog);
               §§push("A year?");
               §§push(20);
               §§push(-200);
               if(_loc2_)
               {
                  while(true)
                  {
                     §§push(-1);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              §§push(null);
                              break loop4;
                           }
                           break;
                        }
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break loop3;
                        }
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     §§push(-1);
                     break loop3;
                  }
               }
               §§push(-1);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  break;
               }
               break loop3;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,null);
            break loop1;
         }
         §§push(§§pop() / 2.5);
         break loop4;
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         tunnel.camera.§6!&§(§+!V§.x,§+!V§.y,10000 + §"J§ * 300);
         while(true)
         {
            if(_loc6_)
            {
               tunnel.display(0);
               if(!_loc5_)
               {
                  MyTurn.§0k§(§#!P§,section,3.85,34.5);
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            §#!P§.spritesheet.§,=§(41);
            MyTurn.§0k§(§-P§,section,4.05,35);
            break;
         }
         §-P§.spritesheet.§,=§(32);
         if(_loc6_)
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
                     §§push("I\'m here for your map.");
                     §§push(200);
                     §§push(-360);
                     if(!_loc5_)
                     {
                        §§push(null);
                        if(!_loc5_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc5_)
                              {
                                 addr00c9:
                                 §§push(null);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc5_)
                              {
                                 break loop1;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop1;
                              }
                           }
                           §§push(null);
                           if(!_loc5_)
                           {
                              §§push(§§pop());
                              break loop2;
                           }
                           break loop1;
                        }
                        break;
                     }
                     §§goto(addr00c9);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc5_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Excuse me?");
                  §§push(18);
                  §§push(-96);
                  if(_loc6_)
                  {
                     §§push(null);
                     if(_loc6_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc5_)
                           {
                              addr015c:
                              §§push(null);
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop4;
                           }
                           addr0176:
                           §§push(null);
                           if(_loc5_)
                           {
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc6_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop4;
                              }
                              §§goto(addr0176);
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     break loop4;
                  }
                  §§goto(addr015c);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
         var _loc2_:§'§ = dialog;
         if(!_loc5_)
         {
            while(true)
            {
               if(int(_loc2_.§+j§.length) > 0)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(_loc2_.§+j§);
                  §§push(int(_loc2_.§+j§.length));
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§[!>§ = 13421772;
               break;
            }
         }
         var _loc3_:§'§ = dialog;
         loop7:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  if(int(_loc3_.§+j§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop7;
                  }
               }
               §§push(_loc3_.§+j§);
               §§push(int(_loc3_.§+j§.length));
               if(_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().layout.apply();
            break;
         }
         _loc3_ = dialog;
         if(_loc6_)
         {
            while(true)
            {
               if(int(_loc3_.§@#§.length) > 0)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(_loc3_.§@#§);
                  §§push(int(_loc3_.§@#§.length));
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§[!>§ = 14540253;
               break;
            }
         }
         var _loc4_:§'§ = dialog;
         loop10:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(int(_loc4_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop10;
                  }
               }
               §§push(_loc4_.§@#§);
               §§push(int(_loc4_.§@#§.length));
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§6;§();
            break;
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc6_)
         {
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("It\'s not like you\'re using it.");
                     §§push(140);
                     §§push(-80);
                     if(_loc6_)
                     {
                        §§push(-1);
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc5_)
                           {
                              §§push(null);
                              break loop13;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc6_)
                           {
                              break loop12;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop12;
                           }
                        }
                     }
                     §§push(-1);
                     if(!_loc5_)
                     {
                        break;
                     }
                     break loop12;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),720 == null ? null : int(Math.round(720 / 2.5)),0,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop13;
         }
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(!_loc5_)
         {
            loop15:
            while(true)
            {
               loop16:
               while(true)
               {
                  loop17:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Excuse me?!");
                        §§push(-60);
                        §§push(280);
                        if(!_loc5_)
                        {
                           §§push(null);
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(§§pop() != null)
                           {
                              §§push(null);
                              if(_loc6_)
                              {
                                 break loop16;
                              }
                              break;
                           }
                           if(!_loc6_)
                           {
                              break loop15;
                           }
                        }
                        §§push(null);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                           break loop17;
                        }
                        break loop16;
                     }
                     §§goto(addr03d4);
                  }
                  §§goto(addr03d9);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr03d4);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc5_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr03d9:
            if(!_loc5_)
            {
               § !C§("Excuse");
            }
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  QuaternionUtils.setFromEuler(0,-0.37399912542735625,0,tunnel.camera.§,t§);
                  if(!_loc4_)
                  {
                     tunnel.camera.reset();
                     if(_loc4_)
                     {
                        break;
                     }
                     §+!V§ = new Point3D(0,730,0);
                     QuaternionUtils.rotateVector(tunnel.camera.§,t§,§+!V§,§+!V§);
                     tunnel.camera.§6!&§(§+!V§.x,§+!V§.y,10000 + §"J§ * 300);
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  tunnel.display(0);
               }
               MyTurn.§0k§(§#!P§,section,3.85,33.6);
               §#!P§.spritesheet.§,=§(46);
               if(!_loc4_)
               {
                  MyTurn.§0k§(§-P§,section,4.05,34);
                  §-P§.spritesheet.§,=§(29);
                  break;
               }
               break loop0;
            }
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("There you are!");
                        §§push(40);
                        §§push(-360);
                        if(_loc5_)
                        {
                           §§push(null);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop() != null)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop9;
                              }
                              break;
                           }
                           if(!_loc5_)
                           {
                              break loop8;
                           }
                        }
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break loop10;
                        }
                        break loop9;
                     }
                     §§goto(addr0149);
                  }
                  §§goto(addr014e);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0149);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc5_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr014e:
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'ve been looking all over for you.");
                  §§push(160);
                  §§push(-200);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        break loop2;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
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
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop2;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),0,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
         var _loc2_:* = §&!S§.scale(0.8);
         var _loc3_:* = §&!S§.width(500);
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(_loc5_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("No, I won\'t go out with you.");
               §§push(-40);
               §§push(12);
               if(_loc5_)
               {
                  if(_loc2_ == null)
                  {
                     if(!_loc4_)
                     {
                        addr0259:
                        §§push(null);
                        break;
                     }
                  }
                  else if(_loc2_ >= 0)
                  {
                     §§push(_loc2_ / 2.5);
                     break;
                  }
                  §§push(_loc2_);
                  break;
               }
               §§goto(addr0259);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc3_ == null ? null : int(Math.round(_loc3_ / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc5_)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Very funny.");
                  §§push(320);
                  §§push(360);
                  if(_loc5_)
                  {
                     §§push(null);
                     if(_loc5_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc5_)
                           {
                              addr02cd:
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop6;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc5_)
                           {
                              break loop6;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           break loop6;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr02cd);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
      }
   }
}

