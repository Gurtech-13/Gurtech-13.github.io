package scenes
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §'!1§.§ E§;
   import §>T§.§[C§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Orbits extends §+Z§
   {
      
      public var §-P§:StageActor;
      
      public var duplicator:StageActor;
      
      public function Orbits()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§>y§,-1,null,{"endTiles":false});
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(frames));
            §§push(frame0);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame1);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame2);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(!_loc1_)
            {
               name = "Orbits";
            }
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
               tunnel = null;
               if(!_loc1_)
               {
                  break;
               }
               duplicator = null;
               if(_loc2_)
               {
                  break;
               }
            }
            §-P§ = null;
            if(!_loc2_)
            {
               sprites.length = 0;
            }
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
            if(_loc5_)
            {
               sprites.push(duplicator);
            }
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(!_loc6_)
         {
            duplicator.goesTo = new § !N§(_loc2_,-1);
            while(true)
            {
               if(_loc5_)
               {
                  §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               sprites.push(§-P§);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc6_)
         {
            §-P§.goesTo = new § !N§(_loc4_,-2);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §-P§.placeAt(3.75,-2.8,true);
               if(!_loc3_)
               {
                  §-P§.spritesheet.§,=§(32);
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §-P§.spritesheet.§#"§(true);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr00cd);
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'m going to find another tunnel to map out.");
                  §§push(-240);
                  §§push(-280);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
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
                        §§push(-1);
                        break loop4;
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
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1300 == null ? null : int(Math.round(1300 / 2.5)),null,null);
            addr00cd:
            var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
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
                        §§push("Catch up once you realize the Planet orbits faster than us.");
                        §§push(160);
                        §§push(-80);
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
                              if(_loc3_)
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
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1700 == null ? null : int(Math.round(1700 / 2.5)),0,_loc1_);
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
            return;
         }
         §§push(§§pop() / 2.5);
         break loop5;
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            duplicator.spritesheet.§,=§(64);
            loop0:
            while(true)
            {
               if(!_loc2_)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("You still think I \"stole\" it?");
                        §§push(32);
                        §§push(-320);
                        if(_loc3_)
                        {
                           while(true)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(null);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop());
                                       break loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc2_)
                                    {
                                       break loop1;
                                    }
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop1;
                           }
                        }
                        §§push(null);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop1;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§§pop() / 2.5);
                  break loop2;
               }
               § !C§("still");
               if(_loc3_)
               {
                  loop4:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Think.");
                     §§push(-24);
                     §§push(-180);
                     if(_loc3_)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(-1);
                              if(!_loc2_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00e6:
                                       §§push(null);
                                       break loop4;
                                    }
                                    break;
                                 }
                                 §§push(-1);
                                 if(!_loc3_)
                                 {
                                    break loop5;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(-1);
                              break loop5;
                           }
                           §§push(-1);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              break loop4;
                           }
                           break;
                        }
                        §§push(§§pop() / 2.5);
                        break;
                     }
                     §§goto(addr00e6);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,null);
               }
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Why else might\na planet move?");
                  §§push(-116);
                  §§push(0);
                  if(_loc3_)
                  {
                     §§push(-1);
                     if(!_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc2_)
                           {
                              addr016f:
                              §§push(null);
                              break;
                           }
                           addr0183:
                           §§push(-1);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              break;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc2_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr0183);
                              }
                              else
                              {
                                 §§push(-1);
                              }
                           }
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr016f);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,_loc1_);
               if(_loc2_)
               {
                  break;
               }
            }
            § !C§("else");
            break;
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:* = null as §[C§;
         var _loc4_:* = 0;
         var _loc5_:* = null as TunnelSection;
         §§push(0);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(section.terrain.length));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc10_)
         {
            loop0:
            while(_loc2_ < _loc3_)
            {
               §§push(_loc2_);
               if(_loc9_)
               {
                  _loc2_++;
                  if(_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc4_ = §§pop();
               _loc5_ = section;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc9_)
                     {
                        § L§.low = 948729;
                        if(!_loc10_)
                        {
                           loop3:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc9_)
                                 {
                                    if(_loc4_ < 0)
                                    {
                                       break loop3;
                                    }
                                    if(!_loc9_)
                                    {
                                       break loop3;
                                    }
                                    §§pop();
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(_loc4_ < int(_loc5_.terrain.length));
                                    if(_loc10_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop3;
                              }
                           }
                           if(§§pop())
                           {
                              break loop4;
                           }
                           _loc1_ = null;
                           break;
                        }
                     }
                     _loc1_ = _loc5_.terrain[_loc4_];
                     if(_loc9_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  while(true)
                  {
                     §§push(false);
                     if(_loc9_)
                     {
                        if(_loc1_ == null)
                        {
                           break;
                        }
                        if(_loc9_)
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              break loop1;
                           }
                           §§push(_loc1_.§@!B§ == null);
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(!§§pop());
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
               _loc1_.model.§#"§(false);
            }
            if(!_loc10_)
            {
               QuaternionUtils.setFromEuler(3.141592653589793,0.5235987755982988,-0.05235987755982988,tunnel.camera.§,t§);
            }
         }
         var _loc6_:Point3D = new Point3D(0,65,0);
         QuaternionUtils.rotateVector(tunnel.camera.§,t§,_loc6_,_loc6_);
         tunnel.camera.§%!7§.x = _loc6_.x;
         tunnel.camera.§%!7§.y = _loc6_.y;
         while(true)
         {
            §§push(tunnel.camera.§%!7§);
            §§push(section.endZ);
            if(!_loc10_)
            {
               §§push(§§pop() + 200);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().z = §§pop();
         loop7:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  tunnel.camera.reset();
                  if(_loc10_)
                  {
                     break;
                  }
                  tunnel.display(0);
                  if(_loc9_)
                  {
                     duplicator.placeAt(4.15,-1.5,true);
                     if(_loc10_)
                     {
                        break loop7;
                     }
                     duplicator.spritesheet.§,=§(70);
                     duplicator.spritesheet.§@S§(true);
                  }
                  §-P§.placeAt(3.75,-1.2,true);
               }
               §-P§.spritesheet.§,=§(71);
               break;
            }
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("So...");
                     §§push(40);
                     §§push(-188);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(_loc9_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc10_)
                              {
                                 addr0239:
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 break loop11;
                              }
                              addr0253:
                              §§push(null);
                              if(_loc9_)
                              {
                                 break loop11;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc10_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr0253);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                           §§push(§§pop() / 2.5);
                           break loop12;
                        }
                        break;
                     }
                     §§goto(addr0239);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               break loop7;
            }
            §§push(§§pop());
            break loop12;
         }
         var _loc7_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc9_)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Where\'d you put the Planet?");
                  §§push(160);
                  §§push(-88);
                  if(_loc9_)
                  {
                     §§push(-1);
                     if(!_loc9_)
                     {
                        break loop9;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc10_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc10_)
                        {
                           break loop9;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(-1);
                           break loop9;
                        }
                     }
                  }
                  §§push(-1);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop9;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc7_);
            }
            §§push(§§pop() / 2.5);
            break loop10;
         }
         var _loc8_:* = §&!S§.scale(0.4);
         if(_loc9_)
         {
            dialog.§ q§("I promise not to tell.",900,-105,_loc8_,null,16777215);
         }
      }
   }
}

