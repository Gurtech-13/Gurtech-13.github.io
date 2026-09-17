package §2n§
{
   import § 0§.§!&§;
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-v§.§?P§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import §`!7§.§]!T§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.level.§1G§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §2!R§ extends §0"§
   {
      
      public static var §4!B§:Boolean = false;
      
      public var text:TextField;
      
      public var §%j§:Vector.<§!&§>;
      
      public var §]l§:Object;
      
      public var §^^§:Object;
      
      public var §-`§:TextField;
      
      public var §`W§:Vector.<§?P§>;
      
      public function §2!R§(param1:Vector.<§!&§>)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §^^§ = null;
               if(!_loc2_)
               {
                  §]l§ = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            super();
            if(_loc3_)
            {
               §%j§ = param1;
            }
            break;
         }
      }
      
      public function §3Z§(param1:int, param2:MouseEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(true)
         {
            §§push(false);
            if(_loc5_)
            {
               if(param1 != §^^§)
               {
                  if(!_loc6_)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(Boolean(param2.buttonDown));
                  }
               }
            }
            if(§§pop())
            {
               §§push(int(§]l§));
               if(!_loc6_)
               {
                  _loc3_ = §§pop();
                  §§push(int(§]l§));
               }
               _loc4_ = §§pop();
               break;
            }
            §§goto(addr00e0);
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(§§findproperty(§5R§));
                  if(!_loc6_)
                  {
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(!_loc5_)
                     {
                        break loop2;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        break;
                     }
                  }
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                  }
                  break loop1;
               }
               §§goto(addr00b8);
            }
            §§pop().§5R§(§§pop(),§§pop());
            §^^§ = param1;
            §-`§.visible = false;
            §2!R§.§4!B§ = true;
            addr00e0:
            return;
         }
         §§push(_loc4_);
         if(!_loc6_)
         {
            if(§§pop() >= param1)
            {
               addr00b8:
               §§push(_loc4_);
               if(_loc6_)
               {
               }
               break loop2;
            }
            §§push(param1);
         }
         break loop2;
      }
      
      override public function §3%§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super.§3%§(param1);
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§5R§));
            §§push(0);
            §§push(int(§%j§.length));
            if(_loc3_)
            {
               §§push(§§pop() - 1);
            }
            §§pop().§5R§(§§pop(),§§pop());
            break;
         }
      }
      
      public function §5R§(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:* = 0;
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(int(§`W§.length));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc12_)
         {
            while(_loc3_ < _loc4_)
            {
               §§push(_loc3_);
               if(_loc12_)
               {
                  _loc3_++;
                  if(_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc5_ = §§pop();
               if(!_loc11_)
               {
                  while(true)
                  {
                     §§push(§`W§[_loc5_]);
                     if(!_loc11_)
                     {
                        §§push(false);
                        if(!_loc12_)
                        {
                           break;
                        }
                        if(_loc5_ < param1)
                        {
                           break;
                        }
                        if(!_loc12_)
                        {
                           break;
                        }
                        §§pop();
                     }
                     §§push(_loc5_ <= param2);
                     if(_loc12_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
                  §§pop().§;!+§(§§pop());
               }
            }
         }
         var _loc6_:§1G§ = §%j§[param1].§0;§;
         var _loc7_:§1G§ = §%j§[param2].§;!1§;
         while(true)
         {
            §§push(_loc7_.§9!8§);
            if(!_loc11_)
            {
               §§push(§§pop() - _loc6_.§9!8§);
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc8_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(!_loc11_)
                  {
                     while(true)
                     {
                        §§push(_loc7_.§9_§.§[9§);
                        if(_loc12_)
                        {
                           §§push(_loc6_.§9_§.§[9§);
                           if(!_loc12_)
                           {
                              break loop6;
                           }
                           §§push(§§pop() - §§pop());
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        if(_loc12_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     _loc3_ = §§pop();
                     if(!_loc12_)
                     {
                        break loop3;
                     }
                  }
                  §§push(_loc7_.§5F§);
                  if(_loc12_)
                  {
                     break loop4;
                  }
                  addr0143:
                  _loc4_ = §§pop();
                  break loop3;
               }
               §§push(§§pop() - §§pop());
               if(_loc12_)
               {
                  §§push(int(§§pop()));
               }
               §§goto(addr0143);
            }
            §§push(_loc6_.§5F§);
            break loop6;
         }
         §§push(_loc7_.§&5§.z);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc6_.§&5§.z);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            §§push("Time: ");
            if(!_loc11_)
            {
               §§push(§]!T§.§<+§(int(Math.round(_loc8_))));
               if(!_loc11_)
               {
                  §§push(§§pop());
               }
               §§push(§§pop() + §§pop());
               if(!_loc12_)
               {
                  break;
               }
               §§push(§§pop());
               if(_loc11_)
               {
                  break;
               }
               §§push(§§pop() + "\nDistance: ");
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(§§pop());
            if(!_loc11_)
            {
               §§push(§§pop());
            }
            break;
         }
         var _loc10_:* = §§pop();
         if(!_loc11_)
         {
            text.text = _loc10_ + int(Math.round(_loc9_ * 0.03333333333333333)) + "m" + "\nLevels finished: " + _loc3_ + "\nAverage speed: " + int(Math.round(_loc9_ / _loc8_ * 10 * 0.03333333333333333)) / 10 + "m/s" + "\nPower cells: " + _loc4_ + "\nPower cells per minute: " + int(Math.round(_loc4_ / (_loc8_ / 60) * 10)) / 10;
            if(!_loc11_)
            {
               layout.apply();
            }
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc1_:* = null as TextField;
         var _loc2_:* = null;
         var _loc3_:* = null as § 7§;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as §?P§;
         var _loc11_:* = null as § 7§;
         var _loc12_:* = null as §&d§;
         if(_loc13_)
         {
            if(int(§%j§.length) <= 0)
            {
               if(!_loc14_)
               {
                  visible = false;
                  if(!_loc14_)
                  {
                     return;
                  }
                  addr00a1:
                  text = §&!;§.§9Q§(0,30,null,null,100);
               }
            }
            else
            {
               layout.add(new §?y§(this),new §30§(true,0.9),new §4o§(§!n§.§&#§));
               if(!_loc14_)
               {
                  §§goto(addr00a1);
               }
            }
         }
         _loc1_ = text;
         _loc2_ = null;
         if(_loc13_)
         {
            while(true)
            {
               if(_loc2_ == null)
               {
                  if(_loc14_)
                  {
                     break;
                  }
                  _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
               break;
            }
         }
         _loc3_ = new §?y§(text);
         if(_loc13_)
         {
            §&d§.§1$§().add(_loc3_,new §;!!§(20,§2u§.LEFT));
         }
         _loc3_ = new §?y§(text);
         if(!_loc14_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(true,40));
            if(_loc13_)
            {
               addChild(text);
            }
         }
         var _loc4_:Vector.<§?P§> = new Vector.<§?P§>(0,false);
         §`W§ = _loc4_;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop12:
               while(true)
               {
                  loop17:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(int(§%j§.length));
                        if(_loc13_)
                        {
                           §§push(1);
                           if(!_loc13_)
                           {
                              break;
                           }
                           if(§§pop() > §§pop())
                           {
                              §§push(120);
                              if(!_loc13_)
                              {
                                 break loop17;
                              }
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc14_)
                                 {
                                    break loop12;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc14_)
                                    {
                                       §§push(17);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc14_)
                                          {
                                             break;
                                          }
                                          §§push(15);
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(!_loc13_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                              }
                              _loc6_ = §§pop();
                              if(_loc14_)
                              {
                                 break loop4;
                              }
                              §§push(0);
                              if(!_loc13_)
                              {
                                 break loop3;
                              }
                           }
                           else
                           {
                              _loc3_ = new §?y§(text);
                              if(_loc13_)
                              {
                                 §&d§.§1$§().add(_loc3_,new §;!!§(20,§2u§.TOP));
                              }
                              §§goto(addr070d);
                           }
                        }
                        _loc7_ = §§pop();
                        §§push(int(§%j§.length));
                        break loop3;
                     }
                     §§goto(addr0503);
                  }
                  §§goto(addr0209);
               }
               §§goto(addr04ff);
            }
            _loc1_ = §-`§;
            _loc2_ = null;
            if(_loc13_)
            {
               while(true)
               {
                  if(_loc2_ == null)
                  {
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
                  }
                  §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
                  break;
               }
            }
            _loc3_ = new §?y§(§-`§);
            if(_loc13_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(20,§2u§.LEFT));
            }
            _loc3_ = new §?y§(§-`§);
            §§push(§§findproperty(§?y§));
            §§push(§`W§);
            §§push(int(§`W§.length));
            if(_loc13_)
            {
               §§push(§§pop() - 1);
            }
            _loc11_ = new §§pop().§?y§(§§pop()[§§pop()]);
            loop14:
            while(true)
            {
               if(!_loc14_)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc3_);
                  §§push(§§findproperty(§+X§));
                  §§push(4);
                  if(!_loc14_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc11_);
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               §§push(false);
               if(!_loc14_)
               {
                  §§push(§2!R§.§4!B§);
                  if(_loc13_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§pop();
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              break loop14;
                           }
                           addr064f:
                           addChild(§-`§);
                           break;
                        }
                        §§goto(addr065a);
                     }
                  }
               }
               §§goto(addr0644);
            }
            §§push(int(§%j§.length) > 2);
            if(_loc13_)
            {
               §§push(Boolean(§§pop()));
            }
            addr0644:
            if(§§pop())
            {
               if(!_loc14_)
               {
                  §§goto(addr064f);
               }
            }
            addr065a:
            _loc3_ = new §?y§(text);
            _loc11_ = new §?y§(§-`§);
            while(true)
            {
               if(_loc13_)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc3_);
                  §§push(§§findproperty(§+X§));
                  §§push(4);
                  if(_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc11_);
                  if(_loc14_)
                  {
                     break;
                  }
                  addEventListener(MouseEvent.CLICK,§[!;§);
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               addr070d:
               §4l§(new §?y§(text),20);
               break;
            }
            return;
         }
         addr0209:
         _loc8_ = §§pop();
         if(_loc14_)
         {
            break loop4;
         }
         loop0:
         while(true)
         {
            §§push(_loc7_);
            §§push(_loc8_);
            addr0503:
            while(§§pop() < §§pop())
            {
               §§push(_loc7_);
               if(_loc13_)
               {
                  _loc7_++;
                  if(_loc13_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc9_ = §§pop();
               _loc10_ = new §?P§(§%j§[_loc9_].data,null,false);
               _loc3_ = new §?y§(_loc10_);
               if(_loc13_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc3_);
                     if(_loc13_)
                     {
                        if(_loc5_ == null)
                        {
                           §§push(new §;R§(true));
                           break;
                        }
                     }
                     §§push(new §`!W§(true,_loc5_));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
               }
               _loc3_ = new §?y§(_loc10_);
               if(_loc13_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc3_);
                     if(_loc13_)
                     {
                        if(_loc6_ == null)
                        {
                           §§push(new §;R§(false));
                           break;
                        }
                     }
                     §§push(new §`!W§(false,_loc6_));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
                  addChild(_loc10_);
                  _loc10_.buttonMode = true;
               }
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,(function(param1:Array, param2:Array):Function
               {
                  var f:Array;
                  var a1:Array;
                  var _temp_1:* = true;
                  var _loc3_:Boolean = false;
                  var _loc4_:Boolean = _temp_1;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        a1 = param1;
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     f = param2;
                     break;
                  }
                  return function(param1:MouseEvent):void
                  {
                     f[0](int(a1[0]),param1);
                  };
               })([_loc9_],[§8k§]));
               _loc10_.addEventListener(MouseEvent.MOUSE_MOVE,(function(param1:Array, param2:Array):Function
               {
                  var f1:Array;
                  var a11:Array;
                  var _temp_1:* = false;
                  var _loc3_:Boolean = true;
                  var _loc4_:Boolean = _temp_1;
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        a11 = param1;
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     f1 = param2;
                     break;
                  }
                  return function(param1:MouseEvent):void
                  {
                     f1[0](int(a11[0]),param1);
                  };
               })([_loc9_],[§3Z§]));
               loop7:
               while(true)
               {
                  if(_loc13_)
                  {
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc9_);
                              if(!_loc14_)
                              {
                                 §§push(0);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       break loop9;
                                    }
                                    _loc3_ = new §?y§(_loc10_);
                                    if(_loc13_)
                                    {
                                       §§push(§&d§.§1$§());
                                       §§push(_loc3_);
                                       §§push(§§findproperty(§;!!§));
                                       §§push(20);
                                       if(!_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§pop().add(§§pop(),new §§pop().§;!!§(§§pop(),§2u§.LEFT));
                                       if(!_loc13_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    §§push(§&d§.§1$§());
                                    §§push(_loc3_);
                                    §§push(§§findproperty(§;!!§));
                                    §§push(20);
                                    if(!_loc14_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§pop().add(§§pop(),new §§pop().§;!!§(§§pop(),§2u§.TOP));
                                    if(!_loc14_)
                                    {
                                       break loop7;
                                    }
                                    continue loop0;
                                 }
                                 §§push(_loc9_);
                                 if(_loc14_)
                                 {
                                    break loop8;
                                 }
                              }
                              §§push(5);
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§goto(addr03cf);
                           }
                           §§push(int(§§pop() % §§pop()));
                           break loop8;
                        }
                        _loc3_ = new §?y§(_loc10_);
                        if(_loc13_)
                        {
                           §§push(§&d§.§1$§());
                           §§push(_loc3_);
                           §§push(§§findproperty(§;!!§));
                           §§push(20);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().add(§§pop(),new §§pop().§;!!§(§§pop(),§2u§.LEFT));
                        }
                        _loc3_ = new §?y§(_loc10_);
                        _loc11_ = new §?y§(§`W§[0]);
                        if(_loc13_)
                        {
                           §§push(§&d§.§1$§());
                           §§push(_loc3_);
                           §§push(§§findproperty(§+X§));
                           §§push(4);
                           if(_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc11_);
                        }
                        break loop7;
                     }
                     addr03cf:
                     if(§§pop() == 0)
                     {
                        break loop9;
                     }
                     _loc3_ = new §?y§(_loc10_);
                     §§push(§§findproperty(§?y§));
                     §§push(§`W§);
                     §§push(_loc9_);
                     if(_loc13_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc11_ = new §§pop().§?y§(§§pop()[§§pop()]);
                     _loc12_ = null;
                     while(true)
                     {
                        if(!_loc14_)
                        {
                           if(_loc12_ != null)
                           {
                              _loc12_ = _loc12_;
                              break;
                           }
                        }
                        _loc12_ = §&d§.§1$§();
                        if(_loc13_)
                        {
                           break;
                        }
                        break loop7;
                     }
                     §§push(_loc12_);
                     §§push(_loc3_);
                     §§push(§§findproperty(§+X§));
                     §§push(4);
                     if(!_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc11_);
                     if(_loc13_)
                     {
                        _loc12_.add(_loc3_,new §4$§(false,0.5),_loc11_);
                     }
                     break;
                  }
                  §§goto(addr0348);
               }
               §`W§.push(_loc10_);
               continue loop0;
            }
            §-`§ = §&!;§.§9Q§(0,10,null,"Click and drag to view combined statistics");
            break loop4;
         }
         addr04ff:
      }
      
      public function §8k§(param1:int, param2:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §]l§ = §^^§ = param1;
         if(_loc5_)
         {
            §5R§(param1,param1);
         }
      }
      
      public function §[!;§(param1:MouseEvent) : void
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
               loop2:
               while(true)
               {
                  if(_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(false);
                           if(_loc2_)
                           {
                              §§push(false);
                              if(_loc2_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc2_)
                                       {
                                          if(mouseX < §`W§[0].x)
                                          {
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             break loop5;
                                          }
                                       }
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          §§push(mouseX <= §`W§[int(§`W§.length) - 1].x + §`W§[int(§`W§.length) - 1].width);
                                          if(_loc2_)
                                          {
                                             break loop5;
                                          }
                                          break;
                                       }
                                       break loop4;
                                    }
                                    if(!§§pop())
                                    {
                                       break loop4;
                                    }
                                    if(_loc3_)
                                    {
                                       break loop3;
                                    }
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop6;
                              }
                              break loop3;
                           }
                           §§push(mouseY >= §`W§[0].y);
                           if(_loc2_)
                           {
                              break loop3;
                           }
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop1;
                        }
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop4;
                  }
                  §§push(mouseY <= §`W§[0].y + §`W§[0].height);
                  if(_loc2_)
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
               if(!_loc3_)
               {
                  param1.stopImmediatePropagation();
               }
            }
            break;
         }
      }
   }
}

