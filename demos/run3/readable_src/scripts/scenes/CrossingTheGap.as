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
   import haxeutils.math.geom.QuaternionUtils;
   
   public class CrossingTheGap extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var student:StageActor;
      
      public var §-P§:StageActor;
      
      public function CrossingTheGap()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§6-§,0,CrossingTheGap.§3S§);
               if(!_loc2_)
               {
                  break;
               }
               §3!<§(new § !N§(§>K§.§]0§,0));
               if(!_loc1_)
               {
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
                  if(_loc2_)
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
            name = "Crossing the Gap";
            break;
         }
      }
      
      override public function §1!F§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            CharacterRegistry.skater.§>t§.§?F§(§>K§.§>=§.pathName);
            if(!_loc1_)
            {
               §§push(CharacterRegistry.skater.§ j§);
               §§push(§>K§.§>=§.levelCount);
               if(_loc2_)
               {
                  §§push(§§pop() - 1);
               }
               §§pop().§?F§(§§pop());
               if(!_loc1_)
               {
                  super.§1!F§();
               }
            }
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
               if(_loc2_)
               {
                  break;
               }
               student = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            §-P§ = null;
            if(_loc1_)
            {
               break;
            }
            §§goto(addr0052);
         }
         sprites.length = 0;
         addr0052:
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            student = new StageActor(section,CharacterRegistry.student,false,null,false,null);
            if(_loc4_)
            {
               sprites.push(student);
            }
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("wormholeN");
         while(true)
         {
            if(!_loc3_)
            {
               student.goesTo = new § !N§(_loc1_,0);
               if(!_loc4_)
               {
                  break;
               }
            }
            §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
            if(_loc4_)
            {
               sprites.push(§-P§);
            }
            break;
         }
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("wormholeN");
         if(!_loc3_)
         {
            §-P§.goesTo = new § !N§(_loc2_,0);
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §-P§.placeAt(10.6,2,null,29);
         if(!_loc2_)
         {
            §-P§.spritesheet.§,=§(0);
            §-P§.spritesheet.§@S§(false);
            student.placeAt(10,3.7,null,38);
         }
         student.spritesheet.§,=§(56);
         if(_loc3_)
         {
            loop0:
            while(true)
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
                        §§push("Neither do I.");
                        §§push(-280);
                        §§push(-160);
                        if(!_loc2_)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              §§goto(addr00ba);
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00bf);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00ba);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc2_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr00bf:
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Let\'s go!");
                  §§push(-40);
                  §§push(240);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc2_)
                           {
                              addr011c:
                              §§push(null);
                              if(!_loc2_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop4;
                           }
                        }
                        §§push(null);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           break;
                        }
                     }
                     break loop4;
                  }
                  §§goto(addr011c);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               student.placeAt(10,3.6,null,37);
               if(!_loc4_)
               {
                  student.spritesheet.§,=§(94);
                  if(!_loc4_)
                  {
                     §-P§.placeAt(10.7,1);
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
               }
            }
            §-P§.spritesheet.§,=§(47);
            break;
         }
         var _loc1_:* = §&!S§.width(1700);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("What, you don\'t want to go find a hundred more boxes first?");
                        §§push(-168);
                        §§push(-192);
                        if(!_loc4_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop() != null)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           break loop6;
                        }
                        break loop2;
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr00db);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00d6);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc4_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00db:
            if(!_loc4_)
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
                        §§push("Um...");
                        §§push(380);
                        §§push(-80);
                        if(!_loc4_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc4_)
                                 {
                                    addr0134:
                                    §§push(null);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    break loop3;
                                 }
                                 addr014d:
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    break loop3;
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
                                       break loop3;
                                    }
                                    §§goto(addr014d);
                                 }
                              }
                              §§push(§§pop());
                              break loop4;
                           }
                           break;
                        }
                        §§goto(addr0134);
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               }
               §§push(§§pop() / 2.5);
               break loop4;
            }
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("No?");
                     §§push(320);
                     §§push(40);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           break loop9;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop9;
                           }
                           §§goto(addr01f5);
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop9;
                  }
                  §§goto(addr01fa);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr01f5);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,_loc2_);
            addr01fa:
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            student.placeAt(10,3.6,null,35);
            if(_loc3_)
            {
               student.spritesheet.§,=§(82);
               if(_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("You plan ahead too much.");
                        §§push(240);
                        §§push(-240);
                        if(_loc3_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop0;
                           }
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr0095);
                                    §§push(§§pop());
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    break loop1;
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
                        if(!_loc4_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     §§goto(addr0095);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
                  addr0095:
               }
            }
         }
         var _loc1_:* = §&!S§.width(1100);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("Hey, I plan ahead a reasonable amount.");
                  §§push(-220);
                  §§push(-80);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 addr0117:
                                 §§push(§§pop());
                                 break loop4;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop3;
                        }
                        addr012a:
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop3;
                     }
                     §§goto(addr0117);
                  }
                  §§goto(addr012a);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc1_ = §&!S§.width(900);
         _loc2_ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Haha, whatever you say. Can we get going?");
                  §§push(352);
                  §§push(200);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 addr01af:
                                 §§push(§§pop());
                                 break;
                              }
                              break loop6;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop6;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                        addr01c2:
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop6;
                     }
                     §§goto(addr01af);
                  }
                  §§goto(addr01c2);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),0,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
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
               student.placeAt(10,1.3,null,20);
               if(_loc4_)
               {
                  student.spritesheet.§,=§(14);
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §-P§.spritesheet.§,=§(46);
            if(_loc4_)
            {
               break;
            }
            §§goto(addr0061);
         }
         §-P§.spritesheet.§@S§(true);
         addr0061:
         var _loc1_:* = §&!S§.width(900);
         if(_loc4_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("Sure, we have enough for now.");
                  §§push(-28);
                  §§push(-200);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§goto(addr00cc);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop2;
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
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§goto(addr00cc);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr00cc:
            if(_loc4_)
            {
               § !C§("this");
            }
         }
         _loc1_ = §&!S§.width(1100);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc4_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("But I bet we\'ll run into more gaps like this.");
                  §§push(-280);
                  §§push(80);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              addr0147:
                              §§push(null);
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop4;
                           }
                           addr0161:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop4;
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
                                 break loop4;
                              }
                              §§goto(addr0161);
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     break loop4;
                  }
                  §§goto(addr0147);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),-1,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  QuaternionUtils.setFromEuler(0,-3.392920065876977,0,tunnel.camera.§,t§);
                  tunnel.camera.reset();
                  tunnel.camera.§6!&§(10,-71,-90);
                  if(!_loc3_)
                  {
                     break;
                  }
                  tunnel.camera.§3;§();
                  tunnel.display(0);
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               student.placeAt(10,1);
               student.spritesheet.§,=§(46);
               if(_loc3_)
               {
                  break loop0;
               }
               continue loop7;
            }
            var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
            if(_loc3_)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Probably not.");
                     §§push(-200);
                     §§push(-120);
                     if(!_loc2_)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr01c7:
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop9;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 break loop9;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop9;
                              }
                           }
                           §§push(null);
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                              break;
                           }
                        }
                        break loop9;
                     }
                     §§goto(addr01c7);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop10;
            }
            _loc1_ = new § 6§(student.§<!U§());
            if(!_loc2_)
            {
               loop11:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Um.");
                     §§push(320);
                     §§push(40);
                     if(!_loc2_)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           break loop11;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop11;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              break loop11;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop11;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop11;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),1,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop12;
            }
            return;
         }
         §-P§.placeAt(10.8,0.9);
         §-P§.spritesheet.§,=§(28);
         if(_loc3_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("Wow, someone\'s been busy.");
                  §§push(0);
                  §§push(-360);
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
                                 addr00c2:
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    break loop3;
                                 }
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop2;
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
                              break loop2;
                           }
                           break;
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr00c2);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Think that\'s enough boxes?");
                           §§push(120);
                           §§push(-240);
                           if(_loc3_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(§§pop() != null)
                              {
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    break loop6;
                                 }
                                 break;
                              }
                              if(_loc2_)
                              {
                                 break loop5;
                              }
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              break loop7;
                           }
                           break loop6;
                        }
                        §§goto(addr015e);
                     }
                     §§goto(addr0169);
                  }
                  if(§§pop() < 0)
                  {
                     break;
                  }
                  §§goto(addr0164);
                  §§push(null);
               }
               §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,null);
               addr0169:
               break loop1;
            }
            §§push(§§pop());
            break loop3;
         }
         break loop1;
      }
   }
}

