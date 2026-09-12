package §6!Q§
{
   import §!!$§.§ 6§;
   import §"!L§.§@C§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§&!;§;
   import §8&§.§%!$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.text.TextField;
   import haxe.Timer;
   
   public class §'!E§ extends Sprite implements §+<§
   {
      
      public static var instance:§'!E§;
      
      public static function ]Y(param1:int):Number
      {
         return GrowthFunctions.linearFunc(2.5,0.08,param1);
      }
      public static function !o(param1:int):Number
      {
         return GrowthFunctions.boundedFunc(36,-16,100,param1);
      }
      public var §6a§:Vector.<§&!A§>;
      
      public function §'!E§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               if(!_loc1_)
               {
                  §6a§ = new Vector.<§&!A§>();
                  if(!_loc2_)
                  {
                     break;
                  }
                  mouseChildren = false;
                  if(_loc1_)
                  {
                     break;
                  }
               }
               addEventListener(MouseEvent.CLICK,§1&§);
               break;
            }
         }
      }
      
      public static function §@!A§() : §'!E§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §'!E§;
         if(_loc2_)
         {
            if(§'!E§.instance != null)
            {
               return §'!E§.instance;
            }
         }
         return §'!E§.instance = new §'!E§();
      }
      
      public function §<3§() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc1_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null as §&!A§;
         loop6:
         while(true)
         {
            if(!_loc9_)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(int(§6a§.length));
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              break;
                           }
                           if(§§pop() <= §§pop())
                           {
                              break loop6;
                           }
                           if(!_loc9_)
                           {
                              §6a§[0].§4!`§();
                              if(_loc9_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(1);
                           if(_loc9_)
                           {
                              break loop8;
                           }
                           §§push(int(§§pop()));
                           if(!_loc10_)
                           {
                              break loop8;
                           }
                           _loc2_ = §§pop();
                           if(!_loc10_)
                           {
                              break loop6;
                           }
                           §§push(int(§6a§.length));
                           if(!_loc10_)
                           {
                              break loop7;
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc9_)
                        {
                           break loop8;
                        }
                        break loop7;
                     }
                     §§goto(addr01e5);
                  }
                  _loc3_ = §§pop();
                  if(_loc9_)
                  {
                     break loop6;
                  }
               }
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  addr01e5:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop6;
                     }
                     loop9:
                     while(true)
                     {
                        §§push(_loc2_++);
                        if(!_loc9_)
                        {
                           _loc4_ = §§pop();
                           if(!_loc9_)
                           {
                              §§push(false);
                              if(_loc10_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc1_ = §§pop();
                              if(!_loc10_)
                              {
                                 break;
                              }
                           }
                           §§push(0);
                        }
                        loop10:
                        while(true)
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc9_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc10_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc6_ = §§pop();
                                       if(_loc10_)
                                       {
                                          while(true)
                                          {
                                             if(_loc5_ >= _loc6_)
                                             {
                                                break loop10;
                                             }
                                             §§push(_loc5_++);
                                          }
                                          addr01b6:
                                       }
                                    }
                                    break loop10;
                                 }
                                 while(true)
                                 {
                                    _loc7_ = §§pop();
                                    if(_loc10_)
                                    {
                                       break loop9;
                                    }
                                    break loop10;
                                 }
                                 break loop10;
                              }
                              addr019c:
                              §§goto(addr019d);
                           }
                           if(!_loc10_)
                           {
                              break;
                           }
                           §§push(true);
                           if(_loc10_)
                           {
                              break loop12;
                           }
                           addr019d:
                           _loc1_ = §§pop();
                           if(_loc10_)
                           {
                              break;
                           }
                           §§goto(addr01d2);
                        }
                        §§push(_loc1_);
                        if(!_loc9_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              addr01d2:
                              §6a§[_loc4_].§4!`§();
                           }
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        _loc8_ = §6a§[_loc7_];
                        if(!_loc10_)
                        {
                           break loop10;
                        }
                        while(true)
                        {
                           §§push(false);
                           if(!_loc9_)
                           {
                              §§push(true);
                              if(!_loc9_)
                              {
                                 if(_loc8_.§@!G§ != 1)
                                 {
                                    if(_loc10_)
                                    {
                                       §§pop();
                                       §§push(_loc8_.§@!G§ == 2);
                                       if(!_loc9_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc9_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Boolean(§6a§[_loc4_].§?E§.intersects(_loc8_.§?E§)));
                              }
                              if(§§pop())
                              {
                                 break loop11;
                              }
                              §§goto(addr01b6);
                           }
                           §§goto(addr019c);
                        }
                        §§goto(addr019d);
                     }
                     break loop10;
                  }
                  break loop6;
               }
            }
            while(true)
            {
               §§push(_loc2_);
               break loop7;
            }
         }
      }
      
      public function §;!A§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §&!A§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§&!A§> = §6a§;
         if(!_loc5_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc5_)
               {
                  _loc1_++;
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               §§push(Timer.stamp());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§%6§ = §§pop();
            }
         }
      }
      
      public function §[b§(param1:DisplayObject, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:§&!A§ = new §&!A§(param1,param2,param3,param4);
         while(true)
         {
            if(!_loc6_)
            {
               addChild(param1);
               if(!_loc7_)
               {
                  break;
               }
               §6a§.push(_loc5_);
               if(_loc6_)
               {
                  break;
               }
            }
            §<3§();
            break;
         }
      }
      
      public function §7!@§(param1:Array, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as String;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            while(_loc3_ < int(param1.length))
            {
               §§push(param1[_loc3_]);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               if(_loc5_)
               {
                  _loc3_++;
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               §>!W§(_loc4_,param2);
            }
         }
      }
      
      public function §>!W§(param1:String, param2:Object = undefined, param3:DisplayObject = undefined) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc12_)
                  {
                     §§push(true);
                     if(_loc11_)
                     {
                        break;
                     }
                     if(param1 == null)
                     {
                        break loop1;
                     }
                     if(!_loc12_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc12_)
                     {
                        break loop0;
                     }
                  }
                  §§push(param1.length == 0);
                  if(!_loc11_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               break;
            }
            var _loc4_:§38§ = §&d§.§;`§().scale;
            §§push(§&!;§);
            §§push(0);
            §§push(Number(§'!E§.§!o§(param1.length)));
            if(!_loc11_)
            {
               §§push(§§pop() * _loc4_.y);
            }
            var _loc5_:TextField = §§pop().§9Q§(§§pop(),§§pop(),null,param1,null,null,null,null,"center");
            §§push(Lib.current.stage.stageWidth * 0.8);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            while(true)
            {
               if(_loc12_)
               {
                  if(_loc5_.width <= _loc6_)
                  {
                     break;
                  }
                  if(_loc11_)
                  {
                     break;
                  }
                  _loc5_.wordWrap = true;
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               _loc5_.width = _loc6_;
               break;
            }
            var _loc7_:* = Number(_loc5_.width);
            var _loc8_:Number = Number(_loc5_.height);
            var _loc9_:Sprite = new Sprite();
            loop4:
            while(true)
            {
               while(true)
               {
                  if(param3 != null)
                  {
                     _loc9_.addChild(param3);
                     _loc5_.x = param3.width + _loc4_.x * 5;
                     §§push(_loc7_);
                     if(_loc11_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() + _loc5_.x);
                     if(!_loc12_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc11_)
                     {
                        break loop4;
                     }
                     _loc7_ = §§pop();
                     param3.y += (_loc8_ - param3.height) / 2;
                  }
                  _loc9_.addChild(_loc5_);
                  §§push(10 * _loc4_.y);
                  if(!_loc11_)
                  {
                     break loop4;
                  }
                  break;
               }
               var _loc10_:* = §§pop();
               _loc9_.graphics.lineStyle(2.4 * ((_loc4_.x + _loc4_.y) / 2),13421772);
               if(_loc12_)
               {
                  _loc9_.graphics.beginFill(16777215);
                  _loc9_.graphics.drawRoundRect(-_loc10_,-_loc10_,_loc7_ + 2 * _loc10_,_loc8_ + 2 * _loc10_,_loc10_ * 1.5);
                  _loc9_.x = (Lib.current.stage.stageWidth - _loc7_) / 2;
               }
               _loc9_.y = Lib.current.stage.stageHeight - _loc8_ - 3 * _loc10_;
               if(param2 == null)
               {
                  param2 = Number(§'!E§.§]Y§(param1.length));
               }
               §[b§(_loc9_,param2);
               return;
            }
            §§push(Number(§§pop()));
            break loop5;
         }
      }
      
      public function dismissOld(param1:Number) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as §3!I§;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(true)
         {
            §§push(§=B§);
            §§push(int(§6a§.length));
            if(!_loc7_)
            {
               §§push(1);
               if(_loc7_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         var _loc2_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
         if(_loc6_)
         {
            while(_loc2_.§#1§ != _loc2_.end)
            {
               _loc3_ = _loc2_;
               if(_loc6_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.§#1§);
                        if(!_loc7_)
                        {
                           §§push(_loc2_.§['§);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc6_)
                              {
                                 break loop2;
                              }
                           }
                        }
                        var _temp_1:* = §§pop();
                        §§push(_temp_1);
                        §§push(_temp_1);
                        break;
                     }
                     _loc5_ = §§pop();
                     break;
                  }
                  §§pop().§#1§ = §§pop();
                  if(!_loc7_)
                  {
                     §§push(_loc5_);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc4_ = §§pop();
                     if(!_loc7_)
                     {
                        if(§6a§[_loc4_].§%6§ >= param1)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                  }
               }
               §6a§[_loc4_].hide();
            }
         }
      }
      
      public function §1&§(param1:MouseEvent = undefined) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §&!A§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§&!A§> = §6a§;
         if(_loc6_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           _loc2_++;
                           while(true)
                           {
                              §§push(false);
                              §§push(true);
                              if(_loc4_.§@!G§ != 1)
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(_loc4_.§@!G§ == 2);
                                 if(_loc5_)
                                 {
                                    break loop3;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                              break loop2;
                           }
                           §§pop();
                        }
                        §§push(true);
                        if(_loc5_)
                        {
                           break loop2;
                        }
                        if(param1 != null)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 §§push(false);
                                 if(_loc6_)
                                 {
                                    §§push(false);
                                    if(!_loc6_)
                                    {
                                       break loop5;
                                    }
                                    if(_loc4_.§^!=§.mouseX < 0)
                                    {
                                       break;
                                    }
                                    if(_loc5_)
                                    {
                                       break loop5;
                                    }
                                    §§pop();
                                 }
                                 §§push(_loc4_.§^!=§.mouseY >= 0);
                                 if(!_loc5_)
                                 {
                                    break loop5;
                                 }
                                 break;
                              }
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§pop();
                                    §§push(_loc4_.§^!=§.mouseX <= _loc4_.§^!=§.width);
                                    if(_loc5_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              break loop3;
                           }
                           §§push(Boolean(§§pop()));
                           break loop6;
                        }
                        §§goto(addr0142);
                     }
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        §§goto(addr0142);
                     }
                     §§goto(addr013a);
                  }
                  if(!§§pop())
                  {
                     continue loop0;
                  }
                  if(!_loc5_)
                  {
                     _loc4_.hide();
                  }
                  §§goto(addr0153);
               }
               §§pop();
               if(_loc6_)
               {
                  §§push(_loc4_.§^!=§.mouseY <= _loc4_.§^!=§.height);
                  if(!_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        break loop2;
                     }
                  }
                  addr013a:
                  §§push(Boolean(§§pop()));
                  if(_loc6_)
                  {
                     addr0142:
                     §§push(Boolean(§§pop()));
                  }
                  break loop2;
               }
               addr0153:
               return;
            }
         }
      }
   }
}

import haxeutils.math.GrowthFunctions;

