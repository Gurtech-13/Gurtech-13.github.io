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
   import com.player03.run3.level.§-p§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class Cheating extends §+Z§
   {
      
      public var skater:StageActor;
      
      public var child:StageActor;
      
      public function Cheating()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  super(§>K§.§>=§,3,null,null,null,§+!"§.NEVER);
                  if(_loc1_)
                  {
                     break;
                  }
                  §3!<§(new § !N§(§>K§.§>=§,4));
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc1_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         name = "Cheating";
         break loop1;
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
               if(!_loc2_)
               {
                  break;
               }
               child = null;
               if(_loc2_)
               {
                  skater = null;
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
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
            if(_loc5_)
            {
               sprites.push(child);
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
            child.goesTo = new § !N§(_loc2_,3);
            if(!_loc6_)
            {
               skater = new StageActor(section,CharacterRegistry.skater,false,null,false,null);
               if(_loc5_)
               {
                  sprites.push(skater);
               }
            }
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
            skater.goesTo = new § !N§(_loc4_,4);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:§ !>§ = §>K§.§>=§;
         var _loc2_:§-Q§ = _loc1_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.levelCount);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  break;
               }
               if(§§pop() < §§pop())
               {
                  §§push(_loc3_);
                  if(_loc7_)
                  {
                  }
               }
               else
               {
                  §§push(_loc4_);
               }
            }
            §§push(4);
            break;
         }
         loop1:
         while(true)
         {
            while(true)
            {
               if(§§pop() < §§pop())
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  §>K§.§>=§.§0!R§.§?F§(4);
                  if(_loc6_)
                  {
                     break loop1;
                  }
               }
               while(true)
               {
                  §§push(tunnel.camera);
                  §§push(50);
                  §§push(100);
                  §§push(section.endZ);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 250);
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§6!&§(§§pop(),§§pop(),§§pop());
               tunnel.camera.setRotation(QuaternionUtils.setFromEuler(3.141592653589793,0.9239978392911157,0));
               tunnel.camera.§3;§();
               tunnel.§<!Y§.§"!b§(0).§>!P§.§5u§();
               tunnel.display(0);
               break;
            }
            child.placeAt(4.5,0.8,true,5);
            child.spritesheet.§,=§(102);
            break;
         }
         child.spritesheet.§@S§(true);
         if(!_loc6_)
         {
            skater.placeAt(3.3,0.3,true);
            if(!_loc6_)
            {
               skater.spritesheet.§,=§(75);
            }
         }
         skater.spritesheet.§@S§(true);
         child.alignWith(skater);
         var _loc5_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc7_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Wasn\'t that cheating?");
                     §§push(160);
                     §§push(-160);
                     if(!_loc6_)
                     {
                        §§push(null);
                        if(!_loc6_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc7_)
                              {
                                 addr01ad:
                                 §§push(null);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 break loop3;
                              }
                              addr01c9:
                              §§push(null);
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc7_)
                              {
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break loop3;
                                 }
                                 §§goto(addr01c9);
                              }
                           }
                           §§push(§§pop());
                           break loop4;
                        }
                        break;
                     }
                     §§goto(addr01ad);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc5_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc5_ = new § 6§(skater.§<!U§());
         if(!_loc6_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I\'ll tell you what that was.\nThat was fun!");
                     §§push(-120);
                     §§push(-60);
                     if(_loc7_)
                     {
                        §§push(null);
                        if(!_loc6_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc6_)
                              {
                                 addr023e:
                                 §§push(null);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 break loop6;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc6_)
                              {
                                 break loop6;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop6;
                              }
                           }
                           §§push(null);
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                              break loop7;
                           }
                           break loop6;
                        }
                        break;
                     }
                     §§goto(addr023e);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc5_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
      }
   }
}

