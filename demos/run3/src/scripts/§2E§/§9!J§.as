package §2E§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+!4§.Key;
   import §6!Q§.§'!E§;
   import §=w§.§,D§;
   import §=w§.§@[§;
   import §`_§.§3!J§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.save.§-Q§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §9!J§ implements §@[§
   {
      
      public var §'a§:Vector.<Object>;
      
      public var §;q§:String;
      
      public var §^!$§:Vector.<Function>;
      
      public var §9Y§:int;
      
      public var §3!R§:Vector.<int>;
      
      public var index:int;
      
      public var §"M§:Vector.<Object>;
      
      public var §,&§:String;
      
      public function §9!J§(param1:String, param2:String, param3:Array, param4:String = undefined, param5:Array = undefined, param6:Object = undefined)
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc10_:* = 0;
         var _loc7_:Vector.<int> = new Vector.<int>(0,false);
         if(_loc11_)
         {
            §3!R§ = _loc7_;
         }
         §§push(0);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = int(param1.length);
         loop0:
         while(true)
         {
            §§push(_loc8_);
            if(!_loc11_)
            {
               break;
            }
            §§push(_loc9_);
            if(_loc11_)
            {
               if(§§pop() >= §§pop())
               {
                  §;q§ = param2;
                  §'a§ = Vector.<Object>(param3);
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc12_)
                        {
                           if(param4 == null)
                           {
                              §§push(§§findproperty(§,&§));
                              §§push(param1 + " = ");
                              if(_loc11_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().§,&§ = §§pop();
                              break;
                           }
                        }
                        §,&§ = param4;
                        if(_loc11_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc12_)
                           {
                              if(param5 == null)
                              {
                                 break;
                              }
                              if(!_loc11_)
                              {
                                 break loop3;
                              }
                           }
                           §§pop();
                           §§push(int(param5.length));
                           break loop0;
                        }
                        addr0126:
                        if(§§pop())
                        {
                           §"M§ = Vector.<Object>(param5);
                        }
                        else
                        {
                           §"M§ = Vector.<Object>(param3);
                           if(!_loc11_)
                           {
                              break loop1;
                           }
                        }
                        if(param6 != null)
                        {
                           break loop1;
                        }
                        §§goto(addr0173);
                     }
                     §§push(Boolean(§§pop()));
                     break loop4;
                  }
                  §,m§(param6);
                  addr0173:
                  return;
               }
               while(true)
               {
                  §§push(_loc8_);
                  if(_loc11_)
                  {
                     _loc8_++;
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc10_ = §§pop();
               if(!_loc12_)
               {
                  §§push(§3!R§);
                  §§push(Key.§5!=§(int(param1.charCodeAt(_loc10_))));
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                  }
                  §§pop().push(§§pop());
               }
               continue;
            }
            §§push(§§pop() >= §§pop());
            if(!_loc12_)
            {
               break loop3;
            }
            §§goto(addr0126);
         }
         §§goto(addr011e);
         §§push(int(param3.length));
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
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           §§push(Key.§^!B§);
                           if(_loc2_)
                           {
                              §§push(§3!R§[§9Y§]);
                              if(_loc2_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(§§findproperty(§9Y§));
                                             §§push(§9Y§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             §§pop().§9Y§ = §§pop();
                                             §§push(§9Y§);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(§3!R§.length);
                                             if(!_loc3_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc3_)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                break loop3;
                                             }
                                             §,!3§();
                                             if(_loc2_)
                                             {
                                                §9Y§ = 0;
                                                break loop3;
                                             }
                                             §§goto(addr0102);
                                          }
                                       }
                                       else
                                       {
                                          §§push(false);
                                          if(_loc3_)
                                          {
                                             break loop6;
                                          }
                                          if(§9Y§ <= 0)
                                          {
                                             break loop5;
                                          }
                                          if(!_loc2_)
                                          {
                                             break loop4;
                                          }
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             break loop3;
                                          }
                                       }
                                       §§push(Key.§^!B§);
                                       break;
                                    }
                                    addr00c6:
                                    §§push(§3!R§);
                                    §§push(§9Y§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    §§push(§§pop()[§§pop()]);
                                    if(_loc2_)
                                    {
                                       break loop1;
                                    }
                                    break loop0;
                                 }
                              }
                              §§goto(addr0085);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00fd);
                     }
                     §§goto(addr00fe);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr010a);
            }
            §§push(int(§§pop()));
            break;
         }
         while(true)
         {
            §§push(§§pop() == §§pop());
            if(_loc2_)
            {
               addr00f7:
               §§push(!§§pop());
               if(!_loc2_)
               {
                  break;
               }
            }
            addr00fd:
            §§push(Boolean(§§pop()));
            break;
         }
         addr00fe:
         if(§§pop())
         {
            addr0102:
            §9Y§ = 0;
         }
         addr010a:
      }
      
      public function §,!3§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = null as Vector.<Function>;
         var _loc4_:* = null;
         while(true)
         {
            if(!_loc6_)
            {
               §§push(§§findproperty(index));
               §§push(index);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().index = §§pop();
               if(_loc6_)
               {
                  break;
               }
            }
            if(index >= int(§'a§.length))
            {
               if(!_loc6_)
               {
                  break;
               }
            }
            §§goto(addr0062);
         }
         index = 0;
         addr0062:
         var _loc1_:* = §'a§[index];
         loop2:
         while(true)
         {
            if(!_loc6_)
            {
               Save.§@!A§().§1!R§(§;q§,_loc1_);
               if(_loc5_)
               {
                  §'!E§.§@!A§().§1&§();
                  if(!_loc6_)
                  {
                     §§push(§'!E§.§@!A§());
                     §§push(§,&§);
                     if(_loc5_)
                     {
                        §§push(Std.string(§"M§[index]));
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§>!W§(§§pop());
                     if(!_loc6_)
                     {
                        if(§^!$§ == null)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                        }
                     }
                  }
               }
            }
            _loc3_ = §^!$§;
            if(!_loc6_)
            {
               while(true)
               {
                  if(_loc2_ >= int(_loc3_.length))
                  {
                     break loop2;
                  }
                  §§push(_loc3_[_loc2_]);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
                  if(!_loc6_)
                  {
                     _loc2_++;
                     if(_loc5_)
                     {
                        _loc4_(§'a§[index]);
                     }
                  }
               }
            }
            break;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §9Y§ = 0;
               if(!_loc1_)
               {
                  break;
               }
            }
            index = int(§'a§.indexOf(Save.§@!A§().get(§;q§,null),0));
            if(_loc1_)
            {
               if(index < 0)
               {
                  if(!_loc2_)
                  {
                     §§push(§§findproperty(index));
                     §§push(int(§'a§.length));
                     if(!_loc2_)
                     {
                        §§push(§§pop() - 1);
                     }
                     §§pop().index = §§pop();
                  }
               }
            }
            break;
         }
      }
      
      public function §,m§(param1:Function) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as Vector.<Function>;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(§^!$§ != null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               _loc2_ = new Vector.<Function>(0,false);
               if(_loc4_)
               {
                  §^!$§ = _loc2_;
               }
               break;
            }
            §^!$§.push(param1);
            break;
         }
      }
   }
}

