package §6[§
{
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §-!!§.§8!8§;
   import §6!Q§.§"q§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §<!0§ extends Sprite
   {
      
      public var §%!V§:int;
      
      public var §-7§:TextField;
      
      public var §['§:int;
      
      public var § U§:§^!U§;
      
      public var §3!'§:Function;
      
      public var §0l§:§^!U§;
      
      public var §=F§:§&d§;
      
      public var §-!K§:String;
      
      public function §<!0§(param1:int, param2:Function, param3:Object = undefined, param4:String = undefined, param5:Object = undefined, param6:Object = undefined)
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         loop0:
         while(true)
         {
            if(param3 == null)
            {
               §§push(1);
               if(_loc16_)
               {
                  break;
               }
               param3 = §§pop();
            }
            while(true)
            {
               if(param4 == null)
               {
                  §§push("");
                  if(_loc15_)
                  {
                     §§push(§§pop());
                  }
                  param4 = §§pop();
                  if(!_loc15_)
                  {
                     break;
                  }
               }
               addr0055:
               if(param5 == null)
               {
                  §§push(1);
                  if(!_loc16_)
                  {
                     break loop0;
                  }
                  addr006d:
                  var _loc7_:* = §§pop();
                  while(true)
                  {
                     if(_loc15_)
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§['§));
                           if(!_loc16_)
                           {
                              §§push(1);
                              if(_loc16_)
                              {
                                 break;
                              }
                              if(§§pop() < _loc7_)
                              {
                                 §§push(_loc7_);
                                 break;
                              }
                           }
                           §§push(1);
                           if(_loc15_)
                           {
                           }
                           break;
                        }
                        §§pop().§['§ = §§pop();
                        if(_loc15_)
                        {
                           §§push(§§findproperty(§-!K§));
                           §§push(param4 + " ");
                           if(_loc15_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§-!K§ = §§pop();
                           if(_loc16_)
                           {
                              break;
                           }
                        }
                     }
                     §-7§ = §&!;§.§9Q§(param6,36 * param5,null,param4 + param1 + "1");
                     break;
                  }
                  var _loc8_:TextField = §-7§;
                  var _loc9_:* = null;
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc15_)
                           {
                              if(_loc9_ == null)
                              {
                                 if(_loc16_)
                                 {
                                    break loop4;
                                 }
                                 §§push(Number(_loc8_.defaultTextFormat.size));
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc16_)
                                 {
                                    break loop5;
                                 }
                                 _loc9_ = §§pop();
                              }
                              §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc9_)));
                              if(_loc16_)
                              {
                                 break loop4;
                              }
                           }
                           addChild(§-7§);
                           if(_loc15_)
                           {
                              break loop4;
                           }
                           §§goto(addr0162);
                        }
                        var _loc10_:* = §§pop();
                        if(!_loc16_)
                        {
                           §§push(§§findproperty(§0l§));
                           §§push(§§findproperty(§^!U§));
                           §§push(§=Z§);
                           if(!_loc16_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§0l§ = new §§pop().§^!U§(§§pop(),false,param5);
                        }
                        var _loc11_:§8!8§ = §0l§;
                        if(!_loc16_)
                        {
                           §&d§.§1$§().add(new §?y§(_loc11_),new §"q§(11184810,6710886,3.6));
                        }
                        var _loc12_:§ 7§ = new §?y§(§0l§);
                        var _loc13_:§ 7§ = new §?y§(§-7§);
                        var _loc14_:§&d§ = null;
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 if(_loc14_ != null)
                                 {
                                    _loc14_ = _loc14_;
                                    break;
                                 }
                              }
                              _loc14_ = §&d§.§1$§();
                              if(_loc15_)
                              {
                                 break;
                              }
                              break loop7;
                           }
                           _loc14_.add(_loc12_,new §+X§(15,§2u§.RIGHT),_loc13_);
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 _loc14_.add(_loc12_,new §4$§(false,0.5),_loc13_);
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                              }
                              addChild(§0l§);
                              if(!_loc16_)
                              {
                                 break;
                              }
                              break loop7;
                           }
                           §§push(§§findproperty(§ U§));
                           §§push(§§findproperty(§^!U§));
                           §§push(§6!2§);
                           if(!_loc16_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§ U§ = new §§pop().§^!U§(§§pop(),true,param5);
                           break;
                        }
                        _loc11_ = § U§;
                        if(!_loc16_)
                        {
                           §&d§.§1$§().add(new §?y§(_loc11_),new §"q§(11184810,6710886,3.6));
                        }
                        _loc12_ = new §?y§(§ U§);
                        _loc13_ = new §?y§(§0l§);
                        _loc14_ = null;
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc15_)
                              {
                                 if(_loc14_ != null)
                                 {
                                    _loc14_ = _loc14_;
                                    break;
                                 }
                              }
                              _loc14_ = §&d§.§1$§();
                              if(!_loc16_)
                              {
                                 break;
                              }
                              break loop9;
                           }
                           _loc14_.add(_loc12_,new §+X§(20,§2u§.RIGHT),_loc13_);
                           if(!_loc16_)
                           {
                              break;
                           }
                           §§goto(addr036f);
                        }
                        _loc14_.add(_loc12_,new §4$§(false,0.5),_loc13_);
                        if(!_loc16_)
                        {
                           addChild(§ U§);
                           if(!_loc16_)
                           {
                              §?F§(param1);
                           }
                        }
                        addr036f:
                        return;
                     }
                     §§push(Number(§§pop()));
                     break loop6;
                  }
                  §=F§ = §&d§.§1$§();
                  addr0162:
                  §§push(10);
                  break loop5;
               }
               if(param6 == null)
               {
                  break;
               }
               addr0061:
               super();
               §3!'§ = param2;
               §§goto(addr006d);
            }
            param6 = 16777215;
            §§goto(addr0061);
         }
         param5 = §§pop();
         §§goto(addr0055);
         §§push(int(param3));
      }
      
      public function §?F§(param1:int) : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §%!V§ = int(§3!'§(param1));
         }
         §§push(§-!K§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(Std.string(§%!V§));
            if(!_loc4_)
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
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §-7§.text = _loc2_ + _loc3_;
               if(_loc4_)
               {
                  break;
               }
            }
            §=F§.§%X§(new §?y§(§0l§));
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr00c9);
         }
         §=F§.§%X§(new §?y§(§ U§));
         addr00c9:
         return §%!V§;
      }
      
      public function §6!2§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§<!0§ = this;
         if(!_loc3_)
         {
            §§push(_loc2_);
            §§push(_loc2_.§%!V§);
            if(!_loc3_)
            {
               §§push(§§pop() + §['§);
            }
            §§pop().§?F§(§§pop());
         }
      }
      
      public function §=Z§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§<!0§ = this;
         if(!_loc3_)
         {
            §§push(_loc2_);
            §§push(_loc2_.§%!V§);
            if(_loc4_)
            {
               §§push(§§pop() - §['§);
            }
            §§pop().§?F§(§§pop());
         }
      }
   }
}

