package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§`! §;
   import layout3d.§>N§;
   import §6!Q§.§]u§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import openfl.Assets;
   import openfl.Lib;
   
   public class Affliction extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var student:StageActor;
      
      public var gentleman:StageActor;
      
      public function Affliction()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(§>K§.§>y§,3,null,{"noCrumblingTiles":true});
            while(true)
            {
               if(!_loc1_)
               {
                  §§push(§§findproperty(frames));
                  §§push(frame0);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame1);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame2);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame3);
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
               name = "Affliction";
               break;
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            tunnel = null;
            while(true)
            {
               if(!_loc1_)
               {
                  student = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  gentleman = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
               sprites.length = 0;
               break;
            }
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:§+#§ = §+#§.§<!4§();
         § L§.high = 208883;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  §§push(true);
                  if(!param2)
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(§!!6§ == 4);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        Main.instance.§,Z§(null);
                     }
                     break loop0;
                  }
                  §]u§.§@!A§().§5!@§ = false;
               }
               §§push(_loc3_.§>c§());
               if(_loc5_)
               {
                  §§push(!Boolean(§§pop()));
               }
               if(§§pop())
               {
                  break;
               }
               break loop0;
            }
            §+#§.§1!"§(_loc3_);
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
               student = new StageActor(section,CharacterRegistry.student,false,null,false,null);
               if(!_loc6_)
               {
                  break;
               }
               student.billboardMode = true;
               if(_loc5_)
               {
                  break;
               }
            }
            sprites.push(student);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc6_)
            {
               student.goesTo = new § !N§(_loc2_,5);
               if(!_loc6_)
               {
                  break;
               }
               gentleman = new StageActor(section,CharacterRegistry.gentleman,false,null,false,null);
               if(_loc5_)
               {
                  break;
               }
               gentleman.billboardMode = true;
               if(!_loc6_)
               {
                  break;
               }
            }
            sprites.push(gentleman);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc6_)
         {
            gentleman.goesTo = new § !N§(_loc4_,3);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               student.placeAt(12.4,57.8);
               if(_loc2_)
               {
                  student.spritesheet.§,=§(70);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            student.spritesheet.§@S§(true);
            if(_loc2_)
            {
               gentleman.spritesheet.§,=§(74);
               if(!_loc2_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc2_)
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
                     §§push("Want to do another test?");
                     §§push(80);
                     §§push(-360);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 addr00a5:
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                              addr00bd:
                              §§push(null);
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr00bd);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                           §§push(§§pop() / 2.5);
                           break loop2;
                        }
                        break;
                     }
                     §§goto(addr00a5);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop2;
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc2_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("No.");
               §§push(-120);
               §§push(0);
               if(_loc2_)
               {
                  §§push(-1);
                  if(_loc2_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           addr012a:
                           §§push(null);
                           break;
                        }
                        addr013e:
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
                        if(!_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr013e);
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
               §§goto(addr012a);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(student.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("It\'s worth testing!");
                     §§push(240);
                     §§push(140);
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    break loop7;
                                 }
                                 §§goto(addr01e9);
                                 §§push(§§pop());
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    break loop7;
                                 }
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop6;
                        }
                     }
                     §§push(null);
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop6;
                  }
                  §§goto(addr01e9);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               addr01e9:
               if(_loc3_)
               {
                  break;
               }
               while(true)
               {
                  §§push(dialog);
                  §§push("No.");
                  §§push(-120);
                  §§push(200);
                  if(!_loc3_)
                  {
                     §§push(-1);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              addr0235:
                              §§push(null);
                              break;
                           }
                           addr0249:
                           §§push(-1);
                           if(_loc2_)
                           {
                              §§push(§§pop());
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
                                 §§goto(addr0249);
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
                  §§goto(addr0235);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),1,null);
               if(!_loc2_)
               {
                  break;
               }
               § !C§("No.");
               if(_loc3_)
               {
                  break;
               }
            }
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Then I don\'t know what you expect me to do.");
                  §§push(120);
                  §§push(340);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        break;
                     }
                     while(true)
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
                              §§goto(addr02f3);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop10;
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
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop10;
               }
               §§goto(addr02f3);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),2,null);
            addr02f3:
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            student.spritesheet.§,=§(94);
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
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
                     §§push("Unacceptable.");
                     §§push(0);
                     §§push(-380);
                     if(!_loc2_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr0064:
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop0;
                              }
                           }
                           §§push(null);
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                              break loop1;
                           }
                           break loop0;
                        }
                        break;
                     }
                     §§goto(addr0064);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("My project calls for a great deal of capital. To optimize my income, I must be able to move freely while attracting power cells.");
                  §§push(100);
                  §§push(80);
                  if(_loc3_)
                  {
                     loop5:
                     while(true)
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
                                    addr00f8:
                                    §§push(null);
                                    break loop4;
                                 }
                                 break;
                              }
                              §§push(-1);
                              if(_loc2_)
                              {
                                 break loop5;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           addr011c:
                           §§push(-1 / 2.5);
                           break loop4;
                        }
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr011c);
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr00f8);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),null,_loc1_);
               if(!_loc3_)
               {
                  break;
               }
            }
            § !C§("must");
            if(!_loc2_)
            {
               loop7:
               while(true)
               {
                  §§push(dialog);
                  §§push("My time and dignity are too valuable to waste being tossed about as if riding a hurricane.");
                  §§push(-160);
                  §§push(340);
                  if(_loc3_)
                  {
                     loop8:
                     while(true)
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
                                    addr017e:
                                    §§push(null);
                                    break loop7;
                                 }
                                 break;
                              }
                              §§push(-1);
                              if(!_loc3_)
                              {
                                 break loop8;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(-1);
                           break loop8;
                        }
                        §§push(-1);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           break loop7;
                        }
                        break;
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr017e);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),1,null);
            }
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               student.placeAt(12.4,56.7);
               if(!_loc7_)
               {
                  break;
               }
            }
            student.spritesheet.§,=§(93);
            if(!_loc8_)
            {
               student.spritesheet.§@S§(false);
            }
            break;
         }
         §§push(dialog);
         §§push(Assets.getText("text/wall/Affliction.txt"));
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:TextField = §§pop().§`!^§(§§pop(),0,0,§&!S§.scale(0.7));
         var _loc2_:* = §&!S§.scale(1.3);
         var _loc3_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc8_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Excuse me.");
               §§push(0);
               §§push(-40);
               if(!_loc8_)
               {
                  if(_loc2_ == null)
                  {
                     if(_loc7_)
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
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc3_);
         }
         var _loc4_:§'§ = dialog;
         if(int(_loc4_.§+j§.length) > 0)
         {
            §§push(_loc4_.§+j§);
            §§push(int(_loc4_.§+j§.length));
            if(_loc7_)
            {
               §§push(§§pop() - 1);
            }
            §§push(§§pop()[§§pop()]);
         }
         else
         {
            §§push(null);
         }
         §§pop().§-7§.setTextFormat(new TextFormat(Main.§6i§,null,null,true));
         if(!_loc8_)
         {
            _loc1_.alpha = 0.7;
            _loc1_.x = 0;
            if(_loc7_)
            {
               _loc1_.y = 0;
            }
         }
         _loc1_.autoSize = "none";
         if(!_loc8_)
         {
            _loc1_.width = Lib.get_current().stage.stageWidth;
         }
         var _loc5_:§'§ = dialog;
         var _loc6_:§'§ = dialog;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.height = (int(_loc5_.§+j§.length) > 0 ? _loc5_.§+j§[int(_loc5_.§+j§.length) - 1] : null).y + (int(_loc6_.§+j§.length) > 0 ? _loc6_.§+j§[int(_loc6_.§+j§.length) - 1] : null).height * 1.1;
               if(_loc8_)
               {
                  break;
               }
            }
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Do you have a solution\nor don\'t you?");
                  §§push(-280);
                  §§push(80);
                  if(!_loc8_)
                  {
                     §§push(null);
                     if(!_loc7_)
                     {
                        break loop3;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc8_)
                        {
                           §§push(null);
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr026b);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc8_)
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
                  if(!_loc8_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§goto(addr026b);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),0,null);
            addr026b:
            break;
         }
         _loc3_ = new § 6§(student.§<!U§());
         loop5:
         while(true)
         {
            if(!_loc8_)
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
                        §§push(280);
                        §§push(200);
                        if(_loc7_)
                        {
                           §§push(-1);
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 §§push(null);
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(-1);
                              if(!_loc7_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(-1);
                                 break loop6;
                              }
                           }
                        }
                        §§push(-1);
                        if(_loc7_)
                        {
                           break;
                        }
                        break loop6;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc3_);
                  if(_loc8_)
                  {
                     break loop5;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop7;
            }
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Hold onto the floor.");
                     §§push(360);
                     §§push(320);
                     if(!_loc8_)
                     {
                        §§push(-1);
                        if(_loc8_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc7_)
                           {
                              §§push(null);
                              break loop10;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop9;
                           }
                        }
                     }
                     §§push(-1);
                     if(_loc7_)
                     {
                        break;
                     }
                     break loop9;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1000 == null ? null : int(Math.round(1000 / 2.5)),2,null);
               break loop5;
            }
            §§push(§§pop() / 2.5);
            break loop10;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc5_)
            {
               _loc1_.x = -60;
               _loc1_.y = -20;
               if(_loc5_)
               {
                  _loc1_.z = 4600;
                  QuaternionUtils.setFromEuler(3.141592653589793,1.5707963267948966,0.3141592653589793,tunnel.camera.§,t§);
                  tunnel.camera.reset();
                  tunnel.display(0);
                  if(!_loc5_)
                  {
                     break;
                  }
                  gentleman.placeAt(13,57);
                  gentleman.spritesheet.§,=§(46);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               gentleman.spritesheet.§@S§(true);
            }
            student.placeAt(12.4,56);
            if(_loc5_)
            {
               student.spritesheet.§,=§(70);
               if(_loc5_)
               {
                  student.spritesheet.§@S§(true);
                  break;
               }
            }
            §§goto(addr014a);
         }
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  §§push(dialog);
                  §§push("Ah, we meet again. Good morning.");
                  §§push(-80);
                  §§push(-320);
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 §§push(null);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    break loop10;
                                 }
                                 break loop9;
                              }
                              break;
                           }
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop11;
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
                  if(_loc5_)
                  {
                     break;
                  }
                  break loop9;
               }
               §§push(§§pop());
               break;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr014a:
            var _loc2_:* = §&!S§.width(1500);
            var _loc3_:§ 7§ = new § 6§(gentleman.§<!U§());
            if(_loc5_)
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
                        §§push("I take it you\'ve arrived at a solution to my affliction?");
                        §§push(-240);
                        §§push(60);
                        if(_loc5_)
                        {
                           while(true)
                           {
                              §§push(null);
                              if(_loc5_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(null);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop());
                                          break loop2;
                                       }
                                       break loop1;
                                    }
                                    break;
                                 }
                                 §§push(null);
                                 if(_loc4_)
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
                        }
                        §§push(null);
                        if(_loc5_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),0,_loc3_);
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
            _loc3_ = new § 6§(student.§<!U§());
            if(_loc5_)
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
                           §§push("Not quite.");
                           §§push(280);
                           §§push(200);
                           if(_loc5_)
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break;
                              }
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    break loop5;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc5_)
                                 {
                                    break loop6;
                                 }
                                 §§goto(addr0248);
                              }
                           }
                           §§push(null);
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              break loop7;
                           }
                           break loop6;
                        }
                        §§goto(addr0242);
                     }
                     §§goto(addr025b);
                  }
                  if(§§pop() < 0)
                  {
                     break;
                  }
                  §§goto(addr0248);
                  §§push(null);
               }
               §§pop().§";§(§§pop(),§§pop(),null,!_loc4_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc3_);
               addr025b:
            }
            return;
         }
         §§push(§§pop() / 2.5);
         break loop10;
      }
   }
}

