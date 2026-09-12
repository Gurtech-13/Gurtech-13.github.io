package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §4n§.Achievements;
   import §6!Q§.§]u§;
   import §6[§.§5v§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§8!M§;
   import com.player03.run3.menu.§ L§;
   import flash.geom.Rectangle;
   import unitsystem.§7o§;
   
   public class §+d§ extends §#!G§
   {
      
      public var §[L§:Function;
      
      public var count:int;
      
      public var §%§:int;
      
      public var §!!&§:int;
      
      public var §<x§:int;
      
      public function §+d§(param1:int, param2:Object = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  if(!§[L§)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     §[L§ = function(param1:§ !W§):int
                     {
                        return 0;
                     };
                  }
                  §%§ = 0;
                  §!!&§ = -1;
                  break;
               }
               count = 0;
               if(!_loc4_)
               {
                  §§push(this);
                  §§push(§5!0§);
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().super(§§pop());
                  §<x§ = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            if(param2 != null)
            {
               if(_loc3_)
               {
                  break;
               }
            }
            §§goto(addr009f);
         }
         §[L§ = param2;
         addr009f:
      }
      
      override public function §<!V§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(count);
         §§push(§!!&§);
         if(!_loc2_)
         {
            §§push(§§pop() + §<x§);
         }
         return §§pop() <= §§pop();
      }
      
      override public function §7q§(param1:§ !W§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  super.§7q§(param1);
                  if(param1.analytics != null)
                  {
                     §!!&§ = int(§[L§(param1));
                     break;
                  }
               }
               §!!&§ = 0;
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            while(true)
            {
               §§push(flags);
               if(!_loc3_)
               {
                  §§push(1);
                  if(!_loc2_)
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
               if(_loc2_)
               {
                  §%§ = count;
               }
            }
            else
            {
               §%§ = 0;
               if(!_loc2_)
               {
                  break;
               }
               progress = 0.99;
            }
            count = 0;
            break;
         }
      }
      
      public function §5!0§(param1:§ !W§) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc2_)
                  {
                     count = int(§[L§(param1));
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§push(§!!&§);
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                           §§push(0);
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                           if(§§pop() >= §§pop())
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        §!!&§ = count;
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop0;
                     }
                  }
                  §§push(count);
                  if(_loc2_)
                  {
                     break;
                  }
                  addr0090:
                  §§push(§!!&§);
                  if(!_loc3_)
                  {
                     break loop1;
                  }
                  §§goto(addr00a2);
               }
               §§push(§%§);
               if(!_loc3_)
               {
                  §§goto(addr0090);
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr00a2);
            }
            addr00a2:
            if(§§pop() <= §§pop() + §<x§)
            {
               break;
            }
            §§goto(addr00b0);
            §§push(0);
         }
         §§push(1);
         if(!_loc3_)
         {
            return §§pop();
         }
         addr00b0:
         return §§pop();
      }
   }
}

