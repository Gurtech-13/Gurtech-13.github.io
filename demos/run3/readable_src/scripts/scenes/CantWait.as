package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import stage.§3!J§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import nme3D.model.Object3D;
   import nme3D.model.Model;
   
   public class CantWait extends §+Z§
   {
      
      public var duplicator:StageActor;
      
      public var §;8§:§3!J§;
      
      public var child:StageActor;
      
      public var §?R§:§3!J§;
      
      public var §7W§:StageActor;
      
      public function CantWait()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super(§>K§.§-!S§,-2,null,{"startTilesLength":2000});
               if(!_loc2_)
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
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame7);
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
            name = "Can\'t Wait";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §7W§.transform.§`F§(false,false);
         §7W§.transform.§'!=§(false,false);
         child.transform.§`F§(false,false);
         child.transform.§'!=§(false,false);
         if(_loc2_)
         {
            §?R§ = null;
            §;8§ = null;
         }
         tunnel = null;
         child = null;
         duplicator = null;
         §7W§ = null;
         sprites.length = 0;
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
               child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
               if(_loc6_)
               {
                  child.billboardMode = true;
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            sprites.push(child);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
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
                  child.goesTo = new § !N§(_loc2_,-2);
                  if(_loc5_)
                  {
                     break;
                  }
                  duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
                  if(_loc5_)
                  {
                     break loop1;
                  }
               }
               duplicator.billboardMode = true;
               if(!_loc5_)
               {
                  break;
               }
               break loop1;
            }
            sprites.push(duplicator);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         while(true)
         {
            if(_loc6_)
            {
               duplicator.goesTo = new § !N§(_loc4_,-3);
               if(_loc6_)
               {
                  §7W§ = new StageActor(section,CharacterRegistry.§7W§,false,null,false,null);
                  if(!_loc5_)
                  {
                     §7W§.billboardMode = true;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
               }
            }
            sprites.push(§7W§);
            break;
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
               child.placeAt(7.7,28.99,null,23);
               if(_loc4_)
               {
                  break;
               }
               child.spritesheet.§,=§(26);
            }
            child.spritesheet.§@S§(true);
            if(_loc3_)
            {
               duplicator.placeAt(7.7,29);
               if(!_loc3_)
               {
                  break;
               }
               duplicator.spritesheet.§,=§(47);
            }
            duplicator.spritesheet.§@S§(true);
            break;
         }
         §7W§.model.§#"§(false);
         var _loc1_:* = §&!S§.width(525);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("This is gonna be so great!\nI can\'t wait till we\'re home!",-60,-170,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Don\'t worry, we\'re almost there.",-100,260,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(0.4);
         if(_loc3_)
         {
            dialog.§`!^§("I think.",200,300,_loc1_,null,0);
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         if(_loc11_)
         {
            tunnel.§5!F§(§?R§);
            if(!_loc12_)
            {
               tunnel.§5!F§(§;8§);
               if(_loc11_)
               {
                  §+_§(§>K§.§-!S§,-2);
               }
            }
         }
         var _loc1_:Scene3D = tunnel.§"[§;
         var _loc2_:Model = child.model;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc12_)
               {
                  if(_loc2_.§0p§ <= 0)
                  {
                     loop20:
                     while(true)
                     {
                        loop21:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc11_)
                              {
                                 if(_loc2_.§0p§ >= 0)
                                 {
                                    break;
                                 }
                                 if(!_loc12_)
                                 {
                                    §§pop();
                                    if(_loc12_)
                                    {
                                       break loop21;
                                    }
                                    §§push(_loc1_.§9!R§ == null);
                                    if(_loc12_)
                                    {
                                       break loop20;
                                    }
                                 }
                              }
                              §§push(!§§pop());
                              if(_loc11_)
                              {
                                 break loop20;
                              }
                              break;
                           }
                           §§goto(addr00c0);
                        }
                        §§push(_loc1_.§9!R§);
                        break loop1;
                     }
                     addr00c0:
                     if(Boolean(§§pop()))
                     {
                        if(!_loc12_)
                        {
                           break loop21;
                        }
                        break loop0;
                     }
                     §§push(_loc1_.§@8§);
                     break;
                  }
                  if(_loc12_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc1_.§3!#§);
               break;
            }
            §§pop().§4w§(_loc2_);
            if(_loc11_)
            {
               break;
            }
            §§goto(addr00f2);
         }
         tunnel.§"[§.§&!2§(child.model);
         addr00f2:
         var _loc3_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc12_)
            {
               _loc3_.x = -127;
               if(!_loc11_)
               {
                  break;
               }
            }
            _loc3_.y = -16;
            if(_loc11_)
            {
               _loc3_.z = 2174;
            }
            break;
         }
         var _loc4_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc12_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.5061454830783556)));
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            if(_loc11_)
            {
               §§push(_loc4_);
               §§push(-0.23);
               if(_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().x = §§pop();
               while(true)
               {
                  if(_loc11_)
                  {
                     §§push(_loc4_);
                     §§push(0.36);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().y = §§pop();
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  §§push(_loc4_);
                  §§push(0.904);
                  if(_loc11_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().z = §§pop();
                  if(_loc11_)
                  {
                     break;
                  }
                  break loop4;
               }
            }
            _loc4_.w = Number(Math.cos(0.5061454830783556));
            break;
         }
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop18:
               while(true)
               {
                  §§push(_loc4_.x * _loc4_.x);
                  if(!_loc12_)
                  {
                     while(true)
                     {
                        §§push(_loc4_.y);
                        §§push(_loc4_.y);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§push(_loc4_.z);
                           §§push(_loc4_.z);
                           if(!_loc11_)
                           {
                              break loop18;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc11_)
                        {
                           break;
                        }
                        break loop7;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc11_)
                     {
                        break loop6;
                     }
                     §§push(Number(§§pop()));
                  }
                  §§push(_loc4_.w);
                  §§push(_loc4_.w);
                  break;
               }
               §§push(§§pop() * §§pop());
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc12_)
            {
               break;
            }
            §§goto(addr0211);
         }
         addr0211:
         var _loc6_:Number = §§pop();
         §§push(_loc6_);
         if(_loc11_)
         {
            §§push(§§pop() - 1);
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         loop8:
         while(true)
         {
            while(true)
            {
               §§push(_loc7_);
               if(!_loc12_)
               {
                  §§push(0);
                  if(_loc12_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc12_)
                     {
                        §§push(_loc7_);
                        break loop8;
                     }
                     §§goto(addr0338);
                  }
                  else
                  {
                     §§push(_loc7_);
                  }
               }
               §§push(-§§pop());
               break loop8;
            }
            while(true)
            {
               if(§§pop() == §§pop())
               {
                  _loc4_.x = 0;
                  if(_loc12_)
                  {
                     break loop15;
                  }
                  _loc4_.y = 0;
                  if(_loc12_)
                  {
                     break loop13;
                  }
                  _loc4_.z = 0;
                  _loc4_.w = 1;
                  if(!_loc11_)
                  {
                     break loop11;
                  }
                  §§goto(addr0300);
               }
               else
               {
                  _loc6_ = 1 / Number(Math.sqrt(_loc6_));
                  §§push(_loc4_);
                  §§push(_loc4_.x);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc4_);
                  §§push(_loc4_.y);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc12_)
                  {
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
                     if(!_loc11_)
                     {
                        break loop10;
                     }
                     §§goto(addr0300);
                  }
               }
               §§goto(addr0367);
            }
            §§goto(addr0383);
         }
         §§push(§§pop() < 1e-10);
         if(!_loc12_)
         {
            §§push(!§§pop());
         }
         loop10:
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        addr0300:
                        if(§§pop())
                        {
                           §§push(_loc6_);
                           §§push(0);
                           break loop9;
                        }
                        tunnel.camera.reset();
                        if(!_loc12_)
                        {
                           break loop10;
                        }
                        §§goto(addr0354);
                     }
                     §§goto(addr0367);
                  }
                  §§goto(addr038e);
               }
               §§goto(addr034a);
            }
            child.placeAt(6.6,26.99,null,23);
            while(true)
            {
               if(_loc11_)
               {
                  §§goto(addr0338);
               }
               §§goto(addr0372);
            }
            §§goto(addr0383);
         }
         tunnel.display(0);
         if(_loc11_)
         {
            break loop11;
         }
         addr0338:
         child.spritesheet.§,=§(26);
         while(true)
         {
            if(!_loc12_)
            {
               addr034a:
               child.spritesheet.§@S§(true);
               addr0354:
               duplicator.placeAt(6.6,27);
               if(!_loc11_)
               {
                  break;
               }
               duplicator.spritesheet.§,=§(56);
            }
            addr0372:
            duplicator.spritesheet.§@S§(true);
            if(!_loc12_)
            {
               break;
            }
            §§goto(addr038e);
         }
         addr0383:
         §7W§.model.§#"§(false);
         addr038e:
         var _loc8_:* = §&!S§.scale(0.8);
         var _loc9_:* = §&!S§.width(570);
         if(!_loc12_)
         {
            dialog.§";§("...and a giant kite and new costumes and a ninja sword.",-360,-310,_loc8_,_loc9_,null,null,null);
         }
         _loc8_ = §&!S§.scale(0.8);
         var _loc10_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc12_)
         {
            dialog.§";§("No, two ninja swords!",140,-170,_loc8_,null,-1,_loc10_,null);
         }
         _loc8_ = §&!S§.scale(0.8);
         _loc9_ = §&!S§.width(400);
         if(_loc11_)
         {
            dialog.§";§("And then I\'ll get like a thousand tokens for the water gun game at the Trade Fair.",-300,80,_loc8_,_loc9_,-1,null,null);
         }
         _loc8_ = §&!S§.scale(0.8);
         if(_loc11_)
         {
            dialog.§";§("The Singer will never beat my score, ever again!",120,350,_loc8_,null,-1,null,null);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(_loc9_)
         {
            §+_§(§>K§.§>!'§,2);
         }
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = -110;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 4;
            if(!_loc8_)
            {
               _loc1_.z = 5497;
            }
            break;
         }
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
         §§push(Number(Math.sin(0.8552113334772214)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc2_);
            §§push(-0.367);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(0.104);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.924);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc8_)
                  {
                     _loc2_.w = Number(Math.cos(0.8552113334772214));
                  }
               }
            }
         }
         §§push(_loc2_.x);
         §§push(_loc2_.x);
         if(_loc9_)
         {
            §§push(§§pop() * §§pop());
            §§push(_loc2_.y);
         }
         loop2:
         while(true)
         {
            §§push(_loc2_.y);
            if(_loc9_)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc8_)
                  {
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
                  break;
               }
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(_loc9_)
            {
               break;
            }
            §§goto(addr0139);
         }
         addr0139:
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
         while(true)
         {
            loop5:
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
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
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
                           break loop5;
                        }
                        if(_loc8_)
                        {
                           continue loop6;
                        }
                     }
                     §§push(_loc4_);
                     break loop8;
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc2_.x = 0;
                     if(!_loc8_)
                     {
                        continue loop6;
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
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                  }
                  §§goto(addr021e);
               }
               §§push(0);
               break loop9;
            }
            tunnel.camera.reset();
            tunnel.display(0);
            child.placeAt(12,75);
            §§goto(addr0251);
         }
         _loc2_.y = 0;
         _loc2_.z = 0;
         loop6:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  _loc2_.w = 1;
                  if(!_loc8_)
                  {
                     break loop5;
                  }
                  addr0251:
                  addr021e:
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(!_loc8_)
                  {
                     break loop5;
                  }
                  child.spritesheet.§,=§(28);
                  if(_loc8_)
                  {
                     break;
                  }
                  child.spritesheet.§@S§(false);
                  duplicator.placeAt(12.7,76);
                  duplicator.spritesheet.§,=§(64);
                  if(!_loc9_)
                  {
                     break loop6;
                  }
                  duplicator.spritesheet.§@S§(false);
                  §7W§.placeAt(12.4,75);
                  if(_loc8_)
                  {
                     break loop6;
                  }
                  §7W§.spritesheet.§,=§(22);
                  if(!_loc9_)
                  {
                     break loop6;
                  }
               }
               §7W§.spritesheet.§@S§(false);
               break;
            }
            dialog.§";§("See Dad?",200,-40,null,null,null,null,null);
            break;
         }
         var _loc6_:* = §&!S§.width(380);
         var _loc7_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc9_)
         {
            dialog.§";§("The Bunny agrees with me!",280,330,null,_loc6_,-1,_loc7_,null);
         }
         §?R§ = new §3!J§(§7W§,-1,200,false);
         tunnel.registerAnimation(§?R§);
         §;8§ = new §3!J§(child,1,120,false);
         var _temp_2:* = §;8§;
         §§push(_temp_2);
         §§push(_temp_2.§;!`§);
         if(_loc9_)
         {
            §§push(§§pop() * 0.4);
         }
         §§pop().§;!`§ = §§pop();
         tunnel.registerAnimation(§;8§);
         if(!_loc8_)
         {
            §§push(dialog);
            §§push(tunnel.display);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
         }
         §^R§();
         if(!_loc8_)
         {
            §[!_§ = 0.8;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         if(_loc10_)
         {
            §+_§(§>K§.§?t§,0);
         }
         var _loc1_:Scene3D = tunnel.§"[§;
         var _loc2_:Model = child.model;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc11_)
               {
                  loop12:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc2_.§0p§ > 0)
                        {
                           if(_loc10_)
                           {
                              §§push(_loc1_.§3!#§);
                              break loop1;
                           }
                           addr0083:
                           §§push(_loc1_.§9!R§ == null);
                           if(!_loc10_)
                           {
                              break loop12;
                           }
                           §§push(!§§pop());
                           if(_loc11_)
                           {
                              break loop12;
                           }
                        }
                        else
                        {
                           §§push(false);
                           if(!_loc11_)
                           {
                              if(_loc2_.§0p§ >= 0)
                              {
                                 break loop12;
                              }
                              if(!_loc11_)
                              {
                                 §§pop();
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0083);
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop12;
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        break loop13;
                     }
                     break loop0;
                  }
                  §§push(_loc1_.§@8§);
                  break;
               }
               §§push(_loc1_.§9!R§);
               break;
            }
            §§pop().§4w§(_loc2_);
            if(!_loc11_)
            {
               tunnel.§"[§.§&!2§(child.model);
            }
            break;
         }
         var _loc3_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc10_)
            {
               _loc3_.x = 184;
               if(!_loc10_)
               {
                  break;
               }
            }
            _loc3_.y = 21;
            if(_loc10_)
            {
               _loc3_.z = 1286;
            }
            break;
         }
         var _loc4_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc11_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.0035643198967394)));
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc11_)
         {
            §§push(_loc4_);
            §§push(-0.372);
            if(!_loc11_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc10_)
               {
                  §§push(_loc4_);
                  §§push(-0.865);
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
               §§push(-0.337);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               if(!_loc11_)
               {
                  _loc4_.w = Number(Math.cos(1.0035643198967394));
               }
               break;
            }
         }
         loop5:
         while(true)
         {
            §§push(_loc4_.x);
            if(_loc10_)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     §§push(§§pop() * _loc4_.x);
                     §§push(_loc4_.y);
                     §§push(_loc4_.y);
                     if(_loc10_)
                     {
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc10_)
                           {
                              §§push(§§pop() + §§pop());
                              §§push(_loc4_.z);
                              if(_loc11_)
                              {
                                 break loop6;
                              }
                              §§push(_loc4_.z);
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc10_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc11_)
                           {
                              §§push(_loc4_.w);
                              §§push(_loc4_.w);
                              break;
                           }
                           break loop7;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break loop6;
                  }
                  §§push(Number(§§pop()));
                  if(_loc11_)
                  {
                     break loop5;
                  }
               }
               §§push(§§pop() + §§pop());
               break loop7;
            }
            §§push(Number(§§pop()));
            break;
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
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(_loc7_);
                  §§push(0);
                  if(_loc10_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(_loc7_);
                     }
                     else
                     {
                        §§push(_loc7_);
                        if(!_loc11_)
                        {
                           §§push(-§§pop());
                        }
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc11_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop10;
                     }
                     §§push(_loc6_);
                     if(_loc11_)
                     {
                        break loop9;
                     }
                     §§push(0);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc6_)));
                     break loop9;
                  }
                  if(!_loc11_)
                  {
                     _loc4_.x = 0;
                     if(!_loc11_)
                     {
                        _loc4_.y = 0;
                        _loc4_.z = 0;
                        _loc4_.w = 1;
                        break loop10;
                     }
                     §§goto(addr0321);
                  }
                  §§goto(addr02e4);
               }
               §§goto(addr02f9);
            }
            tunnel.camera.reset();
            if(_loc10_)
            {
               addr02e4:
               tunnel.display(0);
               §§goto(addr02ed);
            }
            §§goto(addr0336);
         }
         _loc6_ = Number(§§pop());
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc11_)
         {
            §§push(§§pop() * _loc6_);
         }
         §§pop().x = §§pop();
         §§push(_loc4_);
         §§push(_loc4_.y);
         if(_loc10_)
         {
            §§push(§§pop() * _loc6_);
         }
         §§pop().y = §§pop();
         §§push(_loc4_);
         §§push(_loc4_.z);
         if(_loc10_)
         {
            §§push(§§pop() * _loc6_);
         }
         §§pop().z = §§pop();
         if(_loc10_)
         {
            §§push(_loc4_);
            §§push(_loc4_.w);
            if(_loc10_)
            {
               §§push(§§pop() * _loc6_);
            }
            §§pop().w = §§pop();
            break loop10;
         }
         addr02ed:
         child.placeAt(3,15.8);
         addr02f9:
         child.spritesheet.§,=§(123);
         child.spritesheet.§@S§(true);
         duplicator.placeAt(3,15.7);
         if(!_loc11_)
         {
            addr0321:
            duplicator.spritesheet.§,=§(75);
         }
         duplicator.spritesheet.§@S§(true);
         addr0336:
         §7W§.model.§#"§(false);
         var _loc8_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc11_)
         {
            dialog.§";§("No no no!",-40,-180,null,null,null,_loc8_,null);
         }
         var _loc9_:* = §&!S§.width(300);
         _loc8_ = new § 6§(duplicator.§<!U§());
         if(!_loc11_)
         {
            dialog.§";§("Why not? Use your words.",-400,-30,null,_loc9_,null,_loc8_,null);
         }
         _loc8_ = new § 6§(child.§<!U§());
         if(_loc10_)
         {
            dialog.§";§("No no no no no!",200,240,null,null,null,_loc8_,null);
            if(_loc10_)
            {
               §^R§();
            }
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(_loc9_)
         {
            §+_§(§>K§.§,[§,4,{"startTilesLength":4000});
         }
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 222;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = -89;
            if(_loc9_)
            {
               break;
            }
            addr0065:
            var _loc2_:Quaternion = tunnel.camera.§,t§;
            while(true)
            {
               if(_loc9_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
               }
               _loc2_ = new Quaternion();
               break;
            }
            §§push(Number(Math.sin(1.8849555921538759)));
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
                  §§push(0.643);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().x = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.667);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(_loc9_)
               {
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
                        §§push(_loc2_.x * _loc2_.x);
                        if(_loc9_)
                        {
                           §§push(_loc2_.y);
                           if(_loc9_)
                           {
                              loop13:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_.y);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + §§pop() * §§pop());
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc9_)
                                       {
                                          break loop13;
                                       }
                                       §§push(_loc2_.z);
                                       §§push(_loc2_.z);
                                       if(_loc8_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       break loop13;
                                    }
                                    break loop4;
                                 }
                              }
                              §§push(Number(§§pop()));
                              break loop14;
                           }
                           break loop3;
                        }
                        §§push(_loc2_.w);
                        break loop3;
                     }
                     §§goto(addr0138);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc9_)
                     {
                        §§push(§§pop() - 1);
                        if(!_loc9_)
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
                           if(!_loc8_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc5_);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 addr017b:
                                 §§push(§§pop() < 1e-10);
                                 if(_loc9_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop8;
                                 }
                                 §§push(_loc4_);
                                 if(!_loc9_)
                                 {
                                    break loop7;
                                 }
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(_loc9_)
                                 {
                                    §§goto(addr017b);
                                 }
                              }
                              §§push(0);
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              break loop7;
                           }
                           if(_loc9_)
                           {
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              if(!_loc8_)
                              {
                                 _loc2_.w = 1;
                                 break loop8;
                              }
                              §§goto(addr01e5);
                           }
                           §§goto(addr02a7);
                        }
                        §§goto(addr01d4);
                     }
                     tunnel.camera.reset();
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§goto(addr0231);
                        }
                        §§goto(addr027b);
                     }
                     §§goto(addr028c);
                  }
                  addr01d4:
                  _loc4_ = Number(§§pop());
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  addr01e5:
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  if(_loc9_)
                  {
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
                        break loop8;
                     }
                  }
                  addr0231:
                  tunnel.display(0);
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        child.placeAt(1.9,1.25);
                        child.spritesheet.§,=§(97);
                        child.spritesheet.§@S§(true);
                        if(_loc9_)
                        {
                           duplicator.placeAt(2.1,1.5);
                           if(_loc9_)
                           {
                              addr027b:
                              duplicator.spritesheet.§,=§(71);
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     addr028c:
                     duplicator.spritesheet.§@S§(true);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§goto(addr02a7);
                  }
                  §7W§.model.§#"§(false);
                  addr02a7:
                  var _loc6_:* = §&!S§.width(270);
                  var _loc7_:§ 7§ = new § 6§(child.§<!U§());
                  if(_loc9_)
                  {
                     dialog.§";§("We aren\'t going home.",-280,-50,null,_loc6_,null,_loc7_,null);
                  }
                  _loc7_ = new § 6§(duplicator.§<!U§());
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        dialog.§";§("Actually...",320,100,null,null,null,_loc7_,null);
                        if(!_loc9_)
                        {
                           break;
                        }
                        dialog.§";§("Dad, no. I already said we aren\'t!",60,260,null,null,0,null,null);
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     § !C§("already said");
                     if(_loc9_)
                     {
                        break;
                     }
                     §§goto(addr0369);
                  }
                  §^R§();
                  addr0369:
                  return;
               }
               addr0138:
               §§push(§§pop() * _loc2_.w);
               break loop4;
            }
            §§push(_loc2_);
            §§push(0.376);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc9_)
            {
               _loc2_.w = Number(Math.cos(1.8849555921538759));
            }
            continue loop4;
         }
         _loc1_.z = 217;
         §§goto(addr0065);
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         child.placeAt(1,-4.7);
         child.spritesheet.§,=§(89);
         if(!_loc3_)
         {
            child.spritesheet.§@S§(true);
            duplicator.placeAt(0.6,-4.7);
            duplicator.spritesheet.§,=§(39);
            duplicator.spritesheet.§@S§(true);
            §7W§.model.§#"§(false);
         }
         var _loc1_:* = §&!S§.scale(1);
         if(_loc2_)
         {
            dialog.§`!^§("I remember when...",270,160,_loc1_,null,0);
            if(!_loc3_)
            {
               §[!_§ = 0.8;
            }
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         child.placeAt(1,-5);
         child.spritesheet.§,=§(88);
         while(true)
         {
            if(!_loc2_)
            {
               child.spritesheet.§@S§(true);
               duplicator.placeAt(0.6,-5);
               if(_loc3_)
               {
                  duplicator.spritesheet.§,=§(39);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            duplicator.spritesheet.§@S§(true);
            if(_loc3_)
            {
               §7W§.model.§#"§(false);
            }
            break;
         }
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc2_)
         {
            dialog.§";§("Dad, are we almost there?",-220,-120,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("How much longer?",20,340,null,null,null,_loc1_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 90;
               if(_loc8_)
               {
                  _loc1_.y = -22;
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = -600;
            break;
         }
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
         §§push(Number(Math.sin(0.7853981633974483)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               _loc2_.x = 0 * _loc3_;
               if(!_loc7_)
               {
                  _loc2_.y = 0 * _loc3_;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc2_.z = -1 * _loc3_;
            if(_loc8_)
            {
               break;
            }
            §§goto(addr00ba);
         }
         _loc2_.w = Number(Math.cos(0.7853981633974483));
         addr00ba:
         loop3:
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            if(!_loc7_)
            {
               §§push(_loc2_.y);
               if(_loc7_)
               {
                  break;
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(_loc2_.z);
            }
            while(true)
            {
               §§push(_loc2_.z);
               if(!_loc7_)
               {
                  break loop3;
               }
               addr0100:
               §§push(§§pop() * §§pop());
               break;
            }
            §§goto(addr0101);
         }
         §§push(§§pop() * §§pop());
         if(!_loc7_)
         {
            §§push(§§pop() + §§pop());
            §§push(_loc2_.w);
            if(!_loc7_)
            {
               §§goto(addr0100);
               §§push(_loc2_.w);
            }
         }
         addr0101:
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
         while(true)
         {
            loop7:
            while(true)
            {
               loop11:
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
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc5_);
                           if(!_loc8_)
                           {
                              continue loop9;
                           }
                           addr0152:
                           §§push(§§pop() < 1e-10);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop11;
                           }
                           if(_loc7_)
                           {
                              break loop7;
                           }
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              continue loop9;
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              §§goto(addr0152);
                              §§push(-§§pop());
                           }
                        }
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     continue loop9;
                  }
                  _loc2_.x = 0;
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc2_.y = 0;
                  if(!_loc7_)
                  {
                     _loc2_.z = 0;
                     if(!_loc7_)
                     {
                        _loc2_.w = 1;
                        break;
                     }
                     §§goto(addr01f1);
                  }
                  else
                  {
                     §§goto(addr01cc);
                  }
               }
               tunnel.camera.reset();
               tunnel.display(0);
               if(!_loc7_)
               {
                  child.placeAt(1,-6);
                  if(_loc7_)
                  {
                     break loop9;
                  }
                  child.spritesheet.§,=§(114);
                  if(_loc7_)
                  {
                     break loop8;
                  }
               }
               §§goto(addr023c);
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
               addr01f1:
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               break loop11;
            }
            §§goto(addr0263);
         }
         _loc4_ = §§pop();
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     if(_loc8_)
                     {
                        addr01cc:
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        break loop7;
                     }
                     break;
                  }
                  addr023c:
                  child.spritesheet.§@S§(true);
                  break loop9;
               }
               addr0263:
               duplicator.spritesheet.§@S§(true);
               break loop8;
            }
            duplicator.placeAt(0.6,-6);
            if(!_loc7_)
            {
               duplicator.spritesheet.§,=§(36);
               break loop10;
            }
            break;
         }
         §7W§.model.§#"§(false);
         var _loc6_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("I can\'t wait to be home again!",-260,0,null,null,null,_loc6_,null);
         }
      }
      
      public function §^R§() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Shape = new Shape();
         while(true)
         {
            if(_loc4_)
            {
               §<!T§.fillRect(_loc1_,§^F§.TRANSPARENT(8421504,0.35),null,null,null,null,dialog.layout);
               if(_loc3_)
               {
                  break;
               }
            }
            dialog.addChild(_loc1_);
            break;
         }
         var _loc2_:* = §&!S§.scale(2);
         if(!_loc3_)
         {
            dialog.§`!^§("I remember when...",0,-320,_loc2_,null,16777215);
         }
      }
   }
}

