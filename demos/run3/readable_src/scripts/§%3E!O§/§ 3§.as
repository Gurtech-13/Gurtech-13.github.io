package §>!O§
{
   import §0!P§.§;n§;
   import §>%§.§6D§;
   import §>%§.§6r§;
   import §>%§.§?Z§;
   import §>%§.§^!D§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   
   public class § 3§ implements §0S§
   {
      
      public var mask:int;
      
      public var §+A§:Boolean;
      
      public var §]b§:§2u§;
      
      public function § 3§(param1:§2u§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §]b§ = param1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(§§findproperty(§+A§));
               if(!_loc3_)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  if(param1 == §2u§.LEFT)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  §§pop();
               }
               §§push(param1 == §2u§.RIGHT);
               if(_loc2_)
               {
                  break loop0;
               }
               break;
            }
            §§pop().§+A§ = §§pop();
            if(!_loc3_)
            {
               switch(param1.index)
               {
                  case 0:
                     mask = 21;
                     if(_loc3_)
                     {
                     }
                     break;
                  case 1:
                     mask = 37;
                     if(_loc2_)
                     {
                     }
                     break;
                  case 2:
                     mask = 74;
                     break;
                  case 3:
                     mask = 138;
               }
            }
            return;
         }
         §§push(Boolean(§§pop()));
         break loop1;
      }
      
      public static function §&o§(param1:§2u§, param2:Object = undefined) : § 3§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(param2 == null)
            {
               if(_loc3_)
               {
                  break;
               }
               param2 = 0;
            }
            §§push(true);
            if(_loc4_)
            {
               if(param1 != §2u§.LEFT)
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(param1 == §2u§.TOP);
                     if(!_loc3_)
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
            while(true)
            {
               §§push(§§findproperty(§6r§));
               if(_loc4_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     if(param1 == §2u§.LEFT)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§pop();
               }
               §§push(param1 == §2u§.RIGHT);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            return new §§pop().§6r§(§§pop(),param2);
         }
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(§§findproperty(§?Z§));
               if(_loc4_)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(param1 == §2u§.LEFT)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break loop2;
                  }
                  §§pop();
               }
               §§push(param1 == §2u§.RIGHT);
               if(!_loc3_)
               {
                  break loop2;
               }
               break;
            }
            return new §§pop().§?Z§(§§pop(),param2);
         }
         §§push(Boolean(§§pop()));
         break loop3;
      }
      
      public static function §7_§(param1:§2u§, param2:Object = undefined) : § 3§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(true);
            if(!_loc3_)
            {
               if(param1 == §2u§.LEFT)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §§pop();
            if(!_loc3_)
            {
               §§push(param1 == §2u§.TOP);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(§§findproperty(§^!D§));
                  if(!_loc3_)
                  {
                     §§push(true);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     if(param1 == §2u§.LEFT)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§pop();
                  }
                  §§push(param1 == §2u§.RIGHT);
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  break;
               }
               return new §§pop().§^!D§(§§pop(),param2);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         if(!§§pop())
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(§§findproperty(§6D§));
                  if(_loc4_)
                  {
                     §§push(true);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(param1 == §2u§.LEFT)
                     {
                        break loop3;
                     }
                     if(!_loc4_)
                     {
                        break loop3;
                     }
                     §§pop();
                  }
                  §§push(param1 == §2u§.RIGHT);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            return new §§pop().§6D§(§§pop(),param2);
         }
         continue loop1;
      }
      
      public function §<c§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3;
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:* = NaN;
         var _loc7_:* = null as §2u§;
         var _loc8_:* = null as § 7§;
         var _loc5_:§2u§ = §]b§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc10_)
                  {
                     switch(_loc5_.index)
                     {
                        case 0:
                           §§push(param1.§[![§());
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc9_)
                                 {
                                 }
                                 break;
                              }
                              break loop0;
                           }
                           addr007a:
                           §§push(Number(§§pop()));
                           §§push(param1.§;c§());
                           if(!_loc9_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc9_)
                              {
                                 addr00ca:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc9_)
                                 {
                                    _loc4_ = Number(§§pop());
                                    break;
                                 }
                                 break loop1;
                              }
                           }
                           _loc4_ = §§pop() + §§pop();
                           if(_loc9_)
                           {
                           }
                           break;
                        case 1:
                           §§goto(addr007a);
                           §§push(param1.§[![§());
                        case 2:
                           _loc4_ = param1.§1C§();
                           if(_loc9_)
                           {
                           }
                           break;
                        case 3:
                           §§push(param1.§1C§());
                           §§push(param1.§5`§());
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc10_)
                              {
                                 break loop2;
                              }
                           }
                           §§goto(addr00ca);
                     }
                  }
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§findproperty(§<c§));
                        if(!_loc9_)
                        {
                           if(!§+A§)
                           {
                              §§push(param2.§1C§());
                              if(_loc10_)
                              {
                                 break;
                              }
                              §§goto(addr011c);
                           }
                        }
                        §§push(param2.§[![§());
                        if(!_loc9_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc10_)
                           {
                              break loop4;
                           }
                           break;
                        }
                        break loop4;
                     }
                     §§push(Number(§§pop()));
                     if(_loc10_)
                     {
                        break;
                     }
                     §§goto(addr011c);
                  }
                  if(§+A§)
                  {
                     addr011c:
                     §§push(param2.§;c§());
                     if(_loc10_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc10_)
                        {
                           addr013e:
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  else
                  {
                     §§push(param2.§5`§());
                     if(_loc10_)
                     {
                        §§goto(addr013e);
                     }
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        if(!§+A§)
                        {
                           §§push(param3.y);
                           break;
                        }
                     }
                     §§push(param3.x);
                     if(_loc10_)
                     {
                     }
                     break;
                  }
                  §§push(§§pop().§<c§(§§pop(),§§pop(),§§pop(),§§pop()));
                  if(_loc10_)
                  {
                     break loop0;
                  }
                  break loop1;
               }
               §§push(§§pop() - §§pop());
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               loop7:
               while(true)
               {
                  if(_loc10_)
                  {
                     if(_loc6_ == 0)
                     {
                        break;
                     }
                  }
                  _loc7_ = §]b§;
                  if(_loc9_)
                  {
                     break;
                  }
                  switch(_loc7_.index)
                  {
                     case 0:
                        _loc8_ = param1;
                        if(_loc10_)
                        {
                           while(true)
                           {
                              §§push(_loc8_);
                              §§push(_loc8_.§[![§());
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + _loc6_);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           §§pop().§ V§(§§pop());
                        }
                        break loop7;
                     case 1:
                        _loc8_ = param1;
                        if(!_loc9_)
                        {
                           loop10:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc8_);
                                 §§push(_loc8_.§[![§());
                                 if(_loc10_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc10_)
                                    {
                                       break loop10;
                                    }
                                    §§push(_loc8_.§;c§());
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc10_)
                                    {
                                       break loop10;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc10_)
                                 {
                                    §§push(_loc6_);
                                    break;
                                 }
                                 break loop10;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc9_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              break;
                           }
                           §§pop().§"!0§(§§pop());
                        }
                        break loop7;
                     case 2:
                        _loc8_ = param1;
                        if(_loc10_)
                        {
                           §§push(_loc8_);
                           §§push(_loc8_.§1C§());
                           if(!_loc9_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 §§push(§§pop() + _loc6_);
                                 if(_loc10_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           §§pop().§8!Y§(§§pop());
                        }
                        break loop7;
                     case 3:
                        _loc8_ = param1;
                        if(_loc10_)
                        {
                           loop12:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc8_);
                                 §§push(_loc8_.§1C§());
                                 if(!_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc10_)
                                    {
                                       break loop12;
                                    }
                                    §§push(_loc8_.§5`§());
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc9_)
                                    {
                                       break loop12;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc10_)
                                 {
                                    break loop12;
                                 }
                                 addr02db:
                                 §§pop().§+!F§(§§pop());
                                 break loop7;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr02db);
                           }
                           §§push(_loc6_);
                           break loop13;
                        }
                        break loop7;
                     default:
                        break loop7;
                  }
               }
               return;
            }
            §§push(_loc4_);
            break loop2;
         }
         §§push(Number(§§pop()));
         break loop1;
      }
   }
}

