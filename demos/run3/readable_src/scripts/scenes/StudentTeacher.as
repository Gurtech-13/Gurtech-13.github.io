package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §-d§.§!!-§;
   import §-d§.§4?§;
   import §[^§.§!A§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.§!!W§;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   
   public class StudentTeacher extends §+Z§
   {
      
      public static var §2#§:* = {"fields":{"child":{"fade":null}}};
      
      public var §`]§:int;
      
      public var §'2§:§7d§;
      
      public var student:StageActor;
      
      public var §<S§:Point3D;
      
      public var §,!>§:GenericActuator;
      
      public var §4_§:§4S§;
      
      public var §;@§:§7d§;
      
      public var gentleman:StageActor;
      
      public var child:StageActor;
      
      public var §4A§:GenericActuator;
      
      public var battery:§!A§;
      
      public function StudentTeacher()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §`]§ = 0;
               if(_loc2_)
               {
                  break;
               }
               super(§>K§.§>y§,1,null,{"startTilesLength":2200});
               if(_loc2_)
               {
                  break;
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
               if(_loc1_)
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
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame13);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame14);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame15);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame16);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame17);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame18);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame19);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            name = "Student Teacher";
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               if(tunnel == null)
               {
                  break;
               }
               if(!_loc2_)
               {
                  tunnel.update(param1);
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            tunnel.display(param1);
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         battery = null;
         §4A§ = null;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     §,!>§ = null;
                     if(_loc1_)
                     {
                        break;
                     }
                     §4_§ = null;
                     if(_loc1_)
                     {
                        break loop1;
                     }
                     §<S§ = null;
                     if(_loc1_)
                     {
                        break loop1;
                     }
                     §;@§ = null;
                     §'2§ = null;
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  tunnel = null;
                  if(!_loc1_)
                  {
                     break;
                  }
                  break loop0;
               }
               gentleman = null;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr00b9);
            }
            student = null;
            if(!_loc1_)
            {
               child = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            addr00b9:
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc7_)
            {
               gentleman = new StageActor(section,CharacterRegistry.gentleman,false,null,false,null);
               if(_loc8_)
               {
                  break;
               }
            }
            sprites.push(gentleman);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc8_)
            {
               gentleman.goesTo = new § !N§(_loc2_,0);
               if(_loc8_)
               {
                  break;
               }
            }
            student = new StageActor(section,CharacterRegistry.student,false,null,false,null);
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr00bd);
         }
         sprites.push(student);
         addr00bd:
         §§push(§!^§.pathName);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         while(true)
         {
            if(_loc7_)
            {
               student.goesTo = new § !N§(_loc4_,1);
               if(!_loc7_)
               {
                  break;
               }
               child = new StageActor(section,CharacterRegistry.child,true,null,false,null);
               if(_loc8_)
               {
                  break;
               }
            }
            sprites.push(child);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc5_);
         if(!_loc8_)
         {
            child.goesTo = new § !N§(_loc6_,2);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Point3D = student.transform.getPosition();
         battery = new §!A§(tunnel);
         if(_loc3_)
         {
            battery.transform.§"w§(_loc1_);
            if(_loc3_)
            {
               battery.transform.translate(-5,-20,0);
               battery.§1!X§(0,0,0);
            }
            tunnel.§4M§(battery);
            battery.§'K§(false);
         }
         §§push(§§findproperty(§`]§));
         §§push(§`]§);
         if(_loc3_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().§`]§ = §§pop();
         if(§`]§ > 30)
         {
            battery.§%!V§ = 0;
         }
         §§push(dialog);
         §§push(update);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         §§pop().§+!P§ = §§pop();
         while(true)
         {
            §§push(§§findproperty(§4A§));
            §§push(battery.transform);
            §§push(2);
            §§push(_loc1_.x - 40);
            §§push(_loc1_.y - 80);
            §§push(_loc1_.z);
            if(!_loc4_)
            {
               §§push(§§pop() + 90);
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().§4A§ = §§pop().§7#§(§§pop(),§§pop(),§§pop(),§§pop());
         if(_loc3_)
         {
            §4A§.ease(§!!W§.get_easeOut());
            §§push(§4A§);
            §§push(§^6§);
            if(!_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().onComplete(§§pop());
            §'2§ = new §7d§(student,new §!!-§(78,2,true),3);
         }
         var _loc2_:§7d§ = §'2§;
         if(!_loc4_)
         {
            _loc2_.reset();
            if(!_loc4_)
            {
               _loc2_.sprite.world.registerAnimation(_loc2_);
            }
         }
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            student.spritesheet.§,=§(77);
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Got it!");
                     §§push(0);
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    addr0075:
                                    §§push(§§pop());
                                    break loop1;
                                 }
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop0;
                              }
                           }
                           addr0088:
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           break loop0;
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr0088);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               gentleman.spritesheet.§,=§(28);
               if(!_loc3_)
               {
                  student.spritesheet.§,=§(75);
                  if(_loc3_)
                  {
                     break;
                  }
                  child.placeAt(9,22.5,null,-17);
                  if(_loc2_)
                  {
                     child.spritesheet.§,=§(111);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
            }
            child.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
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
                     §§push("How exactly will-");
                     §§push(-232);
                     §§push(-40);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 break loop2;
                              }
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop1;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(_loc2_)
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
                     §§push("Hold on a second, I need to grab a battery.");
                     §§push(80);
                     §§push(360);
                     if(_loc2_)
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              §§push(null);
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop4;
                           }
                        }
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1400 == null ? null : int(Math.round(1400 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         gentleman.spritesheet.§,=§(70);
         student.placeAt(2.1,7.9);
         student.spritesheet.§,=§(74);
         child.placeAt(9,22,null,2);
         child.spritesheet.§,=§(120);
         child.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         while(true)
         {
            if(!_loc2_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Because as I said, the electromagnet may be facing in the wrong direction.");
                  §§push(-220);
                  §§push(-240);
                  if(!_loc2_)
                  {
                     §§push(-1);
                     if(!_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              addr0099:
                              §§push(null);
                              break;
                           }
                           addr00ae:
                           §§push(-1);
                           if(_loc3_)
                           {
                              addr00b5:
                              §§push(§§pop());
                              break;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(_loc3_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr00ae);
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
                     §§goto(addr00b5);
                  }
                  §§goto(addr0099);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1300 == null ? null : int(Math.round(1300 / 2.5)),null,_loc1_);
               if(_loc2_)
               {
                  break;
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Well ok, if you say so.");
                        §§push(360);
                        §§push(-160);
                        if(_loc3_)
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop3;
                              }
                              §§goto(addr0134);
                           }
                        }
                        §§push(null);
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0139);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0134);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr0139:
            break;
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(!_loc2_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Fortunately, it\'s easy to test.");
               §§push(280);
               §§push(-40);
               if(_loc3_)
               {
                  §§push(-1);
                  if(_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc2_)
                        {
                           addr01a5:
                           §§push(null);
                           break;
                        }
                        addr01b9:
                        §§push(-1);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr01b9);
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
               §§goto(addr01a5);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,_loc1_);
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc3_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  §§push(dialog);
                  §§push("How so?");
                  §§push(-120);
                  §§push(280);
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    break loop8;
                                 }
                                 break loop7;
                              }
                              break;
                           }
                           §§push(null);
                           if(!_loc3_)
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
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop7;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop8;
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  §§push(dialog);
                  §§push("Turn around, and turn on the magnet.");
                  §§push(160);
                  §§push(360);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr02b2:
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop());
                                    break loop11;
                                 }
                                 break loop10;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop10;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break;
                              }
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop10;
                           }
                           break;
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr02b2);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop11;
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               gentleman.spritesheet.§,=§(65);
               if(_loc2_)
               {
                  break;
               }
            }
            child.placeAt(9,21,null,2);
            if(_loc3_)
            {
               child.spritesheet.§,=§(120);
               if(_loc3_)
               {
                  child.spritesheet.§@S§(true);
               }
            }
            break;
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
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
                     §§push("You should remember this from school.");
                     §§push(0);
                     §§push(-320);
                     if(!_loc2_)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           break loop2;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                           §§goto(addr00bf);
                        }
                     }
                     §§push(null);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr00c4);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00bf);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00c4:
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(!_loc2_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("...");
                  §§push(0);
                  §§push(-80);
                  if(!_loc2_)
                  {
                     §§push(-1);
                     if(!_loc3_)
                     {
                        break loop4;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc2_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break loop4;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(-1);
                           break loop4;
                        }
                     }
                  }
                  §§push(-1);
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop4;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            loop6:
            while(true)
            {
               §§push(dialog);
               §§push("...");
               §§push(240);
               §§push(0);
               if(_loc3_)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr01b7:
                                 §§push(null);
                                 break loop6;
                              }
                              break;
                           }
                           §§push(-1);
                           if(_loc2_)
                           {
                              break loop7;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(-1);
                        break loop7;
                     }
                     §§push(-1);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        break loop6;
                     }
                     break;
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr01b7);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(student.§<!U§());
         loop9:
         while(true)
         {
            if(!_loc2_)
            {
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Anyway!");
                     §§push(80);
                     §§push(240);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    break loop11;
                                 }
                                 §§goto(addr0267);
                                 §§push(§§pop());
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    break loop10;
                                 }
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop10;
                        }
                     }
                     §§push(null);
                     if(!_loc2_)
                     {
                        break;
                     }
                     break loop10;
                  }
                  §§goto(addr0267);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               addr0267:
               if(_loc2_)
               {
                  break;
               }
            }
            loop13:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Why do you think the batteries pull you around?");
                  §§push(-80);
                  §§push(360);
                  if(!_loc2_)
                  {
                     §§push(null);
                     if(!_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              addr02ae:
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop13;
                           }
                           addr02c7:
                           §§push(null);
                           if(_loc2_)
                           {
                              break loop13;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop13;
                              }
                              §§goto(addr02c7);
                           }
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr02ae);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
               break loop9;
            }
            §§push(§§pop() / 2.5);
            break loop14;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               gentleman.placeAt(1.5,7.5);
               if(_loc3_)
               {
                  break;
               }
               gentleman.spritesheet.§,=§(69);
               if(_loc2_)
               {
                  child.placeAt(9,20,null,2);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               child.spritesheet.§,=§(120);
               if(_loc3_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc2_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Step two is coming up with a possible reason.");
               §§push(240);
               §§push(-320);
               if(_loc2_)
               {
                  §§push(-1);
                  if(!_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           addr00a8:
                           §§push(null);
                           break;
                        }
                        addr00bd:
                        §§push(-1);
                        if(!_loc3_)
                        {
                           addr00c5:
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
                              §§goto(addr00bd);
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
                  §§goto(addr00c5);
               }
               §§goto(addr00a8);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1560 == null ? null : int(Math.round(1560 / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc2_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Pardon me, but step two of what exactly?");
               §§push(-280);
               §§push(-160);
               if(_loc2_)
               {
                  §§push(-1);
                  if(!_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           addr013f:
                           §§push(null);
                           break;
                        }
                        addr0153:
                        §§push(-1);
                        if(_loc3_)
                        {
                           addr0161:
                           §§push(§§pop() / 2.5);
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
                              §§goto(addr0153);
                           }
                           else
                           {
                              §§push(-1);
                           }
                           §§goto(addr0161);
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0161);
               }
               §§goto(addr013f);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1280 == null ? null : int(Math.round(1280 / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(_loc2_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("The scientific method, of course!");
                  §§push(80);
                  §§push(320);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              addr01c4:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop3;
                           }
                           addr01de:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop3;
                              }
                              §§goto(addr01de);
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     break loop3;
                  }
                  §§goto(addr01c4);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  gentleman.placeAt(1.5,7.4);
                  if(_loc2_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(68);
                  if(_loc2_)
                  {
                     continue loop3;
                  }
               }
               student.spritesheet.§,=§(55);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr00d0);
            }
            student.spritesheet.§@S§(true);
            if(!_loc2_)
            {
               continue loop3;
            }
            §§goto(addr00d0);
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("That does seem odd, doesn\'t it?");
                  §§push(-80);
                  §§push(-240);
                  if(!_loc2_)
                  {
                     §§push(null);
                     if(!_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              addr0084:
                              §§push(null);
                              if(_loc3_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                           addr009d:
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr009d);
                              }
                              else
                              {
                                 §§push(null);
                              }
                           }
                        }
                        §§push(§§pop() / 2.5);
                        break loop3;
                     }
                     break;
                  }
                  §§goto(addr0084);
               }
               §§push(§§pop());
               break;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr00d0:
            var _loc1_:§ 7§ = new § 6§(student.§<!U§());
            if(_loc3_)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("But don\'t worry.");
                        §§push(120);
                        §§push(-80);
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(-1);
                              if(!_loc2_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(null);
                                       break loop6;
                                    }
                                    break;
                                 }
                                 §§push(-1);
                                 if(!_loc3_)
                                 {
                                    break loop7;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(-1);
                              break loop5;
                           }
                        }
                        §§push(-1);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop5;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop6;
            }
            _loc1_ = new § 6§(student.§<!U§());
            if(!_loc2_)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Finding something unexpected is the first step!");
                           §§push(80);
                           §§push(320);
                           if(_loc3_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop9;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    break loop10;
                                 }
                                 §§goto(addr01bf);
                              }
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              break loop11;
                           }
                           break loop10;
                        }
                        §§goto(addr01c5);
                     }
                     §§goto(addr01d7);
                  }
                  if(§§pop() < 0)
                  {
                     break;
                  }
                  §§goto(addr01c5);
                  §§push(null);
               }
               §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               addr01d7:
            }
            return;
         }
         §§push(§§pop());
         break loop3;
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               gentleman.placeAt(1.5,7.3);
               if(!_loc2_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§,=§(67);
            if(_loc2_)
            {
               student.spritesheet.§,=§(73);
               if(_loc3_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Might I have installed the electromagnet backwards?");
                  §§push(-40);
                  §§push(-120);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              addr00a2:
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop1;
                           }
                           addr00bb:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop1;
                              }
                              §§goto(addr00bb);
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     break loop1;
                  }
                  §§goto(addr00a2);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               if(!_loc3_)
               {
                  dialog.§`!^§("Don\'t laugh.\nDon\'t laugh.\nDon\'t laugh.",292,92,§&!S§.scale(0.5));
               }
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
      }
      
      public function frame19() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               gentleman.placeAt(1.5,5.5);
               if(!_loc3_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§,=§(40);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc2_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I will retain this power cell as compensation for your insult.");
                  §§push(-96);
                  §§push(-120);
                  if(_loc3_)
                  {
                     §§push(-1);
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc3_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(-1);
                           break loop1;
                        }
                     }
                  }
                  §§push(-1);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop1;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1700 == null ? null : int(Math.round(1700 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
      }
      
      public function frame18() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            gentleman.placeAt(1.5,6.5);
            while(true)
            {
               if(_loc3_)
               {
                  gentleman.spritesheet.§,=§(55);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               if(!_loc2_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("I have had enough of this.");
                        §§push(-120);
                        §§push(-320);
                        if(_loc3_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr007a:
                                    §§goto(addr009e);
                                    §§push(§§pop());
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    break loop1;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break loop1;
                                 }
                              }
                              addr008d:
                              §§push(null);
                              if(_loc3_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr009e);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
                  addr009e:
               }
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc3_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("If you cannot provide a solution, I shall take my leave.");
                  §§push(-80);
                  §§push(-120);
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 §§push(null);
                                 break loop4;
                              }
                              break;
                           }
                           §§push(-1);
                           if(_loc2_)
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
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop3;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1700 == null ? null : int(Math.round(1700 / 2.5)),0,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
      }
      
      public function frame17() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = §&!S§.width(2250);
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("How about the way the battery slowed suddenly, just before the magnet turned on?");
                     §§push(80);
                     §§push(-360);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           §§goto(addr006c);
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop1;
                  }
                  §§goto(addr0077);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0072);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr0077:
         }
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("No, wait, you\'d have to have been looking.");
                  §§push(20);
                  §§push(-132);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 §§push(null);
                                 break loop4;
                              }
                              break;
                           }
                           §§push(-1);
                           if(!_loc4_)
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
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1220 == null ? null : int(Math.round(1220 / 2.5)),0,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Let\'s do it again with you watching!");
                  §§push(0);
                  §§push(320);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr0170:
                              §§goto(addr01a0);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                        addr0182:
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop6;
                     }
                     §§goto(addr0170);
                  }
                  §§goto(addr0182);
               }
               §§goto(addr01a0);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr01a0:
         }
      }
      
      public function frame16() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("Oh, and did you notice the delay?");
                  §§push(120);
                  §§push(-200);
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 addr0052:
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    break loop1;
                                 }
                                 break loop0;
                              }
                              break;
                           }
                           §§push(null);
                           if(_loc2_)
                           {
                              break loop0;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop0;
                     }
                     §§push(null);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop0;
                  }
                  §§goto(addr0052);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(!_loc2_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("Which delay?");
                  §§push(-160);
                  §§push(0);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                              §§goto(addr0113);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop3;
                     }
                  }
                  §§push(null);
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§goto(addr0113);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr0113:
         }
         _loc1_ = new § 6§(student.§<!U§());
         if(_loc3_)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I said \"Got it!\" when I tossed the battery, but it took a few seconds to start pulling.");
                  §§push(0);
                  §§push(340);
                  if(_loc3_)
                  {
                     §§push(-1);
                     if(_loc2_)
                     {
                        break loop6;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc2_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break loop6;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(-1);
                           break loop6;
                        }
                     }
                  }
                  §§push(-1);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop6;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),2200 == null ? null : int(Math.round(2200 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
      }
      
      public function frame15() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            gentleman.spritesheet.§,=§(74);
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("And?");
                  §§push(320);
                  §§push(-240);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr0069:
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    break loop1;
                                 }
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop0;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break;
                              }
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           break;
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr0069);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop1;
         }
         var _loc2_:* = §&!S§.width(1300);
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc4_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("That you consider me a grade-school child.");
                     §§push(-200);
                     §§push(-120);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop4;
                              }
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop3;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop3;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc2_ = §&!S§.width(1040);
         _loc1_ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'m asking if electromagnets work in all directions.");
                  §§push(276);
                  §§push(268);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 addr019b:
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    break loop7;
                                 }
                                 break loop6;
                              }
                              break;
                           }
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop6;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop6;
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop6;
                  }
                  §§goto(addr019b);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
         {
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("I suppose one could say that.");
                        §§push(-240);
                        §§push(372);
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 break loop9;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop10;
                              }
                              §§goto(addr0245);
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           break loop11;
                        }
                        break loop10;
                     }
                     §§goto(addr024b);
                  }
                  §§goto(addr025c);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr024b);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc4_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr025c:
         }
      }
      
      public function frame14() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            gentleman.placeAt(1.5,7);
            if(!_loc3_)
            {
               gentleman.spritesheet.§,=§(73);
            }
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("Anyway, that was a good test!\nWhat did we learn?");
                  §§push(120);
                  §§push(-200);
                  if(_loc2_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop0;
                     }
                  }
                  §§push(null);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop0;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc2_)
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
                        §§push(dialog);
                        §§push("That you are not to be trusted!");
                        §§push(-160);
                        §§push(280);
                        if(_loc2_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 break loop4;
                              }
                              §§goto(addr0127);
                           }
                        }
                        §§push(null);
                        if(_loc2_)
                        {
                           §§push(§§pop());
                           break loop5;
                        }
                        break loop4;
                     }
                     §§goto(addr012d);
                  }
                  §§goto(addr013f);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr012d);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr013f:
         }
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               gentleman.placeAt(1.5,6);
               if(_loc4_)
               {
                  gentleman.spritesheet.§,=§(72);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            student.spritesheet.§,=§(46);
            break;
         }
         var _loc1_:* = §&!S§.scale(0.7);
         if(!_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Of all the uncivilized...");
               §§push(-400);
               §§push(-364);
               if(_loc4_)
               {
                  if(_loc1_ == null)
                  {
                     if(_loc4_)
                     {
                        addr007c:
                        §§push(null);
                        break;
                     }
                  }
                  else if(_loc1_ >= 0)
                  {
                     §§push(_loc1_ / 2.5);
                     break;
                  }
                  §§push(_loc1_);
                  break;
               }
               §§goto(addr007c);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            if(!_loc3_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("I am astounded that you would abuse my trust in this manner!");
                        §§push(-44);
                        §§push(-332);
                        if(!_loc3_)
                        {
                           §§push(-1);
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 §§push(null);
                                 break loop3;
                              }
                           }
                           else
                           {
                              §§push(-1);
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(-1);
                                 break loop2;
                              }
                           }
                        }
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),0,null);
               }
               §§push(§§pop() / 2.5);
               break loop3;
            }
         }
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I demand that you consult with me before performing any such action!");
                     §§push(-120.4);
                     §§push(-140);
                     if(!_loc3_)
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           break loop5;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop5;
                           }
                        }
                     }
                     §§push(-1);
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop5;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),2000 == null ? null : int(Math.round(2000 / 2.5)),1,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  §§push(dialog);
                  §§push("Huh?");
                  §§push(440);
                  §§push(-204);
                  if(!_loc3_)
                  {
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    addr0209:
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       break loop9;
                                    }
                                    break loop8;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop10;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop8;
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop8;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0209);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop9;
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  §§push(dialog);
                  §§push("Oh, sorry. I thought you realized.");
                  §§push(40);
                  §§push(260);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr0293:
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    break loop13;
                                 }
                                 break loop12;
                              }
                              break;
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop12;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop12;
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop12;
                  }
                  §§goto(addr0293);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop13;
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(battery == null)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               battery.§9!?§();
               if(_loc3_)
               {
                  break loop0;
               }
               break;
            }
            var _loc1_:§7d§ = §'2§;
            while(true)
            {
               if(_loc3_)
               {
                  _loc1_.sprite.world.§5!F§(_loc1_);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §'2§ = null;
               break;
            }
            _loc1_ = §;@§;
            _loc1_.sprite.world.§5!F§(_loc1_);
            §;@§ = null;
            student.spritesheet.§,=§(46);
            student.spritesheet.§@S§(true);
            gentleman.placeAt(1.5,1);
            gentleman.spritesheet.§,=§(68);
            gentleman.spritesheet.§@S§(true);
            §4_§ = new §4S§(CharacterRegistry.gentleman,gentleman.spritesheet,tunnel.§"[§);
            tunnel.registerAnimation(§4_§);
            §4_§.§#!2§ = -0.5;
            var _loc2_:§4S§ = §4_§;
            loop3:
            while(true)
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     if(true == _loc2_.§&!"§ > 0)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break loop3;
                     }
                  }
                  _loc2_.§&!"§ = 0.12;
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§push(dialog);
               §§push(tunnel.display);
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
               break;
            }
            return;
         }
         battery = null;
         break loop1;
      }
      
      public function frame11() : void
      {
         var _gthis:StudentTeacher;
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               _gthis = this;
               if(_loc4_)
               {
                  break;
               }
               while(true)
               {
                  if(§4A§ != null)
                  {
                     if(_loc5_)
                     {
                        Actuate.stop(§4A§,null,true,false);
                        §4A§ = null;
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  if(§,!>§ != null)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            Actuate.stop(§,!>§,null,true,false);
            if(_loc5_)
            {
               §,!>§ = null;
            }
            break;
         }
         var _loc1_:§7d§ = §;@§;
         while(true)
         {
            if(_loc5_)
            {
               _loc1_.sprite.world.§5!F§(_loc1_);
               if(_loc4_)
               {
                  break;
               }
            }
            §;@§ = new §7d§(gentleman,new §4?§(Vector.<int>([108,107,106,105,104,103,102,101,100,112,111,110,109])),null,true);
            break;
         }
         _loc1_ = §;@§;
         while(true)
         {
            if(_loc5_)
            {
               _loc1_.reset();
               if(_loc5_)
               {
                  _loc1_.sprite.world.registerAnimation(_loc1_);
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            battery.§#!Y§(gentleman);
            break;
         }
         var _loc2_:Point3D = §<S§;
         var _loc3_:Point3D = §<S§;
         loop4:
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  if(_loc3_ == null)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     _loc3_ = new Point3D(0,0,0);
                  }
                  _loc3_.x = _loc2_.x * 500;
                  if(!_loc4_)
                  {
                     _loc3_.y = _loc2_.y * 500;
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop4;
                  }
               }
               §§push(_loc3_);
               §§push(_loc2_.z);
               if(_loc5_)
               {
                  §§push(§§pop() * 500);
               }
               §§pop().z = §§pop();
               if(_loc4_)
               {
                  break;
               }
            }
            dialog.§+!P§ = function(param1:Number):void
            {
               var _temp_1:* = false;
               var _loc2_:Boolean = true;
               var _loc3_:Boolean = _temp_1;
               _temp_2.x += 50 * param1;
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(_gthis.gentleman.transform);
                     §§push(_gthis.§<S§.x * param1);
                     §§push(_gthis.§<S§.y * param1);
                     §§push(_gthis.§<S§.z);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * param1);
                     }
                     §§pop().translate(§§pop(),§§pop(),§§pop());
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  _gthis.battery.update(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr006b);
               }
               _gthis.update(param1);
               if(_loc2_)
               {
                  addr006b:
                  if(_gthis.gentleman.transform.position.x > 200)
                  {
                     if(_loc2_)
                     {
                        §§push(_gthis.dialog);
                        §§push(_gthis.update);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§+!P§ = §§pop();
                     }
                  }
                  §§goto(addr0097);
               }
               addr0097:
            };
            break;
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(§4A§ != null)
               {
                  if(_loc13_)
                  {
                     break;
                  }
                  Actuate.stop(§4A§,null,true,false);
                  §4A§ = null;
                  if(_loc13_)
                  {
                     break loop0;
                  }
               }
               if(§,!>§ != null)
               {
                  if(!_loc13_)
                  {
                     Actuate.stop(§,!>§,null,true,false);
                     break;
                  }
               }
               addr007f:
               §§push(dialog);
               §§push(update);
               if(_loc12_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
               break loop0;
            }
            §,!>§ = null;
            §§goto(addr007f);
         }
         var _loc1_:§7d§ = §'2§;
         if(!_loc13_)
         {
            _loc1_.sprite.world.§5!F§(_loc1_);
            if(!_loc13_)
            {
               §'2§ = new §7d§(student,new §4?§(Vector.<int>([80,74,81,82]),true),4);
            }
         }
         _loc1_ = §'2§;
         if(!_loc13_)
         {
            _loc1_.reset();
            while(true)
            {
               if(!_loc13_)
               {
                  _loc1_.sprite.world.registerAnimation(_loc1_);
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               §;@§ = new §7d§(gentleman,new §4?§(Vector.<int>([111,110,109])),20);
               break;
            }
         }
         _loc1_ = §;@§;
         while(true)
         {
            if(!_loc13_)
            {
               _loc1_.reset();
               if(!_loc12_)
               {
                  break;
               }
            }
            _loc1_.sprite.world.registerAnimation(_loc1_);
            break;
         }
         §§push(0.8);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Number(gentleman.transform.position.x);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc13_)
            {
               §§push(_loc2_);
               if(_loc12_)
               {
                  §§push(§§pop() * (battery.transform.position.x - _loc3_));
               }
               §§push(§§pop() + §§pop());
               if(_loc13_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
            break;
         }
         var _loc4_:* = §§pop();
         var _loc5_:Number = Number(gentleman.transform.position.y);
         while(true)
         {
            §§push(_loc5_);
            if(!_loc13_)
            {
               §§push(_loc2_);
               if(!_loc13_)
               {
                  §§push(§§pop() * (battery.transform.position.y - _loc5_));
               }
               §§push(§§pop() + §§pop());
               if(_loc13_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
            break;
         }
         var _loc6_:* = §§pop();
         §§push(gentleman.transform.position.z);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc7_);
         if(!_loc13_)
         {
            §§push(_loc2_);
            if(!_loc13_)
            {
               §§push(battery.transform.position.z);
               if(!_loc13_)
               {
                  §§push(§§pop() - _loc7_);
               }
               §§push(§§pop() * §§pop());
            }
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
                  if(_loc13_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
         }
         var _loc8_:* = §§pop();
         if(!_loc13_)
         {
            §<S§ = new Point3D(_loc4_,_loc6_,_loc8_);
         }
         var _loc9_:Point3D = §<S§;
         loop7:
         while(true)
         {
            §§push(_loc9_.x * _loc9_.x);
            if(!_loc13_)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc9_.y * _loc9_.y);
                     if(_loc12_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc13_)
                        {
                           break loop7;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           break;
                        }
                        §§push(_loc9_.z);
                        if(_loc13_)
                        {
                           break loop8;
                        }
                     }
                     §§push(§§pop() * _loc9_.z);
                     break loop8;
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
                  if(_loc12_)
                  {
                     break loop9;
                  }
               }
               break;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc10_:* = §§pop();
         while(true)
         {
            §§push(_loc10_);
            if(!_loc13_)
            {
               §§push(§§pop() - 1);
               if(_loc13_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc11_:* = §§pop();
         loop11:
         while(true)
         {
            while(true)
            {
               §§push(_loc11_);
               §§push(0);
               if(!_loc13_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc11_);
                  }
                  else
                  {
                     §§push(_loc11_);
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(-§§pop());
                  }
                  §§push(§§pop() < 1e-10);
                  if(_loc12_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop11;
                  }
                  §§push(_loc10_);
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  _loc9_.x = 1;
                  _loc9_.y = 0;
                  _loc9_.z = 0;
                  break loop11;
               }
               §§push(1 / Number(Math.sqrt(_loc10_)));
               if(!_loc12_)
               {
                  break;
               }
               §§push(Number(§§pop()));
               if(!_loc13_)
               {
                  break;
               }
               §§goto(addr0364);
            }
            _loc10_ = §§pop();
            if(!_loc13_)
            {
               _loc9_.x *= _loc10_;
               _loc9_.y *= _loc10_;
               §§push(_loc9_);
               §§push(_loc9_.z);
               if(_loc12_)
               {
                  §§push(§§pop() * _loc10_);
               }
               §§pop().z = §§pop();
               break;
            }
            §§goto(addr03f9);
         }
         §§push(0.5);
         if(!_loc13_)
         {
            addr0364:
            §§push(Number(§§pop()));
         }
         _loc10_ = §§pop();
         if(_loc12_)
         {
            §4A§ = battery.transform.§7#§(_loc10_,_loc4_,_loc6_,_loc8_);
            §4A§.ease(Quad.get_easeIn());
         }
         §,!>§ = gentleman.transform.§7#§(_loc10_,_loc4_,_loc6_,_loc8_);
         if(_loc12_)
         {
            §,!>§.ease(Quad.get_easeIn());
         }
         §§push(§4A§);
         §§push(§9-§);
         if(!_loc13_)
         {
            §§push(§§pop());
         }
         §§pop().onComplete(§§pop());
         addr03f9:
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = §&!S§.width(720);
         if(_loc3_)
         {
            dialog.§";§("Yet the outcome has been the inverse of my intent.",-120,-320,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(720);
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Instead of the power cells being drawn in as they ought, I find myself moving towards them.",80,-120,null,_loc1_,-1,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               QuaternionUtils.setFromEuler(3.141592653589793,1.5707963267948966,0,tunnel.camera.§,t§);
               if(_loc3_)
               {
                  tunnel.camera.reset();
                  tunnel.camera.§6!&§(90,0,830);
                  tunnel.camera.§3;§();
                  tunnel.display(0);
                  if(_loc3_)
                  {
                     gentleman.placeAt(1.5,7.2);
                  }
                  gentleman.spritesheet.§,=§(66);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            gentleman.spritesheet.§@S§(true);
            if(!_loc4_)
            {
               student.placeAt(2,8);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr00bf);
            }
            break;
         }
         student.spritesheet.§,=§(55);
         addr00bf:
         student.spritesheet.§@S§(true);
         child.placeAt(9,19);
         while(true)
         {
            if(_loc3_)
            {
               child.spritesheet.§,=§(119);
               if(_loc4_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.width(800);
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc4_)
         {
            §§push(dialog);
            §§push("As I\'m sure you\'re well aware, I installed ");
            if(_loc3_)
            {
               §§push(§§pop() + "an electromagnet into my top hat in order to draw in power cells.");
               if(_loc3_)
               {
                  §§push(§§pop());
               }
            }
            §§pop().§";§(§§pop(),-40,-120,null,_loc1_,null,_loc2_,null);
            if(!_loc4_)
            {
               dialog.§`!^§("Just say \"batteries\"...",292,124,§&!S§.scale(0.5));
            }
         }
      }
      
      public function §^6§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(§4A§ != null)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  Actuate.stop(§4A§,null,true,false);
                  §4A§ = null;
                  if(!_loc1_)
                  {
                     break loop0;
                  }
               }
               if(§,!>§ != null)
               {
                  Actuate.stop(§,!>§,null,true,false);
                  §,!>§ = null;
               }
               break loop0;
            }
            return;
         }
         if(battery != null)
         {
            battery.§'K§(true);
         }
         break loop1;
      }
      
      public function §9-§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(§4A§ != null)
                     {
                        Actuate.stop(§4A§,null,true,false);
                        if(!_loc1_)
                        {
                           break;
                        }
                        §4A§ = null;
                        if(!_loc1_)
                        {
                           break loop1;
                        }
                     }
                     if(§,!>§ != null)
                     {
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        break loop0;
                     }
                     §§goto(addr0090);
                  }
               }
               Actuate.stop(§,!>§,null,true,false);
               §,!>§ = null;
               addr0090:
               if(dialog != null)
               {
                  if(!_loc2_)
                  {
                     break loop2;
                  }
               }
               break;
            }
            dialog.visible = false;
            break;
         }
      }
   }
}

