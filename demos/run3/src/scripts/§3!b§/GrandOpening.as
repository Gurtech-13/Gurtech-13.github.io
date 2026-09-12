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
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class GrandOpening extends §+Z§
   {
      
      public var lizard:§^s§;
      
      public var gentleman:§^s§;
      
      public function GrandOpening()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§1k§,0,null,{
                  "startTilesLength":4000,
                  "customDate":§>K§.§1k§.§99§(§>K§.§1k§.levelCount)
               },null,§+!"§.CUSTOM(§>K§.§1k§.§#R§));
               if(!_loc2_)
               {
                  break;
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(_loc2_)
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
               §§push(frame4);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame5);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame6);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame7);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame8);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame9);
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
            name = "Grand Opening";
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
                  gentleman = null;
                  if(!_loc1_)
                  {
                     lizard = null;
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            sprites.length = 0;
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
               gentleman = new §^s§(§9_§,§'O§.gentleman,false,null,false,null);
               if(!_loc6_)
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
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  gentleman.goesTo = new § !N§(_loc2_,0);
                  if(_loc5_)
                  {
                     break;
                  }
                  lizard = new §^s§(§9_§,§'O§.lizard,false,null,false,null);
                  if(_loc5_)
                  {
                     break loop1;
                  }
               }
               lizard.billboardMode = true;
               if(!_loc5_)
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
            if(_loc6_)
            {
               lizard.goesTo = new § !N§(_loc4_,0);
            }
            return;
         }
         sprites.push(lizard);
         break loop2;
      }
      
      public function frame9() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 464;
               if(_loc8_)
               {
                  break;
               }
               _loc1_.y = -148;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 586;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.5271630954950381)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(-0.77);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.618);
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
            }
            §§push(_loc2_);
            §§push(-0.163);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(!_loc8_)
            {
               _loc2_.w = Number(Math.cos(1.5271630954950381));
            }
            break;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               if(!_loc8_)
               {
                  loop5:
                  while(true)
                  {
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc9_)
                        {
                           break loop4;
                        }
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc8_)
                           {
                              §§push(_loc2_.z);
                              §§push(_loc2_.z);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop() * §§pop());
                           }
                           §§push(Number(§§pop()));
                           if(_loc9_)
                           {
                              §§push(_loc2_.w);
                              if(!_loc8_)
                              {
                                 §§push(_loc2_.w);
                                 break;
                              }
                              break loop5;
                           }
                           break loop3;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc8_)
                  {
                     break loop3;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  break loop3;
               }
               break;
            }
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(!_loc8_)
            {
               §§push(§§pop() - 1);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
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
                     if(!_loc8_)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc8_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(_loc8_)
                           {
                              break loop7;
                           }
                        }
                        else
                        {
                           §§push(-_loc5_);
                           if(!_loc8_)
                           {
                              break loop8;
                           }
                           §§goto(addr0196);
                        }
                     }
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                     }
                     break loop8;
                  }
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           if(!_loc8_)
                           {
                              _loc2_.z = 0;
                              if(_loc9_)
                              {
                                 _loc2_.w = 1;
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                              break loop11;
                           }
                           §§goto(addr0201);
                        }
                        else
                        {
                           _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                           if(_loc9_)
                           {
                              break loop7;
                           }
                           §§goto(addr01ec);
                        }
                     }
                     §§goto(addr0227);
                  }
                  §§goto(addr0278);
               }
               §§push(§§pop() < 1e-10);
               if(_loc9_)
               {
                  §§push(!§§pop());
               }
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr0196:
                        §§push(_loc4_);
                        §§push(0);
                        break loop10;
                     }
                     §§goto(addr0227);
                  }
                  §§goto(addr0278);
               }
               §§goto(addr0237);
            }
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            addr01ec:
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().y = §§pop();
            while(true)
            {
               if(_loc9_)
               {
                  addr0201:
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
               addr0217:
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               addr0227:
               tunnel.§<!M§.reset();
               if(!_loc8_)
               {
                  addr0237:
                  tunnel.display(0);
                  if(!_loc8_)
                  {
                     gentleman.§9E§(0.6,2);
                  }
                  gentleman.spritesheet.§,=§(28);
               }
               gentleman.spritesheet.§@S§(true);
               if(_loc9_)
               {
                  lizard.§9E§(0.4,-0.4);
               }
               break;
            }
            addr0278:
            lizard.spritesheet.§,=§(66);
            if(_loc9_)
            {
               lizard.spritesheet.§@S§(false);
            }
            var _loc6_:§ 7§ = new § 6§(gentleman.§<!U§());
            if(!_loc8_)
            {
               dialog.§";§("Ok, from the top...",-140,-280,null,null,null,_loc6_,null);
            }
            var _loc7_:* = §&!S§.width(620);
            _loc6_ = new § 6§(gentleman.§<!U§());
            if(!_loc8_)
            {
               dialog.§";§("Ladies and gentlemen, welcome to the Grand Opening of the Memory Evaluation!",20,280,null,_loc7_,null,_loc6_,null);
            }
            return;
         }
         §§push(Number(§§pop()));
         break loop4;
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 450;
               if(!_loc9_)
               {
                  break;
               }
               _loc1_.y = -257;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.z = 489;
            break;
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
         §§push(Number(Math.sin(1.3700834628155485)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            §§push(_loc2_);
            §§push(-0.72);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.595);
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
               §§push(-0.357);
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
            _loc2_.w = Number(Math.cos(1.3700834628155485));
         }
         §§push(_loc2_.x);
         if(_loc9_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc9_)
                              {
                                 break loop3;
                              }
                              §§push(_loc2_.z);
                           }
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc8_)
                        {
                           §§push(_loc2_.w);
                           §§push(_loc2_.w);
                           break;
                        }
                        break loop4;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  break;
               }
               §§push(Number(§§pop()));
               break;
            }
         }
         break loop3;
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc7_)
         {
            _loc1_.x = 473;
            if(_loc6_)
            {
               _loc1_.y = -287;
               if(!_loc7_)
               {
                  _loc1_.z = 383;
               }
            }
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
         §§push(Number(Math.sin(1.213003830136059)));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               §§push(-0.664);
               if(_loc6_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(-0.583);
            if(_loc6_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            while(true)
            {
               if(_loc6_)
               {
                  break loop1;
               }
               addr00c7:
               _loc2_.w = Number(Math.cos(1.213003830136059));
               break;
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     loop12:
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           §§push(_loc2_.x);
                           §§push(_loc2_.x);
                           if(_loc6_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(_loc2_.y);
                                    §§push(_loc2_.y);
                                    if(!_loc6_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       break loop4;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc6_)
                                    {
                                       break loop3;
                                    }
                                    §§push(_loc2_.z);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(_loc2_.z);
                                    if(!_loc6_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       break loop13;
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc7_)
                                 {
                                    §§push(_loc2_.w);
                                    break;
                                 }
                                 break loop12;
                              }
                           }
                           §§push(_loc2_.w);
                           break loop5;
                        }
                        §§goto(addr0131);
                     }
                     §§push(Number(§§pop()));
                     break loop3;
                  }
                  addr0131:
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc6_)
                  {
                     break loop12;
                  }
                  break loop3;
               }
               var _loc4_:* = §§pop();
               §§push(_loc4_);
               if(!_loc7_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop10;
                                       }
                                       §§push(_loc5_);
                                       if(!_loc6_)
                                       {
                                          addr0194:
                                          §§push(-§§pop());
                                       }
                                       §§push(§§pop() < 1e-10);
                                       if(_loc6_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(!§§pop())
                                       {
                                          break loop10;
                                       }
                                       §§push(_loc4_);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr0194);
                                       }
                                    }
                                 }
                                 §§push(0);
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    break loop9;
                                 }
                                 _loc2_.x = 0;
                                 if(_loc7_)
                                 {
                                    break loop7;
                                 }
                                 _loc2_.y = 0;
                                 if(_loc7_)
                                 {
                                    break loop6;
                                 }
                              }
                              else
                              {
                                 _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                                 §§push(_loc2_);
                                 §§push(_loc2_.x);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().x = §§pop();
                                 if(!_loc7_)
                                 {
                                    §§goto(addr0200);
                                 }
                                 §§goto(addr0297);
                              }
                           }
                           _loc2_.z = 0;
                           break loop6;
                        }
                        §§goto(addr0236);
                     }
                     §§goto(addr023f);
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(!_loc7_)
                  {
                     §§goto(addr0236);
                  }
                  §§goto(addr02a1);
               }
               _loc2_.w = 1;
               while(true)
               {
                  if(!_loc6_)
                  {
                     addr0200:
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     break loop7;
                  }
                  addr0236:
                  tunnel.§<!M§.reset();
                  addr023f:
                  tunnel.display(0);
                  gentleman.§9E§(0.6,2);
                  gentleman.spritesheet.§,=§(46);
                  gentleman.spritesheet.§@S§(true);
                  if(_loc6_)
                  {
                     lizard.§9E§(0.4,-0.4);
                     if(_loc6_)
                     {
                        lizard.spritesheet.§,=§(64);
                     }
                  }
                  addr0297:
                  lizard.spritesheet.§@S§(false);
                  break;
               }
               addr02a1:
               return;
            }
            §§push(Number(§§pop()));
            break loop4;
         }
         §§push(_loc2_);
         §§push(-0.468);
         if(_loc6_)
         {
            §§push(§§pop() * _loc3_);
         }
         §§pop().z = §§pop();
         if(_loc7_)
         {
            continue loop12;
         }
         §§goto(addr00c7);
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            gentleman.§9E§(0.6,2);
            while(true)
            {
               if(!_loc3_)
               {
                  gentleman.spritesheet.§,=§(80);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("That concludes my rehersal.",-120,-240,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(520);
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Do you have any questions or suggestions?",120,230,null,_loc2_,null,_loc1_,null);
         }
      }
      
      public function frame5() : void
      {
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc7_)
            {
               _loc1_.x = 472;
               if(!_loc8_)
               {
                  break;
               }
               _loc1_.y = -288;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 278;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.143190660056286)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(-0.651);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(-0.425);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.629);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc7_)
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
                  loop9:
                  while(true)
                  {
                     §§push(_loc2_.x);
                     §§push(_loc2_.x);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.y);
                        if(_loc7_)
                        {
                           break loop4;
                        }
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() * §§pop());
                     }
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc7_)
                        {
                           break loop9;
                        }
                        §§goto(addr0130);
                     }
                     §§goto(addr0131);
                  }
                  §§push(Number(§§pop()));
                  §§push(_loc2_.z);
                  if(!_loc7_)
                  {
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        break loop3;
                     }
                     §§goto(addr0128);
                  }
                  §§goto(addr0125);
               }
               §§goto(addr0125);
            }
            §§push(§§pop() * §§pop());
            if(!_loc7_)
            {
               break loop4;
            }
            addr0125:
            addr0131:
            addr0128:
            §§push(§§pop() + §§pop() * _loc2_.w);
            if(_loc8_)
            {
               addr0130:
               §§push(Number(§§pop()));
            }
            var _loc4_:Number = §§pop();
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     if(_loc8_)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc8_)
                        {
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    break loop7;
                                 }
                                 §§push(_loc5_);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(_loc5_);
                              }
                              §§push(-§§pop());
                              break;
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop6;
                           }
                           §§push(_loc4_);
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           if(_loc8_)
                           {
                              _loc2_.z = 0;
                              if(!_loc7_)
                              {
                                 _loc2_.w = 1;
                                 if(!_loc7_)
                                 {
                                    break loop6;
                                 }
                                 break loop5;
                              }
                           }
                        }
                        else
                        {
                           _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                           if(_loc8_)
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
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                           }
                        }
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(_loc8_)
                     {
                        break loop6;
                     }
                     break loop5;
                  }
                  §§goto(addr0271);
               }
               tunnel.§<!M§.reset();
               if(!_loc7_)
               {
                  tunnel.display(0);
                  if(!_loc7_)
                  {
                     break;
                  }
                  break loop7;
               }
               break;
            }
            gentleman.§9E§(0.6,2);
            if(_loc8_)
            {
               gentleman.spritesheet.§,=§(87);
               if(_loc8_)
               {
                  gentleman.spritesheet.§@S§(false);
               }
            }
            addr0271:
            var _loc6_:§ 7§ = new § 6§(gentleman.§<!U§());
            if(!_loc7_)
            {
               dialog.§";§("Now, without further ado...",-20,-240,null,null,null,_loc6_,null);
            }
            _loc6_ = new § 6§(gentleman.§<!U§());
            if(_loc8_)
            {
               dialog.§";§("Please enjoy your journey!",40,200,null,null,null,_loc6_,null);
            }
            return;
         }
         _loc2_.w = Number(Math.cos(1.143190660056286));
         continue loop4;
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 457;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = -261;
            if(_loc9_)
            {
               _loc1_.z = 164;
            }
            break;
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
         §§push(Number(Math.sin(1.0035643198967394)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(-0.578);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.289);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(-0.763);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
               }
            }
            _loc2_.w = Number(Math.cos(1.0035643198967394));
            break;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x * _loc2_.x);
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        break loop4;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        break loop3;
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc9_)
                     {
                        break loop4;
                     }
                     §§goto(addr0121);
                  }
                  §§goto(addr0123);
               }
               §§push(_loc2_.w);
               break loop3;
            }
            §§push(_loc2_.w);
            if(_loc9_)
            {
               break loop10;
            }
            §§goto(addr0119);
         }
         addr0119:
         addr0123:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc9_)
         {
            addr0121:
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(_loc9_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               §§push(_loc5_);
               §§push(0);
               if(_loc9_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc5_);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§push(-_loc5_);
                  }
                  §§push(§§pop() < 1e-10);
                  if(!_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop5;
                  }
                  §§push(_loc4_);
                  §§push(0);
               }
               while(true)
               {
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        _loc2_.x = 0;
                        if(!_loc9_)
                        {
                           break;
                        }
                        _loc2_.y = 0;
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        _loc2_.z = 0;
                        if(_loc9_)
                        {
                           _loc2_.w = 1;
                           if(_loc9_)
                           {
                              break loop5;
                           }
                           break;
                        }
                     }
                     else
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(!_loc8_)
                        {
                           break loop6;
                        }
                        addr01c3:
                        _loc4_ = §§pop();
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(!_loc8_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           break loop5;
                        }
                        break;
                     }
                     §§goto(addr0220);
                  }
                  §§goto(addr022f);
               }
               §§goto(addr0251);
            }
            §§goto(addr01c3);
         }
         tunnel.§<!M§.reset();
         if(_loc9_)
         {
            addr0220:
            tunnel.display(0);
            while(true)
            {
               if(!_loc8_)
               {
                  addr022f:
                  gentleman.§9E§(0.6,2);
                  if(!_loc9_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(80);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               addr0251:
               gentleman.spritesheet.§@S§(false);
               break;
            }
         }
         var _loc6_:* = §&!S§.width(900);
         var _loc7_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc9_)
         {
            dialog.§";§("Before you begin, please be advised that the colorful tetrahedral decorations are the property of the Gentleman.",20,-280,null,_loc6_,null,_loc7_,null);
         }
         _loc6_ = §&!S§.width(700);
         _loc7_ = new § 6§(gentleman.§<!U§());
         if(_loc9_)
         {
            dialog.§";§("Should you collect any, return them to me before exiting the attraction.",80,190,null,_loc6_,null,_loc7_,null);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 488;
               if(!_loc9_)
               {
                  _loc1_.y = -172;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 87;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.7941248096574199)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            §§push(_loc2_);
            §§push(-0.401);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.196);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(-0.895);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(_loc9_)
                     {
                        break;
                     }
                  }
               }
               _loc2_.w = Number(Math.cos(0.7941248096574199));
               break;
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x * _loc2_.x);
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break loop8;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           break loop4;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           break loop3;
                        }
                        §§push(_loc2_.z);
                     }
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        break loop3;
                     }
                     break;
                  }
                  §§goto(addr011d);
               }
               §§goto(addr011e);
            }
            §§push(Number(§§pop()));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            §§goto(addr012e);
         }
         addr011e:
         addr011d:
         §§push(Number(§§pop()) + _loc2_.w * _loc2_.w);
         if(!_loc9_)
         {
            break loop4;
         }
         addr012e:
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(_loc8_)
         {
            §§push(§§pop() - 1);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc9_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(!_loc9_)
                  {
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(_loc5_);
                           if(_loc9_)
                           {
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              §§push(-§§pop());
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        break loop6;
                     }
                     §§push(_loc4_);
                     if(!_loc8_)
                     {
                        break loop5;
                     }
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     break;
                  }
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  break loop5;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               gentleman.§9E§(0.6,2);
               if(!_loc9_)
               {
                  gentleman.spritesheet.§,=§(78);
                  gentleman.spritesheet.§@S§(false);
               }
            }
            _loc4_ = §§pop();
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().x = §§pop();
            }
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().y = §§pop();
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
            }
            break loop6;
         }
         var _loc6_:* = §&!S§.width(1000);
         var _loc7_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc9_)
         {
            dialog.§";§("In the former half of each trial, you are granted the opportunity to study the pattern of obstacles.",-20,-250,null,_loc6_,null,_loc7_,null);
         }
         _loc7_ = new § 6§(gentleman.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("The latter half then plunges you into darkness.",20,210,null,null,null,_loc7_,null);
            if(!_loc9_)
            {
               dialog.§";§("Good luck!",260,340,null,null,-1,null,null);
            }
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               gentleman.§9E§(0.6,2);
               if(!_loc4_)
               {
                  gentleman.spritesheet.§,=§(83);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            gentleman.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(900);
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Unlike any tunnel you\'ve yet seen, the tunnel before you was designed by an expert!",-60,-250,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(900);
         _loc2_ = new § 6§(gentleman.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Each trial is a challenge to your recollection. Will you be able to pass all seven?",20,210,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 469;
               if(_loc9_)
               {
                  _loc1_.y = -42;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 16;
            break;
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
         §§push(Number(Math.sin(0.7853981633974483)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc2_);
            §§push(-0.179);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.097);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(-0.979);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc2_.w = Number(Math.cos(0.7853981633974483));
               break;
            }
         }
         §§push(_loc2_.x);
         §§push(_loc2_.x);
         if(_loc9_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break;
            }
         }
         §§push(§§pop() + §§pop());
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc8_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            if(!_loc8_)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(_loc9_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        addr0168:
                        §§push(_loc5_ < 1e-10);
                        if(_loc9_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        §§push(_loc4_);
                     }
                     else
                     {
                        §§push(-_loc5_);
                        if(!_loc8_)
                        {
                           §§goto(addr0168);
                        }
                     }
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc8_)
                     {
                        _loc2_.x = 0;
                        if(!_loc8_)
                        {
                           _loc2_.y = 0;
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                           break;
                        }
                     }
                  }
                  else
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc8_)
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
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
                  break loop5;
               }
            }
            tunnel.§<!M§.reset();
            tunnel.display(0);
            if(!_loc8_)
            {
               gentleman.§9E§(0.6,2);
               gentleman.spritesheet.§,=§(79);
               if(_loc8_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§@S§(true);
            break;
         }
         var _loc6_:* = §&!S§.width(620);
         var _loc7_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Ladies and gentlemen, welcome to the Grand Opening of the Memory Evaluation!",-100,-240,null,_loc6_,null,_loc7_,null);
         }
      }
   }
}

