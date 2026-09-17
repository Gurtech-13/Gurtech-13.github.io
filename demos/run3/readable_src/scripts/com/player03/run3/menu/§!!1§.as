package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §,x§.§3!I§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§6!4§;
   import game.§11§;
   import game.§>3§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §]!C§.Physics;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§@!<§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.CharacterDef;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class §!!1§ extends §[k§ implements §@[§
   {
      
      public var §]@§:§&l§;
      
      public var §"g§:Object;
      
      public var §^9§:Boolean;
      
      public var §2Y§:Vector.<§<!J§>;
      
      public var §%!A§:Boolean;
      
      public var §1"§:SharedObject;
      
      public var §<!"§:TextField;
      
      public function §!!1§(param1:String = undefined, param2:§!!1§ = undefined, param3:Object = undefined)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§<!J§>;
         var _loc7_:* = null as §<!J§;
         if(_loc8_)
         {
            §^9§ = true;
            if(!_loc9_)
            {
               §%!A§ = false;
               if(_loc8_)
               {
                  §"g§ = param3;
               }
            }
         }
         var _loc4_:Vector.<§<!J§> = new Vector.<§<!J§>(0,false);
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc8_)
               {
                  §2Y§ = _loc4_;
                  super();
                  §§push(§6!]§);
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           §^,§(null);
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                     }
                     if(param1 != null)
                     {
                        if(!_loc9_)
                        {
                           §1"§ = SharedObject.getLocal(param1);
                           §§push(Save.§@!A§());
                           §§push(save);
                           if(!_loc9_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§7!H§(§§pop());
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        break loop2;
                     }
                     addr0102:
                     if(param2 == null)
                     {
                        break loop1;
                     }
                  }
                  §,p§(§1"§.data.data);
                  if(!_loc9_)
                  {
                     §§goto(addr0102);
                  }
               }
               §§push(0);
               if(!_loc9_)
               {
                  §§push(int(§§pop()));
               }
               _loc5_ = §§pop();
               break;
            }
            _loc6_ = param2.§2Y§;
            if(_loc8_)
            {
               while(_loc5_ < int(_loc6_.length))
               {
                  _loc7_ = _loc6_[_loc5_];
                  if(!_loc9_)
                  {
                     _loc5_++;
                     if(!_loc8_)
                     {
                        continue;
                     }
                  }
                  §]8§(_loc7_.clone());
               }
               if(!_loc9_)
               {
                  §^9§ = true;
               }
            }
            break;
         }
         §§push(GlobalEventManager);
         §§push("KONG_API_EVENT_USER_CHANGED");
         §§push(§]@§.§^!;§);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         §§pop().addEventListener(§§pop(),§§pop());
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as §&d§;
         var _loc7_:* = null as § 7§;
         §@!<§.§]P§();
         if(§^9§)
         {
            §^9§ = false;
            if(_loc8_)
            {
               §<!"§.visible = int(§2Y§.length) == 0;
            }
            §§push(0);
            if(!_loc9_)
            {
               loop2:
               while(true)
               {
                  §§push(int(§§pop()));
                  if(!_loc9_)
                  {
                     _loc2_ = §§pop();
                     §§push(int(§2Y§.length));
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc3_ = §§pop();
                  while(true)
                  {
                     §§push(_loc2_);
                     break loop2;
                  }
               }
            }
            while(§§pop() < _loc3_)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     _loc2_++;
                     if(!_loc9_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                  }
                  _loc4_ = §§pop();
                  addr00bc:
                  if(_loc8_)
                  {
                     §§push(_loc4_);
                     break;
                  }
                  _loc5_ = new §?y§(§2Y§[0]);
                  _loc6_ = layout;
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(_loc6_ == null)
                        {
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(§&d§.§1$§());
                        }
                        else
                        {
                           §§push(_loc6_);
                        }
                        §§pop().add(_loc5_,new §;!!§(0,§2u§.TOP));
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     §§push(§2Y§[_loc4_]);
                     §§push(_loc4_);
                     if(_loc8_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop().§,B§(§§pop());
                     break;
                  }
                  §§goto(addr01d6);
               }
               while(true)
               {
                  if(§§pop() == 0)
                  {
                     §§goto(addr00bc);
                  }
                  else
                  {
                     _loc5_ = new §?y§(§2Y§[_loc4_]);
                     §§push(§§findproperty(§?y§));
                     §§push(§2Y§);
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc7_ = new §§pop().§?y§(§§pop()[§§pop()]);
                     _loc6_ = layout;
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              if(_loc6_ != null)
                              {
                                 §§push(_loc6_);
                                 break;
                              }
                              if(_loc9_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(§&d§.§1$§());
                           break;
                        }
                        §§pop().add(_loc5_,new §+X§(0,§2u§.BOTTOM),_loc7_);
                        break;
                     }
                  }
                  break loop6;
               }
               §§goto(addr01d6);
            }
            layout.apply();
            if(!_loc9_)
            {
               §]@§.§"!E§ = true;
            }
         }
         §]@§.update(param1);
      }
      
      public function save() : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            §§push(§%!A§);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§goto(addr0041);
                     }
                  }
                  else
                  {
                     §%!A§ = false;
                  }
                  §§goto(addr0049);
               }
            }
            addr0041:
            return false;
         }
         addr0049:
         §§push("");
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc6_)
         {
            while(true)
            {
               §§push(_loc1_ + "{");
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc1_ = §§pop();
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(§2Y§.length));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               loop0:
               while(_loc2_ < _loc3_)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        _loc2_++;
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(_loc4_);
                           }
                        }
                     }
                     if(§§pop() > 0)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     addr00f7:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc6_)
                        {
                           addr00ff:
                           §§push(Std);
                           §§push(§2Y§[_loc4_].toString());
                           if(_loc5_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop().string(§§pop()));
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              break;
                           }
                        }
                        addr012f:
                        §§push(§§pop());
                        break;
                     }
                     _loc1_ = §§pop();
                     continue loop0;
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + ",");
                        if(_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              §§push(§§pop());
                           }
                        }
                        _loc1_ = §§pop();
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00ff);
                  }
                  §§goto(addr012f);
               }
               if(_loc6_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(_loc1_ + "}");
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc1_ = §§pop();
            if(_loc5_)
            {
               break;
            }
            §§goto(addr0176);
         }
         §1"§.data.data = _loc1_;
         addr0176:
         return true;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §]@§.reset();
         }
      }
      
      public function §;t§(param1:Array, param2:Object = undefined, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = null as Vector.<CharacterDef>;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc8_)
               {
                  while(true)
                  {
                     if(param2 == null)
                     {
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(false);
                        if(_loc9_)
                        {
                           break loop2;
                        }
                        param2 = §§pop();
                     }
                     if(param3 == null)
                     {
                        break;
                     }
                     break loop1;
                  }
               }
               §§push(false);
               break;
            }
            param3 = §§pop();
            break;
         }
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc9_)
         {
            loop0:
            while(_loc5_ < int(param1.length))
            {
               _loc6_ = param1[_loc5_];
               while(true)
               {
                  if(_loc8_)
                  {
                     _loc5_++;
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(Reflect.hasField(_loc6_,"characters"));
                  if(_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  _loc4_ = null;
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(int(_loc6_.score));
                        if(_loc8_)
                        {
                           _loc7_ = §§pop();
                           if(!_loc8_)
                           {
                              break;
                           }
                           if(!param3)
                           {
                              break;
                           }
                           if(!_loc8_)
                           {
                              continue loop0;
                           }
                           §§push(int(Math.round(_loc7_ * 30 * 2 * 0.03333333333333333)));
                           if(_loc9_)
                           {
                              break loop4;
                           }
                        }
                        §§push(int(§§pop()));
                        break loop4;
                     }
                     §]8§(new §<!J§(_loc6_.score,_loc4_,_loc6_.username),param2);
                     continue loop0;
                  }
                  _loc7_ = §§pop();
                  if(_loc8_)
                  {
                     break loop5;
                  }
                  continue loop0;
               }
               _loc4_ = §<!J§.§3g§(_loc6_.characters);
               if(!_loc9_)
               {
                  continue loop4;
               }
               §§goto(addr00d9);
            }
         }
      }
      
      public function §]8§(param1:§<!J§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null as Vector.<§<!J§>;
         loop4:
         while(true)
         {
            while(true)
            {
               if(_loc11_)
               {
                  if(§"g§ == null)
                  {
                     break;
                  }
                  if(_loc10_)
                  {
                     break loop4;
                  }
               }
               loop6:
               while(true)
               {
                  §§push(true);
                  if(_loc11_)
                  {
                     §§push(false);
                     if(!_loc10_)
                     {
                        if(param1.timestamp == null)
                        {
                           while(true)
                           {
                              if(_loc11_)
                              {
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    break loop6;
                                 }
                                 §§push(param2);
                                 if(_loc11_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(_loc11_)
                  {
                     break loop4;
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00b3);
            }
            §§push(0);
            if(_loc11_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(int(§2Y§.length));
            if(_loc11_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop8:
            while(true)
            {
               if(_loc11_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(_loc4_);
                     if(!_loc10_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(int(§2Y§.length));
                           break;
                        }
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(_loc3_++);
                                 if(!_loc10_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(param1.§?k§(§2Y§[_loc5_]));
                                    if(_loc11_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          return;
                                       }
                                       break;
                                    }
                                    §§push(§2Y§[_loc5_].score);
                                    if(_loc10_)
                                    {
                                       break loop9;
                                    }
                                 }
                                 §§push(param1.score);
                                 if(_loc11_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(_loc11_)
                                       {
                                          §2Y§.splice(_loc5_,0,param1);
                                          if(!_loc11_)
                                          {
                                             break loop12;
                                          }
                                          §]@§.addChildAt(param1,_loc5_);
                                          if(!_loc10_)
                                          {
                                             §§push(int(§2Y§.length));
                                             §§push(10);
                                             if(_loc11_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc11_)
                                                   {
                                                      §§push(10);
                                                      break loop9;
                                                   }
                                                   §§goto(addr0228);
                                                }
                                                §§goto(addr021a);
                                             }
                                             §§goto(addr01ea);
                                          }
                                          §§goto(addr0198);
                                       }
                                       §§goto(addr01e6);
                                    }
                                    §§goto(addr01ee);
                                 }
                                 §§goto(addr01ea);
                              }
                              §§goto(addr01f4);
                           }
                           §^9§ = true;
                           §§goto(addr0228);
                        }
                        _loc6_ = §§pop();
                        addr0198:
                        loop11:
                        while(true)
                        {
                           §§push(int(§2Y§.length));
                           if(_loc11_)
                           {
                              _loc7_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc6_);
                              }
                              addr01e6:
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc7_);
                              addr01ea:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    break loop11;
                                 }
                                 §§push(_loc6_);
                                 if(!_loc10_)
                                 {
                                    _loc6_++;
                                    if(!_loc11_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 _loc8_ = §§pop();
                                 §]@§.removeChildAt(_loc8_);
                                 §2Y§[_loc8_].dispose();
                                 if(!_loc11_)
                                 {
                                    break loop10;
                                 }
                                 §§goto(addr01e6);
                                 continue loop3;
                              }
                              break loop10;
                           }
                        }
                        addr01ee:
                        if(_loc11_)
                        {
                           addr01f4:
                           §§push(§2Y§);
                           §§push(10);
                           §§push(int(§2Y§.length));
                           if(!_loc10_)
                           {
                              §§push(§§pop() - 10);
                           }
                           _loc9_ = §§pop().splice(§§pop(),§§pop());
                           addr021a:
                           §%!A§ = true;
                           break loop10;
                        }
                        addr0228:
                        return;
                     }
                     if(§§pop() >= §§pop())
                     {
                        break loop8;
                     }
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           §2Y§.push(param1);
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                        §]@§.addChild(param1);
                        break;
                     }
                     §%!A§ = true;
                     if(_loc10_)
                     {
                        break loop8;
                     }
                  }
                  §§goto(addr0256);
                  §§push(10);
               }
               §^9§ = true;
               break;
            }
            return;
         }
         addr00b3:
         §§push(param1.timestamp < Number(Date.now().getTime()) - §"g§);
         if(!_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         if(§§pop())
         {
            addr00b7:
            return;
         }
         break loop5;
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            §]@§ = new §&l§(100,100,null,null,null,false);
         }
         var _loc1_:§ 7§ = new §?y§(§]@§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(true,0));
         }
         _loc1_ = new §?y§(§]@§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc1_,new §30§(false,0.9));
         }
         _loc1_ = new §?y§(§]@§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.BOTTOM));
            while(true)
            {
               if(!_loc4_)
               {
                  addChild(§]@§);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §<!"§ = §&!;§.§9Q§(16777215,48,null,"Play Infinite Mode to set a new high score!",§]@§.width,null,null,null,"center");
               break;
            }
         }
         var _loc2_:TextField = §<!"§;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            while(true)
            {
               if(_loc3_ == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
               break;
            }
         }
         _loc1_ = new §?y§(§<!"§);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc1_,new §30§(true,0.9));
         }
         _loc1_ = new §?y§(§<!"§);
         while(true)
         {
            if(!_loc4_)
            {
               §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
               if(_loc4_)
               {
                  break;
               }
               §&d§.§1$§().add(_loc1_,new §4$§(false,0.5));
               if(_loc5_)
               {
                  §<!"§.visible = false;
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            addChild(§<!"§);
            break;
         }
      }
      
      public function §,p§(param1:String, param2:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §<!J§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     break loop1;
                  }
               }
               §§push(false);
               if(_loc5_)
               {
                  param2 = §§pop();
                  break;
               }
               addr0071:
               if(§§pop())
               {
                  break loop1;
               }
               §§goto(addr0107);
            }
            while(true)
            {
               §§push(false);
               if(!_loc4_)
               {
                  if(param1 == null)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        break loop1;
                     }
                     §§push(param1.length > 2);
                     if(_loc4_)
                     {
                        break;
                     }
                  }
               }
               §§push(Boolean(§§pop()));
               break;
            }
            §§goto(addr0071);
         }
         _loc3_ = §<!J§.fromString(param1);
         while(true)
         {
            if(!_loc4_)
            {
               while(_loc3_ != null)
               {
                  §]8§(_loc3_);
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(§<!J§.§3-§.matchedRight());
                        if(_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     param1 = §§pop();
                  }
                  _loc3_ = §<!J§.fromString(param1);
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            if(param2)
            {
               if(!_loc4_)
               {
                  break;
               }
               addr00fd:
               §1"§.flush();
            }
            §§goto(addr0107);
         }
         save();
         if(_loc5_)
         {
            §§goto(addr00fd);
         }
         addr0107:
      }
   }
}

