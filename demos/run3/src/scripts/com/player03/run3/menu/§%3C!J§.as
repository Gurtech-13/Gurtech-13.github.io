package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §"!M§.§9!5§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §-!!§.§&!;§;
   import §-!!§.§2!B§;
   import §-d§.§1M§;
   import §2!"§.§8f§;
   import §<!&§.§%!§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§"=§;
   import §>T§.§-2§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import §@]§.§&!C§;
   import §@]§.§+X§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.§,!8§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.AngleMath;
   import haxeutils.math.geom.Point3D;
   
   public class §<!J§ extends §'!O§
   {
      
      public static var init__:Boolean;
      
      public static var §3-§:EReg;
      
      public static var §?!0§:Vector.<BitmapData>;
      
      public var username:String;
      
      public var timestamp:Object;
      
      public var §1!J§:TextField;
      
      public var score:int;
      
      public var §6K§:TextField;
      
      public var §-! §:TextField;
      
      public var characters:Vector.<§6O§>;
      
      public var §8§:BitmapData;
      
      public function §<!J§(param1:int, param2:Vector.<§6O§>, param3:String = undefined, param4:Object = undefined)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            super();
         }
         var _loc5_:§ 7§ = new §?y§(this);
         §&d§.§1$§().add(_loc5_,new §;R§(true));
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(false);
               if(!_loc7_)
               {
                  if(param3 != null)
                  {
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           §§push(param3);
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                           §§push("Guest");
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           §§push(§§pop() == §§pop());
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     username = param3;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§push(§§findproperty(username));
                     §§push(§9'§.§@!A§().§?!;§.getUsername());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().username = §§pop();
                  }
                  score = param1;
                  break;
               }
               characters = param2;
               while(true)
               {
                  if(!_loc7_)
                  {
                     timestamp = param4;
                     §§push(username);
                     break loop1;
                  }
                  §§goto(addr010a);
               }
               §§goto(addr0121);
            }
            §§push("Guest");
            break;
         }
         if(§§pop() == §§pop())
         {
            if(!_loc7_)
            {
               §§push(GlobalEventManager);
               §§push("KONG_API_EVENT_READY");
               §§push(§]g§);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
               addr010a:
               §§push(GlobalEventManager);
               §§push("KONG_API_EVENT_USER_CHANGED");
               §§push(§]g§);
               if(_loc6_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
            }
         }
         addr0121:
      }
      
      public static function fromString(param1:String) : §<!J§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as Vector.<§6O§>;
         if(!_loc4_)
         {
            §§push(§<!J§.§3-§.match(param1));
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
            }
            if(!§§pop())
            {
               return null;
            }
         }
         §§push(§<!J§);
         §§push(§<!J§.§3-§.matched(3));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         _loc2_ = §§pop().§3g§(§§pop());
         §§push(§§findproperty(§<!J§));
         §§push(Std);
         §§push(§<!J§.§3-§.matched(2));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         return new §§pop().§<!J§(§§pop().parseInt(§§pop()),_loc2_,§<!J§.§3-§.matched(1),§<!J§.§3-§.matched(4) != null ? Std.parseFloat(§<!J§.§3-§.matched(4)) : null);
      }
      
      public static function §3g§(param1:String) : Vector.<§6O§>
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc7_:* = null as String;
         var _loc2_:Vector.<§6O§> = new Vector.<§6O§>(0,false);
         var _loc3_:Vector.<§6O§> = _loc2_;
         §§push(",");
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(!_loc9_)
                  {
                     §§push(false);
                     if(_loc9_)
                     {
                        break;
                     }
                     if(int(param1.indexOf("C")) == -1)
                     {
                        break;
                     }
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                     §§pop();
                     if(!_loc8_)
                     {
                        break loop1;
                     }
                  }
                  while(true)
                  {
                     §§push(int(param1.indexOf(",")));
                     if(!_loc9_)
                     {
                        §§push(§§pop() == -1);
                        if(_loc8_)
                        {
                           break loop2;
                        }
                        break loop3;
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00b2);
               }
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     break loop1;
                  }
               }
               §§goto(addr00a8);
            }
            §§push(Boolean(§§pop()));
            break loop3;
         }
         §§push("C");
         if(_loc8_)
         {
            §§push(§§pop());
         }
         _loc4_ = §§pop();
         addr00b2:
         addr00a8:
         §§push(0);
         if(!_loc9_)
         {
            addr00b1:
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param1.split(_loc4_));
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(!_loc9_)
         {
            while(_loc5_ < int(_loc6_.length))
            {
               §§push(_loc6_[_loc5_]);
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
               _loc7_ = §§pop();
               if(!_loc9_)
               {
                  _loc5_++;
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               _loc3_.push(§'O§.§&!#§[int(Std.parseInt(_loc7_))]);
            }
         }
         return _loc3_;
      }
      
      public static function §2A§() : Vector.<BitmapData>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:* = null as Vector.<BitmapData>;
         var _loc2_:* = 0;
         var _loc3_:* = null as Vector.<§6O§>;
         var _loc4_:* = null as §6O§;
         loop1:
         while(true)
         {
            if(_loc6_)
            {
               if(§<!J§.§?!0§ != null)
               {
                  break;
               }
            }
            _loc1_ = new Vector.<BitmapData>(0,false);
            if(_loc6_)
            {
               §<!J§.§?!0§ = _loc1_;
               if(!_loc5_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
               }
            }
            _loc3_ = §'O§.§&!#§;
            if(!_loc5_)
            {
               while(true)
               {
                  if(_loc2_ >= int(_loc3_.length))
                  {
                     break loop1;
                  }
                  _loc4_ = _loc3_[_loc2_];
                  if(_loc6_)
                  {
                     _loc2_++;
                     if(!_loc6_)
                     {
                        continue;
                     }
                     if(!_loc4_.available)
                     {
                        §<!J§.§?!0§.push(null);
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  §§push(§<!J§.§?!0§);
                  §§push(§2!B§);
                  §§push(_loc4_.§@>§());
                  if(_loc6_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().push(§§pop().getBitmapData(§§pop()));
                  if(_loc5_)
                  {
                  }
               }
            }
            break;
         }
         return §<!J§.§?!0§;
      }
      
      public function §]g§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§9'§.§@!A§().§?!;§.isGuest());
         if(_loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc2_)
            {
               §§push(!§§pop());
            }
         }
         if(§§pop())
         {
            §!!#§();
            if(!_loc1_)
            {
               if(§-! § != null)
               {
                  §§push(§§findproperty(username));
                  §§push(§9'§.§@!A§().§?!;§.getUsername());
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().username = §§pop();
                  §-! §.text = username;
                  Leaderboards.§4"§().§%!A§ = true;
               }
            }
         }
      }
      
      override public function toString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
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
                        §§push("{\"username\":\"");
                        if(_loc1_)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(username);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc1_)
                                 {
                                    break loop3;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc1_)
                                    {
                                       §§push("\",\"score\":");
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc2_)
                                       {
                                          break loop2;
                                       }
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() + score);
                                       }
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    §§push(",\"characters\":[");
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc1_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(§?A§());
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              break;
                           }
                           §§push(§§pop());
                           §§push("]");
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              break loop2;
                           }
                           if(timestamp == null)
                           {
                              §§push("");
                              break loop1;
                           }
                        }
                        §§push(",\"timestamp\":");
                        if(_loc1_)
                        {
                           §§push(§§pop() + timestamp);
                           if(_loc2_)
                           {
                           }
                           break loop1;
                        }
                        break loop0;
                     }
                     §§goto(addr00e1);
                  }
                  §§goto(addr00df);
               }
               §§push(§§pop());
               §§push("}");
               break loop0;
            }
            §§push(§§pop() + §§pop());
            if(!_loc2_)
            {
               break loop2;
            }
            §§goto(addr00e1);
         }
         addr00e1:
         §§push(§§pop() + §§pop());
         if(!_loc2_)
         {
            addr00df:
            return §§pop();
         }
      }
      
      public function §,B§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §6K§.text = "" + param1;
         }
      }
      
      public function §?k§(param1:§<!J§) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = 0;
         if(_loc5_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(true);
                  if(_loc5_)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           if(score == param1.score)
                           {
                              §§pop();
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(username != param1.username);
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    break loop4;
                                 }
                              }
                              else
                              {
                                 §§push(true);
                                 if(characters == null)
                                 {
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                    break loop3;
                                 }
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§push(param1.characters == null);
                              if(_loc5_)
                              {
                                 break loop3;
                              }
                              break loop1;
                           }
                        }
                        §§goto(addr005d);
                     }
                  }
                  if(!§§pop())
                  {
                     §§push(int(characters.length));
                     if(_loc5_)
                     {
                        if(§§pop() != int(param1.characters.length))
                        {
                           addr00bf:
                           §§push(false);
                           break loop1;
                        }
                        §§push(0);
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     §§push(int(characters.length));
                     if(!_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc6_)
                     {
                        while(_loc2_ < _loc3_)
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              _loc2_++;
                              if(!_loc6_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc4_ = §§pop();
                           if(_loc5_)
                           {
                              if(characters[_loc4_] == param1.characters[_loc4_])
                              {
                                 continue;
                              }
                           }
                           return false;
                        }
                     }
                     return true;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr00bf);
               }
               §§push(true);
               if(!_loc6_)
               {
                  return §§pop();
               }
               break;
            }
            return §§pop();
         }
         addr005d:
         return false;
      }
      
      public function dispose() : void
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
                  removeChildren();
                  if(_loc1_)
                  {
                     break;
                  }
                  §!!#§();
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               if(§8§ != null)
               {
                  if(_loc2_)
                  {
                     §8§.dispose();
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  break;
               }
               break loop0;
            }
            §8§ = null;
            break;
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc4_:* = null as § 7§;
         var _loc5_:* = null as § 7§;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = null as Matrix;
         var _loc11_:* = 0;
         var _loc12_:* = null as Vector.<§6O§>;
         var _loc13_:* = null as §6O§;
         var _loc14_:* = null as Bitmap;
         §§push(52);
         if(_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc15_)
         {
            §6K§ = §&!;§.§9Q§(16777215,_loc1_,null,"-",100,null,null,null,"right");
         }
         var _loc2_:TextField = §6K§;
         var _loc3_:* = null;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc16_)
               {
                  if(_loc3_ != null)
                  {
                     break;
                  }
                  if(_loc16_)
                  {
                     break loop1;
                  }
               }
               _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
            break;
         }
         _loc4_ = new §?y§(§6K§);
         if(!_loc16_)
         {
            §&d§.§1$§().add(_loc4_,new §`!W§(true,150));
            if(!_loc16_)
            {
               addChild(§6K§);
               if(!_loc16_)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§-! §));
                     §§push(§&!;§);
                     §§push(16777215);
                     §§push(_loc1_);
                     §§push(null);
                     if(_loc15_)
                     {
                        §§push(username);
                        if(_loc16_)
                        {
                           break;
                        }
                        if(§§pop() != "Guest")
                        {
                           §§push(username);
                           break;
                        }
                     }
                     §§push("You");
                     break;
                  }
                  §§pop().§-! § = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop(),500);
               }
            }
         }
         _loc2_ = §-! §;
         _loc3_ = null;
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc16_)
               {
                  if(_loc3_ != null)
                  {
                     break;
                  }
                  if(!_loc15_)
                  {
                     break loop4;
                  }
               }
               _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
            break;
         }
         _loc4_ = new §?y§(§-! §);
         if(_loc15_)
         {
            §&d§.§1$§().add(_loc4_,new §`!W§(true,500));
         }
         _loc4_ = new §?y§(§-! §);
         _loc5_ = new §?y§(§6K§);
         while(true)
         {
            if(!_loc16_)
            {
               §§push(§&d§.§1$§());
               §§push(_loc4_);
               §§push(§§findproperty(§+X§));
               §§push(12);
               if(!_loc16_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc5_);
               if(!_loc15_)
               {
                  break;
               }
               addChild(§-! §);
               if(_loc16_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§1!J§));
            §§push(§&!;§);
            §§push(16777215);
            §§push(_loc1_);
            §§push(null);
            §§push(Std.string(score));
            if(_loc15_)
            {
               §§push(§§pop());
            }
            §§pop().§1!J§ = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop());
            break;
         }
         _loc2_ = §1!J§;
         _loc3_ = null;
         while(true)
         {
            while(true)
            {
               if(!_loc16_)
               {
                  if(_loc3_ != null)
                  {
                     break;
                  }
                  if(!_loc15_)
                  {
                     continue loop9;
                  }
               }
               _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
            continue loop9;
         }
         _loc4_ = new §?y§(§1!J§);
         _loc5_ = new §?y§(§6K§);
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               if(_loc15_)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc4_);
                  §§push(§§findproperty(§+X§));
                  §§push(524);
                  if(!_loc16_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc5_);
                  loop11:
                  while(true)
                  {
                     if(_loc15_)
                     {
                        addChild(§1!J§);
                        if(characters == null)
                        {
                           break loop9;
                        }
                        if(!_loc15_)
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(280);
                        if(!_loc16_)
                        {
                           _loc6_ = §§pop() / int(characters.length);
                           §§push(56);
                           if(_loc16_)
                           {
                              break;
                           }
                        }
                        if(§§pop() < _loc6_)
                        {
                           §§push(56);
                           break;
                        }
                        loop13:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!_loc16_)
                              {
                                 _loc7_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    break loop10;
                                 }
                                 §§push(_loc7_);
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() / §<!J§.§2A§()[0].width);
                                 if(_loc16_)
                                 {
                                    break loop13;
                                 }
                              }
                              §§push(Number(§§pop()));
                              if(_loc15_)
                              {
                                 break loop13;
                              }
                              addr03a2:
                              §§push(Number(§§pop()));
                              break;
                           }
                           addr03a3:
                           _loc9_ = §§pop();
                        }
                        _loc8_ = §§pop();
                        break loop11;
                     }
                     §§push(Number(§§pop()));
                     if(_loc15_)
                     {
                        continue loop13;
                     }
                     §§goto(addr03a3);
                  }
                  §§push(_loc8_);
                  if(!_loc16_)
                  {
                     §§push(§§pop() * §<!J§.§2A§()[0].height);
                  }
                  §§goto(addr03a2);
               }
               §8§ = new BitmapData(int(Math.ceil(_loc7_ * int(characters.length))),int(Math.ceil(_loc9_)),true,0);
               if(!_loc16_)
               {
                  break;
               }
               §§goto(addr054a);
            }
            _loc10_ = new Matrix();
            while(true)
            {
               if(_loc15_)
               {
                  _loc10_.scale(_loc8_,_loc8_);
                  if(!_loc15_)
                  {
                     break;
                  }
               }
               §§push(0);
               if(_loc15_)
               {
                  §§push(int(§§pop()));
               }
               _loc11_ = §§pop();
               break;
            }
            _loc12_ = characters;
            if(_loc15_)
            {
               loop0:
               while(_loc11_ < int(_loc12_.length))
               {
                  _loc13_ = _loc12_[_loc11_];
                  while(true)
                  {
                     if(!_loc16_)
                     {
                        _loc11_++;
                        if(!_loc15_)
                        {
                           break;
                        }
                     }
                     if(§<!J§.§2A§()[_loc13_.id] != null)
                     {
                        if(_loc15_)
                        {
                           §8§.draw(§<!J§.§2A§()[_loc13_.id],_loc10_);
                           if(!_loc16_)
                           {
                              break;
                           }
                        }
                     }
                     continue loop0;
                  }
                  _loc10_.translate(_loc7_,0);
               }
            }
            _loc14_ = new Bitmap(§8§);
            _loc4_ = new §?y§(_loc14_);
            _loc5_ = new §?y§(§1!J§);
            if(_loc15_)
            {
               §&d§.§1$§().add(_loc4_,new §+X§(0,§2u§.RIGHT),_loc5_);
               if(_loc15_)
               {
                  layout.add(new §?y§(_loc14_),new §&!C§(false,0.5,-6),new §?y§(§1!J§));
                  if(!_loc15_)
                  {
                     break;
                  }
               }
            }
            addChild(_loc14_);
            break;
         }
         §!1§(null,new §?y§(§1!J§));
         addr054a:
      }
      
      public function clone() : §<!J§
      {
         return new §<!J§(score,characters,username,timestamp);
      }
      
      public function §!!#§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §§push(GlobalEventManager);
               §§push("KONG_API_EVENT_READY");
               §§push(§]g§);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().removeEventListener(§§pop(),§§pop());
               if(_loc1_)
               {
                  break;
               }
            }
            §§push(GlobalEventManager);
            §§push("KONG_API_EVENT_USER_CHANGED");
            §§push(§]g§);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().removeEventListener(§§pop(),§§pop());
            break;
         }
      }
      
      public function §?A§() : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§6O§>;
         var _loc5_:* = null as §6O§;
         §§push("");
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(characters == null)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop1;
                  }
               }
               §§push(true);
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc2_ = §§pop();
               if(_loc6_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
               break loop1;
            }
            return _loc1_;
         }
         _loc4_ = characters;
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               if(_loc3_ >= int(_loc4_.length))
               {
                  break loop2;
               }
               _loc5_ = _loc4_[_loc3_];
               while(true)
               {
                  if(!_loc7_)
                  {
                     _loc3_++;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           §§push(_loc1_);
                           if(_loc6_)
                           {
                              §§push(§§pop() + ",");
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              _loc1_ = §§pop();
                              if(_loc6_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr0137:
                           _loc1_ = §§pop();
                        }
                        continue loop0;
                     }
                  }
                  addr00e8:
                  _loc2_ = Boolean(§§pop());
                  addr00e7:
                  if(_loc7_)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(Std);
                           §§push("");
                           if(!_loc7_)
                           {
                              §§push(§§pop() + _loc5_.id);
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§push(§§pop().string(§§pop()));
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0137);
               }
               §§push(false);
               if(_loc6_)
               {
                  §§goto(addr00e7);
               }
               §§goto(addr00e8);
            }
         }
         break loop2;
      }
   }
}

