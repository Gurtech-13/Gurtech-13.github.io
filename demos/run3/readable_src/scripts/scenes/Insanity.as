package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §2!"§.§8f§;
   import world3d.Entity3D;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Insanity extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var §,4§:§4S§;
      
      public var §-P§:StageActor;
      
      public var duplicator:StageActor;
      
      public function Insanity()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super(§>K§.§7&§,-1,Insanity.§3S§,{"endTiles":false});
               if(_loc1_)
               {
                  §3!<§(new § !N§(§>K§.§;!4§,0));
                  if(!_loc1_)
                  {
                     break;
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
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame5);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame6);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame7);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame8);
                  if(_loc1_)
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
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame12);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame13);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame14);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame15);
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
            }
            name = "Insanity";
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
               §,4§ = null;
               if(_loc1_)
               {
                  tunnel = null;
                  if(!_loc1_)
                  {
                     break;
                  }
                  §-P§ = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
               duplicator = null;
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
               if(_loc5_)
               {
                  break;
               }
            }
            sprites.push(§-P§);
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("river");
         while(true)
         {
            if(_loc4_)
            {
               §-P§.goesTo = new § !N§(_loc1_,0);
               if(_loc5_)
               {
                  break;
               }
            }
            duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr00ad);
         }
         sprites.push(duplicator);
         addr00ad:
         §§push(§!^§.pathName);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc2_);
         if(!_loc5_)
         {
            duplicator.goesTo = new § !N§(_loc3_,-1);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §-P§.placeAt(6.7,0.5,true,-20);
            while(true)
            {
               if(_loc2_)
               {
                  §-P§.spritesheet.§,=§(73);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               duplicator.spritesheet.§,=§(46);
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc2_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Whoops.");
                  §§push(200);
                  §§push(40);
                  if(_loc2_)
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
                           §§goto(addr00ca);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(!_loc2_)
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
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§goto(addr00ca);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00ca:
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.placeAt(6.7,-1,true);
               if(_loc3_)
               {
                  break;
               }
               §-P§.spritesheet.§,=§(72);
               if(!_loc3_)
               {
                  §-P§.spritesheet.§@S§(true);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            duplicator.spritesheet.§,=§(64);
            if(!_loc3_)
            {
               break;
            }
            var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
            §§goto(addr0069);
         }
         duplicator.spritesheet.§@S§(true);
         addr0069:
         if(_loc2_)
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
                     §§push("Wait.");
                     §§push(160);
                     §§push(0);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc2_)
                                 {
                                    addr00af:
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       break loop3;
                                    }
                                    break loop1;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    break loop1;
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
                                 break loop1;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop2;
                        }
                        break;
                     }
                     §§goto(addr00af);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop2;
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §-P§.placeAt(6.7,-2,true);
            while(true)
            {
               if(!_loc3_)
               {
                  §-P§.spritesheet.§,=§(36);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§push(dialog);
               §§push(tunnel.display);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
               break;
            }
         }
         var _loc1_:§4S§ = §,4§;
         if(!_loc3_)
         {
            while(true)
            {
               if(true != _loc1_.§&!"§ > 0)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  _loc1_.§&!"§ = 0.12;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               duplicator.spritesheet.§,=§(67);
               if(_loc4_)
               {
                  duplicator.spritesheet.§@S§(false);
               }
               break;
            }
         }
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("Sorry, what?");
                  §§push(-200);
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
                              if(!_loc3_)
                              {
                                 addr00dd:
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
                        §§push(null);
                        break loop2;
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr00dd);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'m not doing the same thing.");
                  §§push(160);
                  §§push(-40);
                  if(!_loc3_)
                  {
                     §§push(-1);
                     if(_loc3_)
                     {
                        break loop5;
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
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop5;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1000 == null ? null : int(Math.round(1000 / 2.5)),null,_loc2_);
               if(_loc4_)
               {
                  § !C§("not");
               }
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §-P§.placeAt(7.4,6,true,-20);
            if(_loc4_)
            {
               §-P§.spritesheet.§,=§(22);
            }
         }
         var _loc1_:* = §&!S§.scale(0.3);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc4_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Good thing I\'m not.");
               §§push(0);
               §§push(40);
               if(!_loc3_)
               {
                  if(_loc1_ == null)
                  {
                     if(!_loc3_)
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
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §-P§.placeAt(7,3,true,60);
               if(_loc2_)
               {
                  §-P§.spritesheet.§,=§(18);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            duplicator.spritesheet.§,=§(37);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
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
                     §§push("Because you keep doing the same thing and expecting a different outcome.");
                     §§push(-100);
                     §§push(-80);
                     if(_loc2_)
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop1;
                           }
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
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),2000 == null ? null : int(Math.round(2000 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §-P§.placeAt(6.7,0,true,10);
            if(!_loc3_)
            {
               §-P§.spritesheet.§,=§(0);
               if(!_loc3_)
               {
                  duplicator.spritesheet.§,=§(46);
               }
            }
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("You do know what they say about insanity, don\'t you?");
                     §§push(-120);
                     §§push(32);
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §§push(-1);
                           if(_loc2_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
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
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1500 == null ? null : int(Math.round(1500 / 2.5)),null,_loc1_);
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
            § !C§("do");
            break;
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.placeAt(6.7,-2,true);
               if(!_loc4_)
               {
                  break;
               }
               §-P§.spritesheet.§,=§(31);
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(dialog);
            §§push(tunnel.display);
            if(_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
            break;
         }
         var _loc1_:§4S§ = §,4§;
         while(true)
         {
            if(_loc4_)
            {
               if(true != _loc1_.§&!"§ > 0)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  _loc1_.§&!"§ = 0.12;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            duplicator.spritesheet.§,=§(64);
            break;
         }
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
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
                     §§push("Um...");
                     §§push(-160);
                     §§push(88);
                     if(!_loc3_)
                     {
                        §§push(-1);
                        if(!_loc4_)
                        {
                           break;
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
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop2;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §-P§.placeAt(6.7,5,true,-40);
            if(!_loc2_)
            {
               §-P§.spritesheet.§,=§(8);
            }
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("...");
                  §§push(-200);
                  §§push(80);
                  if(_loc3_)
                  {
                     §§push(-1);
                     if(_loc2_)
                     {
                        break loop0;
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
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop0;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
      }
      
      public function frame15() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         tunnel.camera.translate(0,0,550);
         tunnel.display(0);
         §-P§.placeAt(5,31,true,-97);
         §-P§.transform.rotate(QuaternionUtils.setFromEuler(0,0.3141592653589793,0));
         §-P§.spritesheet.§,=§(74);
         §-P§.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.scale(0.4);
         if(_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Check it out!");
               §§push(120);
               §§push(-56);
               if(_loc3_)
               {
                  if(_loc1_ == null)
                  {
                     if(!_loc4_)
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
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
         }
         _loc1_ = §&!S§.scale(0.4);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I did get a different outcome!");
                  §§push(160);
                  §§push(-16);
                  if(_loc3_)
                  {
                     if(_loc1_ == null)
                     {
                        if(_loc3_)
                        {
                           addr0121:
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
                  §§goto(addr0121);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc2_);
               if(!_loc3_)
               {
                  break;
               }
            }
            § !C§("did");
            break;
         }
      }
      
      public function frame14() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               tunnel.camera.translate(0,0,220);
               if(_loc1_)
               {
                  break;
               }
               tunnel.display(0);
               if(_loc2_)
               {
                  §-P§.placeAt(3,15,true);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            §-P§.transform.rotate(QuaternionUtils.setFromEuler(0,1.5707963267948966,0));
            break;
         }
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               tunnel.camera.translate(0,0,70);
               if(_loc1_)
               {
                  break;
               }
            }
            tunnel.display(0);
            if(!_loc1_)
            {
               §-P§.placeAt(3,5,true);
               if(!_loc2_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§,=§(7);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0080);
         }
         duplicator.spritesheet.§,=§(28);
         addr0080:
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.placeAt(6.7,0,true,5);
               if(!_loc2_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§,=§(14);
            if(_loc2_)
            {
               §-P§.spritesheet.§@S§(true);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr00d9);
            }
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(dialog);
                  §§push("Oooo...kay then.");
                  §§push(160);
                  §§push(-160);
                  if(_loc2_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop5;
                              }
                              §§goto(addr00b7);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop4;
                              }
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
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop4;
               }
               §§goto(addr00b7);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr00b7:
            §§goto(addr00d9);
         }
         duplicator.spritesheet.§,=§(46);
         if(!_loc2_)
         {
            addr00d9:
            var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
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
                        §§push("Anyway, I think I\'ve got it.");
                        §§push(80);
                        §§push(-40);
                        if(!_loc3_)
                        {
                           §§push(-1);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 §§push(null);
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(-1);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(-1);
                                 break loop1;
                              }
                           }
                        }
                        §§push(-1);
                        if(_loc2_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1500 == null ? null : int(Math.round(1500 / 2.5)),0,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
            return;
         }
         continue loop4;
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §-P§.placeAt(6.7,-1.5,true);
         if(_loc2_)
         {
            §-P§.spritesheet.§,=§(65);
            §-P§.spritesheet.§@S§(false);
            duplicator.spritesheet.§,=§(65);
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(dialog);
               §§push("That\'s a picture of you.");
               §§push(-80);
               §§push(-240);
               if(_loc2_)
               {
                  while(true)
                  {
                     §§push(null);
                     if(!_loc3_)
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
                              break loop1;
                           }
                           §§goto(addr0098);
                           §§push(§§pop());
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
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
                  break;
               }
               break loop0;
            }
            §§goto(addr0098);
         }
         §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
         addr0098:
         if(!_loc3_)
         {
            loop2:
            while(true)
            {
               §§push(dialog);
               §§push("It\'s to commemorate this moment.");
               §§push(-60);
               §§push(-120);
               if(_loc2_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr00f2:
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
                        addr0114:
                        §§push(-1 / 2.5);
                        break loop2;
                     }
                     §§push(-1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr0114);
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr00f2);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,null);
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop5:
            while(true)
            {
               §§push(dialog);
               §§push("Now you\'ll always remember where you were when you went crazy!");
               §§push(-120);
               §§push(80);
               if(!_loc3_)
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
                                 addr0179:
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
                        addr01a8:
                        §§push(-1 / 2.5);
                        break loop5;
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr01a8);
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr0179);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),1,_loc1_);
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               §-P§.placeAt(6.7,-2,true);
               if(!_loc4_)
               {
                  break;
               }
               §-P§.transform.rotate(QuaternionUtils.setFromEuler(0,3.7699111843077517,0));
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(dialog);
            §§push(tunnel.display);
            if(!_loc5_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
            break;
         }
         var _loc1_:§4S§ = §,4§;
         while(true)
         {
            if(_loc4_)
            {
               if(true == _loc1_.§&!"§ > 0)
               {
                  break;
               }
               if(_loc5_)
               {
                  break;
               }
            }
            _loc1_.§&!"§ = 0.12;
            if(_loc4_)
            {
               break;
            }
            §§goto(addr00a1);
         }
         duplicator.spritesheet.§,=§(64);
         addr00a1:
         var _loc2_:TextField = dialog.§ q§("oof",0,800,§&!S§.scale(0.4));
         if(_loc4_)
         {
            _loc2_.width *= 2;
         }
         var _loc3_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc4_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Did you draw on my map?!");
                  §§push(80);
                  §§push(-120);
                  if(!_loc5_)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc5_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr0123:
                              §§goto(addr014a);
                              §§push(§§pop());
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
                              break loop2;
                           }
                        }
                        addr0137:
                        §§push(null);
                        if(!_loc5_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§goto(addr0123);
                  }
                  §§goto(addr0137);
               }
               §§goto(addr014a);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc3_);
            addr014a:
         }
         _loc3_ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Oh, that?");
                  §§push(-200);
                  §§push(80);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              addr01a9:
                              §§push(null);
                              if(!_loc5_)
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
                           if(_loc5_)
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
                        if(!_loc4_)
                        {
                           break loop4;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr01a9);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc3_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §-P§.placeAt(6.7,3,true,60);
               if(!_loc1_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§,=§(5);
            break;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §,4§ = new §4S§(CharacterRegistry.§-P§,§-P§.spritesheet,tunnel.§"[§);
         tunnel.registerAnimation(§,4§);
         tunnel.camera.§%!7§.x = 0;
         tunnel.camera.§%!7§.y = 60;
         if(_loc3_)
         {
            §§push(tunnel.camera.§%!7§);
            §§push(section.endZ);
            if(_loc3_)
            {
               §§push(§§pop() - 400);
            }
            §§pop().z = §§pop();
         }
         QuaternionUtils.setFromEuler(0,0.3141592653589793,0,tunnel.camera.§,t§);
         tunnel.camera.reset();
         if(!_loc2_)
         {
            tunnel.display(0);
         }
         var _loc1_:Entity3D = new Entity3D(tunnel,false,new §8f§("MapWithTeapot.png",40,25));
         §§push(§-P§);
         §§push(5);
         §§push(-2.8);
         §§push(true);
         §§push(1);
         §§push(15);
         if(!_loc2_)
         {
            §§push(§§pop() * §-P§.§!8§.§,#§);
         }
         §§push(§§pop() - §§pop());
         if(!_loc2_)
         {
            §§push(§§pop() - 1.5);
         }
         §§pop().placeAt(§§pop(),§§pop(),§§pop(),§§pop());
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc3_)
               {
                  _loc1_.transform.§"w§(§-P§.transform.getPosition());
                  if(!_loc2_)
                  {
                     _loc1_.transform.§3;§();
                     if(_loc3_)
                     {
                        QuaternionUtils.setFromEuler(0,0,1.5707963267948966,_loc1_.transform.§,t§);
                        QuaternionUtils.multiply(_loc1_.transform.§,t§,QuaternionUtils.setFromEuler(-0.3141592653589793,0,0),_loc1_.transform.§,t§);
                        QuaternionUtils.multiply(_loc1_.transform.§,t§,QuaternionUtils.setFromEuler(0,1.5707963267948966,0),_loc1_.transform.§,t§);
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.transform.reset();
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 tunnel.§`=§(_loc1_);
                                 if(!_loc3_)
                                 {
                                    break loop2;
                                 }
                              }
                              §-P§.placeAt(6.7,-0.5,true,12);
                              if(!_loc2_)
                              {
                                 break loop2;
                              }
                              break loop1;
                           }
                        }
                        §-P§.spritesheet.§,=§(0);
                        break loop3;
                     }
                     break loop0;
                  }
                  break;
               }
               duplicator.placeAt(7.3,-1.5,true);
               if(_loc3_)
               {
                  duplicator.spritesheet.§,=§(37);
                  break;
               }
               break loop0;
            }
            duplicator.spritesheet.§@S§(true);
            break;
         }
      }
   }
}

