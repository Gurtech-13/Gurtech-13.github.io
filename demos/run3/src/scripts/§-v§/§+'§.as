package §-v§
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §,!W§.§`'§;
   import §-!!§.§&!;§;
   import §2X§.§>N§;
   import §2n§.§7%§;
   import §6!Q§.§<!T§;
   import §6!Q§.§]u§;
   import §6!Q§.§^F§;
   import §<!&§.§=2§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import §[^§.§!A§;
   import §[^§.§+!S§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import com.player03.run3.Currency;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.menu.§#C§;
   import com.player03.run3.save.§2!;§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import nme3D.Context3DUtils;
   import unitsystem.§7o§;
   
   public class §+'§ extends §'!O§
   {
      
      public var §-7§:TextField;
      
      public var §-!%§:§!A§;
      
      public var §?a§:int;
      
      public var §';§:int;
      
      public var §^!5§:Boolean;
      
      public function §+'§()
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               §^!5§ = false;
               if(!_loc4_)
               {
                  break;
               }
            }
            §';§ = 0;
            if(!_loc3_)
            {
               §?a§ = -1;
               if(_loc4_)
               {
                  super(80,80,§&d§.§;`§());
               }
            }
            break;
         }
         var _loc1_:§ 7§ = new §?y§(this);
         var _loc2_:§ 7§ = new §4o§(§&d§.§;`§().§&#§);
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §&d§.§1$§().add(_loc1_,new §@$§(true,0),_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  addEventListener(Event.ENTER_FRAME,§;l§);
                  if(_loc3_)
                  {
                     break loop1;
                  }
               }
               addEventListener(Event.REMOVED_FROM_STAGE,§;l§);
               if(_loc4_)
               {
                  break;
               }
               break loop1;
            }
            addEventListener(MouseEvent.CLICK,§#_§);
            break;
         }
      }
      
      public static function §0!D§(param1:Shape, param2:Number, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc7_:* = 0;
         while(true)
         {
            §§push(Number(Math.random()));
            if(!_loc13_)
            {
               §§push(§§pop() * 3.141592653589793);
               if(!_loc12_)
               {
                  break;
               }
            }
            §§push(§§pop() * 2);
            if(_loc12_)
            {
               break;
            }
            §§goto(addr003b);
         }
         addr003b:
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc12_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            §§push(§!A§.§`!_§);
            §§push(Number(Math.random()));
            if(!_loc13_)
            {
               §§push(§!A§.§`!_§.length);
               if(_loc12_)
               {
                  §§push(int(§§pop()));
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop()[int(§§pop())]);
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            param3 = §§pop();
            break;
         }
         §§push([]);
         if(!_loc13_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!_loc13_)
         {
            while(_loc6_ < 3)
            {
               while(true)
               {
                  §§push(_loc6_);
                  if(!_loc13_)
                  {
                     _loc6_++;
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc7_ = §§pop();
               if(!_loc13_)
               {
                  _loc5_.push(new Point(Number(Math.cos(_loc4_ + 6.283185307179586 * _loc7_ / 3)),Number(Math.sin(_loc4_ + 6.283185307179586 * _loc7_ / 3))));
               }
            }
         }
         var _loc8_:Rectangle = new Rectangle();
         var _loc9_:§ 7§ = new § 6§(_loc8_);
         if(_loc12_)
         {
            §&d§.§1$§().add(_loc9_,new §;!!§(param2,§2u§.LEFT));
         }
         _loc9_ = new § 6§(_loc8_);
         if(_loc12_)
         {
            §&d§.§1$§().add(_loc9_,new §;!!§(param2,§2u§.TOP));
         }
         _loc9_ = new § 6§(_loc8_);
         if(!_loc13_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc9_);
               if(!_loc13_)
               {
                  if(param2 == null)
                  {
                     §§push(new §;R§(true));
                     break;
                  }
               }
               §§push(new §`!W§(true,param2));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         _loc9_ = new § 6§(_loc8_);
         if(_loc12_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc9_);
               if(!_loc13_)
               {
                  if(param2 == null)
                  {
                     §§push(new §;R§(false));
                     break;
                  }
               }
               §§push(new §`!W§(false,param2));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         var _loc10_:Vector.<Point> = Vector.<Point>(_loc5_);
         _loc9_ = new § 6§(_loc8_);
         var _loc11_:§<!T§ = new §<!T§(_loc10_);
         while(true)
         {
            if(!_loc13_)
            {
               _loc11_.fill = §^F§.SOLID(param3);
               if(!_loc12_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(new §?y§(param1),_loc11_,_loc9_);
            break;
         }
      }
      
      public function §'!2§() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = null as Currency;
         var _loc3_:* = null as §2!;§;
         var _loc4_:* = 0;
         var _loc5_:* = null as §2!;§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §2!;§;
         var _loc8_:* = 0;
         var _loc9_:* = null as §2!;§;
         loop0:
         while(true)
         {
            if(!_loc10_)
            {
               if(!§7o§.instance.paused)
               {
                  §§push(Main.instance.tunnel.§<!;§);
                  if(!_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
                  break;
               }
               if(_loc10_)
               {
                  break;
               }
            }
            _loc2_ = Currency.§@!A§();
            _loc3_ = Currency.softEarned;
            if(!_loc10_)
            {
               §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
               if(_loc11_)
               {
                  §§push(int(§§pop()));
               }
               _loc4_ = §§pop();
            }
            _loc5_ = Currency.softBought;
            if(!_loc10_)
            {
               §§push(_loc4_);
               if(_loc11_)
               {
                  §§push(§§pop() + int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc6_ = §§pop();
            }
            _loc7_ = Currency.softSpent;
            if(!_loc10_)
            {
               §§push(_loc6_);
               if(_loc11_)
               {
                  §§push(§§pop() - int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc8_ = §§pop();
            }
            _loc9_ = Currency.softFromOffers;
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(_loc8_);
                  if(_loc11_)
                  {
                     §§push(int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc11_)
                     {
                        break loop1;
                     }
                  }
                  §§push(int(§§pop()));
                  if(_loc11_)
                  {
                     _loc1_ = §§pop();
                     break loop0;
                  }
                  break loop1;
               }
               if(§§pop() != §§pop())
               {
                  if(§7o§.instance.paused)
                  {
                     Actuate.stop(this,null,true);
                  }
                  §?a§ = _loc1_;
                  §-7§.text = Std.string(§?a§);
                  §';§ = 0;
                  if(!_loc10_)
                  {
                     layout.§%X§(new §?y§(§-7§));
                     if(!_loc10_)
                     {
                        §<q§();
                     }
                  }
               }
               return;
            }
            §§push(_loc1_);
            break loop2;
         }
         §§push(§?a§);
         break loop1;
      }
      
      public function §&-§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null as § 7§;
         var _loc3_:* = null as §&d§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc6_)
               {
                  §§push(false);
                  if(§-7§ == null)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() != §^!5§);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  break;
               }
               addr0062:
               if(§§pop())
               {
                  break loop0;
               }
               _loc2_ = new §?y§(§-7§);
               _loc3_ = layout;
               while(true)
               {
                  if(_loc5_)
                  {
                     if(_loc3_ != null)
                     {
                        §§push(_loc3_);
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop2;
                     }
                  }
                  §§push(§&d§.§1$§());
                  break;
               }
               §§pop().add(_loc2_,new §;!!§(64,§2u§.LEFT));
               break loop2;
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr0062);
               §§push(param1);
            }
            §§goto(addr0124);
         }
         _loc2_ = new §?y§(§-7§);
         _loc3_ = layout;
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  if(_loc3_ != null)
                  {
                     §§push(_loc3_);
                     break;
                  }
                  if(!_loc5_)
                  {
                     break loop2;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc2_,§^`§.§ !P§(§2u§.RIGHT));
            if(_loc5_)
            {
               break;
            }
            §§goto(addr0124);
         }
         §<q§();
         addr0124:
         §§push(§§findproperty(§^!5§));
         §§push(param1);
         if(!_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         return §§pop().§^!5§ = §§pop();
      }
      
      public function §<q§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(§-7§ != null)
            {
               var _loc1_:§38§ = layout.scale;
               §§push(§-!%§);
               §§push(x + §-7§.x);
               if(!_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(64);
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(_loc1_.x);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + _loc1_.y);
                                    if(!_loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§push(§§pop() / 2);
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           §§push(32);
                        }
                        §§push(§§pop() * layout.scale.x);
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break;
                  }
               }
               break loop0;
            }
         }
      }
      
      public function §-!$§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = null;
         while(true)
         {
            if(_loc5_)
            {
               if(§-!%§ == null)
               {
                  break;
               }
            }
            §§push(§-!%§.§"8§);
            if(!_loc4_)
            {
               _loc1_ = §§pop();
               if(!_loc4_)
               {
                  Context3DUtils.§"#§.§4w§(§-!%§.model);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §-!%§.model.dispose();
               if(_loc5_)
               {
                  §-!%§ = null;
               }
               break;
            }
            addr00a0:
            var _loc2_:int = §§pop();
            var _loc3_:§38§ = layout.scale;
            §§goto(addr009f);
         }
         §§push(int(§+!S§.§70§.start));
         if(!_loc4_)
         {
            addr009f:
            loop1:
            while(true)
            {
               if(!_loc4_)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§-!%§));
                     §§push(§§findproperty(§!A§));
                     §§push(null);
                     §§push(_loc2_);
                     §§push(0.6);
                     §§push(56);
                     §§push(_loc3_.x);
                     if(_loc5_)
                     {
                        §§push(§§pop() + _loc3_.y);
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        break;
                     }
                     addr00ea:
                     §§pop().§-!%§ = new §§pop().§!A§(§§pop(),§§pop(),§§pop(),§§pop() * §§pop(),_loc1_);
                     if(_loc4_)
                     {
                        break loop1;
                     }
                  }
                  §§goto(addr00ea);
               }
               §-!%§.model.§#"§(false);
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr011f);
            }
            Context3DUtils.§"#§.§&!2§(§-!%§.model);
            addr011f:
            return;
         }
         §§goto(addr00a0);
      }
      
      public function §;l§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as DisplayObject;
         if(_loc5_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        if(§-!%§ == null)
                        {
                           if(_loc5_)
                           {
                              §§goto(addr0039);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc4_)
                              {
                                 if(stage == null)
                                 {
                                    break loop8;
                                 }
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(_loc5_)
                              {
                                 §§push(true);
                                 §§push(true);
                                 if(_loc5_)
                                 {
                                    §§push(§7o§.instance.paused);
                                    if(!_loc4_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§pop();
                                          break;
                                       }
                                    }
                                    addr0092:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          §§push(false);
                                          if(§7%§.§@!A§().stage == null)
                                          {
                                             break loop2;
                                          }
                                          if(!_loc5_)
                                          {
                                             break loop1;
                                          }
                                          §§pop();
                                       }
                                       addr00b9:
                                       §§push(Boolean(§7%§.§@!A§().visible));
                                       break loop2;
                                    }
                                    break loop7;
                                 }
                                 addr0091:
                                 §§goto(addr0092);
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§push(§7o§.instance.level == null);
                           if(_loc5_)
                           {
                              §§goto(addr0091);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr00b9);
                     }
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
                  §§push(Boolean(§§pop()));
                  break loop8;
               }
               §§push(Boolean(§§pop()));
               break loop7;
            }
            var _loc2_:* = §§pop();
            if(_loc5_)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     §§push(§';§);
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 break loop3;
                              }
                              §§push(§§findproperty(§';§));
                              §§push(§';§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              §§pop().§';§ = §§pop();
                              §§push(§';§);
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(24);
                              if(_loc4_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(int(§§pop() % §§pop()));
                           break;
                        }
                     }
                     §§push(12);
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     break;
                  }
                  §§push(false);
                  if(_loc5_)
                  {
                     _loc2_ = Boolean(§§pop());
                     break;
                  }
                  §§goto(addr018c);
               }
               addr018c:
               §§push(_loc2_);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     _loc3_ = parent;
                     if(!_loc4_)
                     {
                        while(_loc3_ != null)
                        {
                           §§push(!_loc3_.visible);
                           if(!_loc4_)
                           {
                              if(!§§pop())
                              {
                                 _loc3_ = _loc3_.parent;
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(false);
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           _loc2_ = §§pop();
                           break;
                        }
                     }
                  }
                  §§push(§-!%§.model.visible);
               }
               while(true)
               {
                  if(§§pop() != _loc2_)
                  {
                     §-!%§.model.§#"§(_loc2_);
                     if(_loc2_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        §<q§();
                     }
                  }
                  visible = _loc2_;
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     §-!%§.display(§7o§.instance.§ [§);
                     break;
                  }
               }
               §'!2§();
               return;
            }
            return;
         }
         addr0039:
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(Main.instance.level == null)
         {
            if(!_loc2_)
            {
               §]u§.§@!A§().§5B§(§#C§.§@!A§());
            }
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as § 7§;
         if(_loc6_)
         {
            §-7§ = §&!;§.§9Q§(16777215,32);
         }
         var _loc1_:TextField = §-7§;
         var _loc2_:* = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
            if(_loc6_)
            {
               break;
            }
            §§goto(addr0089);
         }
         while(true)
         {
            if(§^!5§)
            {
               addr0089:
               _loc3_ = new §?y§(§-7§);
               if(_loc7_)
               {
                  break;
               }
               §&d§.§1$§().add(_loc3_,§^`§.§ !P§(§2u§.RIGHT));
               if(!_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc3_ = new §?y§(§-7§);
               if(!_loc7_)
               {
                  §&d§.§1$§().add(_loc3_,new §;!!§(64,§2u§.LEFT));
               }
            }
            addChild(§-7§);
            break;
         }
         §§push(§-!$§);
         if(!_loc7_)
         {
            §§push(§§pop());
            if(_loc6_)
            {
               §§push(§§pop());
            }
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc4_)));
               if(!_loc6_)
               {
                  break;
               }
            }
            _loc4_();
            break;
         }
         var _loc5_:Shape = new Shape();
         if(_loc6_)
         {
            §<!T§.fillRect(_loc5_,§^F§.INVISIBLE,null,null,null,new §?y§(§-7§));
            while(true)
            {
               if(!_loc7_)
               {
                  addChildAt(_loc5_,0);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §'!2§();
               break;
            }
         }
      }
   }
}

