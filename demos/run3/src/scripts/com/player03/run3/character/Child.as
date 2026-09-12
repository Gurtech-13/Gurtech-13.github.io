package com.player03.run3.character
{
   import §"!M§.§!!P§;
   import §"!M§.§9!5§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §<B§.§6!_§;
   import §>T§.§[C§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§-Q§;
   import haxe.Timer;
   import haxeutils.math.§+L§;
   
   public class Child extends §6M§
   {
      
      public function Child(param1:§ !W§, param2:§6O§)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  super(param1,param2);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§push(§§findproperty(§?!>§));
                  §§push(§?!>§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * 0.4);
                  }
                  §§pop().§?!>§ = §§pop();
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(§§findproperty(§+9§));
               §§push(§+9§);
               if(_loc3_)
               {
                  §§push(§§pop() * 0.6);
               }
               §§pop().§+9§ = §§pop();
               break;
            }
            §§push(§§findproperty(§3!>§));
            §§push(§3!>§);
            if(_loc3_)
            {
               §§push(§§pop() * 0.8);
            }
            §§pop().§3!>§ = §§pop();
            while(true)
            {
               if(_loc3_)
               {
                  §§push(§§findproperty(§"!2§));
                  §§push(§"!2§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * 0.95);
                  }
                  §§pop().§"!2§ = §§pop();
                  §=^§ = true;
                  §!0§ = 1;
                  § `§.§,H§ = 80;
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §?`§.§1!#§(50.88,86.08,0.05,0.2);
               if(_loc3_)
               {
                  break loop0;
               }
               break;
            }
            §§goto(addr00ea);
         }
         var _temp_1:* = §?`§;
         §§push(_temp_1);
         §§push(_temp_1.buffer);
         if(_loc3_)
         {
            §§push(§§pop() * 1.4);
         }
         §§pop().buffer = §§pop();
         addr00ea:
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(false);
                     §§push(false);
                     if(§4!Z§ == 0)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§pop();
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        §§push(!physicsData.onGround);
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(§#[§.active);
                              if(!_loc3_)
                              {
                                 break loop5;
                              }
                              §§push(!§§pop());
                              if(_loc2_)
                              {
                                 break loop5;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§push(§<!B§());
                                       if(!_loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc3_)
                                          {
                                             break loop8;
                                          }
                                       }
                                       if(§§pop() > 0)
                                       {
                                          §§push(§§findproperty(applyForce3D));
                                          §§push(0);
                                          §§push(-§!C§.gravity3D.y);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() * 0.6);
                                          }
                                          §§pop().applyForce3D(§§pop(),§§pop(),0);
                                          if(!_loc3_)
                                          {
                                             break loop7;
                                          }
                                       }
                                       else
                                       {
                                          §§push(§§findproperty(applyForce3D));
                                          §§push(0);
                                          §§push(-§!C§.gravity3D.y);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() * 0.3);
                                          }
                                          §§pop().applyForce3D(§§pop(),§§pop(),0);
                                       }
                                    }
                                    §§push(§?`§.§'!S§());
                                    if(_loc3_)
                                    {
                                       if(!Boolean(§§pop()))
                                       {
                                          break loop7;
                                       }
                                       §§push(§?`§.§@4§);
                                       if(_loc3_)
                                       {
                                          break loop8;
                                       }
                                       §§goto(addr01d9);
                                    }
                                    else
                                    {
                                       §§goto(addr017e);
                                    }
                                 }
                                 var _temp_2:* = tunnel.analytics;
                                 §§push(_temp_2);
                                 §§push(_temp_2.§`§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop().§`§ = §§pop();
                                 §§goto(addr0127);
                              }
                              §§push(1.11);
                              if(!_loc2_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    break loop9;
                                 }
                                 addr0127:
                                 §§push(false);
                                 §§push(false);
                                 break loop2;
                              }
                              §§goto(addr01db);
                           }
                           §§goto(addr01aa);
                        }
                        §§goto(addr01eb);
                     }
                     §§goto(addr01c5);
                  }
                  while(true)
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        if(§9!+§ == null)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           §§pop();
                           §§push(§9!+§.§@!B§ == null);
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(§§pop())
                  {
                     §§pop();
                     break;
                  }
                  continue loop3;
               }
               §§push(§9!+§.§@!B§.§-!9§);
               if(_loc2_)
               {
                  break;
               }
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(Boolean(§§pop()))
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§pop();
                        if(_loc2_)
                        {
                           break loop3;
                        }
                        §§push(§9!+§.§@!B§ is §9!5§);
                     }
                     if(§§pop())
                     {
                        §9!+§.§@!B§.§^!F§(§9!+§);
                     }
                     addr01aa:
                     §§push(false);
                     §§push(physicsData.onGround);
                     break loop0;
                  }
                  §§goto(addr01e1);
               }
            }
            if(§§pop())
            {
               addr01c5:
               §§pop();
               addr01db:
               addr01d9:
               §§push(level.unpausedTime - physicsData.§'![§ <= 0.1);
               if(_loc3_)
               {
                  addr01e1:
                  §§push(Boolean(§§pop()));
               }
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr01eb:
                  §?`§.§@4§ = 1.11;
               }
            }
         }
         break loop3;
      }
   }
}

