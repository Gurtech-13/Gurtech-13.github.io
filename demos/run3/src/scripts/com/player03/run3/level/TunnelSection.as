package com.player03.run3.level
{
   import §!!"§.§,X§;
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §0!"§.§&B§;
   import §2X§.§"S§;
   import §2X§.§+F§;
   import §2X§.§>N§;
   import §2X§.Layout3D;
   import §2X§.PositionData3D;
   import §6!Q§.§'!E§;
   import §<!&§.§%!§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>T§.§!=§;
   import §>T§.§"=§;
   import §>T§.§-n§;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.§@I§;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import unitsystem.§7o§;
   
   public class TunnelSection implements §[!M§
   {
      
      public static var init__:Boolean;
      
      public static var §!!N§:EReg;
      
      public static var §+r§:Number = 3000;
      
      public static var §&'§:int = 50;
      
      public var xInverted:Boolean;
      
      public var §4! §:§%!§;
      
      public var §6!0§:Number;
      
      public var §0!'§:Number;
      
      public var tunnelBounds:§&B§;
      
      public var tunnel:§ !W§;
      
      public var title:String;
      
      public var tilesDislodged:int;
      
      public var tileWidth:int;
      
      public var terrain:Vector.<§[C§>;
      
      public var startZ:Number;
      
      public var §78§:Number;
      
      public var §,_§:String;
      
      public var §@M§:Number;
      
      public var power:Number;
      
      public var §5k§:int;
      
      public var params:§=!U§;
      
      public var §[9§:int;
      
      public var §4;§:String;
      
      public var §#5§:Point;
      
      public var layout:Layout3D;
      
      public var id:int;
      
      public var §<!7§:Vector.<§%!§>;
      
      public var §,`§:Boolean;
      
      public var endZ:Number;
      
      public var distToNextSection:Number;
      
      public var §!!8§:Vector.<§!=§>;
      
      public var charactersAllowed:Vector.<String>;
      
      public var §;S§:Vector.<§@I§>;
      
      public var §2!U§:Vector.<§@I§>;
      
      public var bridge:Bridge;
      
      public var §0!^§:Vector.<Layout3D>;
      
      public function TunnelSection(param1:§ !W§, param2:§1![§, param3:Vector.<§%!§>, param4:String, param5:int, param6:Number, param7:Object = undefined, param8:Object = undefined, param9:Object = undefined, param10:Object = undefined)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3024
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public static function §]d§(param1:Array, param2:§ !W§ = undefined) : Boolean
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as String;
         §§push([]);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            loop0:
            while(_loc4_ < int(param1.length))
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
                              §§push(param1);
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop()[§§pop()]);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc5_ = §§pop();
                                 _loc4_++;
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc5_ == "or")
                                          {
                                             §§push(_loc3_);
                                             §§push(true);
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             §§push(_loc3_);
                                             if(_loc7_)
                                             {
                                                if(§§pop().pop() == 0)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break loop7;
                                                   }
                                                   §§pop();
                                                   §§push(_loc3_);
                                                   if(_loc6_)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§push(§§pop().pop() == 0);
                                                   if(!_loc7_)
                                                   {
                                                      break loop7;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   §§push(1);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr0104);
                                                   }
                                                }
                                                addr00ac:
                                                §§pop().push(§§pop());
                                                if(_loc6_)
                                                {
                                                   break loop5;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             if(_loc5_ != "and")
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  §§push(_loc5_);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push("not");
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§pop();
                                                                        §§push(_loc5_);
                                                                        §§push("!");
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop16;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc7_)
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc3_.pop() != 0)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr02e8);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§goto(addr0356);
                                                                              }
                                                                           }
                                                                           §§pop().push(§§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§push(true);
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc6_)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                  }
                                                                  §§push("<");
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop();
                                                                        §§push(_loc5_ == "less");
                                                                        if(!_loc6_)
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr02fc);
                                                            }
                                                            §§goto(addr0224);
                                                         }
                                                         §§goto(addr02f7);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr020f);
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc3_);
                                                               §§push(_loc3_);
                                                               if(_loc6_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               if(§§pop().pop() > _loc3_.pop())
                                                               {
                                                                  §§push(1);
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr02e8);
                                                                  }
                                                               }
                                                               §§pop().push(§§pop());
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(true);
                                                            §§push(_loc5_);
                                                            if(!_loc7_)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(">");
                                                            if(!_loc6_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  addr020f:
                                                                  §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  break loop2;
                                                               }
                                                               addr0224:
                                                               if(§§pop())
                                                               {
                                                                  addr0228:
                                                                  §§push(_loc3_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  §§push(_loc3_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  if(§§pop().pop() < _loc3_.pop())
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                  }
                                                                  §§pop().push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     §§push("<=");
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc3_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                           if(§§pop().pop() >= _loc3_.pop())
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           §§push(0);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           §§goto(addr029f);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(">=");
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop14;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr02b8:
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        addr02f7:
                                                                        §§push(true);
                                                                        §§push(_loc5_);
                                                                        break loop9;
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        break loop4;
                                                                     }
                                                                     §§goto(addr0313);
                                                                  }
                                                                  §§goto(addr0346);
                                                               }
                                                               §§goto(addr0306);
                                                            }
                                                            §§goto(addr02fc);
                                                         }
                                                         §§goto(addr0228);
                                                      }
                                                      §§goto(addr0356);
                                                   }
                                                   addr029f:
                                                   §§pop().push(1);
                                                   if(_loc7_)
                                                   {
                                                   }
                                                   continue loop0;
                                                }
                                                addr02fc:
                                                if(§§pop() != "==")
                                                {
                                                   §§pop();
                                                   break loop2;
                                                }
                                                break loop1;
                                             }
                                             if(_loc6_)
                                             {
                                                break loop5;
                                             }
                                             §§push(_loc3_);
                                             §§push(false);
                                             §§push(_loc3_);
                                          }
                                          if(§§pop().pop() != 0)
                                          {
                                             break loop7;
                                          }
                                          break loop6;
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop6;
                                    }
                                    §§pop();
                                    §§push(_loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop().pop() != 0);
                                       if(_loc7_)
                                       {
                                          break loop8;
                                       }
                                       break;
                                    }
                                    break loop4;
                                 }
                                 if(§§pop())
                                 {
                                    §§push(1);
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(_loc6_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 addr0104:
                                 §§pop().push(§§pop());
                                 continue loop0;
                              }
                              §§goto(addr00ac);
                           }
                           §§push(_loc5_);
                           §§push("greater");
                           if(!_loc6_)
                           {
                              break loop17;
                           }
                           §§goto(addr02b8);
                        }
                        if(§§pop().pop() <= _loc3_.pop())
                        {
                           §§push(1);
                           if(_loc6_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        addr02e8:
                        §§pop().push(§§pop());
                        if(_loc6_)
                        {
                           break loop2;
                        }
                        continue loop0;
                     }
                     §§goto(addr0331);
                  }
                  addr0306:
                  §§push(_loc5_ == "equal");
                  if(!_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break;
               }
               if(§§pop())
               {
                  addr0313:
                  §§push(_loc3_);
                  if(_loc3_.pop() == _loc3_.pop())
                  {
                     if(_loc6_)
                     {
                        addr0346:
                        addr0356:
                        §§push(TunnelSection.checkCondition2(_loc5_,param2));
                        if(!_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                        §§pop().push(§§pop());
                        continue;
                     }
                     §§push(1);
                  }
                  else
                  {
                     §§push(0);
                  }
                  addr0331:
                  §§pop().push(§§pop());
                  continue;
               }
               §§push(_loc3_);
               §§goto(addr0346);
            }
         }
         §§push(_loc3_.pop() == 0);
         if(_loc7_)
         {
            return !§§pop();
         }
      }
      
      public static function checkCondition2(param1:String, param2:§ !W§ = undefined) : int
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:* = 0;
         var _loc6_:* = null as §6M§;
         var _loc7_:* = null as String;
         var _loc8_:* = null as § !>§;
         var _loc9_:* = null;
         var _loc10_:* = null;
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = int(param1.length);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc11_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop22:
                     while(true)
                     {
                        loop23:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc12_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop24:
                                 while(true)
                                 {
                                    §§push(param1);
                                    §§push("true");
                                    if(_loc12_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§push(1);
                                          if(!_loc11_)
                                          {
                                             return §§pop();
                                          }
                                          break;
                                       }
                                       §§push(param1);
                                       §§push("false");
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       return 0;
                                    }
                                    if(param2 == null)
                                    {
                                       break loop23;
                                    }
                                    §§push(StringTools.startsWith(param1,"mode_"));
                                    if(_loc11_)
                                    {
                                       break loop22;
                                    }
                                    if(§§pop())
                                    {
                                       §§push(Type.§8!G§(param2.§5§));
                                       if(!_loc11_)
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc11_)
                                             {
                                                §§push(5);
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop().substr(§§pop()));
                                                if(_loc12_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      §§goto(addr0111);
                                                   }
                                                   §§push(0);
                                                   break loop24;
                                                }
                                             }
                                             §§goto(addr02f6);
                                          }
                                          §§goto(addr02f8);
                                       }
                                       §§goto(addr0349);
                                    }
                                    else
                                    {
                                       return param2.characters != null && 0;
                                    }
                                 }
                                 return §§pop();
                              }
                              §§push(_loc3_);
                              if(_loc12_)
                              {
                                 _loc3_++;
                                 while(true)
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc11_)
                                       {
                                          break loop0;
                                       }
                                       _loc5_ = §§pop();
                                       if(!_loc12_)
                                       {
                                          break;
                                       }
                                       §§push(int(param1.charCodeAt(_loc5_)));
                                       if(_loc11_)
                                       {
                                          break loop0;
                                       }
                                    }
                                    if(§§pop() > 128)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§push(0);
                              }
                              break loop0;
                           }
                           §§push(§§pop() > §§pop());
                           if(!_loc11_)
                           {
                              §§push(Boolean(§§pop()));
                              break loop1;
                           }
                           break loop2;
                        }
                        §§goto(addr031c);
                     }
                     §§goto(addr02cf);
                  }
                  §§goto(addr032e);
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(_loc12_)
                     {
                        _loc6_ = param2.characters[0];
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
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
                                          while(true)
                                          {
                                             if(!_loc11_)
                                             {
                                                §§push(StringTools.startsWith(param1,"character_"));
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc12_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               addr017c:
                                                               §§push(_loc6_.§!8§.name);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(10);
                                                                     if(!_loc12_)
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     §§push(§§pop().substr(§§pop()));
                                                                     if(_loc11_)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc11_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     break loop7;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc12_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  break loop5;
                                                               }
                                                               break loop6;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(param1);
                                                            if(_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop() != "z")
                                                            {
                                                               §§push(StringTools.startsWith(param1,"touching_"));
                                                               if(_loc11_)
                                                               {
                                                                  break loop11;
                                                               }
                                                               if(!Boolean(§§pop()))
                                                               {
                                                                  §§goto(addr031c);
                                                               }
                                                               addr0232:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  §§push(false);
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(_loc6_.§#P§ != param2.unpausedTime)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc12_)
                                                                     {
                                                                        §§pop();
                                                                        break loop11;
                                                                     }
                                                                     §§goto(addr025d);
                                                                  }
                                                                  §§goto(addr0264);
                                                               }
                                                               §§goto(addr0265);
                                                            }
                                                         }
                                                         §§push(_loc6_.transform.position.z);
                                                         if(_loc12_)
                                                         {
                                                            §§push(§§pop() - _loc6_.§73§.startZ);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() / _loc6_.§73§.tileWidth);
                                                            }
                                                         }
                                                         §§push(int(§§pop()));
                                                         if(_loc12_)
                                                         {
                                                            break loop5;
                                                         }
                                                         break loop4;
                                                      }
                                                      §§goto(addr0232);
                                                   }
                                                   §§goto(addr028d);
                                                }
                                                addr0265:
                                                §§push(_loc6_.§9!+§ == null);
                                                if(_loc12_)
                                                {
                                                   addr025d:
                                                   §§push(!§§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr0264:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                if(!_loc11_)
                                                {
                                                   break loop7;
                                                }
                                                §§goto(addr02a3);
                                             }
                                             §§goto(addr017c);
                                          }
                                          §§goto(addr029f);
                                       }
                                       §§goto(addr029d);
                                    }
                                    §§goto(addr0297);
                                 }
                                 §§push(§"=§.§,n§[_loc6_.§9!+§.§@p§.§<T§]);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 §§goto(addr028d);
                              }
                              addr028d:
                              addr029d:
                              addr029f:
                              §§push(§§pop());
                              §§push(param1);
                              if(!_loc11_)
                              {
                                 addr0297:
                                 §§push(§§pop().substr(9));
                              }
                              if(§§pop() == §§pop())
                              {
                                 addr02a3:
                                 §§push(1);
                                 if(_loc12_)
                                 {
                                    return §§pop();
                                 }
                                 break loop4;
                              }
                              return 0;
                           }
                           return §§pop();
                        }
                        return §§pop();
                     }
                     addr02ce:
                     addr02cf:
                     while(true)
                     {
                        §§push(false);
                        if(param2.§7!E§ != null)
                        {
                           §§pop();
                           if(_loc11_)
                           {
                              break;
                           }
                           §§push(param2.§7!E§.name);
                           if(_loc12_)
                           {
                              §§push(param1);
                              if(_loc12_)
                              {
                                 addr02f6:
                                 addr02f8:
                                 §§push(§§pop().substr(10));
                              }
                              §§push(§§pop() == §§pop());
                              if(_loc12_)
                              {
                                 §§goto(addr0307);
                              }
                              break loop2;
                           }
                           §§goto(addr0339);
                        }
                        addr0307:
                        if(§§pop())
                        {
                           break;
                        }
                        §§goto(addr031b);
                     }
                     §§push(1);
                     if(!_loc11_)
                     {
                        return §§pop();
                     }
                     addr031b:
                     return 0;
                     §§goto(addr0339);
                  }
                  _loc8_ = §>K§.§@!A§().§2! §.get(_loc7_);
                  loop19:
                  while(true)
                  {
                     loop20:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc12_)
                           {
                              §§push(false);
                              if(_loc11_)
                              {
                                 break;
                              }
                              if(_loc8_ == null)
                              {
                                 break;
                              }
                              if(!_loc12_)
                              {
                                 break loop20;
                              }
                              §§pop();
                              if(!_loc12_)
                              {
                                 break loop19;
                              }
                           }
                           §§push(_loc8_.§<o§());
                           if(!_loc11_)
                           {
                              break loop20;
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           break loop19;
                        }
                        §§goto(addr03ad);
                        §§push(0);
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc11_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break loop21;
                  }
                  §§push(1);
                  if(!_loc11_)
                  {
                     return §§pop();
                  }
                  addr03ad:
                  return §§pop();
               }
               §§push(StringTools.startsWith(param1,"character_"));
               if(_loc12_)
               {
                  if(§§pop())
                  {
                     §§goto(addr02ce);
                  }
                  else
                  {
                     addr031c:
                     §§push(StringTools.startsWith(param1,"unlockedPath_"));
                     if(!_loc11_)
                     {
                        break loop2;
                     }
                     §§goto(addr032e);
                  }
               }
               addr032e:
               if(§§pop())
               {
                  if(_loc12_)
                  {
                     addr0339:
                     addr0349:
                     §§push(param1.substr(13));
                     if(_loc12_)
                     {
                        §§push(§§pop());
                     }
                     _loc7_ = §§pop();
                  }
                  break loop3;
               }
               _loc9_ = Std.parseInt(param1);
               if(!_loc11_)
               {
                  if(_loc9_ == null)
                  {
                     _loc10_ = Save.§@!A§().get(param1,null);
                     loop14:
                     while(true)
                     {
                        loop15:
                        while(true)
                        {
                           loop16:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc11_)
                                 {
                                    §§push(true);
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    if(_loc10_ == null)
                                    {
                                       break loop16;
                                    }
                                    if(!_loc12_)
                                    {
                                       break loop15;
                                    }
                                    §§pop();
                                    if(!_loc12_)
                                    {
                                       break loop14;
                                    }
                                 }
                                 §§push(_loc10_ == false);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 break loop16;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc11_)
                              {
                                 break;
                              }
                              break loop15;
                           }
                           if(§§pop())
                           {
                              if(_loc12_)
                              {
                                 break loop14;
                              }
                           }
                           else
                           {
                              if(_loc10_ != true)
                              {
                                 §§push(Std.§is§(_loc10_,int));
                                 if(!_loc11_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break;
                              }
                              if(_loc11_)
                              {
                                 §§goto(addr0463);
                              }
                           }
                           §§push(1);
                           if(_loc12_)
                           {
                              return §§pop();
                           }
                           §§goto(addr0468);
                        }
                        if(§§pop())
                        {
                           addr0463:
                           return _loc10_;
                        }
                        addr0468:
                        return §§pop();
                        §§push(0);
                     }
                     §§push(0);
                     if(_loc12_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0468);
                  }
               }
               return _loc9_;
            }
            addr0111:
            return 1;
         }
         return §§pop();
      }
      
      public function §-x§(param1:§6O§) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  § L§.mid = 99555;
                  if(_loc2_)
                  {
                     break;
                  }
                  if(param1.§#U§)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     if(param1.§?$§ == null)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §§push(false);
                     §§push(false);
                     if(!_loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc3_)
                              {
                                 if(charactersAllowed == null)
                                 {
                                    break loop2;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(int(charactersAllowed.length) > 0);
                                    if(_loc2_)
                                    {
                                       break loop2;
                                    }
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop2;
                           }
                           §§pop();
                           §§push(int(charactersAllowed.indexOf(param1.§]w§,0)) == -1);
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              break loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(true);
                           if(param1.§[P§ != null)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(int(charactersAllowed.indexOf(param1.§[P§.§@D§[0].§]w§,0)) < 0);
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           return true;
                        }
                        if(_loc3_)
                        {
                           §;$§();
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        §§goto(addr0142);
                     }
                     Main.instance.§,Z§(null);
                     §§goto(addr0142);
                  }
               }
               §'!E§.§@!A§().§>!W§(param1.§?$§);
               if(_loc3_)
               {
                  break loop0;
               }
               break;
            }
            return false;
         }
         Main.instance.§,Z§(null);
         if(!_loc2_)
         {
            break loop1;
         }
         addr0142:
         return false;
      }
      
      public function § &§(param1:int, param2:§[C§, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = 0;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  if(!_loc6_)
                  {
                     § L§.low = 361581;
                     if(!_loc6_)
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(int(terrain.length));
                        if(_loc6_)
                        {
                           break loop4;
                        }
                        if(§§pop() < §§pop())
                        {
                           break loop3;
                        }
                     }
                  }
                  §§push(int(Math.ceil(param1 / §5k§)));
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§push(§5k§);
                  if(_loc6_)
                  {
                     break loop4;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§push(int(§§pop()));
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§goto(addr009f);
               }
               _loc4_ = §§pop();
               §§goto(addr009d);
            }
            while(true)
            {
               if(§§pop() < §§pop())
               {
                  break loop3;
               }
               addr009d:
               terrain.push(null);
               loop1:
               while(true)
               {
                  §§push(_loc4_);
                  addr009f:
                  while(true)
                  {
                     §§push(int(terrain.length));
                     break loop1;
                  }
               }
            }
            break;
         }
         while(true)
         {
            if(terrain[param1] != null)
            {
               terrain[param1].§9!?§();
               if(param3)
               {
                  if(!_loc6_)
                  {
                     terrain[param1].§>§();
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
               }
            }
            terrain[param1] = param2;
            break;
         }
      }
      
      public function §'W§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            tilesDislodged = 0;
         }
      }
      
      public function §%f§(param1:§6O§) : Boolean
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
                  while(true)
                  {
                     §§push(true);
                     if(_loc2_)
                     {
                        §§push(true);
                        if(_loc2_)
                        {
                           if(charactersAllowed != null)
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 §§push(int(charactersAllowed.length) == 0);
                                 if(!_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(int(charactersAllowed.indexOf(param1.§]w§,0)));
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           §§push(0);
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           §§push(§§pop() >= §§pop());
                        }
                     }
                     §§goto(addr00e1);
                  }
                  if(param1.§[P§ == null)
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     addr00e1:
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              break loop2;
                           }
                           addr00b0:
                           §§push(int(charactersAllowed.indexOf(param1.§[P§.§@D§[0].§]w§,0)));
                           break;
                        }
                        return true;
                     }
                  }
               }
               §§goto(addr00b0);
            }
            §§push(0);
            break;
         }
         return §§pop() >= §§pop();
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc3_:* = null as StringMap;
         var _loc5_:* = null as String;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as StringMap;
         var _loc11_:* = null as Array;
         var _loc12_:* = null as String;
         var _loc13_:* = null as Vector.<§@I§>;
         var _loc14_:* = null as §@I§;
         var _loc1_:Vector.<§!=§> = new Vector.<§!=§>(0,false);
         if(!_loc16_)
         {
            §!!8§ = _loc1_;
         }
         §§push([]);
         if(!_loc16_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         _loc3_ = params;
         var _loc4_:* = new §,X§(_loc3_.h,_loc3_.rh);
         if(_loc15_)
         {
            while(Boolean(_loc4_.hasNext()))
            {
               §§push(_loc4_.next());
               if(!_loc16_)
               {
                  §§push(§§pop());
               }
               _loc5_ = §§pop();
               if(_loc15_)
               {
                  _loc2_.push(_loc5_);
               }
            }
         }
         §§push(_loc2_);
         if(_loc15_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(int(_loc6_.indexOf("terrain")));
         if(_loc15_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               while(true)
               {
                  loop12:
                  while(true)
                  {
                     if(_loc15_)
                     {
                        §§push(_loc7_);
                        if(!_loc16_)
                        {
                           §§push(0);
                           if(!_loc16_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop15:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(_loc15_)
                                       {
                                          §§push(_loc7_);
                                          if(_loc16_)
                                          {
                                             break;
                                          }
                                          §§push(_loc6_[0]);
                                          if(_loc16_)
                                          {
                                             break loop15;
                                          }
                                          §§pop()[§§pop()] = §§pop();
                                          if(_loc16_)
                                          {
                                             break loop9;
                                          }
                                          §§push(_loc6_);
                                       }
                                       §§push(0);
                                       break;
                                    }
                                    §§push("terrain");
                                    break;
                                 }
                                 §§pop()[§§pop()] = §§pop();
                                 if(!_loc15_)
                                 {
                                    continue loop13;
                                 }
                              }
                              §§push(0);
                              if(_loc16_)
                              {
                                 break loop10;
                              }
                              §§push(int(§§pop()));
                              if(_loc16_)
                              {
                                 break loop10;
                              }
                              _loc8_ = §§pop();
                              if(!_loc15_)
                              {
                                 break loop9;
                              }
                              while(true)
                              {
                                 §§push(_loc8_);
                                 if(!_loc15_)
                                 {
                                    break loop10;
                                 }
                                 §§push(int(_loc6_.length));
                              }
                              break loop10;
                              addr0270:
                           }
                           loop3:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 break loop12;
                              }
                              §§push(_loc6_[_loc8_]);
                              if(_loc15_)
                              {
                                 §§push(§§pop());
                              }
                              _loc5_ = §§pop();
                              if(!_loc16_)
                              {
                                 _loc8_++;
                              }
                              _loc3_ = params;
                              loop17:
                              while(true)
                              {
                                 if(_loc15_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc16_)
                                       {
                                          if(§§pop() in StringMap.§+!#§)
                                          {
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                             §§push(_loc3_.getReserved(_loc5_));
                                          }
                                          else
                                          {
                                             §§push(_loc3_.h[_loc5_]);
                                          }
                                       }
                                       if(§§pop() != null)
                                       {
                                          if(_loc15_)
                                          {
                                             break;
                                          }
                                          break loop17;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 §§push(0);
                                 if(_loc15_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc9_ = §§pop();
                                 break;
                              }
                              _loc10_ = params;
                              loop19:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc16_)
                                 {
                                    if(§§pop() in StringMap.§+!#§)
                                    {
                                       §§push(_loc10_.getReserved(_loc5_));
                                    }
                                    else
                                    {
                                       §§push(_loc10_.h[_loc5_]);
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 loop20:
                                 while(true)
                                 {
                                    §§push(§§pop().split("|"));
                                    if(_loc15_)
                                    {
                                       §§push(§§pop());
                                       if(_loc16_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc11_ = §§pop();
                                    while(_loc9_ < int(_loc11_.length))
                                    {
                                       §§push(_loc11_);
                                       break loop20;
                                    }
                                    continue loop3;
                                    addr0265:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop()[_loc9_]);
                                    if(!_loc16_)
                                    {
                                       break loop19;
                                    }
                                    addr0239:
                                    while(true)
                                    {
                                       _loc12_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       _loc9_++;
                                       if(_loc15_)
                                       {
                                          §5!"§(_loc5_,§`!3§.§#&§(_loc12_,"~","-"));
                                       }
                                       §§goto(addr0265);
                                    }
                                    continue loop3;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr0239);
                              }
                           }
                        }
                        break loop10;
                     }
                     §§goto(addr0270);
                  }
                  if(_loc15_)
                  {
                     break loop9;
                  }
                  continue loop13;
               }
               _loc13_ = §;S§;
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     if(_loc15_)
                     {
                        while(true)
                        {
                           §§push(_loc8_);
                           if(!_loc15_)
                           {
                              break loop14;
                           }
                           if(§§pop() < int(_loc13_.length))
                           {
                              _loc14_ = _loc13_[_loc8_];
                              if(!_loc16_)
                              {
                                 _loc8_++;
                                 if(!_loc15_)
                                 {
                                    continue;
                                 }
                              }
                              _loc14_.§ o§(this);
                              continue;
                           }
                           if(!_loc15_)
                           {
                              break loop13;
                           }
                        }
                     }
                     if(§2!U§ != null)
                     {
                        if(!_loc16_)
                        {
                           §§push(0);
                           if(!_loc16_)
                           {
                              break;
                           }
                           addr0304:
                           _loc8_ = §§pop();
                        }
                        break loop13;
                     }
                     §§goto(addr0357);
                  }
                  §§goto(addr0304);
               }
               _loc13_ = §2!U§;
               if(_loc15_)
               {
                  while(_loc8_ < int(_loc13_.length))
                  {
                     _loc14_ = _loc13_[_loc8_];
                     if(!_loc16_)
                     {
                        _loc8_++;
                        if(!_loc15_)
                        {
                           continue;
                        }
                     }
                     _loc14_.§ o§(this);
                  }
               }
               addr0357:
               return;
            }
            _loc8_ = §§pop();
            break loop11;
         }
         §§push(0);
         if(_loc15_)
         {
            §§push(int(§§pop()));
         }
         break loop10;
      }
      
      public function §<!C§(param1:int, param2:PositionData3D = undefined) : PositionData3D
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            § L§.low = 317107;
         }
         param2 = layout.§<!C§(param1,param2);
         var _loc3_:Point3D = param2.position;
         var _loc4_:Number = tileWidth;
         var _loc5_:Point3D = param2.position;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  if(_loc5_ != null)
                  {
                     break;
                  }
                  if(!_loc7_)
                  {
                     break loop0;
                  }
               }
               _loc5_ = new Point3D(0,0,0);
               break;
            }
            _loc5_.x = _loc3_.x * _loc4_;
            if(!_loc6_)
            {
               _loc5_.y = _loc3_.y * _loc4_;
               if(!_loc6_)
               {
                  §§push(_loc5_);
                  §§push(_loc3_.z);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            §§goto(addr00e6);
         }
         var _temp_2:* = param2.position;
         while(true)
         {
            §§push(_temp_2);
            §§push(_temp_2.z);
            if(!_loc6_)
            {
               §§push(§§pop() + startZ);
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().z = §§pop();
         addr00e6:
         return param2;
      }
      
      public function §!N§(param1:Point3D) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               § L§.low = 794938;
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(param1);
            §§push(param1.z);
            if(_loc4_)
            {
               §§push(§§pop() - startZ);
            }
            §§pop().z = §§pop();
            break;
         }
         §§push(1 / tileWidth);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point3D = param1;
         while(true)
         {
            if(_loc4_)
            {
               if(_loc3_ == null)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc3_ = new Point3D(0,0,0);
               }
               _loc3_.x = param1.x * _loc2_;
               if(!_loc5_)
               {
                  _loc3_.y = param1.y * _loc2_;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc3_);
            §§push(param1.z);
            if(_loc4_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§pop().z = §§pop();
            break;
         }
         §§push(layout.§!N§(param1));
         if(!_loc5_)
         {
            return int(§§pop());
         }
      }
      
      public function dispose() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         § L§.mid = 704466;
         while(true)
         {
            if(_loc1_)
            {
               §4! §.model.dispose();
               §4! §.§9!?§();
               if(!_loc1_)
               {
                  break;
               }
               terrain.length = 0;
               if(_loc2_)
               {
                  break;
               }
               terrain = null;
               §!!8§ = null;
               §;S§ = null;
               §4! § = null;
               §<!7§ = null;
            }
            layout = null;
            tunnelBounds = null;
            params = null;
            break;
         }
      }
      
      public function §;$§() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:* = null as §'!E§;
         var _loc3_:* = null as StringMap;
         var _loc4_:* = null as String;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(_loc9_)
         {
            § L§.mid = 917670;
         }
         var _loc1_:StringMap = params;
         §§push("charactersAllowedMessage" in StringMap.§+!#§);
         if(_loc9_)
         {
            if(§§pop())
            {
               §§push(_loc1_.existsReserved("charactersAllowedMessage"));
               if(_loc9_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc9_)
                  {
                  }
               }
            }
            else
            {
               §§push("charactersAllowedMessage" in _loc1_.h);
            }
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        _loc2_ = §'!E§.§@!A§();
                        _loc3_ = params;
                        if(_loc9_)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc9_)
                              {
                                 §§push("charactersAllowedMessage");
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 if(!(§§pop() in StringMap.§+!#§))
                                 {
                                    §§push(_loc3_.h["charactersAllowedMessage"]);
                                    break;
                                 }
                              }
                              §§push(_loc3_.getReserved("charactersAllowedMessage"));
                              break;
                           }
                           §§pop().§>!W§(§§pop());
                        }
                        §§goto(addr03d1);
                     }
                  }
                  else
                  {
                     loop6:
                     while(true)
                     {
                        §§push("");
                        if(_loc9_)
                        {
                           _loc4_ = §§pop();
                           loop7:
                           while(true)
                           {
                              loop8:
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
                                          loop15:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc9_)
                                             {
                                                §§push("Sorry, but only the ");
                                                if(_loc9_)
                                                {
                                                   _loc4_ = §§pop() + §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(charactersAllowed.length);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  §§push(1);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        §§push(_loc4_);
                                                                        §§push(Std);
                                                                        §§push(charactersAllowed[0]);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§push(§§pop().string(§§pop()));
                                                                        if(!_loc8_)
                                                                        {
                                                                           _loc4_ = §§pop() + §§pop();
                                                                           if(_loc8_)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           §§push(_loc4_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr0170:
                                                                              _loc4_ = §§pop() + " is ";
                                                                              break loop6;
                                                                           }
                                                                           §§goto(addr021e);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0253:
                                                                           §§push(§§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              break loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(int(charactersAllowed.length));
                                                                        if(!_loc9_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        §§push(2);
                                                                        if(_loc8_)
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           §§push(_loc4_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              break loop16;
                                                                           }
                                                                           §§push(Std);
                                                                           §§push(charactersAllowed[0]);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§push(§§pop().string(§§pop()));
                                                                           if(_loc8_)
                                                                           {
                                                                              break loop17;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              _loc4_ = §§pop() + §§pop();
                                                                              addr01cc:
                                                                              §§push(_loc4_);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 _loc4_ = §§pop() + " and the ";
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(Std);
                                                                                       §§push(charactersAllowed[1]);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       §§push(§§pop().string(§§pop()));
                                                                                       break loop17;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break loop7;
                                                                              }
                                                                              break loop16;
                                                                           }
                                                                           §§goto(addr0253);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_);
                                                                           §§push(Std);
                                                                           §§push(charactersAllowed[0]);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§push(§§pop().string(§§pop()));
                                                                           if(_loc9_)
                                                                           {
                                                                              §§goto(addr0253);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     break loop16;
                                                                  }
                                                                  break loop12;
                                                               }
                                                               break loop14;
                                                            }
                                                            §§goto(addr01cc);
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc8_)
                                                      {
                                                         addr021e:
                                                         _loc4_ = §§pop();
                                                         §§push(_loc4_);
                                                         break loop18;
                                                      }
                                                      §§goto(addr027d);
                                                   }
                                                   _loc4_ = §§pop();
                                                   break loop7;
                                                }
                                                _loc4_ = §§pop() + §§pop();
                                                break loop6;
                                             }
                                             break loop16;
                                          }
                                          §§goto(addr0370);
                                       }
                                       §§goto(addr0379);
                                    }
                                    §§goto(addr028e);
                                 }
                                 §§goto(addr0287);
                              }
                              addr0379:
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 addr0370:
                                 §§push(Std);
                                 §§push(charactersAllowed);
                                 §§push(int(charactersAllowed.length));
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 §§push(§§pop()[§§pop()]);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop().string(§§pop()));
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              _loc4_ = §§pop();
                              §§push(_loc4_ + " are ");
                              if(_loc9_)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    break loop6;
                                 }
                                 break loop2;
                              }
                              break loop3;
                           }
                           §§push(1);
                           if(!_loc8_)
                           {
                              _loc5_ = §§pop();
                              if(_loc8_)
                              {
                                 break loop8;
                              }
                              addr027d:
                              §§push(int(charactersAllowed.length));
                           }
                           §§push(1);
                           if(!_loc8_)
                           {
                              addr0287:
                              §§push(§§pop() - §§pop());
                              if(!_loc8_)
                              {
                                 addr028e:
                                 §§push(int(§§pop()));
                              }
                              _loc6_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(_loc6_);
                              }
                           }
                           loop0:
                           for(; §§pop() < §§pop(); §§push(_loc5_),§§push(_loc6_))
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc9_)
                                 {
                                    _loc5_++;
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break;
                              }
                              _loc7_ = §§pop();
                              if(!_loc8_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc9_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + ", the ");
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop());
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(§§pop());
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(_loc4_);
                                       if(!_loc8_)
                                       {
                                          §§push(Std);
                                          §§push(charactersAllowed[_loc7_]);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§push(§§pop().string(§§pop()));
                                          if(_loc9_)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    §§push(§§pop());
                                    break;
                                 }
                                 _loc4_ = §§pop();
                              }
                           }
                           if(!_loc8_)
                           {
                              §§push(_loc4_);
                              §§push(", and the ");
                              if(!_loc8_)
                              {
                                 _loc4_ = §§pop() + §§pop();
                                 if(_loc9_)
                                 {
                                    break loop8;
                                 }
                                 break;
                              }
                              break loop4;
                           }
                           break;
                        }
                        §§goto(addr0170);
                     }
                  }
                  §§push(_loc4_);
                  §§push("available on this level.");
                  break;
               }
               §§push(§§pop() + §§pop());
               if(!_loc8_)
               {
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§goto(addr03c0);
            }
            addr03c0:
            _loc4_ = §§pop();
            break;
         }
         §'!E§.§@!A§().§>!W§(_loc4_);
         addr03d1:
      }
      
      public function §4&§(param1:int) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as §!=§;
         if(_loc5_)
         {
            § L§.low = 185984;
            if(!_loc6_)
            {
               if(tunnel.backwards)
               {
                  if(_loc5_)
                  {
                     Boot.lastError = new Error();
                     if(!_loc5_)
                     {
                        §§goto(addr006c);
                     }
                  }
                  throw new Error("decoratedUntil() isn\'t implemented for backwards levels!");
               }
            }
         }
         addr006c:
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§!=§> = §!!8§;
         if(_loc5_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(!_loc6_)
               {
                  _loc2_++;
                  if(!_loc6_)
                  {
                     §§push(_loc4_.indices[_loc4_.count]);
                     if(!_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     if(§§pop() > param1)
                     {
                        continue;
                     }
                  }
               }
               return false;
            }
         }
         return true;
      }
      
      public function copyTerrainMapping(param1:Vector.<§[C§>) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = 0;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  §§push(int(param1.length));
                  if(_loc6_)
                  {
                     break;
                  }
                  if(§§pop() <= int(terrain.length))
                  {
                     break loop1;
                  }
                  if(!_loc5_)
                  {
                     break loop1;
                  }
               }
               loop3:
               while(true)
               {
                  §§push(§7o§);
                  §§push("Warning: extra terrain in section id ");
                  if(_loc5_)
                  {
                     §§push(§§pop() + id);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        §§push(".");
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc6_)
                        {
                           break loop3;
                        }
                     }
                     §§push(§§pop());
                     break loop3;
                  }
                  §§pop().§3t§(§§pop(),{
                     (§§pop()):"TunnelSection.hx",
                     "lineNumber":600,
                     "className":"com.player03.run3.level.TunnelSection",
                     "methodName":"copyTerrainMapping"
                  });
                  addr0079:
                  if(_loc5_)
                  {
                     §7!"§(int(param1.length));
                  }
                  break loop1;
               }
               §§goto(addr0079);
            }
            var _loc2_:* = §§pop();
            §§push(int(param1.length));
            if(!_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               while(_loc2_ < _loc3_)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        _loc2_++;
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc5_)
                  {
                     if(param1[_loc4_] == null)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        terrain[_loc4_] = param1[_loc4_];
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                  }
                  terrain[_loc4_].§=y§(this,_loc4_);
               }
            }
            return;
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         break loop2;
      }
      
      public function §"W§(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               § L§.low = 713157;
               if(!_loc3_)
               {
                  while(true)
                  {
                     §§push(int(param1.indexOf(",")));
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§goto(addr0050);
                        }
                        §§push(TunnelSection.checkCondition2(param1,tunnel));
                        if(_loc2_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     §§push(0);
                     break;
                  }
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr0096);
               }
            }
            addr0050:
            §§push(TunnelSection.§]d§(param1.split(","),tunnel));
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  break;
               }
            }
            return §§pop();
         }
         addr0096:
         return §§pop();
      }
      
      public function §]-§() : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc5_:* = null as §3!I§;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null as §[C§;
         var _loc12_:* = null as Vector.<§@I§>;
         var _loc13_:* = null as §@I§;
         if(!_loc15_)
         {
            if(§2!U§ == null)
            {
               var _loc1_:§=!U§ = params;
               loop12:
               while(true)
               {
                  §§push(startZ);
                  if(_loc14_)
                  {
                     loop13:
                     while(true)
                     {
                        §§push("spawnZ");
                        if(_loc14_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(!_loc14_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc14_)
                                 {
                                    §§push(Boolean(_loc1_.existsReserved("spawnZ")));
                                    if(_loc14_)
                                    {
                                    }
                                    break loop13;
                                 }
                                 addr00b4:
                                 while(true)
                                 {
                                    §§push(§`!3§);
                                    if(!_loc15_)
                                    {
                                       §§push("spawnZ");
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       if(!(§§pop() in StringMap.§+!#§))
                                       {
                                          §§push(_loc1_.h["spawnZ"]);
                                          break;
                                       }
                                    }
                                    §§push(_loc1_.getReserved("spawnZ"));
                                    break;
                                 }
                                 §§push(§§pop().§ M§(§§pop(),0));
                                 if(_loc14_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc15_)
                                    {
                                    }
                                 }
                                 addr0104:
                                 §§push(§§pop() + §§pop());
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 addr0112:
                                 §§push(Number(§§pop()));
                                 break loop12;
                              }
                              addr010b:
                              §§push(Number(§§pop()));
                              if(!_loc14_)
                              {
                                 break loop12;
                              }
                              §§goto(addr0112);
                           }
                           else
                           {
                              §§push("spawnZ");
                           }
                        }
                        §§push(§§pop() in _loc1_.h);
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc14_)
                           {
                              break;
                           }
                           §§goto(addr00b4);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr010b);
                  }
                  §§goto(addr0112);
               }
               var _loc2_:* = §§pop();
               §§push(int(Math.ceil(int(terrain.length) / §5k§)));
               if(_loc14_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               while(true)
               {
                  §§push(§=B§);
                  §§push(_loc3_);
                  if(_loc14_)
                  {
                     §§push(1);
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§push(-1);
                  break;
               }
               var _loc4_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
               if(_loc14_)
               {
                  loop0:
                  do
                  {
                     if(_loc4_.§#1§ == _loc4_.end)
                     {
                        break;
                     }
                     _loc5_ = _loc4_;
                     if(!_loc15_)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.§#1§);
                        if(_loc14_)
                        {
                           while(true)
                           {
                              §§push(_loc4_.§['§);
                              if(_loc14_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 var _temp_1:* = §§pop();
                                 §§push(_temp_1);
                                 §§push(_temp_1);
                              }
                              _loc7_ = §§pop();
                              break;
                           }
                        }
                        §§pop().§#1§ = §§pop();
                        §§push(int(_loc7_));
                        if(_loc14_)
                        {
                           _loc6_ = §§pop();
                           if(_loc14_)
                           {
                              §§push(0);
                              if(!_loc15_)
                              {
                                 _loc7_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    §§push(§5k§);
                                    if(_loc14_)
                                    {
                                       _loc8_ = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          addr0366:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   continue loop0;
                                                }
                                                addr0248:
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(_loc7_++);
                                                   if(_loc14_)
                                                   {
                                                      break loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc15_)
                                                      {
                                                         break loop19;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         § L§.low = 948729;
                                                         addr021a:
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            if(_loc14_)
                                                            {
                                                               if(_loc10_ >= 0)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        §§push(int(terrain.length));
                                                                        if(!_loc15_)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  addr0250:
                                                               }
                                                            }
                                                            addr0251:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(terrain[_loc10_]);
                                                               }
                                                               else
                                                               {
                                                                  §§push(null);
                                                               }
                                                               _loc11_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc12_ = new Vector.<§@I§>(0,false);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §2!U§ = _loc12_;
                                                                     }
                                                                  }
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        if(_loc14_)
                                                                        {
                                                                           if(_loc11_ == null)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           if(_loc15_)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           §§pop();
                                                                           if(_loc15_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc11_.§4!5§ == §-n§.§6!P§);
                                                                           if(!_loc14_)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(_loc15_)
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        break loop21;
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(§2!U§ == null)
                                                                        {
                                                                           break loop22;
                                                                        }
                                                                        break;
                                                                     }
                                                                     break loop22;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               _loc13_ = new §@I§(_loc9_,this);
                                                               if(!_loc15_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc13_.position);
                                                                     §§push(_loc2_);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc6_);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(tileWidth);
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     break;
                                                                  }
                                                                  §§pop().z = §§pop();
                                                                  if(!_loc15_)
                                                                  {
                                                                     §2!U§.push(_loc13_);
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr0207:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc14_)
                                                   {
                                                      §§goto(addr0250);
                                                   }
                                                   §§goto(addr0251);
                                                }
                                             }
                                             break;
                                          }
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc9_ = §§pop();
                                             §§push(_loc6_);
                                          }
                                       }
                                       addr0364:
                                    }
                                    while(true)
                                    {
                                       §§push(§5k§);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc15_)
                                          {
                                             §§goto(addr0207);
                                          }
                                          §§goto(addr0366);
                                       }
                                       §§goto(addr0248);
                                       _loc9_ = §§pop();
                                       §§push(_loc6_);
                                    }
                                 }
                                 §§goto(addr021a);
                              }
                              §§goto(addr01ef);
                           }
                           §§goto(addr0364);
                        }
                        §§goto(addr0210);
                     }
                     §§goto(addr0364);
                  }
                  while(§2!U§ == null);
               }
               return;
            }
         }
      }
      
      public function build(param1:Point3D = undefined, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc6_:* = NaN;
         var _loc7_:* = null as §!=§;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null as Vector.<§!=§>;
         var _loc12_:* = 0;
         var _loc13_:* = null as Vector.<§@I§>;
         var _loc14_:* = null as §@I§;
         if(!_loc16_)
         {
            if(§!!8§ == null)
            {
               if(!_loc16_)
               {
                  return;
               }
            }
            else
            {
               § L§.mid = 975784;
            }
         }
         §§push(false);
         if(_loc15_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(false);
         if(_loc15_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(int(§<!7§.length));
         if(!_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(_loc15_)
               {
                  if(param1 == null)
                  {
                     break;
                  }
                  if(_loc16_)
                  {
                     continue loop13;
                  }
               }
               §§pop();
               §§push(param2 == null);
               if(_loc15_)
               {
                  continue loop13;
               }
               addr021f:
               if(§§pop())
               {
                  _loc11_ = §!!8§;
                  loop16:
                  while(true)
                  {
                     if(_loc15_)
                     {
                        §§push(0);
                        if(_loc16_)
                        {
                           break;
                        }
                        _loc8_ = int(§§pop());
                        _loc9_ = 0;
                     }
                     _loc10_ = int(_loc11_.length);
                     while(true)
                     {
                        §§push(_loc9_);
                        if(_loc16_)
                        {
                           break loop16;
                        }
                        §§push(_loc10_);
                        if(_loc15_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc16_)
                              {
                                 _loc11_.length = _loc8_;
                              }
                              §§push(int(§!!8§.length));
                              break loop16;
                           }
                           §§push(_loc9_);
                           if(!_loc16_)
                           {
                              _loc9_++;
                              if(_loc15_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc12_ = §§pop();
                           if(!_loc16_)
                           {
                              if(_loc11_[_loc12_] == null)
                              {
                                 continue;
                              }
                              if(!_loc16_)
                              {
                                 _loc11_[_loc8_] = _loc11_[_loc12_];
                                 if(_loc16_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc8_++;
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc16_)
                           {
                              §,`§ = true;
                           }
                           §§push(true);
                           if(_loc15_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc3_ = §§pop();
                        }
                     }
                     break;
                  }
                  §§goto(addr02c9);
               }
               §§goto(addr02e5);
               §§push(_loc3_);
            }
            loop17:
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc16_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(param1.z);
                        if(!_loc16_)
                        {
                           §§push(3000);
                           if(!_loc16_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc15_)
                              {
                                 break;
                              }
                              §§push(3000);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc16_)
                           {
                              addr0107:
                              §§push(Number(§§pop()));
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc16_)
                        {
                           _loc6_ = §§pop();
                           if(_loc15_)
                           {
                           }
                           break loop17;
                        }
                        break;
                     }
                  }
                  else
                  {
                     §§push(Number(Math.POSITIVE_INFINITY));
                     if(_loc15_)
                     {
                        §§goto(addr0107);
                     }
                  }
                  _loc6_ = §§pop();
                  break loop17;
               }
               loop3:
               while(true)
               {
                  §§push(_loc8_);
                  §§push(_loc9_);
                  if(_loc16_)
                  {
                     break loop11;
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(_loc8_);
                     if(!_loc16_)
                     {
                        _loc8_++;
                        if(!_loc16_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc10_ = §§pop();
                     _loc7_ = §!!8§[_loc10_];
                     loop4:
                     while(true)
                     {
                        §§push(true);
                        if(_loc7_.§>k§ != null)
                        {
                           while(true)
                           {
                              §§pop();
                              §§push(_loc7_.§>k§.§'j§());
                              if(!_loc16_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§push(§§pop() < _loc6_);
                           }
                           addr01cf:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(_loc15_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           _loc7_.§0u§.§^!9§(_loc7_,param2);
                           while(true)
                           {
                              §§push(true);
                              if(!_loc16_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc16_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(Boolean(_loc7_.positionIterator3D.hasNext()));
                              }
                              if(!§§pop())
                              {
                                 §!!8§[_loc10_] = null;
                                 §§push(true);
                                 break;
                              }
                              continue loop4;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc15_)
                           {
                              _loc4_ = §§pop();
                              break;
                           }
                           §§goto(addr01cf);
                        }
                        break;
                     }
                     if(_loc7_.§+!R§ != null)
                     {
                        copyTerrainMapping(_loc7_.§+!R§);
                     }
                     continue;
                  }
                  §§push(_loc4_);
                  if(!_loc16_)
                  {
                     §§goto(addr021f);
                  }
                  §§goto(addr02e5);
               }
               break loop11;
            }
            while(true)
            {
               if(param2 == null)
               {
                  if(!_loc15_)
                  {
                     break;
                  }
                  param2 = 50;
               }
               _loc8_ = 0;
               §§push(int(§!!8§.length));
               if(!_loc16_)
               {
                  §§push(int(§§pop()));
                  if(_loc15_)
                  {
                     _loc9_ = §§pop();
                     break loop18;
                  }
                  break loop12;
               }
               break loop13;
            }
            §§goto(addr035d);
         }
         while(true)
         {
            loop12:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc16_)
                     {
                        break loop10;
                     }
                     addr02e5:
                     if(§§pop())
                     {
                        if(!_loc16_)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc15_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                                 _loc8_ = §§pop();
                                 §§push(int(§<!7§.length));
                                 if(!_loc15_)
                                 {
                                    break loop12;
                                 }
                              }
                              §§push(int(§§pop()));
                              break loop12;
                           }
                           §§goto(addr035a);
                        }
                        §§goto(addr0358);
                     }
                     §§goto(addr03b0);
                  }
                  §§goto(addr035d);
               }
               §§goto(addr0352);
            }
            _loc9_ = §§pop();
            if(!_loc16_)
            {
               §§goto(addr034a);
            }
            §§goto(addr0358);
         }
         loop7:
         while(true)
         {
            if(§§pop() >= §§pop())
            {
               addr0358:
               §§push(0);
               break;
            }
            addr034a:
            §§push(_loc8_);
            if(_loc15_)
            {
               _loc8_++;
               if(_loc15_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc10_ = §§pop();
            if(_loc15_)
            {
               §<!7§[_loc10_].reset();
            }
            loop0:
            while(true)
            {
               §§push(_loc8_);
               if(_loc15_)
               {
                  while(true)
                  {
                     §§push(_loc9_);
                     break loop0;
                  }
                  addr0352:
               }
               break loop7;
            }
         }
         addr035a:
         _loc8_ = int(§§pop());
         addr035d:
         _loc13_ = §;S§;
         if(_loc15_)
         {
            while(_loc8_ < int(_loc13_.length))
            {
               _loc14_ = _loc13_[_loc8_];
               if(_loc15_)
               {
                  _loc8_++;
                  if(!_loc15_)
                  {
                     continue;
                  }
               }
               _loc14_.§ o§(this);
            }
         }
         addr03b0:
      }
      
      public function §7!"§(param1:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         loop3:
         while(true)
         {
            §§push(param1);
            §§push(int(terrain.length));
            if(_loc6_)
            {
               if(§§pop() <= §§pop())
               {
                  break;
               }
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(layout.§6!,§(0,0,0,1));
                           if(!_loc7_)
                           {
                              _loc2_ = §§pop();
                              §§push(int(Math.ceil(param1 / _loc2_)));
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 break loop5;
                              }
                              §§push(§§pop() * §§pop());
                           }
                           param1 = §§pop();
                           §§push(int(terrain.length));
                           if(!_loc7_)
                           {
                              §§push(int(§§pop()));
                              break;
                           }
                           break loop4;
                        }
                        _loc3_ = §§pop();
                        if(!_loc6_)
                        {
                           break loop3;
                        }
                     }
                     §§push(param1);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                        break loop4;
                     }
                     §§goto(addr00e3);
                  }
               }
               _loc4_ = §§pop();
               if(_loc7_)
               {
                  break;
               }
               while(true)
               {
                  §§push(_loc3_);
                  addr00e3:
                  while(true)
                  {
                     §§push(_loc4_);
                     break loop5;
                  }
               }
               addr00e2:
            }
            while(true)
            {
               if(§§pop() >= §§pop())
               {
                  break loop3;
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     _loc3_++;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc5_ = §§pop();
               if(!_loc7_)
               {
                  terrain.push(null);
               }
               §§goto(addr00e2);
            }
            break;
         }
      }
      
      public function §5!"§(param1:String, param2:§=!U§) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc4_:* = null as §"=§;
         var _loc5_:* = null as §!=§;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc10_:* = null as §+F§;
         var _loc11_:* = NaN;
         var _loc12_:* = null as String;
         while(true)
         {
            if(!_loc13_)
            {
               if(param1 != "terrain")
               {
                  §§push(startZ);
                  if(!_loc13_)
                  {
                     break;
                  }
                  §§goto(addr0066);
               }
            }
            §§push(§78§);
            if(_loc13_)
            {
            }
            break;
         }
         addr0066:
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:Vector.<§+F§> = §7o§.instance.§!!L§;
         if(!_loc13_)
         {
            loop0:
            while(_loc8_ < int(_loc9_.length))
            {
               _loc10_ = _loc9_[_loc8_];
               _loc8_++;
               §§push(_loc10_.identifier);
               if(!_loc13_)
               {
                  if(§§pop() != param1)
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push("z");
                              if(!_loc13_)
                              {
                                 §§push(§§pop() in StringMap.§+!#§);
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc14_)
                                    {
                                       break loop5;
                                    }
                                    §§push(Boolean(param2.existsReserved("z")));
                                    if(!_loc14_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§push("z" in param2.h);
                                 }
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(Std);
                                                if(!_loc13_)
                                                {
                                                   §§push("z");
                                                   if(!_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(§§pop() in StringMap.§+!#§))
                                                   {
                                                      §§push(param2.h["z"]);
                                                      break;
                                                   }
                                                }
                                                §§push(param2.getReserved("z"));
                                                break;
                                             }
                                             §§push(§§pop().parseFloat(§§pop()));
                                             if(_loc13_)
                                             {
                                                break loop3;
                                             }
                                             _loc11_ = Number(§§pop());
                                             §§push("zIsBackwards");
                                             if(_loc14_)
                                             {
                                                if(§§pop() in StringMap.§+!#§)
                                                {
                                                   §§push(Boolean(param2.existsReserved("zIsBackwards")));
                                                   if(!_loc13_)
                                                   {
                                                      break loop2;
                                                   }
                                                   break loop6;
                                                }
                                                addr014d:
                                                §§push("zIsBackwards" in param2.h);
                                                break loop2;
                                             }
                                             addr01f4:
                                             §§push(§§pop() + _loc3_);
                                             if(_loc13_)
                                             {
                                                break loop8;
                                             }
                                             §§push(§§pop());
                                             if(!_loc14_)
                                             {
                                                break loop8;
                                             }
                                          }
                                          else
                                          {
                                             §§push("");
                                             if(!_loc13_)
                                             {
                                                §§goto(addr01f4);
                                             }
                                          }
                                          §§goto(addr0205);
                                       }
                                       addr0230:
                                       if(§§pop() == "terrain")
                                       {
                                          _loc4_ = _loc10_;
                                          _loc5_ = _loc4_.§3N§(tunnel,param2,0);
                                          if(_loc14_)
                                          {
                                             if(_loc5_ != null)
                                             {
                                                §!!8§.push(_loc5_);
                                                loop11:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc5_.§&n§);
                                                         §§push(int(_loc5_.§&n§.length));
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc6_ = §§pop()[§§pop()].position.z;
                                                         if(_loc14_)
                                                         {
                                                            §§push(_loc6_ + 1);
                                                            if(_loc14_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§push(_loc6_);
                                                            }
                                                            _loc6_ = §§pop() * tileWidth;
                                                         }
                                                         if(_loc6_ <= endZ)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc14_)
                                                         {
                                                            break loop11;
                                                         }
                                                      }
                                                      endZ = _loc6_;
                                                      break;
                                                   }
                                                   §§push(_loc5_.indices.length);
                                                   if(!_loc13_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc13_)
                                                         {
                                                            if(§§pop() <= 0)
                                                            {
                                                               break loop0;
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               break loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.indices);
                                                               §§push(_loc5_.indices.length);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc14_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(§§pop() - 1);
                                                               break;
                                                            }
                                                            §§push(§§pop()[§§pop()]);
                                                            if(!_loc14_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(int(§§pop()));
                                                            if(!_loc14_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(int(§§pop()));
                                                         break;
                                                      }
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   break loop0;
                                                }
                                                §§push(§§findproperty(§7!"§));
                                                §§push(_loc7_);
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                §§pop().§7!"§(§§pop());
                                             }
                                          }
                                          break loop0;
                                       }
                                       _loc10_.§3N§(tunnel,param2);
                                       break loop0;
                                    }
                                    §§goto(addr0211);
                                 }
                                 §§goto(addr0216);
                              }
                              §§goto(addr014d);
                           }
                           §§goto(addr01c8);
                        }
                        §§goto(addr022f);
                     }
                     §§goto(addr0173);
                  }
                  if(§§pop())
                  {
                     §§push(endZ);
                     if(!_loc13_)
                     {
                        §§push(§§pop() / tileWidth);
                     }
                     §§push(§§pop() - _loc11_);
                     if(_loc14_)
                     {
                        break loop3;
                     }
                     addr0173:
                     _loc11_ = §§pop();
                  }
                  §§push(Std);
                  §§push(_loc3_);
                  if(_loc14_)
                  {
                     §§push(§§pop() + _loc11_);
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop().string(§§pop()));
                     if(!_loc13_)
                     {
                        §§push(§§pop());
                        if(!_loc14_)
                        {
                           break;
                        }
                        §§push(§§pop());
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     _loc12_ = §§pop();
                     §§push("z");
                     if(_loc14_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(_loc14_)
                        {
                           addr01c8:
                           if(§§pop())
                           {
                              param2.setReserved("z",_loc12_);
                              if(_loc13_)
                              {
                              }
                           }
                           else
                           {
                              param2.h["z"] = _loc12_;
                           }
                        }
                        else
                        {
                           addr0216:
                           if(§§pop())
                           {
                              param2.setReserved("z",_loc12_);
                           }
                           else
                           {
                              param2.h["z"] = _loc12_;
                           }
                        }
                     }
                     else
                     {
                        addr0205:
                        _loc12_ = §§pop();
                        if(!_loc13_)
                        {
                           addr0211:
                           §§goto(addr0216);
                           §§push("z" in StringMap.§+!#§);
                        }
                     }
                     addr022f:
                     §§push(param1);
                     break;
                  }
               }
               §§goto(addr0230);
            }
         }
      }
   }
}

