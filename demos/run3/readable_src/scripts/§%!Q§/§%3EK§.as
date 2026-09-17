package §%!Q§
{
   import §!!"§.§-m§;
   import §!!$§.§ 6§;
   import §!!X§.§`Q§;
   import §!D§.§0!M§;
   import §!D§.§;U§;
   import §%!Z§.§&!S§;
   import §@H§.§0J§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§4!^§;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import nme3D.Scene3D;
   
   public class §>K§ implements §+<§
   {
      
      public static var §0x§:§ !>§;
      
      public static var §?t§:§ !>§;
      
      public static var §^!+§:§ !>§;
      
      public static var §>-§:§ !>§;
      
      public static var §;!4§:§ !>§;
      
      public static var §^!T§:§ !>§;
      
      public static var §1k§:§ !>§;
      
      public static var §4>§:§ !>§;
      
      public static var §2s§:§ !>§;
      
      public static var §>=§:§ !>§;
      
      public static var §`!5§:§ !>§;
      
      public static var §,[§:§ !>§;
      
      public static var §3p§:§ !>§;
      
      public static var §7&§:§ !>§;
      
      public static var §`S§:§ !>§;
      
      public static var §>y§:§ !>§;
      
      public static var §<Y§:§ !>§;
      
      public static var home0:§ !>§;
      
      public static var home1:§ !>§;
      
      public static var home2:§ !>§;
      
      public static var home3:§ !>§;
      
      public static var §>!'§:§ !>§;
      
      public static var §"!R§:§ !>§;
      
      public static var §-!S§:§ !>§;
      
      public static var §1b§:§ !>§;
      
      public static var §5+§:§ !>§;
      
      public static var §&!H§:§ !>§;
      
      public static var §6-§:§ !>§;
      
      public static var §]0§:§ !>§;
      
      public static var §]!6§:§ !>§;
      
      public static var §@§:§ !>§;
      
      public static var §7!%§:§ !>§;
      
      public static var §@!9§:§ !>§;
      
      public static var §[!0§:§ !>§;
      
      public static var runway0:§ !>§;
      
      public static var runway1:§ !>§;
      
      public static var §+!+§:§ !>§;
      
      public static var §?Y§:§>K§;
      
      public var §]"§:§4!^§;
      
      public var §7j§:§=!U§;
      
      public var §2! §:§=!U§;
      
      public function §>K§()
      {
         var count:int;
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc4_:* = null as String;
         var _loc5_:* = null as §=!U§;
         var _loc6_:* = null as § !>§;
         var _loc7_:* = null as StringMap;
         var _loc8_:* = null as StringMap;
         var _loc9_:* = null as StringMap;
         var _loc11_:* = null as §0J§;
         var _loc12_:* = false;
         var _loc14_:* = null as §0!?§;
         if(!_loc15_)
         {
            §>K§.§?Y§ = this;
         }
         §§push([]);
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§=!U§ = §;U§.§'C§("text/ExploreLevels.txt",_loc1_);
         while(true)
         {
            if(!_loc15_)
            {
               §2! § = new StringMap();
               if(_loc16_)
               {
                  §7j§ = new StringMap();
                  if(!_loc16_)
                  {
                     break;
                  }
               }
            }
            §]"§ = new §4!^§("explore");
            if(_loc16_)
            {
               break;
            }
            addr00c6:
            _loc1_.remove("working");
            addr00ce:
            §§push(0);
            if(!_loc15_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  loop19:
                  while(true)
                  {
                     if(!_loc15_)
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc16_)
                           {
                              break loop19;
                           }
                           loop20:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc16_)
                              {
                                 §§push(int(§§pop().length));
                                 if(!_loc15_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(_loc1_[_loc3_]);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          _loc3_++;
                                       }
                                       _loc5_ = §7j§;
                                       while(true)
                                       {
                                          §§push(§§findproperty(§ !>§));
                                          §§push(_loc4_);
                                          if(!_loc15_)
                                          {
                                             if(!(_loc4_ in StringMap.§+!#§))
                                             {
                                                §§push(_loc2_.h[_loc4_]);
                                                break;
                                             }
                                          }
                                          §§push(_loc2_.getReserved(_loc4_));
                                          break;
                                       }
                                       _loc6_ = new §§pop().§ !>§(§§pop(),§§pop());
                                       _loc7_ = _loc5_;
                                       if(_loc16_)
                                       {
                                          if(_loc4_ in StringMap.§+!#§)
                                          {
                                             if(_loc16_)
                                             {
                                                _loc7_.setReserved(_loc4_,_loc6_);
                                                if(_loc16_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc7_.h[_loc4_] = _loc6_;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    if(_loc15_)
                                    {
                                       continue loop12;
                                    }
                                    §4!4§();
                                    §§push(0);
                                    if(!_loc15_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc3_ = §§pop();
                                    if(!_loc16_)
                                    {
                                       break loop9;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc1_);
                                       if(!_loc16_)
                                       {
                                          break loop20;
                                       }
                                       do
                                       {
                                          §§push(int(§§pop().length));
                                       }
                                       while(_loc16_);
                                       §§goto(addr0351);
                                    }
                                    break;
                                    addr02a7:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop10;
                                    }
                                    §§push(_loc1_[_loc3_]);
                                    if(!_loc15_)
                                    {
                                       §§push(§§pop());
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc16_)
                                    {
                                       _loc3_++;
                                    }
                                    _loc7_ = §7j§;
                                    loop22:
                                    while(true)
                                    {
                                       if(_loc16_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_ in StringMap.§+!#§);
                                             if(_loc16_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc15_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc7_.getReserved(_loc4_));
                                                }
                                                else
                                                {
                                                   §§push(_loc7_.h[_loc4_]);
                                                }
                                                §§push(§§pop().available);
                                             }
                                             if(§§pop())
                                             {
                                                break;
                                             }
                                             break loop22;
                                          }
                                       }
                                       _loc5_ = §2! §;
                                       _loc8_ = §7j§;
                                       while(true)
                                       {
                                          if(_loc16_)
                                          {
                                             if(!(_loc4_ in StringMap.§+!#§))
                                             {
                                                §§push(_loc8_.h[_loc4_]);
                                                break;
                                             }
                                          }
                                          §§push(_loc8_.getReserved(_loc4_));
                                          break;
                                       }
                                       _loc6_ = §§pop();
                                       _loc9_ = _loc5_;
                                       if(_loc16_)
                                       {
                                          if(!(_loc4_ in StringMap.§+!#§))
                                          {
                                             _loc9_.h[_loc4_] = _loc6_;
                                             break;
                                          }
                                          if(_loc15_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc9_.setReserved(_loc4_,_loc6_);
                                       if(_loc16_)
                                       {
                                       }
                                       break;
                                    }
                                    §§goto(addr02a7);
                                 }
                                 break;
                              }
                              §§goto(addr02af);
                           }
                           §§goto(addr034e);
                        }
                     }
                     §§goto(addr02a7);
                  }
                  §§goto(addr034d);
               }
               if(!_loc15_)
               {
                  break;
               }
               continue loop12;
            }
            _loc3_ = 0;
            loop1:
            while(true)
            {
               §§push(_loc3_);
               addr034d:
               loop4:
               while(true)
               {
                  §§push(_loc1_);
                  addr034e:
                  while(true)
                  {
                     §§push(int(§§pop().length));
                     addr0351:
                     while(§§pop() < §§pop())
                     {
                        §§push(_loc1_[_loc3_]);
                        if(_loc16_)
                        {
                           §§push(§§pop());
                        }
                        _loc4_ = §§pop();
                        if(_loc16_)
                        {
                           _loc3_++;
                        }
                        _loc7_ = §7j§;
                        if(_loc15_)
                        {
                           break loop4;
                        }
                        while(true)
                        {
                           if(_loc4_ in StringMap.§+!#§)
                           {
                              if(_loc15_)
                              {
                                 break loop4;
                              }
                              §§push(_loc7_.getReserved(_loc4_));
                              if(!_loc16_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc7_.h[_loc4_]);
                           }
                           if(_loc4_ in StringMap.§+!#§)
                           {
                              break;
                           }
                           addr0348:
                           §§pop().init(_loc2_.h[_loc4_]);
                           break loop4;
                        }
                        §§goto(addr0348);
                     }
                     break;
                  }
                  break loop1;
               }
            }
            var _loc10_:Save = Save.§@!A§();
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  if(_loc16_)
                  {
                     loop15:
                     while(true)
                     {
                        §§push(false);
                        if(!_loc15_)
                        {
                           if(_loc10_.§3M§ >= 0)
                           {
                              while(true)
                              {
                                 if(!_loc15_)
                                 {
                                    §§pop();
                                    if(_loc15_)
                                    {
                                       break loop15;
                                    }
                                    §§push(_loc10_.§3M§ < 6345);
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc15_)
                           {
                              if(Save.§@!A§().get("explore",null) != null)
                              {
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 break loop12;
                              }
                              break loop13;
                           }
                           break loop12;
                        }
                        break loop13;
                     }
                  }
                  count = 0;
                  break loop12;
               }
               var _loc13_:§0!?§ = Save.currentPath;
               loop17:
               while(true)
               {
                  if(_loc16_)
                  {
                     if(Save.§@!A§().get(_loc13_.§=-§,_loc13_.§ -§) == null)
                     {
                        §§push(true);
                        if(_loc16_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc12_ = §§pop();
                        break;
                     }
                     if(_loc15_)
                     {
                        break;
                     }
                  }
                  _loc14_ = Save.currentPath;
                  while(true)
                  {
                     if(!_loc15_)
                     {
                        §§push(Save.§@!A§().get(_loc14_.§=-§,_loc14_.§ -§));
                        if(!_loc15_)
                        {
                           §§push(§§pop());
                        }
                        _loc4_ = §§pop();
                        if(_loc15_)
                        {
                           break;
                        }
                     }
                     §§push(§>K§.§@!A§().§2! §.get(_loc4_) == null);
                     if(!_loc15_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc16_)
                        {
                           _loc12_ = §§pop();
                           if(_loc16_)
                           {
                              break loop17;
                           }
                           addr04f9:
                           Save.currentPath.§?F§(§>K§.§0x§.pathName);
                           break;
                        }
                     }
                     addr04ee:
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!_loc16_)
                     {
                        break;
                     }
                     §§goto(addr04f9);
                  }
                  _loc2_ = null;
                  return;
               }
               §§goto(addr04ee);
            }
            _loc11_ = new §0J§(Save.§@!A§().get("explore",null));
            while(true)
            {
               if(!_loc15_)
               {
                  _loc11_.§!q§(function(param1:Boolean):void
                  {
                     count += 1;
                  });
                  if(_loc15_)
                  {
                     break;
                  }
                  §>K§.§0x§.§0!R§.§?F§(count);
                  if(_loc15_)
                  {
                     break;
                  }
               }
               Save.§@!A§().§1!R§("explore",null);
               if(!_loc15_)
               {
                  break;
               }
               break loop13;
            }
            Save.§@!A§().§1!R§("exploreUnlocked",null);
            break loop13;
         }
         §]"§.§4Z§(§&r§.§,U§);
         if(_loc16_)
         {
            §§goto(addr00c6);
         }
         §§goto(addr00ce);
      }
      
      public static function §3!9§(param1:String, param2:int) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get(param1);
         while(true)
         {
            if(_loc5_)
            {
               _loc3_.§2!>§(true);
               if(!_loc6_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(!_loc6_)
                        {
                           §§push(_loc3_.availableUntil);
                           §§push(_loc3_.levelCount);
                           if(_loc5_)
                           {
                              §§push(§§pop() - 1);
                           }
                           if(§§pop() >= §§pop())
                           {
                              break loop1;
                           }
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                           §§pop();
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(param2 > _loc3_.availableUntil);
                           if(_loc6_)
                           {
                              break loop1;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop1;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        break loop2;
                     }
                  }
                  break;
               }
            }
            _loc3_.availableUntil = param2;
            break;
         }
         var _loc4_:StringMap = §>K§.§@!A§().§2! §;
         while(true)
         {
            if(_loc5_)
            {
               if(param1 in StringMap.§+!#§)
               {
                  if(!_loc6_)
                  {
                     _loc4_.setReserved(param1,_loc3_);
                     if(_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  _loc4_.h[param1] = _loc3_;
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            §`Q§.§7!=§(_loc3_);
            break;
         }
      }
      
      public static function §&i§(param1:int) : § !N§
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = null as § !>§;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:StringMap = §>K§.§@!A§().§7j§;
         var _loc3_:* = new §-m§(_loc2_.h,_loc2_.rh);
         if(!_loc9_)
         {
            loop0:
            while(Boolean(_loc3_.hasNext()))
            {
               _loc4_ = _loc3_.next();
               if(_loc9_)
               {
                  return new § !N§(_loc4_,_loc7_);
               }
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                           §§push(int(§§pop()));
                           if(_loc8_)
                           {
                              _loc5_ = §§pop();
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(_loc4_.levels.length);
                              if(!_loc8_)
                              {
                                 break loop6;
                              }
                              §§push(int(§§pop()));
                              if(!_loc8_)
                              {
                                 break loop5;
                              }
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        §§goto(addr00c2);
                     }
                     while(true)
                     {
                        if(_loc4_.levels[_loc7_] == param1)
                        {
                           if(!_loc8_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§goto(addr00f7);
                        }
                     }
                  }
                  while(true)
                  {
                     _loc7_ = §§pop();
                     if(!_loc9_)
                     {
                        break loop7;
                     }
                     break;
                  }
               }
               _loc6_ = §§pop();
               if(!_loc9_)
               {
                  while(_loc5_ < _loc6_)
                  {
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        break loop6;
                     }
                     _loc5_++;
                     if(!_loc8_)
                     {
                        break loop6;
                     }
                     while(true)
                     {
                        §§push(int(§§pop()));
                        break loop6;
                     }
                  }
                  addr00f7:
               }
            }
         }
         return null;
      }
      
      public static function §@!A§() : §>K§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §>K§;
         if(_loc3_)
         {
            if(§>K§.§?Y§ != null)
            {
               return §>K§.§?Y§;
            }
         }
         return §>K§.§?Y§ = new §>K§();
      }
      
      public function §4!4§() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1217
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}

