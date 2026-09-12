package com.player03.run3.level
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.analytics.§8!3§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §59§
   {
      
      public static var §-6§:Boolean;
      
      public static var §6f§:EReg;
      
      public static var §;!L§:EReg;
      
      public function §59§()
      {
      }
      
      public static function §,<§(param1:String) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         if(_loc3_)
         {
            while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop().substr(0,3));
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §§push("id-");
               if(!_loc4_)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(param1);
                     break;
                  }
                  if(!_loc4_)
                  {
                     _loc2_ = 3;
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(-1);
                           if(!_loc4_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(-1);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr009c);
                                    }
                                    break;
                                 }
                                 §§goto(addr00b3);
                              }
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                              §§push(4);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc2_ = §§pop();
                  }
                  §§goto(addr00b3);
               }
               addr0063:
               §§push(int(§§pop().indexOf(§§pop())));
               if(_loc4_)
               {
                  addr009c:
                  return §§pop();
               }
               _loc2_ = §§pop();
               if(_loc3_)
               {
                  continue loop1;
               }
            }
            §§goto(addr0063);
         }
         addr00b3:
         §§push(Std);
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop().substr(_loc2_));
         }
         return §§pop().parseInt(§§pop());
      }
      
      public static function §`!S§(param1:String, param2:String) : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           §§push(§§pop().substr(0,param2.length + 1));
                           if(!_loc6_)
                           {
                              break loop0;
                           }
                           §§push(param2 + "-");
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(-1);
                                 if(_loc5_)
                                 {
                                    break loop3;
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc5_)
                                 {
                                    §§goto(addr00c4);
                                 }
                              }
                              §§goto(addr00c7);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        §§push("|" + param2);
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr0085:
                        addr009b:
                        §§push(§§pop() + "-");
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                        §§push(int(§§pop().indexOf(§§pop())));
                        if(_loc6_)
                        {
                           break loop3;
                        }
                        continue loop4;
                     }
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        §§goto(addr0085);
                     }
                     §§goto(addr009b);
                  }
                  _loc3_ = int(§§pop());
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     continue loop4;
                  }
               }
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(-1);
                     if(!_loc5_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr00c4);
                           }
                           break;
                        }
                        addr00c7:
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           break loop4;
                        }
                        §§push(param2.length + 2);
                     }
                     _loc3_ = int(§§pop() + §§pop());
                     break;
                  }
                  §§push(param1);
                  break loop0;
               }
               §§goto(addr00e2);
            }
            addr00e2:
            var _loc4_:int = int(§§pop().indexOf("|",_loc3_));
            while(true)
            {
               if(!_loc5_)
               {
                  if(_loc4_ != -1)
                  {
                     §§push(§59§);
                     §§push(param1);
                     if(!_loc5_)
                     {
                        §§push(§§pop().substring(_loc3_,_loc4_));
                     }
                     §§push(§§pop().§4!&§(§§pop()));
                     if(_loc6_)
                     {
                        break;
                     }
                     §§goto(addr0144);
                  }
               }
               §§push(§59§);
               §§push(param1);
               if(_loc6_)
               {
                  §§push(§§pop().substr(_loc3_));
               }
               §§push(§§pop().§4!&§(§§pop()));
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               break;
            }
            addr0144:
            return §§pop();
         }
         addr00c4:
         return "";
      }
      
      public static function §<!S§(param1:String, param2:String, param3:String) : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(param1);
                     if(!_loc7_)
                     {
                        §§push(§§pop().substr(0,param2.length + 1));
                        if(_loc7_)
                        {
                           break loop0;
                        }
                     }
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(param2 + "-");
                           if(_loc6_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          _loc4_ = -1;
                                          if(_loc6_)
                                          {
                                             addr0104:
                                             addr0106:
                                             addr010c:
                                             §§push(_loc4_ + (param2.length + 2));
                                             if(!_loc7_)
                                             {
                                                _loc4_ = §§pop();
                                                §§push(param1);
                                                break loop0;
                                             }
                                             break loop2;
                                          }
                                       }
                                       break loop4;
                                    }
                                    §§push(param1);
                                    if(_loc7_)
                                    {
                                       break loop0;
                                    }
                                    §§push("|");
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + param2);
                                 }
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + "-");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop());
                                       break;
                                    }
                                 }
                                 break loop1;
                              }
                           }
                           _loc4_ = int(§§pop().indexOf(§§pop()));
                           if(_loc6_)
                           {
                              break;
                           }
                           break loop3;
                        }
                        loop8:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 §§push(-1);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       break loop3;
                                    }
                                    break loop8;
                                 }
                                 §§goto(addr0104);
                              }
                              §§goto(addr0106);
                           }
                           §§goto(addr010c);
                        }
                     }
                     §§push(param1);
                     if(_loc6_)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop() + "|");
                              §§push(param2);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + "-");
                                    if(!_loc6_)
                                    {
                                       break loop5;
                                    }
                                 }
                                 §§push(param3);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 break;
                              }
                              break loop5;
                           }
                           return §§pop();
                        }
                        return §§pop();
                     }
                     break loop0;
                  }
                  break loop8;
               }
               var _loc5_:* = §§pop();
               loop10:
               while(true)
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(_loc5_ != -1)
                        {
                           §§push(param1);
                           §§push(0);
                           break;
                        }
                     }
                     §§push(param1);
                     if(_loc6_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           §§push(_loc4_);
                           if(!_loc7_)
                           {
                              §§push(§§pop().substr(§§pop(),§§pop()));
                              §§push(param3);
                              if(_loc6_)
                              {
                                 return §§pop() + §§pop();
                              }
                              addr018a:
                              §§push(§§pop().substr(_loc5_));
                           }
                           else
                           {
                              addr0172:
                              §§push(§§pop().substr(§§pop(),§§pop()));
                              §§push(param3);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 §§push(param1);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr018a);
                                 }
                              }
                           }
                           §§push(§§pop() + §§pop());
                           break loop10;
                        }
                        break;
                     }
                     break loop10;
                  }
                  §§goto(addr0172);
               }
               return §§pop();
            }
            §§push(int(§§pop().indexOf(§§pop(),_loc4_)));
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            break loop2;
         }
         §§push("|");
         break loop1;
      }
      
      public static function §4!&§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(true);
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop1:
         while(true)
         {
            if(!_loc3_)
            {
               loop0:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                        }
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(§59§.§6f§.match(param1));
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                              break loop2;
                           }
                           break;
                        }
                        break loop0;
                     }
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           break loop0;
                        }
                     }
                     else
                     {
                        §§push(§59§);
                        §§push(§59§.§6f§.matched(2));
                        if(_loc4_)
                        {
                           §§push(§§pop());
                        }
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§"W§(§§pop()));
                           if(_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           _loc2_ = §§pop();
                           if(!_loc3_)
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§59§.§6f§.matched(1));
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       if(§§pop() == "unless")
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(_loc2_);
                                          if(!_loc3_)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc3_)
                                             {
                                                break loop4;
                                             }
                                          }
                                          _loc2_ = §§pop();
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       §§push(§59§.§6f§.§&f§());
                                       if(_loc3_)
                                       {
                                          break loop5;
                                       }
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    §§push(§59§.§6f§.matchedRight());
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       break loop5;
                                    }
                                    break;
                                 }
                                 param1 = §§pop();
                                 continue loop2;
                              }
                              §§push(§§pop());
                              break loop6;
                           }
                           continue loop2;
                        }
                        §§goto(addr00a3);
                     }
                  }
                  if(!§§pop())
                  {
                     §§push(null);
                     break loop1;
                  }
               }
               §§push(_loc2_);
               break loop2;
            }
            §§push(param1);
            if(_loc4_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public static function §"W§(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(int(param1.indexOf(",")));
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(TunnelSection.§]d§(param1.split(",")));
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                        }
                        break loop1;
                     }
                     §§push(TunnelSection.checkCondition2(param1));
                     if(!_loc2_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  §§push(0);
                  break;
               }
               §§push(§§pop() == §§pop());
               if(_loc3_)
               {
                  break;
               }
               break loop0;
            }
            return !§§pop();
         }
         return §§pop();
      }
      
      public static function §>!^§(param1:String) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§59§.§;!L§.replace(param1,""));
         if(_loc2_)
         {
            return §§pop();
         }
      }
   }
}

