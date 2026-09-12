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
   import com.player03.run3.character.§4S§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   
   public class DontKnockIt extends §+Z§
   {
      
      public static var §2#§:* = {"fields":{"child":{"fade":null}}};
      
      public var §!!9§:§4S§;
      
      public var skater:§^s§;
      
      public var child:§^s§;
      
      public var §#!P§:§^s§;
      
      public function DontKnockIt()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super(§>K§.§3p§,3,null,{"endTiles":false},null,§+!"§.CUSTOM(§>K§.§3p§.§#R§));
            while(true)
            {
               if(!_loc2_)
               {
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
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame6);
                  if(_loc1_)
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
                  §§pop().frames = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
               name = "Don\'t Knock It";
               break;
            }
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
               if(!_loc1_)
               {
                  §#!P§ = null;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            skater = null;
            if(_loc2_)
            {
               child = null;
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
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(!_loc8_)
         {
            §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
            if(!_loc8_)
            {
               §#!P§.billboardMode = true;
               if(_loc7_)
               {
                  sprites.push(§#!P§);
               }
            }
         }
         §§push(§!^§.pathName);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc7_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,2);
               if(!_loc7_)
               {
                  break;
               }
            }
            skater = new §^s§(§9_§,§'O§.skater,false,null,false,null);
            if(_loc7_)
            {
               skater.billboardMode = true;
               if(!_loc8_)
               {
                  sprites.push(skater);
               }
            }
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
               skater.goesTo = new § !N§(_loc4_,3);
               if(_loc8_)
               {
                  break;
               }
               child = new §^s§(§9_§,§'O§.child,true,null,false,null);
               if(!_loc7_)
               {
                  break;
               }
            }
            child.billboardMode = true;
            if(!_loc8_)
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
         var _loc5_:* = §§pop();
         var _loc6_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc5_);
         if(_loc7_)
         {
            child.goesTo = new § !N§(_loc6_,3);
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §#!P§.§9E§(13.9,0.2);
         §#!P§.spritesheet.§,=§(46);
         §#!P§.spritesheet.§@S§(false);
         skater.§9E§(12.6,1.8,null,35);
         skater.spritesheet.§,=§(14);
         skater.spritesheet.§@S§(false);
         child.§9E§(2,27);
         child.spritesheet.§,=§(120);
         child.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(1380);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
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
                        §§push("You know, some of us use tools to solve problems...");
                        §§push(-120);
                        §§push(-112);
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
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           if(_loc4_)
                           {
                              break loop0;
                           }
                        }
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr00f2);
                  }
                  §§goto(addr00fd);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00f8);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00fd:
            if(!_loc4_)
            {
               § !C§("solve");
            }
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §#!P§.§9E§(13.9,0.2);
               if(!_loc3_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(66);
            break;
         }
         §#!P§.spritesheet.§@S§(true);
         skater.§9E§(13.5,-0.2);
         if(!_loc4_)
         {
            skater.spritesheet.§,=§(61);
         }
         skater.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(1600);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("Don\'t you care that those skates make your life harder?");
                  §§push(-120);
                  §§push(-232);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 addr00bc:
                                 §§goto(addr00ec);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop1;
                        }
                        addr00db:
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr00db);
               }
               §§goto(addr00ec);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00ec:
         }
         _loc1_ = §&!S§.width(1320);
         _loc2_ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Hey, skating is fun! Don\'t knock it till you\'ve tried it.");
                  §§push(40);
                  §§push(308);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              addr0155:
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop4;
                           }
                           addr016d:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr016d);
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
                     break loop4;
                  }
                  §§goto(addr0155);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop());
            break loop5;
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               §#!P§.§9E§(13.8,0.3);
               while(true)
               {
                  if(!_loc3_)
                  {
                     §#!P§.spritesheet.§,=§(72);
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §#!P§.spritesheet.§@S§(false);
                  break;
               }
               skater.§9E§(13.85,-0.15);
               skater.spritesheet.§,=§(63);
               if(_loc3_)
               {
                  break;
               }
            }
            skater.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
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
                     §§push("Hey, watch it!");
                     §§push(-380);
                     §§push(-240);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop3;
                           }
                           §§goto(addr00d7);
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop3;
                  }
                  §§goto(addr00dc);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00d7);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00dc:
         }
         var _loc2_:* = §&!S§.width(1320);
         if(_loc4_)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("You\'ll have a much easier time if you slow down.");
                  §§push(180);
                  §§push(-192);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break loop5;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr016c);
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
                           break loop5;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc4_)
                  {
                     break;
                  }
                  break loop5;
               }
               §§goto(addr016c);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,null);
            addr016c:
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            loop7:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("You know that, right?");
                  §§push(300);
                  §§push(100);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              addr01cc:
                              §§push(null);
                              if(_loc4_)
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
                           if(_loc3_)
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
                  §§goto(addr01cc);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop8;
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §#!P§.§9E§(13.8,0.2);
            §#!P§.spritesheet.§,=§(77);
            §#!P§.spritesheet.§@S§(false);
            skater.§9E§(13.9,-0.2);
            skater.spritesheet.§,=§(50);
         }
         skater.spritesheet.§@S§(false);
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
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Slow down, you idiot!");
                        §§push(200);
                        §§push(-180);
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    break loop2;
                                 }
                                 break loop1;
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
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop2;
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
         var _loc2_:§4S§ = §!!9§;
         while(true)
         {
            if(_loc4_)
            {
               if(true == _loc2_.§&!"§ > 0)
               {
                  break;
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_.§&!"§ = 0.12;
            break;
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               skater.§9E§(12.1,6.8,null,-45);
               skater.spritesheet.§,=§(22);
               if(!_loc1_)
               {
                  skater.spritesheet.§@S§(false);
                  if(!_loc1_)
                  {
                     §#!P§.§9E§(13.6,-2.78e-17);
                     §#!P§.spritesheet.§,=§(54);
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            §#!P§.spritesheet.§@S§(true);
            break;
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         skater.§9E§(13.4,2.8,null,25);
         skater.spritesheet.§,=§(14);
         skater.spritesheet.§@S§(false);
         while(true)
         {
            if(!_loc1_)
            {
               §#!P§.§9E§(13.2,-0.4);
               §#!P§.spritesheet.§,=§(57);
               if(!_loc2_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§@S§(true);
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.§9E§(13.1,-0.7);
         §#!P§.spritesheet.§,=§(47);
         §#!P§.spritesheet.§@S§(true);
         skater.§9E§(14,-0.2);
         if(_loc4_)
         {
            skater.spritesheet.§,=§(36);
            if(!_loc3_)
            {
               skater.spritesheet.§@S§(true);
            }
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("Wait.");
                  §§push(300);
                  §§push(40);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     while(true)
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
                              §§goto(addr00dc);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
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
                  if(_loc4_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§goto(addr00dc);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00dc:
            if(_loc4_)
            {
               §§push(dialog);
               §§push(tunnel.display);
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
            }
         }
         var _loc2_:§4S§ = §!!9§;
         if(!_loc3_)
         {
            if(true != _loc2_.§&!"§ > 0)
            {
               if(!_loc3_)
               {
                  _loc2_.§&!"§ = 0.12;
               }
            }
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §#!P§.§9E§(13,-0.8);
         §#!P§.spritesheet.§,=§(46);
         if(!_loc1_)
         {
            §#!P§.spritesheet.§@S§(true);
            if(!_loc1_)
            {
               skater.§9E§(18.3,16,null,-26);
            }
            skater.spritesheet.§,=§(20);
            if(!_loc1_)
            {
               skater.spritesheet.§@S§(true);
            }
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               §!!9§ = new §4S§(§'O§.skater,skater.spritesheet,tunnel.§"[§);
               if(!_loc6_)
               {
                  break;
               }
            }
            tunnel.registerAnimation(§!!9§);
            break;
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc6_)
            {
               _loc1_.x = -122;
               if(!_loc7_)
               {
                  _loc1_.y = -64;
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = -143;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(2.033308578573394)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               §§push(-0.024);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc6_)
               {
                  §§push(_loc2_);
                  §§push(0.059);
                  if(_loc6_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(-0.998);
               if(_loc6_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc6_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(2.033308578573394));
            break;
         }
         loop4:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc2_.x);
                  if(!_loc7_)
                  {
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                  }
                  §§push(_loc2_.z);
                  §§push(_loc2_.z);
                  if(_loc7_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     break loop4;
                  }
                  §§push(§§pop() + §§pop());
               }
               §§push(Number(§§pop()));
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break;
            }
            §§push(§§pop() * §§pop());
            break;
         }
         var _loc4_:Number = §§pop() + §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(§§pop() - 1);
               if(!_loc6_)
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
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(_loc6_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(_loc5_);
                        if(!_loc6_)
                        {
                           break loop8;
                        }
                     }
                     else
                     {
                        §§push(-_loc5_);
                     }
                     §§push(§§pop() < 1e-10);
                     if(_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop7;
                     }
                     §§push(_loc4_);
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc7_)
                     {
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                     }
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     break loop7;
                  }
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(!_loc7_)
                  {
                     break loop8;
                  }
                  §§goto(addr01de);
               }
               §§goto(addr0232);
            }
            addr01de:
            _loc4_ = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(_loc6_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(_loc6_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
            }
            §§push(_loc2_);
            §§push(_loc2_.w);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().w = §§pop();
            break;
         }
         tunnel.§<!M§.reset();
         if(!_loc7_)
         {
            addr0232:
            tunnel.display(0);
            §#!P§.§9E§(13,-1);
            §#!P§.spritesheet.§,=§(39);
         }
         §#!P§.spritesheet.§@S§(true);
         while(true)
         {
            if(_loc6_)
            {
               skater.§9E§(16.4,9,null,9);
               skater.spritesheet.§,=§(14);
               if(_loc6_)
               {
                  skater.spritesheet.§@S§(true);
                  if(!_loc7_)
                  {
                     child.§9E§(2,26);
                  }
               }
               child.spritesheet.§,=§(119);
               if(!_loc6_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(false);
            break;
         }
      }
   }
}

