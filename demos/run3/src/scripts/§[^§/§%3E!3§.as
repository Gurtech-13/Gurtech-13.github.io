package §[^§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §1^§.§]!Q§;
   import §2X§.§"S§;
   import §2X§.§+F§;
   import §2X§.§>N§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§-!T§;
   import nme3D.model.§7v§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   
   public class §>!3§ extends §+F§
   {
      
      public var §@8§:§=!U§;
      
      public function §>!3§()
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super("model");
         }
         var _loc1_:§=!U§ = new StringMap();
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
                     §§push("boat");
                     if(_loc4_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           _loc1_.setReserved("boat",function(param1:§ !W§, param2:§=!U§):Model
                           {
                              return §>!3§.§,9§(false,false,false,param1,param2);
                           });
                        }
                        else
                        {
                           _loc1_.h["boat"] = function(param1:§ !W§, param2:§=!U§):Model
                           {
                              return §>!3§.§,9§(false,false,false,param1,param2);
                           };
                           if(_loc3_)
                           {
                              break loop1;
                           }
                        }
                        §§push("boatBottom");
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr00ae);
                  }
                  if(§§pop())
                  {
                     _loc1_.setReserved("boatBottom",function(param1:§ !W§, param2:§=!U§):Model
                     {
                        return §>!3§.§,9§(false,true,false,param1,param2);
                     });
                     break;
                  }
                  _loc1_.h["boatBottom"] = function(param1:§ !W§, param2:§=!U§):Model
                  {
                     return §>!3§.§,9§(false,true,false,param1,param2);
                  };
                  break;
               }
               §§push("boatInside");
               break loop0;
            }
            §§push(§>!3§.§=!2§);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
            }
            var _loc2_:* = §§pop();
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push("tile");
                  if(!_loc3_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        _loc1_.setReserved("tile",_loc2_);
                     }
                     else
                     {
                        _loc1_.h["tile"] = _loc2_;
                        if(_loc3_)
                        {
                           break loop3;
                        }
                     }
                     while(true)
                     {
                        §§push(§>!3§.§5!6§);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        break loop3;
                     }
                     §§push("custom");
                  }
                  §§push(§§pop() in StringMap.§+!#§);
                  break;
               }
               if(§§pop())
               {
                  _loc1_.setReserved("custom",_loc2_);
                  break;
               }
               _loc1_.h["custom"] = _loc2_;
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr0170);
            }
            §@8§ = _loc1_;
            addr0170:
            return;
         }
         addr00ae:
         if(§§pop() in StringMap.§+!#§)
         {
            _loc1_.setReserved("boatInside",function(param1:§ !W§, param2:§=!U§):Model
            {
               return §>!3§.§,9§(true,false,false,param1,param2);
            });
            break loop1;
         }
         _loc1_.h["boatInside"] = function(param1:§ !W§, param2:§=!U§):Model
         {
            return §>!3§.§,9§(true,false,false,param1,param2);
         };
         break loop1;
      }
      
      public static function §=!2§(param1:§ !W§, param2:§=!U§) : Model
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:§0!E§ = §"=§.§9!&§(param1,param2);
         if(_loc5_)
         {
            if(int(_loc3_.§@8§.length) <= 1)
            {
               return _loc3_.§@8§[0];
            }
         }
         §§push(_loc3_.§@8§);
         §§push(Number(Math.random()));
         if(!_loc4_)
         {
            §§push(§§pop() * int(_loc3_.§@8§.length));
         }
         return §§pop()[int(§§pop())];
      }
      
      public static function §5!6§(param1:§ !W§, param2:§=!U§) : Model
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push("data");
            if(!_loc5_)
            {
               if(§§pop() in StringMap.§+!#§)
               {
                  §§push(param2.getReserved("data"));
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(param2.h["data"]);
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ != null)
            {
               return §7v§.§1z§(_loc3_);
            }
         }
         return null;
      }
      
      public static function §,9§(param1:Boolean, param2:Boolean, param3:Boolean, param4:§ !W§, param5:§=!U§) : Model
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc14_:* = 0;
         var _loc15_:* = null as §!!V§;
         var _loc16_:* = null as §=s§;
         var _loc17_:* = NaN;
         var _loc6_:§-!T§ = new §-!T§(§<!9§.§7!P§());
         while(true)
         {
            if(!_loc18_)
            {
               §7v§.§>s§("text/model/Car.simple",_loc6_);
               if(_loc18_)
               {
                  break;
               }
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc19_)
                  {
                     if(§§pop())
                     {
                        if(!_loc19_)
                        {
                           break;
                        }
                        §7v§.§>s§("text/model/CarInsideRings.simple",_loc6_);
                        if(_loc18_)
                        {
                           break;
                        }
                     }
                     §§push(param2);
                     if(!_loc19_)
                     {
                        break loop2;
                     }
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  addr0099:
                  §§push(param3);
                  break loop2;
               }
               §7v§.§>s§("text/model/CarOutsideRings.simple",_loc6_);
               if(_loc19_)
               {
                  §§goto(addr0099);
               }
               §§goto(addr009e);
            }
            if(§§pop())
            {
               addr009e:
               §7v§.§>s§("text/model/CarBackPanel.simple",_loc6_);
               if(!_loc18_)
               {
                  break;
               }
               §§goto(addr00bd);
            }
            break;
         }
         §7v§.§>s§("text/model/CarTape.simple",_loc6_);
         addr00bd:
         var _loc7_:Model = _loc6_.§1!D§();
         var _loc8_:Number = 70;
         var _loc9_:§'!Y§ = §2_§.§'!D§(_loc7_.vertices,"position");
         var _loc10_:§]!Q§ = new §]!Q§();
         §§push(0);
         if(!_loc18_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         var _loc12_:§!!V§ = _loc7_.vertices;
         while(true)
         {
            §§push(_loc12_.§@!Y§.length);
            if(!_loc18_)
            {
               §§push(int(§§pop()));
               if(!_loc19_)
               {
                  break;
               }
               §§push(§§pop() / _loc12_.§5G§);
            }
            §§push(int(§§pop()));
            if(!_loc18_)
            {
               §§push(int(§§pop()));
            }
            break;
         }
         var _loc13_:* = §§pop();
         if(!_loc18_)
         {
            loop0:
            while(_loc11_ < _loc13_)
            {
               §§push(_loc11_);
               if(_loc19_)
               {
                  _loc11_++;
                  if(_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc14_ = §§pop();
               _loc15_ = _loc9_.vertices;
               while(true)
               {
                  if(_loc19_)
                  {
                     §§push(_loc15_);
                     §§push(_loc15_.§5G§);
                     if(_loc19_)
                     {
                        §§push(§§pop() * _loc14_);
                     }
                     §§pop().offset = §§pop();
                     if(_loc18_)
                     {
                        break;
                     }
                  }
                  §§push(_loc9_.§+R§);
                  §§push(_loc15_.offset);
                  if(!_loc18_)
                  {
                     §§push(§§pop() + _loc9_.§+^§);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
               _loc16_ = _loc9_.§+R§;
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc19_)
                                 {
                                    §§push(_loc16_.§@!Y§[_loc16_.offset]);
                                    if(_loc18_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    §§push(_loc8_);
                                    if(!_loc18_)
                                    {
                                       _loc17_ = §§pop() * §§pop();
                                       if(_loc18_)
                                       {
                                          break loop10;
                                       }
                                       _loc16_.§@!Y§[_loc16_.offset] = _loc17_;
                                       §§push(_loc16_.§@!Y§);
                                       §§push(_loc16_.offset);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§push(§§pop()[§§pop()]);
                                       if(_loc18_)
                                       {
                                          break loop9;
                                       }
                                       §§push(Number(§§pop()));
                                       §§push(_loc8_);
                                       if(_loc18_)
                                       {
                                          break loop8;
                                       }
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc19_)
                                    {
                                       break loop7;
                                    }
                                    _loc17_ = §§pop();
                                    if(_loc18_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 §§push(_loc16_.§@!Y§);
                                 §§push(_loc16_.offset);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop()[§§pop()] = _loc17_;
                                 if(_loc19_)
                                 {
                                    break loop6;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr0237);
                           }
                           §§goto(addr023a);
                        }
                        §§goto(addr0234);
                     }
                     §§goto(addr0236);
                  }
                  _loc17_ = §§pop();
                  addr023a:
                  §§push(_loc16_.§@!Y§);
                  §§push(_loc16_.offset);
                  if(_loc19_)
                  {
                     §§push(§§pop() + 2);
                  }
                  §§pop()[§§pop()] = _loc17_;
                  if(_loc19_)
                  {
                     §§push(_loc10_);
                     §§push(_loc16_.§@!Y§[_loc16_.offset]);
                     if(!_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(_loc16_.§@!Y§);
                     §§push(_loc16_.offset);
                     if(!_loc18_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop()[§§pop()]);
                     if(!_loc18_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(_loc16_.§@!Y§);
                     §§push(_loc16_.offset);
                     if(_loc19_)
                     {
                        §§push(§§pop() + 2);
                     }
                     §§push(§§pop()[§§pop()]);
                     if(_loc19_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§?j§(§§pop(),§§pop(),§§pop());
                  }
                  continue loop0;
               }
               addr0236:
               addr0234:
               addr0237:
               §§push(_loc16_.§@!Y§);
               §§push(_loc16_.offset);
               if(_loc19_)
               {
                  §§push(§§pop() + 2);
               }
               §§push(Number(§§pop()[§§pop()]) * _loc8_);
               break loop7;
            }
         }
         return _loc7_;
      }
      
      override public function §3N§(param1:§>N§, param2:§=!U§, param3:int = -1) : §"S§
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 840
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}

