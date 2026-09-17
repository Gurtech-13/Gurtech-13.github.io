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
   import haxeutils.math.geom.Point3D;
   
   public class SelfAssembly extends §+Z§
   {
      
      public static var §2#§:* = {
         "obj":{"billboardMode":null},
         "fields":{
            "duplicator":{"fade":null},
            "child":{"fade":null}
         }
      };
      
      public var duplicator:StageActor;
      
      public var child:StageActor;
      
      public function SelfAssembly()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§^!+§,14,null,null,null,§+!"§.IF_FOLLOWING_LEVEL_REACHED);
               if(_loc1_)
               {
                  break;
               }
               §3!<§(new § !N§(§>K§.§^!T§,0));
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
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame5);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().frames = null;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            name = "Self Assembly";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            tunnel = null;
            while(true)
            {
               if(!_loc2_)
               {
                  duplicator = null;
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
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               duplicator = new StageActor(section,CharacterRegistry.duplicator,true,null,false,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            duplicator.billboardMode = true;
            if(!_loc4_)
            {
               break;
            }
            var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("newlyFormed");
            §§goto(addr0053);
         }
         sprites.push(duplicator);
         addr0053:
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  duplicator.goesTo = new § !N§(_loc1_,0);
                  if(!_loc3_)
                  {
                     break;
                  }
                  child = new StageActor(section,CharacterRegistry.child,true,null,false,null);
                  if(!_loc3_)
                  {
                     break loop1;
                  }
               }
               child.billboardMode = true;
               if(_loc3_)
               {
                  break;
               }
               break loop1;
            }
            sprites.push(child);
            break;
         }
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("newlyFormed");
         if(!_loc4_)
         {
            child.goesTo = new § !N§(_loc2_,0);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 611;
               if(!_loc8_)
               {
                  _loc1_.y = -204;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 768;
            break;
         }
         _loc1_ = new Point3D(0.26,-0.304,-0.917);
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.1082840750163994)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc9_)
            {
               _loc2_.x = _loc1_.x * _loc3_;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc2_.y = _loc1_.y * _loc3_;
            if(_loc9_)
            {
               break;
            }
            §§goto(addr00d9);
         }
         §§push(_loc2_);
         §§push(_loc1_.z);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc3_);
         }
         §§pop().z = §§pop();
         if(!_loc8_)
         {
            _loc2_.w = Number(Math.cos(1.1082840750163994));
         }
         addr00d9:
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
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(Number(§§pop()));
                     if(_loc9_)
                     {
                        §§push(_loc2_.z);
                        break;
                     }
                     §§goto(addr012e);
                  }
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     break loop3;
                  }
                  break;
               }
               addr012e:
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§push(§§pop() + §§pop());
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break loop4;
            }
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
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop19:
               while(true)
               {
                  if(_loc9_)
                  {
                     loop20:
                     while(true)
                     {
                        loop21:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              loop22:
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    while(true)
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
                                          §§push(_loc5_);
                                          if(!_loc9_)
                                          {
                                             break loop22;
                                          }
                                          §§push(-§§pop());
                                       }
                                       §§push(§§pop() < 1e-10);
                                       if(_loc9_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          §§push(_loc4_);
                                          break;
                                       }
                                       break loop21;
                                    }
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    _loc2_.x = 0;
                                    if(!_loc8_)
                                    {
                                       _loc2_.y = 0;
                                       if(!_loc9_)
                                       {
                                          break loop19;
                                       }
                                       _loc2_.z = 0;
                                    }
                                    _loc2_.w = 1;
                                    break loop21;
                                 }
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 break loop20;
                              }
                           }
                           §§push(Number(§§pop()));
                           break loop20;
                        }
                        tunnel.camera.reset();
                        tunnel.display(0);
                        if(!_loc9_)
                        {
                           break loop6;
                        }
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
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(!_loc8_)
                     {
                        break loop21;
                     }
                     break loop7;
                  }
                  child.placeAt(23.8,15,null,-35);
                  if(!_loc8_)
                  {
                     child.spritesheet.§,=§(100);
                     if(_loc9_)
                     {
                        break loop7;
                     }
                  }
                  §§goto(addr0298);
               }
               §§goto(addr028e);
            }
            child.spritesheet.§@S§(true);
            break;
         }
         duplicator.placeAt(0.1,13.1,null,-185);
         duplicator.spritesheet.§,=§(74);
         addr028e:
         duplicator.spritesheet.§@S§(true);
         addr0298:
         var _loc6_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc9_)
         {
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("We can talk there.");
                  §§push(-240);
                  §§push(-280);
                  if(!_loc8_)
                  {
                     §§push(null);
                     if(!_loc9_)
                     {
                        break loop8;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc8_)
                        {
                           §§push(null);
                           if(!_loc8_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop8;
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(!_loc9_)
                        {
                           break loop8;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop8;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop8;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
            }
            §§push(§§pop() / 2.5);
            break loop9;
         }
         _loc6_ = new § 6§(child.§<!U§());
         if(_loc9_)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  §§push(dialog);
                  §§push("Um, why?");
                  §§push(120);
                  §§push(-80);
                  if(_loc9_)
                  {
                     §§push(null);
                     if(_loc8_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc9_)
                           {
                              §§goto(addr0397);
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
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop10;
                     }
                  }
                  §§push(null);
                  if(!_loc8_)
                  {
                     break;
                  }
                  break loop10;
               }
               §§goto(addr0397);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
            addr0397:
         }
         var _loc7_:* = §&!S§.width(1300);
         _loc6_ = new § 6§(duplicator.§<!U§());
         loop13:
         while(true)
         {
            if(!_loc8_)
            {
               loop14:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Because newborns can\'t understand speech.");
                     §§push(100);
                     §§push(240);
                     if(!_loc8_)
                     {
                        §§push(null);
                        if(_loc9_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    addr040d:
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop14;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc8_)
                              {
                                 break loop14;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop14;
                              }
                           }
                           addr0421:
                           §§push(null);
                           if(_loc9_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop14;
                        }
                        §§goto(addr040d);
                     }
                     §§goto(addr0421);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc7_ == null ? null : int(Math.round(_loc7_ / 2.5)),null,_loc6_);
                  if(!_loc9_)
                  {
                     break loop13;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop15;
            }
            loop16:
            while(true)
            {
               loop17:
               while(true)
               {
                  §§push(dialog);
                  §§push("Hurry!");
                  §§push(440);
                  §§push(320);
                  if(_loc9_)
                  {
                     §§push(null);
                     if(_loc8_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc9_)
                           {
                              §§goto(addr04bc);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc9_)
                           {
                              break loop17;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop16;
                     }
                  }
                  §§push(null);
                  if(_loc9_)
                  {
                     break;
                  }
                  break loop16;
               }
               §§goto(addr04bc);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,null);
            addr04bc:
            break;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = 830;
               if(!_loc8_)
               {
                  break;
               }
               _loc1_.y = -211;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc1_.z = 560;
            break;
         }
         _loc1_ = new Point3D(0.26,-0.304,-0.917);
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
         §§push(Number(Math.sin(1.1082840750163994)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            _loc2_.x = _loc1_.x * _loc3_;
            while(true)
            {
               if(!_loc9_)
               {
                  _loc2_.y = _loc1_.y * _loc3_;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(_loc1_.z);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  _loc2_.w = Number(Math.cos(1.1082840750163994));
               }
               break;
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop20:
               while(true)
               {
                  §§push(_loc2_.x);
                  §§push(_loc2_.x);
                  if(!_loc9_)
                  {
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc8_)
                        {
                           §§push(_loc2_.y);
                           §§push(_loc2_.y);
                           if(_loc9_)
                           {
                              break loop4;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           §§push(_loc2_.z);
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(_loc2_.z);
                           if(!_loc8_)
                           {
                              break loop4;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                        }
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           §§push(_loc2_.w);
                           if(_loc8_)
                           {
                              break;
                           }
                           break loop3;
                        }
                        break loop20;
                     }
                  }
                  §§push(_loc2_.w);
                  break loop4;
               }
               §§goto(addr0127);
            }
            §§push(§§pop() * §§pop());
            break;
         }
         addr0127:
         var _loc4_:* = §§pop() + §§pop();
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
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop18:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(!_loc9_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc8_)
                           {
                              break loop18;
                           }
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(-§§pop());
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
                        if(!_loc8_)
                        {
                           break loop6;
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
                        break loop7;
                     }
                     addr01ac:
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(_loc8_)
                     {
                        break;
                     }
                     _loc4_ = §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        break loop18;
                     }
                     §§goto(addr01d4);
                  }
                  §§goto(addr01ac);
               }
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               addr01d4:
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break loop6;
               }
               continue loop16;
            }
            tunnel.camera.reset();
            §§goto(addr0217);
         }
         §§push(_loc2_);
         §§push(_loc2_.w);
         if(!_loc9_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().w = §§pop();
         if(_loc8_)
         {
            break loop7;
         }
         addr0217:
         tunnel.display(0);
         child.§^0§();
         while(true)
         {
            if(_loc8_)
            {
               child.§]<§ = true;
               if(_loc9_)
               {
                  break;
               }
            }
            duplicator.placeAt(0.1,13.8,null,-80);
            if(!_loc9_)
            {
               duplicator.spritesheet.§,=§(74);
               if(!_loc8_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§@S§(true);
            if(!_loc9_)
            {
               break;
            }
            §§goto(addr02ed);
         }
         loop16:
         while(true)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Oh no...");
               §§push(-440);
               §§push(-320);
               if(_loc8_)
               {
                  §§push(null);
                  if(_loc8_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc8_)
                        {
                           addr029e:
                           §§push(null);
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop16;
                        }
                        addr02b8:
                        §§push(null);
                        if(_loc8_)
                        {
                           break loop16;
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc8_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr02b8);
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
               §§goto(addr029e);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr02ed:
            var _loc6_:* = §&!S§.width(1400);
            var _loc7_:§ 7§ = new § 6§(duplicator.§<!U§());
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
                        §§push("If the Tunnels are alive, they could be listening to us!");
                        §§push(24);
                        §§push(-252);
                        if(_loc8_)
                        {
                           §§push(null);
                           if(_loc8_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc9_)
                                 {
                                    addr033c:
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    break loop9;
                                 }
                                 addr0357:
                                 §§push(null);
                                 if(!_loc9_)
                                 {
                                    break loop9;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       §§goto(addr0357);
                                    }
                                    else
                                    {
                                       §§push(null);
                                    }
                                 }
                              }
                              §§push(§§pop() / 2.5);
                              break loop10;
                           }
                           break;
                        }
                        §§goto(addr033c);
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,_loc7_);
               }
               §§push(§§pop());
               break loop10;
            }
            _loc7_ = new § 6§(duplicator.§<!U§());
            if(_loc8_)
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
                        §§push("Quickly, into the new tunnel!");
                        §§push(280);
                        §§push(280);
                        if(!_loc9_)
                        {
                           §§push(null);
                           if(!_loc9_)
                           {
                              while(true)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       addr03d4:
                                       §§push(§§pop());
                                       break loop13;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(!_loc8_)
                                    {
                                       break loop14;
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 break loop12;
                              }
                              addr03e7:
                              §§push(null);
                              if(_loc8_)
                              {
                                 break;
                              }
                              break loop12;
                           }
                           §§goto(addr03d4);
                        }
                        §§goto(addr03e7);
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc7_);
               }
               §§push(§§pop() / 2.5);
               break loop13;
            }
            return;
         }
         §§push(§§pop());
         break loop17;
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 1235;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = -362;
            if(_loc8_)
            {
               _loc1_.z = 187;
            }
            break;
         }
         _loc1_ = new Point3D(0.223,-0.328,-0.918);
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
         §§push(Number(Math.sin(1.1082840750163994)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            _loc2_.x = _loc1_.x * _loc3_;
            if(_loc8_)
            {
               _loc2_.y = _loc1_.y * _loc3_;
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     §§push(_loc1_.z);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  _loc2_.w = Number(Math.cos(1.1082840750163994));
                  break;
               }
            }
         }
         while(true)
         {
            §§push(_loc2_.x);
            §§push(_loc2_.x);
            if(_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(_loc7_)
               {
                  break;
               }
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc7_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(_loc2_.z);
                  §§push(_loc2_.z);
                  if(_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(_loc2_.w);
                     }
                     §§push(_loc2_.w);
                  }
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc8_)
            {
               break;
            }
            addr0128:
            var _loc4_:* = Number(§§pop());
            §§goto(addr0127);
         }
         §§push(Number(§§pop()));
         if(_loc8_)
         {
            addr0127:
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
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc8_)
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
                              if(!_loc8_)
                              {
                                 break loop14;
                              }
                              §§push(-§§pop());
                              if(_loc7_)
                              {
                                 break loop14;
                              }
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
                           if(_loc7_)
                           {
                              break loop5;
                           }
                           §§push(_loc4_);
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           break loop14;
                        }
                        _loc2_.x = 0;
                        if(!_loc7_)
                        {
                           _loc2_.y = 0;
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                           if(!_loc7_)
                           {
                              break loop6;
                           }
                           §§goto(addr0226);
                        }
                        else
                        {
                           addr0207:
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           if(!_loc7_)
                           {
                              break loop6;
                           }
                           §§goto(addr0261);
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
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().y = §§pop();
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              §§push(_loc2_.z);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              if(!_loc8_)
                              {
                                 break loop16;
                              }
                           }
                           §§goto(addr0207);
                        }
                        §§goto(addr0261);
                     }
                     §§goto(addr0259);
                  }
                  §§push(Number(§§pop()));
                  break loop15;
               }
               tunnel.camera.reset();
               addr0226:
               tunnel.display(0);
               break;
            }
            duplicator.§^0§();
            while(true)
            {
               if(_loc8_)
               {
                  duplicator.§]<§ = true;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               child.§^0§();
               if(_loc8_)
               {
                  break;
               }
               §§goto(addr0261);
            }
            addr0259:
            child.§]<§ = true;
            addr0261:
            var _loc6_:§ 7§ = new § 6§(child.§<!U§());
            if(_loc8_)
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
                        §§push("So that\'s, like...\na baby tunnel?");
                        §§push(-200);
                        §§push(108);
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
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    break loop9;
                                 }
                                 break loop8;
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
                                 break loop8;
                              }
                           }
                        }
                        §§push(null);
                        if(!_loc7_)
                        {
                           break;
                        }
                        break loop8;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
               }
               §§push(§§pop() / 2.5);
               break loop9;
            }
            _loc6_ = new § 6§(duplicator.§<!U§());
            if(_loc8_)
            {
               loop11:
               while(true)
               {
                  loop12:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Exactly.");
                        §§push(440);
                        §§push(160);
                        if(!_loc7_)
                        {
                           §§push(null);
                           if(!_loc7_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc7_)
                                 {
                                    addr0331:
                                    §§push(null);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    break loop11;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc8_)
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
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 break loop12;
                              }
                              break loop11;
                           }
                           break;
                        }
                        §§goto(addr0331);
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
               }
               §§push(§§pop() / 2.5);
               break loop12;
            }
            return;
         }
         §§goto(addr0128);
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(!_loc7_)
         {
            _loc1_.x = 1648;
            if(!_loc7_)
            {
               _loc1_.y = -450;
               if(_loc8_)
               {
                  _loc1_.z = -144;
               }
            }
         }
         _loc1_ = new Point3D(0.152,-0.347,-0.925);
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.1257373675363425)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               _loc2_.x = _loc1_.x * _loc3_;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc2_.y = _loc1_.y * _loc3_;
            if(!_loc7_)
            {
               break;
            }
            addr00da:
            loop2:
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               if(!_loc7_)
               {
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     §§push(_loc2_.y);
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
               }
               §§push(Number(§§pop()));
               §§push(_loc2_.z);
               if(!_loc7_)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break loop2;
                        }
                        addr012c:
                        addr012d:
                        §§push(§§pop() + §§pop() * §§pop());
                        break;
                     }
                     addr012e:
                     §§push(Number(§§pop()));
                     break;
                  }
                  var _loc4_:* = Number(§§pop());
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc7_)
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
                        if(_loc8_)
                        {
                           loop8:
                           while(true)
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
                                          break;
                                       }
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                          break loop8;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(!_loc8_)
                                       {
                                          break loop8;
                                       }
                                       §§push(-§§pop());
                                       if(!_loc8_)
                                       {
                                          break loop8;
                                       }
                                    }
                                    §§push(§§pop() < 1e-10);
                                    if(_loc8_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       break loop7;
                                    }
                                    break loop6;
                                 }
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break;
                              }
                              if(_loc8_)
                              {
                                 _loc2_.x = 0;
                                 _loc2_.y = 0;
                              }
                           }
                           _loc4_ = §§pop();
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
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           break loop6;
                        }
                        _loc2_.z = 0;
                        if(!_loc7_)
                        {
                           _loc2_.w = 1;
                           if(_loc8_)
                           {
                              break loop6;
                           }
                           §§goto(addr025e);
                        }
                        break loop6;
                     }
                     duplicator.§^0§();
                     while(true)
                     {
                        if(_loc8_)
                        {
                           duplicator.§]<§ = true;
                           child.§^0§();
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        child.§]<§ = true;
                        break;
                     }
                     addr025e:
                     var _loc6_:§ 7§ = new § 6§(duplicator.§<!U§());
                     if(_loc8_)
                     {
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(dialog);
                                 §§push("The Tunnels are alive!");
                                 §§push(40);
                                 §§push(80);
                                 if(_loc8_)
                                 {
                                    §§push(null);
                                    if(_loc8_)
                                    {
                                       if(§§pop() == null)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr02a0:
                                             §§push(null);
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             break loop10;
                                          }
                                          addr02ba:
                                          §§push(null);
                                          if(_loc7_)
                                          {
                                             break loop10;
                                          }
                                       }
                                       else
                                       {
                                          §§push(null);
                                          if(!_loc7_)
                                          {
                                             if(§§pop() >= 0)
                                             {
                                                §§push(null);
                                                break loop10;
                                             }
                                             §§goto(addr02ba);
                                          }
                                       }
                                       §§push(§§pop());
                                       break loop11;
                                    }
                                    break;
                                 }
                                 §§goto(addr02a0);
                              }
                              §§push(§§pop());
                              break;
                           }
                           §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
                        }
                        §§push(§§pop() / 2.5);
                        break loop11;
                     }
                     return;
                  }
                  tunnel.camera.reset();
                  tunnel.display(0);
                  break loop7;
               }
               addr0117:
               §§push(§§pop() + §§pop());
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc7_)
                  {
                     break loop3;
                  }
                  §§goto(addr012c);
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
               }
               §§goto(addr012e);
            }
            while(true)
            {
               §§push(§§pop() * §§pop());
               if(!_loc7_)
               {
                  §§goto(addr0117);
               }
               §§goto(addr012d);
            }
            §§goto(addr012e);
         }
         §§push(_loc2_);
         §§push(_loc1_.z);
         if(!_loc7_)
         {
            §§push(§§pop() * _loc3_);
         }
         §§pop().z = §§pop();
         if(!_loc7_)
         {
            _loc2_.w = Number(Math.cos(1.1257373675363425));
         }
         §§goto(addr00da);
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(_loc9_)
         {
            _loc1_.x = 1651;
            while(true)
            {
               if(_loc9_)
               {
                  _loc1_.y = -566;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc1_.z = -338;
               break;
            }
         }
         _loc1_ = new Point3D(0.063,-0.373,-0.926);
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.143190660056286)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc9_)
            {
               _loc2_.x = _loc1_.x * _loc3_;
               if(!_loc8_)
               {
                  _loc2_.y = _loc1_.y * _loc3_;
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(_loc1_.z);
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
            }
            _loc2_.w = Number(Math.cos(1.143190660056286));
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
                  §§push(_loc2_.x);
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           if(_loc8_)
                           {
                              break loop4;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              break loop5;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     break loop3;
                  }
                  break loop4;
               }
               §§goto(addr012c);
            }
            var _loc4_:* = §§pop();
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
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(_loc9_)
                  {
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc9_)
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc5_);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc5_);
                                       }
                                       §§push(-§§pop());
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       break loop10;
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
                                    §§push(_loc4_);
                                    §§push(0);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       _loc2_.x = 0;
                                       _loc2_.y = 0;
                                       if(!_loc8_)
                                       {
                                          addr01ad:
                                          _loc2_.z = 0;
                                          _loc2_.w = 1;
                                          break loop6;
                                       }
                                       break loop9;
                                    }
                                    break loop7;
                                 }
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                           }
                           _loc4_ = §§pop();
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
                              if(_loc9_)
                              {
                                 break;
                              }
                              break loop8;
                           }
                           break loop7;
                        }
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
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           if(_loc9_)
                           {
                              break loop6;
                           }
                           break loop7;
                        }
                        §§goto(addr0248);
                     }
                     §§goto(addr0257);
                  }
                  §§goto(addr01ad);
               }
               var _loc6_:* = §&!S§.width(980);
               if(!_loc8_)
               {
                  loop12:
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("That tunnel wasn\'t there before.");
                        §§push(-308);
                        §§push(-332);
                        if(_loc9_)
                        {
                           while(true)
                           {
                              §§push(null);
                              if(_loc9_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(null);
                                    if(_loc8_)
                                    {
                                       break loop13;
                                    }
                                    §§goto(addr02d6);
                                    §§push(§§pop());
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       break loop13;
                                    }
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop12;
                           }
                        }
                        §§push(null);
                        if(!_loc8_)
                        {
                           break;
                        }
                        break loop12;
                     }
                     §§goto(addr02d6);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,null);
                  addr02d6:
               }
               _loc6_ = §&!S§.width(1230);
               var _loc7_:§ 7§ = new § 6§(child.§<!U§());
               if(!_loc8_)
               {
                  loop15:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Just a couple pieces were floating in space.");
                           §§push(-16);
                           §§push(-212);
                           if(_loc9_)
                           {
                              §§push(null);
                              if(!_loc9_)
                              {
                                 break loop15;
                              }
                              if(§§pop() == null)
                              {
                                 if(_loc9_)
                                 {
                                    §§push(null);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop());
                                       break loop16;
                                    }
                                    break loop15;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break loop15;
                                 }
                              }
                           }
                           §§push(null);
                           if(!_loc8_)
                           {
                              break;
                           }
                           break loop15;
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,_loc7_);
                  }
                  §§push(§§pop() / 2.5);
                  break loop16;
               }
               _loc7_ = new § 6§(duplicator.§<!U§());
               if(!_loc8_)
               {
                  loop18:
                  while(true)
                  {
                     loop19:
                     while(true)
                     {
                        loop20:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(dialog);
                              §§push("That can only mean one thing...");
                              §§push(240);
                              §§push(200);
                              if(!_loc8_)
                              {
                                 §§push(null);
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == null)
                                 {
                                    if(_loc8_)
                                    {
                                       break loop18;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc9_)
                                    {
                                       break loop19;
                                    }
                                    §§goto(addr03fe);
                                 }
                              }
                              §§push(null);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                                 break loop20;
                              }
                              break loop19;
                           }
                           §§goto(addr03f8);
                        }
                        §§goto(addr040e);
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     §§goto(addr03fe);
                     §§push(null);
                  }
                  §§pop().§";§(§§pop(),§§pop(),null,_loc9_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc7_);
                  addr040e:
               }
               return;
            }
            tunnel.camera.reset();
            tunnel.display(0);
            addr0248:
            duplicator.§^0§();
            if(_loc9_)
            {
               addr0257:
               duplicator.§]<§ = true;
               child.§^0§();
               child.§]<§ = true;
            }
            break loop7;
         }
         addr012c:
         §§push(§§pop() + _loc2_.w * _loc2_.w);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         §§push(Number(§§pop()));
         break loop4;
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_)
         {
            tunnel.§<M§(0.2);
         }
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 1581;
               if(!_loc7_)
               {
                  break;
               }
               _loc1_.y = -622;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.z = -474;
            break;
         }
         _loc1_ = new Point3D(-0.05,-0.351,-0.935);
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.1780972450961724)));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  _loc2_.x = _loc1_.x * _loc3_;
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc2_.y = _loc1_.y * _loc3_;
                  if(!_loc7_)
                  {
                     break loop2;
                  }
               }
               §§push(_loc2_);
               §§push(_loc1_.z);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc8_)
               {
                  break;
               }
               break loop2;
            }
            _loc2_.w = Number(Math.cos(1.1780972450961724));
            break;
         }
         while(true)
         {
            §§push(_loc2_.x);
            if(_loc7_)
            {
               §§push(§§pop() * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc7_)
               {
                  break;
               }
               §§push(§§pop() + §§pop() * §§pop());
            }
            §§goto(addr0137);
         }
         §§push(§§pop() + §§pop() * §§pop());
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         addr0137:
         §§push(Number(§§pop()));
         if(_loc7_)
         {
            §§push(_loc2_.z);
            if(!_loc8_)
            {
               §§push(_loc2_.z);
               if(_loc8_)
               {
                  break loop4;
               }
               §§push(§§pop() + §§pop() * §§pop());
               §§push(_loc2_.w);
            }
            §§push(_loc2_.w);
            break loop4;
         }
         var _loc4_:* = Number(§§pop());
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
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
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop13:
               while(true)
               {
                  if(_loc7_)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(0);
                           if(_loc7_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
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
                                 break loop16;
                              }
                              §§push(_loc4_);
                              §§push(0);
                           }
                           if(§§pop() == §§pop())
                           {
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              if(!_loc8_)
                              {
                                 _loc2_.w = 1;
                                 if(!_loc8_)
                                 {
                                    break loop16;
                                 }
                                 break loop6;
                              }
                              break loop7;
                           }
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           break;
                        }
                        _loc4_ = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(_loc7_)
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
                           break;
                        }
                        break loop13;
                     }
                  }
                  break loop16;
               }
               duplicator.spritesheet.§@S§(true);
               if(_loc7_)
               {
                  break;
               }
               continue loop14;
            }
            child.alignWith(duplicator);
            loop14:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Dad! Dad!");
                  §§push(-360);
                  §§push(-280);
                  if(_loc7_)
                  {
                     §§push(null);
                     if(_loc8_)
                     {
                        break loop14;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc8_)
                        {
                           §§push(null);
                           if(!_loc8_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop14;
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc8_)
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
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop14;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               break loop6;
            }
            §§push(§§pop() / 2.5);
            break loop15;
         }
         var _loc6_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc7_)
         {
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Look!");
                  §§push(-80);
                  §§push(-220);
                  if(_loc7_)
                  {
                     §§push(null);
                     if(_loc8_)
                     {
                        break loop8;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc7_)
                        {
                           §§push(null);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§goto(addr036e);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc8_)
                        {
                           break loop8;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop8;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc7_)
                  {
                     break;
                  }
                  break loop8;
               }
               §§goto(addr036e);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,_loc6_);
            addr036e:
         }
         _loc6_ = new § 6§(duplicator.§<!U§());
         if(_loc7_)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("What, at the tunnel?");
                     §§push(320);
                     §§push(160);
                     if(!_loc8_)
                     {
                        §§push(null);
                        if(_loc7_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 addr03d2:
                                 §§push(null);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 break loop10;
                              }
                              addr03ee:
                              §§push(null);
                              if(_loc7_)
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
                                    §§goto(addr03ee);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                           §§push(§§pop() / 2.5);
                           break loop11;
                        }
                        break;
                     }
                     §§goto(addr03d2);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
            }
            §§push(§§pop());
            break loop11;
         }
      }
   }
}

