package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §2!"§.§8f§;
   import §<!&§.§%!§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class Teapot extends §+Z§
   {
      
      public static var §2#§:* = {"fields":{"child":{"fade":null}}};
      
      public var §-P§:§^s§;
      
      public var pastafarian:§^s§;
      
      public var child:§^s§;
      
      public function Teapot()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§2s§,1,null,{"endTiles":false});
               if(!_loc2_)
               {
                  break;
               }
            }
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
            if(_loc2_)
            {
               name = "Teapot";
            }
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
            }
            pastafarian = null;
            if(_loc1_)
            {
               §-P§ = null;
               if(_loc2_)
               {
                  break;
               }
               child = null;
               if(!_loc1_)
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
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(!_loc7_)
         {
            pastafarian = new §^s§(§9_§,§'O§.pastafarian,false,null,false,null);
            if(!_loc7_)
            {
               sprites.push(pastafarian);
            }
         }
         §§push(§!^§.pathName);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc7_)
            {
               pastafarian.goesTo = new § !N§(_loc2_,1);
               if(!_loc8_)
               {
                  break;
               }
            }
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            if(_loc8_)
            {
               sprites.push(§-P§);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         while(true)
         {
            if(_loc8_)
            {
               §-P§.goesTo = new § !N§(_loc4_,1);
               if(_loc7_)
               {
                  break;
               }
               child = new §^s§(§9_§,§'O§.child,true,null,false,null);
               if(_loc7_)
               {
                  break;
               }
            }
            sprites.push(child);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc5_);
         if(!_loc7_)
         {
            child.goesTo = new § !N§(_loc6_,1);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §-P§.§9E§(0.75,1.18);
            if(_loc3_)
            {
               §-P§.spritesheet.§,=§(70);
               §-P§.spritesheet.§@S§(false);
               pastafarian.spritesheet.§,=§(98);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Can I see it?");
                     §§push(-360);
                     §§push(-360);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(!_loc4_)
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
                                    addr007f:
                                    §§push(§§pop());
                                    break loop1;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc4_)
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
                           addr0093:
                           §§push(null);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop0;
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr0093);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Certainly not! Even if it was illuminated, it would be far too small.");
                        §§push(260);
                        §§push(-280);
                        if(_loc3_)
                        {
                           §§push(-1);
                           if(_loc4_)
                           {
                              break loop3;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 §§push(null);
                                 break;
                              }
                           }
                           else
                           {
                              §§push(-1);
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(-1);
                                 break loop3;
                              }
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
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1500 == null ? null : int(Math.round(1500 / 2.5)),null,null);
                  }
                  §§push(§§pop() / 2.5);
                  break loop4;
               }
               §§push(§§pop() / 2.5);
               break loop1;
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
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
                     §§push("Then how do you know about it?");
                     §§push(-200);
                     §§push(-120);
                     if(!_loc4_)
                     {
                        §§push(-1);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc3_)
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
                     if(!_loc4_)
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
         var _loc2_:* = §&!S§.width(2000);
         _loc1_ = new § 6§(pastafarian.§<!U§());
         loop8:
         while(true)
         {
            if(_loc3_)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Simple. The Flying Spaghetti Monster places a teapot in every solar system.");
                     §§push(112);
                     §§push(348);
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc4_)
                                 {
                                    addr021d:
                                    §§push(null);
                                    if(_loc3_)
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
                                 break loop9;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop9;
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop9;
                     }
                     §§goto(addr021d);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),1,_loc1_);
                  if(!_loc3_)
                  {
                     break loop8;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop10;
            }
            § !C§("every");
            if(!_loc4_)
            {
               dialog.§ q§("Never mind...",-1200,1100,§&!S§.scale(0.4));
            }
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            pastafarian.§9E§(0.08,1.2);
            pastafarian.spritesheet.§,=§(97);
            pastafarian.spritesheet.§@S§(true);
            loop0:
            while(true)
            {
               if(!_loc4_)
               {
                  §-P§.§9E§(0.75,1.2);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §-P§.spritesheet.§,=§(75);
               §-P§.spritesheet.§@S§(true);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Listen, I don\'t want to stifle anyone\'s creativity.");
                     §§push(20);
                     §§push(-320);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 addr0090:
                                 §§push(null);
                                 if(_loc3_)
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
                              if(_loc4_)
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
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              break;
                           }
                        }
                        break loop1;
                     }
                     §§goto(addr0090);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
                  break loop0;
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
         }
         var _loc1_:* = §&!S§.width(1600);
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
                  §§push("But if you doodle, please at least draw things that exist. Ok?");
                  §§push(-20);
                  §§push(-152);
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 addr012a:
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    break loop4;
                                 }
                                 break loop3;
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
                        break loop3;
                     }
                     §§push(null);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop3;
                  }
                  §§goto(addr012a);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),-1,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc2_ = new § 6§(pastafarian.§<!U§());
         loop6:
         while(true)
         {
            if(!_loc4_)
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
                        §§push("Fortunately, the Teapot does exist!");
                        §§push(200);
                        §§push(256);
                        if(!_loc4_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    break loop8;
                                 }
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop7;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop7;
                              }
                           }
                        }
                        §§push(null);
                        if(!_loc4_)
                        {
                           break;
                        }
                        break loop7;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
                  if(_loc4_)
                  {
                     break loop6;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop8;
            }
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("It\'s right over there.");
                  §§push(80);
                  §§push(364);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              addr0239:
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop10;
                           }
                           addr0253:
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop10;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop10;
                              }
                              §§goto(addr0253);
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     break loop10;
                  }
                  §§goto(addr0239);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
               break loop6;
            }
            §§push(§§pop() / 2.5);
            break loop11;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:§%!§ = new §%!§(tunnel,false,new §8f§("MapWithTeapot.png",40,25));
         var _loc2_:Point3D = _loc1_.transform.§%!7§;
         _loc2_.x = 232;
         _loc2_.y = -20;
         _loc2_.z = 80;
         while(true)
         {
            if(_loc5_)
            {
               §4!R§.§1!A§(1.5707963267948966,1.5707963267948966,0,_loc1_.transform.§,t§);
               _loc1_.transform.reset();
               tunnel.§`=§(_loc1_);
               §4!R§.§1!A§(0,-1.5707963267948966,-0.039269908169872414,tunnel.§<!M§.§,t§);
               if(_loc5_)
               {
                  tunnel.§<!M§.§%!7§.x = 180;
                  if(!_loc5_)
                  {
                     break;
                  }
                  tunnel.§<!M§.§%!7§.y = 0;
                  tunnel.§<!M§.§%!7§.z = -70;
                  tunnel.§<!M§.reset();
               }
            }
            tunnel.display(0);
            §-P§.§9E§(0.75,1.2);
            §-P§.spritesheet.§,=§(64);
            §-P§.spritesheet.§@S§(true);
            if(!_loc4_)
            {
               pastafarian.§9E§(0.15,1.1);
               pastafarian.spritesheet.§,=§(96);
               if(!_loc4_)
               {
                  break;
               }
               child.spritesheet.§,=§(96);
               addr0140:
               var _loc3_:§ 7§ = new § 6§(§-P§.§<!U§());
               if(_loc5_)
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
                           §§push("Did you draw\non my map?");
                           §§push(-244.8);
                           §§push(-165.2);
                           if(_loc5_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(null);
                                       if(_loc5_)
                                       {
                                          addr018a:
                                          §§push(§§pop());
                                          break loop2;
                                       }
                                       break loop1;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= 0)
                                    {
                                       §§push(null);
                                       break loop1;
                                    }
                                 }
                                 addr019d:
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                              §§goto(addr018a);
                           }
                           §§goto(addr019d);
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc3_);
                  }
                  §§push(§§pop() / 2.5);
                  break loop2;
               }
               _loc3_ = new § 6§(pastafarian.§<!U§());
               if(!_loc4_)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("Of course I did.\nThe Teapot was missing.");
                              §§push(240);
                              §§push(-120);
                              if(_loc5_)
                              {
                                 §§push(null);
                                 if(!_loc5_)
                                 {
                                    break;
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
                                    if(_loc5_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr0237);
                                 }
                              }
                              §§push(null);
                              if(_loc5_)
                              {
                                 break;
                              }
                              break loop5;
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§goto(addr0247);
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     §§goto(addr0237);
                     §§push(null);
                  }
                  §§pop().§";§(§§pop(),§§pop(),null,!_loc4_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc3_);
                  addr0247:
               }
               return;
               addr0129:
            }
            break;
         }
         child.§9E§(3.9,24.5,null,1);
         if(!_loc4_)
         {
            §§goto(addr0129);
         }
         §§goto(addr0140);
      }
   }
}

