package com.player03.run3.character
{
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   
   public class Skater extends CharacterBase
   {
      
      public function Skater(param1:Level, param2:CharacterDef)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         super(param1,param2);
         if(!_loc4_)
         {
            §"!2§ = 600;
            §3!>§ = 413;
         }
         §§push(§§findproperty(§?!>§));
         §§push(§?!>§);
         if(!_loc4_)
         {
            §§push(§§pop() * 0.97);
         }
         §§pop().§?!>§ = §§pop();
         if(_loc3_)
         {
            §§push(§§findproperty(§+9§));
            §§push(§+9§);
            if(!_loc4_)
            {
               §§push(§§pop() * 1.08);
            }
            §§pop().§+9§ = §§pop();
            if(!_loc4_)
            {
               §§push(§§findproperty(§`a§));
               §§push(§`a§);
               if(!_loc4_)
               {
                  §§push(§§pop() * 1.3);
               }
               §§pop().§`a§ = §§pop();
               var _temp_1:* = §[!G§.physicsData;
               §§push(_temp_1);
               §§push(_temp_1.§=8§);
               if(!_loc4_)
               {
                  §§push(§§pop() * 0.9);
               }
               §§pop().§=8§ = §§pop();
            }
            §!b§ = "UnsafeSpeeds";
         }
         §?`§.§1!#§(40.8,83.2,0.05,0.2);
      }
      
      override public function §&7§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(§]!L§ != null)
            {
               if(_loc1_)
               {
                  §"!2§ = 600;
                  if(_loc1_)
                  {
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(false);
                           if(_loc1_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    if(physicsData.onGround)
                                    {
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             §§pop();
                                             if(_loc2_)
                                             {
                                                break loop3;
                                             }
                                             §§push(§<!B§());
                                             if(!_loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             §§push(§§pop() <= -0.1);
                                             if(!_loc1_)
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
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    break loop1;
                                 }
                                 break loop2;
                              }
                           }
                           §§pop();
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §§push(§?`§.active);
                                 if(!_loc2_)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr00ac);
                              }
                              addr00c7:
                              §;!C§.§ i§.§3q§ = false;
                              if(_loc1_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §%8§(-0.1);
                              if(!_loc2_)
                              {
                                 §§goto(addr00c7);
                              }
                           }
                        }
                     }
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        addr00ac:
                        §§push(Boolean(§§pop()));
                     }
                     break loop2;
                  }
               }
            }
            super.§&7§();
            break;
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super.reset();
               if(_loc2_)
               {
                  break;
               }
            }
            if(tunnel.§5§ != §,a§.INFINITE)
            {
               if(!_loc2_)
               {
                  if(tunnel.§3j§ >= 6)
                  {
                     break;
                  }
                  §§goto(addr0085);
               }
               addr0067:
               tunnel.analytics.§`§ = 1;
               if(_loc1_)
               {
               }
            }
            else
            {
               §"!2§ = 600;
            }
            addr0085:
            return;
         }
         §"!2§ = 700;
         §§goto(addr0067);
      }
   }
}

