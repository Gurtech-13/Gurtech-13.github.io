package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §!]§.§[!6§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §6!Q§.§"q§;
   import §6!Q§.§'!E§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import com.player03.analytics.base.AnalyticsEvent;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.purchase.PurchaseManager;
   import com.player03.run3.save.§2!;§;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.Timer;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.AdvancedSound;
   import motion.actuators.TransformActuator;
   import nme3D.Scene3D;
   import nme3D.Context3DUtils;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §#C§ extends §'!O§ implements §3!!§, §@[§
   {
      
      public static var init__:Boolean;
      
      public static var §?n§:Vector.<int>;
      
      public static var §5!Q§:Vector.<String>;
      
      public static var § Y§:Vector.<String>;
      
      public static var instance:§#C§;
      
      public var §9!;§:Number;
      
      public var §0m§:int;
      
      public var §&j§:Vector.<§+"§>;
      
      public var §!!D§:Number;
      
      public var §'i§:TextField;
      
      public var §#!0§:int;
      
      public var § !!§:int;
      
      public function §#C§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§§findproperty(§9!;§));
         §§push(2);
         if(_loc1_)
         {
            §§push(Number(§§pop()));
         }
         §§pop().§9!;§ = §§pop();
         if(_loc1_)
         {
            §0m§ = 0;
            while(true)
            {
               if(!_loc2_)
               {
                  §!!D§ = 0;
                  §#!0§ = 0;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               § !!§ = 0;
               break;
            }
            super(null,null,§&d§.§;`§());
            §§push(GlobalEventManager);
            §§push("PURCHASE_MANAGER_GOT_INVENTORY");
            §§push(§<4§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().addEventListener(§§pop(),§§pop());
            if(_loc1_)
            {
               §§push(GlobalEventManager);
               §§push("PURCHASE_MANAGER_PURCHASE_FINISHED");
               §§push(§;!Q§);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
            }
         }
      }
      
      public static function §`?§(param1:int) : int
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
               loop3:
               while(true)
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(2);
                        if(!_loc2_)
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 addr005c:
                                 §§push(1000);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                    break loop3;
                                 }
                                 break loop1;
                              }
                              break loop0;
                           }
                           §§push(param1);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(1000);
                           if(!_loc3_)
                           {
                              §§goto(addr0081);
                           }
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     return §§pop();
                  }
                  §§goto(addr005c);
               }
               return §§pop();
            }
            §§push(§§pop() + §§pop());
            break loop3;
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(3);
               if(_loc2_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
                  break loop1;
               }
            }
            addr0081:
            §§push(100);
            break;
         }
         §§push(§§pop() * §§pop());
         break loop1;
      }
      
      public static function §4!!§(param1:int) : String
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
                  §§push("com_kongregate_web_run_t");
                  if(param1 < 10)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push("0");
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     addr0046:
                     §§push(§§pop() + §§pop());
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§push("");
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                     §§push(§§pop() + param1);
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §§push("");
                     if(!_loc3_)
                     {
                        §§goto(addr0046);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     break loop1;
                  }
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr0085);
               }
               §§push("_soft");
               break loop0;
            }
            addr0085:
            return §§pop();
         }
         §§push(§§pop() + §§pop());
         break loop1;
      }
      
      public static function §#!E§(param1:Event) : void
      {
         §9'§.§@!A§().§?!;§.§#!E§();
      }
      
      public static function §@!A§() : §#C§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §#C§;
         if(!_loc3_)
         {
            if(§#C§.instance != null)
            {
               return §#C§.instance;
            }
         }
         return §#C§.instance = new §#C§();
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §§push(§§findproperty(§9!;§));
               §§push(§9!;§);
               if(_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§9!;§ = §§pop();
               if(§9!;§ > 0)
               {
                  break;
               }
               §<4§();
            }
            if(§0m§ > 0)
            {
               if(_loc2_)
               {
                  §§push(§§findproperty(§0m§));
                  §§push(§0m§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§pop().§0m§ = §§pop();
                  if(_loc2_)
                  {
                     §9!;§ = 2;
                     §9'§.§@!A§().§?!;§.§ !<§();
                     if(_loc2_)
                     {
                     }
                  }
               }
               break;
            }
            §9!;§ = 120;
            break;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = null as TextField;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  §§push(§9'§.§@!A§().§?!;§.§ G§);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     visible = false;
                     return;
                  }
                  §'i§.text = §#C§.§ Y§[§ !!§];
                  §§push(§§findproperty(§ !!§));
                  §§push(§ !!§);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().§ !!§ = §§pop();
                  §§push(§ !!§);
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(§§pop() < int(§#C§.§ Y§.length))
                  {
                     break loop1;
                  }
                  if(!_loc5_)
                  {
                     break loop1;
                  }
               }
               § !!§ = 0;
               break loop1;
            }
            var _loc1_:* = §§pop();
            §§push(§#C§.§?n§.length);
            if(_loc5_)
            {
               §§push(int(§§pop()));
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            while(true)
            {
               if(!_loc6_)
               {
                  while(_loc1_ < _loc2_)
                  {
                     §§push(_loc1_);
                     if(_loc5_)
                     {
                        _loc1_++;
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                     _loc4_ = §&j§[_loc3_].§-7§;
                     if(!_loc6_)
                     {
                        _loc4_.text = Std.string(§#C§.§?n§[_loc3_] * 10) + " Kreds";
                     }
                  }
                  if(_loc5_)
                  {
                     §§push(§§findproperty(§!!D§));
                     §§push(Timer.stamp());
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§!!D§ = §§pop();
                     if(_loc6_)
                     {
                        break;
                     }
                     §§push(§9'§.§@!A§().§?!;§.§ G§);
                     if(_loc5_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        layout.apply();
                        break;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
               }
               visible = false;
               if(_loc5_)
               {
               }
               break;
            }
            return;
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         break loop2;
      }
      
      public function §2!Z§(param1:int, param2:Event) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:* = null as String;
         var _loc4_:* = null as AnalyticsEvent;
         var _loc5_:* = null;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(§9'§.§@!A§().§?!;§.§0t§());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc7_)
                           {
                              §§push(!§§pop());
                           }
                        }
                        if(§§pop())
                        {
                           §§push(int(§'!E§.§@!A§().§6a§.length));
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc6_)
                           {
                              break loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              break loop1;
                           }
                           if(!_loc6_)
                           {
                              §§push(§'!E§.§@!A§());
                              §§push(§#C§.§5!Q§[§#!0§]);
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().§>!W§(§§pop());
                              §§push(§§findproperty(§#!0§));
                              §§push(§#!0§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop().§#!0§ = §§pop();
                              if(!_loc6_)
                              {
                                 addr00b6:
                                 §§push(§#!0§);
                                 break;
                              }
                           }
                        }
                        else
                        {
                           §§push(§#C§.§4!!§(param1));
                           if(_loc7_)
                           {
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc3_ = §§pop();
                           while(true)
                           {
                              §§push(§7o§);
                              §§push("Purchasing item: ");
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + _loc3_);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                           §§pop().§3t§(§§pop(),{
                              "fileName":"PurchaseManager.hx",
                              "lineNumber":49,
                              "className":"com.player03.run3.purchase.PurchaseManager",
                              "methodName":"purchaseItem"
                           });
                           §9'§.§@!A§().§?!;§.purchaseItem(_loc3_);
                           §0m§ = 60;
                           if(_loc7_)
                           {
                              §9!;§ = 5;
                           }
                        }
                        _loc4_ = new AnalyticsEvent("iap_attempts");
                        §§push(§#C§.§`?§(param1));
                        if(_loc7_)
                        {
                           §§push(int(§§pop()));
                        }
                        §§push(§§pop() + " power cells");
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                        }
                        _loc5_ = §§pop();
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              _loc4_.properties["type"] = _loc5_;
                              if(_loc6_)
                              {
                                 break;
                              }
                           }
                           _loc4_.properties["usd_cost"] = param1;
                           break;
                        }
                        §§push(§#C§.§4!!§(param1));
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        _loc5_ = §§pop();
                        if(_loc7_)
                        {
                           _loc4_.properties["product_id"] = _loc5_;
                        }
                        break loop0;
                     }
                     §§goto(addr00b6);
                  }
                  §§push(int(§#C§.§5!Q§.length));
                  break;
               }
               if(§§pop() >= §§pop())
               {
                  if(!_loc6_)
                  {
                     §#!0§ = 0;
                     break;
                  }
                  break loop0;
               }
               break;
            }
            param2.stopImmediatePropagation();
            break;
         }
      }
      
      public function §;!Q§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §'!E§.§@!A§().§>!W§("Your purchase is being processed...");
            if(!_loc1_)
            {
               §<4§();
            }
         }
      }
      
      override public function §^g§() : void
      {
         var _gthis:§#C§;
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as § 7§;
         var _loc7_:* = null as §+"§;
         var _loc8_:* = null as TextField;
         var _loc9_:* = null as Sprite;
         var _loc14_:* = 0;
         if(_loc19_)
         {
            _gthis = this;
         }
         var _loc1_:Number = 32;
         var _loc2_:Number = 30;
         var _loc3_:TextField = §&!;§.§9Q§(0,60,null,"Get more power cells",null,null,null,null,"center");
         _loc4_ = null;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc19_)
               {
                  if(_loc4_ != null)
                  {
                     break;
                  }
                  if(!_loc19_)
                  {
                     break loop1;
                  }
               }
               _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
            break;
         }
         _loc5_ = new §?y§(_loc3_);
         if(!_loc20_)
         {
            §&d§.§1$§().add(_loc5_,new §;!!§(_loc2_,§2u§.TOP));
            if(_loc19_)
            {
               addChild(_loc3_);
               if(!_loc20_)
               {
                  layout.add(new §?y§(this),new §30§(true,1.4),new §?y§(_loc3_));
               }
            }
         }
         _loc5_ = new §?y§(_loc3_);
         if(!_loc20_)
         {
            §&d§.§1$§().add(_loc5_,new §4$§(true,0.5));
         }
         _loc5_ = new §?y§(this);
         _loc6_ = new §4o§(§&d§.§;`§().§&#§);
         while(true)
         {
            if(_loc19_)
            {
               §&d§.§1$§().add(_loc5_,new §4$§(true,0.5),_loc6_);
               if(!_loc19_)
               {
                  break;
               }
            }
            §&j§ = new Vector.<§+"§>();
            break;
         }
         var _loc10_:Sprite = null;
         var _loc11_:Number = 18;
         §§push(0);
         if(!_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:Vector.<int> = §#C§.§?n§;
         if(!_loc20_)
         {
            loop0:
            while(true)
            {
               §§push(_loc12_);
               §§push(_loc13_.length);
               if(!_loc20_)
               {
                  §§push(int(§§pop()));
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc13_[_loc12_]);
               if(!_loc20_)
               {
                  §§push(int(§§pop()));
                  if(_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc14_ = §§pop();
               if(!_loc20_)
               {
                  _loc12_++;
               }
               §§push(§§findproperty(§+"§));
               §§push(global);
               §§push([_loc14_]);
               §§push(§2!Z§);
               if(!_loc20_)
               {
                  §§push(§§pop());
               }
               §§push(§§pop()(§§pop(),null));
               §§push(0);
               §§push(_loc1_);
               §§push(Std);
               §§push(_loc14_);
               if(_loc19_)
               {
                  §§push(§§pop() * 10);
               }
               §§push(§§pop().string(§§pop()));
               if(_loc19_)
               {
                  §§push(§§pop());
               }
               §§push(§§pop() + " Kreds");
               if(_loc19_)
               {
                  §§push(§§pop());
               }
               _loc7_ = new §§pop().§+"§(§§pop(),§§pop(),§§pop(),§§pop());
               if(!_loc20_)
               {
                  §&d§.§1$§().add(new §?y§(_loc7_),new §"q§(11184810,6710886,3.6));
               }
               §§push(§&!;§);
               §§push(0);
               §§push(_loc1_);
               §§push(null);
               §§push(§#C§.§`?§(_loc14_));
               if(!_loc20_)
               {
                  §§push(int(§§pop()));
               }
               §§push(§§pop() + " power cells");
               if(_loc19_)
               {
                  §§push(§§pop());
               }
               _loc8_ = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop());
               _loc4_ = null;
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(_loc19_)
                     {
                        if(_loc4_ != null)
                        {
                           break;
                        }
                        if(!_loc19_)
                        {
                           break loop4;
                        }
                     }
                     _loc4_ = int(Number(_loc8_.defaultTextFormat.size));
                     break;
                  }
                  §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc4_)));
                  break;
               }
               _loc9_ = new Sprite();
               if(_loc19_)
               {
                  _loc9_.addChild(_loc7_);
                  if(!_loc20_)
                  {
                     _loc9_.addChild(_loc8_);
                  }
               }
               _loc5_ = new §?y§(_loc7_);
               _loc6_ = new §?y§(_loc8_);
               if(_loc19_)
               {
                  §&d§.§1$§().add(_loc5_,new §+X§(_loc11_,§2u§.RIGHT),_loc6_);
               }
               _loc5_ = new §?y§(_loc9_);
               while(true)
               {
                  if(!_loc20_)
                  {
                     §&d§.§1$§().add(_loc5_,new §4$§(true,0.5));
                     if(_loc20_)
                     {
                        break;
                     }
                  }
                  if(_loc10_ == null)
                  {
                     break;
                  }
                  addr03fa:
                  _loc5_ = new §?y§(_loc9_);
                  _loc6_ = new §?y§(_loc10_);
                  if(_loc19_)
                  {
                     §&d§.§1$§().add(_loc5_,new §+X§(7,§2u§.BOTTOM),_loc6_);
                  }
                  addChild(_loc9_);
                  if(_loc19_)
                  {
                     addr0408:
                     §&j§.push(_loc7_);
                  }
                  continue loop0;
               }
               _loc5_ = new §?y§(_loc9_);
               _loc6_ = new §?y§(_loc3_);
               while(true)
               {
                  if(_loc19_)
                  {
                     §&d§.§1$§().add(_loc5_,new §+X§(20,§2u§.BOTTOM),_loc6_);
                     if(_loc20_)
                     {
                        break;
                     }
                  }
                  §§goto(addr03fa);
               }
               §§goto(addr0408);
               _loc10_ = _loc9_;
            }
         }
         §§push(§§findproperty(§+"§));
         §§push(§#C§.§#!E§);
         if(!_loc20_)
         {
            §§push(§§pop());
         }
         _loc7_ = new §§pop().§+"§(§§pop(),0,_loc1_,"Free Kreds");
         if(!_loc20_)
         {
            §&d§.§1$§().add(new §?y§(_loc7_),new §"q§(11184810,6710886,3.6));
         }
         _loc5_ = new §?y§(_loc7_);
         if(_loc19_)
         {
            §&d§.§1$§().add(_loc5_,new §4$§(true,0.5));
         }
         _loc5_ = new §?y§(_loc7_);
         _loc6_ = new §?y§(_loc10_);
         while(true)
         {
            if(!_loc20_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(7,§2u§.BOTTOM),_loc6_);
               if(!_loc19_)
               {
                  break;
               }
            }
            addChild(_loc7_);
            break;
         }
         _loc10_ = _loc7_;
         if(_loc19_)
         {
            §'i§ = §&!;§.§9Q§(0,28,null,null,_loc3_.width,null,null,null,"center");
         }
         _loc5_ = new §?y§(§'i§);
         if(!_loc20_)
         {
            §&d§.§1$§().add(_loc5_,new §30§(true,0.95));
         }
         _loc5_ = new §?y§(§'i§);
         if(_loc19_)
         {
            §&d§.§1$§().add(_loc5_,new §4$§(true,0.5));
         }
         _loc5_ = new §?y§(§'i§);
         _loc6_ = new §?y§(_loc10_);
         while(true)
         {
            if(!_loc20_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(20,§2u§.BOTTOM),_loc6_);
               if(!_loc19_)
               {
                  break;
               }
            }
            addChild(§'i§);
            break;
         }
         var _loc15_:Shape = new Shape();
         while(true)
         {
            if(!_loc20_)
            {
               addChildAt(_loc15_,0);
               if(!_loc19_)
               {
                  break;
               }
            }
            §!1§(null,new §?y§(§'i§),_loc2_);
            break;
         }
         _loc5_ = new §?y§(this);
         _loc6_ = new §4o§(§&d§.§;`§().§&#§);
         if(_loc19_)
         {
            §&d§.§1$§().add(_loc5_,new §4$§(false,0.5),_loc6_);
            while(true)
            {
               if(_loc19_)
               {
                  layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
                  {
                     var _temp_1:* = false;
                     var _loc4_:Boolean = true;
                     var _loc5_:Boolean = _temp_1;
                     _gthis.graphics.clear();
                     if(!_loc5_)
                     {
                        _gthis.graphics.beginFill(0,0.33);
                     }
                     §§push(-_gthis.x);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     §§push(-_gthis.y);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     var _loc3_:int = int(Lib.get_current().stage.stageWidth);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           _gthis.graphics.drawRect(_loc1_,_loc2_,_loc3_,Lib.get_current().stage.stageHeight);
                           if(!_loc4_)
                           {
                              break;
                           }
                        }
                        _gthis.graphics.endFill();
                        break;
                     }
                  })));
                  if(!_loc19_)
                  {
                     break;
                  }
               }
               _gthis.graphics.clear();
               if(_loc19_)
               {
                  break;
               }
            }
            _gthis.graphics.beginFill(0,0.33);
         }
         §§push(-_gthis.x);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(-_gthis.y);
         if(_loc19_)
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         if(_loc19_)
         {
            _loc12_ = int(Lib.get_current().stage.stageWidth);
            while(true)
            {
               if(!_loc20_)
               {
                  _gthis.graphics.drawRect(_loc16_,_loc17_,_loc12_,Lib.get_current().stage.stageHeight);
                  if(!_loc19_)
                  {
                     break;
                  }
               }
               _gthis.graphics.endFill();
               break;
            }
         }
         var _loc18_:§<!T§ = new §<!T§(null,20);
         if(_loc19_)
         {
            _loc18_.fill = §^F§.SOLID(16777215);
            if(_loc19_)
            {
               _loc18_.§=M§ = 13421772;
               while(true)
               {
                  if(_loc19_)
                  {
                     _loc18_.§4#§ = 8;
                     if(_loc20_)
                     {
                        break;
                     }
                  }
                  layout.add(new §?y§(_loc15_),_loc18_);
                  break;
               }
            }
         }
      }
      
      public function §<4§() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<int>;
         var _loc6_:int = 0;
         var _loc7_:* = null as §2!;§;
         var _loc8_:* = null as §2!;§;
         var _loc9_:* = null as Currency;
         var _loc10_:* = null as §2!;§;
         var _loc11_:* = null as §2!;§;
         while(true)
         {
            if(_loc12_)
            {
               if(!§7o§.instance.§]!7§)
               {
                  break;
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc12_)
                        {
                           while(true)
                           {
                              §§push(0);
                              if(_loc12_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc13_)
                                 {
                                    break loop4;
                                 }
                                 _loc1_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    break loop2;
                                 }
                                 §§push(0);
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              if(_loc12_)
                              {
                                 break;
                              }
                              break loop3;
                           }
                           _loc2_ = §§pop();
                           if(!_loc12_)
                           {
                              break loop2;
                           }
                        }
                        §§push(0);
                        if(_loc12_)
                        {
                           break loop3;
                        }
                        break;
                     }
                     _loc4_ = §§pop();
                     break loop2;
                  }
                  §§push(int(§§pop()));
                  break loop4;
               }
            }
            break loop2;
         }
      }
   }
}

