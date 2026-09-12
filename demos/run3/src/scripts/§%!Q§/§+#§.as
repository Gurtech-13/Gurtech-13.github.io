package §%!Q§
{
   import § @§.§<!+§;
   import §!!$§.§ 6§;
   import §!]§.§4N§;
   import §%!Z§.§&!S§;
   import §-!!§.§2!B§;
   import §-d§.§!!-§;
   import §-d§.§9=§;
   import §-d§.§9^§;
   import §2X§.§>N§;
   import §3!b§.§+!"§;
   import §3!b§.§+Z§;
   import §3!b§.Affliction;
   import §3!b§.CrossingTheGap;
   import §3!b§.Cutscenes;
   import §3!b§.DontQuestionIt;
   import §3!b§.LeaveItHere;
   import §3!b§.LightningStrikesTwice;
   import §3!b§.Protip;
   import §3!b§.SomethingWeird;
   import §3!b§.TellAFriend;
   import §3!b§.TheGap;
   import §4!8§.§1!3§;
   import §4n§.§3!G§;
   import §4n§.§7!T§;
   import §4n§.Achievement;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §>T§.§[C§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Currency;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.api.§@!<§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§59§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.BeatLevelAndSave;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   import openfl.Lib;
   
   public class §+#§
   {
      
      public static var §&!#§:Vector.<§+#§>;
      
      public static var §2=§:§+#§;
      
      public static var §@T§:§+#§;
      
      public static var §9D§:§+#§;
      
      public static var §`!#§:§+#§;
      
      public static var §=m§:§+#§;
      
      public static var §"l§:§+#§;
      
      public static var §"%§:§+#§;
      
      public static var §>!F§:§+#§;
      
      public var §?D§:§9t§;
      
      public var §,U§:§2!;§;
      
      public var §&J§:Boolean;
      
      public var § b§:Vector.<§'!]§>;
      
      public var §+!=§:int;
      
      public var §=-§:String;
      
      public var §=R§:§+#§;
      
      public var §=!N§:String;
      
      public var §&k§:int;
      
      public var §'r§:§6O§;
      
      public var §@!-§:Vector.<int>;
      
      public var §-!>§:Vector.<§<!+§>;
      
      public function §+#§(param1:String, param2:String, param3:Number, param4:Number, param5:Vector.<§'!]§> = undefined, param6:Vector.<§<!+§> = undefined, param7:Object = undefined, param8:Vector.<int> = undefined)
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc12_:* = null as §'!]§;
         var _loc13_:* = null as Function;
         var _loc14_:* = null as Function;
         var _loc15_:* = null as §<!+§;
         var _loc17_:* = 0;
         §&J§ = false;
         if(_loc20_)
         {
            §=R§ = null;
            §=-§ = param1;
            §-!>§ = param6;
            if(!_loc19_)
            {
               §,U§ = new §2!;§(param1);
               if(_loc20_)
               {
                  §§push(§§findproperty(§?D§));
                  §§push(§§findproperty(§9t§));
                  §§push(param1 + "_sub");
                  if(!_loc19_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§?D§ = new §§pop().§9t§(§§pop());
               }
               §>K§.§@!A§().§]"§.§4Z§(§,U§);
            }
            if(param5 == null)
            {
               param5 = Vector.<§'!]§>([]);
            }
            § b§ = param5;
            while(true)
            {
               if(!_loc19_)
               {
                  if(param8 == null)
                  {
                     §@!-§ = Vector.<int>([2,0]);
                     break;
                  }
               }
               §@!-§ = param8;
               break;
            }
         }
         var _loc9_:§2!;§ = §,U§;
         while(true)
         {
            if(!_loc19_)
            {
               §+!=§ = int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§)));
               if(_loc19_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§findproperty(§'r§));
               if(_loc20_)
               {
                  if(int(§ b§.length) <= 0)
                  {
                     §§push(§-!>§[0]);
                     break;
                  }
               }
               §§push(§ b§[0]);
               break;
            }
            §§pop().§'r§ = §§pop().§3[§.character;
            break;
         }
         §§push(0);
         if(_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(0);
         if(!_loc19_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop13:
               while(true)
               {
                  if(_loc20_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc11_);
                        if(_loc19_)
                        {
                           break loop13;
                        }
                        §§push(int(param5.length));
                        if(_loc19_)
                        {
                           break loop7;
                        }
                        if(§§pop() < §§pop())
                        {
                           _loc12_ = param5[_loc11_];
                           loop14:
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 loop16:
                                 while(true)
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          if(!_loc19_)
                                          {
                                             _loc11_++;
                                             while(true)
                                             {
                                                if(_loc12_.§3[§.victoryCallback == null)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc20_)
                                                   {
                                                      break loop18;
                                                   }
                                                   §§push(global);
                                                   §§push([_loc12_]);
                                                   §§push(§#K§);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   §§push(§§pop()(§§pop(),null));
                                                   if(!_loc20_)
                                                   {
                                                      break loop16;
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc19_)
                                                   {
                                                      break loop17;
                                                   }
                                                   _loc13_ = §§pop();
                                                   _loc12_.§3[§.victoryCallback = _loc13_;
                                                }
                                                if(!_loc20_)
                                                {
                                                   break loop18;
                                                }
                                                §§push(global);
                                                §§push([_loc12_]);
                                                §§push(§1'§);
                                                if(_loc20_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                §§push(§§pop()(§§pop(),null));
                                                if(_loc19_)
                                                {
                                                   break loop17;
                                                }
                                                §§push(§§pop());
                                                if(_loc19_)
                                                {
                                                   break loop16;
                                                }
                                                _loc13_ = §§pop();
                                                _loc12_.§3[§.finishedSectionCallback = _loc13_;
                                                if(_loc20_)
                                                {
                                                   break;
                                                }
                                                _loc12_.§3[§.music = param2;
                                                if(_loc19_)
                                                {
                                                   continue loop0;
                                                }
                                                _loc12_.§3[§.customDate = param3 + _loc10_ / (int(§ b§.length) + int(§-!>§.length)) * (param4 - param3);
                                                if(_loc12_.§2!&§ == null)
                                                {
                                                   break loop14;
                                                }
                                                _loc12_.§2!&§.tunnelParams.customDate = Number(_loc12_.§3[§.customDate);
                                                if(_loc12_.§2!&§.§4b§ != §+Z§.§&L§)
                                                {
                                                   break loop14;
                                                }
                                                if(_loc19_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             _loc12_.§3[§.character = §'r§;
                                             if(!_loc20_)
                                             {
                                                break loop15;
                                             }
                                             §§goto(addr0251);
                                          }
                                          break;
                                       }
                                       §§push(global);
                                       §§push([_loc10_]);
                                       §§push(§[5§);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§push(§§pop()(§§pop(),null));
                                       if(!_loc19_)
                                       {
                                          break loop16;
                                       }
                                       break;
                                    }
                                    _loc14_ = §§pop();
                                    if(!_loc19_)
                                    {
                                       break loop15;
                                    }
                                    continue loop0;
                                 }
                                 §§push(§§pop());
                                 break loop17;
                              }
                              _loc12_.§2!&§.§4b§ = §+!"§.CUSTOM(_loc14_);
                              break;
                           }
                           _loc10_++;
                           continue;
                        }
                        if(!_loc20_)
                        {
                           break loop6;
                        }
                     }
                  }
                  _loc11_ = 0;
                  if(_loc20_)
                  {
                     break loop6;
                  }
                  §§goto(addr048e);
               }
               §§goto(addr049a);
            }
            §§push(§§pop() - §§pop());
            if(_loc20_)
            {
               §§push(int(§§pop()));
            }
            §§goto(addr04a4);
         }
         loop1:
         while(true)
         {
            §§push(_loc11_);
            §§push(int(param6.length));
            if(_loc19_)
            {
               break loop7;
            }
            if(§§pop() >= §§pop())
            {
               if(_loc20_)
               {
                  §§push(0);
                  if(!_loc19_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc11_ = §§pop();
               }
               addr04a4:
               addr048e:
               §§push(int(param6.length));
               if(!_loc19_)
               {
                  addr049a:
                  §§push(1);
                  break loop7;
               }
               var _loc16_:* = §§pop();
               if(!_loc19_)
               {
                  while(_loc11_ < _loc16_)
                  {
                     §§push(_loc11_);
                     if(!_loc19_)
                     {
                        _loc11_++;
                        if(_loc20_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc17_ = §§pop();
                     if(!_loc19_)
                     {
                        if(param6[_loc17_].§3[§.victoryCallback != null)
                        {
                           continue;
                        }
                        if(!_loc20_)
                        {
                           continue;
                        }
                     }
                     param6[_loc17_].§3[§.victoryCallback = §>c§;
                  }
               }
               §§push(param6);
               §§push(int(param6.length));
               if(_loc20_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc18_:* = §§pop()[§§pop()].§3[§;
               while(true)
               {
                  if(param7 != null)
                  {
                     _loc18_.victoryCallback = param7;
                     if(!_loc20_)
                     {
                        _loc18_.victoryCallback = §?!V§;
                        addr0549:
                        if(!_loc20_)
                        {
                           break;
                        }
                     }
                  }
                  else if(_loc18_.victoryCallback == null)
                  {
                     §§goto(addr0549);
                  }
                  §=!N§ = §-!>§[0].§&!-§.pathName;
                  §&k§ = §-!>§[0].§8!>§;
                  break;
               }
               return;
            }
            _loc15_ = param6[_loc11_];
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc19_)
                        {
                           _loc11_++;
                           if(!_loc19_)
                           {
                              _loc15_.§<!=§ = this;
                              if(!_loc20_)
                              {
                                 break;
                              }
                              §§push(global);
                              §§push([_loc15_]);
                              §§push(§#e§);
                              if(_loc20_)
                              {
                                 §§push(§§pop());
                              }
                              §§push(§§pop()(§§pop(),null));
                              if(_loc19_)
                              {
                                 break loop11;
                              }
                              §§push(§§pop());
                              if(!_loc20_)
                              {
                                 break loop11;
                              }
                              _loc13_ = §§pop();
                           }
                           _loc15_.§3[§.finishedSectionCallback = _loc13_;
                           _loc15_.§3[§.character = §'r§;
                           if(_loc19_)
                           {
                              break loop10;
                           }
                           _loc15_.§3[§.music = param2;
                           _loc15_.§3[§.customDate = param3 + (_loc10_ + int(param5.length)) / (int(§ b§.length) + int(§-!>§.length)) * (param4 - param3);
                           if(!_loc20_)
                           {
                              break loop9;
                           }
                           if(_loc15_.§2!&§ == null)
                           {
                              break loop9;
                           }
                        }
                        _loc15_.§2!&§.tunnelParams.customDate = Number(_loc15_.§3[§.customDate);
                        if(!_loc19_)
                        {
                           if(_loc15_.§2!&§.§4b§ == §+Z§.§&L§)
                           {
                              break loop10;
                           }
                           break loop9;
                        }
                        continue loop1;
                     }
                     §§goto(addr042a);
                  }
                  §§goto(addr044b);
               }
               addr042a:
               §§push(global);
               §§push([_loc10_]);
               §§push(§[5§);
               if(!_loc19_)
               {
                  §§push(§§pop());
               }
               §§push(§§pop()(§§pop(),null));
               if(_loc20_)
               {
                  break loop11;
               }
               addr044b:
               _loc14_ = §§pop();
               if(!_loc19_)
               {
                  _loc15_.§2!&§.§4b§ = §+!"§.CUSTOM(_loc14_);
               }
               break;
            }
            _loc10_++;
         }
         break loop7;
      }
      
      public static function §!B§(param1:Number) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(§>K§.§`S§.§99§(§>K§.§`S§.levelCount));
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(§§pop() + 0.19);
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc5_)
               {
                  break;
               }
               break loop0;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(§>K§.§]0§.§99§(0));
            if(_loc4_)
            {
               §§push(Number(§§pop()));
               if(_loc5_)
               {
                  break;
               }
               §§push(§§pop() - 0.1);
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  §§push(§§pop() - _loc2_);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(!_loc5_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public static function §,!B§() : Vector.<§+#§>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:* = null as Array;
         var _loc2_:* = null as Save;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§+#§>;
         var _loc5_:* = null as §+#§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  if(§+#§.§&!#§ != null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop1;
                  }
               }
               § L§.mid = 555239;
               if(_loc7_)
               {
                  §§push([§+#§.§<!L§(),§+#§.§"U§(),§+#§.§9!!§(),§+#§.§4!J§(),§+#§.§1>§(),§+#§.§!!`§(),§+#§.§`>§(),§+#§.§<!4§()]);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
                  if(!_loc7_)
                  {
                     break loop1;
                  }
               }
               §+#§.§&!#§ = Vector.<§+#§>(_loc1_);
               break loop1;
            }
            return §+#§.§&!#§;
         }
         _loc2_ = Save.§@!A§();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(_loc7_)
               {
                  loop5:
                  while(true)
                  {
                     §§push(false);
                     if(!_loc6_)
                     {
                        if(_loc2_.§3M§ >= 0)
                        {
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    break loop5;
                                 }
                                 §§push(_loc2_.§3M§);
                                 if(!_loc7_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§§pop() < 15805);
                                 if(_loc6_)
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
                        if(!_loc6_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     break loop2;
                  }
               }
               §§push(0);
               if(_loc7_)
               {
                  §§push(int(§§pop()));
               }
               break;
            }
            _loc3_ = §§pop();
            break;
         }
         _loc4_ = §+#§.§&!#§;
         if(!_loc6_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(_loc7_)
               {
                  _loc3_++;
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               Save.§@!A§().§1!R§(_loc5_.§=-§,null);
            }
            if(_loc7_)
            {
               Cutscenes.§,!L§().§,!N§(false);
               if(!_loc7_)
               {
                  break loop2;
               }
            }
         }
         Cutscenes.§,!9§().§,!N§(false);
         break loop2;
      }
      
      public static function §>! §(param1:String) : §+#§
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §+#§;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§+#§> = §+#§.§,!B§();
         if(_loc6_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               while(true)
               {
                  if(_loc6_)
                  {
                     _loc2_++;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  if(param1 == _loc4_.§=-§)
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc4_;
            }
         }
         return null;
      }
      
      public static function §<!L§() : §+#§
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as §'!]§;
         var _loc4_:* = null as §6O§;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as SomethingWeird;
         var _loc7_:* = null as Array;
         var _loc8_:* = null as Vector.<§'!]§>;
         var _loc9_:* = null as §<!+§;
         var _loc10_:* = null as §<!+§;
         var _loc11_:* = null as § !>§;
         var _loc12_:* = null as TellAFriend;
         var _loc13_:* = null as Array;
         var _loc14_:* = null as Save;
         var _loc15_:* = false;
         var _loc16_:* = null as Save;
         var _loc17_:* = null as §2!;§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc19_)
               {
                  if(§+#§.§2=§ != null)
                  {
                     break;
                  }
                  if(_loc18_)
                  {
                     break loop0;
                  }
               }
               § L§.low = 464289;
               if(!_loc18_)
               {
                  §§push(§+#§.§!B§(0));
                  if(_loc19_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc18_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc19_)
                           {
                              _loc1_ = §§pop();
                              if(_loc19_)
                              {
                                 break loop0;
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00cc);
                     }
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr00ce);
            }
            return §+#§.§2=§;
         }
         while(true)
         {
            §§push(§+#§.§!B§(0.04));
            if(!_loc18_)
            {
               addr00c5:
               §§push(Number(§§pop()));
               if(!_loc19_)
               {
                  break;
               }
            }
            addr00cc:
            §§push(Number(§§pop()));
            break;
         }
         addr00cd:
         _loc2_ = §§pop();
         addr00ce:
         _loc3_ = new §'!]§(§'O§.student,§>K§.§0x§,34,2,null,null,{
            "backwards":true,
            "beginMessage":"I\'m happy to help, but still...\nWhy does everyone act like I\'m some kind of genius?"
         });
         _loc4_ = §'O§.student;
         _loc5_ = §>K§.§>-§;
         _loc6_ = Cutscenes.§,!9§();
         if(!_loc18_)
         {
            §§push([_loc3_,new §'!]§(_loc4_,_loc5_,5,1,-5000,null,{"beginMessage":"All I do is follow the steps they taught us in school."},function(param1:§'!]§):void
            {
               var _temp_1:* = true;
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = _temp_1;
               §+#§.§<!L§().§4!X§(param1);
               if(!_loc2_)
               {
                  Cutscenes.§,!9§().display(1);
               }
            },_loc6_)]);
            if(!_loc18_)
            {
               §§push(§§pop());
            }
            _loc7_ = §§pop();
         }
         _loc8_ = Vector.<§'!]§>(_loc7_);
         _loc9_ = new §<!+§(§>K§.§>-§,5,4,true,new Point3D(0,85,4600),§4!R§.§1!A§(0,1.5707963267948966,0),null,null,null,3000,null,{"beginMessage":"It moves!\nI have no idea how I missed this the first time, but who cares?!\nThis box moves!"});
         _loc10_ = new §<!+§(§>K§.§>-§,1,1,true,null,null,null,null,null,-2400,null,{"beginMessage":"Anyway, where was I...\nThe next step is a class presentation, or a research paper.\nOr worse, both. Bad memories..."});
         _loc11_ = §>K§.§0x§;
         _loc12_ = Cutscenes.§ !6§();
         while(true)
         {
            if(!_loc18_)
            {
               §§push([_loc9_,_loc10_,new §<!+§(_loc11_,34,35,null,null,null,null,null,null,null,null,{
                  "beginMessage":"But the point isn\'t writing words or getting stage fright.\nWhat matters is sharing what you found.\nThen your friends can benefit too. Or they can point out how horribly wrong you are. Either way.",
                  "noCrumblingTiles":true
               },null,null,null,_loc12_)]);
               if(_loc19_)
               {
                  §§push(§§pop());
               }
               _loc13_ = §§pop();
               if(_loc18_)
               {
                  break;
               }
            }
            §+#§.§2=§ = new §+#§("box_from_boxes_5","TheVoid",_loc1_,_loc2_,_loc8_,Vector.<§<!+§>(_loc13_),function():void
            {
               Cutscenes.§ !6§().display(1);
            });
            break;
         }
         _loc14_ = Save.§@!A§();
         if(_loc19_)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(false);
                  if(_loc19_)
                  {
                     if(_loc14_.§3M§ >= 0)
                     {
                        while(true)
                        {
                           if(_loc19_)
                           {
                              §§pop();
                              if(_loc18_)
                              {
                                 break loop5;
                              }
                              §§push(_loc14_.§3M§ < 16147);
                              if(!_loc19_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc18_)
                           {
                              break;
                           }
                           break loop4;
                        }
                     }
                  }
                  §§push(!§§pop());
                  break loop4;
               }
            }
            if(§§pop())
            {
               break loop5;
            }
            break loop1;
         }
         _loc16_ = Save.§@!A§();
         loop7:
         while(true)
         {
            if(_loc19_)
            {
               §§push(false);
               if(_loc19_)
               {
                  while(true)
                  {
                     if(_loc16_.§3M§ >= 0)
                     {
                        if(!_loc18_)
                        {
                           §§pop();
                           if(_loc18_)
                           {
                              break loop7;
                           }
                           §§push(_loc16_.§3M§ < 20115);
                           if(_loc18_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc19_)
                           {
                              break;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc19_)
                        {
                           break loop7;
                        }
                        _loc17_ = §+#§.§2=§.§,U§;
                        if(!_loc19_)
                        {
                           break loop7;
                        }
                        while(true)
                        {
                           §§push(int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§))) > 0);
                           if(_loc19_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc18_)
                              {
                                 break;
                              }
                           }
                           _loc15_ = §§pop();
                           if(!_loc18_)
                           {
                              break loop7;
                           }
                           _loc17_ = §+#§.§2=§.§,U§;
                           addr036a:
                           if(_loc19_)
                           {
                              §§push(§+#§.§2=§);
                              §§push(int(Save.§@!A§().get(_loc17_.§=-§,int(_loc17_.§ -§))));
                              if(!_loc18_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              §§pop().§2!b§(§§pop());
                           }
                           break loop1;
                        }
                        if(!§§pop())
                        {
                           break loop1;
                        }
                        §§goto(addr036a);
                     }
                     else
                     {
                        §§push(false);
                        if(!_loc18_)
                        {
                           break;
                        }
                     }
                  }
               }
               _loc15_ = §§pop();
               break;
            }
            §§goto(addr0315);
         }
         §§goto(addr0366);
      }
      
      public static function §"U§() : §+#§
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as §'!]§;
         var _loc4_:* = null as §6O§;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as LightningStrikesTwice;
         var _loc7_:* = null as Array;
         var _loc8_:* = null as Vector.<§'!]§>;
         var _loc9_:* = null as Array;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc11_)
               {
                  if(§+#§.§@T§ != null)
                  {
                     break;
                  }
                  if(!_loc11_)
                  {
                     break loop0;
                  }
               }
               § L§.low = 652502;
               if(_loc10_)
               {
                  break loop0;
               }
               while(true)
               {
                  §§push(§+#§.§!B§(0.1));
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc10_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc11_)
                           {
                              break;
                           }
                        }
                        _loc1_ = §§pop();
                        if(!_loc10_)
                        {
                           break loop0;
                        }
                        §§goto(addr00a5);
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00a4);
            }
            return §+#§.§@T§;
         }
         while(true)
         {
            §§push(§+#§.§!B§(0.12));
            if(_loc11_)
            {
               §§push(Number(§§pop()));
               if(!_loc11_)
               {
                  break;
               }
            }
            addr00a3:
            §§push(Number(§§pop()));
            break;
         }
         addr00a4:
         _loc2_ = §§pop();
         addr00a5:
         _loc3_ = new §'!]§(§'O§.student,§>K§.§0x§,38,2,null,null,{
            "backwards":true,
            "noCrumblingTiles":true,
            "beginMessage":"You know, that one box could be some sort of fluke.\n" + "Or could it? Whatever, let\'s say it could.\n" + "One box isn\'t enough. I need to prove that lightning strikes twice."
         });
         _loc4_ = §'O§.student;
         _loc5_ = §>K§.§>-§;
         _loc6_ = Cutscenes.§;"§();
         if(_loc11_)
         {
            §§push([_loc3_,new §'!]§(_loc4_,_loc5_,0,null,-200,null,{"beginMessage":"I think there might have been another one around here..."},function(param1:§'!]§):void
            {
               var _temp_1:* = true;
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = _temp_1;
               §+#§.§"U§().§4!X§(param1);
               if(_loc3_)
               {
                  Cutscenes.§;"§().display(1);
               }
            },_loc6_),new §'!]§(§'O§.student,§>K§.§>-§,5,2,null,null,{"beginMessage":"She\'s right. Two isn\'t enough either.\n" + "If they\'re different, then we wouldn\'t know which was the \"normal\" one!"})]);
            if(!_loc10_)
            {
               §§push(§§pop());
            }
            _loc7_ = §§pop();
         }
         _loc8_ = Vector.<§'!]§>(_loc7_);
         if(!_loc10_)
         {
            §§push([new §<!+§(§>K§.§>-§,6,6,true,null,null,null,null,null,-3000,null,{"beginMessage":"Hey, here we go!"}),new §<!+§(§>K§.§>-§,5,5,true,null,null,null,null,null,null,null,{"beginMessage":"So far, it\'s acting like the first. Good, I guess?\n" + "If this box was different, it\'d make my job harder...\n" + "...but it\'d also mean I had more to learn about. I\'d be happy either way."}),new §<!+§(§>K§.§0x§,37,37,null,null,null,null,null,null,null,null,{
               "modifyData":function(param1:int, param2:String):String
               {
                  var _temp_1:* = false;
                  var _loc3_:Boolean = true;
                  var _loc4_:Boolean = _temp_1;
                  §§push(param2 + "|overrideSpawn-1|overrideSpawn-9");
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               },
               "noCrumblingTiles":true,
               "beginMessage":"Wow, I\'ve been through here a lot lately.\n" + "I know science involves doing the same things over and over, but this is ridiculous."
            })]);
            if(_loc11_)
            {
               §§push(§§pop());
            }
            _loc9_ = §§pop();
            if(_loc11_)
            {
               §+#§.§@T§ = new §+#§("box_from_boxes_6","CrumblingWalls",_loc1_,_loc2_,_loc8_,Vector.<§<!+§>(_loc9_));
            }
         }
         break loop1;
      }
      
      public static function §9!!§() : §+#§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as Vector.<§'!]§>;
         var _loc4_:* = null as Array;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc5_)
                  {
                     if(§+#§.§9D§ != null)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop0;
                     }
                     § L§.low = 454393;
                     if(_loc6_)
                     {
                        break loop0;
                     }
                     §§push(§+#§.§!B§(0.12));
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                        }
                     }
                     _loc1_ = §§pop();
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§+#§.§!B§(0.14));
                  if(_loc5_)
                  {
                     break loop1;
                  }
                  §§goto(addr0087);
               }
               §§goto(addr01a5);
            }
            §§push(Number(§§pop()));
            if(!_loc6_)
            {
               addr0087:
               §§push(Number(§§pop()));
            }
            _loc2_ = §§pop();
            break;
         }
         _loc3_ = Vector.<§'!]§>([]);
         while(true)
         {
            if(_loc5_)
            {
               §§push([new §<!+§(§>K§.§>-§,0,0,true,null,null,null,null,null,null,§'O§.§-P§,{
                  "beginMessage":"I don\'t remember the last time I did this...",
                  "modifyData":function(param1:int, param2:String):String
                  {
                     var _temp_1:* = false;
                     var _loc3_:Boolean = true;
                     var _loc4_:Boolean = _temp_1;
                     if(param1 == 0)
                     {
                        §§push(param2);
                        if(_loc3_)
                        {
                           §§push(§§pop() + "|overrideSpawn-16");
                           if(!_loc4_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        return param2;
                     }
                     return §§pop();
                  }
               }),new §<!+§(§>K§.§>=§,1,2,null,null,null,null,null,null,null,§'O§.§-P§,{
                  "beginMessage":"Normally a map maker like me makes no decisions at all.\n" + "When I map a city, I don\'t decide what to draw!\n" + "I look at buildings that other people built, and I copy them down.",
                  "modifyData":function(param1:int, param2:String):String
                  {
                     var _temp_1:* = false;
                     var _loc3_:Boolean = true;
                     var _loc4_:Boolean = _temp_1;
                     if(param1 == 2)
                     {
                        §§push(param2);
                        if(_loc3_)
                        {
                           §§push(§§pop() + "|overrideSpawn-11");
                           if(!_loc4_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        return param2;
                     }
                     return §§pop();
                  }
               }),new §<!+§(§>K§.§>=§,6,7,null,null,null,1612,null,null,null,§'O§.§-P§,{
                  "beginMessage":"But not this time!\n" + "This time, I didn\'t like my map, so I decided to change the world.",
                  "modifyData":function(param1:int, param2:String):String
                  {
                     var _temp_1:* = true;
                     var _loc3_:Boolean = false;
                     var _loc4_:Boolean = _temp_1;
                     if(param1 == 6)
                     {
                        §§push(param2);
                        if(_loc4_)
                        {
                           §§push(§§pop() + "|overrideSpawn-7");
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        return param2;
                     }
                     return §§pop();
                  }
               })]);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               if(_loc5_)
               {
                  §+#§.§9D§ = new §+#§("box_from_boxes_0","CrumblingWalls",_loc1_,_loc2_,_loc3_,Vector.<§<!+§>(_loc4_));
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            §+#§.§9D§.§&J§ = true;
            break;
         }
         addr01a5:
         return §+#§.§9D§;
      }
      
      public static function §4!J§() : §+#§
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as Vector.<§'!]§>;
         var _loc4_:* = null as §<!+§;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as §6O§;
         var _loc7_:* = null as DontQuestionIt;
         var _loc8_:* = null as Array;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc10_)
                  {
                     if(§+#§.§`!#§ != null)
                     {
                        break;
                     }
                     if(_loc9_)
                     {
                        § L§.low = 233797;
                        if(_loc10_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§+#§.§!B§(0.6));
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc10_)
                        {
                           break loop1;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc10_)
                     {
                        break loop1;
                     }
                     _loc1_ = §§pop();
                     if(_loc10_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§+#§.§!B§(0.61));
                  if(!_loc10_)
                  {
                     break loop1;
                  }
                  §§goto(addr009e);
               }
               §§goto(addr01cb);
            }
            addr009e:
            §§push(Number(§§pop()));
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            _loc2_ = §§pop();
            break;
         }
         _loc3_ = Vector.<§'!]§>([]);
         _loc4_ = new §<!+§(§>K§.§7&§,4,4,true,null,null,null,null,null,null,§'O§.skater,{
            "beginMessage":"Ok, I found one. Now what?",
            "startTilesLength":-1
         });
         _loc5_ = §>K§.§7&§;
         _loc6_ = §'O§.skater;
         _loc7_ = Cutscenes.§&w§();
         loop2:
         while(true)
         {
            if(_loc9_)
            {
               §§push([_loc4_,new §<!+§(_loc5_,2,2,true,null,null,null,null,90,-600,_loc6_,{"beginMessage":"\"Try it,\" she says. \"It\'ll be fun!\"\n" + "\"I\'m totally not asking because I need a henchman!\""},null,function(param1:§'!]§):void
               {
                  var _temp_1:* = true;
                  var _loc2_:Boolean = false;
                  var _loc3_:Boolean = _temp_1;
                  §+#§.§4!J§().§4!X§(param1);
                  if(!_loc2_)
                  {
                     Cutscenes.§&w§().display(1);
                  }
               },null,_loc7_)]);
               if(!_loc10_)
               {
                  §§push(§§pop());
               }
               _loc8_ = §§pop();
               while(true)
               {
                  if(!_loc10_)
                  {
                     §+#§.§`!#§ = new §+#§("box_from_river_2","UnsafeSpeeds",_loc1_,_loc2_,_loc3_,Vector.<§<!+§>(_loc8_));
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  §+#§.§`!#§.§=!N§ = §>K§.§;!4§.pathName;
                  if(!_loc10_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            §+#§.§`!#§.§&k§ = 2;
            if(_loc9_)
            {
               §+#§.§`!#§.§&J§ = true;
            }
            break;
         }
         addr01cb:
         return §+#§.§`!#§;
      }
      
      public static function §1>§() : §+#§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as Vector.<§'!]§>;
         var _loc4_:* = null as Array;
         loop0:
         while(true)
         {
            if(!_loc6_)
            {
               if(§+#§.§=m§ != null)
               {
                  break;
               }
               while(true)
               {
                  if(!_loc6_)
                  {
                     § L§.low = 700146;
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  addr008b:
                  §§push(§+#§.§!B§(0.61));
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           _loc1_ = §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           _loc3_ = Vector.<§'!]§>([]);
                           addr008c:
                           §§push([new §<!+§(§>K§.§7&§,1,0,true,null,null,null,null,null,null,§'O§.student,{
                              "beginMessage":"I still don\'t know how he stays upright in those skates.\n" + "I always thought it was good balance, but he seems more stable than that.\n" + "Maybe the skates are gel? Sounds expensive...\n" + "These rings keep the boxes upright. Is he carrying one of those?\n",
                              "victoryMessage":"I know I could just ask, but that\'s no fun."
                           })]);
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                           }
                           _loc4_ = §§pop();
                           §+#§.§=m§ = new §+#§("box_from_river_2_2","LeaveTheSolarSystem",_loc1_,_loc2_,_loc3_,Vector.<§<!+§>(_loc4_));
                           §+#§.§=m§.§=!N§ = §>K§.§;!4§.pathName;
                           §+#§.§=m§.§&k§ = 2;
                           §+#§.§=m§.§&J§ = true;
                           §+#§.§=m§.§=R§ = §+#§.§4!J§();
                           break loop0;
                        }
                        addr0082:
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           addr008a:
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  _loc2_ = §§pop();
               }
               while(true)
               {
                  §§push(§+#§.§!B§(0.62));
                  if(_loc5_)
                  {
                     §§goto(addr0082);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr008b);
            }
            §§goto(addr008c);
         }
         return §+#§.§=m§;
      }
      
      public static function §!!`§() : §+#§
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as Array;
         var _loc4_:* = null as Vector.<§'!]§>;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as §"B§;
         var _loc7_:* = null as Point;
         var _loc8_:* = null as §6O§;
         var _loc9_:* = null as LeaveItHere;
         var _loc10_:* = null as Array;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc11_)
               {
                  if(§+#§.§"l§ != null)
                  {
                     break;
                  }
                  if(!_loc12_)
                  {
                     break loop0;
                  }
               }
               § L§.low = 62942;
               if(_loc12_)
               {
                  while(true)
                  {
                     §§push(§+#§.§!B§(0.7));
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(_loc12_)
                     {
                        _loc1_ = §§pop();
                        if(_loc12_)
                        {
                           break loop0;
                        }
                        §§goto(addr014f);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr014f);
            }
            return §+#§.§"l§;
         }
         addr00a8:
         §§push(§+#§.§!B§(0.73));
         if(_loc12_)
         {
            §§push(Number(§§pop()));
            if(_loc12_)
            {
               addr00a7:
               §§push(Number(§§pop()));
            }
         }
         _loc2_ = §§pop();
         if(_loc12_)
         {
            loop2:
            while(true)
            {
               §§push(§§findproperty(§'!]§));
               §§push(§'O§.§-P§);
               §§push(§>K§.§`S§);
               §§push(2);
               §§push(2);
               §§push(-700);
               §§push(null);
               §§push("beginMessage");
               §§push("Imagine if we DO find a teapot floating around!\n");
               §§push("Wait a minute... we actually might!\n");
               if(_loc12_)
               {
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc12_)
                        {
                           §§push("She might have brought a teapot for that exact reason.\n");
                           if(_loc11_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop());
                        §§push("She tosses it out of a tunnel, and points at where she threw it...\n");
                        if(_loc11_)
                        {
                           break loop2;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc12_)
                        {
                           §§push(§§pop());
                        }
                     }
                     §§push("...and I tell her the teapot doesn\'t exist, and she keeps a straight face...\n");
                     if(!_loc11_)
                     {
                        break;
                     }
                     break loop2;
                  }
               }
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc12_)
                  {
                     §§push("...she tells me the FSM put it there. Doesn\'t she always talk about how she acts as \"one of His noodly appendages?\"\n");
                     if(!_loc11_)
                     {
                        break loop2;
                     }
                     addr0134:
                     §§push(§§pop() + §§pop());
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§push([new §§pop().§'!]§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null)]);
               if(_loc12_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§goto(addr0134);
         }
         addr014f:
         _loc4_ = Vector.<§'!]§>(_loc3_);
         _loc5_ = §>K§.§`S§;
         _loc6_ = §4!R§.§1!A§(0,1.5707963267948966,0);
         _loc7_ = new Point(50,0);
         _loc8_ = §'O§.§-P§;
         _loc9_ = Cutscenes.§4,§();
         if(_loc12_)
         {
            §§push([new §<!+§(_loc5_,3,3,true,null,_loc6_,null,_loc7_,null,5200,_loc8_,{
               "beginMessage":"Ah, here we go.",
               "modifyData":function(param1:int, param2:String):String
               {
                  var _temp_1:* = true;
                  var _loc3_:Boolean = false;
                  var _loc4_:Boolean = _temp_1;
                  §§push(param2 + "|overrideSpawn-18|spawnZ-1400");
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
            },null,function(param1:§'!]§):void
            {
               var _temp_1:* = true;
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = _temp_1;
               §+#§.§!!`§().§4!X§(param1);
               if(!_loc2_)
               {
                  Cutscenes.§4,§().display(1);
               }
            },null,_loc9_)]);
            if(!_loc11_)
            {
               §§push(§§pop());
            }
            _loc10_ = §§pop();
            if(!_loc11_)
            {
               §+#§.§"l§ = new §+#§("box_from_T_3","TravelTheGalaxy",_loc1_,_loc2_,_loc4_,Vector.<§<!+§>(_loc10_),null,Vector.<int>([2,3]));
               if(!_loc12_)
               {
                  break loop1;
               }
            }
            §+#§.§"l§.§&J§ = true;
         }
         break loop1;
      }
      
      public static function §`>§() : §+#§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as Vector.<§'!]§>;
         var _loc4_:* = null as Array;
         while(true)
         {
            if(_loc5_)
            {
               if(§+#§.§"%§ != null)
               {
                  break;
               }
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           § L§.low = 626064;
                           if(!_loc6_)
                           {
                              §§push(§+#§.§!B§(0.73));
                              if(!_loc6_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    break loop2;
                                 }
                              }
                              _loc1_ = §§pop();
                              if(_loc6_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        §§push(§+#§.§!B§(0.75));
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        break loop2;
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc2_ = §§pop();
                  break;
               }
            }
            break loop1;
         }
         return §+#§.§"%§;
      }
      
      public static function §<!4§() : §+#§
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = null as §'!]§;
         var _loc4_:* = null as §6O§;
         var _loc5_:* = null as § !>§;
         var _loc6_:* = null as Affliction;
         var _loc7_:* = null as Array;
         var _loc8_:* = null as Vector.<§'!]§>;
         var _loc9_:* = null as §<!+§;
         var _loc10_:* = null as §<!+§;
         var _loc11_:* = null as §<!+§;
         var _loc12_:* = null as § !>§;
         var _loc13_:* = null as CrossingTheGap;
         var _loc14_:* = null as Array;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc16_)
               {
                  if(§+#§.§>!F§ != null)
                  {
                     break;
                  }
                  if(!_loc16_)
                  {
                     § L§.low = 39292;
                     if(_loc16_)
                     {
                        break loop0;
                     }
                  }
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(§+#§.§!B§(0.9));
                     if(!_loc16_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc16_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc16_)
                        {
                           _loc1_ = §§pop();
                           if(!_loc15_)
                           {
                              break loop0;
                           }
                           §§push(§+#§.§!B§(1));
                           if(_loc16_)
                           {
                              break loop2;
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc16_)
                     {
                        break loop2;
                     }
                     break;
                  }
                  _loc2_ = §§pop();
                  break loop0;
               }
               §§push(Number(§§pop()));
               break loop3;
            }
            return §+#§.§>!F§;
         }
         _loc3_ = new §'!]§(§'O§.student,§>K§.§>=§,6,2,null,null,{
            "backwards":true,
            "noCrumblingTiles":true,
            "beginMessage":"That\'s it, I\'m going somewhere else this time.\n" + "There have to be rings elsewhere, right?\n" + "No, no, there don\'t \"have to\" be anything.\n" + "But I can hope. Better yet, I can check."
         });
         _loc4_ = §'O§.student;
         _loc5_ = §>K§.§>y§;
         _loc6_ = Cutscenes.§0F§();
         if(_loc15_)
         {
            §§push([_loc3_,new §'!]§(_loc4_,_loc5_,2,null,null,null,{
               "noCrumblingTiles":true,
               "beginMessage":"I\'ve been assuming the rings were all in the same place, but why would they be?\n" + "At least this time I didn\'t take a year to notice the assumption."
            },function(param1:§'!]§):void
            {
               var _temp_1:* = true;
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = _temp_1;
               §+#§.§<!4§().§4!X§(param1);
               if(_loc3_)
               {
                  Cutscenes.§0F§().display(1);
               }
            },_loc6_),new §'!]§(§'O§.student,§>K§.§>y§,6,2,null,null,{"beginMessage":"He wants my help, but he doesn\'t want to test anything?\n" + "I guess he doesn\'t want my help."},function(param1:§'!]§):void
            {
               var _temp_1:* = false;
               var _loc6_:Boolean = true;
               var _loc7_:Boolean = _temp_1;
               var _loc2_:* = false;
               var _loc4_:* = false;
               var _loc5_:* = null as §]k§;
               if(_loc6_)
               {
                  §+#§.§<!4§().§4!X§(param1);
               }
               var _loc3_:Protip = Cutscenes.§ !1§();
               if(!_loc7_)
               {
                  if(_loc3_.§?^§ != null)
                  {
                     if(!_loc7_)
                     {
                        _loc5_ = _loc3_.§?^§;
                        _loc4_ = Boolean(Save.§@!A§().get(_loc5_.§=-§,Boolean(_loc5_.§ -§)));
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc4_ = §§pop();
                  }
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§push(false);
                                 if(!_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 _loc2_ = §§pop();
                                 break loop1;
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00d9);
                        }
                        else
                        {
                           §§push(false);
                           if(!_loc6_)
                           {
                              break loop0;
                           }
                        }
                     }
                     _loc2_ = Boolean(§§pop());
                     break;
                  }
                  §§push(_loc2_);
                  break;
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     addr00ad:
                     Protip.§3!N§ = false;
                     if(_loc6_)
                     {
                        Cutscenes.§ !1§().display(1);
                     }
                  }
               }
               else
               {
                  §+#§.§<!4§().§>c§();
               }
               addr00d9:
            })]);
            if(_loc15_)
            {
               §§push(§§pop());
            }
            _loc7_ = §§pop();
         }
         _loc8_ = Vector.<§'!]§>(_loc7_);
         _loc9_ = new §<!+§(§>K§.§>y§,7,6,true,null,null,1500,null,null,null,null,null,function():Object
         {
            var _temp_1:* = false;
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = _temp_1;
            var _loc1_:* = null as String;
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc2_)
                  {
                     if(!§'O§.student.§3>§)
                     {
                        §§push("quitCallback");
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  while(true)
                  {
                     §§push("Stay very calm...\n");
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §§push("How would that even affect anything? Wait, no.\n");
                           if(!_loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              §§push(§§pop());
                              §§push("The first question isn\'t how this works, the first question is whether it works at all.\n");
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push("I can make all the hypotheses I like later, once I know I\'m dealing with a real phenomenon.");
                              break;
                           }
                           break loop1;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop());
                     }
                     _loc1_ = §§pop();
                     break loop0;
                  }
                  §§goto(addr0062);
               }
               §§goto(addr007a);
            }
            §§push("beginMessage");
            if(_loc2_)
            {
               addr0062:
               §§push({(§§pop()):_loc1_});
               if(_loc2_)
               {
                  return §§pop();
               }
               addr007a:
               return §§pop();
            }
            break loop1;
         },function(param1:§'!]§):void
         {
            var _temp_1:* = true;
            var _loc5_:Boolean = false;
            var _loc6_:Boolean = _temp_1;
            var _loc3_:* = false;
            var _loc4_:* = null as §]k§;
            var _loc2_:Protip = Cutscenes.§ !1§();
            loop0:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     if(_loc2_.§?^§ != null)
                     {
                        if(!_loc5_)
                        {
                           _loc4_ = _loc2_.§?^§;
                           if(!_loc5_)
                           {
                              §§push(Boolean(Save.§@!A§().get(_loc4_.§=-§,Boolean(_loc4_.§ -§))));
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc6_)
                              {
                                 break;
                              }
                              _loc3_ = §§pop();
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc3_ = §§pop();
                     }
                  }
                  §§push(_loc3_);
                  break;
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §+#§.§<!4§().§>c§();
                     if(_loc6_)
                     {
                     }
                  }
               }
               else
               {
                  Protip.§3!N§ = false;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               §§goto(addr00b6);
            }
            Cutscenes.§ !1§().display(1);
            addr00b6:
         },function():Boolean
         {
            var _temp_1:* = true;
            var _loc4_:Boolean = false;
            var _loc5_:Boolean = _temp_1;
            var _loc2_:* = false;
            var _loc3_:* = null as §]k§;
            var _loc1_:Protip = Cutscenes.§ !1§();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(_loc1_.§?^§ != null)
                        {
                           if(_loc5_)
                           {
                              _loc3_ = _loc1_.§?^§;
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(Boolean(Save.§@!A§().get(_loc3_.§=-§,Boolean(_loc3_.§ -§))));
                              if(_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc5_)
                                 {
                                    break loop1;
                                 }
                              }
                              _loc2_ = §§pop();
                              if(_loc4_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        else
                        {
                           §§push(false);
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc2_ = §§pop();
                        }
                     }
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr00aa);
               }
               if(!§§pop())
               {
                  Protip.§3!N§ = true;
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop2;
               }
               if(_loc4_)
               {
                  break loop2;
               }
               §§push(false);
               if(_loc5_)
               {
                  addr008d:
                  return §§pop();
               }
               §§goto(addr00ab);
            }
            Cutscenes.§ !1§().display(1);
            addr00ab:
            return true;
            addr00aa:
         },Cutscenes.§ !1§());
         _loc10_ = new §<!+§(§>K§.§>y§,4,4,true,null,null,1450,null,null,null,null,{
            "beginMessage":"Hypothesis time. Am I giving off a signal the Tunnels can sense?\n" + "If so, they could be monitoring the Planet. Kind of creepy.\n" + "But would alien technology even be able to understand radio?\n" + "I\'ll make sure to test this one. How else could it work?",
            "noCrumblingTiles":true
         });
         _loc11_ = new §<!+§(§>K§.§>=§,0,1,null,null,null,null,null,null,null,null,{
            "beginMessage":"Here\'s a quick test... What if I DON\'T focus on staying calm?\n" + "Then the box should go back to its usual behavior.\n" + "Thus proving that I\'m the one controlling it.",
            "onlyResetCharacter":function(param1:§ !W§):Boolean
            {
               return false;
            }
         });
         _loc12_ = §>K§.§>=§;
         _loc13_ = Cutscenes.§->§();
         if(!_loc16_)
         {
            §§push([_loc9_,_loc10_,_loc11_,new §<!+§(_loc12_,11,12,null,null,null,null,null,null,null,null,{
               "endTiles":false,
               "beginMessage":"It worked! That rules out coincidence. Probably.\n" + "What else? I want at least three possible explanations here.\n" + "Maybe I fall differently when I focus, and the Tunnels can tell from the air movement. Seems unlikely, but not impossible.\n" + "Or maybe it\'s something I do while I teleport. I still don\'t know how that works...\n" + "And with that, I have four possibilities to test. Not a bad start."
            },null,null,null,_loc13_)]);
            if(_loc15_)
            {
               §§push(§§pop());
            }
            _loc14_ = §§pop();
            if(!_loc16_)
            {
               §+#§.§>!F§ = new §+#§("box_from_U_7","WormholeToSomewhere",_loc1_,_loc2_,_loc8_,Vector.<§<!+§>(_loc14_),function():void
               {
                  Cutscenes.§->§().display(1);
               });
            }
         }
         break loop1;
      }
      
      public static function §1!"§(param1:§+#§) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:* = null as §+#§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §2!;§;
         var _loc8_:* = null as §+#§;
         if(_loc9_)
         {
            § L§.mid = 669461;
         }
         §§push(int(§+#§.§,!B§().indexOf(param1,0)));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(param1.§&J§);
            if(_loc9_)
            {
               if(!§§pop())
               {
                  §§push(_loc2_);
                  if(!_loc10_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc10_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  var _loc4_:* = §§pop();
                  §§push(int(§+#§.§,!B§().length));
                  if(_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  while(true)
                  {
                     if(_loc9_)
                     {
                        while(_loc4_ < _loc5_)
                        {
                           §§push(_loc4_);
                           if(_loc9_)
                           {
                              _loc4_++;
                              if(_loc9_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc6_ = §§pop();
                           if(_loc9_)
                           {
                              if(!§+#§.§,!B§()[_loc6_].§&J§)
                              {
                                 _loc3_ = §+#§.§,!B§()[_loc6_];
                                 _loc7_ = _loc3_.§,U§;
                                 if(!_loc10_)
                                 {
                                    §§push(int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
                                    §§push(int(_loc3_.§ b§.length));
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() + int(_loc3_.§-!>§.length));
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       _loc8_ = §+#§.§,!B§()[_loc6_];
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             _loc8_.§+!=§ = int(_loc8_.§ b§.length);
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc8_.§?D§.§3X§();
                                          if(!_loc10_)
                                          {
                                             §+#§.§,!B§()[_loc6_].§>c§();
                                          }
                                          break;
                                       }
                                       return;
                                    }
                                    if(_loc9_)
                                    {
                                       §+#§.§,!B§()[_loc6_].§>c§();
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     §[!<§.§@!A§().§4X§(§4N§.§@!A§());
                     if(_loc9_)
                     {
                        Main.instance.§,Z§(null);
                        if(_loc10_)
                        {
                           break;
                        }
                        §4N§.§@!A§().§0H§.visible = true;
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     §4N§.§@!A§().§0H§.reset();
                     break;
                  }
                  return;
               }
               if(_loc10_)
               {
                  break;
               }
               §§push(false);
               if(_loc9_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc9_)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc9_)
                              {
                                 §§push(1);
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(int(§+#§.§,!B§().length));
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              break loop2;
                           }
                           if(_loc9_)
                           {
                              §§pop();
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§push(§+#§.§,!B§());
                              §§push(_loc2_);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§push(§§pop()[§§pop()].§&J§);
                              if(_loc10_)
                              {
                                 break loop2;
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop2;
                     }
                     §§pop();
                     §§push(§+#§.§,!B§());
                     §§push(_loc2_);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop()[§§pop()].§=R§ == param1);
                     if(_loc9_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        break loop3;
                     }
                  }
               }
            }
            if(§§pop())
            {
               break;
            }
            addr01ab:
            §[!<§.§@!A§().§4X§(§4N§.§@!A§());
            if(!_loc10_)
            {
               Main.instance.§,Z§(null);
            }
            §4N§.§@!A§().§0H§.visible = true;
            §4N§.§@!A§().§0H§.reset();
            return;
         }
         §§push(§+#§.§,!B§());
         §§push(_loc2_);
         if(_loc9_)
         {
            §§push(§§pop() + 1);
         }
         _loc3_ = §§pop()[§§pop()];
         if(_loc9_)
         {
            _loc3_.§+!=§ = int(_loc3_.§ b§.length);
            while(true)
            {
               if(!_loc10_)
               {
                  _loc3_.§?D§.§3X§();
                  if(_loc10_)
                  {
                     break;
                  }
               }
               §§push(§+#§.§,!B§());
               §§push(_loc2_);
               if(!_loc10_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()].§>c§();
               break;
            }
         }
         §§goto(addr01ab);
      }
      
      public function §2!b§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §+!=§ = param1;
               if(!_loc4_)
               {
                  break;
               }
            }
            §?D§.§3X§();
            break;
         }
         var _loc2_:§2!;§ = §,U§;
         if(_loc4_)
         {
            if(§+!=§ > int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))))
            {
               if(_loc4_)
               {
                  §,U§.§?F§(§+!=§);
               }
            }
         }
      }
      
      public function §]!%§(param1:§ !W§, param2:TunnelSection, param3:TunnelSection, param4:Number, param5:Number, param6:Number) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc11_:* = false;
         var _loc12_:* = 0;
         loop0:
         while(true)
         {
            if(_loc13_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(§+!=§);
                     if(!_loc14_)
                     {
                        §§push(int(§ b§.length));
                        if(_loc13_)
                        {
                           §§push(§§pop() + int(§-!>§.length));
                           if(!_loc13_)
                           {
                              break;
                           }
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc14_)
                           {
                              §§push(null);
                              break loop0;
                           }
                           break loop1;
                        }
                        §§push(§+!=§);
                     }
                     §§push(int(§ b§.length));
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     break;
                  }
                  §§push(§-!>§);
                  §§push(§+!=§);
                  if(!_loc14_)
                  {
                     §§push(§§pop() - int(§ b§.length));
                  }
                  §§push(§§pop()[§§pop()]);
                  break loop0;
               }
            }
            break loop1;
         }
         var _loc7_:§'!]§ = §§pop();
         if(!_loc14_)
         {
            §§push(_loc7_ is §<!+§);
            if(!_loc14_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc14_)
               {
                  §§goto(addr00d5);
               }
            }
            else
            {
               § L§.mid = 359069;
            }
            var _loc8_:§<!+§ = _loc7_;
            while(true)
            {
               if(_loc13_)
               {
                  if(param3 != null)
                  {
                     break;
                  }
               }
               param3 = param2;
               break;
            }
            §§push(param3.§[9§);
            if(!_loc14_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            while(true)
            {
               loop5:
               while(true)
               {
                  loop20:
                  while(true)
                  {
                     loop22:
                     while(true)
                     {
                        loop23:
                        while(true)
                        {
                           if(_loc13_)
                           {
                              loop24:
                              while(true)
                              {
                                 §§push(false);
                                 §§push(false);
                                 if(_loc13_)
                                 {
                                    if(_loc7_.§&!-§.pathName == param1.§?!I§.pathName)
                                    {
                                       if(!_loc14_)
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             §§push(Boolean(_loc7_.§3[§.backwards));
                                             if(!_loc14_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      break loop24;
                                                   }
                                                   §§push(_loc7_.§3T§);
                                                   if(_loc14_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc7_.§8!>§);
                                                }
                                                §§push(§§pop() <= _loc9_);
                                                if(_loc14_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc14_)
                                    {
                                       §§push(Boolean(_loc7_.§3[§.backwards));
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       break loop20;
                                    }
                                    break loop22;
                                 }
                                 break loop23;
                              }
                              if(!§§pop())
                              {
                                 §§push(_loc7_.§3T§);
                                 break loop5;
                              }
                              if(!_loc13_)
                              {
                                 continue loop6;
                              }
                           }
                           §§push(_loc7_.§8!>§);
                           if(_loc13_)
                           {
                           }
                           break loop5;
                        }
                        §§goto(addr01c0);
                     }
                     §§goto(addr01d9);
                  }
                  addr01c0:
                  if(Boolean(§§pop()))
                  {
                     if(!_loc13_)
                     {
                        break loop22;
                     }
                     continue loop6;
                  }
                  §§goto(addr020d);
                  §§push(-1);
               }
               while(true)
               {
                  §§push(_loc9_);
                  if(!_loc14_)
                  {
                     §§push(§§pop() >= §§pop());
                     break loop20;
                  }
                  §§goto(addr0200);
               }
               §§goto(addr020d);
            }
            while(true)
            {
               while(true)
               {
                  if(Boolean(_loc7_.§3[§.backwards))
                  {
                     addr01d9:
                     §§push(_loc7_.§8!>§);
                     if(_loc14_)
                     {
                        break;
                     }
                     §§push(_loc9_);
                     if(_loc13_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc14_)
                        {
                           break;
                        }
                        continue loop13;
                     }
                  }
                  else
                  {
                     §§push(_loc9_);
                     §§push(_loc7_.§8!>§);
                  }
                  addr0200:
                  §§push(§§pop() - §§pop());
                  if(_loc13_)
                  {
                     break;
                  }
                  continue loop13;
               }
               addr020d:
               §§push(int(§§pop()));
               continue loop13;
            }
            var _loc10_:* = §§pop();
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     loop12:
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           loop14:
                           while(true)
                           {
                              if(!_loc14_)
                              {
                                 §§push(param2.§[9§);
                                 §§push(_loc7_.§3T§);
                                 if(_loc13_)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                §§push(_loc8_.§<Z§);
                                                if(!_loc14_)
                                                {
                                                   _loc12_ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param6);
                                                               if(_loc13_)
                                                               {
                                                                  if(_loc12_ > 0)
                                                                  {
                                                                     §§push(param2.startZ);
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc12_);
                                                                        break;
                                                                     }
                                                                     break loop18;
                                                                  }
                                                               }
                                                               §§push(param2.endZ);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc13_)
                                                                  {
                                                                     break loop18;
                                                                  }
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(_loc13_)
                                                               {
                                                                  break loop18;
                                                               }
                                                               break loop17;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc14_)
                                                            {
                                                               break loop17;
                                                            }
                                                            break;
                                                         }
                                                         §§push(§§pop() > §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            break loop12;
                                                         }
                                                         _loc11_ = Boolean(§§pop());
                                                      }
                                                      §§push(Number(§§pop()));
                                                      break loop18;
                                                   }
                                                   break loop14;
                                                }
                                                break loop15;
                                             }
                                             break;
                                          }
                                          _loc11_ = false;
                                          §§push(_loc11_);
                                          if(!_loc14_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!§§pop())
                                          {
                                             break loop14;
                                          }
                                          §§push(_loc10_);
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             break loop13;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             break;
                                          }
                                          §§goto(addr0342);
                                          §§push(_loc10_);
                                       }
                                       §§push(Boolean(_loc7_.§3[§.backwards));
                                       if(_loc14_)
                                       {
                                          break loop12;
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(_loc7_.§3T§);
                                          break;
                                       }
                                       if(_loc14_)
                                       {
                                          break loop8;
                                       }
                                    }
                                    §§push(1);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_)
                                       {
                                          break loop10;
                                       }
                                       addr0342:
                                       §§push(0);
                                    }
                                    break loop9;
                                 }
                                 break loop13;
                              }
                              §§push(_loc7_.§3T§);
                              §§push(1);
                              if(_loc13_)
                              {
                                 §§push(§§pop() + §§pop());
                                 break loop10;
                              }
                              break loop9;
                           }
                           §§goto(addr0377);
                        }
                        §§goto(addr030b);
                     }
                     _loc11_ = §§pop();
                     if(_loc14_)
                     {
                     }
                     §§goto(addr0377);
                  }
                  §§push(param2.§[9§);
                  if(!_loc13_)
                  {
                     break;
                  }
                  addr030b:
                  if(§§pop() == §§pop())
                  {
                     §§push(true);
                     if(!_loc14_)
                     {
                        break loop12;
                     }
                  }
                  else
                  {
                     §?D§.§3X§();
                     if(!_loc14_)
                     {
                        §>c§();
                     }
                     §§goto(addr0377);
                  }
                  §§goto(addr0379);
               }
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §?D§.§3X§();
                     addr0377:
                     addr0379:
                     if(!_loc11_)
                     {
                        break;
                     }
                     if(!_loc14_)
                     {
                        break loop8;
                     }
                  }
                  else
                  {
                     §?D§.§?F§(_loc10_);
                     if(!_loc14_)
                     {
                        §§goto(addr0377);
                     }
                  }
                  §§goto(addr0392);
               }
               §§goto(addr03a0);
            }
            §4!X§(_loc7_);
            if(_loc13_)
            {
               addr0392:
               param1.§<§(param1.characters[0]);
            }
            addr03a0:
            return;
         }
         addr00d5:
      }
      
      public function §4!X§(param1:§'!]§) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(int(§ b§.indexOf(param1,0)));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(false);
            if(_loc3_)
            {
               if(_loc2_ >= 0)
               {
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
               §§pop();
               §§push(param1 is §<!+§);
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        _loc2_ = int(§-!>§.indexOf(param1,0));
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              if(§§pop() < §§pop())
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(int(§ b§.length));
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              break loop4;
                           }
                           break loop2;
                        }
                     }
                     _loc2_ = int(§§pop());
                     if(_loc3_)
                     {
                        break loop5;
                     }
                     break loop1;
                  }
                  §§push(_loc2_);
                  §§push(0);
                  break loop2;
               }
               §§push(§§findproperty(§2!b§));
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§2!b§(§§pop());
               break loop1;
            }
            if(§§pop() >= §§pop())
            {
               break loop3;
            }
            break;
         }
      }
      
      public function §1'§(param1:§'!]§, param2:TunnelSection) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
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
                           if(!_loc6_)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc5_)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§+!=§);
                                          if(_loc5_)
                                          {
                                             §§push(int(§ b§.length));
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + int(§-!>§.length));
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(null);
                                                   break loop6;
                                                }
                                                break loop7;
                                             }
                                             §§push(§+!=§);
                                          }
                                          §§push(int(§ b§.length));
                                          break;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          break;
                                       }
                                       §§push(§-!>§);
                                       §§push(§+!=§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() - int(§ b§.length));
                                       }
                                       §§push(§§pop()[§§pop()]);
                                       break loop6;
                                    }
                                 }
                                 break loop7;
                              }
                              if(§§pop() != §§pop())
                              {
                                 break loop4;
                              }
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                              § L§.mid = 764472;
                              loop9:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(param2.§[9§);
                                          if(_loc5_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc6_)
                                             {
                                                _loc3_ = §§pop();
                                                §§push(false);
                                                if(_loc5_)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(!_loc6_)
                                                         {
                                                            if(param1.§&!-§.pathName != param2.tunnel.§?!I§.pathName)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               break loop13;
                                                            }
                                                         }
                                                         §§pop();
                                                         §§push(Boolean(param1.§3[§.backwards));
                                                         if(!_loc6_)
                                                         {
                                                            break loop13;
                                                         }
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         break loop10;
                                                      }
                                                      §§pop();
                                                      §§push(Boolean(param1.§3[§.backwards));
                                                      if(!_loc5_)
                                                      {
                                                         break loop5;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         §§push(param1.§3T§);
                                                         break loop9;
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§push(param1.§3T§);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(param1.§8!>§);
                                                   }
                                                   §§push(§§pop() <= _loc3_);
                                                   if(_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   break loop14;
                                                }
                                                break;
                                             }
                                             break loop9;
                                          }
                                          break loop1;
                                       }
                                       §§push(param1.§8!>§);
                                       break loop9;
                                    }
                                    §§goto(addr0191);
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(Boolean(param1.§3[§.backwards));
                                       break loop12;
                                    }
                                 }
                                 else
                                 {
                                    §§push(-1);
                                    if(_loc5_)
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr01ce);
                                 }
                              }
                              §§push(§§pop() >= _loc3_);
                              if(_loc6_)
                              {
                                 break loop10;
                              }
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc5_)
                                 {
                                    break loop10;
                                 }
                                 addr0191:
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    break loop0;
                                 }
                                 §§push(_loc3_ - param1.§8!>§);
                                 break loop2;
                              }
                           }
                           §§push(param1.§8!>§ - _loc3_);
                           if(_loc5_)
                           {
                              break loop2;
                           }
                           break loop1;
                        }
                        §§goto(addr024c);
                     }
                     §§goto(addr024b);
                  }
                  §§goto(addr0231);
               }
               §§push(§§pop() + 1);
               if(_loc5_)
               {
                  §§push(int(§§pop()));
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               addr01ce:
               _loc4_ = §§pop();
               §§push(_loc4_);
               if(!_loc5_)
               {
                  break;
               }
               if(Boolean(param1.§3[§.backwards))
               {
                  break;
               }
               §§goto(addr01f2);
               §§push(param1.§3T§);
            }
            addr01f2:
            §§push(param1.§8!>§);
            if(Boolean(param1.§3[§.backwards))
            {
               §§push(param1.§3T§);
               if(_loc5_)
               {
               }
            }
            else
            {
               §§push(param1.§8!>§);
            }
            if(§§pop() <= §§pop() - §§pop())
            {
               break;
            }
            §§goto(addr024b);
         }
         if(_loc4_ <= 0)
         {
            if(!_loc6_)
            {
               addr0231:
               §?D§.§3X§();
            }
         }
         else
         {
            §?D§.§?F§(_loc4_);
         }
         addr024c:
         return true;
         addr024b:
      }
      
      public function §?!V§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §+#§.§1!"§(this);
         }
      }
      
      public function §#K§(param1:§'!]§) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            § L§.mid = 531228;
         }
         §§push(int(§ b§.indexOf(param1,0)));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(false);
         if(!_loc4_)
         {
            if(_loc2_ < 0)
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     §§pop();
                     §§push(param1 is §<!+§);
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
            }
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     while(true)
                     {
                        §§push(int(§-!>§.indexOf(param1,0)));
                        if(_loc3_)
                        {
                           _loc2_ = §§pop();
                           §§push(_loc2_);
                           §§push(0);
                           if(_loc3_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              §§push(int(§ b§.length));
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              break loop2;
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        break loop2;
                     }
                  }
                  §§push(_loc2_);
                  break loop2;
               }
               if(§§pop() >= §§pop())
               {
                  §§push(§§findproperty(§2!b§));
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().§2!b§(§§pop());
                  §>c§();
               }
               break loop1;
            }
            §§push(0);
            break loop3;
         }
      }
      
      public function §#e§(param1:§<!+§, param2:TunnelSection) : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = null as §6O§;
         var _loc6_:* = null;
         if(_loc7_)
         {
            § L§.mid = 650046;
         }
         var _loc3_:§<!+§ = param1;
         var _loc4_:§6M§ = param2.tunnel.characters[0];
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
                     if(_loc7_)
                     {
                        §§push(_loc3_.§^1§.transform.position.z > _loc4_.transform.position.z);
                        if(_loc8_)
                        {
                           break loop2;
                        }
                        §§push(!§§pop());
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§push(true);
                           break loop2;
                        }
                        if(!_loc7_)
                        {
                           break loop0;
                        }
                        §§push(_loc3_.§,!5§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        if(§§pop() == null)
                        {
                           break loop1;
                        }
                        if(!_loc7_)
                        {
                           break loop0;
                        }
                     }
                     §§push(Boolean(_loc3_.§,!5§()));
                     if(_loc7_)
                     {
                        break;
                     }
                     §§goto(addr00ba);
                  }
                  if(!§§pop())
                  {
                     break loop1;
                  }
                  if(_loc7_)
                  {
                     break loop0;
                  }
                  continue loop3;
               }
               return §§pop();
            }
            if(int(§'!E§.§@!A§().§6a§.length) <= 0)
            {
               _loc5_ = _loc4_.§!8§;
               _loc6_ = null;
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(false);
                           if(!_loc8_)
                           {
                              if(_loc6_ == null)
                              {
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       if(_loc8_)
                                       {
                                          break loop5;
                                       }
                                       §§push(StringTools.§#E§("Oops! Forgot the box.","-"));
                                       if(!_loc7_)
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
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              break loop3;
                           }
                           break loop4;
                        }
                     }
                     §§push(Number(§'!E§.§]Y§("Oops! Forgot the box.".length)));
                     if(_loc7_)
                     {
                        §§push(§§pop() / 2);
                     }
                     _loc6_ = §§pop();
                     break;
                  }
                  §'!E§.§@!A§().§>!W§("Oops! Forgot the box.",_loc6_,§'[§.§83§(_loc5_));
                  break;
               }
            }
            break loop3;
         }
         §§push(false);
         if(_loc7_)
         {
            addr00ba:
            return §§pop();
         }
         return §§pop();
      }
      
      public function §8_§() : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§=!N§);
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§`!3§);
         §§push(§59§);
         §§push(§>K§.§@!A§().§2! §.get(_loc1_).§,q§(§&k§));
         if(_loc2_)
         {
            §§push(§§pop());
         }
         §§push(§§pop().§`!S§(§§pop(),"tileWidth"));
         if(_loc2_)
         {
            §§push(§§pop());
         }
         §§push(§§pop().§ !`§(§§pop(),75));
         if(!_loc3_)
         {
            return int(§§pop());
         }
      }
      
      public function §4J§(param1:§[C§) : Point
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §<!+§;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§<!+§> = §-!>§;
         if(!_loc5_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               while(true)
               {
                  if(_loc6_)
                  {
                     _loc2_++;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  if(_loc4_.§^1§ == param1)
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc4_.§'u§;
            }
         }
         return null;
      }
      
      public function §[5§(param1:int) : Boolean
      {
         var _loc2_:§2!;§ = §,U§;
         return int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))) > param1;
      }
      
      public function §>c§() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null as §9t§;
         var _loc3_:* = null as §9t§;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               § L§.mid = 656466;
               if(!_loc5_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(§+!=§);
                  if(!_loc4_)
                  {
                     §§push(int(§ b§.length));
                     if(_loc5_)
                     {
                        §§push(§§pop() + int(§-!>§.length));
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        break loop1;
                     }
                     §§push(§+!=§);
                  }
                  §§push(int(§ b§.length));
                  break;
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               §§push(§-!>§);
               §§push(§+!=§);
               if(!_loc4_)
               {
                  §§push(§§pop() - int(§ b§.length));
               }
               §§goto(addr00d0);
               §§push(§§pop()[§§pop()]);
            }
            §§goto(addr00d0);
         }
         addr00d0:
         var _loc1_:§'!]§ = § b§[§+!=§];
         if(_loc5_)
         {
            if(_loc1_ == null)
            {
               return false;
            }
         }
         _loc2_ = §?D§;
         while(true)
         {
            if(!_loc4_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
                     if(_loc5_)
                     {
                        if(!Boolean(_loc1_.§3[§.backwards))
                        {
                           §§push(_loc1_.§3T§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr0159);
                        }
                     }
                     §§push(_loc1_.§8!>§);
                     if(_loc5_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  if(Boolean(_loc1_.§3[§.backwards))
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr0158);
                     §§push(_loc1_.§8!>§);
                  }
                  §§goto(addr0159);
               }
               §§push(_loc1_.§3T§);
               if(_loc4_)
               {
               }
               addr0159:
               addr0158:
               if(§§pop() <= §§pop() - §§pop())
               {
                  break;
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §?D§.§3X§();
            break;
         }
         _loc3_ = §?D§;
         if(_loc5_)
         {
            _loc1_.§ !7§(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))));
         }
         return true;
      }
   }
}

