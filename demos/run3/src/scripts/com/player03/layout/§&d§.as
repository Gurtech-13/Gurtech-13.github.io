package com.player03.layout
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §"p§.§'A§;
   import §"p§.§5X§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §3!b§.PlanetMissing;
   import §<?§.§#!7§;
   import §>!O§.§0S§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   
   public class §&d§
   {
      
      public static var §^!@§:§&d§;
      
      public static var §8!'§:§38§;
      
      public static var §3!C§:§&d§;
      
      public var scale:§38§;
      
      public var §6"§:Vector.<§#!7§>;
      
      public var §&#§:§'A§;
      
      public function §&d§(param1:§38§ = undefined, param2:§'A§ = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(param2 == null)
                  {
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     §&#§ = §5X§.§@!A§();
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §&#§ = param2;
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  if(param1 != null)
                  {
                     scale = param1;
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     break;
                  }
               }
               if(param2 != null)
               {
                  if(_loc4_)
                  {
                     scale = new §38§(int(param2.width),int(param2.height),param2);
                     if(_loc3_)
                     {
                     }
                  }
                  break loop0;
               }
               scale = §&d§.§;`§().scale;
               break loop0;
            }
            return;
         }
         §&#§.addEventListener(Event.CHANGE,§7!3§);
         §6"§ = new Vector.<§#!7§>();
         break loop1;
      }
      
      public static function §;`§() : §&d§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§&d§.§^!@§ == null)
         {
            while(true)
            {
               if(_loc2_)
               {
                  §&d§.§^!@§ = new §&d§(new §38§());
                  if(_loc1_)
                  {
                     break;
                  }
               }
               §&d§.§8!'§ = §&d§.§^!@§.scale;
               break;
            }
         }
         return §&d§.§^!@§;
      }
      
      public static function §8x§(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(§&d§.§8!'§ == null)
            {
               if(_loc3_)
               {
                  §&d§.§;`§();
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §&d§.§8!'§.§=!4§ = param1;
            if(_loc3_)
            {
               §&d§.§8!'§.§"H§ = param2;
               if(!_loc4_)
               {
                  §&d§.§8!'§.§1!§();
                  if(_loc3_)
                  {
                     §5X§.§@!A§().§9n§();
                  }
               }
            }
            break;
         }
      }
      
      public static function §1$§() : §&d§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§&d§.§3!C§ == null)
         {
            if(!_loc1_)
            {
               §&d§.§3!C§ = §&d§.§;`§();
            }
         }
         return §&d§.§3!C§;
      }
      
      public function remove(param1:§ 7§) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(int(§6"§.length));
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            loop0:
            while(_loc2_ >= 0)
            {
               if(§6"§[_loc2_].target != null)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§push(true);
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              if(§6"§[_loc2_].target.§@7§() == param1.§@7§())
                              {
                                 break;
                              }
                              if(!_loc4_)
                              {
                                 break loop3;
                              }
                              §§pop();
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(§6"§[_loc2_].§&!$§.§@7§() == param1.§@7§());
                           if(_loc4_)
                           {
                              break loop3;
                           }
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop2;
                        }
                        if(_loc3_)
                        {
                           break loop2;
                        }
                        §6"§.splice(_loc2_,1);
                        if(_loc4_)
                        {
                           break loop2;
                        }
                        continue loop0;
                     }
                     §§push(Boolean(§§pop()));
                     break loop4;
                  }
               }
               break loop2;
            }
         }
      }
      
      public function §7!3§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            apply();
         }
      }
      
      public function §4!G§(param1:§ 7§) : int
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as §#!7§;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§#!7§> = §6"§;
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     break loop1;
                  }
                  if(§§pop() < int(_loc4_.length))
                  {
                     _loc5_ = _loc4_[_loc3_];
                     if(!_loc6_)
                     {
                        _loc3_++;
                        if(_loc7_)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc7_)
                              {
                                 if(_loc5_.target == null)
                                 {
                                    break;
                                 }
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(_loc7_)
                              {
                                 §§push(_loc5_.target.§@7§() == param1.§@7§());
                                 if(_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() | _loc5_.§"3§.mask);
                              if(!_loc7_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc2_ = §§pop();
                     }
                     continue;
                  }
               }
            }
            return _loc2_;
         }
         return §§pop();
      }
      
      public function §+6§(param1:§ 7§, param2:§0S§) : Boolean
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = null as §#!7§;
         var _loc6_:* = false;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§#!7§> = §6"§;
         if(!_loc9_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               §§push(false);
               if(_loc5_.target != null)
               {
                  §§pop();
                  §§push(_loc5_.target.§@7§() == param1.§@7§());
                  if(!_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                     _loc7_ = int(_loc5_.§"3§.mask);
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
                                 if(_loc10_)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(int(param2.mask));
                                             if(!_loc9_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   break loop7;
                                                }
                                                §§push(false);
                                                if(!_loc10_)
                                                {
                                                   break loop2;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(240);
                                                      if(_loc9_)
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
                                                   break;
                                                }
                                                if(_loc9_)
                                                {
                                                   break loop2;
                                                }
                                                §§pop();
                                                if(!_loc10_)
                                                {
                                                   break loop7;
                                                }
                                                §§push(_loc8_);
                                                if(!_loc10_)
                                                {
                                                   break loop6;
                                                }
                                                §§push(240);
                                                if(_loc9_)
                                                {
                                                   break loop4;
                                                }
                                                §§push(§§pop() & §§pop());
                                             }
                                             §§push(0);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() != §§pop());
                                                if(_loc10_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   break;
                                                }
                                                break loop5;
                                             }
                                             break loop3;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             §§goto(addr012f);
                                          }
                                       }
                                       §§push(_loc7_);
                                       §§push(240);
                                       if(!_loc9_)
                                       {
                                          _loc7_ = §§pop() & §§pop();
                                          addr012f:
                                          §§push(_loc8_);
                                          §§push(240);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() & §§pop());
                                             break;
                                          }
                                          break loop3;
                                       }
                                       break loop4;
                                    }
                                    _loc8_ = §§pop();
                                 }
                                 §§push(_loc7_);
                                 if(!_loc9_)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc9_)
                                    {
                                       break loop4;
                                    }
                                    break loop3;
                                 }
                                 §§goto(addr0151);
                              }
                              §§goto(addr0168);
                           }
                           addr0151:
                           §§push(§§pop() & §§pop());
                           §§push(0);
                           break;
                        }
                        §§push(§§pop() == §§pop());
                        if(!_loc9_)
                        {
                           addr0168:
                           §§push(!§§pop());
                           if(_loc10_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc6_ = §§pop();
                        }
                        else
                        {
                           addr017d:
                           §§push(Boolean(§§pop()));
                           if(!_loc10_)
                           {
                              break;
                           }
                           _loc6_ = §§pop();
                        }
                        §§push(_loc6_);
                        break;
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(!_loc10_)
                     {
                        break loop2;
                     }
                     §§goto(addr017d);
                  }
                  break loop2;
               }
               return true;
            }
         }
         return false;
      }
      
      public function §%X§(param1:§ 7§) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as §#!7§;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§#!7§> = §6"§;
         if(!_loc6_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               while(true)
               {
                  if(_loc5_)
                  {
                     _loc2_++;
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(false);
                  if(_loc5_)
                  {
                     if(_loc4_.target != null)
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr00ae:
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        _loc4_.§"3§.apply(_loc4_.target,_loc4_.§&!$§,scale);
                     }
                  }
                  continue loop0;
               }
               §§push(_loc4_.target.§@7§() == param1.§@7§());
               if(!_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr00ae);
            }
         }
      }
      
      public function apply() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §#!7§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§#!7§> = §6"§;
         if(_loc5_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(_loc5_)
               {
                  _loc1_++;
                  if(_loc4_)
                  {
                     continue;
                  }
               }
               _loc3_.§"3§.apply(_loc3_.target,_loc3_.§&!$§,scale);
            }
         }
      }
      
      public function add(param1:§ 7§, param2:§0S§, param3:§ 7§ = undefined) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc5_:* = 0;
         var _loc7_:* = null as §#!7§;
         var _loc8_:* = false;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         §§push(false);
         if(!_loc12_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc12_)
         {
            §§push(0);
            if(!_loc12_)
            {
               §§push(int(§§pop()));
            }
            _loc5_ = §§pop();
         }
         var _loc6_:Vector.<§#!7§> = §6"§;
         loop16:
         while(true)
         {
            if(_loc11_)
            {
               loop0:
               while(_loc5_ < int(_loc6_.length))
               {
                  _loc7_ = _loc6_[_loc5_];
                  while(true)
                  {
                     if(!_loc12_)
                     {
                        _loc5_++;
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     §§push(false);
                     if(_loc11_)
                     {
                        if(_loc7_.target != null)
                        {
                           if(!_loc12_)
                           {
                              §§pop();
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(_loc7_.target.§@7§() == param1.§@7§());
                              if(_loc11_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     continue loop0;
                  }
                  param1 = _loc7_.target;
                  _loc4_ = true;
                  if(_loc11_)
                  {
                     break;
                  }
                  break loop16;
               }
            }
            loop18:
            while(true)
            {
               §§push(_loc4_);
               if(!_loc12_)
               {
                  if(!§§pop())
                  {
                     break;
                  }
                  §§push(int(§6"§.length));
                  §§push(1);
                  if(_loc11_)
                  {
                     _loc5_ = int(§§pop() - §§pop());
                     if(_loc11_)
                     {
                        break loop16;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc10_ & 0xF0);
                        loop4:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           if(_loc11_)
                           {
                              _loc10_ = §§pop();
                              loop19:
                              while(true)
                              {
                                 if(!_loc12_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() & _loc10_);
                                          if(!_loc12_)
                                          {
                                             while(true)
                                             {
                                                §§push(0);
                                                while(true)
                                                {
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() != §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc11_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      _loc8_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         break loop20;
                                                      }
                                                      addr0203:
                                                   }
                                                   addr0205:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §6"§.splice(_loc5_,1);
                                                         if(!_loc11_)
                                                         {
                                                            break loop18;
                                                         }
                                                      }
                                                      addr021d:
                                                      while(true)
                                                      {
                                                         _loc5_--;
                                                         break loop16;
                                                      }
                                                   }
                                                   break loop18;
                                                }
                                                break loop18;
                                             }
                                             break loop18;
                                             addr01df:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() < 0)
                                             {
                                                break loop18;
                                             }
                                             loop21:
                                             while(true)
                                             {
                                                if(§6"§[_loc5_].target == param1)
                                                {
                                                   _loc9_ = int(§6"§[_loc5_].§"3§.mask);
                                                   _loc10_ = int(param2.mask);
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(_loc11_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!_loc12_)
                                                            {
                                                               §§push(240);
                                                               if(_loc12_)
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
                                                            break;
                                                         }
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§pop();
                                                      if(_loc11_)
                                                      {
                                                         §§push(_loc10_);
                                                         if(!_loc11_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§pop() & 0xF0);
                                                         §§push(0);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc12_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc11_)
                                                               {
                                                                  break loop22;
                                                               }
                                                               §§goto(addr0205);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr0201:
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     break loop21;
                                                                  }
                                                               }
                                                               addr0200:
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         §§push(240);
                                                         if(_loc12_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(§§pop() & §§pop());
                                                         if(!_loc12_)
                                                         {
                                                            break loop19;
                                                         }
                                                         §§goto(addr01df);
                                                      }
                                                      addr01a2:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(!_loc11_)
                                                      {
                                                         break loop21;
                                                      }
                                                      §§goto(addr01a2);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(false);
                                                   if(_loc11_)
                                                   {
                                                      §§goto(addr0200);
                                                   }
                                                }
                                                §§goto(addr0201);
                                             }
                                             §§goto(addr0203);
                                          }
                                          break loop18;
                                          addr0221:
                                       }
                                       §§goto(addr01df);
                                    }
                                    break loop18;
                                 }
                                 §§goto(addr021d);
                              }
                              _loc9_ = §§pop();
                              continue loop3;
                           }
                           §§goto(addr0221);
                        }
                        break loop18;
                     }
                     break;
                  }
                  §§goto(addr0188);
               }
               §§goto(addr0200);
            }
            break loop7;
         }
         while(true)
         {
            §§goto(addr0221);
            _loc5_--;
         }
         break loop7;
      }
   }
}

