package com.player03.run3.level.trigger.specific
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §6!Q§.§]u§;
   import §7!Z§.§"! §;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class JumpInstructionsTrigger extends §,!A§
   {
      
      public function JumpInstructionsTrigger(param1:§<!§, param2:Level, param3:int)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §§push(this);
            §§push(§§findproperty(§<!§));
            §§push(§=k§);
            if(_loc5_)
            {
               §§push(§§pop());
            }
            §§pop().super(new §§pop().§<!§(§§pop()),param2,0);
         }
      }
      
      public function §=k§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §]u§.§@!A§().§5B§(new §"! §());
         if(_loc1_)
         {
            §]u§.§@!A§().§5!@§ = false;
         }
      }
      
      override public function §5!0§() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc1_:CharacterBase = tunnel.characters[0];
         while(true)
         {
            §§push(_loc1_.transform.position.z);
            if(!_loc4_)
            {
               §§push(§§pop() - _loc1_.§73§.startZ);
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc5_)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(false);
                           if(!_loc4_)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc5_)
                                       {
                                          §§push(false);
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          if(_loc2_ >= 400)
                                          {
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             break loop7;
                                          }
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       §§push(_loc2_ > 0);
                                       if(_loc5_)
                                       {
                                          break loop7;
                                       }
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          break loop6;
                                       }
                                       break loop4;
                                    }
                                    break loop5;
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop8;
                              }
                              §§pop();
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(_loc1_.physicsData.onGround);
                           if(!_loc4_)
                           {
                              break loop4;
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           break loop3;
                        }
                        break loop2;
                     }
                     §§push(Boolean(§§pop()));
                     break loop5;
                  }
                  §§pop();
                  if(_loc4_)
                  {
                     break loop1;
                  }
               }
               §§push(tunnel.analytics.§7!-§ == 0);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr0129);
            }
            if(§§pop())
            {
               if(!_loc5_)
               {
                  break;
               }
               while(true)
               {
                  §§push(_loc1_.§;H§());
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = §§pop();
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  if(§§pop() >= 0)
                  {
                     break loop1;
                  }
                  §§push(_loc3_);
                  break;
               }
               §§goto(addr011e);
            }
            else
            {
               §§push(false);
            }
            §§goto(addr0129);
         }
         §§push(_loc3_);
         if(_loc4_)
         {
         }
         addr011e:
         §§push(§§pop() < 1e-10);
         if(!_loc4_)
         {
            return §§pop();
         }
         addr0129:
         return §§pop();
      }
   }
}

