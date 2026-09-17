package com.player03.run3.level
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §=w§.§,D§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import flash.geom.Rectangle;
   
   public class §8-§ implements §,D§
   {
      
      public var §0!%§:Level;
      
      public var §@a§:Number;
      
      public var §-=§:Number;
      
      public var § !&§:§!!Q§;
      
      public function §8-§(param1:Level)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §-=§ = 1;
            while(true)
            {
               if(!_loc3_)
               {
                  §@a§ = 1;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §0!%§ = param1;
               break;
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null as Level;
         var _loc3_:* = NaN;
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               if(§ !&§ == null)
               {
                  break;
               }
            }
            _loc2_ = §0!%§;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc5_)
                     {
                        if(_loc2_.characters == null)
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           §§push(int(_loc2_.characters.length) > 0);
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(§0!%§.characters[0].§;H§());
                                       if(_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(300);
                                       if(!_loc5_)
                                       {
                                          break loop8;
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(!_loc5_)
                                       {
                                          break loop7;
                                       }
                                       _loc3_ = Number(§§pop());
                                       if(!_loc5_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    §§push(param1);
                                    §§push(_loc3_);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() < 0.5)
                                       {
                                          §§push(0.5);
                                          break loop8;
                                       }
                                       if(!_loc4_)
                                       {
                                          break loop7;
                                       }
                                       §§goto(addr0110);
                                    }
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr00ef);
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 break loop4;
                              }
                              addr0110:
                              param1 = §§pop();
                           }
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr00e2:
                              if(§§pop() <= 5)
                              {
                                 if(!_loc4_)
                                 {
                                    addr00ef:
                                    §§push(_loc3_);
                                    if(_loc4_)
                                    {
                                    }
                                    break loop8;
                                 }
                                 break loop4;
                              }
                              §§push(5);
                              if(_loc5_)
                              {
                              }
                           }
                           break loop8;
                        }
                        § !&§.update(param1);
                        break;
                     }
                     §§push(§@a§);
                     break;
                  }
                  _loc3_ = §§pop();
                  while(true)
                  {
                     §§push(§0!%§);
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§ !&§.percent);
                        if(!_loc4_)
                        {
                           §§push(§-=§);
                           if(_loc5_)
                           {
                              §§push(§§pop() - _loc3_);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().§<M§(§§pop());
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§push(§ !&§.§=!V§());
                  if(_loc5_)
                  {
                     break loop1;
                  }
                  §§goto(addr0180);
               }
               § !&§ = null;
               break loop0;
            }
            addr0180:
            if(Boolean(§§pop()))
            {
               if(!_loc4_)
               {
                  break loop2;
               }
            }
            break;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            § !&§ = null;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
      
      public function §^<§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               if(§ !&§ == null)
               {
                  break;
               }
               if(_loc1_)
               {
                  § !&§ = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            §0!%§.§<M§(§@a§);
            break;
         }
      }
      
      public function §?!4§(param1:Number, param2:Number, param3:* = undefined) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               § !&§ = null;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(param3 != null)
                     {
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(param3 is §!!Q§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    § !&§ = param3;
                                    if(!_loc5_)
                                    {
                                       break loop3;
                                    }
                                    break;
                                 }
                                 §§push(param3 is String);
                              }
                              if(§§pop())
                              {
                                 if(param3 == "instant")
                                 {
                                    if(!_loc5_)
                                    {
                                       §0!%§.§<M§(param2);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       break loop2;
                                    }
                                    break loop0;
                                 }
                                 § !&§ = §!!Q§.§7I§(param3);
                              }
                              break loop3;
                           }
                           return;
                        }
                     }
                     break loop3;
                  }
                  § !&§ = §!!Q§.§8V§;
                  break;
               }
               §@a§ = param1;
            }
            §-=§ = param2;
            if(_loc4_)
            {
               § !&§.reset();
            }
            break;
         }
      }
   }
}

