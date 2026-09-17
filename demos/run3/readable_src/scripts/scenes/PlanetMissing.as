package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class PlanetMissing extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var pastafarian:StageActor;
      
      public var duplicator:StageActor;
      
      public function PlanetMissing()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §§push(this);
               §§push(§>K§.§0x§);
               §§push(0);
               §§push(PlanetMissing.§3S§);
               §§push("endTiles");
               §§push(false);
               §§push("customDate");
               §§push(§>K§.§>y§.§99§());
               if(!_loc2_)
               {
                  §§push(Number(§§pop()));
                  if(_loc1_)
                  {
                     §§push(§§pop() - 0.001);
                  }
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),null);
               if(!_loc1_)
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
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame2);
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
            name = "Planet Missing";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               tunnel = null;
               while(true)
               {
                  if(!_loc2_)
                  {
                     pastafarian = null;
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
                  duplicator = null;
                  if(_loc1_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_)
         {
            super.loadNext(param1,param2);
         }
         var _loc3_:§ !>§ = §>K§.§>y§;
         var _loc4_:§-Q§ = _loc3_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.levelCount);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc7_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           §§push(_loc6_);
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(_loc8_)
                              {
                                 break loop2;
                              }
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                              }
                           }
                           else
                           {
                              §§push(_loc6_);
                           }
                        }
                        §§push(0);
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     break loop1;
                  }
               }
               break loop2;
            }
            return;
         }
         §>K§.§>y§.§^J§.§?F§(0);
         break loop1;
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            pastafarian = new StageActor(section,CharacterRegistry.pastafarian,false,null,false,null);
            while(true)
            {
               if(!_loc6_)
               {
                  pastafarian.billboardMode = true;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               sprites.push(pastafarian);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(_loc5_)
         {
            pastafarian.goesTo = new § !N§(_loc2_,0);
            while(true)
            {
               if(!_loc6_)
               {
                  duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               duplicator.billboardMode = true;
               if(_loc5_)
               {
                  break;
               }
            }
            sprites.push(duplicator);
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
            duplicator.goesTo = new § !N§(_loc4_,36);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         QuaternionUtils.setFromEuler(3.141592653589793,0,0,tunnel.camera.§,t§);
         while(true)
         {
            if(!_loc2_)
            {
               tunnel.camera.§%!7§.x = 0;
               if(!_loc2_)
               {
                  tunnel.camera.§%!7§.z = 230;
                  tunnel.camera.reset();
                  tunnel.display(0);
                  pastafarian.placeAt(4.5,0.7);
               }
               pastafarian.spritesheet.§,=§(78);
               if(!_loc3_)
               {
                  break;
               }
               duplicator.placeAt(6.5,0);
               if(_loc2_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§,=§(46);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc2_)
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
                     §§push("Our planet appears to be missing.");
                     §§push(-184);
                     §§push(200);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr00e5:
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                              addr00fe:
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr00fe);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                           §§push(§§pop() / 2.5);
                           break loop2;
                        }
                        break;
                     }
                     §§goto(addr00e5);
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
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc3_)
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
                     §§push(dialog);
                     §§push("Pardon the strange observation, but...");
                     §§push(176);
                     §§push(-40);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(null);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop());
                                       break loop1;
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc2_)
                              {
                                 break loop2;
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
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               QuaternionUtils.setFromEuler(-1.2566370614359172,0,0,tunnel.camera.§,t§);
               tunnel.camera.§%!7§.x = 150;
               tunnel.camera.§%!7§.y = 60;
               tunnel.camera.§%!7§.z = 20;
               tunnel.camera.reset();
               tunnel.display(0);
               pastafarian.placeAt(5.2,1);
               pastafarian.spritesheet.§,=§(60);
               if(!_loc3_)
               {
                  pastafarian.spritesheet.§@S§(true);
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            duplicator.placeAt(6.5,0);
            if(!_loc3_)
            {
               break;
            }
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
                     §§push("Refresh my memory...");
                     §§push(96);
                     §§push(-280);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00e1:
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
                     §§goto(addr00e1);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
               if(_loc2_)
               {
                  loop4:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Isn\'t this where we first entered these tunnels?");
                     §§push(200);
                     §§push(-120);
                     if(_loc2_)
                     {
                        loop5:
                        while(true)
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
                                       addr017d:
                                       §§push(null);
                                       break loop4;
                                    }
                                    break;
                                 }
                                 §§push(-1);
                                 if(!_loc2_)
                                 {
                                    break loop5;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              addr01a1:
                              §§push(-1 / 2.5);
                              break loop4;
                           }
                           §§push(-1);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§goto(addr01a1);
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§goto(addr017d);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1300 == null ? null : int(Math.round(1300 / 2.5)),0,_loc1_);
               }
               _loc1_ = new § 6§(duplicator.§<!U§());
               if(!_loc3_)
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
                           §§push("Yeah.");
                           §§push(-200);
                           §§push(0);
                           if(_loc2_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc2_)
                                    {
                                       addr0205:
                                       §§push(null);
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       break loop7;
                                    }
                                    addr021f:
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       if(§§pop() < 0)
                                       {
                                          §§goto(addr021f);
                                       }
                                       else
                                       {
                                          §§push(null);
                                       }
                                    }
                                 }
                                 §§push(§§pop() / 2.5);
                                 break loop8;
                              }
                              break;
                           }
                           §§goto(addr0205);
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
                  }
                  §§push(§§pop());
                  break loop8;
               }
               return;
            }
            §§push(§§pop());
            break loop2;
         }
         duplicator.spritesheet.§,=§(67);
         duplicator.spritesheet.§@S§(true);
         continue loop2;
      }
   }
}

