package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §-!!§.§&l§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §4n§.§!L§;
   import §4n§.Achievement;
   import §8!0§.§2_§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §#!G§
   {
      
      public var progress:Number;
      
      public var flags:int;
      
      public var condition:Function;
      
      public function §#!G§(param1:Function, param2:Object = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               while(true)
               {
                  if(param2 == null)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     param2 = 0;
                  }
                  progress = 0;
                  if(_loc3_)
                  {
                     flags = 0;
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  condition = param1;
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            flags = param2;
            break;
         }
      }
      
      public function §<!V§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(_loc1_)
                     {
                        §§push(false);
                        if(_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(flags);
                           if(_loc1_)
                           {
                              §§push(16);
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§push(§§pop() & §§pop());
                           }
                           §§push(0);
                           break;
                        }
                        if(§§pop() == §§pop())
                        {
                           break loop2;
                        }
                        if(!_loc1_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                     §§push(progress < 1);
                     if(!_loc2_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(Boolean(§§pop()));
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr007c);
               }
               if(§§pop())
               {
                  break loop0;
               }
               return true;
            }
            return §§pop();
         }
         §§push(false);
         if(_loc1_)
         {
            addr007c:
            return §§pop();
         }
         break loop1;
      }
      
      public function §7q§(param1:§ !W§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(flags);
                  if(_loc2_)
                  {
                     §§push(1);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() & §§pop());
                  }
                  §§push(0);
                  break;
               }
               if(§§pop() != §§pop())
               {
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            progress = 0;
            break;
         }
      }
      
      public function §0X§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               while(true)
               {
                  §§push(flags);
                  if(_loc2_)
                  {
                     §§push(2);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(§§pop() & §§pop());
                  }
                  §§push(0);
                  break;
               }
               if(§§pop() == §§pop())
               {
                  break;
               }
               if(_loc1_)
               {
                  break;
               }
            }
            progress = 0;
            break;
         }
      }
      
      final public function §^!S§(param1:§ !W§) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc4_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(false);
                           if(!_loc4_)
                           {
                              if(progress >= 1)
                              {
                                 if(!_loc4_)
                                 {
                                    §§pop();
                                    §§push(flags);
                                    if(_loc4_)
                                    {
                                       break loop3;
                                    }
                                    §§push(4);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() & §§pop());
                                    if(_loc4_)
                                    {
                                       break loop3;
                                    }
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                       break loop2;
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                           }
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(Number(condition(param1)));
                                    if(_loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§findproperty(progress));
                                                      if(_loc3_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc4_)
                                                         {
                                                            break loop8;
                                                         }
                                                         §§push(0);
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(0);
                                                            break loop9;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break loop7;
                                                         }
                                                      }
                                                      §§push(_loc2_);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(1);
                                                         break;
                                                      }
                                                      break loop8;
                                                   }
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      break loop7;
                                                   }
                                                   §§push(1);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc4_)
                                                      {
                                                      }
                                                      break loop8;
                                                   }
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             §§pop().progress = §§pop();
                                             if(!_loc3_)
                                             {
                                                break loop6;
                                             }
                                             §§push(flags);
                                             if(!_loc3_)
                                             {
                                                break loop5;
                                             }
                                          }
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                          }
                                          break loop8;
                                       }
                                    }
                                    break loop1;
                                 }
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    break loop3;
                                 }
                                 §§push(8);
                                 if(!_loc4_)
                                 {
                                    break loop2;
                                 }
                                 break loop4;
                              }
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr0118);
                     }
                     return §§pop();
                  }
                  addr0116:
                  addr0118:
                  if((§§pop() & §§pop()) == 0)
                  {
                     break loop0;
                  }
               }
               progress = 1 - progress;
               break loop0;
            }
            return §§pop();
         }
         §§push(progress);
         break loop1;
      }
   }
}

