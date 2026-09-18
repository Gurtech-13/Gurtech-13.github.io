package §<!N§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import map.Map;
   import map.Path;
   import §%!Q§.§+#§;
   import §-!!§.§8!8§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.save.§0d§;
   import com.player03.run3.save.§2!;§;
   import flash.Boot;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,1§ extends §8!8§ implements §@[§
   {
      
      public static var init__:Boolean;
      
      public static var §1!Q§:Vector.<Point>;
      
      public static var §@!Z§:Vector.<Point>;
      
      public var §;b§:Boolean;
      
      public var §-?§:Array;
      
      public var §87§:Number;
      
      public var §<!=§:§+#§;
      
      public var §5!J§:Number;
      
      public function §,1§(param1:int, param2:§+#§)
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc7_:* = 0;
         if(!_loc17_)
         {
            §§push(this);
            §§push(§#_§);
            if(_loc16_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            while(true)
            {
               if(_loc16_)
               {
                  §<!=§ = param2;
                  if(_loc17_)
                  {
                     break;
                  }
                  if(param2.§=R§ == null)
                  {
                     break;
                  }
                  if(_loc17_)
                  {
                     break;
                  }
               }
               Boot.lastError = new Error();
               if(!_loc17_)
               {
                  throw "Can\'t display a hidden path!";
               }
               break;
            }
         }
         §§push(int(§+#§.§,!B§().indexOf(param2,0)));
         if(_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§+#§ = param2;
         §§push(_loc3_);
         if(_loc16_)
         {
            §§push(§§pop() + 1);
            if(!_loc17_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(int(§+#§.§,!B§().length));
         if(_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(_loc16_)
         {
            loop0:
            while(_loc5_ < _loc6_)
            {
               §§push(_loc5_);
               if(!_loc17_)
               {
                  _loc5_++;
                  if(!_loc17_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc7_ = §§pop();
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc16_)
                        {
                           if(§+#§.§,!B§()[_loc7_].§=R§ != _loc4_)
                           {
                              break loop0;
                           }
                           if(!_loc16_)
                           {
                              break;
                           }
                           §§push(§-?§);
                           if(!_loc16_)
                           {
                              break loop3;
                           }
                           if(§§pop() != null)
                           {
                              break loop2;
                           }
                           if(!_loc16_)
                           {
                              continue loop0;
                           }
                        }
                        §-?§ = [];
                        if(!_loc17_)
                        {
                           break loop2;
                        }
                        continue loop0;
                     }
                     §§goto(addr0162);
                  }
                  §§pop().push(§+#§.§,!B§()[_loc7_]);
                  if(!_loc16_)
                  {
                     break loop4;
                  }
                  continue loop0;
               }
               §§push(§-?§);
               break loop3;
            }
         }
         §§push(§§findproperty(§87§));
         §§push(0.3);
         if(_loc16_)
         {
            §§push(§§pop() * param1);
         }
         §§pop().§87§ = §§pop();
         addr0162:
         var _loc8_:Map = Map.§@!A§();
         if(_loc16_)
         {
            §§push(param2.§&k§);
            if(_loc16_)
            {
               §§push(int(§§pop()));
            }
            _loc5_ = §§pop();
         }
         var _loc9_:Point = _loc8_.§;O§(param2.§=!N§).§;3§(_loc5_,null,null);
         if(!_loc17_)
         {
            x = _loc9_.x;
            while(true)
            {
               if(_loc16_)
               {
                  y = _loc9_.y;
                  if(_loc17_)
                  {
                     break;
                  }
               }
               rotation = Number(Math.random()) * 360;
               break;
            }
         }
         var _loc10_:Rectangle = new Rectangle(0,0,28,28);
         var _loc11_:§ 7§ = new § 6§(_loc10_);
         while(true)
         {
            if(_loc16_)
            {
               §&d§.§1$§().add(_loc11_,new §;R§(true));
               if(_loc17_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(_loc11_,new §;R§(false));
            break;
         }
         var _loc12_:Shape = new Shape();
         var _loc13_:Vector.<Point> = §,1§.§1!Q§;
         _loc11_ = new § 6§(_loc10_);
         var _loc14_:§<!T§ = new §<!T§(_loc13_);
         while(true)
         {
            if(_loc16_)
            {
               _loc14_.§4#§ = 5.6;
               if(!_loc17_)
               {
                  _loc14_.§=M§ = 16777215;
                  if(!_loc16_)
                  {
                     break;
                  }
               }
            }
            §&d§.§1$§().add(new §?y§(_loc12_),_loc14_,_loc11_);
            if(!_loc17_)
            {
               break;
            }
            §§goto(addr02b2);
         }
         addChild(_loc12_);
         addr02b2:
         var _loc15_:Shape = new Shape();
         _loc13_ = §,1§.§@!Z§;
         _loc11_ = new § 6§(_loc10_);
         _loc14_ = new §<!T§(_loc13_);
         if(_loc16_)
         {
            _loc14_.fill = §^F§.INVISIBLE;
            if(!_loc17_)
            {
               §&d§.§1$§().add(new §?y§(_loc15_),_loc14_,_loc11_);
               if(_loc16_)
               {
                  addChild(_loc15_);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
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
               if(_loc2_)
               {
                  §§push(§§findproperty(§5!J§));
                  §§push(§5!J§);
                  if(_loc2_)
                  {
                     §§push(§§pop() + param1);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().§5!J§ = §§pop();
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§5!J§);
                        if(_loc2_)
                        {
                           §§push(§87§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(§§pop() <= §§pop())
                           {
                              break loop0;
                           }
                           if(!_loc3_)
                           {
                              if(alpha >= 1)
                              {
                                 break loop2;
                              }
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           §§push(§5!J§);
                        }
                        §§push(§87§);
                        if(_loc2_)
                        {
                           break;
                        }
                        addr008b:
                        addr008c:
                        if(§§pop() <= Number(§§pop()))
                        {
                           alpha = (§5!J§ - §87§) / 0.3;
                           break loop2;
                        }
                        if(!_loc3_)
                        {
                           alpha = 1;
                           if(_loc2_)
                           {
                           }
                           break loop2;
                        }
                     }
                     §§push(§§pop() + 0.3);
                     if(!_loc3_)
                     {
                        §§goto(addr008b);
                     }
                     §§goto(addr008c);
                  }
                  if(!§;b§)
                  {
                     break loop0;
                  }
               }
               scaleX = Number(Math.sin(§5!J§ * 3.141592653589793)) * 0.15 + 1.15;
               break;
            }
            scaleY = scaleX;
            break;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null as §+#§;
         var _loc6_:* = null as §2!;§;
         var _loc1_:§+#§ = §<!=§;
         var _loc2_:§2!;§ = _loc1_.§,U§;
         §§push(§§findproperty(§;b§));
         §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
         §§push(int(_loc1_.§ b§.length));
         if(_loc8_)
         {
            §§push(§§pop() + int(_loc1_.§-!>§.length));
         }
         §§pop().§;b§ = §§pop() < §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(!_loc7_)
               {
                  §§push(§;b§);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop2;
                  }
                  if(!_loc7_)
                  {
                     §§pop();
                     §§push(§-?§);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() == null);
                     if(_loc7_)
                     {
                        break loop2;
                     }
                  }
                  §§push(!§§pop());
                  if(_loc7_)
                  {
                     break loop2;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop2;
            }
            _loc4_ = §§pop();
            §§goto(addr014f);
         }
         if(§§pop())
         {
            while(true)
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(int(§§pop()));
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               _loc3_ = §§pop();
               §§push(§-?§);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               break loop3;
            }
            loop1:
            while(§§pop() < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(_loc8_)
               {
                  _loc3_++;
               }
               _loc6_ = _loc5_.§,U§;
               if(!_loc7_)
               {
                  §§push(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))));
                  §§push(int(_loc5_.§ b§.length));
                  if(_loc8_)
                  {
                     §§push(§§pop() + int(_loc5_.§-!>§.length));
                  }
                  if(§§pop() >= §§pop())
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        continue loop1;
                     }
                     break;
                     addr014f:
                  }
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §;b§ = true;
               break;
            }
         }
         alpha = 0;
         §5!J§ = 0;
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null as §+#§;
         var _loc6_:* = false;
         var _loc7_:* = null as §2!;§;
         var _loc2_:§+#§ = §<!=§;
         loop3:
         while(true)
         {
            §§push(_loc2_.§+!=§);
            if(_loc8_)
            {
               §§push(int(_loc2_.§ b§.length));
               if(_loc8_)
               {
                  §§push(§§pop() + int(_loc2_.§-!>§.length));
                  if(_loc8_)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §<!=§.§>c§();
                              if(_loc8_)
                              {
                                 return;
                              }
                              addr0098:
                              §§push(§-?§);
                              if(_loc9_)
                              {
                                 break loop4;
                              }
                           }
                           else
                           {
                              §§push(§-?§);
                              if(_loc8_)
                              {
                                 if(§§pop() == null)
                                 {
                                    break loop3;
                                 }
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 §§goto(addr0098);
                              }
                           }
                           §§push(§§pop());
                           break loop4;
                        }
                        while(true)
                        {
                           §§push(int(_loc4_.length));
                        }
                        addr0174:
                     }
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        break loop5;
                     }
                     addr0173:
                  }
               }
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     break loop3;
                  }
                  _loc5_ = _loc4_[_loc3_];
                  loop6:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        _loc3_++;
                        if(_loc8_)
                        {
                           §§push(_loc5_.§+!=§);
                           §§push(int(_loc5_.§ b§.length));
                           if(!_loc9_)
                           {
                              §§push(§§pop() + int(_loc5_.§-!>§.length));
                           }
                           if(§§pop() < §§pop())
                           {
                              §§push(true);
                              if(!_loc9_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc6_ = §§pop();
                              break;
                           }
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                     }
                     _loc7_ = _loc5_.§,U§;
                     if(!_loc8_)
                     {
                        break loop1;
                     }
                     §§push(int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
                     §§push(int(_loc5_.§ b§.length));
                     if(_loc8_)
                     {
                        §§push(§§pop() + int(_loc5_.§-!>§.length));
                     }
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        _loc6_ = §§pop();
                        if(!_loc9_)
                        {
                           break loop6;
                        }
                        §§goto(addr0172);
                     }
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                        §§goto(addr0172);
                     }
                     else
                     {
                        §§goto(addr0173);
                     }
                  }
                  §§goto(addr0161);
               }
               _loc5_.§>c§();
               addr0172:
               return;
            }
            §§goto(addr0174);
         }
         _loc5_ = §<!=§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc5_.§+!=§ = int(_loc5_.§ b§.length);
               if(!_loc9_)
               {
                  _loc5_.§?D§.§3X§();
                  if(_loc9_)
                  {
                     break;
                  }
               }
            }
            §<!=§.§>c§();
            break;
         }
      }
   }
}

