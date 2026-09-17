package §%!Z§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §=w§.§@[§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§[k§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §'§ extends §[k§ implements §@[§
   {
      
      public var §+!P§:Function;
      
      public var §@#§:Vector.<§^U§>;
      
      public var §?!+§:String;
      
      public var §[Y§:Number;
      
      public var §]n§:Vector.<§^U§>;
      
      public var §+j§:Vector.<§`! §>;
      
      public function §'§(param1:String = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            §[Y§ = 24;
            if(!_loc5_)
            {
               super();
            }
         }
         var _loc2_:Vector.<§`! §> = new Vector.<§`! §>(0,false);
         if(_loc6_)
         {
            §+j§ = _loc2_;
         }
         var _loc3_:Vector.<§^U§> = new Vector.<§^U§>(0,false);
         if(!_loc5_)
         {
            §]n§ = _loc3_;
         }
         var _loc4_:Vector.<§^U§> = new Vector.<§^U§>(0,false);
         while(true)
         {
            if(!_loc5_)
            {
               §@#§ = _loc4_;
               if(!_loc6_)
               {
                  break;
               }
            }
            §?!+§ = param1;
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               §§push(§+!P§);
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               if(§§pop() == null)
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
            }
            §+!P§(param1);
            break;
         }
      }
      
      public function reset() : void
      {
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc26_:Boolean = true;
         var _loc27_:* = §§pop();
         var _loc5_:* = null as §^U§;
         var _loc7_:* = null as §,l§;
         var _loc8_:* = null as String;
         var _loc9_:* = null as String;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = null as String;
         var _loc13_:* = NaN;
         var _loc14_:* = null;
         var _loc15_:* = null as §,l§;
         var _loc16_:* = null as Rectangle;
         var _loc17_:* = null as § 7§;
         var _loc18_:* = null as String;
         var _loc19_:Number = NaN;
         var _loc20_:* = null as §&d§;
         var _loc23_:* = null as §^U§;
         var _loc25_:* = null as §`! §;
         if(_loc26_)
         {
            if(§?!+§ != null)
            {
               var _loc1_:§,l§ = §,l§.parse(§?!+§).§2T§("data").next();
               if(!_loc27_)
               {
                  if(_loc1_ != null)
                  {
                     var _loc2_:int = int(Lib.get_current().stage.stageWidth);
                     var _loc3_:int = int(Lib.get_current().stage.stageHeight);
                     var _loc6_:* = _loc1_.§2T§("bubble");
                     if(_loc26_)
                     {
                        while(Boolean(_loc6_.hasNext()))
                        {
                           _loc7_ = _loc6_.next();
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc7_.get("text"));
                                       if(_loc26_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc26_)
                                          {
                                             break;
                                          }
                                          _loc8_ = §§pop();
                                          if(_loc27_)
                                          {
                                             continue loop19;
                                          }
                                          §§push(_loc7_.get("x"));
                                          if(_loc27_)
                                          {
                                             break loop7;
                                          }
                                          _loc9_ = §§pop();
                                          §§push(_loc9_);
                                          if(_loc27_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       §§push(null);
                                       if(!_loc27_)
                                       {
                                          §§push(§§pop());
                                          if(_loc27_)
                                          {
                                             continue loop8;
                                          }
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc27_)
                                                {
                                                   break;
                                                }
                                                §§push(Std.parseFloat(_loc9_));
                                                if(!_loc26_)
                                                {
                                                   break loop19;
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc27_)
                                                {
                                                   _loc11_ = §§pop();
                                                   if(!_loc27_)
                                                   {
                                                      continue loop19;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr0233);
                                                }
                                             }
                                             else
                                             {
                                                §§push(0);
                                                if(!_loc27_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc26_)
                                                   {
                                                      §§goto(addr01c6);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr020f);
                                                   }
                                                }
                                                §§goto(addr0252);
                                             }
                                             §§goto(addr01c8);
                                          }
                                          §§goto(addr01e1);
                                       }
                                       §§goto(addr01e4);
                                    }
                                    §§goto(addr01d7);
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(Boolean(Math.isNaN(_loc11_)));
                                          if(!_loc27_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc26_)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc10_ = Number(_loc11_);
                                                   if(_loc27_)
                                                   {
                                                      §§goto(addr01f0);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc26_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc26_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         if(!_loc26_)
                                                         {
                                                            §§goto(addr0287);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr01c6:
                                                         _loc10_ = §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0243);
                                                   }
                                                }
                                                addr01c8:
                                                §§push(_loc7_.get("y"));
                                                break loop6;
                                             }
                                          }
                                          §§goto(addr0226);
                                       }
                                       §§goto(addr0253);
                                    }
                                    §§goto(addr0234);
                                 }
                                 §§goto(addr0227);
                              }
                              _loc12_ = §§pop();
                              addr01e1:
                              §§goto(addr01e3);
                           }
                           §§push(§§pop());
                           if(!_loc26_)
                           {
                              break loop7;
                           }
                           addr01d7:
                           §§push(§§pop());
                           if(!_loc27_)
                           {
                              break loop7;
                           }
                           addr01e3:
                           addr01e4:
                           loop8:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 addr0252:
                                 if(§§pop() != null)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!_loc27_)
                                          {
                                             addr01f0:
                                             §§push(Std.parseFloat(_loc12_));
                                             if(!_loc26_)
                                             {
                                                break;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc26_)
                                             {
                                                break loop9;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc26_)
                                             {
                                                break;
                                             }
                                             _loc13_ = §§pop();
                                             if(_loc27_)
                                             {
                                                break loop14;
                                             }
                                          }
                                          addr0227:
                                          §§push(Boolean(Math.isNaN(_loc13_)));
                                          if(!_loc27_)
                                          {
                                             addr0226:
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc26_)
                                             {
                                                break loop14;
                                             }
                                             break loop8;
                                          }
                                          §§push(0);
                                          if(_loc26_)
                                          {
                                             addr0243:
                                             _loc11_ = Number(§§pop());
                                             if(_loc26_)
                                             {
                                             }
                                             break loop8;
                                          }
                                       }
                                       addr0234:
                                       _loc11_ = §§pop();
                                       break loop8;
                                    }
                                    addr0233:
                                    §§push(Number(_loc13_));
                                    break loop15;
                                 }
                                 §§push(0);
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              addr0253:
                              _loc11_ = §§pop();
                              break;
                           }
                           §§push(§§findproperty(§";§));
                           §§push(_loc8_);
                           §§push(_loc10_);
                           §§push(_loc11_);
                           §§push(Std);
                           §§push(_loc7_.get("size"));
                           if(_loc26_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop().parseInt(§§pop()),Std.parseInt(_loc7_.get("width")));
                           addr0287:
                           _loc14_ = _loc7_.§2T§("connection");
                           if(!_loc27_)
                           {
                              while(Boolean(_loc14_.hasNext()))
                              {
                                 _loc15_ = _loc14_.next();
                                 §§push(§§findproperty(§^U§));
                                 §§push(§+j§);
                                 §§push(Std);
                                 §§push(_loc15_.get("index"));
                                 if(!_loc27_)
                                 {
                                    §§push(§§pop());
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop()[int(§§pop().parseInt(§§pop()))]);
                                    §§push(§§findproperty(§?y§));
                                    if(_loc26_)
                                    {
                                       if(int(§+j§.length) <= 0)
                                       {
                                          §§push(null);
                                          break;
                                       }
                                    }
                                    §§push(§+j§);
                                    §§push(int(§+j§.length));
                                    if(!_loc27_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    §§push(§§pop()[§§pop()]);
                                    break;
                                 }
                                 _loc5_ = new §§pop().§^U§(§§pop(),new §§pop().§?y§(§§pop()));
                                 if(!_loc27_)
                                 {
                                    §]n§.push(_loc5_);
                                 }
                              }
                           }
                           _loc14_ = _loc7_.§2T§("tail");
                           if(!_loc27_)
                           {
                              while(Boolean(_loc14_.hasNext()))
                              {
                                 _loc15_ = _loc14_.next();
                                 _loc16_ = new Rectangle();
                                 _loc17_ = new § 6§(_loc16_);
                                 if(_loc26_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc15_.get("x"));
                                       if(_loc26_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc26_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(§§pop());
                                       if(!_loc27_)
                                       {
                                          _loc18_ = §§pop();
                                          §§push(_loc18_);
                                       }
                                       break;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() != null)
                                          {
                                             if(!_loc27_)
                                             {
                                                §§push(Std.parseFloat(_loc18_));
                                                if(!_loc27_)
                                                {
                                                   _loc19_ = Number(§§pop());
                                                   §§push(Boolean(Math.isNaN(_loc19_)));
                                                   if(!_loc27_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc27_)
                                                      {
                                                         §§push(_loc19_);
                                                         if(_loc26_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc27_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         _loc13_ = §§pop();
                                                         if(_loc27_)
                                                         {
                                                         }
                                                      }
                                                      break loop12;
                                                   }
                                                   §§push(0);
                                                   if(_loc27_)
                                                   {
                                                      addr041a:
                                                      §§push(Number(§§pop()));
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc13_ = §§pop();
                                             }
                                             break loop12;
                                          }
                                          §§push(0);
                                          §§goto(addr041a);
                                       }
                                       _loc13_ = §§pop();
                                       break;
                                    }
                                 }
                                 break loop12;
                              }
                           }
                        }
                     }
                     §§push(0);
                     if(_loc26_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc21_:* = §§pop();
                     var _loc22_:Vector.<§^U§> = §]n§;
                     while(true)
                     {
                        loop23:
                        while(true)
                        {
                           if(!_loc27_)
                           {
                              while(true)
                              {
                                 §§push(_loc21_);
                                 if(!_loc26_)
                                 {
                                    break loop23;
                                 }
                                 if(§§pop() < int(_loc22_.length))
                                 {
                                    _loc23_ = _loc22_[_loc21_];
                                    if(!_loc27_)
                                    {
                                       _loc21_++;
                                       if(_loc26_)
                                       {
                                          addChild(_loc23_);
                                       }
                                    }
                                    continue;
                                 }
                                 if(!_loc26_)
                                 {
                                    continue loop24;
                                 }
                              }
                           }
                           §§push(0);
                           if(!_loc27_)
                           {
                              §§push(int(§§pop()));
                           }
                           break;
                        }
                        _loc21_ = §§pop();
                        continue loop24;
                     }
                     _loc22_ = §@#§;
                     loop24:
                     while(true)
                     {
                        loop25:
                        while(true)
                        {
                           if(_loc26_)
                           {
                              while(true)
                              {
                                 §§push(_loc21_);
                                 if(!_loc26_)
                                 {
                                    break loop25;
                                 }
                                 if(§§pop() < int(_loc22_.length))
                                 {
                                    _loc23_ = _loc22_[_loc21_];
                                    if(_loc26_)
                                    {
                                       _loc21_++;
                                       if(!_loc26_)
                                       {
                                          continue;
                                       }
                                    }
                                    addChild(_loc23_);
                                    continue;
                                 }
                                 if(!_loc26_)
                                 {
                                    break loop24;
                                 }
                              }
                           }
                           §§push(0);
                           if(!_loc27_)
                           {
                              §§push(int(§§pop()));
                           }
                           break;
                        }
                        _loc21_ = §§pop();
                        break;
                     }
                     var _loc24_:Vector.<§`! §> = §+j§;
                     if(!_loc27_)
                     {
                        while(_loc21_ < int(_loc24_.length))
                        {
                           _loc25_ = _loc24_[_loc21_];
                           if(!_loc27_)
                           {
                              _loc21_++;
                              if(_loc26_)
                              {
                                 addChild(_loc25_);
                              }
                           }
                        }
                     }
                     return;
                  }
               }
               return;
            }
         }
      }
      
      public function § q§(param1:String, param2:Number, param3:Number, param4:Object, param5:Object = undefined, param6:Object = undefined) : TextField
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         while(true)
         {
            if(_loc8_)
            {
               if(param6 != null)
               {
                  break;
               }
            }
            param6 = 16777215;
            break;
         }
         loop1:
         while(true)
         {
            §§push(§§findproperty(§`!^§));
            §§push(param1);
            §§push(param2);
            if(_loc8_)
            {
               §§push(2.5);
               if(_loc7_)
               {
                  break;
               }
               §§push(§§pop() / §§pop());
            }
            while(true)
            {
               §§push(param3);
               if(!_loc7_)
               {
                  break loop1;
               }
               addr0075:
               §§push(null);
               break;
            }
            return §§pop().§`!^§(§§pop(),§§pop(),§§pop(),§§pop(),param5 == null ? null : int(Math.round(param5 / 2.5)),param6);
            addr009b:
         }
         while(true)
         {
            §§push(2.5);
            if(!_loc7_)
            {
               §§push(§§pop() / §§pop());
               if(_loc8_)
               {
                  if(param4 == null)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr0075);
                     }
                  }
                  else if(param4 >= 0)
                  {
                     addr009a:
                     §§push(param4 / 2.5);
                     break;
                  }
               }
               §§push(param4);
               break;
            }
            §§goto(addr009a);
         }
         §§goto(addr009b);
      }
      
      public function §`!^§(param1:String, param2:Number, param3:Number, param4:Object, param5:Object = undefined, param6:Object = undefined) : TextField
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         while(true)
         {
            if(!_loc13_)
            {
               if(param6 != null)
               {
                  break;
               }
            }
            param6 = 16777215;
            break;
         }
         §§push(§[Y§);
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:TextField = §&!;§.§9Q§(param6,Number(param4 == null ? _loc7_ : (param4 < 0 ? -param4 * _loc7_ : param4)),null,param1,param5);
         var _loc9_:§ 7§ = new §?y§(_loc8_);
         if(_loc12_)
         {
            §&d§.§1$§().add(_loc9_,new §;R§(true));
         }
         var _loc10_:* = null;
         if(!_loc13_)
         {
            while(true)
            {
               if(_loc10_ == null)
               {
                  if(_loc13_)
                  {
                     break;
                  }
                  _loc10_ = int(Number(_loc8_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc10_)));
               break;
            }
         }
         _loc9_ = new §?y§(_loc8_);
         var _loc11_:§&d§ = layout;
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc12_)
               {
                  if(_loc11_ != null)
                  {
                     §§push(_loc11_);
                     break;
                  }
                  if(!_loc12_)
                  {
                     break loop2;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc9_,new §3`§(param2,true));
            break;
         }
         _loc9_ = new §?y§(_loc8_);
         _loc11_ = layout;
         while(true)
         {
            if(_loc12_)
            {
               if(_loc11_ == null)
               {
                  if(!_loc12_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(_loc11_);
               }
               §§pop().add(_loc9_,new §3`§(param3,false));
               if(!_loc12_)
               {
                  break;
               }
            }
            addChild(_loc8_);
            break;
         }
         return _loc8_;
      }
      
      public function §";§(param1:String, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined, param6:Object = undefined, param7:§ 7§ = undefined, param8:Object = undefined, param9:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc10_:* = null as §`! §;
         var _loc11_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = null as §^U§;
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  if(!_loc16_)
                  {
                     if(param9 == null)
                     {
                        if(!_loc17_)
                        {
                           continue loop16;
                        }
                        param9 = false;
                     }
                     if(!param9)
                     {
                        §§push(§[Y§);
                        if(_loc17_)
                        {
                           break;
                        }
                        addr00d6:
                        _loc11_ = §§pop();
                        continue loop16;
                     }
                     if(_loc16_)
                     {
                        continue loop2;
                     }
                  }
                  §§push(§[Y§);
                  if(!_loc16_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc17_)
                     {
                        break;
                     }
                  }
                  _loc11_ = §§pop();
                  if(_loc17_)
                  {
                     continue loop2;
                  }
                  continue loop16;
               }
               §§goto(addr00d6);
            }
            loop15:
            while(true)
            {
               loop16:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§`! §));
                     §§push(param1);
                     if(_loc17_)
                     {
                        if(param4 == null)
                        {
                           if(!_loc16_)
                           {
                              §§push(_loc11_);
                              if(!_loc16_)
                              {
                                 §§push(§§pop());
                                 break loop16;
                              }
                              break;
                           }
                        }
                        else if(param4 >= 0)
                        {
                           §§push(param4);
                           break loop16;
                        }
                     }
                     §§push(-param4);
                     if(!_loc16_)
                     {
                        break;
                     }
                     break loop15;
                  }
                  §§push(§§pop() * _loc11_);
                  if(_loc17_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop15;
               }
               §§push(Number(§§pop()));
               break;
            }
            _loc10_ = new §§pop().§`! §(§§pop(),§§pop(),param5);
            continue loop4;
         }
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(§§findproperty(§@!a§));
               §§push(param1);
               if(!_loc16_)
               {
                  if(param4 == null)
                  {
                     if(!_loc16_)
                     {
                        addr008a:
                        §§push(_loc11_);
                        if(_loc17_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop2;
                     }
                  }
                  else if(param4 >= 0)
                  {
                     §§push(param4);
                     break;
                  }
                  §§push(-param4);
                  if(_loc17_)
                  {
                     §§push(§§pop() * _loc11_);
                     if(_loc16_)
                     {
                        break loop2;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr008a);
            }
            §§push(Number(§§pop()));
            break;
         }
         _loc10_ = new §§pop().§@!a§(§§pop(),§§pop(),param5);
         var _loc12_:§ 7§ = new §?y§(_loc10_);
         var _loc13_:§&d§ = layout;
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc16_)
               {
                  if(_loc13_ != null)
                  {
                     §§push(_loc13_);
                     break;
                  }
                  if(!_loc17_)
                  {
                     break loop4;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc12_,new §3`§(Number(param2),true));
            break;
         }
         _loc12_ = new §?y§(_loc10_);
         _loc13_ = layout;
         loop6:
         while(true)
         {
            if(_loc13_ == null)
            {
               if(!_loc17_)
               {
                  break;
               }
               §§push(§&d§.§1$§());
            }
            else
            {
               §§push(_loc13_);
            }
            §§pop().add(_loc12_,new §3`§(Number(param3),false));
            if(_loc17_)
            {
               §+j§.push(_loc10_);
               if(!_loc16_)
               {
                  addChild(_loc10_);
                  if(param6 != null)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 break loop6;
                              }
                              addr0218:
                              §§push(_loc14_);
                              if(_loc17_)
                              {
                                 break;
                              }
                              §§goto(addr023b);
                           }
                           addr0220:
                           §§push(int(§+j§.length));
                           if(!_loc16_)
                           {
                              break;
                           }
                           §§goto(addr0233);
                        }
                        addr023b:
                        addr0233:
                        §§push(§§pop() + (§§pop() - 1));
                        if(_loc17_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc14_ = §§pop();
                        break;
                     }
                     _loc15_ = new §^U§(§+j§[_loc14_],new §?y§(_loc10_));
                     if(!_loc16_)
                     {
                        §]n§.push(_loc15_);
                        if(!_loc16_)
                        {
                           addChildAt(_loc15_,0);
                        }
                     }
                  }
                  if(param7 != null)
                  {
                     _loc15_ = new §^U§(_loc10_,param7,true);
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc16_)
                           {
                              if(param8 == null)
                              {
                                 break;
                              }
                              if(_loc16_)
                              {
                                 break loop10;
                              }
                           }
                           _loc15_.§7s§ = param8;
                           if(!_loc16_)
                           {
                              _loc15_.§6;§();
                              if(!_loc16_)
                              {
                                 break;
                              }
                              break loop10;
                           }
                        }
                        §@#§.push(_loc15_);
                        if(_loc17_)
                        {
                           break;
                        }
                     }
                     addChildAt(_loc15_,0);
                  }
                  return;
               }
            }
            addr01fc:
            while(true)
            {
               §§push(_loc14_);
               if(_loc17_)
               {
                  §§push(0);
                  if(_loc16_)
                  {
                     break loop8;
                  }
                  if(§§pop() >= §§pop())
                  {
                     break loop7;
                  }
                  if(_loc16_)
                  {
                     break loop7;
                  }
                  §§goto(addr0218);
               }
               §§goto(addr0220);
            }
            §§goto(addr023b);
         }
         while(true)
         {
            §§push(int(param6));
            if(!_loc16_)
            {
               _loc14_ = §§pop();
               §§goto(addr01fc);
            }
            §§goto(addr0220);
         }
         §§goto(addr023b);
      }
   }
}

