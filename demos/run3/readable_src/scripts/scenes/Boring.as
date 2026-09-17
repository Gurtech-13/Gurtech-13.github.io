package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Boring extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:StageActor;
      
      public var child:StageActor;
      
      public function Boring()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§>=§,-2,null,{"endTiles":false},null,§+!"§.CUSTOM(§>K§.§>=§.§#R§));
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
               §§pop().frames = null;
               if(_loc2_)
               {
                  break;
               }
            }
            name = "Boring";
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
            if(!_loc1_)
            {
               tunnel = null;
               if(_loc2_)
               {
                  child = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
            }
            student = null;
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
         if(!_loc5_)
         {
            child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
            while(true)
            {
               if(!_loc5_)
               {
                  child.billboardMode = true;
                  if(_loc5_)
                  {
                     break;
                  }
               }
               sprites.push(child);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  child.goesTo = new § !N§(_loc2_,-2);
                  if(!_loc6_)
                  {
                     break;
                  }
                  student = new StageActor(section,CharacterRegistry.student,false,null,false,null);
                  if(!_loc6_)
                  {
                     break loop1;
                  }
               }
               student.billboardMode = true;
               if(_loc6_)
               {
                  break loop1;
               }
               break;
            }
            §§push(§!^§.pathName);
            if(_loc6_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
            if(!_loc5_)
            {
               student.goesTo = new § !N§(_loc4_,-2);
            }
            return;
         }
         sprites.push(student);
         break loop2;
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.placeAt(7.2,14.1);
         child.spritesheet.§,=§(103);
         child.spritesheet.§@S§(true);
         student.placeAt(6.7,13.2);
         student.spritesheet.§,=§(94);
         student.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
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
                        §§push("Well, maybe I\'ll be the exception.");
                        §§push(40);
                        §§push(-260);
                        if(_loc4_)
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
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                              §§goto(addr00bf);
                           }
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr00b9);
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
            §§pop().§";§(§§pop(),§§pop(),null,_loc4_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00c4:
         }
         var _loc2_:* = §&!S§.width(1120);
         _loc1_ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("No thanks. I don\'t need science anyway.");
                  §§push(-320);
                  §§push(-52);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc4_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr0168);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop4;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc4_)
                  {
                     break;
                  }
                  break loop4;
               }
               §§goto(addr0168);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,_loc1_);
            addr0168:
         }
         _loc2_ = §&!S§.scale(0.5);
         _loc1_ = new § 6§(student.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Oh, so that\'s why...");
                  §§push(180);
                  §§push(188);
                  if(_loc4_)
                  {
                     if(_loc2_ == null)
                     {
                        if(_loc4_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else if(_loc2_ >= 0)
                     {
                        §§push(_loc2_ / 2.5);
                        break;
                     }
                  }
                  §§push(_loc2_);
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               if(!_loc4_)
               {
                  break;
               }
            }
            § !C§("that\'s");
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0295);
         }
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               §§push(dialog);
               §§push("Let me get back to you on this.");
               §§push(120);
               §§push(280);
               if(!_loc3_)
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
                              §§push(§§pop());
                              break loop9;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop8;
                           }
                        }
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     §§push(null);
                     break loop8;
                  }
               }
               §§push(null);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  break;
               }
               break loop8;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
            addr0295:
            return;
         }
         §§push(§§pop() / 2.5);
         break loop9;
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.placeAt(7.2,14);
         while(true)
         {
            if(_loc4_)
            {
               child.spritesheet.§,=§(104);
               if(!_loc4_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(true);
            break;
         }
         student.placeAt(6.7,13.3);
         student.spritesheet.§,=§(56);
         student.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("You know, \"school\" science doesn\'t have to be boring.");
                  §§push(0);
                  §§push(-300);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              addr00a3:
                              §§push(null);
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
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
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr00a3);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         var _loc2_:* = §&!S§.width(820);
         _loc1_ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("My teachers all say that.");
                  §§push(-300);
                  §§push(148);
                  if(_loc4_)
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
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    break loop4;
                                 }
                                 break loop3;
                              }
                              break;
                           }
                           §§push(null);
                           if(!_loc4_)
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
                  }
                  §§push(null);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop3;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc2_ = §&!S§.width(960);
         if(!_loc3_)
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
                     §§push("And they\'re always, always wrong.");
                     §§push(180);
                     §§push(288);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop7;
                              }
                              break loop6;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop6;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop6;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),-1,null);
               if(_loc4_)
               {
                  § !C§("always ");
               }
            }
            §§push(§§pop() / 2.5);
            break loop7;
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
               child.placeAt(7.2,14);
               if(!_loc4_)
               {
                  child.spritesheet.§,=§(103);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            child.spritesheet.§@S§(true);
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
                     §§push("Stop what?");
                     §§push(-100);
                     §§push(-240);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    addr008b:
                                    §§push(§§pop());
                                    break loop2;
                                 }
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop1;
                              }
                           }
                           addr009e:
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr009e);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         var _loc2_:* = §&!S§.width(830);
         if(!_loc4_)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Talking about school science.");
                     §§push(-320);
                     §§push(28);
                     if(!_loc4_)
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
                                    §§push(null);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop5;
                                    }
                                    break loop4;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop6;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop4;
                        }
                     }
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,null);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("It\'s boring! Talk about movie science instead!");
                     §§push(120);
                     §§push(260);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc4_)
                                 {
                                    addr019f:
                                    §§push(null);
                                    if(!_loc4_)
                                    {
                                       break loop10;
                                    }
                                    break loop8;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    break loop8;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break;
                                 }
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop8;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop9;
                        }
                        break;
                     }
                     §§goto(addr019f);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc1_);
            }
            §§push(§§pop());
            break loop9;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.placeAt(7.2,14);
         while(true)
         {
            if(!_loc3_)
            {
               child.spritesheet.§,=§(97);
               child.spritesheet.§@S§(true);
               if(!_loc4_)
               {
                  break;
               }
               student.placeAt(6.7,13.2);
               student.spritesheet.§,=§(46);
               if(_loc3_)
               {
                  break;
               }
            }
            student.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(2400);
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
                     §§push("Science is the process of forming hypotheses, and trying to disprove them experimentally.");
                     §§push(-60);
                     §§push(-252);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           while(true)
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
                                    addr00a9:
                                    §§push(§§pop());
                                    break loop2;
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
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop1;
                           }
                           addr00bd:
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00bd);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
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
                     §§push("There\'s no dress code.");
                     §§push(340);
                     §§push(-80);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    addr0141:
                                    §§push(§§pop());
                                    break loop6;
                                 }
                                 break loop5;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop5;
                              }
                           }
                           addr0154:
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           break loop5;
                        }
                        §§goto(addr0141);
                     }
                     §§goto(addr0154);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(_loc4_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  §§push(dialog);
                  §§push("Stop. Stop!");
                  §§push(40);
                  §§push(280);
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
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    break loop9;
                                 }
                                 break loop8;
                              }
                              break;
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop8;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop8;
                     }
                  }
                  §§push(null);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop8;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop9;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 36;
               if(_loc8_)
               {
                  break;
               }
               _loc1_.y = 143;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.z = 862;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.8115781021773631)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            §§push(_loc2_);
            §§push(-0.251);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.03);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.968);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc9_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(0.8115781021773631));
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc9_)
                  {
                     break loop3;
                  }
                  while(true)
                  {
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(_loc2_.z);
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc9_)
                        {
                           break loop4;
                        }
                        §§push(_loc2_.w);
                     }
                     §§push(_loc2_.w);
                     break;
                  }
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(_loc9_)
               {
                  break loop3;
               }
               break;
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(!_loc8_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc5_:* = §§pop();
            loop7:
            while(true)
            {
               if(_loc9_)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc8_)
                                 {
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          break loop12;
                                       }
                                       §§push(_loc5_);
                                    }
                                    else
                                    {
                                       §§push(-_loc5_);
                                    }
                                    §§push(§§pop() < 1e-10);
                                    if(_loc9_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       break loop11;
                                    }
                                    if(!_loc9_)
                                    {
                                       break loop9;
                                    }
                                    §§push(_loc4_);
                                    if(_loc8_)
                                    {
                                       break loop8;
                                    }
                                 }
                                 §§push(0);
                                 break;
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break loop8;
                              }
                              if(_loc9_)
                              {
                                 _loc2_.x = 0;
                                 _loc2_.y = 0;
                                 _loc2_.z = 0;
                                 break loop9;
                              }
                              §§goto(addr0226);
                           }
                           §§goto(addr0252);
                        }
                        §§goto(addr0214);
                     }
                     _loc2_.w = 1;
                     if(!_loc8_)
                     {
                        break loop11;
                     }
                     break loop7;
                  }
                  _loc4_ = Number(§§pop());
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  while(true)
                  {
                     if(_loc9_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().z = §§pop();
                        if(_loc9_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           if(!_loc9_)
                           {
                              break;
                           }
                           tunnel.camera.reset();
                        }
                        tunnel.display(0);
                     }
                     addr0226:
                     child.placeAt(7.2,14);
                     if(_loc9_)
                     {
                        break;
                     }
                     addr025e:
                     student.spritesheet.§,=§(94);
                     if(_loc8_)
                     {
                        break loop7;
                     }
                  }
                  child.spritesheet.§,=§(103);
                  child.spritesheet.§@S§(true);
                  if(_loc9_)
                  {
                     addr0252:
                     student.placeAt(6.7,13.2);
                  }
                  §§goto(addr025e);
               }
               student.spritesheet.§@S§(true);
               break;
            }
            var _loc6_:* = §&!S§.width(1340);
            var _loc7_:§ 7§ = new § 6§(child.§<!U§());
            if(!_loc8_)
            {
               loop14:
               while(true)
               {
                  loop15:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("So if you\'re a scientist, where\'s your lab coat?");
                     §§push(-240);
                     §§push(-172);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(!_loc8_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc9_)
                                 {
                                    §§push(null);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                       break loop15;
                                    }
                                    break loop14;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc8_)
                              {
                                 break loop14;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop14;
                        }
                     }
                     §§push(null);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop14;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,_loc7_);
               }
               §§push(§§pop() / 2.5);
               break loop15;
            }
            _loc7_ = new § 6§(student.§<!U§());
            loop17:
            while(true)
            {
               if(_loc9_)
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
                           §§push("Huh?");
                           §§push(320);
                           §§push(0);
                           if(_loc9_)
                           {
                              §§push(null);
                              if(!_loc8_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(!_loc8_)
                                    {
                                       addr0358:
                                       §§push(null);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       break loop18;
                                    }
                                    addr0372:
                                    §§push(null);
                                    if(_loc9_)
                                    {
                                       break loop18;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(!_loc8_)
                                    {
                                       if(§§pop() < 0)
                                       {
                                          §§goto(addr0372);
                                       }
                                       else
                                       {
                                          §§push(null);
                                       }
                                    }
                                 }
                                 §§push(§§pop() / 2.5);
                                 break loop19;
                              }
                              break;
                           }
                           §§goto(addr0358);
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc7_);
                     if(_loc8_)
                     {
                        break loop17;
                     }
                  }
                  §§push(§§pop());
                  break loop19;
               }
               loop21:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I don\'t need one.");
                     §§push(260);
                     §§push(220);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 addr03d2:
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop());
                                    break;
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
                                 break loop21;
                              }
                           }
                           §§push(null);
                           if(_loc9_)
                           {
                              §§push(§§pop());
                              break;
                           }
                        }
                        break loop21;
                     }
                     §§goto(addr03d2);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
                  break loop17;
               }
               §§push(§§pop() / 2.5);
               break loop22;
            }
            return;
         }
         §§push(Number(§§pop()));
         break loop4;
      }
   }
}

