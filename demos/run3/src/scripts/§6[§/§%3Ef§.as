package §6[§
{
   import §-!!§.§-;§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §@H§.§!7§;
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   
   public class §>f§
   {
      
      public var §?l§:§=!X§;
      
      public var §>O§:String;
      
      public var §@p§:§0!E§;
      
      public var §3!6§:String;
      
      public var §,!_§:§>3§;
      
      public var §#b§:Boolean;
      
      public var §1!2§:int;
      
      public function §>f§(param1:§>3§, param2:String, param3:§0!E§, param4:String = undefined)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as Array;
         var _loc7_:* = null as String;
         §#b§ = false;
         §3!6§ = param2;
         while(true)
         {
            §§push(§§findproperty(§>O§));
            if(!_loc9_)
            {
               §§push(param4);
               if(!_loc8_)
               {
                  break;
               }
               if(§§pop() == null)
               {
                  §§push("");
                  break;
               }
            }
            §§push(param4);
            break;
         }
         §§pop().§>O§ = §§pop();
         loop3:
         while(true)
         {
            if(!_loc9_)
            {
               §@p§ = param3;
               §,!_§ = param1;
               §1!2§ = 0;
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(param4);
                     if(_loc8_)
                     {
                        if(§§pop() == null)
                        {
                           break;
                        }
                        §§push(0);
                        if(_loc8_)
                        {
                           §§push(int(§§pop()));
                           if(_loc9_)
                           {
                              break loop4;
                           }
                        }
                        _loc5_ = §§pop();
                        §§push(param4);
                     }
                     §§push(§§pop().split("~"));
                     if(!_loc9_)
                     {
                        §§push(§§pop());
                     }
                     _loc6_ = §§pop();
                     if(!_loc9_)
                     {
                        §§goto(addr0135);
                     }
                  }
                  §"c§();
                  if(!_loc8_)
                  {
                     break loop3;
                  }
               }
               loop0:
               while(true)
               {
                  if(§§pop() >= int(_loc6_.length))
                  {
                     break loop5;
                  }
                  §§push(_loc6_[_loc5_]);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                  }
                  _loc7_ = §§pop();
                  if(!_loc9_)
                  {
                     _loc5_++;
                     if(_loc8_)
                     {
                        §§push(StringTools.startsWith(_loc7_,"color-"));
                        if(_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              break loop5;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              continue loop0;
                           }
                           addr0135:
                        }
                     }
                     §§push(§§findproperty(§1!2§));
                     §§push(Std);
                     §§push(_loc7_);
                     if(!_loc9_)
                     {
                        §§push(§§pop().substr(6));
                     }
                     §§pop().§1!2§ = §§pop().parseInt(§§pop());
                  }
                  break loop5;
               }
               break loop5;
            }
            if(param3 != null)
            {
               if(!_loc9_)
               {
                  §?l§ = new §>!N§(this);
               }
            }
            break;
         }
      }
      
      public function §;§(param1:§11§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(param1);
            §§push(§,!_§);
            §§push(§"=§.§,n§[§@p§.§<T§]);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§]2§(§§pop(),§§pop(),§1!2§);
         }
      }
      
      public function §"c§() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as String;
         while(true)
         {
            §§push(§,!_§.§23§[§1!2§]);
            if(_loc4_)
            {
               §§push(int(§§pop()));
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc1_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(§@p§.§<T§ >= 0)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
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
                                             §§push(§"=§.§,n§[§@p§.§<T§]);
                                             if(!_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                §§push(_loc2_);
                                                §§push("bouncy");
                                                if(_loc4_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      §§push(int(§-;§.§+c§(_loc1_,65280,0.8)));
                                                      if(_loc4_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         break loop7;
                                                      }
                                                      break loop10;
                                                   }
                                                   §§push(_loc2_);
                                                   §§push("crumbling");
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(int(§-;§.§+c§(_loc1_,14540253,0.6)));
                                                      if(_loc4_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         break loop7;
                                                      }
                                                      break loop10;
                                                   }
                                                   break loop3;
                                                }
                                                §§push(_loc2_);
                                                §§push("glow");
                                                if(!_loc4_)
                                                {
                                                   break loop9;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop7;
                                                   }
                                                   §§push(§-;§.§+c§(_loc1_,14540253,0.2));
                                                   if(_loc4_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      if(!_loc3_)
                                                      {
                                                         _loc1_ = int(§§pop());
                                                         if(!_loc3_)
                                                         {
                                                            break loop7;
                                                         }
                                                         break loop5;
                                                      }
                                                      break loop8;
                                                   }
                                                   §§goto(addr016f);
                                                }
                                                else
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      break loop4;
                                                   }
                                                }
                                             }
                                             §§push("inverse");
                                             if(!_loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   §§push(§-;§.§+c§(_loc1_,5570645,0.8));
                                                   if(_loc4_)
                                                   {
                                                      §§push(int(uint(§§pop())));
                                                      break loop10;
                                                   }
                                                   break loop8;
                                                }
                                                §§push(_loc2_);
                                                break loop4;
                                             }
                                             break;
                                          }
                                          §§goto(addr015e);
                                       }
                                       _loc1_ = §§pop();
                                       break loop7;
                                    }
                                    §§goto(addr013f);
                                 }
                                 §§goto(addr0154);
                              }
                           }
                           §§goto(addr016e);
                        }
                        while(true)
                        {
                           §§push("nonrotating");
                           if(!_loc3_)
                           {
                              addr013f:
                              if(§§pop() == §§pop())
                              {
                                 §§push(§-;§.§>a§(_loc1_,0.7));
                                 if(!_loc3_)
                                 {
                                    addr0154:
                                    _loc1_ = int(§§pop());
                                    break;
                                 }
                                 addr016e:
                                 addr016f:
                                 _loc1_ = int(uint(§§pop()));
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                              §§push(_loc2_);
                              §§push("sticky");
                           }
                           addr015e:
                           if(§§pop() == §§pop())
                           {
                              break loop5;
                           }
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc1_ = §§pop();
                           if(!_loc3_)
                           {
                              break;
                           }
                           break loop1;
                        }
                     }
                  }
                  break loop7;
               }
               §@p§.color2 = _loc1_;
               break loop1;
            }
            return;
         }
         §@p§.§!h§();
         break loop2;
      }
      
      public function §47§(param1:int) : int
      {
         return 0;
      }
      
      public function §][§(param1:Object, param2:int) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§3!6§);
         if(!_loc3_)
         {
            §§push(§!7§);
            §§push(§!7§.§-!`§(param1.iterator()));
            if(_loc4_)
            {
               §§push(§§pop());
            }
            while(true)
            {
               §§push(§§pop().compress(§§pop(),4));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  return §>O§;
               }
            }
         }
         return §§pop();
      }
   }
}

