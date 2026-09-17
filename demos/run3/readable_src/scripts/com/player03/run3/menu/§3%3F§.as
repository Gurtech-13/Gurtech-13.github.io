package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!!=§.§"C§;
   import §!D§.§1!&§;
   import §%!Q§.§&r§;
   import §%!Z§.§&!S§;
   import §+!4§.§3!O§;
   import §-!!§.§&!;§;
   import §-!!§.§+!%§;
   import §-!!§.§,C§;
   import §-v§.§%!3§;
   import §-v§.§-G§;
   import §-v§.§2P§;
   import §1!a§.§<!-§;
   import §2E§.§9!J§;
   import scenes.MyTurn;
   import world3d.Entity3D;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>d§.§`!Q§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import §^!0§.§%2§;
   import §^!0§.§7P§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.level.TunnelSection;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §3?§ extends §[k§ implements §3!!§, §@[§
   {
      
      public static var instance:§3?§;
      
      public var §`b§:Vector.<§9!J§>;
      
      public var §!v§:§2P§;
      
      public var §,"§:Rectangle;
      
      public var §0!§:Matrix;
      
      public var §,!F§:BitmapData;
      
      public var §9r§:Bitmap;
      
      public var §6!Z§:TextField;
      
      public var §#i§:§2P§;
      
      public var §1y§:Number;
      
      public var images:Vector.<DisplayObject>;
      
      public var §+h§:§%!3§;
      
      public var §!S§:Vector.<DisplayObject>;
      
      public var §3P§:Boolean;
      
      public var §`W§:Vector.<§+!%§>;
      
      public function §3?§()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §3P§ = true;
               if(!_loc2_)
               {
                  break;
               }
            }
            super();
            break;
         }
         §§push(new §9!J§("Cutscenes","cutscenesDisabled",[true,false],"Cutscenes ",["disabled","enabled"]));
         §§push(§§findproperty(§9!J§));
         §§push("Quality");
         §§push("quality");
         §§push(["L","M","H"]);
         §§push(null);
         §§push(["low","medium","high"]);
         §§push(Main.instance.§9!^§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         §§push(null);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §`b§ = Vector.<§9!J§>(_loc1_);
         }
      }
      
      public static function §@!A§() : §3?§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §3?§;
         if(_loc2_)
         {
            if(§3?§.instance != null)
            {
               return §3?§.instance;
            }
         }
         return §3?§.instance = new §3?§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc4_:* = null as §9!J§;
         var _loc5_:* = null as Vector.<DisplayObject>;
         var _loc6_:* = null as DisplayObject;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!_loc9_)
         {
            §§push(0);
            if(!_loc9_)
            {
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
         }
         var _loc3_:Vector.<§9!J§> = §`b§;
         loop5:
         while(true)
         {
            if(_loc10_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc9_)
                  {
                     break;
                  }
                  if(§§pop() < int(_loc3_.length))
                  {
                     _loc4_ = _loc3_[_loc2_];
                     if(_loc10_)
                     {
                        _loc2_++;
                        if(_loc9_)
                        {
                           continue;
                        }
                     }
                     _loc4_.update(param1);
                     continue;
                  }
                  loop6:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(!§3P§)
                        {
                           break;
                        }
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(_loc10_)
                           {
                              §§push(int(§§pop()));
                           }
                           break loop0;
                        }
                     }
                     addr00b9:
                     _loc5_ = §!S§;
                     if(!_loc9_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(int(_loc5_.length));
                           if(!_loc9_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 _loc6_ = _loc5_[_loc2_];
                                 if(!_loc9_)
                                 {
                                    _loc2_++;
                                    if(!_loc10_)
                                    {
                                       continue;
                                    }
                                 }
                                 removeChild(_loc6_);
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 break loop6;
                              }
                              §!S§.length = 0;
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    if(§,!F§ == null)
                                    {
                                       break;
                                    }
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                 }
                                 §,!F§.fillRect(§,"§,0);
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 break loop6;
                              }
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc10_)
                                    {
                                       break loop1;
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(int(§`W§.length));
                                    if(!_loc9_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc9_)
                                       {
                                          break loop1;
                                       }
                                    }
                                 }
                                 _loc7_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 addr0221:
                                 §3P§ = false;
                                 break loop6;
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 break loop1;
                              }
                              addr0213:
                           }
                           while(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc9_)
                                 {
                                    _loc2_++;
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break;
                              }
                              _loc8_ = §§pop();
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    §`W§[_loc8_].§+s§(§7o§.controlScheme == §"C§.§&!#§[_loc8_]);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 if(§`W§[_loc8_].§=!K§.visible)
                                 {
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr0213);
                              }
                              §]!9§(images[_loc8_]);
                              §§goto(addr0213);
                              break loop1;
                           }
                           if(!_loc10_)
                           {
                              break loop6;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr0216);
                        }
                     }
                     §§goto(addr0221);
                  }
                  §#i§.update(param1);
                  if(_loc9_)
                  {
                     break loop5;
                  }
               }
               _loc2_ = §§pop();
               if(!_loc10_)
               {
                  break;
               }
               §§goto(addr00b9);
            }
            §!v§.update(param1);
            break;
         }
      }
      
      public function §]h§(param1:§3!O§, param2:int, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               if(param3)
               {
                  if(_loc4_)
                  {
                     §"C§.§]!S§(param1);
                     if(_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  §"C§.§;w§(param1);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §3P§ = true;
            break;
         }
      }
      
      public function §60§(param1:MouseEvent) : void
      {
         §[!<§.§@!A§().§4X§(CreditsScreen.§@!A§());
      }
      
      public function §]!9§(param1:DisplayObject) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(!_loc3_)
                        {
                           if(param1 == null)
                           {
                              break loop2;
                           }
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                           §§pop();
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(int(§!S§.indexOf(param1,0)) >= 0);
                           if(_loc3_)
                           {
                              break loop2;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop2;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                     §§goto(addr00da);
                  }
                  else
                  {
                     if(param1.parent == null)
                     {
                        break loop3;
                     }
                     if(§,!F§ == null)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        §,!F§.lock();
                        if(!_loc3_)
                        {
                           §0!§.identity();
                           break loop0;
                        }
                        break;
                     }
                  }
                  §§goto(addr00eb);
               }
               §!S§.push(param1);
               addChild(param1);
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            return;
         }
         §0!§.translate(0,-§9r§.y);
         if(_loc2_)
         {
            addr00da:
            §,!F§.draw(param1,§0!§);
            addr00eb:
            §,!F§.unlock();
         }
         break loop1;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §9!J§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§9!J§> = §`b§;
         while(true)
         {
            if(_loc4_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(!_loc5_)
                  {
                     _loc1_++;
                     if(_loc4_)
                     {
                        _loc3_.reset();
                     }
                  }
               }
               if(_loc5_)
               {
                  break;
               }
            }
            §#i§.reset();
            if(_loc4_)
            {
               §!v§.reset();
            }
            break;
         }
      }
      
      public function §6S§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = null as § 7§;
         var _loc2_:* = null as §&d§;
         if(§,!F§ != null)
         {
            §,!F§.dispose();
            §,!F§ = null;
            if(§9r§ != null)
            {
               §9r§.bitmapData = null;
            }
         }
         §,!F§ = new BitmapData(Lib.get_current().stage.stageWidth,int(Lib.get_current().stage.stageHeight / 3),true,0);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(§9r§ != null)
                     {
                        §9r§.bitmapData = §,!F§;
                        layout.§%X§(new §?y§(§9r§));
                        break;
                     }
                     §9r§ = new Bitmap(§,!F§);
                  }
                  _loc1_ = new §?y§(§9r§);
                  _loc2_ = layout;
                  if(_loc3_)
                  {
                     if(_loc2_ == null)
                     {
                        if(_loc4_)
                        {
                           break loop0;
                        }
                        §§push(§&d§.§1$§());
                     }
                     else
                     {
                        §§push(_loc2_);
                     }
                     §§pop().add(_loc1_,§^`§.§ !P§(§2u§.BOTTOM));
                     if(_loc3_)
                     {
                        addChildAt(§9r§,0);
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     break loop1;
                  }
                  break loop0;
               }
               §,"§.width = §,!F§.width;
               if(!_loc4_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         §,"§.height = §,!F§.height;
         break loop1;
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc11_:* = null as Function;
         var _loc12_:* = 0;
         var _loc13_:* = null as Vector.<§+!%§>;
         var _loc14_:* = null as §+!%§;
         if(_loc16_)
         {
            §1y§ = 6;
            if(_loc16_)
            {
               §+h§ = new §%!3§();
            }
         }
         var _loc1_:§ 7§ = new §?y§(§+h§);
         var _loc2_:* = §1y§;
         while(true)
         {
            §§push(§&d§.§1$§());
            §§push(_loc1_);
            if(!_loc15_)
            {
               if(_loc2_ != null)
               {
                  §§push(new §;!!§(Number(_loc2_),§2u§.LEFT));
                  break;
               }
            }
            §§push(§^`§.§ !P§(§2u§.LEFT));
            break;
         }
         §§pop().add(§§pop(),§§pop());
         while(true)
         {
            if(!_loc15_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc1_);
                  if(_loc16_)
                  {
                     if(_loc2_ != null)
                     {
                        §§push(new §;!!§(Number(_loc2_),§2u§.TOP));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.TOP));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               addChild(§+h§);
               mouseEnabled = false;
               §,"§ = new Rectangle();
               if(_loc15_)
               {
                  break;
               }
            }
            §0!§ = new Matrix();
            break;
         }
         var _loc3_:Vector.<§+!%§> = new Vector.<§+!%§>(0,false);
         if(_loc16_)
         {
            §`W§ = _loc3_;
         }
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0,false);
         if(_loc16_)
         {
            images = _loc4_;
         }
         var _loc5_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0,false);
         if(!_loc15_)
         {
            §!S§ = _loc5_;
         }
         var _loc6_:TextField = §&!;§.§9Q§(16777215,60,null,"Controls:");
         _loc2_ = null;
         loop4:
         while(true)
         {
            while(true)
            {
               if(_loc16_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(_loc15_)
                  {
                     break loop4;
                  }
               }
               _loc2_ = int(Number(_loc6_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc6_),new §=!]§(int(_loc2_)));
            break;
         }
         _loc1_ = new §?y§(_loc6_);
         var _loc7_:§ 7§ = new §?y§(§+h§);
         while(true)
         {
            if(_loc16_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(20,§2u§.BOTTOM),_loc7_);
               if(!_loc16_)
               {
                  break;
               }
            }
            addChild(_loc6_);
            if(_loc16_)
            {
               break;
            }
            var _loc8_:TextField = §6!Z§;
            _loc2_ = null;
            loop7:
            while(true)
            {
               while(true)
               {
                  if(!_loc15_)
                  {
                     if(_loc2_ != null)
                     {
                        break;
                     }
                     if(!_loc16_)
                     {
                        break loop7;
                     }
                  }
                  _loc2_ = int(Number(_loc8_.defaultTextFormat.size));
                  break;
               }
               §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc2_)));
               break;
            }
            _loc1_ = new §?y§(§6!Z§);
            _loc7_ = new §?y§(_loc6_);
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(5,§2u§.BOTTOM),_loc7_);
               if(_loc16_)
               {
                  addChild(§6!Z§);
                  if(!_loc15_)
                  {
                     §"!P§(§"C§.§?!&§,"Arrow keys",null);
                  }
               }
            }
            §§push(§§findproperty(§,C§));
            §§push("menu/CreditsIcon.png");
            §§push(§60§);
            if(!_loc15_)
            {
               §§push(§§pop());
            }
            var _loc9_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
            _loc1_ = new §?y§(_loc9_);
            _loc2_ = §1y§;
            while(true)
            {
               if(!_loc15_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc1_);
                     if(!_loc15_)
                     {
                        if(_loc2_ != null)
                        {
                           §§push(new §;!!§(Number(_loc2_),§2u§.RIGHT));
                           break;
                        }
                     }
                     §§push(§^`§.§ !P§(§2u§.RIGHT));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
                  if(_loc16_)
                  {
                     while(true)
                     {
                        §§push(§&d§.§1$§());
                        §§push(_loc1_);
                        if(!_loc15_)
                        {
                           if(_loc2_ != null)
                           {
                              §§push(new §;!!§(Number(_loc2_),§2u§.TOP));
                              break;
                           }
                        }
                        §§push(§^`§.§ !P§(§2u§.TOP));
                        break;
                     }
                     §§pop().add(§§pop(),§§pop());
                     if(!_loc16_)
                     {
                        break;
                     }
                  }
               }
               addChild(_loc9_);
               break;
            }
            var _loc10_:§-G§ = new §-G§();
            _loc1_ = new §?y§(_loc10_);
            _loc2_ = §1y§;
            if(_loc16_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc1_);
                  if(!_loc15_)
                  {
                     if(_loc2_ != null)
                     {
                        §§push(new §;!!§(Number(_loc2_),§2u§.TOP));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.TOP));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
            }
            _loc1_ = new §?y§(_loc10_);
            _loc7_ = new §?y§(_loc9_);
            _loc2_ = §1y§;
            if(_loc16_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(Number(_loc2_),§2u§.LEFT),_loc7_);
               while(true)
               {
                  if(!_loc15_)
                  {
                     addChild(_loc10_);
                     if(!_loc16_)
                     {
                        break;
                     }
                  }
                  §#i§ = new §2P§(0);
                  break;
               }
            }
            _loc1_ = new §?y§(§#i§);
            _loc7_ = new §?y§(_loc10_);
            §§push(§1y§);
            if(_loc16_)
            {
               §§push(§§pop() / 2);
            }
            _loc2_ = §§pop();
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(Number(_loc2_),§2u§.LEFT),_loc7_);
            }
            _loc1_ = new §?y§(§#i§);
            §§push(§1y§);
            if(!_loc15_)
            {
               §§push(§§pop() * 2);
            }
            _loc2_ = §§pop();
            while(true)
            {
               if(_loc16_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc1_);
                     if(!_loc15_)
                     {
                        if(_loc2_ != null)
                        {
                           §§push(new §;!!§(Number(_loc2_),§2u§.TOP));
                           break;
                        }
                     }
                     §§push(§^`§.§ !P§(§2u§.TOP));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
                  if(!_loc15_)
                  {
                     addChild(§#i§);
                     if(!_loc16_)
                     {
                        break;
                     }
                  }
               }
               §!v§ = new §2P§(1);
               break;
            }
            _loc1_ = new §?y§(§!v§);
            _loc7_ = new §?y§(§#i§);
            §§push(§1y§);
            if(_loc16_)
            {
               §§push(§§pop() / 2);
            }
            _loc2_ = §§pop();
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(Number(_loc2_),§2u§.LEFT),_loc7_);
            }
            _loc1_ = new §?y§(§!v§);
            §§push(§1y§);
            if(_loc16_)
            {
               §§push(§§pop() * 2);
            }
            _loc2_ = §§pop();
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc1_);
               if(!_loc15_)
               {
                  if(_loc2_ != null)
                  {
                     §§push(new §;!!§(Number(_loc2_),§2u§.TOP));
                     break;
                  }
               }
               §§push(§^`§.§ !P§(§2u§.TOP));
               break;
            }
            §§pop().add(§§pop(),§§pop());
            addChild(§!v§);
            while(true)
            {
               §§push(int(§`W§.length));
               if(!_loc15_)
               {
                  if(§§pop() >= 2)
                  {
                     while(true)
                     {
                        if(_loc16_)
                        {
                           §§push(§6S§);
                           if(!_loc15_)
                           {
                              §§push(§§pop());
                              if(_loc15_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop());
                           if(!_loc16_)
                           {
                              break;
                           }
                           _loc11_ = §§pop();
                           layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc11_)));
                        }
                        §§push(_loc11_);
                        break;
                     }
                     §§pop()();
                     if(!_loc16_)
                     {
                        addr069c:
                        _loc13_ = §`W§;
                        while(true)
                        {
                           if(!_loc15_)
                           {
                              while(_loc12_ < int(_loc13_.length))
                              {
                                 _loc14_ = _loc13_[_loc12_];
                                 if(!_loc15_)
                                 {
                                    _loc12_++;
                                    if(!_loc15_)
                                    {
                                       _loc14_.visible = false;
                                    }
                                 }
                              }
                              if(!_loc15_)
                              {
                                 removeChild(_loc6_);
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                              }
                           }
                           removeChild(§6!Z§);
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(§&!;§);
                        §§push(16777215);
                        §§push(14);
                        §§push(null);
                        §§push("v");
                        if(_loc16_)
                        {
                           §§push(§§pop() + "1.13.0");
                           if(!_loc16_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     _loc8_ = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop());
                     _loc2_ = null;
                     if(_loc16_)
                     {
                        while(true)
                        {
                           if(_loc2_ == null)
                           {
                              if(!_loc16_)
                              {
                                 break;
                              }
                              _loc2_ = int(Number(_loc8_.defaultTextFormat.size));
                           }
                           §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc2_)));
                           break;
                        }
                     }
                     _loc1_ = new §?y§(_loc8_);
                     while(true)
                     {
                        if(!_loc15_)
                        {
                           §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.RIGHT));
                           if(_loc15_)
                           {
                              break;
                           }
                           §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.BOTTOM));
                           if(!_loc16_)
                           {
                              break;
                           }
                        }
                        addChild(_loc8_);
                        break;
                     }
                     return;
                  }
                  §§push(0);
                  if(!_loc16_)
                  {
                     break;
                  }
               }
               §§push(int(§§pop()));
               break;
            }
            _loc12_ = §§pop();
            §§goto(addr069c);
         }
         §6!Z§ = §&!;§.§9Q§(16777215,30,null,"(Pick one or two.)");
         continue loop7;
      }
      
      public function §"!P§(param1:§3!O§, param2:String, param3:DisplayObject = undefined) : void
      {
         var a2:int;
         var a1:§3!O§;
         var f:Function;
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as § 7§;
         var _loc7_:* = null;
         while(true)
         {
            if(!_loc8_)
            {
               §§push(§§newactivation());
               §§push(§]h§);
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            a1 = param1;
            if(!_loc8_)
            {
               a2 = int(§`W§.length);
            }
            break;
         }
         var _loc4_:§+!%§ = new §+!%§(16777215,40,param2,false,function(param1:Boolean):void
         {
            f(a1,a2,param1);
         });
         _loc5_ = new §?y§(_loc4_);
         while(true)
         {
            if(!_loc8_)
            {
               §&d§.§1$§().add(_loc5_,new §;!!§(25,§2u§.LEFT));
               if(_loc8_)
               {
                  break;
               }
            }
            if(int(§`W§.length) > 0)
            {
               break;
            }
            addr016f:
            addr01bf:
            _loc5_ = new §?y§(_loc4_);
            _loc6_ = new §?y§(§6!Z§);
            if(_loc9_)
            {
               §&d§.§1$§().add(_loc5_,new §+X§(20,§2u§.BOTTOM),_loc6_);
            }
            _loc4_.mouseChildren = false;
            addChild(_loc4_);
            §`W§.push(_loc4_);
            if(_loc9_)
            {
               images.push(param3);
            }
            if(§7o§.controlScheme == param1)
            {
               if(_loc9_)
               {
                  _loc4_.§+s§(true);
               }
            }
            return;
         }
         _loc5_ = new §?y§(_loc4_);
         §§push(§§findproperty(§?y§));
         §§push(§`W§);
         §§push(int(§`W§.length));
         if(_loc9_)
         {
            §§push(§§pop() - 1);
         }
         _loc6_ = new §§pop().§?y§(§§pop()[§§pop()]);
         _loc7_ = §1y§;
         if(_loc9_)
         {
            §&d§.§1$§().add(_loc5_,new §+X§(Number(_loc7_),§2u§.BOTTOM),_loc6_);
            §§goto(addr016f);
         }
         §§goto(addr01bf);
      }
   }
}

