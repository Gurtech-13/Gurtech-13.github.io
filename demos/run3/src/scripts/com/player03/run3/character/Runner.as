package com.player03.run3.character
{
   import §"!M§.§!!P§;
   import §>T§.§[C§;
   import com.player03.run3.level.§ !W§;
   
   public class Runner extends §6M§
   {
      
      public function Runner(param1:§ !W§, param2:§6O§)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               super(param1,param2);
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§+9§));
            §§push(§+9§);
            if(!_loc3_)
            {
               §§push(§§pop() * 1.17);
            }
            §§pop().§+9§ = §§pop();
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(§§findproperty(§?!>§));
                  §§push(§?!>§);
                  if(_loc4_)
                  {
                     §§push(§§pop() * 1.21);
                  }
                  §§pop().§?!>§ = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(§§findproperty(§&e§));
                  §§push(§&e§);
                  if(_loc4_)
                  {
                     §§push(§§pop() * 0.9);
                  }
                  §§pop().§&e§ = §§pop();
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  var _temp_2:* = §?`§;
                  §§push(_temp_2);
                  §§push(_temp_2.buffer);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * 1.5);
                  }
                  §§pop().buffer = §§pop();
               }
               §?`§.§1!#§(33.199999999999996,111.28,0.05,0.21200000000000002);
               break;
            }
            return;
         }
         §§push(§§findproperty(§"!2§));
         §§push(§"!2§);
         if(!_loc3_)
         {
            §§push(§§pop() * 1.14);
         }
         §§pop().§"!2§ = §§pop();
         §>!7§ = 1.1;
         §§goto(addr00b1);
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(!_loc6_)
               {
                  §§push(false);
                  if(!physicsData.onGround)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               §§push(true);
               if(_loc7_)
               {
                  if(§9!+§ != null)
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 break loop0;
                              }
                              addr00ae:
                              if(§§pop())
                              {
                                 _loc2_ = §6N§;
                                 §§push(§+9§);
                                 break loop2;
                              }
                              break;
                           }
                           §§goto(addr0158);
                        }
                        §§push(1.14);
                        if(_loc7_)
                        {
                           _loc3_ = §§pop() * §§pop();
                           while(true)
                           {
                              §§push(§§findproperty(§6N§));
                              if(!_loc6_)
                              {
                                 §§push(_loc2_);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 if(§§pop() <= _loc3_)
                                 {
                                    §§push(_loc3_);
                                    break;
                                 }
                              }
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                              }
                              break;
                           }
                           §§pop().§6N§ = §§pop();
                           §§push(§"!+§);
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                              §§push(§"!2§);
                           }
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc5_ = §§pop();
                        if(_loc7_)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§"!+§));
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 if(§§pop() <= _loc5_)
                                 {
                                    §§push(_loc5_);
                                    break;
                                 }
                              }
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                              }
                              break;
                           }
                           §§pop().§"!+§ = §§pop();
                        }
                        break loop3;
                     }
                  }
               }
               §§goto(addr0078);
            }
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(§[!L§);
                     if(!_loc7_)
                     {
                        break loop2;
                     }
                     §§push(§§pop() <= 0);
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               §§goto(addr00ae);
            }
            addr0158:
            super.update(param1);
            return;
         }
         §§push(§9!+§.§@!B§ == null);
         if(!_loc6_)
         {
            addr0078:
            §§push(Boolean(§§pop()));
         }
         break loop1;
      }
   }
}

