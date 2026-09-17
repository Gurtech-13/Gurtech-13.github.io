package nme3D.shader
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §4n§.Achievements;
   import §>T§.§!=§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   import nme3D.Context3DUtils;
   import nme3D.shader.vertex.PositionColorVertex;
   
   public class §<!9§
   {
      
      public static var init__:Boolean;
      
      public static var §1Z§:§'H§;
      
      public static var §2k§:§'H§;
      
      public static var §!!3§:EventDispatcher;
      
      public static var §,Q§:EventDispatcher;
      
      public static var §#$§:Number = 0;
      
      public static var §8!7§:Number = 1;
      
      public static var §-!O§:Number = -1;
      
      public function §<!9§()
      {
      }
      
      public static function §7!P§() : §'H§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§<!9§.§1Z§ == null)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§<!9§);
                           §§push(§§findproperty(§'H§));
                           §§push("m44 vt0, va0, vc0\n");
                           if(_loc2_)
                           {
                              §§push("mov op, vt0\n");
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 §§push("mov vt1, va1\n");
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(_loc1_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§§pop() + "sub vt2.z, vc4.z, vt0.z\n");
                                    §§push("div vt2.z, vt2.z, vc4.z\n");
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop2;
                              }
                              §§push("mul vt2.z, vt2.z, vc4.y\n");
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop());
                           §§push("add vt2.z, vt2.z, vc4.x\n");
                           if(!_loc1_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc1_)
                              {
                                 §§push(§§pop());
                                 if(!_loc1_)
                                 {
                                    §§push("mul vt1.xyz, vt1.xyz, vt2.z\n");
                                    break loop1;
                                 }
                                 break loop2;
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00b6);
                     }
                     §§push("mov v0, vt1");
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        break loop3;
                     }
                     §§goto(addr00bb);
                  }
                  addr00bb:
                  addr00b8:
                  addr00b6:
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     break loop2;
                  }
                  §§pop().§1Z§ = new §§pop().§'H§(§§pop(),"mov oc, v0",PositionColorVertex);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §<!9§.§'%§(§<!9§.§1Z§);
               break;
            }
         }
         return §<!9§.§1Z§;
      }
      
      public static function §^L§() : §'H§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§<!9§.§2k§ == null)
         {
            while(true)
            {
               if(_loc1_)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§<!9§);
                        §§push(§§findproperty(§'H§));
                        §§push("m44 vt0, va0, vc0\n");
                        if(_loc1_)
                        {
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() + "mov op, vt0\n");
                                       if(_loc1_)
                                       {
                                          §§push(§§pop());
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§push("mov vt1, va1\n");
                                          if(_loc2_)
                                          {
                                             break loop4;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc2_)
                                          {
                                             break loop5;
                                          }
                                          §§push(§§pop());
                                          if(_loc2_)
                                          {
                                             break loop2;
                                          }
                                          §§push("sub vt2.z, vc4.z, vt0.z\n");
                                          if(!_loc1_)
                                          {
                                             break loop4;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc2_)
                                          {
                                             break loop3;
                                          }
                                       }
                                       §§push(§§pop() + "div vt2.z, vt2.z, vc4.z\n");
                                       break loop3;
                                    }
                                 }
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + "add vt2.z, vt2.z, vc4.x\n");
                                    if(_loc1_)
                                    {
                                       §§push("mul vt1.xyz, vt1.xyz, vt2.z\n");
                                       if(_loc1_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          break loop6;
                                       }
                                       break loop1;
                                    }
                                    break loop2;
                                 }
                                 break loop6;
                              }
                              §§push(§§pop() + §§pop());
                              break loop5;
                           }
                           §§push(§§pop());
                           §§push("mul vt2.z, vt2.z, vc4.y\n");
                           break loop4;
                        }
                        §§push("mov v0, vt1");
                        if(!_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           break;
                        }
                        break loop1;
                     }
                     §§push(§§pop());
                     §§push("mov oc, v0");
                     break;
                  }
                  §§pop().§2k§ = new §§pop().§'H§(§§pop(),§§pop(),PositionColorVertex);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               §<!9§.§'%§(§<!9§.§2k§,false);
               break;
            }
         }
         return §<!9§.§2k§;
      }
      
      public static function §^!<§(param1:Number = 0, param2:Number = 1) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §<!9§.§#$§ = param1;
         if(_loc4_)
         {
            §§push(§<!9§);
            §§push(param2);
            if(_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§8!7§ = §§pop();
            if(_loc4_)
            {
               §<!9§.§!!3§.dispatchEvent(new Event(Event.CHANGE));
            }
         }
      }
      
      public static function §%!1§(param1:Number = -1) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(§§pop() > 0)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§push(Context3DUtils.§7"§);
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     param1 = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  break loop0;
               }
               §§push(§<!9§.§-!O§);
               break loop0;
            }
            return;
         }
         if(§§pop() == param1)
         {
            if(!_loc3_)
            {
               break loop1;
            }
            addr0072:
            §<!9§.§,Q§.dispatchEvent(new Event(Event.CHANGE));
         }
         else
         {
            §<!9§.§-!O§ = param1;
            if(_loc2_)
            {
               §§goto(addr0072);
            }
         }
      }
      
      public static function §'%§(param1:§'H§, param2:Object = undefined, param3:Object = undefined) : void
      {
         var a11:§'H§;
         var a1:§'H§;
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as Function;
         if(param2 == null)
         {
            param2 = true;
         }
         loop0:
         while(true)
         {
            if(§<!9§.§-!O§ < 0)
            {
               §<!9§.§-!O§ = Context3DUtils.§7"§;
               if(!_loc6_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(param2)
                  {
                     if(!_loc5_)
                     {
                        param1.§"!W§(4,0,§<!9§.§#$§);
                        param1.§"!W§(4,1,§<!9§.§8!7§);
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(param3 == null)
                              {
                                 a1 = param1;
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       param1.§"!W§(4,2,§<!9§.§-!O§);
                                       addr00ec:
                                       if(_loc6_)
                                       {
                                          a11 = param1;
                                       }
                                       break loop0;
                                    }
                                    break loop1;
                                 }
                                 break loop2;
                              }
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           _loc4_ = param3;
                           break;
                        }
                        §<!9§.§!!3§.addEventListener(Event.CHANGE,_loc4_);
                        if(_loc5_)
                        {
                           break loop0;
                        }
                     }
                  }
                  else
                  {
                     param1.§"!W§(4,0,0);
                     param1.§"!W§(4,1,1);
                  }
                  §§goto(addr00ec);
               }
               addr011e:
               §§push(§§pop());
               break;
            }
            _loc4_ = §§pop();
            §<!9§.§,Q§.addEventListener(Event.CHANGE,_loc4_);
            return;
         }
         if(!_loc6_)
         {
            break loop1;
         }
         §§goto(addr011e);
      }
      
      public static function §&v§(param1:§'H§, param2:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         param1.§"!W§(4,0,§<!9§.§#$§);
         if(_loc3_)
         {
            param1.§"!W§(4,1,§<!9§.§8!7§);
         }
      }
      
      public static function §^n§(param1:§'H§, param2:Event) : void
      {
         param1.§"!W§(4,2,§<!9§.§-!O§);
      }
   }
}

