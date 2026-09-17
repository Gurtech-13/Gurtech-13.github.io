package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §6!Q§.§]u§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class ItsJustYou extends §+Z§
   {
      
      public var §3![§:Function;
      
      public var lizard:StageActor;
      
      public var §#!P§:StageActor;
      
      public function ItsJustYou()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§7&§,3,null,{"noCrumblingTiles":true});
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
               §§push(frame5);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            name = "It\'s Just You";
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
               if(!_loc2_)
               {
                  break;
               }
               §#!P§ = null;
               if(!_loc2_)
               {
                  break;
               }
               lizard = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
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
                     §§push(false);
                     if(_loc4_)
                     {
                        §§push(false);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§push(param2);
                        if(!_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§3![§);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() == null);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr00a6);
               }
               §§push(!§§pop());
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
               }
               break loop3;
            }
            §§pop();
            if(_loc4_)
            {
               addr00a6:
               §§push(§!!6§ == 4);
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §]u§.§@!A§().§5!@§ = false;
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     §3![§();
                     if(_loc3_)
                     {
                     }
                     break;
                  }
               }
               else
               {
                  super.loadNext(param1,param2);
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
               if(_loc4_)
               {
                  break;
               }
            }
            sprites.push(§#!P§);
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("primary");
         while(true)
         {
            if(!_loc4_)
            {
               §#!P§.goesTo = new § !N§(_loc1_,34);
               if(!_loc5_)
               {
                  break;
               }
               lizard = new StageActor(section,CharacterRegistry.lizard,false,null,false,null);
               if(_loc4_)
               {
                  break;
               }
            }
            sprites.push(lizard);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc2_);
         if(!_loc4_)
         {
            lizard.goesTo = new § !N§(_loc3_,3);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §#!P§.placeAt(4.7,-19.4,true);
               if(!_loc1_)
               {
                  §#!P§.spritesheet.§,=§(75);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            lizard.placeAt(2.9,-18.4,true,-60);
            if(!_loc1_)
            {
               lizard.transform.rotate(QuaternionUtils.setFromEuler(0,1.5707963267948966,0));
            }
            break;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               §#!P§.placeAt(4,-18.4,true,2);
               while(true)
               {
                  if(!_loc3_)
                  {
                     §#!P§.spritesheet.§,=§(76);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  lizard.placeAt(3.2,-18.4,true,-20);
                  if(!_loc3_)
                  {
                     lizard.transform.rotate(QuaternionUtils.setFromEuler(0,1.0471975511965976,0));
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  break;
               }
            }
            lizard.spritesheet.§,=§(22);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("Bye.");
                  §§push(-200);
                  §§push(-160);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        while(true)
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
                                 addr00d0:
                                 §§push(§§pop());
                                 break loop3;
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
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop2;
                        }
                        addr00e3:
                        §§push(null);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop2;
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00e3);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop3;
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
               if(!_loc2_)
               {
                  §#!P§.placeAt(4.4,-18.2,true);
                  if(_loc2_)
                  {
                     break;
                  }
                  §#!P§.spritesheet.§,=§(71);
                  if(!_loc3_)
                  {
                     continue loop2;
                  }
               }
               lizard.spritesheet.§,=§(46);
               if(!_loc3_)
               {
                  break;
               }
               continue loop2;
            }
            var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(!_loc2_)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("...");
                     §§push(-80);
                     §§push(-80);
                     if(!_loc2_)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break loop5;
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
                           if(_loc2_)
                           {
                              break loop5;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop5;
                           }
                        }
                     }
                     §§push(-1);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop5;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),0,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop6;
            }
            _loc1_ = new § 6§(§#!P§.§<!U§());
            if(!_loc2_)
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
                        §§push("Wait, why am I even talking to you? You clearly don\'t care, and I\'m on a schedule.");
                        §§push(-80);
                        §§push(340);
                        if(_loc3_)
                        {
                           §§push(-1);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 §§push(null);
                                 break loop8;
                              }
                           }
                           else
                           {
                              §§push(-1);
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(-1);
                                 break loop7;
                              }
                           }
                        }
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop7;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),2100 == null ? null : int(Math.round(2100 / 2.5)),null,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop8;
            }
            return;
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               §§push(dialog);
               §§push("Better.");
               §§push(0);
               §§push(-240);
               if(!_loc2_)
               {
                  §§push(null);
                  if(!_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(null);
                        if(!_loc2_)
                        {
                           §§goto(addr00a1);
                           §§push(§§pop());
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
            §§goto(addr00a1);
         }
         §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
         addr00a1:
         break loop1;
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §#!P§.placeAt(4.3,-18,true);
            loop0:
            while(true)
            {
               if(!_loc3_)
               {
                  §#!P§.spritesheet.§,=§(77);
                  if(_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Hey.");
                        §§push(-360);
                        §§push(-360);
                        if(_loc2_)
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
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr008c);
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
                     §§goto(addr008c);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
                  addr008c:
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I know you can\'t understand me, but I am talking to you.");
                     §§push(-160);
                     §§push(-240);
                     if(!_loc3_)
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
                                    break loop4;
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
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1700 == null ? null : int(Math.round(1700 / 2.5)),0,null);
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop4;
            }
            § !C§("am");
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
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Could you at least acknowledge my presence?");
                     §§push(40);
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break loop6;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              break loop7;
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
                              break loop6;
                           }
                        }
                     }
                     §§push(-1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop6;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
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
                     §§push("I\'m not much of a pet person, but you can come if you want.");
                     §§push(-80);
                     §§push(-240);
                     if(!_loc2_)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc2_)
                           {
                              §§push(null);
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop0;
                           }
                        }
                     }
                     §§push(-1);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1900 == null ? null : int(Math.round(1900 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc2_)
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
                     §§push("Yes? No?");
                     §§push(-40);
                     §§push(360);
                     if(!_loc2_)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc2_)
                           {
                              §§push(null);
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop3;
                           }
                        }
                     }
                     §§push(-1);
                     if(!_loc2_)
                     {
                        break;
                     }
                     break loop3;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §§push(tunnel.camera);
               §§push(0);
               §§push(80);
               §§push(section.endZ);
               if(!_loc2_)
               {
                  §§push(§§pop() - 1930);
               }
               §§pop().§6!&§(§§pop(),§§pop(),§§pop());
               tunnel.display(0);
               if(!_loc3_)
               {
                  break;
               }
            }
            §#!P§.placeAt(4.6,-18,true);
            §#!P§.spritesheet.§,=§(71);
            lizard.placeAt(4,-18.4,true);
            if(!_loc2_)
            {
               lizard.spritesheet.§,=§(28);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr00fd);
            }
            break;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(dialog);
               §§push("Oh, it\'s just you.");
               §§push(0);
               §§push(-240);
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
                              addr00a6:
                              §§push(null);
                              if(!_loc2_)
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
                           if(_loc2_)
                           {
                              break loop3;
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
                           break loop3;
                        }
                        break;
                     }
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr00a6);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr00fd:
            var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("You know, I was hoping to find an actual person here.");
                     §§push(-120);
                     §§push(-20);
                     if(_loc3_)
                     {
                        §§push(-1);
                        if(_loc2_)
                        {
                           break loop1;
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
                           if(_loc2_)
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
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop1;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1500 == null ? null : int(Math.round(1500 / 2.5)),0,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
            return;
         }
         §§push(§§pop());
         break loop4;
      }
   }
}

