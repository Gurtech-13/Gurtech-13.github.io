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
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class GoldMedal extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var skater:StageActor;
      
      public var child:StageActor;
      
      public function GoldMedal()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§?t§,-1);
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
            §§pop().frames = null;
            if(_loc1_)
            {
               name = "Gold Medal";
            }
            break;
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
                  skater = null;
                  if(_loc2_)
                  {
                     child = null;
                     if(_loc1_)
                     {
                        break;
                     }
                  }
               }
               sprites.length = 0;
               break;
            }
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               skater = new StageActor(section,CharacterRegistry.skater,false,null,false,null);
               if(_loc6_)
               {
                  break;
               }
            }
            skater.billboardMode = true;
            if(!_loc6_)
            {
               sprites.push(skater);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(_loc5_)
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
               if(_loc5_)
               {
                  skater.goesTo = new § !N§(_loc2_,-3);
                  if(!_loc5_)
                  {
                     break;
                  }
                  child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
                  if(_loc6_)
                  {
                     break loop1;
                  }
               }
               child.billboardMode = true;
               if(!_loc6_)
               {
                  break loop1;
               }
               break;
            }
            §§push(§!^§.pathName);
            if(!_loc6_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
            if(!_loc6_)
            {
               child.goesTo = new § !N§(_loc4_,-2);
            }
            return;
         }
         sprites.push(child);
         break loop2;
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            skater.placeAt(22.6,50.5);
            if(!_loc4_)
            {
               skater.spritesheet.§,=§(79);
               if(_loc5_)
               {
                  skater.spritesheet.§@S§(false);
                  child.placeAt(23,50);
               }
               child.spritesheet.§,=§(78);
               child.spritesheet.§@S§(true);
            }
         }
         var _loc1_:* = §&!S§.width(250);
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("...");
                  §§push(0);
                  §§push(-240);
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc5_)
                              {
                                 addr00a8:
                                 §§push(null);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    break loop1;
                                 }
                                 break loop0;
                              }
                              break;
                           }
                           §§push(null);
                           if(!_loc5_)
                           {
                              break loop0;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        addr00d1:
                        §§push(null / 2.5);
                        break loop1;
                     }
                     §§push(null);
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr00a8);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
               if(_loc5_)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("This is bronze.");
                        §§push(0);
                        §§push(-120);
                        if(!_loc4_)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(_loc5_)
                                       {
                                          addr0122:
                                          §§push(null);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             break loop4;
                                          }
                                          break loop3;
                                       }
                                       break;
                                    }
                                    §§push(null);
                                    if(!_loc5_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 break loop5;
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break;
                        }
                        §§goto(addr0122);
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
                  }
                  §§push(§§pop());
                  break loop4;
               }
            }
            §§push(§§pop());
            break loop1;
         }
         _loc1_ = §&!S§.scale(0.6);
         var _loc2_:* = §&!S§.width(590);
         var _loc3_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc5_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Yeah, well, it\'s the closest I could find.");
               §§push(-80);
               §§push(24);
               if(_loc5_)
               {
                  if(_loc1_ == null)
                  {
                     if(_loc5_)
                     {
                        addr01ca:
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
               §§goto(addr01ca);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,_loc3_);
         }
         _loc1_ = §&!S§.width(1020);
         _loc3_ = new § 6§(skater.§<!U§());
         if(_loc5_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Don\'t worry. It\'s the thought that counts.");
                     §§push(252);
                     §§push(228);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(!_loc5_)
                        {
                           break loop9;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc5_)
                           {
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc5_)
                           {
                              break loop9;
                           }
                           §§goto(addr026f);
                        }
                     }
                     §§push(null);
                     if(_loc5_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop9;
                  }
                  §§goto(addr027a);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0275);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc5_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),1,_loc3_);
            addr027a:
            if(_loc5_)
            {
               dialog.§ q§("Or is it copper?",0,-170,§&!S§.scale(0.4));
            }
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(!_loc7_)
         {
            _loc1_.x = 122;
            while(true)
            {
               if(!_loc7_)
               {
                  _loc1_.y = -152;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 3638;
               break;
            }
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.1519173063162575)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.068);
               if(!_loc7_)
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
            §§push(-0.021);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.997);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            addr00d4:
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc8_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc8_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(_loc2_.z);
                  }
                  §§push(_loc2_.z);
                  if(_loc7_)
                  {
                     break;
                  }
               }
               addr011c:
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(_loc2_.w);
               if(_loc8_)
               {
                  §§push(_loc2_.w);
                  break;
               }
               var _loc4_:Number = §§pop() + §§pop();
               §§push(_loc4_);
               if(!_loc7_)
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
                  §§push(_loc5_);
                  §§push(0);
                  if(!_loc7_)
                  {
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc7_)
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
                        if(!_loc7_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        break loop4;
                     }
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     if(!_loc7_)
                     {
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
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc7_)
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
                        break;
                     }
                     addr0200:
                     skater.spritesheet.§,=§(74);
                  }
                  skater.spritesheet.§@S§(false);
                  child.placeAt(23,50);
                  if(_loc8_)
                  {
                     child.spritesheet.§,=§(101);
                     child.spritesheet.§@S§(true);
                     if(!_loc7_)
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(dialog);
                              §§push("You won!");
                              §§push(-320);
                              §§push(-240);
                              if(_loc8_)
                              {
                                 while(true)
                                 {
                                    §§push(null);
                                    if(!_loc7_)
                                    {
                                       if(§§pop() == null)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(null);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr02a3);
                                             §§push(§§pop());
                                          }
                                       }
                                       else
                                       {
                                          §§push(null);
                                          if(!_loc8_)
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
                              if(!_loc7_)
                              {
                                 break;
                              }
                              break loop6;
                           }
                           §§goto(addr02a3);
                        }
                        §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
                        addr02a3:
                     }
                  }
                  var _loc6_:§ 7§ = new § 6§(child.§<!U§());
                  if(_loc8_)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("You get a gold medal!");
                              §§push(-240);
                              §§push(-80);
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(null);
                                          if(_loc8_)
                                          {
                                             addr030e:
                                             §§push(§§pop());
                                             break loop10;
                                          }
                                          break loop9;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(null);
                                          break loop9;
                                       }
                                    }
                                    addr0321:
                                    §§push(null);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    break loop9;
                                 }
                                 §§goto(addr030e);
                              }
                              §§goto(addr0321);
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc6_);
                     }
                     §§push(§§pop() / 2.5);
                     break loop10;
                  }
                  _loc6_ = new § 6§(skater.§<!U§());
                  loop12:
                  while(true)
                  {
                     if(_loc8_)
                     {
                        loop13:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("Oh!");
                              §§push(160);
                              §§push(180);
                              if(!_loc7_)
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr0396:
                                          §§push(null);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop());
                                             break;
                                          }
                                          break loop13;
                                       }
                                       addr03b1:
                                       §§push(null);
                                       if(_loc8_)
                                       {
                                          break loop13;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc8_)
                                       {
                                          if(§§pop() < 0)
                                          {
                                             §§goto(addr03b1);
                                          }
                                          else
                                          {
                                             §§push(null);
                                          }
                                       }
                                    }
                                 }
                                 §§push(§§pop() / 2.5);
                                 break;
                              }
                              §§goto(addr0396);
                           }
                           §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
                           if(!_loc8_)
                           {
                              break loop12;
                           }
                        }
                        §§push(§§pop());
                        break loop14;
                     }
                     loop15:
                     while(true)
                     {
                        loop16:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("That certainly is nice of you.");
                              §§push(180);
                              §§push(320);
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr0414:
                                          §§push(null);
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          break loop15;
                                       }
                                       addr042f:
                                       §§push(null);
                                       if(_loc7_)
                                       {
                                          break loop15;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc8_)
                                       {
                                          if(§§pop() >= 0)
                                          {
                                             §§push(null);
                                             break loop15;
                                          }
                                          §§goto(addr042f);
                                       }
                                    }
                                    §§push(§§pop());
                                    break loop16;
                                 }
                                 break;
                              }
                              §§goto(addr0414);
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
                        break loop12;
                     }
                     §§push(§§pop() / 2.5);
                     break loop16;
                  }
                  return;
               }
               tunnel.camera.reset();
               if(!_loc7_)
               {
                  tunnel.display(0);
               }
               skater.placeAt(22.6,51);
               §§goto(addr0200);
            }
            §§goto(addr011c);
         }
         _loc2_.w = Number(Math.cos(1.1519173063162575));
         §§goto(addr00d4);
      }
   }
}

