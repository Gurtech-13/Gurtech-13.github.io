package com.player03.run3
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §1^§.Transform;
   import §6!Q§.§'!E§;
   import §<!&§.§%!§;
   import §[^§.§>!3§;
   import §^!0§.§%2§;
   import §`_§.§^s§;
   import com.player03.analytics.base.AnalyticsEvent;
   import com.player03.layout.§ 7§;
   import com.player03.run3.api.§,!,§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import nme3D.model.Model;
   import unitsystem.§7o§;
   
   public class Currency implements §+<§
   {
      
      public static var init__:Boolean;
      
      public static var softEarned:§2!;§;
      
      public static var softFromOffers:§2!;§;
      
      public static var softBought:§2!;§;
      
      public static var softSpent:§2!;§;
      
      public static var usdSpent:§2!;§;
      
      public static var §;!U§:§4!^§;
      
      public static var instance:Currency;
      
      public var §&![§:int;
      
      public function Currency()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  §&![§ = 0;
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§push(Save.§@!A§());
                  §§push(save);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§7!H§(§§pop());
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               §1!'§();
               if(_loc1_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         §§push(GlobalEventManager);
         §§push("PLAYFAB_CLOUD_LOAD_SUCCESS");
         §§push(§?_§);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         §§pop().addEventListener(§§pop(),§§pop());
         break loop1;
      }
      
      public static function §1!]§(param1:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(param1 <= 0)
         {
            return;
         }
         §§push("Thanks");
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(§9'§.§@!A§().§?!;§.isGuest());
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  §§push(!§§pop());
               }
            }
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
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       break loop5;
                                    }
                                    §§push(", ");
                                    §§push(§9'§.§@!A§().§?!;§.getUsername());
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       break loop4;
                                    }
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       break loop1;
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 §§push(_loc2_);
                                 break loop5;
                              }
                              §§goto(addr00fb);
                           }
                           §§push("! You got ");
                           break;
                        }
                        §§push(§§pop() + param1);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr00c2);
                     }
                     addr00c2:
                     §§push(§§pop() + (§§pop() + " power cells!"));
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  §§goto(addr00e0);
               }
               §§push(§§pop());
               if(_loc3_)
               {
                  break loop2;
               }
               addr00e0:
               _loc2_ = §§pop();
               if(!_loc4_)
               {
                  §'!E§.§@!A§().§1&§();
                  if(!_loc4_)
                  {
                     addr00fb:
                     §'!E§.§@!A§().§>!W§(_loc2_);
                  }
               }
               break;
            }
         }
         break loop0;
      }
      
      public static function §@!A§() : Currency
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as Currency;
         if(!_loc3_)
         {
            if(Currency.instance != null)
            {
               return Currency.instance;
            }
         }
         return Currency.instance = new Currency();
      }
      
      public function §1!'§() : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc1_:§=!U§ = §,!,§.§7!0§();
         var _loc2_:§2!;§ = Currency.softEarned;
         §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§2!;§ = Currency.softBought;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc12_)
            {
               §§push(§§pop() + int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
               if(_loc12_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         var _loc6_:§2!;§ = Currency.softSpent;
         while(true)
         {
            §§push(_loc5_);
            if(!_loc12_)
            {
               §§push(§§pop() - int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))));
               if(_loc12_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc7_:* = §§pop();
         var _loc8_:§2!;§ = Currency.softFromOffers;
         §§push(_loc7_);
         if(_loc13_)
         {
            §§push(§§pop() + int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
         }
         var _loc9_:* = §§pop();
         var _loc10_:StringMap = _loc1_;
         var _loc11_:* = _loc9_;
         if(_loc13_)
         {
            if("soft_currency_balance" in StringMap.§+!#§)
            {
               if(!_loc12_)
               {
                  _loc10_.setReserved("soft_currency_balance",_loc11_);
                  if(_loc13_)
                  {
                  }
               }
            }
            else
            {
               _loc10_.h["soft_currency_balance"] = _loc11_;
            }
         }
         _loc1_ = §,!,§.§7!0§();
         _loc2_ = Currency.softBought;
         _loc9_ = int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§)));
         _loc10_ = _loc1_;
         _loc11_ = _loc9_;
         if(_loc13_)
         {
            if("soft_currency_bought" in StringMap.§+!#§)
            {
               if(_loc13_)
               {
                  _loc10_.setReserved("soft_currency_bought",_loc11_);
                  if(_loc12_)
                  {
                  }
               }
            }
            else
            {
               _loc10_.h["soft_currency_bought"] = _loc11_;
            }
         }
         _loc1_ = §,!,§.§7!0§();
         _loc2_ = Currency.softSpent;
         _loc9_ = int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§)));
         _loc10_ = _loc1_;
         _loc11_ = _loc9_;
         if(!_loc12_)
         {
            if("soft_currency_spent" in StringMap.§+!#§)
            {
               if(!_loc12_)
               {
                  _loc10_.setReserved("soft_currency_spent",_loc11_);
                  if(_loc13_)
                  {
                  }
               }
            }
            else
            {
               _loc10_.h["soft_currency_spent"] = _loc11_;
            }
         }
         _loc1_ = §,!,§.§7!0§();
         _loc2_ = Currency.softEarned;
         _loc9_ = int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§)));
         _loc10_ = _loc1_;
         _loc11_ = _loc9_;
         if(!_loc12_)
         {
            if("soft_currency_earned" in StringMap.§+!#§)
            {
               if(!_loc12_)
               {
                  _loc10_.setReserved("soft_currency_earned",_loc11_);
                  if(_loc13_)
                  {
                  }
               }
            }
            else
            {
               _loc10_.h["soft_currency_earned"] = _loc11_;
            }
         }
         _loc1_ = §,!,§.§7!0§();
         _loc2_ = Currency.usdSpent;
         _loc9_ = int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§)));
         _loc10_ = _loc1_;
         _loc11_ = _loc9_;
         if(_loc13_)
         {
            if("total_spent_in_usd" in StringMap.§+!#§)
            {
               if(_loc13_)
               {
                  _loc10_.setReserved("total_spent_in_usd",_loc11_);
                  if(_loc12_)
                  {
                  }
               }
            }
            else
            {
               _loc10_.h["total_spent_in_usd"] = _loc11_;
            }
         }
      }
      
      public function save() : void
      {
      }
      
      public function §+a§(param1:String, param2:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as AnalyticsEvent;
         while(true)
         {
            if(!_loc5_)
            {
               if(param1 == null)
               {
                  break;
               }
            }
            _loc3_ = new AnalyticsEvent("economy_transactions");
            if(!_loc5_)
            {
               _loc3_.properties["type"] = param1;
               if(!_loc5_)
               {
                  _loc3_.properties["soft_currency_change"] = param2;
               }
            }
            break;
         }
      }
      
      public function recordSoftSpent(param1:int, param2:String) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         if(_loc12_)
         {
            if(param1 < 0)
            {
               if(_loc12_)
               {
                  §7o§.§3t§("Cannot spend a negative amount of currency!",{
                     "fileName":"Currency.hx",
                     "lineNumber":196,
                     "className":"com.player03.run3.Currency",
                     "methodName":"recordSoftSpent"
                  });
                  if(!_loc11_)
                  {
                     Boot.lastError = new Error();
                     if(!_loc12_)
                     {
                        §§goto(addr0073);
                     }
                  }
                  throw new IllegalOperationError("");
               }
            }
         }
         addr0073:
         var _loc3_:§2!;§ = Currency.softEarned;
         §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:§2!;§ = Currency.softBought;
         §§push(_loc4_);
         if(_loc12_)
         {
            §§push(§§pop() + int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
            if(!_loc11_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         var _loc7_:§2!;§ = Currency.softSpent;
         while(true)
         {
            §§push(_loc6_);
            if(!_loc11_)
            {
               §§push(§§pop() - int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc8_:* = §§pop();
         var _loc9_:§2!;§ = Currency.softFromOffers;
         if(!_loc11_)
         {
            §§push(param1);
            §§push(_loc8_);
            if(_loc12_)
            {
               §§push(§§pop() + int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))));
            }
            if(§§pop() > §§pop())
            {
               if(!_loc11_)
               {
                  §7o§.§3t§("Attempting to spend more power cells than you have!",{
                     "fileName":"Currency.hx",
                     "lineNumber":200,
                     "className":"com.player03.run3.Currency",
                     "methodName":"recordSoftSpent"
                  });
                  if(_loc12_)
                  {
                     Boot.lastError = new Error();
                     if(_loc12_)
                     {
                        throw new IllegalOperationError("");
                     }
                  }
               }
            }
         }
         var _loc10_:§2!;§ = Currency.softSpent;
         while(true)
         {
            if(!_loc11_)
            {
               §§push(_loc10_);
               §§push(int(Save.§@!A§().get(_loc10_.§=-§,int(_loc10_.§ -§))));
               if(_loc12_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§?F§(§§pop());
               if(!_loc11_)
               {
                  §0!#§.§@!A§().§,?§();
                  if(_loc11_)
                  {
                     break;
                  }
               }
               §§push(§§findproperty(§+a§));
               §§push(param2);
               §§push(param1);
               if(!_loc11_)
               {
                  §§push(-§§pop());
               }
               §§pop().§+a§(§§pop(),§§pop());
               if(_loc11_)
               {
                  break;
               }
            }
            §1!'§();
            break;
         }
      }
      
      public function recordSoftEarned(param1:int, param2:String) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            if(param1 < 0)
            {
               if(_loc5_)
               {
                  §7o§.§3t§("Cannot earn a negative amount of currency!",{
                     "fileName":"Currency.hx",
                     "lineNumber":108,
                     "className":"com.player03.run3.Currency",
                     "methodName":"recordSoftEarned"
                  });
                  if(_loc5_)
                  {
                     Boot.lastError = new Error();
                     if(!_loc5_)
                     {
                        §§goto(addr007f);
                     }
                  }
                  §§goto(addr0075);
               }
            }
            addr007f:
            var _loc3_:§2!;§ = Currency.softEarned;
            §§push(_loc3_);
            §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?F§(§§pop());
            §+a§(param2,param1);
            if(_loc5_)
            {
               §1!'§();
            }
            if(param1 >= 100)
            {
               §0!#§.§@!A§().§,?§();
               if(_loc5_)
               {
               }
            }
            else
            {
               §0!#§.§@!A§().§@^§();
            }
            return;
         }
         addr0075:
         throw new IllegalOperationError("");
      }
      
      public function recordSoftBought(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            §§push(param2);
            if(!_loc7_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  break;
               }
               if(§§pop() < §§pop())
               {
                  §7o§.§3t§("Cannot purchase a negative amount of currency!",{
                     "fileName":"Currency.hx",
                     "lineNumber":165,
                     "className":"com.player03.run3.Currency",
                     "methodName":"recordSoftBought"
                  });
                  Boot.lastError = new Error();
                  throw new IllegalOperationError("");
               }
               §§push(param1);
            }
            §§push(0);
            break;
         }
         if(§§pop() < §§pop())
         {
            if(_loc6_)
            {
               §7o§.§3t§("Cannot spend a negative amount of real-world money in this game! (I hope.)",{
                  "fileName":"Currency.hx",
                  "lineNumber":169,
                  "className":"com.player03.run3.Currency",
                  "methodName":"recordSoftBought"
               });
               Boot.lastError = new Error();
            }
            throw new IllegalOperationError("");
         }
         var _loc3_:§2!;§ = Currency.softBought;
         if(!_loc7_)
         {
            §§push(_loc3_);
            §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
            if(_loc6_)
            {
               §§push(§§pop() + param2);
            }
            §§pop().§?F§(§§pop());
         }
         _loc3_ = Currency.usdSpent;
         while(true)
         {
            if(_loc6_)
            {
               §§push(_loc3_);
               §§push(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
               if(_loc6_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§?F§(§§pop());
               if(!_loc6_)
               {
                  break;
               }
            }
            §0!#§.§@!A§().§[§();
            break;
         }
         var _loc4_:§]k§ = Save.§"!@§;
         §§push(Boolean(Save.§@!A§().get(_loc4_.§=-§,Boolean(_loc4_.§ -§))));
         if(!_loc7_)
         {
            §§push(!§§pop());
            if(_loc6_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  Save.§"!@§.§?F§(true);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §1!'§();
               break;
            }
         }
      }
      
      public function queueSoftEarned(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(param1 < 0)
               {
                  if(!_loc2_)
                  {
                     §7o§.§3t§("Cannot earn a negative amount of currency!",{
                        "fileName":"Currency.hx",
                        "lineNumber":127,
                        "className":"com.player03.run3.Currency",
                        "methodName":"queueSoftEarned"
                     });
                     if(!_loc2_)
                     {
                        Boot.lastError = new Error();
                        if(!_loc2_)
                        {
                           throw new IllegalOperationError("");
                        }
                     }
                     break;
                  }
               }
            }
            §§push(§§findproperty(§&![§));
            §§push(§&![§);
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&![§ = §§pop();
            break;
         }
      }
      
      public function §?_§() : void
      {
      }
      
      public function §`L§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            while(true)
            {
               if(§&![§ > 0)
               {
                  if(_loc1_)
                  {
                     recordSoftEarned(§&![§,"In-game");
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
               §&![§ = 0;
               break;
            }
         }
      }
   }
}

