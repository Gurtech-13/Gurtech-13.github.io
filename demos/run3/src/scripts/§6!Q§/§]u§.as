package §6!Q§
{
   import §!!=§.§"C§;
   import §"!M§.§9!5§;
   import §"!M§.§[0§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §+!4§.§3!O§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §1!a§.§<!-§;
   import §2X§.§>N§;
   import §2n§.§>!!§;
   import §=w§.§,D§;
   import §=w§.§@[§;
   import §>T§.§[C§;
   import §^!0§.§%2§;
   import §^!0§.§7P§;
   import §`_§.§^s§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§>!6§;
   import com.player03.run3.save.§]k§;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class §]u§ extends §[k§ implements §+<§, §@[§
   {
      
      public static var instance:§]u§;
      
      public static var §1!_§:Number = 0.6;
      
      public static var §?M§:Number = 0.35;
      
      public static var §7r§:Number = 0.12;
      
      public static var §%T§:Number = 0.22;
      
      public var §5!@§:Boolean;
      
      public var §4R§:Boolean;
      
      public var §>_§:Number;
      
      public var §#!I§:§>!!§;
      
      public var options:§&!9§;
      
      public var §<U§:Vector.<DisplayObject>;
      
      public var §=U§:Vector.<Number>;
      
      public var §;!§:Vector.<Number>;
      
      public var §?=§:§<!_§;
      
      public var §-L§:Vector.<Boolean>;
      
      public var §3!1§:Boolean;
      
      public var §]]§:§]$§;
      
      public var blockingOverlays:Vector.<DisplayObject>;
      
      public function §]u§()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §3!1§ = false;
         §4R§ = false;
         blockingOverlays = new Vector.<DisplayObject>();
         §=U§ = new Vector.<Number>();
         §;!§ = new Vector.<Number>();
         §<U§ = new Vector.<DisplayObject>();
         while(true)
         {
            if(_loc2_)
            {
               §-L§ = new Vector.<Boolean>();
               if(!_loc2_)
               {
                  break;
               }
            }
            super();
            break;
         }
         visible = false;
         var _loc1_:Stage = Lib.current.stage;
         while(true)
         {
            if(!_loc3_)
            {
               _loc1_.addEventListener(MouseEvent.CLICK,§#_§);
               if(_loc3_)
               {
                  break;
               }
               §§push(§6!]§);
               if(!_loc3_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §^,§(null);
            break;
         }
      }
      
      public static function §@!A§() : §]u§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §]u§;
         if(_loc3_)
         {
            if(§]u§.instance != null)
            {
               return §]u§.instance;
            }
         }
         return §]u§.instance = new §]u§();
      }
      
      public static function §@!4§() : §]u§
      {
         return §]u§.§@!A§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:* = null as DisplayObject;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc6_:* = null as §3!I§;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         while(true)
         {
            loop2:
            while(true)
            {
               loop39:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        §§push(false);
                        if(!_loc10_)
                        {
                           break;
                        }
                        if(!§4R§)
                        {
                           break loop39;
                        }
                        if(!_loc10_)
                        {
                           break loop2;
                        }
                        §§pop();
                        if(_loc9_)
                        {
                           continue loop3;
                        }
                     }
                     §§push(§7o§.instance.mouseDown);
                     if(_loc10_)
                     {
                        break loop2;
                     }
                     break;
                  }
                  §§goto(addr006b);
               }
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     continue loop3;
                  }
                  continue loop15;
               }
               §§goto(addr0084);
            }
            §§push(!§§pop());
            if(!_loc9_)
            {
               addr006b:
               §§push(Boolean(§§pop()));
            }
            break loop39;
         }
         §4R§ = false;
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  addr0084:
                  if(int(blockingOverlays.length) <= 0)
                  {
                     break;
                  }
                  if(_loc9_)
                  {
                     continue loop15;
                  }
               }
               while(true)
               {
                  §§push(§§findproperty(§>_§));
                  §§push(§>_§);
                  if(_loc10_)
                  {
                     §§push(§§pop() + param1);
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§>_§ = §§pop();
               continue loop15;
            }
            while(true)
            {
               §§push(§=B§);
               §§push(int(§<U§.length));
               if(_loc10_)
               {
                  §§push(1);
                  if(!_loc10_)
                  {
                     break;
                  }
                  §§push(§§pop() - §§pop());
               }
               §§push(-1);
               break;
            }
            var _loc5_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
            while(true)
            {
               if(_loc10_)
               {
                  loop0:
                  while(_loc5_.§#1§ != _loc5_.end)
                  {
                     _loc6_ = _loc5_;
                     if(_loc10_)
                     {
                        loop32:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(_loc6_.§#1§);
                              if(!_loc9_)
                              {
                                 §§push(_loc5_.§['§);
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc9_)
                                 {
                                    break loop32;
                                 }
                              }
                              §§push(int(§§pop()));
                              if(_loc10_)
                              {
                                 var _temp_2:* = §§pop();
                                 §§push(_temp_2);
                                 §§push(_temp_2);
                                 break;
                              }
                              break loop32;
                           }
                           _loc8_ = §§pop();
                           break;
                        }
                        §§pop().§#1§ = §§pop();
                        if(_loc10_)
                        {
                           §§push(_loc8_);
                           if(!_loc9_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc7_ = §§pop();
                        }
                     }
                     _loc2_ = §<U§[_loc7_];
                     loop34:
                     while(true)
                     {
                        loop35:
                        while(true)
                        {
                           loop36:
                           while(true)
                           {
                              loop37:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(_loc2_ is §@[§);
                                       if(_loc10_)
                                       {
                                          _loc3_ = §§pop();
                                          §§push(false);
                                          §§push(_loc3_);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                §§pop();
                                                if(!_loc10_)
                                                {
                                                   break loop37;
                                                }
                                                §§push(_loc2_ is §,D§);
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc10_)
                                          {
                                             break loop36;
                                          }
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc10_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(_loc3_);
                                       if(!_loc10_)
                                       {
                                          break loop35;
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(!_loc2_.visible);
                                          break loop34;
                                       }
                                    }
                                    _loc2_.update(param1);
                                    if(!_loc9_)
                                    {
                                       break loop37;
                                    }
                                    §§goto(addr04aa);
                                 }
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(false);
                                       break loop36;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr04c3);
                              }
                              §§push(true);
                              §§push(!_loc2_.visible);
                              if(!_loc9_)
                              {
                                 break loop38;
                              }
                              §§goto(addr049f);
                           }
                           addr049f:
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr04bb);
                        }
                        §§pop();
                        if(!_loc9_)
                        {
                           addr04bb:
                           addr04aa:
                           §§push(_loc2_.§=!V§());
                           if(!_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc10_)
                           {
                              break;
                           }
                           addr04c3:
                           if(§§pop())
                           {
                              §<h§(_loc2_);
                           }
                           continue loop0;
                        }
                        §§goto(addr04db);
                     }
                     if(§§pop())
                     {
                        addr04db:
                        §<h§(_loc2_);
                     }
                  }
                  if(_loc9_)
                  {
                     break;
                  }
               }
               if(Main.instance.tunnel == null)
               {
                  if(_loc10_)
                  {
                     return;
                  }
               }
               else
               {
                  §?=§.update(param1);
                  if(_loc9_)
                  {
                     break;
                  }
               }
               §]]§.update(param1);
               if(!_loc9_)
               {
                  break;
               }
               §§goto(addr0544);
            }
            options.update(param1);
            addr0544:
            return;
         }
         _loc2_ = blockingOverlays[0];
         loop5:
         while(true)
         {
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        §§push(_loc2_ is §@[§);
                        if(_loc10_)
                        {
                           _loc3_ = Boolean(§§pop());
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(false);
                           if(_loc10_)
                           {
                              §§push(_loc3_);
                              if(!_loc10_)
                              {
                                 continue loop17;
                              }
                              if(§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    break loop8;
                                 }
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    continue loop10;
                                 }
                                 §§push(_loc2_ is §,D§);
                                 if(!_loc10_)
                                 {
                                    break loop5;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        _loc4_ = Boolean(§§pop());
                        if(_loc3_)
                        {
                           if(_loc10_)
                           {
                              _loc2_.update(param1);
                              loop27:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    if(_loc10_)
                                    {
                                       §§push(!_loc2_.visible);
                                       if(!_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             break;
                                          }
                                          §§pop();
                                          if(_loc9_)
                                          {
                                             break loop16;
                                          }
                                          §§push(false);
                                          if(!_loc4_)
                                          {
                                             break loop27;
                                          }
                                          if(_loc9_)
                                          {
                                             §§goto(addr0317);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr020b);
                                       }
                                    }
                                    §§pop();
                                    §§push(_loc2_.§=!V§());
                                    if(_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc10_)
                                       {
                                          break loop27;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr0370);
                                    }
                                    §§goto(addr0372);
                                 }
                                 if(§§pop())
                                 {
                                    §4P§();
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop28;
                           }
                           continue loop10;
                        }
                        if(!_loc2_.visible)
                        {
                           §4P§();
                           if(!_loc10_)
                           {
                              §§goto(addr02b6);
                           }
                        }
                        §§push(false);
                        §§push(false);
                        if(!_loc9_)
                        {
                           continue loop17;
                        }
                        continue loop25;
                     }
                     §§goto(addr0344);
                  }
                  loop17:
                  while(true)
                  {
                     loop18:
                     while(true)
                     {
                        §§push(false);
                        if(_loc10_)
                        {
                           loop19:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc10_)
                                 {
                                    if(_loc2_.parent == null)
                                    {
                                       break;
                                    }
                                    if(_loc9_)
                                    {
                                       break loop19;
                                    }
                                 }
                                 §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc10_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc10_)
                                       {
                                          break loop19;
                                       }
                                    }
                                    break;
                                 }
                                 break loop17;
                              }
                              if(!§§pop())
                              {
                                 break loop18;
                              }
                              if(!_loc10_)
                              {
                                 break loop18;
                              }
                              §§pop();
                              §§push(§3!1§);
                              if(!_loc10_)
                              {
                                 break loop17;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop20;
                        }
                        §§push(!§§pop());
                        if(!_loc9_)
                        {
                           break loop17;
                        }
                        break;
                     }
                     loop21:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(§7o§.instance.§79§.§,h§("unpause"));
                              if(_loc9_)
                              {
                                 break loop21;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           loop23:
                           while(true)
                           {
                              loop24:
                              while(true)
                              {
                                 loop25:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          §§push(§7o§.instance.§79§.§5>§("unpause"));
                                          if(_loc9_)
                                          {
                                             break loop25;
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc9_)
                                          {
                                             §§push(0.22);
                                             if(!_loc10_)
                                             {
                                                break loop23;
                                             }
                                             §§push(§§pop() < §§pop());
                                             if(_loc9_)
                                             {
                                                break loop5;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          else
                                          {
                                             §§goto(addr0257);
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          break loop24;
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr0371);
                                 }
                                 §§goto(addr0325);
                              }
                              §§goto(addr02da);
                           }
                           §§goto(addr0337);
                        }
                        §§goto(addr0338);
                     }
                     §§goto(addr02dc);
                  }
                  §§push(Boolean(§§pop()));
                  break loop18;
               }
               §§goto(addr0361);
            }
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  while(true)
                  {
                     §§push(§>_§);
                     if(_loc10_)
                     {
                        addr0257:
                        §§push(§=U§[0]);
                        if(_loc10_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc10_)
                           {
                              break loop10;
                           }
                        }
                        if(§§pop() >= §§pop())
                        {
                           §4P§();
                           §>_§ = 0.35;
                        }
                        else
                        {
                           §§push(§7o§.instance.§79§.§+l§("unpause"));
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc9_)
                           {
                              break loop5;
                           }
                           if(§§pop())
                           {
                              addr02b6:
                              while(true)
                              {
                                 §§push(§§findproperty(§>_§));
                                 §§push(§>_§);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() + 0.12);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              §§pop().§>_§ = §§pop();
                              if(!_loc10_)
                              {
                                 break loop4;
                              }
                           }
                        }
                        addr02dc:
                        addr02da:
                        loop13:
                        while(true)
                        {
                           §§push(false);
                           §§push(false);
                           if(_loc2_.parent != null)
                           {
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    if(_loc9_)
                                    {
                                       break loop13;
                                    }
                                    §§push(§;!§[0]);
                                    if(!_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§push(§§pop() > 0);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           break loop5;
                        }
                        addr0317:
                        §§pop();
                        if(!_loc10_)
                        {
                           break loop9;
                        }
                        §§push(§>_§);
                     }
                     addr0325:
                     §§push(§;!§[0]);
                     if(_loc10_)
                     {
                        break loop10;
                     }
                     §§goto(addr0337);
                  }
                  §§goto(addr0371);
               }
               addr0337:
               addr0338:
               §§push(§§pop() >= Number(§§pop()));
               break loop5;
            }
            §§goto(addr0362);
         }
         if(§§pop())
         {
            §4P§();
         }
         addr0344:
         §§push(false);
         if(!_loc9_)
         {
            if(int(blockingOverlays.length) > 0)
            {
               while(true)
               {
                  if(!_loc9_)
                  {
                     addr0361:
                     §§pop();
                     addr0362:
                     §§push(§7o§.instance.paused);
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  addr0370:
                  §§push(!§§pop());
                  break;
               }
               addr0371:
            }
         }
         addr0372:
         if(§§pop())
         {
            §7o§.instance.§+D§(true);
            Mouse.hide();
            §5!@§ = false;
         }
         break loop4;
      }
      
      public function § d§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         addChildAt(blockingOverlays[0],numChildren - int(§<U§.length));
         loop0:
         while(true)
         {
            if(_loc1_)
            {
               blockingOverlays[0].visible = true;
               if(_loc1_)
               {
                  visible = true;
               }
               §>_§ = 0;
               if(_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(blockingOverlays[0] is §@[§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     blockingOverlays[0].reset();
                     if(int(blockingOverlays.length) == 0)
                     {
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        break;
                     }
                  }
                  §§push(§7o§.instance.mouseDown);
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §4R§ = true;
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
               }
               §7o§.instance.§+D§(true);
               break;
            }
            return;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §?=§.reset();
            while(true)
            {
               if(_loc2_)
               {
                  options.reset();
                  if(!_loc1_)
                  {
                     §]]§.reset();
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
               §#!I§.visible = false;
               break;
            }
         }
      }
      
      public function §<h§(param1:DisplayObject) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(int(§<U§.indexOf(param1)));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_ >= 0)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     removeChild(param1);
                     if(!_loc4_)
                     {
                        §<U§.splice(_loc2_,1);
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                  }
                  §-L§.splice(_loc2_,1);
                  if(_loc3_)
                  {
                     §3!1§ = int(§-L§.indexOf(true)) >= 0;
                  }
                  break;
               }
            }
         }
      }
      
      public function §4P§() : DisplayObject
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:DisplayObject = blockingOverlays.shift();
         while(true)
         {
            if(_loc4_)
            {
               §=U§.shift();
               if(!_loc4_)
               {
                  break;
               }
            }
            §;!§.shift();
            break;
         }
         §§push(int(blockingOverlays.length));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_ != null)
            {
               _loc1_.visible = false;
               if(_loc1_.parent != null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  removeChild(_loc1_);
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(false);
                  if(_loc4_)
                  {
                     while(true)
                     {
                        if(_loc2_ == 0)
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              §§push(int(blockingOverlays.length));
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              §§push(0);
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                              §§push(§§pop() > §§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     §§push(int(blockingOverlays.length));
                     break;
                  }
                  §§goto(addr0125);
               }
               §§push(0);
               break;
            }
            if(§§pop() == §§pop())
            {
               options.visible = true;
               §7o§.instance.§+D§(§5!@§);
               if(Main.instance.level == null)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            else
            {
               § d§();
            }
            §§goto(addr0125);
         }
         visible = false;
         addr0125:
         return _loc1_;
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
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
                     loop4:
                     while(true)
                     {
                        §§push(§4R§);
                        if(!_loc2_)
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §4R§ = false;
                                       if(!_loc2_)
                                       {
                                          break loop2;
                                       }
                                       addr00c5:
                                       §§push(§>_§);
                                       if(_loc2_)
                                       {
                                          break loop3;
                                       }
                                       §§push(§=U§[0]);
                                       if(_loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(§§findproperty(§>_§));
                                             §§push(§>_§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() + 0.12);
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§pop().§>_§ = §§pop();
                                          break loop2;
                                       }
                                       if(_loc2_)
                                       {
                                          break loop2;
                                       }
                                       §4P§();
                                       if(!_loc3_)
                                       {
                                          break loop1;
                                       }
                                       §§push(true);
                                       if(!_loc3_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    else
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc2_)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(_loc3_)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            if(_loc3_)
                                                            {
                                                               if(!visible)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break loop12;
                                                               }
                                                            }
                                                            §§pop();
                                                            if(_loc2_)
                                                            {
                                                               break loop10;
                                                            }
                                                            §§push(§3!1§);
                                                            if(!_loc2_)
                                                            {
                                                               break loop12;
                                                            }
                                                            §§goto(addr0070);
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break loop11;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            break loop10;
                                                         }
                                                      }
                                                      §§push(!§§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr0070:
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      break loop13;
                                                   }
                                                   §§pop();
                                                   §§push(int(blockingOverlays.length));
                                                   if(!_loc2_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc3_)
                                                         {
                                                            break loop10;
                                                         }
                                                         break;
                                                      }
                                                      break loop6;
                                                   }
                                                   break loop7;
                                                }
                                                if(!§§pop())
                                                {
                                                   break loop9;
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break loop11;
                                          }
                                          §§pop();
                                          §§push(!(blockingOverlays[0] is §,D§));
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          break loop2;
                                       }
                                       §§goto(addr00c5);
                                    }
                                    §§push(int(§;!§.length));
                                    break;
                                 }
                                 §§push(0);
                                 break;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                              break loop4;
                           }
                        }
                        break loop5;
                     }
                     §§goto(addr0135);
                  }
                  §§goto(addr0131);
               }
               §§goto(addr0161);
            }
            addr0131:
            §§push(§;!§[0]);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            §§push(§§pop() <= 0);
            break;
         }
         addr0135:
         if(Boolean(§§pop()))
         {
            §>_§ = 0.35;
         }
         addr0161:
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §#!I§ = new §>!!§();
         if(!_loc1_)
         {
            §]]§ = new §]$§();
            addChild(§]]§);
            options = new §&!9§();
         }
         addChild(options);
         if(_loc2_)
         {
            §?=§ = new §<!_§();
            addChild(§?=§);
         }
      }
      
      public function §,!@§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as DisplayObject;
         loop2:
         while(true)
         {
            if(!_loc5_)
            {
               loop0:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc4_)
                     {
                        if(!visible)
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§pop();
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §§push(int(blockingOverlays.length));
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        §§push(§§pop() > 0);
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  §4P§();
               }
            }
            break loop0;
         }
         var _loc1_:int = §§pop();
         var _loc2_:Vector.<DisplayObject> = §<U§;
         while(true)
         {
            if(_loc4_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(_loc4_)
                  {
                     _loc1_++;
                     if(_loc4_)
                     {
                        removeChild(_loc3_);
                     }
                  }
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            §<U§.length = 0;
            if(_loc4_)
            {
               break;
            }
            §§goto(addr00fe);
         }
         §-L§.length = 0;
         if(_loc4_)
         {
            §3!1§ = false;
         }
         addr00fe:
      }
      
      public function §3,§(param1:DisplayObject, param2:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        if(param2 == null)
                        {
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           §§push(false);
                           if(_loc3_)
                           {
                              break;
                           }
                           param2 = §§pop();
                        }
                        §<U§.push(param1);
                        §-L§.push(param2);
                        addChild(param1);
                        if(!_loc3_)
                        {
                           §§push(§3!1§);
                           if(_loc4_)
                           {
                              break;
                           }
                           break loop2;
                        }
                        break loop0;
                     }
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        §3!1§ = param2;
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(param1 is §@[§);
                  break;
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               break loop0;
            }
            param1.reset();
            break;
         }
      }
      
      public function §5B§(param1:DisplayObject, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  if(param2 == null)
                  {
                     if(!_loc7_)
                     {
                        break loop0;
                     }
                     param2 = false;
                  }
                  if(param3 != null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               param3 = 0.6;
               break;
            }
            if(param4 == null)
            {
               break;
            }
            §§goto(addr0051);
         }
         §§push(0);
         if(!_loc6_)
         {
            param4 = §§pop();
            addr0051:
            §§push(int(blockingOverlays.indexOf(param1)));
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           break loop7;
                        }
                        if(!_loc7_)
                        {
                           break loop3;
                        }
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           break loop2;
                        }
                     }
                     §§push(0);
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr0108);
                  }
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           § d§();
                           if(!_loc6_)
                           {
                              return;
                           }
                           §§goto(addr0139);
                        }
                        else
                        {
                           blockingOverlays.splice(_loc5_,1);
                           if(!_loc6_)
                           {
                              §=U§.splice(_loc5_,1);
                              if(!_loc6_)
                              {
                                 §;!§.splice(_loc5_,1);
                                 break loop7;
                              }
                              §§goto(addr0188);
                           }
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr01ba);
                  }
                  §§goto(addr015d);
               }
               param1.visible = false;
               if(param2)
               {
                  §§push(int(blockingOverlays.length));
                  break loop2;
               }
               blockingOverlays.push(param1);
               §§goto(addr0188);
            }
            §;!§.unshift(param4);
            §§goto(addr019d);
         }
         addr0108:
         while(true)
         {
            if(§§pop() > 0)
            {
               if(!_loc7_)
               {
                  addr0188:
                  §=U§.push(param3);
                  §;!§.push(param4);
                  addr019d:
                  options.visible = false;
                  §5!@§ = §7o§.instance.paused;
                  if(!_loc6_)
                  {
                     addr01ba:
                     §7o§.instance.§+D§(true);
                     while(true)
                     {
                        §§push(true);
                        if(_loc7_)
                        {
                           if(int(blockingOverlays.length) != 1)
                           {
                              if(!_loc6_)
                              {
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(param2));
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                     }
                     addr0203:
                     § d§();
                  }
                  §§goto(addr020a);
               }
               blockingOverlays[0].visible = false;
               if(blockingOverlays[0].parent != null)
               {
                  addr0139:
                  removeChild(blockingOverlays[0]);
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            addr0152:
            blockingOverlays.unshift(param1);
            break;
         }
         addr015d:
         §=U§.unshift(param3);
         while(true)
         {
            if(_loc7_)
            {
               break loop3;
            }
            §§goto(addr0203);
         }
         addr020a:
      }
   }
}

