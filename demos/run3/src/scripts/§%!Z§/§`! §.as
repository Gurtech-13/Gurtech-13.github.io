package §%!Z§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §-!!§.§&!;§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.run3.character.§'O§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import openfl.Lib;
   
   public class §`! § extends §'!O§
   {
      
      public var §-7§:TextField;
      
      public var §>!Q§:Number;
      
      public var §[!>§:int;
      
      public var §,!D§:Vector.<§1T§>;
      
      public function §`! §(param1:String, param2:Number, param3:Object = undefined)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         while(true)
         {
            if(!_loc10_)
            {
               §[!>§ = 16777215;
               if(!_loc10_)
               {
                  super(100,100,§&d§.§1$§());
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            §-7§ = §&!;§.§9Q§(0,param2,null,param1,param3,null,null,null,"center");
            break;
         }
         var _loc4_:TextField = §-7§;
         var _loc5_:* = null;
         var _loc6_:§&d§ = layout;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc9_)
               {
                  while(true)
                  {
                     if(_loc5_ == null)
                     {
                        if(_loc10_)
                        {
                           break;
                        }
                        _loc5_ = int(Number(_loc4_.defaultTextFormat.size));
                     }
                     if(_loc6_ == null)
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§push(_loc6_);
                     break loop2;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(new §?y§(_loc4_),new §=!]§(int(_loc5_)));
            break;
         }
         var _loc7_:§ 7§ = new §?y§(§-7§);
         _loc6_ = layout;
         if(_loc9_)
         {
            while(true)
            {
               if(_loc6_ == null)
               {
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(_loc6_);
               }
               §§pop().add(_loc7_,new §;R§(true));
               if(!_loc10_)
               {
                  §>!Q§ = §-7§.height;
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               addr0151:
               addChild(§-7§);
            }
            §-7§.addEventListener(Event.CHANGE,§ l§);
            if(!_loc10_)
            {
               §§goto(addr0151);
            }
         }
         while(true)
         {
            §§push(§-!I§);
            if(_loc9_)
            {
               §§push(§§pop());
               if(_loc10_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc8_:* = §§pop();
         if(_loc9_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc8_)));
            if(!_loc10_)
            {
               _loc8_();
            }
         }
      }
      
      public function §-!I§() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc8_:* = null as Vector.<§1T§>;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc1_:Stage = Lib.get_current().stage;
         §§push(§-7§.width * 0.1);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§-7§.height * 0.1);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop15:
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(5);
                     if(!_loc13_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc12_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc13_)
                              {
                                 break loop2;
                              }
                              if(§§pop() > §§pop())
                              {
                                 §§push(5);
                                 if(!_loc12_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc3_);
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc13_)
                                 {
                                    break loop15;
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc12_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc13_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr00e9);
                                 }
                                 else
                                 {
                                    §§goto(addr00bc);
                                 }
                              }
                              else
                              {
                                 §§push(_loc3_);
                                 if(_loc13_)
                                 {
                                    break loop15;
                                 }
                                 §§push(5);
                                 if(_loc13_)
                                 {
                                    break loop2;
                                 }
                                 §§push(_loc2_);
                              }
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc13_)
                           {
                              break;
                           }
                           break loop2;
                        }
                     }
                     if(§§pop() > §§pop())
                     {
                        §§push(5);
                        §§push(_loc2_);
                        break loop2;
                     }
                     break loop3;
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr00bd);
            }
            §-7§.x = _loc2_;
            §-7§.y = _loc3_;
            while(true)
            {
               §§push(§§findproperty(width));
               §§push(_loc2_);
               if(_loc12_)
               {
                  §§push(§§pop() * 2);
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               §§push(§§pop() + §-7§.width);
               break;
            }
            §§pop().width = §§pop();
            addr00e9:
            addr00f7:
            §§push(width);
            if(_loc12_)
            {
               §§push(§§pop() / 2);
            }
            var _loc4_:Number = §§pop();
            if(_loc12_)
            {
               §§push(§§findproperty(height));
               §§push(_loc3_);
               if(!_loc13_)
               {
                  §§push(§§pop() * 2);
                  if(!_loc13_)
                  {
                     §§push(§§pop() + §-7§.height);
                  }
               }
               §§pop().height = §§pop();
            }
            while(true)
            {
               §§push(height);
               if(_loc12_)
               {
                  §§push(§§pop() / 2);
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc5_:* = §§pop();
            §§push(§-7§.width * 0.05);
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§-7§.height * 0.05);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            loop7:
            while(true)
            {
               if(_loc12_)
               {
                  if(§,!D§ != null)
                  {
                     break;
                  }
               }
               _loc8_ = new Vector.<§1T§>(0,false);
               loop8:
               while(true)
               {
                  if(!_loc13_)
                  {
                     §,!D§ = _loc8_;
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(0);
                     if(!_loc13_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                     _loc9_ = §§pop();
                     if(!_loc13_)
                     {
                        break loop8;
                     }
                     break loop7;
                  }
                  while(true)
                  {
                     if(§§pop() >= 8)
                     {
                        break loop7;
                     }
                     §§push(_loc9_);
                     if(_loc12_)
                     {
                        _loc9_++;
                        if(_loc12_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc10_ = §§pop();
                     if(_loc12_)
                     {
                        §,!D§.push(new §1T§(0,0));
                     }
                     break loop8;
                  }
                  break loop7;
                  addr01f1:
               }
               while(true)
               {
                  §§goto(addr01f1);
               }
               break;
            }
            var _loc11_:Point = §,!D§[0];
            while(true)
            {
               if(!_loc13_)
               {
                  _loc11_.x = _loc2_ + _loc6_;
                  if(_loc13_)
                  {
                     break;
                  }
               }
               _loc11_.y = _loc3_ + _loc7_;
               break;
            }
            _loc11_ = §,!D§[1];
            if(_loc12_)
            {
               _loc11_.x = _loc4_;
               if(_loc12_)
               {
                  _loc11_.y = 0;
               }
            }
            _loc11_ = §,!D§[2];
            while(true)
            {
               if(_loc12_)
               {
                  _loc11_.x = _loc2_ + §-7§.width - _loc6_;
                  if(_loc13_)
                  {
                     break;
                  }
               }
               _loc11_.y = _loc3_ + _loc7_;
               break;
            }
            _loc11_ = §,!D§[3];
            if(!_loc13_)
            {
               _loc11_.x = width;
               if(_loc12_)
               {
                  _loc11_.y = _loc5_;
               }
            }
            _loc11_ = §,!D§[4];
            while(true)
            {
               if(_loc12_)
               {
                  _loc11_.x = _loc2_ + §-7§.width - _loc6_;
                  if(_loc13_)
                  {
                     break;
                  }
               }
               _loc11_.y = _loc3_ + §-7§.height - _loc7_;
               break;
            }
            _loc11_ = §,!D§[5];
            if(_loc12_)
            {
               _loc11_.x = _loc4_;
               if(_loc12_)
               {
                  _loc11_.y = height;
               }
            }
            _loc11_ = §,!D§[6];
            while(true)
            {
               if(_loc12_)
               {
                  _loc11_.x = _loc2_ + _loc6_;
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               _loc11_.y = _loc3_ + §-7§.height - _loc7_;
               break;
            }
            _loc11_ = §,!D§[7];
            while(true)
            {
               if(!_loc13_)
               {
                  _loc11_.x = 0;
                  _loc11_.y = _loc5_;
                  §2!V§.smooth(§,!D§);
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               graphics.clear();
               if(!_loc13_)
               {
                  graphics.beginFill(§[!>§);
               }
               break;
            }
            §1T§.§^7§(graphics,§,!D§);
            graphics.endFill();
            return;
         }
         addr00bd:
         _loc3_ = §§pop() * §§pop();
         addr00bc:
         break loop3;
      }
      
      public function § l§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§-7§.height - §>!Q§);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
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
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        §§push(0);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           break loop2;
                        }
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        break loop2;
                     }
                     break loop1;
                  }
                  §§push(§§pop() < §§pop());
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr00a7);
               }
               §§push(5);
               break loop3;
            }
            §§push(-§§pop());
            break loop2;
         }
         layout.apply();
         if(_loc4_)
         {
            §>!Q§ = §-7§.height;
         }
         addr00a7:
      }
   }
}

