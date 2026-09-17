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
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class YouThink extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var duplicator:StageActor;
      
      public var child:StageActor;
      
      public var §#!P§:StageActor;
      
      public function YouThink()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§,[§,4,YouThink.§3S§);
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
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame2);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr0080);
         }
         name = "You Think?";
         addr0080:
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc1_)
            {
               tunnel = null;
               while(true)
               {
                  if(!_loc2_)
                  {
                     §#!P§ = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  duplicator = null;
                  if(!_loc2_)
                  {
                     child = null;
                     if(_loc1_)
                     {
                        break;
                     }
                     break loop0;
                  }
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
            while(true)
            {
               if(_loc7_)
               {
                  §#!P§.billboardMode = true;
                  if(_loc6_)
                  {
                     break;
                  }
               }
               sprites.push(§#!P§);
               break;
            }
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("primary");
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               §#!P§.goesTo = new § !N§(_loc1_,49);
               while(true)
               {
                  if(_loc7_)
                  {
                     duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  duplicator.billboardMode = true;
                  if(!_loc6_)
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
         var _loc2_:* = §§pop();
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc2_);
         while(true)
         {
            if(_loc7_)
            {
               duplicator.goesTo = new § !N§(_loc3_,0);
               if(_loc6_)
               {
                  break;
               }
               child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
               if(!_loc7_)
               {
                  break;
               }
            }
            child.billboardMode = true;
            if(_loc7_)
            {
               sprites.push(child);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc4_);
         if(!_loc6_)
         {
            child.goesTo = new § !N§(_loc5_,1);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(1,0.7);
         §#!P§.spritesheet.§,=§(67);
         child.spritesheet.§,=§(42);
         duplicator.spritesheet.§,=§(71);
         duplicator.spritesheet.§@S§(false);
         while(true)
         {
            §§push(dialog);
            §§push("You know, I used to think you were an irresponsible idiot.");
            §§push(80);
            §§push(-340);
            if(_loc4_)
            {
               §§push(-1);
               if(_loc4_)
               {
                  if(§§pop() == null)
                  {
                     if(!_loc3_)
                     {
                        addr0074:
                        §§push(null);
                        break;
                     }
                     addr008a:
                     §§push(-1);
                     if(!_loc4_)
                     {
                        addr0099:
                        §§push(§§pop() / 2.5);
                        break;
                     }
                  }
                  else
                  {
                     §§push(-1);
                     if(_loc4_)
                     {
                        if(§§pop() < 0)
                        {
                           §§goto(addr008a);
                        }
                        else
                        {
                           §§push(-1);
                        }
                        §§goto(addr0099);
                     }
                  }
               }
               §§push(§§pop());
               break;
            }
            §§goto(addr0074);
         }
         §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1600 == null ? null : int(Math.round(1600 / 2.5)),null,null);
         var _loc1_:* = §&!S§.scale(0.7);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Dad, can we please not go?");
               §§push(-240);
               §§push(-220);
               if(!_loc3_)
               {
                  if(_loc1_ == null)
                  {
                     if(_loc4_)
                     {
                        §§push(null);
                        break;
                     }
                  }
                  else if(_loc1_ >= 0)
                  {
                     §§push(_loc1_ / 2.5);
                     break;
                  }
               }
               §§push(_loc1_);
               break;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Turns out, I was right.");
                  §§push(200);
                  §§push(-100);
                  if(!_loc3_)
                  {
                     §§push(-1);
                     if(_loc3_)
                     {
                        break loop2;
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
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(-1);
                           break loop2;
                        }
                     }
                  }
                  §§push(-1);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop2;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
         _loc1_ = §&!S§.scale(0.7);
         _loc2_ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("I don\'t like him.");
               §§push(-120);
               §§push(220);
               if(_loc4_)
               {
                  if(_loc1_ == null)
                  {
                     if(_loc4_)
                     {
                        §§push(null);
                        break;
                     }
                  }
                  else if(_loc1_ >= 0)
                  {
                     §§push(_loc1_ / 2.5);
                     break;
                  }
               }
               §§push(_loc1_);
               break;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
         }
         _loc1_ = §&!S§.scale(0.7);
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Me neither, but we have to.");
               §§push(-280);
               §§push(320);
               if(_loc4_)
               {
                  if(_loc1_ == null)
                  {
                     if(_loc4_)
                     {
                        addr028b:
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
               §§goto(addr028b);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §#!P§.placeAt(1,1);
         §#!P§.spritesheet.§,=§(66);
         if(!_loc3_)
         {
            child.placeAt(1.95,1);
            child.spritesheet.§,=§(98);
            duplicator.spritesheet.§,=§(72);
            if(_loc2_)
            {
               duplicator.spritesheet.§@S§(true);
            }
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("We really should go. I think my wife might be getting worried.");
               §§push(-200);
               §§push(-340);
               if(!_loc3_)
               {
                  §§push(-1);
                  if(!_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc2_)
                        {
                           addr00a0:
                           §§push(null);
                           break;
                        }
                        addr00b5:
                        §§push(-1);
                        if(_loc3_)
                        {
                           addr00c4:
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
                              §§goto(addr00b5);
                           }
                           else
                           {
                              §§push(-1);
                           }
                           §§goto(addr00c4);
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr00a0);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1600 == null ? null : int(Math.round(1600 / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc2_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Wait...");
                        §§push(240);
                        §§push(-80);
                        if(_loc2_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              §§goto(addr0155);
                           }
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break loop7;
                        }
                        break loop2;
                     }
                     §§goto(addr015b);
                  }
                  §§goto(addr0160);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr015b);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr0160:
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
                           §§push("You think?");
                           §§push(240);
                           §§push(200);
                           if(!_loc3_)
                           {
                              §§push(-1);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
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
                           if(!_loc3_)
                           {
                              break;
                           }
                           break loop4;
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,null);
                     if(_loc3_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() / 2.5);
                  break loop5;
               }
               § !C§("think");
               break;
            }
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            QuaternionUtils.setFromEuler(0,-1.5707963267948966,0,tunnel.camera.§,t§);
         }
         var _loc1_:Quaternion = QuaternionUtils.setFromEuler(0.6283185307179586,0,-0.15707963267948966);
         if(!_loc4_)
         {
            QuaternionUtils.multiply(tunnel.camera.§,t§,_loc1_,tunnel.camera.§,t§);
            tunnel.camera.reset();
            tunnel.camera.§6!&§(190,100,-80);
            tunnel.display(0);
            while(true)
            {
               if(_loc3_)
               {
                  §#!P§.placeAt(1.1,2,null,30);
                  §#!P§.spritesheet.§,=§(74);
                  §#!P§.spritesheet.§@S§(true);
                  child.placeAt(2,1);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               child.spritesheet.§,=§(78);
               if(_loc3_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(true);
            duplicator.placeAt(2.1,1.5);
            duplicator.spritesheet.§,=§(46);
         }
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Good news: we can get home! Follow me!");
               §§push(200);
               §§push(-360);
               if(!_loc4_)
               {
                  §§push(-1);
                  if(_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc4_)
                        {
                           addr0135:
                           §§push(null);
                           break;
                        }
                        addr014b:
                        §§push(-1);
                        if(_loc4_)
                        {
                           addr015b:
                           §§push(§§pop() / 2.5);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(!_loc4_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr014b);
                           }
                           else
                           {
                              §§push(-1);
                           }
                           §§goto(addr015b);
                        }
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr0135);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1500 == null ? null : int(Math.round(1500 / 2.5)),null,_loc2_);
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("We aren\'t coming.");
                  §§push(-240);
                  §§push(-200);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc3_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr01fa);
                           §§push(§§pop());
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
                           break loop2;
                        }
                     }
                  }
                  §§push(null);
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop2;
               }
               §§goto(addr01fa);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr01fa:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
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
                        §§push("Actually...");
                        §§push(-440);
                        §§push(-20);
                        if(_loc3_)
                        {
                           §§push(null);
                           if(!_loc3_)
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
                              if(!_loc4_)
                              {
                                 break loop5;
                              }
                              §§goto(addr027a);
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop5;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0285);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0280);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc4_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr0285:
         }
         _loc2_ = new § 6§(child.§<!U§());
         loop8:
         while(true)
         {
            if(!_loc4_)
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
                        §§push(dialog);
                        §§push("Dad, no. I already said we aren\'t!");
                        §§push(0);
                        §§push(380);
                        if(_loc3_)
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
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop());
                                          break loop10;
                                       }
                                       break loop9;
                                    }
                                    break;
                                 }
                                 §§push(null);
                                 if(!_loc3_)
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
                        if(!_loc4_)
                        {
                           break;
                        }
                        break loop9;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
                  if(!_loc3_)
                  {
                     break loop8;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop10;
            }
            § !C§("already said");
            break;
         }
      }
   }
}

