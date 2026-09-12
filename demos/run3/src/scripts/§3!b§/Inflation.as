package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class Inflation extends §+Z§
   {
      
      public static var §2#§:* = {
         "obj":{"billboardMode":null},
         "fields":{"child":{"fade":null}}
      };
      
      public var gentleman:§^s§;
      
      public var duplicator:§^s§;
      
      public var child:§^s§;
      
      public function Inflation()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§,[§,-1);
               if(_loc1_)
               {
                  break;
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc1_)
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
               §§push(frame3);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame4);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame5);
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
            name = "Inflation";
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
               if(!_loc1_)
               {
                  break;
               }
               gentleman = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            duplicator = null;
            if(_loc1_)
            {
               child = null;
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr005d);
            }
            break;
         }
         sprites.length = 0;
         addr005d:
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
               gentleman = new §^s§(§9_§,§'O§.gentleman,false,null,false,null);
               if(_loc8_)
               {
                  break;
               }
               gentleman.billboardMode = true;
               if(!_loc7_)
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
         loop1:
         while(true)
         {
            if(!_loc8_)
            {
               gentleman.goesTo = new § !N§(_loc2_,-1);
               while(true)
               {
                  if(_loc7_)
                  {
                     duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,null);
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  duplicator.billboardMode = true;
                  if(!_loc8_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            sprites.push(duplicator);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         while(true)
         {
            if(_loc7_)
            {
               duplicator.goesTo = new § !N§(_loc4_,-1);
               if(_loc8_)
               {
                  break;
               }
               child = new §^s§(§9_§,§'O§.child,true,null,false,null);
               if(_loc8_)
               {
                  break;
               }
            }
            child.billboardMode = true;
            if(_loc7_)
            {
               break;
            }
            §§goto(addr0152);
         }
         sprites.push(child);
         addr0152:
         §§push(§!^§.pathName);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc5_);
         if(_loc7_)
         {
            child.goesTo = new § !N§(_loc6_,-1);
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         gentleman.§9E§(2,2);
         gentleman.spritesheet.§,=§(71);
         if(_loc3_)
         {
            gentleman.spritesheet.§@S§(false);
            duplicator.§9E§(3,3);
            duplicator.spritesheet.§,=§(79);
            duplicator.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(2200);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("You don\'t even believe in inflation. You collected twenty thousand of those things!");
                  §§push(-100);
                  §§push(-292);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              addr00a6:
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop0;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
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
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break;
                        }
                     }
                     break loop0;
                  }
                  §§goto(addr00a6);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = §&!S§.width(1370);
         _loc2_ = new § 6§(gentleman.§<!U§());
         if(!_loc4_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("How in the Universe did you come by that data?!");
                  §§push(300);
                  §§push(-112);
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
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                              §§goto(addr016f);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
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
                        break loop2;
                     }
                  }
                  §§push(null);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop2;
               }
               §§goto(addr016f);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr016f:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         loop5:
         while(true)
         {
            if(_loc3_)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Guessed. How close was I?");
                     §§push(-120);
                     §§push(240);
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
                                       break loop7;
                                    }
                                    break loop6;
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
                           break loop6;
                        }
                     }
                     §§push(null);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop6;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
                  if(!_loc3_)
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
               while(true)
               {
                  §§push(dialog);
                  §§push("No comment.");
                  §§push(320);
                  §§push(320);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              addr023d:
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop9;
                           }
                           addr0256:
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop9;
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
                                 break loop9;
                              }
                              §§goto(addr0256);
                           }
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr023d);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),1,null);
               break loop5;
            }
            §§push(§§pop() / 2.5);
            break loop10;
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         gentleman.§9E§(2,2);
         gentleman.spritesheet.§,=§(78);
         gentleman.spritesheet.§@S§(false);
         duplicator.§9E§(3,3);
         duplicator.spritesheet.§,=§(77);
         duplicator.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(1900);
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("The Government wishes to delay the inevitable onset of inflation.");
                  §§push(40);
                  §§push(-232);
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
                              if(!_loc3_)
                              {
                                 §§goto(addr00d2);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
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
                        break loop0;
                     }
                  }
                  §§push(null);
                  if(_loc4_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§goto(addr00d2);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00d2:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         loop3:
         while(true)
         {
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
                        §§push("Now look who\'s spouting nonsense.");
                        §§push(-220);
                        §§push(220);
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 §§push(null);
                                 if(!_loc3_)
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
                              if(_loc3_)
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
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
                  if(!_loc4_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop5;
            }
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("\"Inflation\" is just an excuse not to end poverty!");
                        §§push(120);
                        §§push(320);
                        if(_loc4_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop8;
                              }
                              §§goto(addr01cf);
                           }
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop8;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr01e8);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr01d5);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,null);
            addr01e8:
            break;
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
               gentleman.§9E§(2,2);
               gentleman.spritesheet.§,=§(76);
               if(_loc3_)
               {
                  break;
               }
               gentleman.spritesheet.§@S§(false);
            }
            duplicator.§9E§(3,3);
            duplicator.spritesheet.§,=§(80);
            break;
         }
         duplicator.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("The Government is trying to keep us all poor!");
                  §§push(0);
                  §§push(-300);
                  if(_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc2_)
                                 {
                                    addr009f:
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop2;
                                    }
                                    break loop1;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
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
                        §§push(null);
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr009f);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop2;
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Amusing, but false.");
                  §§push(360);
                  §§push(-60);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr013a:
                              §§goto(addr015e);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop5;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop5;
                           }
                        }
                        addr014c:
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop5;
                     }
                     §§goto(addr013a);
                  }
                  §§goto(addr014c);
               }
               §§goto(addr015e);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr015e:
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(_loc2_)
         {
            loop7:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Then what\'s your explanation?");
                  §§push(-60);
                  §§push(240);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              addr01bb:
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop7;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop7;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop7;
                           }
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break;
                        }
                     }
                     break loop7;
                  }
                  §§goto(addr01bb);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop8;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            gentleman.§9E§(2,2);
            gentleman.spritesheet.§,=§(73);
            gentleman.spritesheet.§@S§(false);
            duplicator.§9E§(3,3);
         }
         duplicator.spritesheet.§,=§(65);
         duplicator.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(1240);
         if(_loc4_)
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
                     §§push("I spent the day collecting power cells.");
                     §§push(-240);
                     §§push(-312);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr0095:
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                              addr00af:
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop0;
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
                                    break loop0;
                                 }
                                 §§goto(addr00af);
                              }
                           }
                           §§push(§§pop());
                           break loop1;
                        }
                        break;
                     }
                     §§goto(addr0095);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
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
                     while(true)
                     {
                        §§push(dialog);
                        §§push("I made a whole year\'s wages!");
                        §§push(60);
                        §§push(-140);
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                              §§goto(addr014b);
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0156);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0151);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,_loc2_);
            addr0156:
         }
         _loc1_ = §&!S§.width(1200);
         _loc2_ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  §§push(dialog);
                  §§push("And do you understand the consequences?");
                  §§push(220);
                  §§push(268);
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
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    break loop8;
                                 }
                                 break loop7;
                              }
                              break;
                           }
                           §§push(null);
                           if(!_loc4_)
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
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop7;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop8;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         gentleman.§9E§(2,2);
         gentleman.spritesheet.§,=§(75);
         if(_loc4_)
         {
            gentleman.spritesheet.§@S§(false);
            if(!_loc3_)
            {
               duplicator.§9E§(3,3);
            }
         }
         duplicator.spritesheet.§,=§(77);
         duplicator.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(2200);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
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
                        §§push("At first I thought it was a conspiracy to keep the public unaware of alien technology.");
                        §§push(-100);
                        §§push(-232);
                        if(_loc4_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() != null)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr00d2);
                  }
                  §§goto(addr00dd);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00d8);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00dd:
         }
         _loc1_ = §&!S§.width(1350);
         _loc2_ = new § 6§(gentleman.§<!U§());
         if(_loc4_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("At what point did you comprehend your mistake?");
                  §§push(220);
                  §§push(228);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr0156:
                              §§goto(addr017c);
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
                        addr0169:
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§goto(addr0156);
                  }
                  §§goto(addr0169);
               }
               §§goto(addr017c);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr017c:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  §§push(dialog);
                  §§push("Yesterday.");
                  §§push(-260);
                  §§push(340);
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
                                 addr01d4:
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
                           if(_loc3_)
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
                  §§goto(addr01d4);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc8_)
         {
            _loc1_.x = 144;
            while(true)
            {
               if(_loc9_)
               {
                  _loc1_.y = 137;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc1_.z = 137;
               break;
            }
         }
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
         §§push(Number(Math.sin(0.8290313946973066)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.333);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(0.519);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            while(true)
            {
               if(_loc9_)
               {
                  break loop2;
               }
               addr00c4:
               _loc2_.w = Number(Math.cos(0.8290313946973066));
               break;
            }
            addr00d1:
            §§push(_loc2_.x);
            if(_loc9_)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.x);
                        if(_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              break loop4;
                           }
                           §§push(_loc2_.y);
                           §§push(_loc2_.y);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              break loop5;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                           §§push(_loc2_.z);
                        }
                        §§push(_loc2_.z);
                        if(_loc9_)
                        {
                           break;
                        }
                        addr0126:
                        §§push(§§pop() * §§pop());
                        break loop5;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc2_.w);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§goto(addr0126);
                     §§push(_loc2_.w);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
            }
            break loop4;
         }
         §§push(_loc2_);
         §§push(-0.788);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc3_);
         }
         §§pop().z = §§pop();
         if(!_loc8_)
         {
            §§goto(addr00c4);
         }
         §§goto(addr00d1);
      }
   }
}

