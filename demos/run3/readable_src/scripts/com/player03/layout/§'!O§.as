package com.player03.layout
{
   import §"p§.§'A§;
   import §%!Z§.§&!S§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §'!O§ extends Sprite
   {
      
      public var §6I§:Number;
      
      public var §1X§:Number;
      
      public var §!n§:§&d§;
      
      public var §6!]§:Boolean;
      
      public var layout:§&d§;
      
      public function §'!O§(param1:Object = undefined, param2:Object = undefined, param3:§&d§ = undefined, param4:Object = undefined, param5:§38§ = undefined)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as §38§;
         loop0:
         while(true)
         {
            if(param1 == null)
            {
               §§push(0);
               if(_loc7_)
               {
                  break;
               }
               param1 = §§pop();
            }
            if(param2 == null)
            {
               while(true)
               {
                  addr00b8:
                  if(!_loc7_)
                  {
                     §§push(0);
                     break loop0;
                  }
                  _loc6_ = param3.scale;
                  break;
               }
               §§goto(addr00d2);
            }
            addr0041:
            if(param4 == null)
            {
               param4 = false;
            }
            §6!]§ = false;
            super();
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  if(!_loc7_)
                  {
                     §6I§ = param1;
                     if(!_loc7_)
                     {
                        §1X§ = param2;
                        while(true)
                        {
                           if(_loc8_)
                           {
                              §6!U§(param3);
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           if(param5 == null)
                           {
                              if(param3 != null)
                              {
                                 break;
                              }
                              _loc6_ = §&d§.§1$§().scale;
                              break loop4;
                           }
                        }
                        §§goto(addr00b8);
                     }
                  }
                  _loc6_ = param5;
                  if(!_loc7_)
                  {
                     break;
                  }
                  break loop3;
               }
               addr00d2:
               layout = new §&d§(_loc6_,new §'A§(0,0,param1,param2));
               addEventListener(Event.ADDED_TO_STAGE,§3%§);
               while(true)
               {
                  if(_loc8_)
                  {
                     addEventListener(Event.ADDED_TO_STAGE,§^,§,false,1);
                     addEventListener(Event.REMOVED_FROM_STAGE,§8G§);
                     if(stage != null)
                     {
                        dispatchEvent(new Event(Event.ADDED_TO_STAGE));
                        break;
                     }
                     if(!param4)
                     {
                        break;
                     }
                     §§push(§6!]§);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §^,§(null);
                  break;
               }
               return;
            }
            §§goto(addr0160);
         }
         param2 = §§pop();
         §§goto(addr0041);
      }
      
      override public function set width(param1:Number) : void
      {
         if(stage != null)
         {
            layout.§&#§.§"!§(param1);
         }
         else
         {
            §6I§ = param1;
         }
      }
      
      public function §6!U§(param1:§&d§) : §&d§
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = null as §&d§;
         var _loc3_:* = null as Function;
         var _loc4_:* = 0;
         loop3:
         while(true)
         {
            §§push(false);
            if(§!n§ != null)
            {
               §§pop();
               if(!_loc6_)
               {
                  break;
               }
               §§push(stage != null);
            }
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc2_ = §!n§;
                  loop5:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        §§push(layout.apply);
                        if(!_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              §§push(§§pop());
                           }
                        }
                        _loc3_ = §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(int(_loc2_.§6"§.length));
                           if(!_loc5_)
                           {
                              §§push(1);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(§§pop() - §§pop());
                              if(!_loc6_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(int(§§pop()));
                           if(!_loc5_)
                           {
                              break loop6;
                           }
                           §§goto(addr0134);
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              break loop5;
                           }
                           while(true)
                           {
                              §§push(false);
                              if(_loc6_)
                              {
                                 if(_loc2_.§6"§[_loc4_].§"3§ is §#!6§)
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop();
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(_loc2_.§6"§[_loc4_].§"3§.§@!S§);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§push(§§pop() == _loc3_);
                                       if(!_loc5_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    _loc2_.§6"§.splice(_loc4_,1);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              _loc4_--;
                              break;
                           }
                           §§goto(addr0132);
                        }
                        break loop5;
                     }
                     _loc4_ = §§pop();
                     if(!_loc6_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        addr0134:
                        while(true)
                        {
                           §§push(0);
                           break loop7;
                        }
                     }
                     addr0132:
                  }
               }
               while(true)
               {
                  §§push(false);
                  if(_loc6_)
                  {
                     if(param1 != null)
                     {
                        §§pop();
                        break loop3;
                     }
                     break;
                  }
                  addr0160:
                  §§push(Boolean(§§pop()));
                  break;
               }
               addr0161:
               if(§§pop())
               {
                  break;
               }
               §§goto(addr01ad);
            }
            while(true)
            {
               §§push(layout.apply);
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc3_ = §§pop();
            if(!_loc5_)
            {
               param1.§6"§.push(new §#!7§(null,null,new §#!6§(_loc3_)));
            }
            addr01ad:
            return §!n§ = param1;
         }
         §§push(stage == null);
         if(_loc6_)
         {
            §§push(!§§pop());
            if(!_loc5_)
            {
               §§goto(addr0160);
            }
         }
         §§goto(addr0161);
      }
      
      override public function set height(param1:Number) : void
      {
         if(stage != null)
         {
            layout.§&#§.§&s§(param1);
         }
         else
         {
            §1X§ = param1;
         }
      }
      
      public function §=§(param1:§ 7§, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               §§push(layout.§&#§);
               §§push(0);
               §§push(0);
               §§push(param1.§[![§());
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     break;
                  }
               }
               addr0092:
               §§push(param1.§;c§());
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                           }
                           addr008d:
                           §§push(Number(§§pop()));
                           break loop1;
                        }
                     }
                     §§push(height);
                     break loop2;
                  }
               }
               §§pop().setTo(§§pop(),§§pop(),§§pop(),§§pop(),true);
            }
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() * layout.scale.x);
               if(_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  §§goto(addr008d);
               }
            }
            §§goto(addr0092);
         }
      }
      
      public function §@!"§(param1:§ 7§, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               §§push(layout.§&#§);
               §§push(0);
               §§push(0);
               §§push(width);
               §§push(param1.§1C§());
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc4_)
                           {
                              §§push(param1.§5`§());
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§goto(addr0084);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(param2);
                  if(!_loc4_)
                  {
                     addr0084:
                     §§push(§§pop() * layout.scale.y);
                  }
                  break loop2;
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().setTo(§§pop(),§§pop(),§§pop(),§§pop(),true);
         }
      }
      
      public function §!1§(param1:§ 7§ = undefined, param2:§ 7§ = undefined, param3:Object = undefined, param4:Object = undefined) : void
      {
         var a21:Number;
         var a11:§ 7§;
         var f1:Function;
         var a2:Number;
         var a1:§ 7§;
         var f:Function;
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as Function;
         loop0:
         while(true)
         {
            if(param3 == null)
            {
               if(_loc7_)
               {
                  break;
               }
               param3 = 0;
            }
            if(param4 == null)
            {
               param4 = param3;
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
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(param1 != null)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(§§newactivation());
                              §§push(§=§);
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().§§slot[1] = §§pop();
                              a1 = param1;
                              a2 = param3;
                              if(_loc7_)
                              {
                                 break loop4;
                              }
                              if(!_loc6_)
                              {
                                 break loop3;
                              }
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                              _loc5_ = §§pop();
                              layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc5_)));
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 break loop1;
                              }
                              §§pop()();
                           }
                           if(param2 != null)
                           {
                              break loop4;
                           }
                           §§goto(addr0138);
                        }
                        §§goto(addr0131);
                     }
                     §§push(§§newactivation());
                     §§push(§@!"§);
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[4] = §§pop();
                     if(_loc6_)
                     {
                        a11 = param2;
                        a21 = param4;
                        if(!_loc7_)
                        {
                           break loop0;
                        }
                        break loop5;
                     }
                     break loop0;
                  }
                  _loc5_ = §§pop();
                  layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc5_)));
                  if(_loc6_)
                  {
                     addr0131:
                     §§push(_loc5_);
                     break loop1;
                  }
                  §§goto(addr0138);
               }
               §§push(§§pop());
               break loop3;
            }
            §§pop()();
            addr0138:
            return;
         }
         if(_loc6_)
         {
            break loop2;
         }
         break loop3;
      }
      
      public function §8G§(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null as §&d§;
         var _loc3_:* = null as Function;
         var _loc4_:* = 0;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(_loc5_)
               {
                  if(§!n§ == null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop3;
                  }
               }
               _loc2_ = §!n§;
               if(!_loc6_)
               {
                  §§push(layout.apply);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(int(_loc2_.§6"§.length));
                        if(_loc5_)
                        {
                           §§push(1);
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc6_)
                           {
                              break loop5;
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc5_)
                        {
                           break loop5;
                        }
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           break loop4;
                        }
                     }
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           break loop4;
                        }
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc5_)
                              {
                                 if(!(_loc2_.§6"§[_loc4_].§"3§ is §#!6§))
                                 {
                                    break loop7;
                                 }
                                 if(!_loc5_)
                                 {
                                    break loop7;
                                 }
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(_loc2_.§6"§[_loc4_].§"3§.§@!S§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() == _loc3_);
                                 if(_loc6_)
                                 {
                                    break loop7;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop7;
                           }
                           _loc4_--;
                        }
                        if(!§§pop())
                        {
                           break loop8;
                        }
                        if(_loc5_)
                        {
                           _loc2_.§6"§.splice(_loc4_,1);
                           if(_loc5_)
                           {
                              break loop8;
                           }
                        }
                     }
                     break loop4;
                  }
                  while(true)
                  {
                     §§push(0);
                     break loop6;
                  }
               }
               while(true)
               {
                  §§push(_loc4_);
                  break loop5;
               }
            }
            §6I§ = layout.§&#§.width;
            if(_loc5_)
            {
               break;
            }
            §§goto(addr0152);
         }
         §1X§ = layout.§&#§.height;
         addr0152:
      }
      
      final public function §^,§(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,§^,§);
            if(!_loc4_)
            {
               §6!]§ = true;
            }
         }
         var _loc2_:§&d§ = §&d§.§1$§();
         if(!_loc4_)
         {
            §&d§.§3!C§ = layout;
            if(_loc3_)
            {
               §^g§();
               if(!_loc4_)
               {
                  §&d§.§3!C§ = _loc2_;
               }
            }
         }
      }
      
      public function §3%§(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as Function;
         loop0:
         while(true)
         {
            if(§!n§ != null)
            {
               if(_loc3_)
               {
                  §§push(layout.apply);
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc2_ = §§pop();
               }
               §!n§.§6"§.push(new §#!7§(null,null,new §#!6§(_loc2_)));
               if(_loc4_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               §§push(true);
               if(!_loc4_)
               {
                  if(§6I§ == layout.§&#§.width)
                  {
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              break loop1;
                           }
                           §§push(§1X§ == layout.§&#§.height);
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        break;
                     }
                  }
               }
               if(§§pop())
               {
                  break;
               }
               break loop0;
            }
            layout.§&#§.setTo(layout.§&#§.x,layout.§&#§.y,§6I§,§1X§);
            break;
         }
      }
      
      override public function get width() : Number
      {
         if(stage != null)
         {
            return layout.§&#§.width;
         }
         return §6I§;
      }
      
      override public function get height() : Number
      {
         if(stage != null)
         {
            return layout.§&#§.height;
         }
         return §1X§;
      }
      
      public function §^g§() : void
      {
      }
   }
}

