package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§4!R§;
   
   public class TheNextBigThing extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var skater:§^s§;
      
      public var §#!P§:§^s§;
      
      public function TheNextBigThing()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super(§>K§.§2s§,6,TheNextBigThing.§3S§);
               if(_loc2_)
               {
                  break;
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
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame4);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(!_loc2_)
            {
               name = "The Next Big Thing";
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
            if(_loc2_)
            {
               tunnel = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            §#!P§ = null;
            if(!_loc1_)
            {
               skater = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
            if(!_loc5_)
            {
               sprites.push(§#!P§);
            }
         }
         §§push(§!^§.pathName);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc4_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,3);
               if(!_loc4_)
               {
                  break;
               }
               skater = new §^s§(§9_§,§'O§.skater,false,null,false,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            sprites.push(skater);
            break;
         }
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get("primary");
         if(_loc4_)
         {
            skater.goesTo = new § !N§(_loc3_,55);
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            tunnel.§<!M§.translate(0,0,200);
         }
         tunnel.display(0);
         §#!P§.§9E§(13,25.8,null,20);
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.spritesheet.§,=§(8);
               skater.§9E§(14,27.5);
               if(_loc3_)
               {
                  break;
               }
            }
            skater.spritesheet.§,=§(10);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr00f5);
         }
         loop5:
         while(true)
         {
            §§push(dialog);
            §§push("Once you go home and tell everyone, they\'ll come out here.");
            §§push(-40);
            §§push(-320);
            if(_loc2_)
            {
               loop6:
               while(true)
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
                              addr009c:
                              §§push(null);
                              break loop5;
                           }
                           break;
                        }
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break loop6;
                        }
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     addr00ca:
                     §§push(-1 / 2.5);
                     break loop5;
                  }
                  §§push(-1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr00ca);
               }
               §§push(§§pop());
               break;
            }
            §§goto(addr009c);
         }
         §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),null,null);
         addr00f5:
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I\'m not sure I\'m ready for that tunnel of competition!");
                     §§push(-20);
                     §§push(-160);
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §§push(-1);
                           if(!_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(null);
                                    break loop2;
                                 }
                                 break;
                              }
                              §§push(-1);
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(-1);
                           break loop1;
                        }
                     }
                     §§push(-1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1700 == null ? null : int(Math.round(1700 / 2.5)),0,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               tunnel.§<!M§.translate(0,0,200);
               if(_loc3_)
               {
                  break;
               }
            }
            tunnel.display(0);
            if(_loc2_)
            {
               §#!P§.§9E§(13,22.5,null,65);
               if(_loc2_)
               {
                  skater.§9E§(14,23.5,null,50);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §§goto(addr0076);
            }
            break;
         }
         skater.spritesheet.§,=§(3);
         addr0076:
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            loop1:
            while(true)
            {
               §§push(dialog);
               §§push("Changing the subject, I\'ve found how to get home. You should come.");
               §§push(160);
               §§push(-300);
               if(!_loc3_)
               {
                  loop2:
                  while(true)
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
                                 addr00b4:
                                 §§push(null);
                                 break loop1;
                              }
                              break;
                           }
                           §§push(-1);
                           if(_loc3_)
                           {
                              break loop2;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        addr00e2:
                        §§push(-1 / 2.5);
                        break loop1;
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr00e2);
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr00b4);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
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
                     §§push("Can it wait?");
                     §§push(-240);
                     §§push(220);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    addr014f:
                                    §§push(§§pop());
                                    break loop5;
                                 }
                                 break loop4;
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
                                 break loop4;
                              }
                           }
                           addr0162:
                           §§push(null);
                           if(_loc2_)
                           {
                              break;
                           }
                           break loop4;
                        }
                        §§goto(addr014f);
                     }
                     §§goto(addr0162);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         tunnel.§<!M§.translate(0,0,120);
         tunnel.display(0);
         §#!P§.§9E§(13,19,null,2);
         §#!P§.spritesheet.§,=§(0);
         skater.§9E§(14,20.5,null,2);
         if(_loc2_)
         {
            skater.spritesheet.§,=§(0);
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Do you think this is some kind of game?");
                     §§push(260);
                     §§push(-280);
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §§push(-1);
                           if(!_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(null);
                                    break loop2;
                                 }
                                 break;
                              }
                              §§push(-1);
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(-1);
                           break loop1;
                        }
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop1;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1400 == null ? null : int(Math.round(1400 / 2.5)),null,_loc1_);
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("More like a sport, really.");
                  §§push(-160);
                  §§push(-80);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr012c:
                              §§goto(addr014f);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop4;
                           }
                        }
                        addr013e:
                        §§push(null);
                        if(_loc2_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr013e);
               }
               §§goto(addr014f);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr014f:
            break;
         }
         _loc1_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               §§push(dialog);
               §§push("It\'s going to be the next big thing!");
               §§push(-180);
               §§push(240);
               if(!_loc3_)
               {
                  loop7:
                  while(true)
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
                                 addr01b0:
                                 §§push(null);
                                 break loop6;
                              }
                              break;
                           }
                           §§push(-1);
                           if(_loc3_)
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
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        break loop6;
                     }
                     break;
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr01b0);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,_loc1_);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         tunnel.§<!M§.translate(0,0,120);
         tunnel.display(0);
         if(!_loc3_)
         {
            §#!P§.§9E§(13,17.5);
         }
         §#!P§.spritesheet.§,=§(30);
         skater.§9E§(14,18);
         skater.spritesheet.§,=§(40);
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("What are you talking about?");
                  §§push(200);
                  §§push(-240);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr00c4);
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
                           break loop0;
                        }
                     }
                  }
                  §§push(null);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§goto(addr00c4);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00c4:
         }
         _loc1_ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Oh, sorry.");
                     §§push(-160);
                     §§push(-120);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr0156);
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
                  §§goto(addr0156);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               addr0156:
               if(_loc3_)
               {
                  break;
               }
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'ve done each tunnel 49 times,\nand I\'m working on my 50th.");
                  §§push(-180);
                  §§push(260);
                  if(_loc2_)
                  {
                     §§push(-1);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              addr01a0:
                              §§push(null);
                              break;
                           }
                           addr01b5:
                           §§push(-1);
                           if(_loc3_)
                           {
                              addr01c3:
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
                                 §§goto(addr01b5);
                              }
                              else
                              {
                                 §§push(-1);
                              }
                              §§goto(addr01c3);
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§goto(addr01c3);
                  }
                  §§goto(addr01a0);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,null);
               if(_loc3_)
               {
                  break;
               }
            }
            loop6:
            while(true)
            {
               §§push(dialog);
               §§push("Not 50 approaching 51.");
               §§push(120);
               §§push(380);
               if(!_loc3_)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 addr0217:
                                 §§push(null);
                                 break loop6;
                              }
                              break;
                           }
                           §§push(-1);
                           if(!_loc2_)
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
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        break loop6;
                     }
                     break;
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr0217);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),2,null);
            break;
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §4!R§.§1!A§(0,2.199114857512855,0,tunnel.§<!M§.§,t§);
         }
         tunnel.§<!M§.reset();
         if(_loc2_)
         {
            tunnel.§<!M§.§6!&§(-100,-40,900);
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     tunnel.display(0);
                     §#!P§.§9E§(13,16.5);
                     §#!P§.spritesheet.§,=§(42);
                     if(_loc3_)
                     {
                        break;
                     }
                     skater.§9E§(14,16);
                     if(_loc3_)
                     {
                        break;
                     }
                     skater.spritesheet.§,=§(32);
                     if(_loc3_)
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Where were you? I\'ve been looking all over the place!");
                     §§push(160);
                     §§push(-320);
                     if(!_loc3_)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr00c2:
                                 §§push(null);
                                 break;
                              }
                              addr00d6:
                              §§push(-1);
                              if(_loc3_)
                              {
                                 addr00e5:
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
                                    §§goto(addr00d6);
                                 }
                                 else
                                 {
                                    §§push(-1);
                                 }
                                 §§goto(addr00e5);
                              }
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr00c2);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1600 == null ? null : int(Math.round(1600 / 2.5)),null,null);
                  if(_loc3_)
                  {
                     break;
                  }
                  § !C§("were");
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop2;
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("Yep, that\'s where I was!");
                  §§push(-260);
                  §§push(-160);
                  if(!_loc3_)
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
                                 addr014a:
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
                              break loop2;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        addr0170:
                        §§push(null / 2.5);
                        break loop3;
                     }
                     §§push(null);
                     if(_loc2_)
                     {
                        break loop2;
                     }
                     §§goto(addr0170);
                  }
                  §§goto(addr014a);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               break loop1;
            }
            §§push(§§pop());
            break loop3;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc2_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  §§push(dialog);
                  §§push("Huh?");
                  §§push(180);
                  §§push(-40);
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
                                 break loop7;
                              }
                              break;
                           }
                           §§push(-1);
                           if(_loc3_)
                           {
                              break loop6;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(-1);
                        break loop6;
                     }
                  }
                  §§push(-1);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop6;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
         _loc1_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("All over the place.");
                  §§push(-180);
                  §§push(72);
                  if(!_loc3_)
                  {
                     §§push(-1);
                     if(!_loc2_)
                     {
                        break loop9;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc2_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           break loop9;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(-1);
                           break loop9;
                        }
                     }
                  }
                  §§push(-1);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop9;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop10;
         }
         _loc1_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            loop11:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'m on lap 50!");
                  §§push(-120);
                  §§push(360);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              addr02ee:
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop11;
                           }
                           addr0308:
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop11;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr0308);
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
                     break loop11;
                  }
                  §§goto(addr02ee);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop12;
         }
      }
   }
}

