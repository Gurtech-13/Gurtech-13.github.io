package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import layout3d.§>N§;
   import §6!Q§.§]u§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class LightningStrikesTwice extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var student:StageActor;
      
      public var §-P§:StageActor;
      
      public var box:§[C§;
      
      public function LightningStrikesTwice()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(§>K§.§>-§,0,LightningStrikesTwice.§3S§);
            if(!_loc1_)
            {
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame1);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc2_)
               {
                  name = "Lightning Strikes Twice";
               }
            }
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
               if(_loc1_)
               {
                  student = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §-P§ = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            sprites.length = 0;
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:§+#§ = §+#§.§"U§();
         § L§.high = 208883;
         if(!_loc4_)
         {
            §§push(true);
            if(!_loc4_)
            {
               if(!param2)
               {
                  §§pop();
                  §§push(§!!6§ == 4);
               }
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  Main.instance.§,Z§(null);
               }
            }
            else
            {
               §]u§.§@!A§().§5!@§ = false;
               §§push(_loc3_.§>c§());
               if(!_loc4_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  §+#§.§1!"§(_loc3_);
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc5_)
            {
               student = new StageActor(section,CharacterRegistry.student,false,null,false,null);
               if(!_loc6_)
               {
                  break;
               }
            }
            sprites.push(student);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc5_)
            {
               student.goesTo = new § !N§(_loc2_,1);
               if(_loc5_)
               {
                  break;
               }
            }
            §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
            if(_loc6_)
            {
               break;
            }
            §§goto(addr00bd);
         }
         sprites.push(§-P§);
         addr00bd:
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc5_)
         {
            §-P§.goesTo = new § !N§(_loc4_,0);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = §&!S§.width(1200);
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Could we save the science for later?");
                  §§push(-240);
                  §§push(-160);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc3_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr0077);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop0;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§goto(addr0077);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr0077:
         }
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("For now, let\'s keep searching.");
                  §§push(-160);
                  §§push(80);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr00e7:
                              §§goto(addr0119);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop2;
                           }
                        }
                        addr00fb:
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr00fb);
               }
               §§goto(addr0119);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),0,_loc2_);
            addr0119:
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         box = §[C§.§4r§(tunnel,§"=§.§]R§(tunnel,"movableBox"));
         box.reset();
         box.transform.setRotation(QuaternionUtils.setFromEuler(0,-0.14279966607226333,0));
         box.transform.§6!&§(-60,-270,2000);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc3_)
               {
                  tunnel.§`=§(box);
                  while(true)
                  {
                     if(_loc3_)
                     {
                        QuaternionUtils.setFromEuler(3.141592653589793,3.141592653589793,0.031415926535897934,tunnel.camera.§,t§);
                        tunnel.camera.reset();
                        if(!_loc3_)
                        {
                           break;
                        }
                        tunnel.camera.§6!&§(0,-150,2300);
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        tunnel.camera.§3;§();
                     }
                     tunnel.display(0);
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               student.placeAt(17,21.3,null,45);
               student.spritesheet.§,=§(82);
               if(_loc3_)
               {
                  break loop0;
               }
               §§goto(addr011c);
            }
            §-P§.spritesheet.§,=§(75);
            var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
            if(!_loc4_)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Nice!");
                     §§push(-280);
                     §§push(-360);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc4_)
                                 {
                                    addr0182:
                                    §§push(null);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       break loop4;
                                    }
                                    break loop3;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    break loop3;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break;
                                 }
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
                        break loop3;
                     }
                     §§goto(addr0182);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               }
               §§push(§§pop());
               break loop4;
            }
            var _loc2_:* = §&!S§.width(1000);
            _loc1_ = new § 6§(student.§<!U§());
            if(!_loc4_)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Let\'s test it against the other one!");
                     §§push(200);
                     §§push(-160);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr024f);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop6;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop6;
                  }
                  §§goto(addr024f);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,_loc1_);
               addr024f:
            }
            return;
         }
         student.spritesheet.§@S§(true);
         if(_loc3_)
         {
            addr011c:
            §-P§.placeAt(16,21.3,null,45);
         }
         break loop1;
      }
   }
}

