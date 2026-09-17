package com.player03.run3.api
{
   import §!D§.§3s§;
   import §"!M§.§!!P§;
   import §"!M§.§9!5§;
   import §"!M§.§<!O§;
   import §#!a§.§]3§;
   import §%!Q§.§>K§;
   import §+!4§.§5!§;
   import geom3d.Transform;
   import §8&§.§%!$§;
   import world3d.Entity3D;
   import §<&§.§>!A§;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import §[^§.§+`§;
   import stage.StageActor;
   import com.player03.analytics.§8!3§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§]k§;
   import flash.events.Event;
   import flash.net.SharedObject;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class §]3§ extends §#!a§.§]3§
   {
      
      public var §6"§:§=!U§;
      
      public function §]3§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super();
               if(_loc1_)
               {
                  break;
               }
            }
            §6"§ = new StringMap();
            if(_loc2_)
            {
               §§push(§§findproperty(§@!!§));
               §§push("Level");
               §§push(§^o§);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().§@!!§(§§pop(),§§pop());
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr0070);
            }
            break;
         }
         §§push(§§findproperty(§@!!§));
         §§push("Level set");
         §§push(§^o§);
         if(_loc2_)
         {
            §§push(§§pop());
         }
         §§pop().§@!!§(§§pop(),§§pop());
         addr0070:
      }
      
      public function §+!2§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         §§push([]);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               while(_loc2_ < 3)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        _loc2_++;
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     §§push(_loc1_);
                     §§push(§>K§.§0x§.§,q§(_loc3_));
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().push(§§pop());
                  }
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            §^o§(new §%!$§({
               "id":-1,
               "name":"Test level",
               "permalink":"",
               "content":_loc1_.join("\n"),
               "label":"Level set",
               "thumbnail":"",
               "author":"player_03",
               "rating":5
            }));
            break;
         }
      }
      
      public function §!!K§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(§§findproperty(§^o§));
            §§push(§§findproperty(§%!$§));
            §§push("id");
            §§push(-1);
            §§push("name");
            §§push("Test level");
            §§push("permalink");
            §§push("");
            §§push("content");
            §§push(§>K§.§0x§.§,q§(0));
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().§^o§(new §§pop().§%!$§(null));
         }
      }
      
      public function §#!E§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §§push(isGuest());
               if(!_loc1_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  kongregate.mtx.showKredPurchaseDialog("offers");
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            showRegistrationBox();
            if(_loc2_)
            {
            }
            break;
         }
      }
      
      public function § !<§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            kongregate.mtx.requestUserItemList(null,§3!T§);
         }
      }
      
      public function purchaseItem(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(isGuest());
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  showRegistrationBox();
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               kongregate.mtx.purchaseItems([param1],§ !L§);
            }
         }
      }
      
      public function §^o§(param1:§%!$§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         Main.instance.§,Z§(new Level(0,new §3s§(param1),§,a§.SHARED_CONTENT,{"endTiles":true}));
         while(true)
         {
            if(_loc2_)
            {
               Main.instance.tunnel.update(0);
               if(!_loc2_)
               {
                  break;
               }
            }
            Main.instance.tunnel.display(0);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0086);
         }
         Main.instance.§+D§(true);
         addr0086:
      }
      
      public function §3!T§(param1:*) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:* = null as Array;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         var _loc5_:* = null as §=!U§;
         var _loc6_:* = null as String;
         var _loc7_:* = 0;
         var _loc8_:* = null as StringMap;
         if(param1.success)
         {
            §§push(param1.data);
            if(!_loc10_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(_loc9_)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(!_loc10_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        _loc3_ = §§pop();
                        if(!_loc9_)
                        {
                           break loop2;
                        }
                     }
                     while(true)
                     {
                        if(§§pop() >= int(_loc2_.length))
                        {
                           break loop3;
                        }
                        _loc4_ = _loc2_[_loc3_];
                        if(!_loc10_)
                        {
                           _loc3_++;
                        }
                        _loc5_ = §6"§;
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              §§push(_loc4_.identifier);
                              if(!_loc10_)
                              {
                                 §§push(§§pop());
                              }
                              _loc6_ = §§pop();
                              if(!_loc9_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§push(§?!#§(_loc4_.identifier));
                              if(_loc9_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + 1);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              break;
                           }
                           _loc7_ = §§pop();
                           break;
                        }
                        _loc8_ = _loc5_;
                        if(_loc9_)
                        {
                           if(_loc6_ in StringMap.§+!#§)
                           {
                              if(!_loc10_)
                              {
                                 _loc8_.setReserved(_loc6_,_loc7_);
                                 if(_loc9_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              _loc8_.h[_loc6_] = _loc7_;
                           }
                        }
                     }
                     break;
                     addr0130:
                  }
                  while(true)
                  {
                     §§goto(addr0130);
                  }
               }
               GlobalEventManager.dispatchEvent("KONG_API_EVENT_USER_INVENTORY");
               GlobalEventManager.dispatchEvent("PURCHASE_MANAGER_GOT_INVENTORY");
               break;
            }
         }
         break loop2;
      }
      
      override public function §?!T§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               super.§?!T§(param1);
               if(_loc2_)
               {
                  § !<§();
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            GlobalEventManager.dispatchEvent("KONG_API_EVENT_USER_CHANGED");
            break;
         }
      }
      
      override public function §"!C§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               super.§"!C§(param1);
               if(_loc3_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(isGuest());
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(!§§pop());
               break;
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  § !<§();
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr006d);
               }
            }
            break;
         }
         GlobalEventManager.dispatchEvent("KONG_API_EVENT_READY");
         addr006d:
      }
      
      public function § !L§(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.success)
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     § !<§();
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  GlobalEventManager.dispatchEvent("PURCHASE_MANAGER_PURCHASE_FINISHED");
                  break;
               }
            }
         }
      }
      
      public function §9!Q§() : Boolean
      {
         return false;
      }
      
      public function §?!#§(param1:String) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:StringMap = §6"§;
         while(true)
         {
            if(!_loc5_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc2_.h[param1]);
                  break;
               }
            }
            §§push(_loc2_.getReserved(param1));
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ != null)
            {
               return _loc3_;
            }
         }
         return 0;
      }
   }
}

