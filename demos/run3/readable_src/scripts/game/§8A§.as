package game
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §6!Q§.§]u§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.menu.§=!>§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class §8A§ implements §+<§
   {
      
      public static var §?Y§:§8A§;
      
      public function §8A§()
      {
      }
      
      public static function §@!A§() : §8A§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §8A§;
         if(_loc2_)
         {
            if(§8A§.§?Y§ != null)
            {
               return §8A§.§?Y§;
            }
         }
         return §8A§.§?Y§ = new §8A§();
      }
      
      public function §1!R§(param1:String, param2:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(Save.§@!A§());
            §§push("editorData");
            if(_loc3_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
            }
            §§push(param2);
            break;
         }
         §§pop().§1!R§(§§pop(),§§pop());
         if(_loc3_)
         {
            if(param2 != null)
            {
               if(!_loc4_)
               {
                  Save.§@!A§().§1!R§("editorLastSaved",param1);
               }
            }
         }
      }
      
      public function §8!%§(param1:String) : String
      {
         return Save.§@!A§().get("editorLastSaved",param1);
      }
      
      public function §`e§(param1:String, param2:String = undefined) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(Save.§@!A§());
            §§push("editorData");
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
               }
            }
            §§push(param2);
            break;
         }
         return §§pop().get(§§pop(),§§pop());
      }
      
      public function §?+§(param1:String, param2:String) : int
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc9_:* = 0;
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:int = int(param1.length);
         var _loc7_:int = int(param2.length);
         while(true)
         {
            if(_loc10_)
            {
               §§push(_loc6_);
               if(!_loc10_)
               {
                  break;
               }
               if(§§pop() >= _loc7_)
               {
                  §§push(_loc7_);
                  if(!_loc11_)
                  {
                     break;
                  }
                  §§goto(addr0065);
               }
            }
            §§push(_loc6_);
            if(_loc11_)
            {
            }
            break;
         }
         addr0065:
         var _loc8_:* = §§pop();
         loop2:
         while(true)
         {
            if(_loc10_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     break loop2;
                  }
                  if(§§pop() < _loc8_)
                  {
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        _loc5_++;
                        §§push(int(§§pop()));
                     }
                     _loc9_ = §§pop();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    §§push(param1);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(_loc9_);
                                    if(!_loc10_)
                                    {
                                       break loop5;
                                    }
                                    §§push(int(§§pop().charCodeAt(§§pop())));
                                    if(_loc11_)
                                    {
                                       break loop4;
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc11_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§push(param2);
                                 break;
                              }
                              §§push(_loc9_);
                              break;
                           }
                           §§push(int(§§pop().charCodeAt(§§pop())));
                           if(!_loc10_)
                           {
                              break;
                           }
                           _loc4_ = §§pop();
                           if(!_loc11_)
                           {
                              break loop3;
                           }
                           §§goto(addr00e6);
                        }
                        §§push(_loc4_);
                        if(!_loc11_)
                        {
                           if(§§pop() == §§pop())
                           {
                              continue loop0;
                           }
                           addr00e6:
                           §§push(_loc3_);
                           §§push(_loc4_);
                        }
                        return §§pop() - §§pop();
                     }
                     §§push(_loc3_);
                     break loop4;
                  }
               }
            }
            return param1.length - param2.length;
         }
         return §§pop();
      }
      
      public function §9q§(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(Save.§@!A§());
            §§push("editorData");
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         §§push(§§pop().exists(§§pop()));
         if(_loc3_)
         {
            return Boolean(§§pop());
         }
      }
      
      public function §`!4§() : void
      {
         Save.§@!A§().§1!R§("editorLastSaved",null);
      }
      
      public function § !0§(param1:Boolean) : Vector.<String>
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc4_:* = null as String;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         while(true)
         {
            §§push(Save.§@!A§().§;2§());
            if(!_loc12_)
            {
               §§push(§§pop());
               if(_loc12_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<String> = Vector.<String>(_loc2_);
         var _loc5_:int = int("editorData".length);
         §§push(0);
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(int(_loc3_.length));
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(_loc12_)
            {
               break;
            }
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc7_);
                              if(_loc13_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    _loc6_ = 0;
                                    §§push(0);
                                    if(_loc12_)
                                    {
                                       break loop12;
                                    }
                                    _loc7_ = §§pop();
                                    §§push(_loc3_.length);
                                    if(!_loc13_)
                                    {
                                       break loop11;
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc13_)
                                    {
                                       break loop10;
                                    }
                                    _loc8_ = §§pop();
                                    if(!_loc13_)
                                    {
                                       break loop8;
                                    }
                                    addr01d0:
                                    §§push(_loc7_);
                                    §§push(_loc8_);
                                    if(!_loc13_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 else
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
                                             §§push(_loc6_++);
                                             if(_loc13_)
                                             {
                                                _loc8_ = §§pop();
                                                §§push(_loc3_[_loc8_]);
                                                if(_loc13_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      _loc4_ = §§pop();
                                                      §§push(_loc4_);
                                                      if(_loc13_)
                                                      {
                                                         break;
                                                      }
                                                      break loop17;
                                                   }
                                                }
                                                if(§§pop().length <= _loc5_)
                                                {
                                                   _loc3_[_loc8_] = null;
                                                   continue loop0;
                                                }
                                                §§push(0);
                                                if(_loc12_)
                                                {
                                                   break loop16;
                                                }
                                                _loc9_ = int(§§pop());
                                                if(!_loc13_)
                                                {
                                                   break loop15;
                                                }
                                                §§push(_loc5_);
                                             }
                                             §§push(int(§§pop()));
                                             break loop16;
                                          }
                                          §§goto(addr00fd);
                                       }
                                       _loc10_ = §§pop();
                                       §§goto(addr012b);
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr00fd:
                                       while(§§pop().charCodeAt(_loc11_) == "editorData".charCodeAt(_loc11_))
                                       {
                                          while(_loc9_ < _loc10_)
                                          {
                                             §§push(_loc9_++);
                                             if(!_loc12_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc11_ = §§pop();
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop0;
                                       }
                                       _loc3_[_loc8_] = null;
                                       continue loop0;
                                    }
                                 }
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break;
                              }
                              §§push(_loc7_);
                              if(_loc13_)
                              {
                                 _loc7_++;
                                 if(!_loc12_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc9_ = §§pop();
                              if(!_loc12_)
                              {
                                 §§push(_loc3_[_loc9_]);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop());
                                 }
                                 if(§§pop() != null)
                                 {
                                    if(_loc13_)
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc6_);
                                       §§push(_loc3_[_loc9_]);
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§pop()[§§pop()] = §§pop();
                                       if(!_loc12_)
                                       {
                                          addr01ce:
                                          _loc6_++;
                                       }
                                       §§goto(addr01d0);
                                    }
                                    §§goto(addr01ce);
                                 }
                                 §§goto(addr01d0);
                              }
                              §§goto(addr01ce);
                           }
                           _loc3_.length = _loc6_;
                           §§push(0);
                           if(_loc13_)
                           {
                              break;
                           }
                           §§goto(addr01f3);
                        }
                        §§push(int(§§pop()));
                        break loop0;
                     }
                     addr01f3:
                     §§push(int(§§pop()));
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc7_ = §§pop();
                     while(true)
                     {
                        if(!_loc12_)
                        {
                           §§goto(addr0251);
                        }
                        §§goto(addr025f);
                     }
                     §§goto(addr0264);
                  }
                  §§goto(addr0253);
               }
               return _loc3_;
            }
            addr0255:
            if(§§pop() < §§pop())
            {
               §§push(_loc6_);
               if(_loc13_)
               {
                  _loc6_++;
                  loop9:
                  while(true)
                  {
                     if(!_loc12_)
                     {
                        addr0219:
                        §§push(int(§§pop()));
                     }
                     _loc8_ = §§pop();
                     if(_loc13_)
                     {
                        §§push(_loc3_);
                        §§push(_loc8_);
                        §§push(_loc3_[_loc8_]);
                        if(!_loc12_)
                        {
                           §§push(§§pop());
                           if(!_loc12_)
                           {
                              addr0247:
                              §§push(§§pop().substr(_loc5_));
                           }
                           §§pop()[§§pop()] = §§pop();
                           while(true)
                           {
                              §§push(_loc6_);
                              addr0253:
                              while(true)
                              {
                                 §§goto(addr0255);
                              }
                              break loop9;
                           }
                           addr0251:
                        }
                        §§goto(addr0247);
                     }
                     §§goto(addr0251);
                  }
                  addr0259:
                  if(!_loc12_)
                  {
                     addr025f:
                     if(!param1)
                     {
                        break loop8;
                     }
                  }
                  addr0264:
                  §§push(_loc3_);
                  §§push(§?+§);
                  if(_loc13_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().sort(§§pop());
                  break loop8;
               }
               §§goto(addr0219);
            }
            §§goto(addr0259);
         }
         _loc6_ = §§pop();
         §§push(_loc3_.length);
         break loop11;
      }
   }
}

