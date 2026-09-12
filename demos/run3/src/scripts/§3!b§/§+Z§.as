package §3!b§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§8!8§;
   import §2X§.§>N§;
   import §6!Q§.§#W§;
   import §6!Q§.§]u§;
   import §>!O§.§^`§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   
   public class §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var bold:TextFormat;
      
      public static var §&L§:§+!"§;
      
      public static var §4z§:Boolean = false;
      
      public var tunnelParams:Object;
      
      public var tunnel:§ !W§;
      
      public var sprites:Vector.<§^s§>;
      
      public var §2G§:§&d§;
      
      public var §6!I§:§+"§;
      
      public var §!!6§:int;
      
      public var §9_§:TunnelSection;
      
      public var §?^§:§]k§;
      
      public var §8#§:Boolean;
      
      public var §]I§:§ !]§;
      
      public var §3a§:String;
      
      public var §"J§:int;
      
      public var name:String;
      
      public var §5x§:§=!U§;
      
      public var §>+§:int;
      
      public var frames:Array;
      
      public var §=!`§:Number;
      
      public var §,!J§:Number;
      
      public var § z§:§ !N§;
      
      public var followingCutscene:String;
      
      public var §[!_§:Number;
      
      public var §!^§:§ !>§;
      
      public var dialog:§'§;
      
      public var §]!a§:Boolean;
      
      public var §4b§:§+!"§;
      
      public function §+Z§(param1:§ !>§, param2:int, param3:§]k§ = undefined, param4:Object = undefined, param5:Object = undefined, param6:§+!"§ = undefined)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         while(true)
         {
            if(param5 == null)
            {
               if(!_loc7_)
               {
                  break;
               }
               param5 = false;
            }
            §8#§ = false;
            §,!J§ = 0;
            break;
         }
         §=!`§ = 0.6;
         loop1:
         while(true)
         {
            if(!_loc8_)
            {
               §[!_§ = 0;
               followingCutscene = null;
               § z§ = null;
               if(!_loc7_)
               {
                  break;
               }
            }
            §3a§ = null;
            §"J§ = 0;
            if(_loc7_)
            {
               §!^§ = param1;
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§>+§));
                     if(!_loc8_)
                     {
                        §§push(param2);
                        if(_loc8_)
                        {
                           break loop3;
                        }
                        §§push(0);
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(param1.levelCount);
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                           break loop3;
                        }
                     }
                     §§push(param2);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                     break loop2;
                  }
                  §§goto(addr00c0);
               }
               §§pop().§>+§ = §§pop();
               if(!_loc8_)
               {
                  break loop1;
               }
               §§goto(addr0157);
            }
            addr00c0:
            §§push(§§pop() + param2);
            break loop3;
         }
         while(true)
         {
            §§push(§§findproperty(tunnelParams));
            if(_loc7_)
            {
               if(param4 == null)
               {
                  §§push({});
                  break;
               }
            }
            §§push(param4);
            break;
         }
         §§pop().tunnelParams = §§pop();
         if(!_loc8_)
         {
            §?^§ = param3;
            §8#§ = param5;
            while(true)
            {
               if(param6 == null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  if(param3 != null)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     param6 = §+!"§.IF_SHOWN;
                  }
                  else
                  {
                     param6 = §+Z§.§&L§;
                  }
               }
               §4b§ = param6;
               §=g§(param1,param2,tunnelParams);
               break;
            }
         }
         addr0157:
      }
      
      public static function §5[§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§+Z§.§4z§);
         if(!_loc1_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §+Z§.§4z§ = true;
                  if(_loc1_)
                  {
                     break;
                  }
               }
               §^U§.§5!<§ = 180;
               if(!_loc1_)
               {
                  §^U§.§7y§ = 14.4;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            §^U§.§!r§ = 24;
         }
      }
      
      public function §1!F§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = null as §^s§;
         var _loc4_:* = null as §6O§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§^s§> = sprites;
         if(_loc5_)
         {
            loop0:
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc6_)
               {
                  _loc1_++;
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               if(_loc3_.goesTo != null)
               {
                  _loc4_ = _loc3_.§!8§;
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc4_.§[P§ == null)
                           {
                              break;
                           }
                           if(_loc6_)
                           {
                              break loop1;
                           }
                        }
                        _loc4_ = _loc4_.§[P§.§@D§[0];
                        break;
                     }
                     _loc3_.goesTo.§3<§();
                     if(_loc6_)
                     {
                        break;
                     }
                     _loc4_.§>t§.§?F§(_loc3_.goesTo.§1!R§.pathName);
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  _loc4_.§ j§.§?F§(_loc3_.goesTo.§+!=§);
               }
            }
         }
      }
      
      public function unloadLevel() : void
      {
      }
      
      public function skip(param1:Event = undefined) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               dialog.visible = false;
               if(_loc3_)
               {
                  break;
               }
               §=!1§(true);
               if(!_loc3_)
               {
                  §"J§ = int(frames.length);
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §3a§ = null;
            break;
         }
      }
      
      public function §,!N§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = null as §]k§;
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
                     if(§?^§ != null)
                     {
                        if(_loc5_)
                        {
                           _loc3_ = §?^§;
                           if(_loc4_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(Boolean(Save.§@!A§().get(_loc3_.§=-§,Boolean(_loc3_.§ -§))));
                              if(_loc5_)
                              {
                                 §§push(§§pop() == param1);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                                 break;
                              }
                              break loop1;
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
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        addr00cb:
                        §0!#§.§@!A§().§@^§();
                     }
                     break loop0;
                  }
                  break loop1;
               }
               §?^§.§?F§(param1);
               if(_loc4_)
               {
                  break loop0;
               }
               §§goto(addr00cb);
            }
            return §§pop();
         }
         §§push(param1);
         break loop1;
      }
      
      public function §3!<§(param1:§ !N§) : § !N§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     §§push(false);
                     if(_loc4_)
                     {
                        break;
                     }
                     if(param1 == null)
                     {
                        break loop1;
                     }
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(tunnelParams.customDate == null);
                  if(!_loc4_)
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
               if(_loc3_)
               {
                  tunnelParams.customDate = param1.§1!R§.§99§(param1.§+!=§);
               }
            }
            break;
         }
         return § z§ = param1;
      }
      
      public function § !C§(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            if(§+Z§.bold == null)
            {
               if(_loc3_)
               {
                  §+Z§.bold = new TextFormat(Main.§6i§,null,null,true);
               }
            }
         }
         var _loc2_:§'§ = dialog;
         if(_loc3_)
         {
            while(true)
            {
               §§push(§&!;§);
               if(_loc3_)
               {
                  if(int(_loc2_.§+j§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
               }
               §§push(_loc2_.§+j§);
               §§push(int(_loc2_.§+j§.length));
               if(_loc3_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().setTextFormat(§§pop().§-7§,param1,§+Z§.bold);
         }
      }
      
      public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §+Z§;
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
                     §§push(!param2);
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           break loop3;
                        }
                        §§push(false);
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        if(§ z§ != null)
                        {
                           §§pop();
                           §§push(§!!6§ == 4);
                           if(!_loc5_)
                           {
                              break loop0;
                           }
                           §§push(!§§pop());
                        }
                     }
                     if(§§pop())
                     {
                        §]u§.§@!A§().§5!@§ = false;
                        while(true)
                        {
                           §§push(§ z§.§1!R§.§#f§(§ z§.§+!=§));
                           if(_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc4_)
                              {
                                 addr00ba:
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    break loop3;
                                 }
                                 break;
                              }
                           }
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 return;
                              }
                              break;
                           }
                           break loop4;
                        }
                     }
                     else
                     {
                        §§push(false);
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr012a);
                  }
                  §§goto(addr011d);
               }
               §§push(followingCutscene == null);
               break loop0;
            }
            §§goto(addr00d4);
         }
         §§push(!§§pop());
         if(!_loc4_)
         {
            break loop1;
         }
         addr00d4:
         while(true)
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  _loc3_ = Cutscenes.§3'§(followingCutscene);
                  if(!_loc4_)
                  {
                     if(_loc3_ == null)
                     {
                        addr011d:
                        Main.instance.§,Z§(null);
                        break;
                     }
                     if(!_loc4_)
                     {
                        _loc3_.display(§!!6§);
                     }
                  }
                  return;
               }
               break;
            }
            §§goto(addr011d);
         }
         addr012a:
      }
      
      public function §+_§(param1:§ !>§, param2:int, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(param3 == null)
            {
               if(_loc5_)
               {
                  break;
               }
               param3 = {};
            }
            §=g§(param1,param2,param3);
            tunnel = new § !W§(param2,param1,§,a§.CUTSCENE,param3);
            break;
         }
         tunnel.display(0);
         Main.instance.§,Z§(tunnel);
         §9_§ = tunnel.§]!#§(0,true);
         sprites.length = 0;
         init();
      }
      
      public function §^!>§() : Boolean
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = null as §]k§;
         var _loc3_:* = null as § !>§;
         var _loc4_:* = null as §-Q§;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = null as Function;
         var _loc1_:§+!"§ = §4b§;
         loop0:
         while(true)
         {
            if(!_loc9_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(_loc1_.index);
                     if(!_loc9_)
                     {
                        switch(§§pop())
                        {
                           case 0:
                              §§push(false);
                              if(!_loc9_)
                              {
                                 return §§pop();
                              }
                              break;
                           case 1:
                              §§push(true);
                              if(_loc8_)
                              {
                                 return §§pop();
                              }
                              break loop0;
                           case 2:
                              if(§?^§ != null)
                              {
                                 if(_loc8_)
                                 {
                                    _loc2_ = §?^§;
                                    return Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§)));
                                 }
                                 break loop1;
                              }
                              §§push(false);
                              if(_loc8_)
                              {
                                 break;
                              }
                              break loop0;
                           case 3:
                              _loc3_ = §!^§;
                              _loc4_ = _loc3_.§0!R§;
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                                       if(_loc9_)
                                       {
                                          break loop4;
                                       }
                                       §§push(_loc3_.levelCount);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       _loc6_ = §§pop();
                                       if(_loc9_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    §§push(_loc5_);
                                    §§push(_loc6_);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          break loop4;
                                       }
                                       §§push(_loc6_);
                                       break;
                                    }
                                    §§goto(addr012e);
                                 }
                                 addr012e:
                                 return §§pop() >= §§pop();
                              }
                              return _loc5_;
                           case 4:
                              _loc3_ = §!^§;
                              _loc4_ = _loc3_.§0!R§;
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                                       if(!_loc8_)
                                       {
                                          break loop6;
                                       }
                                       _loc5_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(_loc3_.levelCount);
                                                if(_loc9_)
                                                {
                                                   break;
                                                }
                                                _loc6_ = §§pop();
                                                if(_loc9_)
                                                {
                                                   break loop8;
                                                }
                                             }
                                             §§push(_loc5_);
                                             break;
                                          }
                                          §§push(_loc6_);
                                          if(!_loc9_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                break;
                                             }
                                             §§push(_loc6_);
                                             break loop6;
                                          }
                                          break loop7;
                                       }
                                    }
                                    break loop8;
                                 }
                                 return §§pop() > §§pop();
                              }
                              return §>+§;
                           case 5:
                              return § z§.§+!=§;
                           case 6:
                              §§push(_loc1_.params[0]);
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                              }
                              _loc7_ = §§pop();
                              break loop2;
                           default:
                              return;
                        }
                        return §§pop();
                     }
                     if(§§pop() == 0)
                     {
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     _loc3_ = § z§.§1!R§;
                     _loc4_ = _loc3_.§0!R§;
                     loop10:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        _loc6_ = _loc3_.levelCount;
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc9_)
                              {
                                 §§push(_loc6_);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    break loop10;
                                 }
                                 §§push(_loc6_);
                              }
                              addr025b:
                              §§push(§ z§.§+!=§);
                              break;
                           }
                           return §§pop() >= §§pop();
                        }
                        break;
                     }
                     §§goto(addr025b);
                  }
                  return Boolean(_loc7_());
               }
            }
            break loop1;
         }
         return §§pop();
      }
      
      public function init() : void
      {
      }
      
      public function §<!I§() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §]k§;
         if(_loc3_)
         {
            if(§?^§ == null)
            {
               return false;
            }
         }
         _loc1_ = §?^§;
         return Boolean(Save.§@!A§().get(_loc1_.§=-§,Boolean(_loc1_.§ -§)));
      }
      
      public function getDate() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(tunnelParams.customDate == null)
            {
               §§push(§!^§.§99§(§>+§));
               if(!_loc2_)
               {
                  return Number(§§pop());
               }
            }
         }
         return tunnelParams.customDate;
      }
      
      final public function §%+§() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:* = null as §#W§;
         var _loc2_:* = false;
         var _loc3_:* = null as String;
         var _loc4_:* = null as StringMap;
         while(true)
         {
            §§push(true);
            if(_loc7_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(true);
                     if(!_loc6_)
                     {
                        if(tunnel == null)
                        {
                           break loop1;
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                        §§pop();
                        §§push(Main.instance.tunnel == tunnel);
                        if(_loc6_)
                        {
                           break loop1;
                        }
                     }
                     §§push(!§§pop());
                     if(!_loc6_)
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
                  break;
               }
            }
            §§pop();
            §§push(§"J§ >= int(frames.length));
            break;
         }
         if(!§§pop())
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc7_)
                     {
                        if(§[!_§ <= 0)
                        {
                           break;
                        }
                        §§pop();
                        if(_loc6_)
                        {
                           break loop4;
                        }
                        §§push(dialog == null);
                        if(!_loc7_)
                        {
                           break loop3;
                        }
                     }
                     §§push(!§§pop());
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §]u§.§@!A§().§5B§(dialog,true);
                        if(_loc7_)
                        {
                           dialog = null;
                           break loop4;
                        }
                        §§goto(addr0168);
                     }
                     else
                     {
                        dialog = new §'§();
                        if(_loc7_)
                        {
                           dialog.§[Y§ = 40;
                        }
                        §§push(§8#§);
                        if(!_loc6_)
                        {
                           break loop3;
                        }
                     }
                     §§goto(addr0213);
                  }
                  §§goto(addr0214);
               }
            }
            if(§§pop())
            {
               addr0168:
               §§push(dialog);
               §§push(tunnel.display);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               §§pop().§+!P§ = §§pop();
            }
            loop5:
            while(true)
            {
               §§push(§3a§);
               if(_loc7_)
               {
                  if(§§pop() == null)
                  {
                     addr0213:
                     §§push(false);
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc2_ = §§pop();
                     break;
                  }
                  §§push(§3a§);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
               }
               _loc3_ = §§pop();
               if(_loc6_)
               {
                  break;
               }
               _loc4_ = §5x§;
               while(true)
               {
                  if(!_loc6_)
                  {
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        break;
                     }
                     if(!(§§pop() in StringMap.§+!#§))
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           _loc2_ = §§pop() in _loc4_.h;
                           if(_loc7_)
                           {
                              break loop5;
                           }
                           §§goto(addr0230);
                        }
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop5;
                     }
                  }
                  _loc2_ = _loc4_.existsReserved(_loc3_);
                  if(_loc6_)
                  {
                  }
                  break loop5;
               }
               _loc3_ = §§pop();
               §§goto(addr0230);
            }
            addr0214:
            if(_loc2_)
            {
               if(!_loc6_)
               {
                  §§push(§3a§);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr022f);
               }
               addr0230:
               _loc4_ = §5x§;
               while(true)
               {
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        §§push(§§findproperty(§"J§));
                        if(_loc7_)
                        {
                           if(!(_loc3_ in StringMap.§+!#§))
                           {
                              §§push(_loc4_.h[_loc3_]);
                              break;
                           }
                        }
                        §§push(_loc4_.getReserved(_loc3_));
                        break;
                     }
                     §§pop().§"J§ = §§pop();
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  §3a§ = null;
                  break;
               }
               §§goto(addr027d);
            }
            addr027d:
            var _loc5_:§&d§ = §&d§.§1$§();
            loop9:
            while(true)
            {
               if(!_loc6_)
               {
                  §&d§.§3!C§ = dialog.layout;
                  frames[§"J§]();
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        §&d§.§3!C§ = _loc5_;
                        tunnel.update(0);
                        tunnel.display(0);
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     if(§6!I§.parent != null)
                     {
                        break;
                     }
                     loop11:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 §§push(§"J§);
                                 if(!_loc6_)
                                 {
                                    §§push(1);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(int(frames.length));
                                 break;
                              }
                              if(§§pop() < §§pop())
                              {
                                 break loop11;
                              }
                              if(_loc6_)
                              {
                                 break loop11;
                              }
                              §§pop();
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(§3a§ == null);
                              if(_loc6_)
                              {
                                 break loop11;
                              }
                              §§push(!§§pop());
                              if(!_loc7_)
                              {
                                 break loop11;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop11;
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           break loop12;
                        }
                        dialog.addChild(§6!I§);
                     }
                     §§push(§§findproperty(§"J§));
                     §§push(§"J§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop().§"J§ = §§pop();
                     §]u§.§@!A§().§5B§(dialog,true,§=!`§,§,!J§);
                     if(!_loc6_)
                     {
                        break loop12;
                     }
                     break loop9;
                  }
                  §6!I§.parent.removeChild(§6!I§);
                  if(_loc7_)
                  {
                     continue loop11;
                  }
                  §§goto(addr0336);
               }
               §=!`§ = 0.6;
               break;
            }
            §,!J§ = 0;
            return;
         }
         §=!1§();
         if(!_loc6_)
         {
            return;
         }
         break loop4;
      }
      
      final public function display(param1:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as Vector.<§^s§>;
         var _loc4_:* = null as § 7§;
         var _loc5_:* = null;
         if(_loc6_)
         {
            if(Boolean(Save.§@!A§().get("cutscenesDisabled",false)))
            {
               if(_loc6_)
               {
                  return;
               }
            }
            else
            {
               §!!6§ = param1;
            }
         }
         try
         {
            if(sprites == null)
            {
               _loc3_ = new Vector.<§^s§>(0,false);
               if(_loc6_)
               {
                  sprites = _loc3_;
               }
            }
            §]!a§ = false;
            §3! §();
            §9_§ = tunnel.§]!#§(0,true);
            loop0:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     Main.instance.§,Z§(tunnel);
                     if(!_loc7_)
                     {
                        dialog = null;
                     }
                     §+Z§.§5[§();
                     init();
                     §1!F§();
                     §[!_§ = 0;
                     if(!_loc6_)
                     {
                        break;
                     }
                     §"J§ = 0;
                     if(_loc7_)
                     {
                        break loop0;
                     }
                  }
                  §3a§ = null;
                  if(!_loc6_)
                  {
                     break loop0;
                  }
                  if(§]I§ == null)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr0175);
                  }
                  §§goto(addr0168);
               }
               §§push(§§findproperty(§]I§));
               §§push(§§findproperty(§ !]§));
               §§push(§%+§);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               §§pop().§]I§ = new §§pop().§ !]§(§§pop());
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr0175);
            }
            §§push(§§findproperty(§6!I§));
            §§push(§§findproperty(§+"§));
            §§push(skip);
            if(_loc6_)
            {
               §§push(§§pop());
            }
            §§pop().§6!I§ = new §§pop().§+"§(§§pop(),16777215,36,"Skip","options/SkipLevelIcon.png",null,false);
            addr0168:
            §2G§ = §&d§.§1$§();
            addr0175:
            _loc4_ = new §?y§(§6!I§);
            while(true)
            {
               if(!_loc7_)
               {
                  §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.RIGHT));
                  if(_loc6_)
                  {
                     §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.BOTTOM));
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
               }
               §]u§.§@!A§().§5B§(§]I§);
               if(_loc6_)
               {
                  §,!N§(true);
               }
               break;
            }
         }
         catch(_loc_e_:*)
         {
            Main.instance.§,Z§(null);
            return;
         }
      }
      
      public function §3! §() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Main.instance.tunnel != null)
         {
            if(_loc2_)
            {
               tunnelParams.music = §5! §.§@!A§().§@!W§;
            }
            tunnel = new § !W§(§>+§,§!^§,§,a§.CUTSCENE,tunnelParams);
            addr005c:
            while(true)
            {
               if(_loc2_)
               {
                  if(Main.instance.tunnel == null)
                  {
                     break;
                  }
               }
               tunnel.display(0);
               break;
            }
         }
         else
         {
            tunnelParams.music = "";
            if(_loc2_)
            {
               §§goto(addr005c);
            }
         }
      }
      
      final public function §=!1§(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(§]!a§)
         {
            return;
         }
         §]!a§ = true;
         if(_loc2_)
         {
            §]I§.visible = false;
         }
         if(§6!I§.parent != null)
         {
            if(_loc2_)
            {
               §6!I§.parent.removeChild(§6!I§);
               §2G§.remove(new §?y§(§6!I§));
            }
         }
         dialog = null;
         while(true)
         {
            if(!_loc3_)
            {
               §2G§ = null;
               if(_loc3_)
               {
                  break;
               }
               unloadLevel();
            }
            if(Main.instance.tunnel == null)
            {
               loadNext(param1,true);
               return;
            }
            loadNext(param1,false);
            break;
         }
      }
      
      public function §=g§(param1:§ !>§, param2:int, param3:Object) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            while(true)
            {
               §§push(false);
               §§push(false);
               if(_loc4_)
               {
                  §§push(param2);
                  §§push(param1.levelCount);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  if(§§pop() >= §§pop())
                  {
                     continue loop2;
                  }
                  if(_loc4_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(param2 == -1);
                     if(!_loc4_)
                     {
                        continue loop2;
                     }
                  }
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     continue loop2;
                  }
               }
               §§push(Boolean(§§pop()));
               continue loop2;
            }
            §§goto(addr009c);
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               addr009c:
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        break;
                     }
                     §§push(Reflect.hasField(param3,"endTiles"));
                     if(_loc5_)
                     {
                        break loop2;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                     break loop1;
                  }
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc5_)
               {
                  param3.endTiles = true;
                  while(true)
                  {
                     if(_loc4_)
                     {
                        break loop3;
                     }
                     §§goto(addr00c9);
                  }
               }
               §§goto(addr00ce);
            }
            §§push(!Reflect.hasField(param3,"stopLoadingAfter"));
            break;
         }
         if(§§pop())
         {
            if(_loc4_)
            {
               addr00c9:
               param3.stopLoadingAfter = param2;
            }
         }
         addr00ce:
      }
   }
}

