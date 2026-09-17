package haxeutils.math
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import flash.geom.Rectangle;
   
   public class §+L§
   {
      
      public function §+L§()
      {
      }
      
      public static function §=?§(param1:Vector.<Number>) : int
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:* = NaN;
         var _loc6_:* = 0;
         var _loc2_:* = 0;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              break loop10;
                           }
                           if(§§pop() < int(param1.length))
                           {
                              _loc4_ = param1[_loc3_];
                              if(_loc8_)
                              {
                                 _loc3_++;
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + _loc4_);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              _loc2_ = §§pop();
                              continue;
                           }
                           if(_loc7_)
                           {
                              break loop2;
                           }
                           §§push(_loc2_);
                           if(!_loc8_)
                           {
                              break loop9;
                           }
                           if(§§pop() <= 0)
                           {
                              if(_loc8_)
                              {
                                 §§push(-1);
                                 if(!_loc7_)
                                 {
                                    return §§pop();
                                 }
                                 break loop3;
                              }
                           }
                           else
                           {
                              §§push(Number(Math.random()));
                              if(!_loc8_)
                              {
                                 break loop9;
                              }
                              §§push(§§pop() * _loc2_);
                              if(_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc8_)
                                 {
                                    break loop9;
                                 }
                              }
                              _loc4_ = §§pop();
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                           }
                        }
                     }
                     §§push(0);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§goto(addr00e6);
                  }
                  §§push(int(§§pop()));
                  if(_loc8_)
                  {
                     break loop3;
                  }
                  §§goto(addr00e6);
               }
               §§goto(addr00de);
            }
            _loc3_ = §§pop();
            break;
         }
         addr00de:
         addr00e6:
         §§push(int(param1.length));
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            if(!_loc7_)
            {
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     break loop4;
                  }
                  if(§§pop() < _loc5_)
                  {
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        _loc3_++;
                        loop5:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           _loc6_ = §§pop();
                           if(_loc8_)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc8_)
                                       {
                                          §§push(param1[_loc6_]);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             break loop7;
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(_loc6_);
                                                break loop5;
                                             }
                                             continue loop1;
                                          }
                                          §§push(_loc4_);
                                          if(!_loc8_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       §§push(param1[_loc6_]);
                                       if(_loc8_)
                                       {
                                          break loop7;
                                       }
                                       break;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(!_loc7_)
                                    {
                                       break loop6;
                                    }
                                    §§goto(addr016f);
                                 }
                                 §§push(Number(§§pop()));
                                 break loop8;
                              }
                              addr016f:
                              _loc4_ = Number(§§pop());
                           }
                           continue loop1;
                        }
                     }
                     return §§pop();
                  }
               }
            }
            return -1;
         }
         return §§pop();
      }
   }
}

