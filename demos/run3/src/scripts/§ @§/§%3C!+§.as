package § @§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§'!]§;
   import §%!Q§.§+#§;
   import §%!Z§.§&!S§;
   import §3!b§.§+Z§;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §>T§.§`H§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import flash.display.Bitmap;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §<!+§ extends §'!]§
   {
      
      public var §,!5§:Function;
      
      public var §+2§:Number;
      
      public var §7u§:Function;
      
      public var §01§:int;
      
      public var §<Z§:int;
      
      public var §+!H§:Point3D;
      
      public var §!$§:§`H§;
      
      public var §^1§:§[C§;
      
      public var §'u§:Point;
      
      public var §!l§:§"B§;
      
      public var §<!=§:§+#§;
      
      public var §&`§:Object;
      
      public var §44§:Object;
      
      public function §<!+§(param1:§ !>§, param2:int, param3:int, param4:Object = undefined, param5:Point3D = undefined, param6:§"B§ = undefined, param7:Object = undefined, param8:Point = undefined, param9:Object = undefined, param10:Object = undefined, param11:§6O§ = undefined, param12:Object = undefined, param13:Object = undefined, param14:Object = undefined, param15:Object = undefined, param16:§+Z§ = undefined)
      {
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     if(_loc18_)
                     {
                        while(true)
                        {
                           if(param4 == null)
                           {
                              if(!_loc18_)
                              {
                                 break loop0;
                              }
                              §§push(false);
                              if(!_loc18_)
                              {
                                 break;
                              }
                              param4 = §§pop();
                           }
                           if(param10 == null)
                           {
                              if(!_loc18_)
                              {
                                 break loop8;
                              }
                              §§push(0);
                              if(!_loc18_)
                              {
                                 break loop2;
                              }
                              param10 = §§pop();
                           }
                           §01§ = 0;
                           §+2§ = 0;
                           if(!_loc18_)
                           {
                              break loop1;
                           }
                           if(param12 == null)
                           {
                              param12 = {};
                           }
                           §§push(true);
                           if(!_loc19_)
                           {
                              if(param2 <= param3)
                              {
                                 if(_loc18_)
                                 {
                                    break;
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              param12.backwards = true;
                           }
                        }
                        §§pop();
                        if(!_loc19_)
                        {
                           §§goto(addr0090);
                           §§push(Boolean(param4));
                        }
                     }
                     if(param11 == null)
                     {
                        break loop0;
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0104);
               }
               §§push(§§pop() - param2);
               if(!_loc19_)
               {
                  §§goto(addr0125);
               }
               §§goto(addr0126);
            }
            while(true)
            {
               §§push(§§findproperty(§!l§));
               if(_loc18_)
               {
                  if(param6 != null)
                  {
                     §§push(param6);
                     break;
                  }
               }
               §§push(new §"B§());
               break;
            }
            §§pop().§!l§ = §§pop();
            while(true)
            {
               if(_loc18_)
               {
                  §'u§ = param8;
                  if(!_loc18_)
                  {
                     break;
                  }
               }
               §&`§ = param7;
               addr0104:
               §44§ = param9;
               break;
            }
            §<Z§ = param10;
            §§push(param3);
            if(!_loc19_)
            {
               break loop2;
            }
            addr0126:
            var _loc17_:int = §§pop();
            addr0125:
            if(_loc18_)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(param11);
                        §§push(param1);
                        §§push(param2);
                        if(_loc18_)
                        {
                           §§push(_loc17_);
                           if(_loc19_)
                           {
                              break loop5;
                           }
                           §§push(0);
                           if(!_loc18_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              §§push(_loc17_);
                              if(!_loc19_)
                              {
                                 break loop5;
                              }
                              break loop6;
                           }
                        }
                        §§push(_loc17_);
                        if(!_loc18_)
                        {
                           break loop5;
                        }
                        §§goto(addr0178);
                     }
                     §§goto(addr017a);
                  }
                  §§pop().super(§§pop(),§§pop(),§§pop(),§§pop(),null,null,param12,param14,param16);
               }
               §§push(-§§pop());
               if(!_loc19_)
               {
                  addr0178:
                  addr017a:
                  §§push(§§pop() + 1);
               }
               break loop6;
            }
            return;
         }
         param11 = §'O§.student;
         addr00b6:
         §7u§ = param13;
         §+!H§ = param5;
         break loop1;
      }
      
      override public function §,,§(param1:Object) : Object
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(param1 == null)
            {
               if(!_loc2_)
               {
                  break;
               }
               param1 = {};
            }
            if(§3[§ != null)
            {
               param1.backwards = Boolean(§3[§.backwards);
               param1.finishedSectionCallback = §3[§.finishedSectionCallback;
               param1.character = §3[§.character;
               param1.music = §3[§.music;
               if(param1.victoryCallback == null)
               {
                  param1.victoryCallback = §3[§.victoryCallback;
               }
            }
            if(param1.onlyResetCharacter == null)
            {
               break;
            }
            §§goto(addr00b1);
         }
         param1.onlyResetCharacter = §?#§;
         while(true)
         {
            if(!_loc3_)
            {
               addr00b1:
               if(§+!H§ != null)
               {
                  param1.modifyData = §@!D§;
               }
               while(true)
               {
                  if(param1.victoryCondition == null)
                  {
                     param1.victoryCondition = function(param1:§6M§):Boolean
                     {
                        return false;
                     };
                     addr00d5:
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  addr00ec:
                  super.§,,§(param1);
                  if(_loc2_)
                  {
                     var _temp_1:* = §3[§;
                     _temp_1.fadeOutOnVictory = _temp_1.fadeOutOnVictory + 0.2;
                  }
                  break;
               }
               return §3[§;
            }
            §§goto(addr00d5);
         }
         §§goto(addr00ec);
      }
      
      override public function § !7§(param1:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(_loc9_)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  param1 = 0;
               }
               §§push(§7u§);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
               if(§§pop() != null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  §,,§(§7u§());
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               super.§ !7§(param1);
               break;
            }
         }
         var _loc2_:§ !W§ = Main.instance.tunnel;
         var _loc3_:§6M§ = _loc2_.characters[0];
         var _loc4_:TunnelSection = _loc3_.§73§;
         §§push(§<!=§.§8_§());
         if(!_loc8_)
         {
            §§push(int(§§pop()));
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc8_)
         {
            §^1§ = §[C§.§4r§(_loc2_,§"=§.§]R§(_loc2_,"movableBox",null,null,_loc5_,§<!=§.§=-§));
         }
         var _loc6_:§"B§ = §^1§.transform.§,t§;
         var _loc7_:§"B§ = §!l§;
         _loc6_.x = _loc7_.x;
         _loc6_.y = _loc7_.y;
         _loc6_.z = _loc7_.z;
         _loc6_.w = _loc7_.w;
         if(_loc9_)
         {
            §!$§ = §^1§.§@!B§;
            §!$§.§+!-§(§&`§,§44§);
            §^1§.reset();
            while(true)
            {
               if(!_loc8_)
               {
                  _loc2_.§4M§(§^1§);
                  if(!_loc8_)
                  {
                     _loc2_.§'4§.push(§^1§);
                  }
                  §+2§ = §^1§.transform.position.z;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(_loc2_.§7M§);
               if(!_loc8_)
               {
                  §§push(§§pop() + _loc5_ / 2);
               }
               §§pop().§7M§ = §§pop();
               break;
            }
         }
      }
      
      public function §?#§(param1:§ !W§) : Boolean
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:* = null as §6O§;
         var _loc4_:* = null;
         var _loc2_:§6M§ = param1.characters[0];
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  §§push(_loc2_.§!8§.§3>§);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(!_loc8_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§^1§.transform.position.z);
                              if(!_loc7_)
                              {
                                 §§push(_loc2_.§73§.startZ);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       if(int(§'!E§.§@!A§().§6a§.length) > 0)
                                       {
                                          break loop0;
                                       }
                                    }
                                    addr009b:
                                    _loc3_ = _loc2_.§!8§;
                                    _loc4_ = null;
                                    if(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc8_)
                                          {
                                             if(_loc4_ != null)
                                             {
                                                break;
                                             }
                                             if(_loc8_)
                                             {
                                                §§pop();
                                                if(!_loc8_)
                                                {
                                                   break loop0;
                                                }
                                                §§push(StringTools.§#E§("Oops! Forgot the box.","-"));
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Boolean(§§pop()));
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             break loop0;
                                          }
                                          §§push(Number(§'!E§.§]Y§("Oops! Forgot the box.".length)));
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       §'!E§.§@!A§().§>!W§("Oops! Forgot the box.",_loc4_,§'[§.§83§(_loc3_));
                                    }
                                    break loop0;
                                 }
                                 §§push(§^1§.transform.position.z);
                                 if(_loc7_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§push(§+2§);
                              break;
                           }
                           §§push(§§pop() - §§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        var _loc5_:Number = §§pop();
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(§§pop() < 0)
                                 {
                                    §§push(_loc5_);
                                    if(_loc8_)
                                    {
                                       break loop4;
                                    }
                                    break;
                                 }
                              }
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 break;
                              }
                              break loop4;
                           }
                           while(true)
                           {
                              §§push(§§pop() < 1e-10);
                              if(_loc8_)
                              {
                                 §§push(!§§pop());
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           var _loc6_:* = §§pop();
                           §+2§ = §^1§.transform.position.z;
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc8_)
                                       {
                                          §01§ = 0;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc2_.§73§.tilesDislodged > 0)
                                          {
                                             §§pop();
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             §§push(_loc2_.§]!L§ == null);
                                             if(_loc7_)
                                             {
                                                break loop8;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             §§push(§§findproperty(§01§));
                                             §§push(§01§);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             §§pop().§01§ = §§pop();
                                             §§push(§01§);
                                             if(_loc8_)
                                             {
                                                §§push(3);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr02d7);
                                                }
                                                addr022f:
                                                if(§§pop() <= §§pop())
                                                {
                                                   addr0233:
                                                   _loc3_ = _loc2_.§!8§;
                                                   _loc4_ = null;
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(false);
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc4_ == null)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc8_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     §§push(StringTools.§#E§("Let\'s try this again from the top.","-"));
                                                                     if(_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            break loop7;
                                                         }
                                                      }
                                                      §§push(Number(§'!E§.§]Y§("Let\'s try this again from the top.".length)));
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() / 2);
                                                      }
                                                      _loc4_ = §§pop();
                                                      break;
                                                   }
                                                   §'!E§.§@!A§().§>!W§("Let\'s try this again from the top.",_loc4_,§'[§.§83§(_loc3_));
                                                }
                                                break loop7;
                                             }
                                             addr022d:
                                             §§goto(addr022f);
                                             §§push(0);
                                          }
                                       }
                                       §§goto(addr022d);
                                    }
                                    addr02d7:
                                    return true;
                                 }
                                 §§goto(addr0233);
                              }
                              return §§pop();
                           }
                           §01§ = 0;
                           §§push(false);
                           break loop8;
                        }
                        §§push(-§§pop());
                        break loop5;
                     }
                     if(!_loc7_)
                     {
                        §§push(false);
                        if(_loc8_)
                        {
                           §§goto(addr005c);
                        }
                        break;
                     }
                     §§goto(addr009b);
                  }
                  addr005c:
                  return §§pop();
               }
               §§goto(addr009b);
            }
            return §§pop();
         }
         §§push(false);
         break loop1;
      }
      
      public function §@!D§(param1:int, param2:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               if(param1 != §8!>§)
               {
                  §§push(param2);
                  break;
               }
            }
            §§push(param2);
            if(_loc4_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push("|overrideSpawn-");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + §+!H§.x);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           §§push(",");
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§push(§§pop() + §+!H§.y);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           §§push("|spawnZ-");
                           break loop2;
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00a0);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr0095);
               }
               addr00a0:
               §§push(§§pop());
               if(!_loc3_)
               {
                  addr0095:
                  addr009e:
                  §§push(§§pop() + §+!H§.z);
               }
               §§push(§§pop() + §§pop());
               if(_loc4_)
               {
                  return §§pop();
               }
            }
            break;
         }
         return §§pop();
      }
   }
}

