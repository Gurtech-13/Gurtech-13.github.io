package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import §!D§.§1!&§;
   import §%!Z§.§&!S§;
   import §4n§.§3!G§;
   import §4n§.Achievement;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   import flash.Boot;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import motion.Actuate;
   import motion._Actuate.§>!;§;
   import motion.actuators.IGenericActuator;
   import motion.actuators.TransformActuator;
   import motion.easing.IEasing;
   import motion.easing.§[!4§;
   import unitsystem.§7o§;
   
   public class ConditionChain extends §,!A§
   {
      
      public var progress:Number;
      
      public var §#B§:Vector.<§#!G§>;
      
      public var §<!V§:Boolean;
      
      public var ordered:Boolean;
      
      public var §41§:Vector.<§#!G§>;
      
      public function ConditionChain(param1:Vector.<§#!G§>, param2:Vector.<int>, param3:Boolean, param4:§<!§, param5:Level, param6:Object)
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc10_:* = 0;
         var _loc11_:* = null as §#!G§;
         while(true)
         {
            if(!_loc13_)
            {
               §<!V§ = true;
               if(_loc13_)
               {
                  break;
               }
            }
            progress = 0;
            ordered = true;
            if(!_loc13_)
            {
               §41§ = param1;
               break;
            }
            §§goto(addr0068);
         }
         ordered = param3;
         if(_loc12_)
         {
            super(param4,param5,param6);
            addr0068:
            §9"§ = false;
            §§goto(addr006f);
         }
         addr006f:
         var _loc7_:Vector.<§#!G§> = new Vector.<§#!G§>(0,false);
         if(_loc12_)
         {
            §#B§ = _loc7_;
         }
         §§push(0);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(int(param1.length));
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!_loc13_)
         {
            while(_loc8_ < _loc9_)
            {
               §§push(_loc8_);
               if(_loc12_)
               {
                  _loc8_++;
                  if(!_loc13_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc10_ = §§pop();
               _loc11_ = param1[_loc10_];
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(param2.length);
                           if(_loc12_)
                           {
                              §§push(int(§§pop()));
                              if(_loc13_)
                              {
                                 break loop3;
                              }
                              §§push(_loc10_);
                              if(!_loc12_)
                              {
                                 break;
                              }
                              if(§§pop() > §§pop())
                              {
                                 §§push(_loc11_);
                                 §§push(_loc11_.flags);
                                 if(!_loc13_)
                                 {
                                    §§push(param2[_loc10_]);
                                    if(!_loc13_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    §§push(§§pop() | §§pop());
                                 }
                                 §§pop().flags = §§pop();
                                 break loop4;
                              }
                              §§push(param2.length);
                              if(_loc13_)
                              {
                                 break loop3;
                              }
                              §§push(int(§§pop()));
                              if(!_loc12_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(1);
                           if(!_loc13_)
                           {
                              break;
                           }
                           §§goto(addr0172);
                        }
                        if(§§pop() == §§pop())
                        {
                           §§push(_loc11_);
                           §§push(_loc11_.flags);
                           if(!_loc13_)
                           {
                              §§push(param2[0]);
                              if(!_loc13_)
                              {
                                 §§push(int(§§pop()));
                              }
                              §§push(§§pop() | §§pop());
                           }
                           §§pop().flags = §§pop();
                        }
                        break;
                     }
                     §§push(_loc11_.flags);
                     if(!_loc13_)
                     {
                        break loop2;
                     }
                     break;
                  }
                  §§goto(addr0172);
               }
               addr0172:
               §§push(16);
               if(!_loc13_)
               {
                  §§push(§§pop() & §§pop());
                  break loop3;
               }
               if(§§pop() != §§pop())
               {
                  if(_loc12_)
                  {
                     §§push(§<g§);
                     if(!_loc13_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop() == null)
                     {
                        if(_loc12_)
                        {
                           §§push(§§findproperty(§<g§));
                           §§push(§4!3§);
                           if(_loc12_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§<g§ = §§pop();
                           if(_loc13_)
                           {
                              continue;
                           }
                        }
                     }
                  }
                  §#B§.push(_loc11_);
               }
            }
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §#!G§;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§#!G§> = §41§;
         while(true)
         {
            if(!_loc5_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(_loc4_)
                  {
                     _loc1_++;
                     if(_loc4_)
                     {
                        _loc3_.§7q§(tunnel);
                     }
                  }
               }
               if(!_loc4_)
               {
                  break;
               }
               progress = 0;
               if(_loc5_)
               {
                  break;
               }
            }
            §<!V§ = true;
            break;
         }
      }
      
      public function §4!3§(param1:Level) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §#!G§;
         if(_loc6_)
         {
            if(§#B§ != null)
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:Vector.<§#!G§> = §#B§;
               if(!_loc5_)
               {
                  loop0:
                  while(_loc2_ < int(_loc3_.length))
                  {
                     _loc4_ = _loc3_[_loc2_];
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           _loc2_++;
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        §§push(_loc4_.§^!S§(param1));
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(§§pop() < 1);
                        if(!_loc5_)
                        {
                           if(!§§pop())
                           {
                              continue loop0;
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           return false;
                        }
                     }
                     §<!V§ = false;
                     §§goto(addr00b0);
                  }
               }
               return true;
            }
         }
         return true;
      }
      
      public function §6!T§(param1:Level) : Boolean
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc5_:* = null as §#!G§;
         §§push(false);
         if(!_loc7_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
         }
         var _loc4_:Vector.<§#!G§> = §41§;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop15:
               while(true)
               {
                  loop16:
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        while(_loc3_ < int(_loc4_.length))
                        {
                           _loc5_ = _loc4_[_loc3_];
                           if(_loc7_)
                           {
                              break loop16;
                           }
                           _loc3_++;
                           if(_loc7_)
                           {
                              break loop15;
                           }
                           while(true)
                           {
                              §§push(false);
                              §§push(_loc5_.flags);
                              if(_loc8_)
                              {
                                 §§push(16);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() & §§pop());
                              }
                              §§push(0);
                              break;
                           }
                           if(§§pop() == §§pop())
                           {
                              §§pop();
                              §§push(_loc5_ == §@!J§.§?1§);
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                              §§push(!§§pop());
                              if(!_loc8_)
                              {
                                 break loop1;
                              }
                           }
                           if(§§pop())
                           {
                              _loc2_ = true;
                              break;
                           }
                        }
                     }
                     §§push(!_loc2_);
                     if(!_loc7_)
                     {
                        break loop1;
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr016e);
               }
               §§goto(addr00ff);
            }
            if(§5!&§ == null)
            {
               break loop3;
            }
            if(!_loc7_)
            {
               §§pop();
               break loop4;
            }
            §§goto(addr0163);
         }
         if(§§pop())
         {
            return false;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  if(result.achievement != null)
                  {
                     if(§3!G§.§07§ != null)
                     {
                        return result.achievement == §3!G§.§07§;
                     }
                     §§push(false);
                     if(§5!&§ != null)
                     {
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§pop();
                        if(_loc7_)
                        {
                           break loop4;
                        }
                        §§push(param1.§5§ == §,a§.INFINITE);
                     }
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           return true;
                        }
                        break loop4;
                     }
                  }
                  §§push(true);
                  if(!_loc7_)
                  {
                     break loop2;
                  }
                  break loop3;
               }
               §§goto(addr016f);
            }
            §§push(param1.§?!I§ == null);
            if(!_loc7_)
            {
               addr0163:
               §§push(Boolean(§§pop()));
               if(!_loc7_)
               {
                  break;
               }
            }
            break loop14;
         }
         if(!§§pop())
         {
            var _loc6_:§,a§ = param1.§5§;
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(_loc8_)
                  {
                     loop7:
                     while(true)
                     {
                        §§push(_loc6_.index);
                        if(_loc8_)
                        {
                           loop8:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(false);
                                                if(param1.§1W§ != null)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§pop();
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1.§1W§.id);
                                                      if(_loc7_)
                                                      {
                                                         break loop11;
                                                      }
                                                      §§push(§§pop() == §5!&§);
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc7_)
                                                   {
                                                      break loop10;
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   break;
                                                }
                                                §§push(false);
                                                if(param1.characters != null)
                                                {
                                                   break loop10;
                                                }
                                                break loop9;
                                             }
                                             §§push(param1.§1W§.§[9§);
                                             if(!_loc7_)
                                             {
                                                addr01e1:
                                                _loc3_ = §§pop();
                                                break loop7;
                                             }
                                             break loop8;
                                          }
                                       }
                                       §§pop();
                                       §§push(int(param1.characters.length));
                                       if(!_loc7_)
                                       {
                                          break loop11;
                                       }
                                       break loop8;
                                    }
                                    §§push(false);
                                    break loop5;
                                 }
                                 §§push(§§pop() > §§pop());
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 break loop6;
                              }
                              if(§§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    break loop7;
                                 }
                                 §§push(param1.characters[0].§73§.§[9§);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(param1.§]!#§(0,true).§[9§);
                              }
                              _loc3_ = §§pop();
                              break loop7;
                           }
                           _loc3_ = §§pop();
                           break;
                        }
                        §§goto(addr01e1);
                     }
                  }
                  §§push(param1.§?!I§);
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     while(true)
                     {
                        if(param1.backwards)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc7_)
                           {
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        §§push(§§pop() + §§pop());
                        break;
                     }
                  }
                  §§push(§§pop().§'m§(§§pop()));
                  if(_loc8_)
                  {
                     return Boolean(§§pop());
                  }
                  break loop5;
               }
               return §§pop();
            }
            return §§pop();
         }
         addr016f:
         return false;
         addr016e:
      }
      
      override public function §5!0§() : Boolean
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc5_:int = 0;
         var _loc6_:* = null as §#!G§;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         §§push(progress);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc12_)
         {
            progress = 0;
         }
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(int(§41§.length));
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop22:
         while(true)
         {
            loop23:
            while(true)
            {
               loop24:
               while(true)
               {
                  loop25:
                  while(true)
                  {
                     if(_loc11_)
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc11_)
                           {
                              break loop25;
                           }
                           §§push(_loc4_);
                           if(_loc12_)
                           {
                              break loop24;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc11_)
                              {
                                 §§push(_loc2_);
                                 if(!_loc12_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc12_)
                                    {
                                       break loop23;
                                    }
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc12_)
                                 {
                                    break loop22;
                                 }
                              }
                           }
                           else
                           {
                              loop39:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc11_)
                                    {
                                       _loc3_++;
                                       if(!_loc11_)
                                       {
                                          break;
                                       }
                                       _loc5_ = §§pop();
                                       §§push(§41§[_loc5_].flags & 0x20);
                                       if(_loc12_)
                                       {
                                          break loop39;
                                       }
                                    }
                                    if(§§pop() == 0)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc11_)
                                    {
                                       §§push(§41§[_loc5_].flags & 0x10);
                                       if(!_loc12_)
                                       {
                                          §§push(0);
                                          if(_loc11_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                _loc6_ = §41§[_loc5_];
                                                if(!_loc12_)
                                                {
                                                   §§push(_loc6_);
                                                   §§push(_loc6_.flags);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() & -33);
                                                   }
                                                   §§pop().flags = §§pop();
                                                }
                                             }
                                             else
                                             {
                                                §§push(§41§[_loc5_].§^!S§(tunnel));
                                                if(_loc11_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                if(§§pop() >= 1)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc12_)
                                                   {
                                                      break loop39;
                                                   }
                                                   break;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr01a9);
                                          }
                                          addr01a8:
                                       }
                                       do
                                       {
                                          _loc9_ = §§pop();
                                       }
                                       while(!_loc12_);
                                       continue loop0;
                                       addr018f:
                                    }
                                    while(true)
                                    {
                                       §§push(§41§[_loc9_].flags);
                                       addr01a6:
                                       while(true)
                                       {
                                          §§goto(addr01a8);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc7_++;
                                    if(!_loc12_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc12_)
                                       {
                                          §§goto(addr018f);
                                       }
                                    }
                                    §§goto(addr01a6);
                                 }
                                 continue loop0;
                              }
                              _loc2_ = §§pop();
                              if(!_loc12_)
                              {
                                 progress = 0;
                              }
                              §§push(0);
                              if(!_loc12_)
                              {
                                 _loc7_ = §§pop();
                                 if(_loc11_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc12_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc12_)
                                       {
                                          _loc8_ = §§pop();
                                          if(_loc11_)
                                          {
                                          }
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                          }
                                          addr01d2:
                                       }
                                       while(§§pop() < _loc8_)
                                       {
                                          §§push(_loc7_);
                                          if(_loc11_)
                                          {
                                             break loop40;
                                          }
                                       }
                                       continue;
                                       addr01d4:
                                    }
                                    while(true)
                                    {
                                       if(§§pop() == 0)
                                       {
                                          §§push(§§findproperty(progress));
                                          §§push(progress);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc11_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§pop().progress = §§pop();
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr01d2);
                                    }
                                    addr01a9:
                                 }
                                 continue;
                              }
                              §§goto(addr01d4);
                           }
                        }
                     }
                     §§push(int(§41§.length));
                     if(_loc11_)
                     {
                        break loop23;
                     }
                     break;
                  }
                  §§goto(addr044e);
               }
               if(§§pop() >= §§pop())
               {
                  break loop22;
               }
               loop26:
               while(true)
               {
                  loop27:
                  while(true)
                  {
                     loop32:
                     while(true)
                     {
                        loop33:
                        while(true)
                        {
                           loop34:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc12_)
                              {
                                 _loc3_++;
                                 _loc5_ = §§pop();
                                 if(_loc12_)
                                 {
                                    addr0332:
                                    progress = 0;
                                    §<!V§ = false;
                                 }
                                 loop35:
                                 while(true)
                                 {
                                    loop36:
                                    while(true)
                                    {
                                       loop37:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§41§[_loc5_].flags);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() & 0x20);
                                                if(!_loc11_)
                                                {
                                                   break loop33;
                                                }
                                                if(§§pop() != 0)
                                                {
                                                   §§push(§41§[_loc5_].progress);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc11_)
                                                      {
                                                         break loop27;
                                                      }
                                                      _loc10_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0395);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§41§[_loc5_].§^!S§(tunnel));
                                                   if(_loc12_)
                                                   {
                                                      break loop27;
                                                   }
                                                   _loc10_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      break loop36;
                                                   }
                                                }
                                                §§push(§41§[_loc5_].flags);
                                                if(_loc12_)
                                                {
                                                   break loop35;
                                                }
                                             }
                                             if((§§pop() & 0x10) == 0)
                                             {
                                                §§push(§§findproperty(progress));
                                                §§push(progress);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() + _loc10_);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§pop().progress = §§pop();
                                                if(_loc12_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(_loc10_);
                                             if(!_loc11_)
                                             {
                                                break loop37;
                                             }
                                             §§push(1);
                                             if(!_loc11_)
                                             {
                                                break loop34;
                                             }
                                             §§push(§§pop() < §§pop());
                                             if(!_loc11_)
                                             {
                                                break loop14;
                                             }
                                             if(§§pop())
                                             {
                                                if(!§41§[_loc5_].§<!V§())
                                                {
                                                   §§goto(addr0332);
                                                }
                                                if(ordered)
                                                {
                                                   break loop36;
                                                }
                                             }
                                             §§goto(addr044d);
                                          }
                                          §§goto(addr03d8);
                                       }
                                       §§goto(addr03a5);
                                    }
                                    §§push(_loc5_);
                                    break;
                                 }
                                 §§push(1);
                                 if(_loc12_)
                                 {
                                    break loop26;
                                 }
                                 addr0358:
                                 _loc7_ = int(§§pop() + §§pop());
                                 if(_loc12_)
                                 {
                                    continue loop15;
                                    return false;
                                 }
                                 §§push(int(§41§.length));
                                 if(!_loc12_)
                                 {
                                    _loc8_ = §§pop();
                                    break loop32;
                                 }
                                 continue loop14;
                              }
                              §§goto(addr0358);
                           }
                           §§goto(addr04c8);
                        }
                        §§goto(addr045d);
                     }
                     §§goto(addr0434);
                  }
                  §§goto(addr04c6);
               }
               while(true)
               {
                  loop28:
                  while(true)
                  {
                     §§push(§§pop() & §§pop());
                     if(!_loc12_)
                     {
                        §§push(0);
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc12_)
                              {
                                 break loop22;
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§§findproperty(progress));
                                    §§push(progress);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + §41§[_loc9_].progress);
                                       if(_loc12_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 §§pop().progress = §§pop();
                              }
                           }
                           addr0434:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!_loc11_)
                              {
                                 break loop28;
                              }
                           }
                           break loop28;
                        }
                        break loop22;
                        addr0400:
                     }
                     loop13:
                     while(true)
                     {
                        if(§§pop() >= _loc8_)
                        {
                           addr0443:
                           while(true)
                           {
                              if(!_loc12_)
                              {
                                 break loop22;
                              }
                              §§goto(addr0473);
                           }
                           §§goto(addr04c0);
                        }
                        else
                        {
                           §§push(_loc7_);
                           if(_loc12_)
                           {
                              break loop28;
                           }
                           _loc7_++;
                           if(!_loc11_)
                           {
                              break loop28;
                           }
                           §§push(int(§§pop()));
                           loop14:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              loop31:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(int(§41§.length));
                                       if(_loc12_)
                                       {
                                          break loop31;
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§goto(addr04c8);
                                    addr0395:
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc11_)
                                    {
                                       break loop31;
                                    }
                                    addr03b6:
                                    while(true)
                                    {
                                       §§push(§§pop() >= §§pop());
                                       if(!_loc11_)
                                       {
                                          break loop19;
                                       }
                                       if(!§§pop())
                                       {
                                          break loop13;
                                       }
                                       if(_loc11_)
                                       {
                                          §41§[_loc9_].§0X§();
                                          break loop13;
                                       }
                                       §§goto(addr0434);
                                    }
                                 }
                                 break loop14;
                                 addr03a5:
                              }
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 §§goto(addr03b6);
                              }
                              §§goto(addr04c8);
                           }
                           §§goto(addr04c9);
                        }
                     }
                     while(true)
                     {
                        §§push(§41§[_loc9_].flags);
                        if(!_loc12_)
                        {
                           §§push(16);
                           if(_loc11_)
                           {
                              continue loop28;
                           }
                           §§goto(addr0400);
                        }
                        §§goto(addr043d);
                     }
                     addr043d:
                     §§goto(addr0443);
                     addr03d8:
                  }
                  §§goto(addr045d);
               }
               break loop22;
            }
            §§push(int(§§pop()));
            if(!_loc12_)
            {
               _loc4_ = §§pop();
               if(!_loc11_)
               {
                  break;
               }
               while(true)
               {
                  §§push(_loc3_);
               }
               addr044d:
            }
            while(true)
            {
               §§push(_loc4_);
               break loop24;
            }
            break;
            addr044e:
         }
         addr045d:
         §§push(int(§41§.length));
         §§push(int(§#B§.length));
         if(_loc11_)
         {
            §§push(§§pop() - §§pop());
            §§push(0);
         }
         if(§§pop() <= §§pop())
         {
            addr0473:
            progress = 1;
            if(_loc12_)
            {
            }
         }
         else
         {
            §§push(§§findproperty(progress));
            §§push(progress);
            if(_loc11_)
            {
               §§push(int(§41§.length));
               if(!_loc12_)
               {
                  §§push(§§pop() - int(§#B§.length));
               }
               §§push(§§pop() / §§pop());
            }
            §§pop().progress = §§pop();
         }
         addr04c9:
         return progress >= 1;
         addr04c0:
         addr04c8:
         addr04c6:
      }
   }
}

