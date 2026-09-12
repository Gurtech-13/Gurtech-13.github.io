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
   
   public class JoinUs extends §+Z§
   {
      
      public static var §2#§:* = {
         "obj":{"billboardMode":null},
         "fields":{"child":{"fade":null}}
      };
      
      public var student:§^s§;
      
      public var pastafarian:§^s§;
      
      public var child:§^s§;
      
      public function JoinUs()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(§>K§.§2s§,-1,null,{"endTiles":false});
            if(!_loc1_)
            {
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
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame3);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc1_)
               {
                  name = "Join Us";
               }
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
            if(_loc1_)
            {
               tunnel = null;
               if(_loc2_)
               {
                  break;
               }
            }
            pastafarian = null;
            if(_loc1_)
            {
               student = null;
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr0061);
            }
            break;
         }
         child = null;
         if(_loc1_)
         {
            addr0061:
            sprites.length = 0;
            §§goto(addr0069);
         }
         addr0069:
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         while(true)
         {
            if(_loc8_)
            {
               pastafarian = new §^s§(§9_§,§'O§.pastafarian,false,null,false,null);
               if(_loc7_)
               {
                  break;
               }
            }
            pastafarian.billboardMode = true;
            if(_loc8_)
            {
               break;
            }
            §§goto(addr0055);
         }
         sprites.push(pastafarian);
         addr0055:
         §§push(§!^§.pathName);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc8_)
            {
               pastafarian.goesTo = new § !N§(_loc2_,-2);
               if(!_loc7_)
               {
                  student = new §^s§(§9_§,§'O§.student,false,null,false,null);
                  if(_loc7_)
                  {
                     break;
                  }
                  student.billboardMode = true;
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            sprites.push(student);
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
            if(!_loc7_)
            {
               student.goesTo = new § !N§(_loc4_,-1);
               if(_loc8_)
               {
                  child = new §^s§(§9_§,§'O§.child,true,null,false,null);
                  if(!_loc8_)
                  {
                     break;
                  }
                  child.billboardMode = true;
                  if(!_loc8_)
                  {
                     break;
                  }
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
         if(_loc8_)
         {
            child.goesTo = new § !N§(_loc6_,-1);
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc8_)
         {
            _loc1_.x = -32;
            while(true)
            {
               if(_loc9_)
               {
                  _loc1_.y = 171;
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 1873;
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
         §§push(Number(Math.sin(2.7314402793711254)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc2_);
            §§push(-0.147);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(-0.879);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.454);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc9_)
                  {
                     _loc2_.w = Number(Math.cos(2.7314402793711254));
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x);
                  §§push(_loc2_.x);
                  if(_loc9_)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc2_.y);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc9_)
                     {
                        break loop2;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        break loop2;
                     }
                     break loop3;
                  }
                  §§goto(addr0123);
               }
               §§goto(addr011d);
            }
            §§goto(addr0122);
         }
         addr0123:
         §§push(§§pop() + §§pop());
         if(!_loc8_)
         {
            addr0122:
            §§push(Number(§§pop()));
            if(!_loc8_)
            {
               addr011d:
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break loop3;
            }
            §§push(Number(§§pop()));
         }
         var _loc4_:Number = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
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
                        if(_loc8_)
                        {
                           break;
                        }
                        addr0167:
                        §§push(_loc5_ < 1e-10);
                        if(!_loc8_)
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
                        if(_loc9_)
                        {
                           §§push(-§§pop());
                           if(_loc8_)
                           {
                              break loop6;
                           }
                           §§goto(addr0167);
                        }
                     }
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     break;
                  }
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  break loop6;
               }
               _loc2_.x = 0;
               while(true)
               {
                  if(_loc9_)
                  {
                     _loc2_.y = 0;
                     if(_loc9_)
                     {
                        _loc2_.z = 0;
                        if(_loc9_)
                        {
                           _loc2_.w = 1;
                           if(!_loc8_)
                           {
                              break loop5;
                           }
                           §§goto(addr0259);
                        }
                        §§goto(addr0239);
                     }
                  }
                  §§goto(addr0259);
               }
               §§goto(addr0275);
            }
            _loc4_ = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(_loc9_)
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
               break;
            }
            §§goto(addr0239);
         }
         tunnel.§<!M§.reset();
         tunnel.display(0);
         pastafarian.§9E§(3,27);
         pastafarian.spritesheet.§,=§(69);
         addr0239:
         pastafarian.spritesheet.§@S§(true);
         student.§9E§(3.9,28,null,1);
         if(_loc9_)
         {
            addr0259:
            student.spritesheet.§,=§(75);
            if(_loc9_)
            {
               student.spritesheet.§@S§(false);
            }
         }
         addr0275:
         var _loc6_:* = §&!S§.width(1360);
         if(!_loc8_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'m beginning to get concerned on your behalf.");
                  §§push(-100);
                  §§push(-252);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc9_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 addr02af:
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop());
                                    break loop8;
                                 }
                                 break loop7;
                              }
                              break;
                           }
                           §§push(null);
                           if(_loc8_)
                           {
                              break loop7;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        addr02d8:
                        §§push(null / 2.5);
                        break loop8;
                     }
                     §§push(null);
                     if(_loc9_)
                     {
                        break loop7;
                     }
                     §§goto(addr02d8);
                  }
                  §§goto(addr02af);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,null);
            }
            §§push(§§pop());
            break loop8;
         }
         _loc6_ = §&!S§.width(1720);
         var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc9_)
         {
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("A bright young woman shouldn\'t have to spend her life alone.");
                  §§push(100);
                  §§push(-72);
                  if(_loc9_)
                  {
                     §§push(null);
                     if(!_loc8_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc9_)
                           {
                              addr034d:
                              §§push(null);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop10;
                           }
                           addr0369:
                           §§push(null);
                           if(!_loc8_)
                           {
                              break loop10;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc8_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr0369);
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
                  §§goto(addr034d);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,_loc7_);
            }
            §§push(§§pop());
            break loop11;
         }
         _loc7_ = new § 6§(student.§<!U§());
         while(true)
         {
            if(_loc9_)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Don\'t worry about me. I\'m happy running these tests.");
                     §§push(0);
                     §§push(280);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 addr03e5:
                                 §§goto(addr040b);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc8_)
                              {
                                 break loop13;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop13;
                              }
                           }
                           addr03f9:
                           §§push(null);
                           if(!_loc8_)
                           {
                              break;
                           }
                           break loop13;
                        }
                        §§goto(addr03e5);
                     }
                     §§goto(addr03f9);
                  }
                  §§goto(addr040b);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc7_);
               addr040b:
               if(_loc8_)
               {
                  break;
               }
            }
            student.§2e§(pastafarian);
            break;
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
               _loc1_.x = -33;
               if(_loc8_)
               {
                  _loc1_.y = 171;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 1862;
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
         §§push(Number(Math.sin(2.7314402793711254)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.147);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().x = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(-0.879);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     break loop2;
                  }
               }
               §§push(_loc2_);
               §§push(0.454);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc9_)
               {
                  break loop2;
               }
               break;
            }
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x);
                     §§push(_loc2_.x);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.y);
                        if(!_loc9_)
                        {
                           §§push(_loc2_.y);
                           if(_loc9_)
                           {
                              break loop5;
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc9_)
                        {
                           break loop4;
                        }
                        §§push(Number(§§pop()));
                        §§push(_loc2_.z);
                     }
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        break;
                     }
                     break loop5;
                  }
                  §§push(Number(§§pop()));
                  if(_loc8_)
                  {
                     §§push(_loc2_.w);
                     §§push(_loc2_.w);
                     break;
                  }
                  break loop4;
               }
               §§push(§§pop() + §§pop() * §§pop());
               break;
            }
            var _loc4_:Number = Number(§§pop());
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
            loop6:
            while(true)
            {
               §§push(_loc5_);
               if(!_loc9_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     break;
                  }
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
                     }
                  }
               }
               §§push(§§pop() < 1e-10);
               if(!_loc9_)
               {
                  §§push(!§§pop());
               }
               loop7:
               while(true)
               {
                  while(true)
                  {
                     addr01f4:
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(_loc4_);
                           §§push(0);
                           break loop6;
                        }
                     }
                     tunnel.§<!M§.reset();
                     tunnel.display(0);
                     pastafarian.§9E§(3,27);
                     if(!_loc9_)
                     {
                        pastafarian.spritesheet.§,=§(100);
                        pastafarian.spritesheet.§@S§(true);
                        if(!_loc9_)
                        {
                           break loop7;
                        }
                     }
                     break;
                  }
                  §§goto(addr0257);
               }
               student.§9E§(3.9,28,null,1);
               student.spritesheet.§,=§(82);
               break loop8;
            }
            while(true)
            {
               if(§§pop() == §§pop())
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  if(_loc8_)
                  {
                     _loc2_.w = 1;
                     if(!_loc9_)
                     {
                        break;
                     }
                     addr0257:
                     student.spritesheet.§@S§(false);
                     var _loc6_:§ 7§ = new § 6§(student.§<!U§());
                     if(_loc8_)
                     {
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("So what you\'re saying is, I could meet him?");
                              §§push(-120);
                              §§push(-260);
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(null);
                                          if(_loc8_)
                                          {
                                             addr02a8:
                                             §§push(§§pop());
                                             break;
                                          }
                                          break loop9;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc9_)
                                       {
                                          break loop9;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(null);
                                          break loop9;
                                       }
                                    }
                                    addr02bc:
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop());
                                       break;
                                    }
                                    break loop9;
                                 }
                                 §§goto(addr02a8);
                              }
                              §§goto(addr02bc);
                           }
                           §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
                        }
                        §§push(§§pop() / 2.5);
                        break loop10;
                     }
                     var _loc7_:* = §&!S§.width(1140);
                     _loc6_ = new § 6§(pastafarian.§<!U§());
                     if(!_loc9_)
                     {
                        loop11:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("He\'ll be invisible and intangible, as usual.");
                              §§push(260);
                              §§push(-32);
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(_loc8_)
                                       {
                                          addr033e:
                                          §§push(null);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop());
                                             break;
                                          }
                                          break loop11;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc9_)
                                       {
                                          break loop11;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(null);
                                          break loop11;
                                       }
                                    }
                                    §§push(null);
                                    if(_loc9_)
                                    {
                                       break loop11;
                                    }
                                 }
                                 §§push(§§pop());
                                 break;
                              }
                              §§goto(addr033e);
                           }
                           §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc7_ == null ? null : int(Math.round(_loc7_ / 2.5)),null,_loc6_);
                        }
                        §§push(§§pop() / 2.5);
                        break loop12;
                     }
                     _loc6_ = new § 6§(student.§<!U§());
                     while(true)
                     {
                        if(_loc8_)
                        {
                           loop14:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(dialog);
                                 §§push("Ok, never mind.");
                                 §§push(-180);
                                 §§push(280);
                                 if(_loc8_)
                                 {
                                    §§push(null);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop() == null)
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(null);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          §§goto(addr03fc);
                                          §§push(§§pop());
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc9_)
                                       {
                                          break loop14;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(null);
                                          break loop14;
                                       }
                                    }
                                 }
                                 §§push(null);
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 break loop14;
                              }
                              §§goto(addr03fc);
                           }
                           §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
                           addr03fc:
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        student.§2e§(pastafarian);
                        break;
                     }
                     return;
                  }
                  addr01b0:
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
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
               }
               else
               {
                  _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                  if(!_loc9_)
                  {
                     §§goto(addr01b0);
                  }
               }
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               if(_loc8_)
               {
                  break;
               }
               break loop7;
            }
            §§goto(addr01f4);
         }
         _loc2_.w = Number(Math.cos(2.7314402793711254));
         break loop3;
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -39;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 173;
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr0048);
         }
         _loc1_.z = 1845;
         addr0048:
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
         §§push(Number(Math.sin(2.7314402793711254)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(-0.147);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc9_)
               {
                  break;
               }
               §§push(_loc2_);
               §§push(-0.879);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(_loc8_)
               {
                  break;
               }
               §§push(_loc2_);
               §§push(0.454);
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
            _loc2_.w = Number(Math.cos(2.7314402793711254));
            break;
         }
         §§push(_loc2_.x * _loc2_.x);
         §§push(_loc2_.y);
         §§push(_loc2_.y);
         if(_loc9_)
         {
            loop3:
            while(true)
            {
               §§push(§§pop() * §§pop());
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     §§push(_loc2_.w);
                     break;
                  }
               }
               §§push(_loc2_.w);
               break;
            }
         }
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc9_)
         {
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
               loop17:
               while(true)
               {
                  loop18:
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        loop19:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc8_)
                              {
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc5_);
                                    break loop19;
                                 }
                                 §§push(_loc5_);
                              }
                              §§push(-§§pop());
                              break loop19;
                           }
                           if(§§pop() == §§pop())
                           {
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              if(_loc9_)
                              {
                                 _loc2_.z = 0;
                                 _loc2_.w = 1;
                                 if(_loc9_)
                                 {
                                    break loop18;
                                 }
                                 §§goto(addr0215);
                              }
                           }
                           else
                           {
                              _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                              if(_loc8_)
                              {
                                 break loop5;
                              }
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(!_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              §§push(_loc4_);
                              §§push(0);
                              break loop20;
                           }
                           break loop17;
                        }
                        break;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        break loop5;
                     }
                     break loop6;
                  }
                  §§goto(addr0203);
               }
               §§goto(addr022c);
            }
            pastafarian.§]<§ = true;
            break loop17;
         }
         §§push(_loc2_);
         §§push(_loc2_.y);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().y = §§pop();
         if(!_loc8_)
         {
            §§push(_loc2_);
            §§push(_loc2_.z);
            if(!_loc8_)
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
            addr0203:
            tunnel.§<!M§.reset();
         }
         tunnel.display(0);
         addr0215:
         student.§]<§ = true;
         if(_loc9_)
         {
            break loop6;
         }
         addr022c:
         var _loc6_:* = §&!S§.width(1320);
         var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc9_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  §§push(dialog);
                  §§push("The Flying Spaghetti Monster is coming too.");
                  §§push(-100);
                  §§push(-192);
                  if(_loc9_)
                  {
                     §§push(null);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc9_)
                              {
                                 addr0278:
                                 §§push(null);
                                 if(!_loc8_)
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
                              if(_loc8_)
                              {
                                 break loop7;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break;
                              }
                           }
                           §§push(null);
                           if(_loc9_)
                           {
                              break loop7;
                           }
                           break;
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr0278);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,_loc7_);
            }
            §§push(§§pop());
            break loop8;
         }
         _loc7_ = new § 6§(pastafarian.§<!U§());
         loop10:
         while(true)
         {
            if(!_loc8_)
            {
               loop11:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Do you know why?");
                     §§push(240);
                     §§push(120);
                     if(!_loc8_)
                     {
                        §§push(null);
                        if(_loc8_)
                        {
                           break loop11;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc9_)
                           {
                              §§push(null);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§goto(addr0332);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc8_)
                           {
                              break loop11;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop11;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc8_)
                     {
                        break;
                     }
                     break loop11;
                  }
                  §§goto(addr0332);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc7_);
               addr0332:
               if(_loc9_)
               {
                  loop13:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Because He has good taste.");
                        §§push(80);
                        §§push(320);
                        if(!_loc8_)
                        {
                           loop15:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr0382:
                                          §§push(null);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop());
                                             break loop14;
                                          }
                                          break loop13;
                                       }
                                       break;
                                    }
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       break loop15;
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 break loop13;
                              }
                              §§push(null);
                              if(_loc9_)
                              {
                                 break;
                              }
                              break loop13;
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§goto(addr0382);
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
                     if(_loc8_)
                     {
                        break loop10;
                     }
                  }
                  §§push(§§pop() / 2.5);
                  break loop14;
               }
            }
            student.§2e§(pastafarian);
            break;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc7_)
            {
               _loc1_.x = -49;
               if(!_loc8_)
               {
                  break;
               }
               _loc1_.y = 176;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 1818;
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
         §§push(Number(Math.sin(2.7314402793711254)));
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
               §§push(-0.147);
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
            §§push(-0.879);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(0.454);
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
                           break loop4;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           §§push(_loc2_.z);
                           if(_loc7_)
                           {
                              break loop4;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           §§push(_loc2_.w);
                           if(!_loc8_)
                           {
                              break loop3;
                           }
                        }
                     }
                     §§push(_loc2_.w);
                     break loop4;
                  }
                  §§goto(addr011e);
               }
               §§push(§§pop() * §§pop());
               break;
            }
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(!_loc7_)
               {
                  addr011e:
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(_loc8_)
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
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  if(_loc8_)
                  {
                     loop19:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(_loc7_)
                              {
                                 break loop19;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc5_);
                              }
                              else
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(-§§pop());
                              }
                           }
                           §§push(§§pop() < 1e-10);
                           if(!_loc7_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§push(_loc4_);
                                 §§push(0);
                                 break loop19;
                              }
                           }
                           break loop8;
                        }
                        _loc4_ = Number(§§pop());
                        if(_loc7_)
                        {
                           break loop8;
                        }
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
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.z);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc2_.w);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().w = §§pop();
                                 if(!_loc7_)
                                 {
                                    break loop8;
                                 }
                              }
                              addr027f:
                              student.spritesheet.§@S§(false);
                              child.§9E§(5.4,43.9,null,-5);
                              if(_loc8_)
                              {
                                 child.spritesheet.§,=§(112);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                              }
                           }
                           child.spritesheet.§@S§(false);
                           break;
                        }
                        §§goto(addr02bd);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break loop20;
                     }
                     if(_loc7_)
                     {
                        break loop7;
                     }
                  }
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  break loop7;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               while(true)
               {
                  if(_loc8_)
                  {
                     pastafarian.§9E§(3,27);
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  pastafarian.spritesheet.§,=§(100);
                  break;
               }
               pastafarian.spritesheet.§@S§(true);
               student.§9E§(4,28,null,1);
               if(_loc8_)
               {
                  student.spritesheet.§,=§(64);
                  §§goto(addr027f);
               }
               §§goto(addr02bd);
            }
            _loc2_.w = 1;
            if(!_loc7_)
            {
               break loop8;
            }
            addr02bd:
            var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
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
                        §§push("Join us, it\'ll be fun!");
                        §§push(-300);
                        §§push(-160);
                        if(_loc8_)
                        {
                           §§push(null);
                           if(!_loc8_)
                           {
                              break loop9;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    break loop10;
                                 }
                                 break loop9;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop9;
                              }
                           }
                        }
                        §§push(null);
                        if(!_loc7_)
                        {
                           break;
                        }
                        break loop9;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
               }
               §§push(§§pop() / 2.5);
               break loop10;
            }
            _loc6_ = new § 6§(student.§<!U§());
            if(!_loc7_)
            {
               loop12:
               while(true)
               {
                  loop13:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("I\'m not in the mood for a party, sorry.");
                        §§push(-160);
                        §§push(240);
                        if(!_loc7_)
                        {
                           §§push(null);
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(!_loc7_)
                                    {
                                       addr038c:
                                       §§push(null);
                                       if(_loc8_)
                                       {
                                          break loop14;
                                       }
                                       break loop12;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc7_)
                                    {
                                       break loop12;
                                    }
                                    if(§§pop() >= 0)
                                    {
                                       §§push(null);
                                       break;
                                    }
                                 }
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    break loop12;
                                 }
                                 break;
                              }
                              §§push(§§pop() / 2.5);
                              break loop13;
                           }
                           break;
                        }
                        §§goto(addr038c);
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        loop16:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("I have tests to run!");
                              §§push(240);
                              §§push(320);
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == null)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(null);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0434);
                                       §§push(§§pop());
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
                                       break loop16;
                                    }
                                 }
                              }
                              §§push(null);
                              if(_loc8_)
                              {
                                 break;
                              }
                              break loop16;
                           }
                           §§goto(addr0434);
                        }
                        §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,null);
                        addr0434:
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     student.§2e§(pastafarian);
                     break;
                  }
               }
               §§push(§§pop());
               break loop13;
            }
            return;
         }
         _loc2_.w = Number(Math.cos(2.7314402793711254));
         continue loop4;
      }
   }
}

