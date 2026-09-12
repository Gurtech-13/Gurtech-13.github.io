package §6[§
{
   import §!!$§.§ 6§;
   import §"§.§5O§;
   import §%!Z§.§&!S§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §&%§.§@w§;
   import §>T§.§[C§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxe.ds.§,!C§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §2!X§ extends §=!X§ implements §+<§
   {
      
      public static var §?Y§:§2!X§;
      
      public var §8!K§:int;
      
      public var §5!?§:Vector.<§@w§>;
      
      public var §?!_§:§&!K§;
      
      public function §2!X§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §@!A§() : §2!X§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §2!X§;
         if(!_loc2_)
         {
            if(§2!X§.§?Y§ != null)
            {
               return §2!X§.§?Y§;
            }
         }
         return §2!X§.§?Y§ = new §2!X§();
      }
      
      override public function §!!?§(param1:§&!K§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §&h§();
         }
      }
      
      override public function §04§(param1:§&!K§, param2:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as Vector.<§@w§>;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  if(param1.§ Z§(param2) == null)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     §?!_§ = param1;
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
               }
               §8!K§ = param2;
               break loop0;
            }
            return;
         }
         _loc3_ = new Vector.<§@w§>(0,false);
         §5!?§ = _loc3_;
         §§push(false);
         if(!_loc5_)
         {
            if(param2 >= 0)
            {
               while(true)
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     §§push(param2);
                     §§push(param1.§@!3§());
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     §§push(§§pop() <= §§pop());
                     if(_loc5_)
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
            §1!H§(param2);
            §§push(§5!?§);
            §§push(§@w§.§"!_§);
            if(_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().sort(§§pop());
            if(_loc5_)
            {
            }
            break loop1;
         }
         §5!?§.push(new §@w§(param2,param1.§"!=§(param2)));
         break loop1;
      }
      
      override public function §9b§(param1:§&!K§, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§@w§>;
         var _loc7_:* = null as §@w§;
         var _loc8_:* = false;
         var _loc9_:* = 0;
         var _loc10_:* = null as Vector.<§@w§>;
         var _loc11_:* = null as §@w§;
         var _loc12_:* = null;
         var _loc13_:* = null as §>f§;
         var _loc14_:* = null as §,!C§;
         var _loc15_:* = null as §[C§;
         var _loc16_:* = 0;
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               if(_loc18_)
               {
                  §§push(false);
                  if(param1 == null)
                  {
                     break;
                  }
                  if(!_loc18_)
                  {
                     break loop6;
                  }
                  §§pop();
               }
               while(true)
               {
                  while(true)
                  {
                     §§push(§5!?§ == null);
                     if(!_loc17_)
                     {
                        §§push(!§§pop());
                        break loop7;
                     }
                     §§goto(addr015b);
                  }
                  §§goto(addr0160);
               }
               §§goto(addr0163);
            }
            if(!§§pop())
            {
               break loop13;
            }
            if(!_loc18_)
            {
               continue loop9;
            }
            loop27:
            while(true)
            {
               loop28:
               while(true)
               {
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc17_)
                     {
                        §§push(param1.§5k§);
                        if(_loc17_)
                        {
                           break;
                        }
                        §§push(int(§§pop() % §§pop()));
                        §§push(§8!K§);
                        §§push(param1.§5k§);
                        if(_loc17_)
                        {
                           break loop28;
                        }
                        §§push(int(§§pop() - int(§§pop() % §§pop())));
                        if(!_loc18_)
                        {
                           break loop25;
                        }
                        _loc3_ = §§pop();
                        if(_loc17_)
                        {
                           continue loop9;
                        }
                        _loc4_ = int(Math.floor(param2 / param1.§5k§)) - int(Math.floor(§8!K§ / param1.§5k§));
                        if(!_loc18_)
                        {
                           break loop27;
                        }
                        §§push(§5!?§[0].§+!=§);
                        if(!_loc18_)
                        {
                           break loop25;
                        }
                     }
                     §§push(_loc4_);
                     §§push(param1.§5k§);
                     break loop28;
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(false);
                     if(!_loc17_)
                     {
                        while(true)
                        {
                           if(int(§5!?§.length) == 1)
                           {
                              break loop6;
                           }
                           §§goto(addr015a);
                        }
                        §§goto(addr015b);
                     }
                     §§goto(addr0153);
                  }
                  §§goto(addr0160);
               }
               §§push(§§pop() * §§pop());
               if(_loc18_)
               {
                  §§push(§§pop() + §§pop());
                  §§push(0);
               }
               break loop29;
            }
            §§goto(addr0139);
         }
         §§pop();
         addr0139:
         while(true)
         {
            §§push(§5!?§[0].§6!Y§.§#b§);
            if(!_loc17_)
            {
               addr0153:
               §§push(Boolean(§§pop()));
               if(_loc17_)
               {
                  break;
               }
            }
            addr015a:
            §§push(!§§pop());
            break;
         }
         addr015b:
         if(§§pop())
         {
            return;
         }
         addr0163:
         _loc5_ = 0;
         _loc6_ = §5!?§;
         while(true)
         {
            loop10:
            while(true)
            {
               if(_loc18_)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc17_)
                     {
                        break loop10;
                     }
                     if(§§pop() < int(_loc6_.length))
                     {
                        _loc7_ = _loc6_[_loc5_];
                        if(_loc18_)
                        {
                           _loc5_++;
                           if(_loc17_)
                           {
                              continue;
                           }
                        }
                        _loc7_.§3E§ = false;
                        continue;
                     }
                     if(!_loc18_)
                     {
                        continue loop11;
                     }
                  }
               }
               §§push(0);
               if(!_loc17_)
               {
                  §§push(int(§§pop()));
               }
               break;
            }
            _loc5_ = §§pop();
            continue loop11;
         }
         _loc6_ = §5!?§;
         while(true)
         {
            loop12:
            while(true)
            {
               if(_loc18_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc18_)
                     {
                        break loop12;
                     }
                     if(§§pop() >= int(_loc6_.length))
                     {
                        if(_loc17_)
                        {
                           continue loop13;
                        }
                     }
                     else
                     {
                        _loc7_ = _loc6_[_loc5_];
                        if(_loc18_)
                        {
                           _loc5_++;
                           while(true)
                           {
                              if(!_loc17_)
                              {
                                 §§push(_loc7_);
                                 §§push(param1.§=F§.§6!,§(_loc7_.§+!=§,_loc3_,0,_loc4_));
                                 if(_loc18_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 §§pop().§+1§ = §§pop();
                                 if(_loc18_)
                                 {
                                    §§push(false);
                                    if(_loc18_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§push(0);
                              if(!_loc17_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc9_ = §§pop();
                              break;
                           }
                        }
                        _loc10_ = §5!?§;
                        loop24:
                        while(true)
                        {
                           if(!_loc17_)
                           {
                              while(_loc9_ < int(_loc10_.length))
                              {
                                 _loc11_ = _loc10_[_loc9_];
                                 if(_loc18_)
                                 {
                                    _loc9_++;
                                    if(_loc11_.§+!=§ != _loc7_.§+1§)
                                    {
                                       continue;
                                    }
                                    §§push(true);
                                    if(_loc18_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    _loc8_ = §§pop();
                                    if(!_loc18_)
                                    {
                                       break loop24;
                                    }
                                 }
                                 _loc11_.§3E§ = true;
                                 if(!_loc17_)
                                 {
                                    break;
                                 }
                                 break loop24;
                              }
                           }
                           §§push(false);
                           §§push(_loc8_);
                           if(!_loc17_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§pop();
                              break;
                           }
                           addr02ca:
                           if(§§pop())
                           {
                              return;
                           }
                           continue loop1;
                        }
                        §§goto(addr02ca);
                     }
                  }
               }
               §§push(0);
               if(!_loc17_)
               {
                  break;
               }
               addr02f0:
               _loc5_ = §§pop();
               continue loop13;
            }
            §§goto(addr02f0);
         }
         _loc6_ = §5!?§;
         loop13:
         while(true)
         {
            loop14:
            while(true)
            {
               if(!_loc17_)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!_loc18_)
                     {
                        break;
                     }
                     while(true)
                     {
                        loop16:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(int(_loc6_.length));
                              if(!_loc17_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    _loc7_ = _loc6_[_loc5_];
                                    loop19:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc18_)
                                          {
                                             _loc5_++;
                                             if(_loc17_)
                                             {
                                                break;
                                             }
                                             §§push(_loc7_.§3E§);
                                             if(_loc18_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(!§§pop())
                                             {
                                                break loop19;
                                             }
                                             if(!_loc17_)
                                             {
                                                §§push(_loc7_.§+!=§);
                                                if(!_loc17_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                _loc9_ = §§pop();
                                                if(_loc17_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          _loc12_ = new §5O§(param1.§,!_§.§"2§);
                                          if(_loc18_)
                                          {
                                             while(true)
                                             {
                                                if(!Boolean(_loc12_.hasNext()))
                                                {
                                                   break loop19;
                                                }
                                                _loc13_ = _loc12_.next();
                                                _loc14_ = param1.§5!W§.get(_loc13_);
                                                if(_loc18_)
                                                {
                                                   loop21:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(_loc18_)
                                                         {
                                                            if(_loc14_ == null)
                                                            {
                                                               break loop21;
                                                            }
                                                            if(_loc17_)
                                                            {
                                                               break loop21;
                                                            }
                                                            §§pop();
                                                            if(!_loc18_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc14_.exists(_loc9_));
                                                            if(!_loc18_)
                                                            {
                                                               break loop21;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc18_)
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
                                                      break loop22;
                                                   }
                                                   continue;
                                                }
                                                _loc15_ = _loc14_.get(_loc9_);
                                                if(_loc18_)
                                                {
                                                   _loc15_.§>§();
                                                   if(!_loc17_)
                                                   {
                                                      param1.§^$§.§0a§(_loc15_);
                                                      if(!_loc17_)
                                                      {
                                                         _loc14_.remove(_loc9_);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          break loop19;
                                       }
                                       _loc7_.§+!=§ = _loc7_.§+1§;
                                       continue loop3;
                                    }
                                    param1.§`!>§(_loc7_.§+1§,_loc7_.§6!Y§);
                                    if(!_loc17_)
                                    {
                                       break loop20;
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    if(_loc18_)
                                    {
                                       param1.§^$§.§6t§ = 0;
                                       if(_loc17_)
                                       {
                                          break;
                                       }
                                       §§push(param1.§'b§());
                                       if(_loc18_)
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr04c4);
                                    }
                                    §§goto(addr04c6);
                                 }
                                 _loc6_ = §5!?§;
                                 if(_loc17_)
                                 {
                                    break loop14;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc16_);
                                    if(_loc18_)
                                    {
                                       §§push(int(_loc6_.length));
                                       if(_loc18_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             _loc7_ = _loc6_[_loc16_];
                                             if(!_loc17_)
                                             {
                                                _loc16_++;
                                                if(!_loc18_)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§push(_loc7_);
                                             §§push(_loc7_.§+!=§);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() - _loc9_);
                                             }
                                             §§pop().§+!=§ = §§pop();
                                             if(_loc18_)
                                             {
                                                §§push(_loc7_);
                                                §§push(_loc7_.§+1§);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop() - _loc9_);
                                                }
                                                §§pop().§+1§ = §§pop();
                                             }
                                             continue;
                                          }
                                          if(!_loc18_)
                                          {
                                             break loop14;
                                          }
                                          §§push(param2);
                                          if(!_loc18_)
                                          {
                                             break;
                                          }
                                          §§push(_loc9_);
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                       addr0571:
                                       param2 = §§pop();
                                       break loop14;
                                    }
                                    break;
                                 }
                                 §§goto(addr0571);
                                 §§push(int(§§pop()));
                              }
                              addr0493:
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc17_)
                                 {
                                    param1.§-E§();
                                 }
                                 §§push(int(Math.floor(_loc5_ / param1.§5k§)));
                                 break loop16;
                              }
                              break loop14;
                           }
                           §§goto(addr04c9);
                        }
                        §§push(param1.§5k§);
                        break;
                     }
                     addr04c9:
                     §§push(§§pop() * §§pop());
                     if(!_loc17_)
                     {
                        addr04bc:
                        §§push(int(§§pop()));
                        if(!_loc17_)
                        {
                           addr04c4:
                           _loc9_ = §§pop();
                           addr04c6:
                           §§push(0);
                        }
                     }
                     _loc16_ = §§pop();
                     if(!_loc18_)
                     {
                        break loop13;
                     }
                  }
                  §§push(int(§§pop()));
                  if(!_loc17_)
                  {
                     §§push(int(§§pop()));
                     if(_loc18_)
                     {
                        _loc5_ = §§pop();
                        §§push(_loc5_);
                        if(!_loc18_)
                        {
                           break loop16;
                        }
                        §§push(param1.§5k§);
                        if(_loc17_)
                        {
                           break loop15;
                        }
                        §§goto(addr0493);
                     }
                     §§goto(addr04c9);
                  }
                  §§goto(addr04bc);
               }
               §§goto(addr04d2);
            }
            §8!K§ = param2;
            break;
         }
         return;
         addr0160:
      }
      
      override public function §&h§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §8!K§ = 0;
               if(!_loc1_)
               {
                  break;
               }
            }
            §?!_§ = null;
            if(_loc1_)
            {
               §5!?§ = null;
            }
            break;
         }
      }
      
      public function §1!H§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:* = null as §@w§;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§@w§> = §5!?§;
         if(_loc7_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(_loc7_)
               {
                  _loc2_++;
                  if(_loc7_)
                  {
                     if(_loc4_.§+!=§ != param1)
                     {
                        continue;
                     }
                  }
               }
               return;
            }
         }
         var _loc5_:§>f§ = §?!_§.§"!=§(param1);
         if(_loc5_ == null)
         {
            return;
         }
         §5!?§.push(new §@w§(param1,_loc5_));
         loop1:
         while(true)
         {
            if(!_loc6_)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(§?!_§.§=F§.§6!,§(param1,1,0,0));
                     if(_loc7_)
                     {
                        _loc2_ = int(§§pop());
                        §1!H§(_loc2_);
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(§?!_§.§=F§.§6!,§(param1,-1,0,0));
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        §§push(int(§§pop()));
                     }
                     _loc2_ = int(§§pop());
                     if(!_loc6_)
                     {
                        §1!H§(_loc2_);
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(param1);
                           §§push(§?!_§.§5k§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc6_)
                              {
                                 §§push(int(§§pop()));
                                 break loop2;
                              }
                              §§goto(addr0175);
                           }
                           §§goto(addr016a);
                        }
                        §§goto(addr0174);
                     }
                     §§goto(addr0177);
                  }
                  §1!H§(_loc2_);
                  if(!_loc6_)
                  {
                     §§goto(addr015a);
                  }
                  §§goto(addr0174);
               }
               _loc2_ = §§pop();
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  §§push(§?!_§.§@!3§());
                  if(_loc7_)
                  {
                     §§push(int(§§pop()));
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     if(§§pop() <= §§pop())
                     {
                        break loop3;
                     }
                     addr015a:
                     §§push(param1);
                     §§push(§?!_§.§5k§);
                     if(_loc7_)
                     {
                        break loop4;
                     }
                     addr0177:
                     if(§§pop() < §§pop())
                     {
                        break loop1;
                     }
                  }
                  addr0174:
                  addr0175:
                  §§goto(addr0177);
               }
               addr016a:
               §§push(§§pop() - §§pop());
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
               §§goto(addr0174);
            }
            §1!H§(_loc2_);
            break;
         }
      }
   }
}

