package §-!!§
{
   import §!!"§.§-m§;
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!!=§.§"C§;
   import §!!X§.§!_§;
   import §!!X§.§`Q§;
   import §#!a§.§4!Y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+!4§.§8!_§;
   import §-d§.§!!-§;
   import layout3d.§>N§;
   import layout3d.TunnelLayout3D;
   import layout3d.Layout3D;
   import scenes.§+Z§;
   import scenes.Cutscenes;
   import scenes.Discoveries;
   import §4!8§.§[!!§;
   import §4n§.Achievements;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import §<&§.§6!>§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>d§.§#l§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import §]N§.§?!H§;
   import stage.§3!J§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§,!,§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.api.DevMessage;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§!!Q§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.menu.§#C§;
   import com.player03.run3.menu.§'Q§;
   import com.player03.run3.menu.§;!G§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§>!6§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.§=!U§;
   import haxe.Timer;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import nme3D.Context3DUtils;
   import unitsystem.§7o§;
   
   public class §&l§ extends §?W§ implements §@[§
   {
      
      public var §6>§:Boolean;
      
      public var §5K§:Number;
      
      public var §8C§:Boolean;
      
      public var §9d§:Number;
      
      public var § !S§:Boolean;
      
      public var §7l§:Rectangle;
      
      public var §=x§:IEasing;
      
      public var §4`§:Number;
      
      public var §#x§:Number;
      
      public var §>!%§:Number;
      
      public var §%"§:Rectangle;
      
      public var §[!Y§:Rectangle;
      
      public var §,2§:Boolean;
      
      public var §@c§:§6!4§;
      
      public var §-s§:§ B§;
      
      public var _cameraY:Number;
      
      public var _cameraX:Number;
      
      public function §&l§(param1:Number, param2:Number, param3:§6!4§ = undefined, param4:Object = undefined, param5:§ B§ = undefined, param6:Boolean = true)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               §,2§ = true;
               §#x§ = 0;
               §>!%§ = 0;
               if(_loc9_)
               {
                  break;
               }
               _cameraY = 0;
               while(true)
               {
                  if(!_loc9_)
                  {
                     _cameraX = 0;
                     if(_loc8_)
                     {
                        §6>§ = false;
                        §8C§ = false;
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                  }
                  §5K§ = 0.5;
                  break;
               }
            }
            §9d§ = 0.5;
            break;
         }
         § !S§ = false;
         super();
         while(true)
         {
            §§push(§^!;§);
            if(_loc8_)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc7_:* = §§pop();
         §&d§.§1$§().§6"§.push(new §#!7§(null,null,new §#!6§(_loc7_)));
         loop3:
         while(true)
         {
            loop4:
            while(true)
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
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              §7l§ = new Rectangle(0,0,param1,param2);
                              if(!_loc9_)
                              {
                                 if(param5 != null)
                                 {
                                    if(_loc9_)
                                    {
                                       break loop7;
                                    }
                                    param5.§]^§ = §?!_§;
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §-s§ = param5;
                                    if(_loc9_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 if(param3 != null)
                                 {
                                    break loop6;
                                 }
                                 if(!_loc8_)
                                 {
                                    break loop5;
                                 }
                                 if(param4 != null)
                                 {
                                    break loop4;
                                 }
                                 if(!_loc8_)
                                 {
                                    break loop3;
                                 }
                              }
                           }
                           param4 = 7;
                           break loop4;
                        }
                        §§goto(addr0169);
                     }
                     §§goto(addr0190);
                  }
                  §§goto(addr014c);
               }
               §§goto(addr01b4);
            }
            param3 = new §>$§(param4);
            addr014c:
            §@c§ = param3;
            if(!_loc9_)
            {
               param3.§]@§ = this;
               §%"§ = new Rectangle();
               §[!Y§ = new Rectangle();
               addr0169:
               if(_loc8_)
               {
                  § !S§ = param6;
                  addr0190:
                  addEventListener(Event.ADDED_TO_STAGE,§[!#§);
                  break;
               }
            }
            break loop5;
         }
         addEventListener(Event.REMOVED_FROM_STAGE,§,j§);
         addr01b4:
      }
      
      public function update(param1:Number) : void
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
                        loop5:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(§@c§ != null)
                              {
                                 §@c§.update(param1);
                                 if(_loc2_)
                                 {
                                    break loop4;
                                 }
                              }
                              §>1§();
                              §§push(§,2§);
                              if(_loc2_)
                              {
                                 break loop3;
                              }
                              if(!§§pop())
                              {
                                 break loop2;
                              }
                              §,2§ = false;
                              while(true)
                              {
                                 §§push(_cameraX);
                                 if(!_loc2_)
                                 {
                                    if(§§pop() < §[!Y§.left)
                                    {
                                       if(_loc3_)
                                       {
                                          _cameraX = §[!Y§.left;
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          break loop0;
                                       }
                                       break loop1;
                                    }
                                    §§push(_cameraX);
                                    if(_loc2_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 if(§§pop() > §[!Y§.right)
                                 {
                                    if(_loc3_)
                                    {
                                       _cameraX = §[!Y§.right;
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    break loop4;
                                 }
                                 break;
                              }
                           }
                           §§push(_cameraY);
                           if(_loc3_)
                           {
                              break;
                           }
                           addr00fc:
                           if(§§pop() > §[!Y§.bottom)
                           {
                              break loop0;
                           }
                           break loop4;
                        }
                        if(§§pop() < §[!Y§.top)
                        {
                           _cameraY = §[!Y§.top;
                           break;
                        }
                        §§goto(addr00fc);
                        §§push(_cameraY);
                     }
                     §§goto(addr011e);
                  }
                  §§goto(addr0177);
               }
               §§push(§7o§.instance.mouseDown);
               if(_loc3_)
               {
                  break loop3;
               }
               addr0177:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     mouseChildren = true;
                  }
               }
               §§goto(addr0187);
            }
            scrollRect = §7l§;
            break loop2;
         }
         _cameraY = §[!Y§.bottom;
         if(_loc3_)
         {
            addr011e:
            §7l§.x = _cameraX - §7l§.width / 2;
            §7l§.y = _cameraY - §7l§.height / 2;
            break loop1;
         }
         addr0187:
      }
      
      override public function set width(param1:Number) : void
      {
         §,2§ = true;
         §7l§.width = int(Math.floor(param1));
      }
      
      override public function set height(param1:Number) : void
      {
         §,2§ = true;
         §7l§.height = int(Math.floor(param1));
      }
      
      public function §<k§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               _cameraY = param1;
               if(_loc3_)
               {
                  break;
               }
               §,2§ = true;
               if(!_loc2_)
               {
                  break;
               }
            }
            Actuate.stop(this);
            break;
         }
         return _cameraY;
      }
      
      public function §+!>§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               _cameraX = param1;
               if(_loc3_)
               {
                  break;
               }
            }
            §,2§ = true;
            if(_loc2_)
            {
               Actuate.stop(this);
            }
            break;
         }
         return _cameraX;
      }
      
      public function §^!;§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §"!E§ = true;
         }
      }
      
      public function §0K§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §,2§ = true;
         }
      }
      
      public function §^!&§(param1:Number, param2:Number, param3:Object = undefined, param4:IEasing = undefined) : GenericActuator
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc5_:* = null as §>$§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc11_)
               {
                  while(true)
                  {
                     if(param3 == null)
                     {
                        if(_loc12_)
                        {
                           break;
                        }
                        §§push(0.5);
                        if(_loc12_)
                        {
                           break loop1;
                        }
                        param3 = §§pop();
                     }
                     if(§@c§ is §>$§)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               _loc5_ = §@c§;
               if(_loc11_)
               {
                  _loc5_.§+v§ = 0;
                  if(_loc11_)
                  {
                     _loc5_.§4@§ = 0;
                  }
               }
               break loop0;
            }
            var _loc6_:* = §§pop();
            var _loc7_:Number = Number(§[!Y§.right);
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(_loc11_)
                     {
                        §§push(param1);
                        if(_loc12_)
                        {
                           break loop4;
                        }
                        §§push(_loc6_);
                        if(!_loc11_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc6_);
                           if(_loc11_)
                           {
                              break loop4;
                           }
                           continue loop6;
                        }
                        if(!_loc11_)
                        {
                           break loop3;
                        }
                     }
                     §§push(param1);
                     if(!_loc12_)
                     {
                        §§push(_loc7_);
                        break;
                     }
                     break loop4;
                  }
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc12_)
                     {
                        param1 = param1;
                        if(_loc11_)
                        {
                        }
                     }
                     break loop3;
                  }
                  param1 = _loc7_;
                  if(_loc11_)
                  {
                  }
                  break loop3;
               }
               param1 = §§pop();
               break;
            }
            var _loc8_:Number = Number(§[!Y§.top);
            var _loc9_:Number = Number(§[!Y§.bottom);
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(param2);
                     §§push(_loc8_);
                     if(_loc11_)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc8_);
                           break;
                        }
                        §§push(param2);
                        if(!_loc11_)
                        {
                           break loop5;
                        }
                        §§push(_loc9_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        §§push(param2);
                        if(!_loc12_)
                        {
                           break loop5;
                        }
                        break;
                     }
                     §§push(_loc9_);
                     if(!_loc11_)
                     {
                        break loop6;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc11_)
                     {
                        break;
                     }
                     param2 = §§pop();
                     §§goto(addr0153);
                  }
                  param2 = §§pop();
                  while(true)
                  {
                     if(_loc11_)
                     {
                        §§goto(addr0153);
                     }
                     §§goto(addr015a);
                  }
                  §§goto(addr015e);
               }
               param3 = §§pop();
               §§goto(addr015e);
            }
            param2 = Number(§§pop());
            addr015e:
            addr0153:
            if(param3 <= 0)
            {
               addr015a:
               §§push(0.001);
               break loop6;
            }
            var _loc10_:GenericActuator = Actuate.tween(this,param3,{
               "_cameraX":param1,
               "_cameraY":param2
            });
            while(true)
            {
               if(!_loc12_)
               {
                  if(param4 == null)
                  {
                     if(§=x§ != null)
                     {
                        if(!_loc12_)
                        {
                           _loc10_.ease(§=x§);
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§goto(addr01e8);
                        }
                     }
                     break;
                  }
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               _loc10_.ease(param4);
               if(_loc12_)
               {
               }
               break;
            }
            §§push(_loc10_);
            §§push(§0K§);
            if(_loc11_)
            {
               §§push(§§pop());
            }
            §§pop().onUpdate(§§pop());
            addr01e8:
            return _loc10_;
         }
         §§push(Number(§[!Y§.left));
         break loop1;
      }
      
      public function reset() : void
      {
      }
      
      public function §,j§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(§ !S§)
         {
            if(!_loc3_)
            {
               removeEventListener(Event.ENTER_FRAME,§;l§);
            }
         }
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,§04§);
         if(_loc2_)
         {
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,§6J§);
         }
         stage.removeEventListener(MouseEvent.MOUSE_UP,§!!?§);
         stage.removeEventListener(MouseEvent.CLICK,§9!-§);
         if(!_loc3_)
         {
            stage.removeEventListener(MouseEvent.MOUSE_WHEEL,§-u§);
         }
      }
      
      public function §-u§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               if(§@c§ == null)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §@c§.§-u§(param1);
            break;
         }
      }
      
      public function §!!?§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               if(§@c§ == null)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §@c§.§!!?§(param1);
            break;
         }
      }
      
      public function §6J§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     if(§@c§ == null)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§pop();
                  if(_loc3_)
                  {
                     §§push(§@c§.§6J§(param1));
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     break;
                  }
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     mouseChildren = false;
                  }
               }
            }
            §§push(Boolean(§§pop()));
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            break loop1;
         }
      }
      
      public function §04§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(§@c§ == null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(§@c§.§04§(param1));
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            §§goto(addr007c);
         }
         mouseChildren = false;
         addr007c:
      }
      
      public function §9!-§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               if(§@c§ == null)
               {
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            §@c§.§9!-§(param1);
            break;
         }
      }
      
      public function §;l§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            if(stage != null)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     §§push(Timer.stamp());
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc2_ = §§pop();
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(§§findproperty(update));
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - §4`§);
                  }
                  §§pop().update(§§pop());
                  if(_loc4_)
                  {
                     §4`§ = _loc2_;
                  }
                  break;
               }
            }
         }
      }
      
      override public function get width() : Number
      {
         return §7l§.width;
      }
      
      override public function get height() : Number
      {
         return §7l§.height;
      }
      
      public function §8?§() : Number
      {
         return §?!_§.width;
      }
      
      public function §]F§() : Number
      {
         return §?!_§.height;
      }
      
      public function §3!D§() : Number
      {
         return _cameraY;
      }
      
      public function §=!9§() : Number
      {
         return _cameraX;
      }
      
      public function §'!Q§() : Rectangle
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rectangle = §[!Y§.clone();
         if(!_loc3_)
         {
            _loc1_.inflate(§7l§.width / 2,§7l§.height / 2);
         }
         return _loc1_;
      }
      
      public function §<d§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(y + §7l§.height / 2);
         if(!_loc2_)
         {
            while(true)
            {
               §§push(_cameraY);
               if(_loc3_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§push(param1);
               }
               §§push(§§pop() + §§pop());
               if(!_loc2_)
               {
                  return Number(§§pop());
               }
               break;
            }
         }
         return §§pop();
      }
      
      public function §'!8§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(x + §7l§.width / 2);
         if(!_loc2_)
         {
            while(true)
            {
               §§push(_cameraX);
               if(_loc3_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§push(param1);
               }
               §§push(§§pop() + §§pop());
               if(_loc3_)
               {
                  return Number(§§pop());
               }
               break;
            }
         }
         return §§pop();
      }
      
      public function §,! §(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(param1);
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(_cameraY);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     §§push(§7l§.height / 2);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§push(§§pop() - y);
               break;
            }
         }
         break loop0;
      }
      
      public function §;C§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(_cameraX);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               addr0054:
               §§push(Number(§§pop()));
               if(!_loc3_)
               {
                  §§push(§7l§.width / 2);
                  break;
               }
               §§push(§§pop() - x);
               break loop0;
            }
            §§push(§§pop() - §§pop());
            if(_loc3_)
            {
               break;
            }
            §§goto(addr0054);
         }
         return §§pop();
      }
      
      public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,§[!#§);
            while(true)
            {
               if(_loc2_)
               {
                  removeEventListener(Event.REMOVED_FROM_STAGE,§,j§);
                  if(_loc1_)
                  {
                     break;
                  }
                  §,j§(null);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               removeChildren();
               break;
            }
         }
      }
      
      public function §>1§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§"!E§);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(_loc2_)
                     {
                        §"!E§ = false;
                        if(§-s§ != null)
                        {
                           §-s§.§`t§();
                           if(_loc3_)
                           {
                              break loop1;
                           }
                        }
                        §%"§.copyFrom(§?!_§.getBounds(§?!_§));
                        §[!Y§.copyFrom(§%"§);
                        §[!Y§.inflate(-§7l§.width / 2,-§7l§.height / 2);
                     }
                     §[!Y§.inflate(§>!%§,§#x§);
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§push(true);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(§[!Y§.width < 0)
                              {
                                 break;
                              }
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                              §§pop();
                           }
                           §§push(§8C§);
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(Number(§[!Y§.left));
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              _loc1_ = §§pop();
                           }
                           §[!Y§.x = _loc1_ + §9d§ * (§[!Y§.right - _loc1_);
                           if(!_loc3_)
                           {
                              §[!Y§.width = 0;
                           }
                        }
                        §§push(true);
                        if(_loc2_)
                        {
                           break;
                        }
                        break loop0;
                     }
                  }
                  break loop3;
               }
               §§goto(addr015b);
            }
            return;
         }
         if(§§pop())
         {
            addr015b:
            _loc1_ = Number(§[!Y§.top);
            §[!Y§.y = _loc1_ + §5K§ * (§[!Y§.bottom - _loc1_);
            §[!Y§.height = 0;
            if(!_loc2_)
            {
               break loop1;
            }
         }
         §,2§ = true;
         break loop1;
      }
      
      public function §[!#§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(§ !S§)
            {
               if(_loc2_)
               {
                  break;
               }
               addEventListener(Event.ENTER_FRAME,§;l§);
               §§push(§§findproperty(§4`§));
               §§push(Timer.stamp());
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§4`§ = §§pop();
            }
            stage.addEventListener(MouseEvent.MOUSE_DOWN,§04§);
            stage.addEventListener(MouseEvent.MOUSE_MOVE,§6J§);
            break;
         }
         stage.addEventListener(MouseEvent.MOUSE_UP,§!!?§);
         if(_loc3_)
         {
            stage.addEventListener(MouseEvent.CLICK,§9!-§);
         }
         stage.addEventListener(MouseEvent.MOUSE_WHEEL,§-u§);
      }
   }
}

