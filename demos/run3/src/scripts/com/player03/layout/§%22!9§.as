package com.player03.layout
{
   import §>!O§.§ 3§;
   import §>!O§.§;R§;
   import §[!P§.§;0§;
   
   public class §"!9§
   {
      
      public function §"!9§()
      {
      }
      
      public static function §#m§(param1:§ 7§, param2:§ 7§, param3:Object = undefined, param4:§&d§ = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
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
               break;
            }
            addr005e:
            addr0075:
            param4 = param4;
            param4.add(param1,§ 3§.§&o§(§2u§.RIGHT,param3),param2);
            var _loc5_:§ 3§ = § 3§.§7_§(§2u§.LEFT,param3);
            while(true)
            {
               if(_loc6_)
               {
                  while(true)
                  {
                     §§push(param4.§+6§(param1,_loc5_));
                     if(!_loc7_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(!§§pop());
                     break;
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
               param4.add(param1,_loc5_);
               break;
            }
            return;
         }
         param4 = §&d§.§1$§();
         if(!_loc7_)
         {
            §§goto(addr005e);
         }
         §§goto(addr0075);
      }
      
      public static function §0>§(param1:§ 7§, param2:§ 7§, param3:Object = undefined, param4:§&d§ = undefined) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(param3 == null)
            {
               if(_loc6_)
               {
                  break;
               }
               param3 = 0;
            }
            if(param4 == null)
            {
               break;
            }
            addr0044:
            param4 = param4;
            var _loc5_:§ 3§ = § 3§.§7_§(§2u§.RIGHT,param3);
            if(!_loc6_)
            {
               §§push(param4.§+6§(param1,_loc5_));
               if(_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        param4.add(param1,_loc5_);
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                  }
                  param4.add(param1,§ 3§.§&o§(§2u§.LEFT,param3),param2);
                  break;
               }
            }
            return;
         }
         param4 = §&d§.§1$§();
         §§goto(addr0044);
      }
      
      public static function §<_§(param1:§ 7§, param2:§ 7§, param3:Object = undefined, param4:§&d§ = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(param3 == null)
            {
               if(!_loc6_)
               {
                  break;
               }
               param3 = 0;
            }
            if(param4 == null)
            {
               break;
            }
            addr0059:
            addr0070:
            param4 = param4;
            param4.add(param1,§ 3§.§&o§(§2u§.BOTTOM,param3),param2);
            var _loc5_:§ 3§ = § 3§.§7_§(§2u§.TOP,param3);
            if(_loc6_)
            {
               while(true)
               {
                  §§push(param4.§+6§(param1,_loc5_));
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(!§§pop());
                  break;
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     param4.add(param1,_loc5_);
                  }
               }
            }
            return;
         }
         param4 = §&d§.§1$§();
         if(!_loc7_)
         {
            §§goto(addr0059);
         }
         §§goto(addr0070);
      }
      
      public static function §5C§(param1:§ 7§, param2:§ 7§, param3:Object = undefined, param4:§&d§ = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
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
               break;
            }
            addr0046:
            param4 = param4;
            var _loc5_:§ 3§ = § 3§.§7_§(§2u§.BOTTOM,param3);
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(param4.§+6§(param1,_loc5_));
                  if(_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(!§§pop());
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        param4.add(param1,_loc5_);
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                  }
                  param4.add(param1,§ 3§.§&o§(§2u§.TOP,param3),param2);
                  break;
               }
            }
            return;
         }
         param4 = §&d§.§1$§();
         §§goto(addr0046);
      }
      
      public static function §]!A§(param1:§ 7§, param2:§&d§ = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(param2 == null)
         {
            param2 = §&d§.§1$§();
         }
         else
         {
            param2 = param2;
         }
         while(true)
         {
            §§push(param2.§4!G§(param1));
            if(_loc6_)
            {
               §§push(int(§§pop()));
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               §§push(4);
               if(!_loc6_)
               {
                  break;
               }
               §§push(§§pop() & §§pop());
            }
            §§push(0);
            break;
         }
         §§push(§§pop() == §§pop());
         if(!_loc7_)
         {
            §§push(!§§pop());
            if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(8);
               if(!_loc6_)
               {
                  break;
               }
               §§push(§§pop() & §§pop());
            }
            §§push(0);
            break;
         }
         while(true)
         {
            §§push(§§pop() == §§pop());
            if(!_loc7_)
            {
               §§push(!§§pop());
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        param2.add(param1,new §;0§(true));
                        if(_loc7_)
                        {
                           break loop4;
                        }
                     }
                  }
                  §§push(_loc5_);
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                  }
                  break;
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
            param2.add(param1,new §;0§(false));
            break;
         }
      }
   }
}

