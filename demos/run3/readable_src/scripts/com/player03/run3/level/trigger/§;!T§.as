package com.player03.run3.level.trigger
{
   import §!!$§.§ 6§;
   import §'!1§.§ E§;
   import §'!1§.§7!b§;
   import scenes.Cutscenes;
   import scenes.SomethingWeird;
   import §`!7§.§`!3§;
   import stage.§']§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import flash.Boot;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §;!T§ extends §,!A§
   {
      
      public var section:TunnelSection;
      
      public var §1!=§:Vector.<Function>;
      
      public var conditions:Array;
      
      public function §;!T§(param1:TunnelSection, param2:String)
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as Array;
         var _loc7_:* = null as String;
         var _loc8_:* = null as Function;
         var _loc3_:§=!U§ = §`!3§.§#&§(param2,"~","-");
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  if(_loc10_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§<!§));
                     §§push(§,!`§);
                     if(_loc10_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().super(new §§pop().§<!§(§§pop()),param1.tunnel,param1.id);
                     if(_loc10_)
                     {
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§;!§));
                              if(_loc10_)
                              {
                                 §§push("times");
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() in StringMap.§+!#§);
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc10_)
                                       {
                                          addr0093:
                                          §§push(Boolean(_loc3_.existsReserved("times")));
                                          if(_loc11_)
                                          {
                                          }
                                          break;
                                       }
                                       break loop12;
                                    }
                                    §§push("times");
                                 }
                                 §§push(§§pop() in _loc3_.h);
                                 break;
                              }
                              §§goto(addr0093);
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           §§goto(addr0101);
                           §§push(1);
                        }
                        while(true)
                        {
                           §§push(§`!3§);
                           if(_loc10_)
                           {
                              §§push("times");
                              if(_loc11_)
                              {
                                 break;
                              }
                              if(!(§§pop() in StringMap.§+!#§))
                              {
                                 §§push(_loc3_.h["times"]);
                                 break;
                              }
                           }
                           §§push(_loc3_.getReserved("times"));
                           break;
                        }
                        §§push(§§pop().§ !`§(§§pop(),1));
                        if(_loc10_)
                        {
                           §§push(int(§§pop()));
                           if(_loc10_)
                           {
                           }
                        }
                        addr0101:
                        §§pop().§;!§ = §§pop();
                        while(true)
                        {
                           §§push(§§findproperty(§9"§));
                           if(_loc10_)
                           {
                              §§push("startsOver");
                              if(_loc10_)
                              {
                                 §§push(§§pop() in StringMap.§+!#§);
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    addr0126:
                                    §§push(Boolean(_loc3_.existsReserved("startsOver")));
                                    if(_loc11_)
                                    {
                                    }
                                    break;
                                 }
                                 §§push("startsOver");
                              }
                              §§push(§§pop() in _loc3_.h);
                              break;
                           }
                           §§goto(addr0126);
                        }
                        §§pop().§9"§ = §§pop();
                     }
                     section = param1;
                     loop16:
                     while(true)
                     {
                        loop17:
                        while(true)
                        {
                           loop18:
                           while(true)
                           {
                              loop19:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc10_)
                                    {
                                       §§push("condition");
                                       if(_loc11_)
                                       {
                                          break loop19;
                                       }
                                       §§push(§§pop() in StringMap.§+!#§);
                                       if(_loc11_)
                                       {
                                          break loop17;
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             break loop18;
                                          }
                                          §§push(Boolean(_loc3_.existsReserved("condition")));
                                          if(!_loc10_)
                                          {
                                             break loop17;
                                          }
                                       }
                                       else
                                       {
                                          §§push("condition");
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() in _loc3_.h);
                                          if(!_loc10_)
                                          {
                                             break loop17;
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          break loop2;
                                       }
                                       if(!_loc10_)
                                       {
                                          break loop16;
                                       }
                                    }
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc11_)
                                       {
                                          _loc5_ = §§pop();
                                          §§push("condition");
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          break loop19;
                                       }
                                    }
                                    break loop4;
                                 }
                                 §§push(§§pop() in StringMap.§+!#§);
                                 break loop17;
                              }
                              §§goto(addr01ea);
                           }
                           §§push(_loc3_.getReserved("condition"));
                           break loop19;
                        }
                        if(§§pop())
                        {
                           break loop18;
                        }
                        addr01ea:
                        §§push(_loc3_.h["condition"].split("|"));
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           if(!_loc11_)
                           {
                              _loc6_ = §§pop();
                              if(_loc10_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                        }
                        break loop3;
                     }
                  }
                  break loop16;
               }
               if(§§pop() < int(_loc6_.length))
               {
                  §§push(_loc6_[_loc5_]);
                  if(_loc10_)
                  {
                     §§push(§§pop());
                  }
                  _loc7_ = §§pop();
                  if(_loc10_)
                  {
                     _loc5_++;
                     if(_loc10_)
                     {
                        conditions = _loc7_.split(",");
                     }
                  }
                  break loop2;
               }
               if(_loc10_)
               {
                  break loop2;
               }
               continue loop5;
            }
            if(§§pop() == null)
            {
               Boot.lastError = new Error();
               if(!_loc11_)
               {
                  throw new ArgumentError("Data does not include a condition!\n" + param2);
               }
            }
            var _loc9_:Vector.<Function> = new Vector.<Function>(0,false);
            §1!=§ = _loc9_;
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(_loc10_)
                  {
                     while(true)
                     {
                        §§push("result");
                        if(_loc10_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(!_loc10_)
                           {
                              break loop6;
                           }
                           if(§§pop())
                           {
                              addr02bb:
                              §§push(Boolean(_loc3_.existsReserved("result")));
                              if(!_loc11_)
                              {
                                 break loop6;
                              }
                              break loop5;
                           }
                           §§push("result");
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() in _loc3_.h);
                        if(_loc10_)
                        {
                           break loop6;
                        }
                        break loop5;
                     }
                     §§goto(addr0330);
                  }
                  §§goto(addr02bb);
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        while(true)
                        {
                           §§push(0);
                           if(_loc10_)
                           {
                              §§push(int(§§pop()));
                              if(_loc11_)
                              {
                                 break;
                              }
                           }
                           _loc5_ = §§pop();
                           §§push("result");
                           if(!_loc11_)
                           {
                              §§push(§§pop() in StringMap.§+!#§);
                              break loop5;
                           }
                           §§goto(addr0330);
                        }
                        §§goto(addr03c1);
                     }
                     §§goto(addr0318);
                  }
                  §§goto(addr03bf);
               }
               §§goto(addr03ca);
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(_loc3_.getReserved("result"));
               }
               else
               {
                  §§push(_loc3_.h["result"]);
               }
               addr0330:
               §§push(§§pop().split("|"));
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               _loc6_ = §§pop();
               if(!_loc11_)
               {
                  break;
               }
               §§goto(addr03ca);
            }
            loop0:
            while(true)
            {
               §§push(_loc5_);
               addr03c1:
               while(§§pop() < int(_loc6_.length))
               {
                  §§push(_loc6_[_loc5_]);
                  if(_loc10_)
                  {
                     §§push(§§pop());
                  }
                  _loc7_ = §§pop();
                  if(!_loc11_)
                  {
                     _loc5_++;
                     if(_loc11_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §§push(§;K§(_loc7_));
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc11_)
                           {
                              break;
                           }
                        }
                        _loc8_ = §§pop();
                        if(_loc10_)
                        {
                           §§push(_loc8_);
                           break;
                        }
                     }
                     if(§§pop() == null)
                     {
                        continue loop0;
                     }
                     if(_loc11_)
                     {
                        continue loop0;
                     }
                  }
                  §1!=§.push(_loc8_);
                  continue loop0;
               }
               break;
            }
            addr03ca:
            return;
            addr03bf:
         }
         §§push(conditions);
         break loop3;
      }
      
      public function win() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Level = tunnel;
         if(!_loc3_)
         {
            _loc1_.§<§(_loc1_.characters[0]);
         }
      }
      
      public function § ,§(param1:Number, param2:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               if(tunnel.power == param1)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            tunnel.§+!I§.§?!4§(tunnel.power,param1,param2);
            break;
         }
      }
      
      public function §;K§(param1:String) : Function
      {
         var a2:String;
         var a1:Number;
         var f:Function;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as String;
         if(_loc3_)
         {
            §§push(StringTools.startsWith(param1,"power-"));
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           _loc2_ = §§pop();
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(param1);
                           §§push(",");
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           if(int(§§pop().indexOf(§§pop())) < 0)
                           {
                              break;
                           }
                        }
                        §§push(param1);
                        §§push(int(param1.indexOf(",")));
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§push(§§pop().substr(§§pop()));
                        if(_loc3_)
                        {
                           _loc2_ = §§pop();
                           break;
                        }
                     }
                     §§push(§§newactivation());
                     §§push(§ ,§);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[1] = §§pop();
                     if(_loc3_)
                     {
                        §§push(§§newactivation());
                        §§push(Std);
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop().substr(6));
                        }
                        §§push(§§pop().parseFloat(§§pop()));
                        if(!_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§pop().§§slot[2] = §§pop();
                     }
                     a2 = _loc2_;
                     §§goto(addr00da);
                  }
                  §§push(param1);
                  §§push("win");
                  break loop0;
               }
               §§goto(addr00fd);
            }
            if(§§pop() == §§pop())
            {
               §§push(win);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               addr00fd:
               return §§pop();
            }
            §§push(null);
            break loop1;
         }
         addr00da:
         return function():void
         {
            f(a1,a2);
         };
      }
      
      override public function §5!0§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(TunnelSection.§]d§(conditions,section.tunnel));
         if(!_loc2_)
         {
            return Boolean(§§pop());
         }
      }
      
      public function §,!`§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<Function> = §1!=§;
         if(_loc4_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               §§push(_loc2_[_loc1_]);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(_loc4_)
               {
                  _loc1_++;
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               _loc3_();
            }
         }
      }
   }
}

