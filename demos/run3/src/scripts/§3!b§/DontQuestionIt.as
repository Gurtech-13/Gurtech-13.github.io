package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §2X§.§>N§;
   import §6!Q§.§]u§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§ L§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   
   public class DontQuestionIt extends §+Z§
   {
      
      public var student:§^s§;
      
      public var skater:§^s§;
      
      public var box:§[C§;
      
      public function DontQuestionIt()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§7&§,2);
               if(!_loc1_)
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
               §§pop().frames = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            name = "Don\'t Question It";
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
            student = null;
            if(_loc2_)
            {
               skater = null;
               if(_loc2_)
               {
                  break;
               }
            }
            §§goto(addr0052);
         }
         sprites.length = 0;
         addr0052:
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:§+#§ = §+#§.§4!J§();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc5_)
                  {
                     § L§.high = 208883;
                     §§push(true);
                     if(!param2)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§pop();
                        §§push(§!!6§ == 4);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        Main.instance.§,Z§(null);
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                     }
                     else
                     {
                        §]u§.§@!A§().§5!@§ = false;
                        if(_loc5_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(_loc3_.§>c§());
                  break loop1;
               }
               if(§§pop())
               {
                  §+#§.§1!"§(_loc3_);
               }
               break loop0;
            }
            §§push(!§§pop());
            break loop2;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            student = new §^s§(§9_§,§'O§.student,false,null,false,null);
            if(_loc4_)
            {
               sprites.push(student);
            }
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("primary");
         if(_loc4_)
         {
            student.goesTo = new § !N§(_loc1_,30);
            while(true)
            {
               if(_loc4_)
               {
                  skater = new §^s§(§9_§,§'O§.skater,false,null,false,null);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               sprites.push(skater);
               break;
            }
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
            skater.goesTo = new § !N§(_loc3_,2);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            skater.spritesheet.§,=§(78);
         }
         var _loc1_:* = §&!S§.width(1700);
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Because asking questions leads to discovering new things.");
                        §§push(180);
                        §§push(-340);
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
                              §§goto(addr007f);
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           break loop5;
                        }
                        break loop1;
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr008a);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0085);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc4_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr008a:
            if(!_loc3_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("No, that was a rhetorical question.");
                     §§push(-240);
                     §§push(-160);
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    §§goto(addr0101);
                                    §§push(§§pop());
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc4_)
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
                           break loop2;
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr0101);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
               addr0101:
            }
         }
         _loc1_ = §&!S§.width(1700);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
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
                     §§push("It was a legitimate question, and I gave you a legitimate answer.");
                     §§push(240);
                     §§push(0);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    addr0180:
                                    §§push(§§pop());
                                    break loop8;
                                 }
                                 break loop7;
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
                                 break loop7;
                              }
                           }
                           addr0193:
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           break loop7;
                        }
                        §§goto(addr0180);
                     }
                     §§goto(addr0193);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),0,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop8;
         }
         _loc2_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
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
                     §§push("Ugh, just-");
                     §§push(-280);
                     §§push(320);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              if(_loc4_)
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
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop10;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop10;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),1,_loc2_);
               if(!_loc3_)
               {
                  loop13:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Stop explaining the joke!");
                        §§push(160);
                        §§push(360);
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
                                       addr0275:
                                       §§push(null);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                          break loop14;
                                       }
                                       break loop13;
                                    }
                                    break;
                                 }
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    break loop13;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop13;
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop13;
                        }
                        §§goto(addr0275);
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),3,null);
                  }
                  §§push(§§pop() / 2.5);
                  break loop14;
               }
            }
            §§push(§§pop() / 2.5);
            break loop11;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            skater.spritesheet.§,=§(74);
         }
         var _loc1_:* = §&!S§.width(1400);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Maybe when you\'re older, you\'ll realize some things shouldn\'t be questioned.");
                  §§push(-320);
                  §§push(-320);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              addr0073:
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop0;
                           }
                           addr008c:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop0;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr008c);
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
                  §§goto(addr0073);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop());
            break loop1;
         }
         _loc1_ = §&!S§.width(1700);
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc3_)
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
                     §§push("Maybe when you\'re mature, you\'ll realize everything should be.");
                     §§push(280);
                     §§push(-40);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 addr0104:
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop2;
                              }
                           }
                           §§push(null);
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                              break loop3;
                           }
                           break loop2;
                        }
                        break;
                     }
                     §§goto(addr0104);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
               if(_loc3_)
               {
                  § !C§("everything");
               }
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
         _loc1_ = §&!S§.width(300);
         if(!_loc4_)
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
                     while(true)
                     {
                        §§push(dialog);
                        §§push("...");
                        §§push(-320);
                        §§push(240);
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
                              if(_loc3_)
                              {
                                 break loop6;
                              }
                              break;
                           }
                           if(_loc4_)
                           {
                              break loop5;
                           }
                        }
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break loop7;
                        }
                        break loop6;
                     }
                     §§goto(addr01c3);
                  }
                  §§goto(addr01ce);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr01c9);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr01ce:
         }
         _loc2_ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  §§push(dialog);
                  §§push("Why?");
                  §§push(-120);
                  §§push(360);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop10;
                              }
                              §§goto(addr0265);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
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
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop9;
               }
               §§goto(addr0265);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,_loc2_);
            addr0265:
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         box = §[C§.§4r§(tunnel,§"=§.§]R§(tunnel,"movableBox",null,null,125));
         while(true)
         {
            if(_loc4_)
            {
               box.reset();
               box.transform.§"I§(§4!R§.§1!A§(0,-1.2566370614359172,0));
               if(_loc4_)
               {
                  box.transform.§6!&§(80,90,1800);
                  tunnel.§`=§(box);
               }
               §4!R§.§1!A§(3.141592653589793,1.8849555921538759,0.031415926535897934,tunnel.§<!M§.§,t§);
               if(!_loc4_)
               {
                  break;
               }
            }
            tunnel.§<!M§.reset();
            tunnel.§<!M§.§6!&§(120,70,2200);
            tunnel.§<!M§.§3;§();
            tunnel.display(0);
            while(true)
            {
               if(_loc4_)
               {
                  student.§9E§(1,23,null,1);
                  student.spritesheet.§,=§(46);
                  student.spritesheet.§@S§(true);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               skater.§9E§(0,22);
               break;
            }
            skater.spritesheet.§,=§(72);
            skater.spritesheet.§@S§(true);
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0150);
         }
         student.§2e§(skater);
         addr0150:
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("You know what? I\'m done.");
                     §§push(-320);
                     §§push(40);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    addr0191:
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       break loop4;
                                    }
                                    break loop2;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc4_)
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
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop3;
                        }
                        break;
                     }
                     §§goto(addr0191);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop3;
         }
         var _loc2_:* = §&!S§.width(1800);
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I\'m here to have fun, not participate in mad science.");
                     §§push(-40);
                     §§push(360);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
                                 {
                                    addr0212:
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       break loop8;
                                    }
                                    break loop6;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    break loop6;
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
                                 break loop6;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop7;
                        }
                        break;
                     }
                     §§goto(addr0212);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),0,null);
            }
            §§push(§§pop());
            break loop7;
         }
      }
   }
}

