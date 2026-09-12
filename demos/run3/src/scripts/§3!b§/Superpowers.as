package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   
   public class Superpowers extends §+Z§
   {
      
      public var pastafarian:§^s§;
      
      public var child:§^s§;
      
      public var §#!P§:§^s§;
      
      public function Superpowers()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super(§>K§.§1b§,-1);
            while(true)
            {
               if(_loc1_)
               {
                  §§push(§§findproperty(frames));
                  §§push(frame0);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame1);
                  if(!_loc2_)
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
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame5);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame6);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame7);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame8);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame9);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame10);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame11);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame12);
                  if(_loc1_)
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
                  §§push(frame16);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame17);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame18);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame19);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame20);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame21);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame22);
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
               name = "Superpowers";
               break;
            }
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
               if(!_loc2_)
               {
                  child = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §#!P§ = null;
               if(!_loc1_)
               {
                  break;
               }
               pastafarian = null;
               if(_loc2_)
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
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               child = new §^s§(§9_§,§'O§.child,false,null,false,null);
               if(!_loc5_)
               {
                  break;
               }
               child.billboardMode = true;
               if(!_loc5_)
               {
                  break;
               }
            }
            sprites.push(child);
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("home3");
         while(true)
         {
            if(_loc5_)
            {
               child.goesTo = new § !N§(_loc1_,-4);
               if(_loc6_)
               {
                  break;
               }
            }
            §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr00cc);
         }
         §#!P§.billboardMode = true;
         if(_loc5_)
         {
            sprites.push(§#!P§);
         }
         addr00cc:
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("homeLaunchSiteC");
         while(true)
         {
            if(_loc5_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,0);
               if(_loc5_)
               {
                  pastafarian = new §^s§(§9_§,§'O§.pastafarian,false,null,false,null);
                  if(!_loc5_)
                  {
                     break;
                  }
                  pastafarian.billboardMode = true;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            sprites.push(pastafarian);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc5_)
         {
            pastafarian.goesTo = new § !N§(_loc4_,-2);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = -113;
               if(_loc9_)
               {
                  break;
               }
               _loc1_.y = 2;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 6652;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.0995574287564276)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(0.162);
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
            §§push(-0.223);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(0.961);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break;
               }
               loop3:
               while(true)
               {
                  loop4:
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
                           if(_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 break loop12;
                              }
                              while(true)
                              {
                                 §§push(_loc2_.y);
                                 if(_loc8_)
                                 {
                                    §§push(_loc2_.y);
                                    if(!_loc8_)
                                    {
                                       break loop4;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 addr011e:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc9_)
                                 {
                                    §§push(_loc2_.z);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    addr012e:
                                    §§push(_loc2_.w);
                                    break loop4;
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc8_)
                                 {
                                    break loop13;
                                 }
                                 §§push(_loc2_.w);
                                 if(!_loc8_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(_loc2_.z);
                              if(!_loc8_)
                              {
                                 break loop4;
                              }
                              §§push(§§pop() + §§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 break loop12;
                              }
                              §§goto(addr011e);
                           }
                           §§goto(addr012e);
                        }
                        §§goto(addr0133);
                     }
                     §§goto(addr013a);
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
               addr0133:
               §§push(§§pop() + §§pop());
               if(_loc8_)
               {
                  addr013a:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc5_:* = §§pop();
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(!_loc9_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              addr0175:
                              §§push(_loc5_ < 1e-10);
                              if(_loc8_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 break loop7;
                              }
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 break loop6;
                              }
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                                 §§push(-§§pop());
                                 if(_loc8_)
                                 {
                                    §§goto(addr0175);
                                 }
                              }
                           }
                           §§push(0);
                        }
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc8_)
                              {
                                 break;
                              }
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              if(!_loc9_)
                              {
                                 _loc2_.z = 0;
                                 _loc2_.w = 1;
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       break loop8;
                                    }
                                    §§goto(addr0267);
                                 }
                                 §§goto(addr027c);
                              }
                           }
                           else
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              if(!_loc9_)
                              {
                                 break loop6;
                              }
                              §§goto(addr01e4);
                           }
                           §§goto(addr0222);
                        }
                        §§goto(addr0298);
                     }
                     §§goto(addr0231);
                  }
                  pastafarian.spritesheet.§,=§(102);
                  if(_loc8_)
                  {
                     addr0298:
                     pastafarian.spritesheet.§@S§(true);
                  }
                  var _loc6_:* = §&!S§.width(800);
                  if(_loc8_)
                  {
                     dialog.§";§("Then answer me this: what purpose could belittling his ideas possibly serve?",-140,-250,null,_loc6_,null,null,null);
                  }
                  _loc6_ = §&!S§.width(480);
                  var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
                  while(true)
                  {
                     if(_loc8_)
                     {
                        dialog.§";§("To reiterate, you\'re discussing fiction.",-80,-70,null,_loc6_,-1,_loc7_,null);
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     § !C§("fiction");
                     break;
                  }
                  _loc6_ = §&!S§.width(900);
                  _loc7_ = new § 6§(§#!P§.§<!U§());
                  if(_loc8_)
                  {
                     dialog.§";§("This kid has some potential as an engineer. I\'m teaching him to think practically.",100,330,null,_loc6_,null,_loc7_,null);
                  }
                  return;
               }
               addr01e4:
               _loc4_ = Number(§§pop());
               if(!_loc9_)
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
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  addr0222:
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
               }
               addr0231:
               tunnel.§<!M§.reset();
               tunnel.display(0);
               child.model.§#"§(false);
               if(!_loc9_)
               {
                  §#!P§.§9E§(9.9,90.3);
                  if(_loc8_)
                  {
                     addr0267:
                     §#!P§.spritesheet.§,=§(72);
                     §#!P§.spritesheet.§@S§(false);
                  }
                  addr027c:
                  pastafarian.§9E§(10.1,89.7);
               }
               break loop7;
            }
            break;
         }
         _loc2_.w = Number(Math.cos(1.0995574287564276));
         continue loop12;
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -116;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = 34;
            if(!_loc8_)
            {
               _loc1_.z = 6574;
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
         §§push(Number(Math.sin(1.0821041362364843)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.216);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc9_)
               {
                  break;
               }
               §§push(_loc2_);
               §§push(-0.227);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.95);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc2_.w = Number(Math.cos(1.0821041362364843));
            break;
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
                  while(true)
                  {
                     §§push(§§pop() * _loc2_.x);
                     if(!_loc8_)
                     {
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc8_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           break loop3;
                        }
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc9_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc8_)
                        {
                           break loop3;
                        }
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.w);
                     §§push(_loc2_.w);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
         }
         break loop3;
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = -119;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc1_.y = 96;
            if(!_loc7_)
            {
               break;
            }
            addr0049:
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
            §§push(Number(Math.sin(1.0733774899765127)));
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop2:
            while(true)
            {
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     §§push(0.384);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     §§push(-0.316);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().y = §§pop();
                     if(_loc7_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc2_);
                  §§push(0.868);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc7_)
                  {
                     break loop2;
                  }
                  break;
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc2_.x);
                        if(_loc8_)
                        {
                           §§push(_loc2_.y);
                           §§push(_loc2_.y);
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc8_)
                           {
                              break loop4;
                           }
                        }
                     }
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        §§push(_loc2_.z);
                        if(_loc7_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                              break loop4;
                           }
                           §§goto(addr012e);
                        }
                        §§goto(addr012f);
                     }
                     §§goto(addr0122);
                  }
                  §§goto(addr0126);
               }
               addr012f:
               addr0126:
               §§push(_loc2_.w);
               if(_loc8_)
               {
                  addr0122:
                  §§push(_loc2_.w);
                  break loop5;
               }
               §§push(§§pop() + §§pop());
               if(!_loc7_)
               {
                  addr012e:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc7_)
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
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          §§push(-§§pop());
                                       }
                                    }
                                    §§push(§§pop() < 1e-10);
                                    if(!_loc7_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       break loop12;
                                    }
                                    §§push(_loc4_);
                                    §§push(0);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       _loc2_.x = 0;
                                       _loc2_.y = 0;
                                       _loc2_.z = 0;
                                       _loc2_.w = 1;
                                       if(_loc8_)
                                       {
                                          break loop12;
                                       }
                                       break loop11;
                                    }
                                    addr0223:
                                    tunnel.display(0);
                                    break loop7;
                                 }
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break;
                              }
                           }
                           _loc4_ = §§pop();
                           if(_loc7_)
                           {
                              break loop7;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(_loc8_)
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
                              break loop11;
                           }
                           continue loop9;
                        }
                        tunnel.§<!M§.reset();
                        §§goto(addr0223);
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        break loop12;
                     }
                     §§goto(addr02b6);
                  }
                  var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
                  if(_loc8_)
                  {
                     dialog.§";§("Child, please excuse us for a moment.",-120,-120,null,null,null,_loc6_,null);
                  }
                  return;
               }
               child.§9E§(10.1,85.9);
               if(!_loc7_)
               {
                  child.spritesheet.§,=§(78);
               }
               child.spritesheet.§@S§(true);
               loop9:
               while(true)
               {
                  while(true)
                  {
                     if(_loc8_)
                     {
                        §#!P§.§9E§(9.9,89.2,null,-4);
                        if(_loc7_)
                        {
                           break;
                        }
                        §#!P§.spritesheet.§,=§(86);
                        if(!_loc7_)
                        {
                           §#!P§.spritesheet.§@S§(false);
                           if(_loc7_)
                           {
                              break loop9;
                           }
                        }
                     }
                     pastafarian.§9E§(10,88.9,null,-2);
                     if(!_loc7_)
                     {
                        break loop9;
                     }
                     break loop8;
                  }
                  addr02b6:
                  pastafarian.spritesheet.§@S§(true);
                  break loop8;
               }
               pastafarian.spritesheet.§,=§(111);
               break loop10;
            }
            _loc2_.w = Number(Math.cos(1.0733774899765127));
            break loop3;
         }
         _loc1_.z = 6483;
         §§goto(addr0049);
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  child.§9E§(10,86.3);
                  if(_loc4_)
                  {
                     break;
                  }
                  child.spritesheet.§,=§(114);
                  child.spritesheet.§@S§(true);
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               §#!P§.§9E§(10,87.8);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr008b);
            }
            §#!P§.spritesheet.§,=§(71);
            if(!_loc4_)
            {
               §#!P§.spritesheet.§@S§(false);
               break;
            }
            §§goto(addr008b);
         }
         pastafarian.§9E§(9.6,85.7,null,-11);
         addr008b:
         pastafarian.spritesheet.§,=§(86);
         pastafarian.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Why would you pick such a bad power anyway?",-60,-260,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("No it\'s not!",-180,0,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(600);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("It only does one thing, and doesn\'t even do that well.",80,310,null,_loc2_,null,_loc1_,null);
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         child.§9E§(10,86.3);
         child.spritesheet.§,=§(78);
         child.spritesheet.§@S§(true);
         §#!P§.§9E§(10,87.8);
         §#!P§.spritesheet.§,=§(77);
         if(_loc3_)
         {
            §#!P§.spritesheet.§@S§(false);
         }
         pastafarian.§9E§(9.7,85);
         pastafarian.spritesheet.§,=§(102);
         if(_loc3_)
         {
            pastafarian.spritesheet.§@S§(true);
         }
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("I can choose where I sail-",-180,-80,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Yes, we get it.",120,-80,null,null,null,_loc1_,null);
            if(_loc3_)
            {
               § !C§("Yes");
            }
         }
         var _loc2_:* = §&!S§.width(920);
         if(!_loc4_)
         {
            dialog.§";§("Wind control is literally the most popular superpower, except maybe super strength.",120,310,null,_loc2_,-1,null,null);
            while(true)
            {
               if(_loc3_)
               {
                  dialog.§+j§[0].§[!>§ = 14540253;
                  if(_loc4_)
                  {
                     break;
                  }
               }
               dialog.§+j§[0].layout.apply();
               if(_loc3_)
               {
                  dialog.§@#§[0].§[!>§ = 14540253;
                  if(_loc4_)
                  {
                     break;
                  }
               }
               dialog.§@#§[0].§6;§();
               break;
            }
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.§9E§(10,86.3);
         if(_loc4_)
         {
            child.spritesheet.§,=§(114);
            child.spritesheet.§@S§(true);
         }
         §#!P§.§9E§(10,87.8);
         if(_loc4_)
         {
            §#!P§.spritesheet.§,=§(85);
            if(_loc4_)
            {
               §#!P§.spritesheet.§@S§(false);
               if(!_loc3_)
               {
                  pastafarian.§9E§(9.7,85);
                  pastafarian.spritesheet.§,=§(102);
                  pastafarian.spritesheet.§@S§(true);
                  dialog.§";§("Cool! My power is to control the wind.",-180,-180,null,null,null,null,null);
               }
            }
         }
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Then I can go anywhere!",40,-20,null,null,-1,_loc1_,null);
         }
         var _loc2_:* = §&!S§.scale(0.5);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Ugh...",180,330,_loc2_,null,null,_loc1_,null);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(_loc8_)
         {
            _loc1_.x = -188;
            if(!_loc9_)
            {
               _loc1_.y = 114;
               if(_loc8_)
               {
                  _loc1_.z = 6382;
               }
            }
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.0471975511965976)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(0.481);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.241);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.843);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc9_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(1.0471975511965976));
            break;
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x * _loc2_.x);
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           break loop8;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           break loop3;
                        }
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           break loop2;
                        }
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc8_)
                     {
                        break loop3;
                     }
                     break loop8;
                  }
                  §§goto(addr011a);
               }
               §§goto(addr011b);
            }
            §§push(_loc2_.w);
            §§push(_loc2_.w);
            break;
         }
         addr011b:
         var _loc4_:* = §§pop() + §§pop() * §§pop();
         addr011a:
         §§push(_loc4_);
         if(_loc8_)
         {
            §§push(§§pop() - 1);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  if(_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(_loc8_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 addr015e:
                                 §§push(_loc5_ < 1e-10);
                                 if(_loc8_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc4_);
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(!_loc9_)
                                 {
                                    §§goto(addr015e);
                                 }
                              }
                              §§push(0);
                           }
                           if(§§pop() == §§pop())
                           {
                              _loc2_.x = 0;
                              if(_loc8_)
                              {
                                 _loc2_.y = 0;
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                              addr018c:
                              _loc2_.z = 0;
                              if(!_loc8_)
                              {
                                 break loop4;
                              }
                              _loc2_.w = 1;
                              if(_loc8_)
                              {
                                 break loop4;
                              }
                              §§goto(addr0224);
                           }
                           else
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              if(!_loc9_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                        _loc4_ = §§pop();
                        break;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc9_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(!_loc9_)
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
                           break loop4;
                        }
                        break;
                     }
                     §§goto(addr0288);
                  }
                  §§goto(addr018c);
               }
               §§goto(addr0273);
            }
            pastafarian.spritesheet.§,=§(100);
            §§goto(addr029f);
         }
         tunnel.§<!M§.reset();
         if(_loc8_)
         {
            addr0224:
            tunnel.display(0);
            if(_loc8_)
            {
               child.§9E§(10,86);
               if(!_loc9_)
               {
                  child.spritesheet.§,=§(78);
                  if(_loc8_)
                  {
                     child.spritesheet.§@S§(true);
                     §#!P§.§9E§(10,91);
                     if(!_loc9_)
                     {
                        addr0273:
                        §#!P§.spritesheet.§,=§(67);
                        §#!P§.spritesheet.§@S§(false);
                        addr0288:
                        pastafarian.§9E§(9.7,85);
                        break loop5;
                     }
                  }
                  addr029f:
                  pastafarian.spritesheet.§@S§(true);
                  var _loc6_:§ 7§ = new § 6§(child.§<!U§());
                  if(_loc8_)
                  {
                     dialog.§";§("What space?",-260,-140,null,null,null,_loc6_,null);
                  }
                  var _loc7_:* = §&!S§.width(560);
                  if(_loc8_)
                  {
                     dialog.§";§("Basically it\'s a pocket dimension where you can keep things.",280,-40,null,_loc7_,null,null,null);
                  }
                  _loc7_ = §&!S§.width(800);
                  _loc6_ = new § 6§(§#!P§.§<!U§());
                  if(_loc8_)
                  {
                     dialog.§";§("That way you always have it with you, but you don\'t have to carry it.",120,330,null,_loc7_,-1,_loc6_,null);
                  }
                  return;
               }
            }
         }
         break loop5;
      }
      
      public function frame22() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(!_loc8_)
         {
            pastafarian.model.§#"§(true);
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -113;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.y = -63;
            if(_loc7_)
            {
               break;
            }
            addr0059:
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
            §§push(Number(Math.sin(1.562069680534925)));
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.923);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().x = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(-0.385);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.031);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc7_)
               {
                  break;
               }
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc2_.x);
                           if(_loc7_)
                           {
                              §§push(_loc2_.x);
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 break loop3;
                              }
                              §§push(_loc2_.y);
                              §§push(_loc2_.y);
                              if(_loc8_)
                              {
                                 break loop10;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 break loop4;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc8_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(_loc2_.z);
                           if(_loc7_)
                           {
                              break;
                           }
                           break loop4;
                        }
                        while(true)
                        {
                           §§push(_loc2_.z);
                           if(!_loc8_)
                           {
                              break loop10;
                           }
                           §§goto(addr0142);
                        }
                        §§goto(addr0143);
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     addr0143:
                     §§push(Number(§§pop()));
                     §§push(_loc2_.w);
                     if(!_loc8_)
                     {
                        addr0142:
                        §§push(§§pop() * _loc2_.w);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc4_:Number = §§pop();
               §§push(_loc4_);
               if(_loc7_)
               {
                  §§push(§§pop() - 1);
                  if(_loc7_)
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
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(!_loc8_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(-_loc5_);
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc7_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop6;
                           }
                           §§push(_loc4_);
                           if(_loc8_)
                           {
                              break loop5;
                           }
                           §§push(0);
                        }
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc7_)
                              {
                                 _loc2_.x = 0;
                                 if(!_loc8_)
                                 {
                                    _loc2_.y = 0;
                                    _loc2_.z = 0;
                                    _loc2_.w = 1;
                                    break loop6;
                                 }
                              }
                              §§goto(addr0205);
                           }
                           else
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              if(!_loc8_)
                              {
                                 break loop5;
                              }
                              §§goto(addr01dc);
                           }
                        }
                        §§goto(addr0288);
                     }
                     §§goto(addr02a1);
                  }
                  tunnel.§<!M§.reset();
                  §§goto(addr0232);
               }
               addr01dc:
               _loc4_ = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(_loc7_)
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
               while(true)
               {
                  if(_loc7_)
                  {
                     addr0205:
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(!_loc8_)
                     {
                        break loop6;
                     }
                     addr0232:
                     tunnel.display(0);
                     child.model.§#"§(false);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  addr024c:
                  §#!P§.§9E§(10,90.3,null,1);
                  §#!P§.spritesheet.§,=§(28);
                  §#!P§.spritesheet.§@S§(false);
                  if(_loc7_)
                  {
                     pastafarian.§9E§(9.6,84.6,null,16);
                  }
                  break;
               }
               addr0288:
               pastafarian.spritesheet.§,=§(14);
               addr02a1:
               pastafarian.spritesheet.§@S§(true);
               var _loc6_:* = §&!S§.scale(0.5);
               if(!_loc8_)
               {
                  dialog.§`!^§("You never needed my help?",-40,300,_loc6_,null,0);
               }
               return;
            }
            _loc2_.w = Number(Math.cos(1.562069680534925));
            continue loop10;
         }
         _loc1_.z = 6937;
         §§goto(addr0059);
      }
      
      public function frame21() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc7_)
         {
            _loc1_.x = -67;
            if(!_loc7_)
            {
               _loc1_.y = -115;
               if(_loc8_)
               {
                  _loc1_.z = 6685;
               }
            }
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
         §§push(Number(Math.sin(2.007128639793479)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            §§push(0.264);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.145);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.954);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc7_)
                  {
                     _loc2_.w = Number(Math.cos(2.007128639793479));
                  }
               }
            }
         }
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            §§push(_loc2_.y);
            if(!_loc7_)
            {
               §§push(§§pop() + §§pop() * §§pop());
               §§push(_loc2_.z);
               §§push(_loc2_.z);
               if(_loc7_)
               {
                  break;
               }
            }
            §§goto(addr0107);
         }
         addr0107:
         §§push(§§pop() * §§pop());
         if(!_loc7_)
         {
            §§push(§§pop() + §§pop());
            §§push(_loc2_.w);
            if(_loc8_)
            {
               §§push(_loc2_.w);
               break loop1;
            }
         }
         §§push(§§pop() + §§pop());
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(_loc8_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc5_);
                     }
                     else
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           §§push(-§§pop());
                           if(_loc7_)
                           {
                              break loop3;
                           }
                        }
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc7_)
                     {
                        break loop4;
                     }
                     §§push(_loc4_);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                     §§push(0);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break loop3;
                  }
                  if(_loc8_)
                  {
                     _loc2_.x = 0;
                     while(true)
                     {
                        if(_loc8_)
                        {
                           _loc2_.y = 0;
                           if(!_loc8_)
                           {
                              §§goto(addr01db);
                           }
                        }
                        _loc2_.z = 0;
                        if(!_loc8_)
                        {
                           break;
                        }
                        _loc2_.w = 1;
                        if(!_loc7_)
                        {
                           break loop5;
                        }
                        §§goto(addr0273);
                     }
                     §§goto(addr01fa);
                  }
                  §§goto(addr0268);
               }
               §§goto(addr0209);
            }
            §#!P§.spritesheet.§@S§(true);
            §§goto(addr0268);
         }
         _loc4_ = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.x);
         if(!_loc7_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().x = §§pop();
         addr01db:
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
         addr01fa:
         §§push(_loc2_);
         §§push(_loc2_.w);
         if(!_loc7_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().w = §§pop();
         addr0209:
         tunnel.§<!M§.reset();
         if(_loc8_)
         {
            tunnel.display(0);
            if(_loc8_)
            {
               child.model.§#"§(false);
               §#!P§.§9E§(9.9,90.3,null,-2);
               §#!P§.spritesheet.§,=§(71);
               if(_loc8_)
               {
                  break loop4;
               }
            }
         }
         addr0268:
         pastafarian.model.§#"§(false);
         addr0273:
         var _loc6_:* = §&!S§.scale(0.5);
         if(!_loc7_)
         {
            dialog.§`!^§("Then...",40,100,_loc6_,null,16777215);
         }
      }
      
      public function frame20() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.model.§#"§(false);
         if(_loc4_)
         {
            §#!P§.§9E§(9.9,90.3,null,-2);
            §#!P§.spritesheet.§,=§(71);
            if(!_loc3_)
            {
               §#!P§.spritesheet.§@S§(true);
            }
            pastafarian.§9E§(10.1,89.5,null,1);
            while(true)
            {
               if(!_loc3_)
               {
                  pastafarian.spritesheet.§,=§(78);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               pastafarian.spritesheet.§@S§(true);
               break;
            }
         }
         var _loc1_:* = §&!S§.width(600);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("I recognize that I frustrate you, so I\'m taking my leave.",-120,-130,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(730);
         if(!_loc3_)
         {
            dialog.§";§("You may do as you see fit, but please at least consider my advice.",0,350,null,_loc1_,-1,null,null);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            child.§9E§(10,86);
         }
         child.spritesheet.§,=§(78);
         if(!_loc4_)
         {
            child.spritesheet.§@S§(true);
            §#!P§.§9E§(10,94);
         }
         §#!P§.spritesheet.§,=§(0);
         if(!_loc4_)
         {
            §#!P§.spritesheet.§@S§(false);
         }
         pastafarian.§9E§(9.7,85);
         if(!_loc4_)
         {
            pastafarian.spritesheet.§,=§(100);
            pastafarian.spritesheet.§@S§(true);
            dialog.§";§("How \'bout you?",-80,-260,null,null,null,null,null);
         }
         var _loc1_:* = §&!S§.width(360);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("What power would you pick?",0,-50,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Hammerspace.",420,100,null,null,null,_loc2_,null);
         }
      }
      
      public function frame19() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.model.§#"§(false);
         §#!P§.§9E§(9.9,90.3,null,-2);
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.spritesheet.§,=§(71);
               if(!_loc4_)
               {
                  break;
               }
               §#!P§.spritesheet.§@S§(true);
            }
            pastafarian.§9E§(10.1,89.5,null,1);
            break;
         }
         pastafarian.spritesheet.§,=§(69);
         if(!_loc3_)
         {
            pastafarian.spritesheet.§@S§(true);
         }
         var _loc1_:* = §&!S§.width(490);
         if(_loc4_)
         {
            dialog.§";§("Oh... I\'m sorry. I never meant to misrepresent my intentions.",-320,-180,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("I came here to teach.",200,-20,null,null,-1,_loc2_,null);
            if(_loc4_)
            {
               dialog.§";§("Not to return home.",340,340,null,null,-1,null,null);
            }
         }
      }
      
      public function frame18() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = -36;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.y = -136;
            if(!_loc8_)
            {
               _loc1_.z = 6627;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(2.007128639793479)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.264);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.145);
                  if(!_loc8_)
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
            §§push(-0.954);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc7_)
            {
               _loc2_.w = Number(Math.cos(2.007128639793479));
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
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc8_)
                     {
                        §§push(_loc2_.w);
                        if(_loc7_)
                        {
                           §§push(_loc2_.w);
                           break;
                        }
                        break loop3;
                     }
                     break loop4;
                  }
               }
               §§push(§§pop() * §§pop());
               break loop3;
            }
            §§push(Number(§§pop()));
            if(_loc7_)
            {
               §§goto(addr0121);
            }
            §§goto(addr0122);
         }
         §§push(§§pop() + §§pop());
         if(!_loc8_)
         {
            break loop4;
         }
         addr0122:
         var _loc4_:* = Number(§§pop());
         addr0121:
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               §§push(§§pop() - 1);
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(_loc5_);
               §§push(0);
               if(!_loc8_)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc5_);
                        if(!_loc8_)
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
                  if(!_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  §§push(_loc4_);
                  if(!_loc7_)
                  {
                     break loop6;
                  }
                  §§push(0);
               }
               if(§§pop() != §§pop())
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break loop6;
               }
               _loc2_.x = 0;
               if(!_loc8_)
               {
                  _loc2_.y = 0;
                  if(_loc7_)
                  {
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     break;
                  }
               }
               §§goto(addr020a);
            }
            tunnel.§<!M§.reset();
            §§goto(addr020a);
         }
         _loc4_ = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.x);
         if(_loc7_)
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
         if(_loc7_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().z = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            §§push(_loc2_.w);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().w = §§pop();
            break loop7;
         }
         addr020a:
         tunnel.display(0);
         child.model.§#"§(false);
         if(_loc7_)
         {
            §#!P§.§9E§(9.9,90.3,null,-2);
            §#!P§.spritesheet.§,=§(72);
            while(true)
            {
               if(_loc7_)
               {
                  §#!P§.spritesheet.§@S§(true);
                  if(!_loc7_)
                  {
                     break;
                  }
                  pastafarian.§9E§(10.1,89.5,null,-1);
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               pastafarian.spritesheet.§,=§(106);
               break;
            }
         }
         pastafarian.spritesheet.§@S§(true);
         var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Farewell!",140,-140,null,null,null,_loc6_,null);
         }
         _loc6_ = new § 6§(§#!P§.§<!U§());
         if(_loc7_)
         {
            dialog.§";§("Wait, what?",-200,0,null,null,null,_loc6_,null);
         }
      }
      
      public function frame17() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc1_:§1![§ = tunnel.§"[§;
         var _loc2_:Model = pastafarian.model;
         loop0:
         while(true)
         {
            if(_loc10_)
            {
               if(_loc2_.§0p§ > 0)
               {
                  §§push(_loc10_ ? _loc1_.§3!#§ : _loc1_.§9!R§);
               }
               else
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc10_)
                     {
                        if(_loc2_.§0p§ >= 0)
                        {
                           break;
                        }
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     §§pop();
                     if(!_loc11_)
                     {
                        §§push(_loc1_.§9!R§ == null);
                        if(_loc10_)
                        {
                           §§push(!§§pop());
                           if(_loc10_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        break;
                     }
                     break loop0;
                  }
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§goto(addr0090);
                  }
                  else
                  {
                     §§push(_loc1_.§@8§);
                  }
               }
               §§pop().§4w§(_loc2_);
               if(!_loc10_)
               {
                  break;
               }
            }
            tunnel.§"[§.§&!2§(pastafarian.model);
            break;
         }
         var _loc3_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc11_)
         {
            _loc3_.x = -36;
            if(_loc10_)
            {
               _loc3_.y = -136;
               if(!_loc11_)
               {
                  _loc3_.z = 6627;
               }
            }
         }
         var _loc4_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc10_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(2.007128639793479)));
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc11_)
            {
               §§push(_loc4_);
               §§push(0.264);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().x = §§pop();
               if(!_loc10_)
               {
                  break;
               }
               §§push(_loc4_);
               §§push(-0.145);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().y = §§pop();
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(_loc4_);
            §§push(-0.954);
            if(_loc10_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().z = §§pop();
            if(!_loc11_)
            {
               _loc4_.w = Number(Math.cos(2.007128639793479));
            }
            break;
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop16:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc4_.x);
                     if(!_loc11_)
                     {
                        §§push(_loc4_.x);
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc11_)
                        {
                           break loop16;
                        }
                        §§push(_loc4_.y);
                        if(!_loc10_)
                        {
                           break loop5;
                        }
                        §§push(_loc4_.y);
                        if(_loc11_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                     }
                     §§push(_loc4_.z);
                     break;
                  }
                  §§push(_loc4_.z);
                  if(_loc10_)
                  {
                     break loop4;
                  }
                  §§goto(addr01d9);
               }
               §§goto(addr01db);
            }
            §§push(§§pop() + §§pop());
            if(!_loc11_)
            {
               addr01d9:
               §§goto(addr01da);
               §§push(_loc4_.w * _loc4_.w);
            }
            §§goto(addr01f2);
         }
         §§push(§§pop() * §§pop());
         if(_loc10_)
         {
            break loop5;
         }
         addr01da:
         addr01f2:
         addr01db:
         §§push(§§pop() + §§pop());
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(_loc6_);
         if(_loc10_)
         {
            §§push(§§pop() - 1);
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc7_);
                     if(_loc10_)
                     {
                        §§push(0);
                        if(_loc11_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc10_)
                           {
                              break loop9;
                           }
                           §§push(_loc7_);
                           if(!_loc10_)
                           {
                              break loop7;
                           }
                        }
                        else
                        {
                           §§push(-_loc7_);
                           if(_loc11_)
                           {
                              break loop6;
                           }
                        }
                     }
                     §§push(§§pop() < 1e-10);
                     if(_loc10_)
                     {
                        §§push(!§§pop());
                     }
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§push(_loc6_);
                                 break loop6;
                              }
                              §§goto(addr02e2);
                           }
                           §§goto(addr034c);
                        }
                        §§goto(addr02eb);
                     }
                     §§goto(addr02f4);
                  }
                  §§goto(addr024d);
               }
               §§goto(addr0326);
            }
            _loc6_ = Number(§§pop());
            while(true)
            {
               if(_loc10_)
               {
                  §§push(_loc4_);
                  §§push(_loc4_.x);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc4_);
                  §§push(_loc4_.y);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
                  §§pop().y = §§pop();
                  if(_loc10_)
                  {
                     §§push(_loc4_);
                     §§push(_loc4_.z);
                     if(!_loc11_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().z = §§pop();
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.w);
                           if(_loc10_)
                           {
                              §§push(§§pop() * _loc6_);
                           }
                           §§pop().w = §§pop();
                           if(_loc11_)
                           {
                              break;
                           }
                           §§goto(addr02e2);
                        }
                        §§goto(addr02eb);
                     }
                     §§goto(addr02f4);
                  }
               }
               §§goto(addr034c);
            }
            §§goto(addr0367);
         }
         addr024d:
         if(§§pop() == 0)
         {
            _loc4_.x = 0;
            if(_loc10_)
            {
               _loc4_.y = 0;
               _loc4_.z = 0;
               _loc4_.w = 1;
            }
            addr02e2:
            tunnel.§<!M§.reset();
            addr02eb:
            tunnel.display(0);
            addr02f4:
            child.model.§#"§(false);
            if(!_loc11_)
            {
               §#!P§.§9E§(9.9,90.3,null,-2);
               if(!_loc11_)
               {
                  §#!P§.spritesheet.§,=§(69);
               }
               addr0326:
               §#!P§.spritesheet.§@S§(true);
               while(true)
               {
                  if(_loc10_)
                  {
                     pastafarian.§9E§(10.1,89.7,null,-1);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  addr034c:
                  pastafarian.spritesheet.§,=§(103);
                  if(_loc10_)
                  {
                     pastafarian.spritesheet.§@S§(true);
                  }
                  break;
               }
            }
            addr0367:
            var _loc8_:* = §&!S§.width(580);
            var _loc9_:§ 7§ = new § 6§(pastafarian.§<!U§());
            if(!_loc11_)
            {
               dialog.§";§("Now that I\'ve said my piece, I\'ll leave you alone.",160,-210,null,_loc8_,null,_loc9_,null);
            }
            _loc8_ = §&!S§.scale(0.4);
            if(_loc10_)
            {
               dialog.§`!^§("About time!",-70,100,_loc8_,null,16777215);
            }
            return;
         }
         §§push(1 / Number(Math.sqrt(_loc6_)));
         break loop7;
      }
      
      public function frame16() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(_loc8_)
         {
            _loc1_.x = -6;
            while(true)
            {
               if(!_loc7_)
               {
                  _loc1_.y = -184;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 6826;
               break;
            }
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
         §§push(Number(Math.sin(1.9460421159736774)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            §§push(0.723);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc7_)
               {
                  §§push(_loc2_);
                  §§push(-0.384);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(-0.574);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
               }
               _loc2_.w = Number(Math.cos(1.9460421159736774));
               break;
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x);
                  §§push(_loc2_.x);
                  if(_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(_loc7_)
                     {
                        break loop3;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc7_)
                     {
                        break loop4;
                     }
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     break loop4;
                  }
                  §§goto(addr0123);
               }
               §§push(_loc2_.w);
               break loop3;
            }
            §§push(_loc2_.w);
            if(_loc8_)
            {
               break loop8;
            }
            §§goto(addr0122);
         }
         addr0122:
         addr0123:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(§§pop() - 1);
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(_loc5_);
               if(_loc8_)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     addr0176:
                     §§push(_loc5_ < 1e-10);
                     if(_loc8_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop6;
                     }
                     §§push(_loc4_);
                  }
                  else
                  {
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        §§goto(addr0176);
                        §§push(-§§pop());
                     }
                  }
               }
               §§push(0);
               break;
            }
            if(§§pop() == §§pop())
            {
               _loc2_.x = 0;
               if(!_loc7_)
               {
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  break;
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
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
            }
            §§push(_loc2_);
            §§push(_loc2_.z);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().z = §§pop();
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
         tunnel.display(0);
         child.model.§#"§(false);
         §#!P§.§9E§(9.9,90.3,null,-3);
         §#!P§.spritesheet.§,=§(68);
         §#!P§.spritesheet.§@S§(true);
         if(_loc8_)
         {
            pastafarian.§9E§(10,89.7,null,-1);
            pastafarian.spritesheet.§,=§(113);
         }
         pastafarian.spritesheet.§@S§(true);
         var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc7_)
         {
            dialog.§";§("All I ask is that you consider it.",220,-20,null,null,null,_loc6_,null);
         }
      }
      
      public function frame15() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -33;
               if(!_loc9_)
               {
                  break;
               }
               _loc1_.y = -122;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 6982;
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
         §§push(Number(Math.sin(1.7191493132144144)));
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
               §§push(0.91);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.366);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(-0.193);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(1.7191493132144144));
            break;
         }
         while(true)
         {
            §§push(_loc2_.x);
            if(_loc9_)
            {
               §§push(§§pop() * _loc2_.x);
               if(!_loc9_)
               {
                  break;
               }
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc2_.y);
                           if(_loc9_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc8_)
                              {
                                 break loop5;
                              }
                              §§push(_loc2_.z);
                              §§push(_loc2_.z);
                              if(_loc8_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc8_)
                           {
                              §§push(§§pop() + §§pop());
                              break loop5;
                           }
                        }
                        §§push(_loc2_.w);
                        break loop4;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.w);
                     break loop6;
                  }
               }
               §§push(§§pop() + §§pop());
            }
            §§push(Number(§§pop()));
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr012f);
         }
         addr012f:
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
               §§push(_loc5_);
               §§push(0);
               if(_loc9_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        addr0170:
                        §§push(§§pop() < 1e-10);
                        if(_loc9_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           break loop7;
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc5_);
                     if(!_loc8_)
                     {
                        §§push(-§§pop());
                        if(!_loc9_)
                        {
                           break loop7;
                        }
                        §§goto(addr0170);
                     }
                  }
                  §§push(0);
               }
               if(§§pop() != §§pop())
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break loop7;
               }
               while(true)
               {
                  if(!_loc8_)
                  {
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     _loc2_.z = 0;
                     if(_loc9_)
                     {
                        _loc2_.w = 1;
                        break loop8;
                     }
                     addr022e:
                     tunnel.display(0);
                     child.model.§#"§(false);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §#!P§.§9E§(9.9,90.3);
                  §§goto(addr0254);
               }
               §§goto(addr0299);
            }
            tunnel.§<!M§.reset();
            §§goto(addr022e);
         }
         _loc4_ = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().x = §§pop();
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
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(_loc9_)
                  {
                     break loop8;
                  }
               }
               addr0254:
               §#!P§.spritesheet.§,=§(46);
               if(!_loc8_)
               {
                  §#!P§.spritesheet.§@S§(false);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            pastafarian.§9E§(10,89.7);
            if(!_loc8_)
            {
               pastafarian.spritesheet.§,=§(115);
               if(_loc9_)
               {
                  break;
               }
            }
            §§goto(addr02a3);
         }
         addr0299:
         pastafarian.spritesheet.§@S§(true);
         addr02a3:
         var _loc6_:* = §&!S§.width(800);
         if(_loc9_)
         {
            dialog.§";§("Empathy is not inefficiency, nor is politeness merely a vehicle for deceit.",-140,-250,null,_loc6_,null,null,null);
         }
         _loc6_ = §&!S§.width(640);
         var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc9_)
         {
            dialog.§";§("Instead, they are a lifestyle with measurable benefits.",120,-10,null,_loc6_,-1,_loc7_,null);
         }
         _loc6_ = §&!S§.width(810);
         if(_loc9_)
         {
            dialog.§";§("This lifestyle requires practice, but it rewards dedicated practicioners.",60,330,null,_loc6_,-1,null,null);
         }
      }
      
      public function frame14() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = -70;
               if(_loc9_)
               {
                  break;
               }
               _loc1_.y = -100;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 7001;
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
         §§push(Number(Math.sin(1.7016960206944711)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(0.916);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.385);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(-0.109);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(1.7016960206944711));
            break;
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x);
               §§push(_loc2_.x);
               if(_loc8_)
               {
                  §§push(§§pop() * §§pop());
                  §§push(_loc2_.y);
                  if(_loc8_)
                  {
                     §§push(_loc2_.y);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc9_)
               {
                  §§push(_loc2_.z);
                  if(_loc8_)
                  {
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  addr012c:
                  §§push(§§pop() + §§pop());
                  if(!_loc9_)
                  {
                     §§push(_loc2_.w);
                     break loop3;
                  }
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc4_);
               if(!_loc9_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc9_)
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
                        if(!_loc9_)
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(-_loc5_);
                                    }
                                    §§push(§§pop() < 1e-10);
                                    if(!_loc9_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       break loop7;
                                    }
                                    §§push(_loc4_);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(1 / Number(Math.sqrt(_loc4_)));
                                    break;
                                 }
                                 if(!_loc8_)
                                 {
                                    break loop5;
                                 }
                                 _loc2_.x = 0;
                                 _loc2_.y = 0;
                                 if(_loc9_)
                                 {
                                    break loop5;
                                 }
                                 _loc2_.z = 0;
                                 if(!_loc8_)
                                 {
                                    break loop6;
                                 }
                                 _loc2_.w = 1;
                                 if(_loc8_)
                                 {
                                    break loop7;
                                 }
                                 child.model.§#"§(false);
                                 §#!P§.§9E§(9.9,90.3);
                                 if(_loc8_)
                                 {
                                    §#!P§.spritesheet.§,=§(46);
                                    §#!P§.spritesheet.§@S§(false);
                                    break loop5;
                                 }
                                 §§goto(addr028f);
                              }
                           }
                           _loc4_ = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                           break loop6;
                        }
                        §§goto(addr01b1);
                     }
                     tunnel.§<!M§.reset();
                     if(!_loc9_)
                     {
                        tunnel.display(0);
                        if(!_loc8_)
                        {
                           break loop5;
                        }
                        §§goto(addr0238);
                     }
                     §§goto(addr0274);
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  break loop7;
               }
               pastafarian.§9E§(10,89.7);
               addr0274:
               pastafarian.spritesheet.§,=§(114);
               if(_loc8_)
               {
                  pastafarian.spritesheet.§@S§(true);
               }
               addr028f:
               var _loc6_:* = §&!S§.width(900);
               if(!_loc9_)
               {
                  dialog.§";§("I put it to you that others tend to react to your behavior by tuning you out.",-60,-290,null,_loc6_,null,null,null);
               }
               _loc6_ = §&!S§.width(900);
               var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
               if(!_loc9_)
               {
                  dialog.§";§("Additionally, I put it to you that you could have recognized and corrected this had you given more thought to others\' perspectives.",40,-60,null,_loc6_,-1,_loc7_,230);
               }
               return;
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            §§goto(addr012c);
         }
         §§push(_loc2_.w);
         break loop4;
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = -170;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = 1;
            if(_loc9_)
            {
               _loc1_.z = 6959;
            }
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
         §§push(Number(Math.sin(1.5533430342749535)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.895);
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
            §§push(-0.36);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc9_)
            {
               break;
            }
            §§goto(addr00d5);
         }
         §§push(_loc2_);
         §§push(0.263);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc3_);
         }
         §§pop().z = §§pop();
         if(_loc9_)
         {
            _loc2_.w = Number(Math.cos(1.5533430342749535));
         }
         addr00d5:
         loop3:
         while(true)
         {
            §§push(_loc2_.x);
            if(!_loc8_)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop() * _loc2_.x);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(_loc2_.y);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc9_)
                           {
                              break loop5;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break loop4;
                           }
                        }
                        §§push(_loc2_.z);
                        if(_loc9_)
                        {
                           break;
                        }
                        §§goto(addr012e);
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc8_)
                     {
                        §§push(§§pop() + §§pop());
                        break;
                     }
                     break loop4;
                  }
                  §§push(Number(§§pop()));
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§goto(addr012f);
               }
               addr012f:
               addr012e:
               §§push(§§pop() + §§pop() * _loc2_.w);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:Number = §§pop();
         §§push(_loc4_);
         if(_loc9_)
         {
            §§push(§§pop() - 1);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop7:
         while(true)
         {
            while(true)
            {
               §§push(_loc5_);
               §§push(0);
               if(_loc9_)
               {
                  §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                  if(!_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc9_)
                  {
                     break loop7;
                  }
                  §§push(_loc4_);
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  if(!_loc8_)
                  {
                     break;
                  }
                  addr021b:
                  child.model.§#"§(false);
                  break loop7;
               }
               _loc4_ = 1 / Number(Math.sqrt(_loc4_));
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
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  break loop7;
               }
               §§goto(addr0246);
            }
            tunnel.§<!M§.reset();
            tunnel.display(0);
            §§goto(addr021b);
         }
         §#!P§.§9E§(9.9,90.3);
         §#!P§.spritesheet.§,=§(64);
         §#!P§.spritesheet.§@S§(true);
         addr0246:
         pastafarian.§9E§(10,89.7);
         pastafarian.spritesheet.§,=§(99);
         if(_loc9_)
         {
            pastafarian.spritesheet.§@S§(true);
         }
         var _loc6_:§ 7§ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(!_loc8_)
            {
               dialog.§";§("It\'s not my fault they-",240,-140,null,null,null,_loc6_,null);
               if(!_loc9_)
               {
                  break;
               }
            }
            § !C§("my");
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr02c5);
         }
         § !C§("they");
         addr02c5:
         var _loc7_:* = §&!S§.width(410);
         _loc6_ = new § 6§(pastafarian.§<!U§());
         if(_loc9_)
         {
            dialog.§";§("Please hold that thought until I finish.",-320,50,null,_loc7_,null,_loc6_,null);
         }
      }
      
      public function frame12() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:§1![§ = tunnel.§"[§;
         var _loc2_:Model = §#!P§.model;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc11_)
                  {
                     if(_loc2_.§0p§ > 0)
                     {
                        while(true)
                        {
                           if(_loc11_)
                           {
                              §§goto(addr0099);
                              §§push(_loc1_.§3!#§);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00b5);
                     }
                     else
                     {
                        §§push(false);
                        if(!_loc11_)
                        {
                           break;
                        }
                        if(_loc2_.§0p§ >= 0)
                        {
                           break;
                        }
                        if(_loc10_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc10_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(_loc1_.§9!R§ == null);
                  if(!_loc10_)
                  {
                     §§push(!§§pop());
                     if(_loc11_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  break loop1;
               }
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     break loop0;
                  }
               }
               else
               {
                  §§goto(addr0099);
                  §§push(_loc1_.§@8§);
               }
               §§goto(addr00b5);
            }
            §§push(Boolean(§§pop()));
            break loop16;
         }
         addr0099:
         _loc1_.§9!R§.§4w§(_loc2_);
         if(!_loc10_)
         {
            addr00a4:
            tunnel.§"[§.§&!2§(§#!P§.model);
         }
         addr00b5:
         var _loc3_:Point3D = tunnel.§<!M§.§%!7§;
         if(_loc11_)
         {
            _loc3_.x = -187;
            if(_loc11_)
            {
               _loc3_.y = 17;
               if(!_loc10_)
               {
                  _loc3_.z = 6947;
               }
            }
         }
         var _loc4_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc10_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.5184364492350666)));
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc10_)
         {
            §§push(_loc4_);
            §§push(0.886);
            if(!_loc10_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc11_)
               {
                  §§push(_loc4_);
                  §§push(-0.339);
                  if(_loc11_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               §§push(_loc4_);
               §§push(0.316);
               if(!_loc10_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               if(!_loc10_)
               {
                  _loc4_.w = Number(Math.cos(1.5184364492350666));
               }
               break;
            }
         }
         §§push(_loc4_.x * _loc4_.x);
         if(!_loc10_)
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
                     §§push(_loc4_.y);
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           §§push(_loc4_.y);
                           if(!_loc10_)
                           {
                              §§push(§§pop() + §§pop() * §§pop());
                              if(!_loc11_)
                              {
                                 break;
                              }
                              §§push(_loc4_.z);
                              if(_loc10_)
                              {
                                 break loop4;
                              }
                              §§push(_loc4_.z);
                              if(_loc10_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc10_)
                        {
                           break loop5;
                        }
                        §§push(_loc4_.w);
                        if(!_loc11_)
                        {
                           break loop4;
                        }
                     }
                     §§push(_loc4_.w);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  break loop4;
               }
            }
            §§push(§§pop() + §§pop());
            break loop5;
         }
         var _loc6_:Number = §§pop();
         while(true)
         {
            §§push(_loc6_);
            if(_loc11_)
            {
               §§push(§§pop() - 1);
               if(_loc10_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  if(_loc11_)
                  {
                     loop12:
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!_loc10_)
                              {
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       break loop11;
                                    }
                                    §§push(_loc7_);
                                 }
                                 else
                                 {
                                    §§push(-_loc7_);
                                    if(!_loc11_)
                                    {
                                       break loop13;
                                    }
                                 }
                                 §§push(§§pop() < 1e-10);
                                 if(_loc11_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop12;
                                 }
                                 §§push(_loc6_);
                              }
                              §§push(0);
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc11_)
                                 {
                                    _loc4_.x = 0;
                                    if(!_loc10_)
                                    {
                                       _loc4_.y = 0;
                                       if(_loc11_)
                                       {
                                          _loc4_.z = 0;
                                          _loc4_.w = 1;
                                          if(!_loc10_)
                                          {
                                             break loop12;
                                          }
                                          break;
                                       }
                                       break loop12;
                                    }
                                    break loop10;
                                 }
                              }
                              else
                              {
                                 §§push(1 / Number(Math.sqrt(_loc6_)));
                                 if(_loc11_)
                                 {
                                    break loop13;
                                 }
                                 §§goto(addr028b);
                              }
                              §§goto(addr029e);
                           }
                           §§goto(addr02b6);
                        }
                        addr028b:
                        _loc6_ = §§pop();
                        §§push(_loc4_);
                        §§push(_loc4_.x);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().x = §§pop();
                        addr029e:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().y = §§pop();
                        if(_loc11_)
                        {
                           addr02b6:
                           §§push(_loc4_);
                           §§push(_loc4_.z);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc6_);
                           }
                           §§pop().z = §§pop();
                           §§push(_loc4_);
                           §§push(_loc4_.w);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc6_);
                           }
                           §§pop().w = §§pop();
                           if(!_loc10_)
                           {
                              break;
                           }
                           break loop9;
                        }
                        break;
                     }
                  }
                  break loop12;
               }
               §§goto(addr031d);
            }
            pastafarian.§9E§(10,89.7);
            §§goto(addr0339);
         }
         §#!P§.§9E§(9.9,90.3);
         §#!P§.spritesheet.§,=§(46);
         if(_loc11_)
         {
            addr031d:
            §#!P§.spritesheet.§@S§(true);
            if(_loc11_)
            {
               break loop10;
            }
         }
         addr0339:
         pastafarian.spritesheet.§,=§(112);
         pastafarian.spritesheet.§@S§(true);
         var _loc8_:* = §&!S§.width(900);
         if(!_loc10_)
         {
            dialog.§";§("Extrapolating from my interactions with you, you have an extensive history of treating others as less than yourself.",-80,-260,null,_loc8_,null,null,null);
         }
         _loc8_ = §&!S§.width(820);
         var _loc9_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc10_)
         {
            dialog.§";§("As well as a similarly extensive history of failing to convey your ideas.",80,-30,null,_loc8_,-1,_loc9_,null);
         }
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  child.model.§#"§(false);
                  §#!P§.§9E§(9.9,90.3);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §#!P§.spritesheet.§,=§(70);
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §#!P§.spritesheet.§@S§(false);
               break;
            }
            pastafarian.§9E§(10,89.7);
            if(!_loc3_)
            {
               pastafarian.spritesheet.§,=§(107);
            }
            pastafarian.spritesheet.§@S§(true);
            if(_loc4_)
            {
               break;
            }
            §§goto(addr00a2);
         }
         dialog.§";§("Hmm...",-440,-320,null,null,null,null,null);
         addr00a2:
         var _loc1_:* = §&!S§.width(410);
         if(!_loc3_)
         {
            dialog.§";§("I cannot fault your desire to teach.",-100,-230,null,_loc1_,-1,null,null);
         }
         _loc1_ = §&!S§.width(560);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("However, might I make a... practical suggestion?",-40,-50,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Ok.",280,280,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(0.4);
         if(!_loc3_)
         {
            dialog.§`!^§("But I bet it isn\'t.",280,320,_loc1_,null,0);
         }
      }
      
      public function frame10() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc8_)
         {
            _loc1_.x = -200;
            while(true)
            {
               if(!_loc8_)
               {
                  _loc1_.y = 38;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc1_.z = 6791;
               break;
            }
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
         §§push(Number(Math.sin(1.2740903539558606)));
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
               §§push(0.684);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.275);
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
                  §§push(0.676);
                  if(_loc9_)
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
            _loc2_.w = Number(Math.cos(1.2740903539558606));
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
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     §§push(_loc2_.x);
                     if(!_loc9_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(_loc2_.y);
                     if(_loc8_)
                     {
                        break loop4;
                     }
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                  }
                  §§push(_loc2_.z);
                  break loop4;
               }
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  §§goto(addr012a);
                  §§push(_loc2_.w);
               }
               §§goto(addr0137);
            }
            §§push(_loc2_.z);
            if(!_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc8_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     break loop10;
                  }
                  §§goto(addr0137);
               }
               addr012a:
               §§push(_loc2_.w);
            }
            break;
         }
         addr0137:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = Number(§§pop());
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
               loop8:
               while(true)
               {
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(!_loc8_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(_loc9_)
                              {
                                 §§push(-§§pop());
                              }
                           }
                           §§push(§§pop() < 1e-10);
                           if(!_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop6;
                           }
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(_loc4_);
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc2_.x = 0;
                           if(!_loc9_)
                           {
                              break loop8;
                           }
                           _loc2_.y = 0;
                           if(_loc8_)
                           {
                              break loop6;
                           }
                           _loc2_.z = 0;
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           if(_loc9_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc4_ = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.z);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().z = §§pop();
                     }
                     _loc2_.w = 1;
                     if(_loc9_)
                     {
                        break loop6;
                     }
                     addr0245:
                     §#!P§.§9E§(9.9,90.3);
                     §#!P§.spritesheet.§,=§(69);
                     §#!P§.spritesheet.§@S§(false);
                     pastafarian.§9E§(10,89.7);
                     pastafarian.spritesheet.§,=§(108);
                     if(!_loc8_)
                     {
                        pastafarian.spritesheet.§@S§(true);
                     }
                     break loop5;
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  break loop6;
               }
               child.model.§#"§(false);
               §§goto(addr0245);
            }
            tunnel.§<!M§.reset();
            tunnel.display(0);
            break loop8;
         }
         var _loc6_:* = §&!S§.width(820);
         var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(_loc9_)
            {
               dialog.§";§("I\'m saving him from turning out like his father, and I\'m giving him free training.",-20,-170,null,_loc6_,null,_loc7_,null);
               if(!_loc9_)
               {
                  break;
               }
            }
            § !C§("and");
            break;
         }
         _loc7_ = new § 6§(§#!P§.§<!U§());
         if(_loc9_)
         {
            dialog.§";§("What\'s wrong with that?",160,360,null,null,null,_loc7_,null);
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         child.§9E§(10,86);
         child.spritesheet.§,=§(104);
         if(_loc4_)
         {
            child.spritesheet.§@S§(true);
         }
         §#!P§.§9E§(10,94);
         §#!P§.spritesheet.§,=§(0);
         §#!P§.spritesheet.§@S§(false);
         while(true)
         {
            if(_loc4_)
            {
               pastafarian.§9E§(9.7,85);
               if(_loc3_)
               {
                  break;
               }
               pastafarian.spritesheet.§,=§(100);
               if(!_loc4_)
               {
                  break;
               }
            }
            pastafarian.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Why don\'t you know?",120,-240,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(520);
         _loc1_ = new § 6§(pastafarian.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Well... I wasn\'t prepared for this question.",-300,-30,null,_loc2_,null,_loc1_,null);
            if(!_loc3_)
            {
               dialog.§";§("Please give me a moment to think of a reply.",-20,280,null,null,-1,null,null);
            }
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc9_)
         {
            _loc1_.x = -188;
            if(_loc8_)
            {
               _loc1_.y = 98;
               if(!_loc9_)
               {
                  _loc1_.z = 6327;
               }
            }
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.0908307824964558)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(0.574);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(-0.289);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(0.766);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc9_)
               {
                  break;
               }
            }
            §§goto(addr00d3);
         }
         _loc2_.w = Number(Math.cos(1.0908307824964558));
         addr00d3:
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            if(_loc8_)
            {
               §§push(_loc2_.y);
               if(_loc9_)
               {
                  break;
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            §§push(_loc2_.z);
            §§push(_loc2_.z);
            if(_loc8_)
            {
               §§goto(addr011e);
            }
            break;
         }
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         addr011e:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc8_)
         {
            §§push(_loc2_.w);
            §§push(_loc2_.w);
            break loop2;
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc9_)
         {
            §§push(§§pop() - 1);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(0);
                        if(!_loc9_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc8_)
                              {
                                 break;
                              }
                              addr015f:
                              §§push(_loc5_ < 1e-10);
                              if(!_loc9_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break loop5;
                              }
                              §§push(_loc4_);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                                 §§goto(addr015f);
                                 §§push(-§§pop());
                              }
                           }
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 _loc2_.x = 0;
                                 if(_loc9_)
                                 {
                                    break loop3;
                                 }
                                 _loc2_.y = 0;
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                              _loc2_.z = 0;
                              if(_loc8_)
                              {
                                 break loop6;
                              }
                              break loop4;
                           }
                           §§goto(addr0261);
                        }
                        else
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     _loc2_.w = 1;
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§goto(addr0257);
                  }
                  _loc4_ = §§pop();
                  if(!_loc9_)
                  {
                     break loop4;
                  }
                  break loop3;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               §§goto(addr023a);
            }
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(!_loc9_)
                  {
                     break loop5;
                  }
                  addr023a:
                  child.§9E§(10,86);
                  if(!_loc9_)
                  {
                     child.spritesheet.§,=§(104);
                  }
               }
            }
            addr0257:
            child.spritesheet.§@S§(true);
            addr0261:
            §#!P§.§9E§(10,94);
            §#!P§.spritesheet.§,=§(0);
            if(!_loc9_)
            {
               §#!P§.spritesheet.§@S§(false);
               pastafarian.§9E§(9.7,85);
               break;
            }
            §§goto(addr029e);
         }
         pastafarian.spritesheet.§,=§(102);
         addr029e:
         pastafarian.spritesheet.§@S§(true);
         var _loc6_:* = §&!S§.width(710);
         var _loc7_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc9_)
         {
            dialog.§";§("If you could have any superpower, what would you have?",-120,-250,null,_loc6_,null,_loc7_,null);
         }
         _loc7_ = new § 6§(pastafarian.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("I don\'t know.",-260,60,null,null,null,_loc7_,null);
         }
      }
   }
}

