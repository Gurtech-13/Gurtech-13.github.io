package com.player03.run3.level
{
   import §%!Q§.§ !>§;
   import §%!Q§.§6!a§;
   import §%!Q§.§>K§;
   import §3!b§.§+Z§;
   import §4!8§.§1!3§;
   import §4n§.Achievement;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.BeatLevelAndSave;
   import com.player03.run3.save.§]k§;
   import flash.events.Event;
   import haxeutils.math.geom.Point3D;
   
   public class §>W§
   {
      
      public var §@!0§:int;
      
      public var §]!;§:Vector.<Point3D>;
      
      public var §"8§:int;
      
      public var §,o§:Vector.<Number>;
      
      public function §>W§(param1:Vector.<Point3D>, param2:int)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = null as Point3D;
         var _loc8_:* = 0;
         while(true)
         {
            if(_loc10_)
            {
               §@!0§ = 0;
               if(_loc9_)
               {
                  break;
               }
               §]!;§ = param1;
               if(_loc9_)
               {
                  break;
               }
            }
            §"8§ = param2;
            break;
         }
         §§push([]);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc10_)
         {
            while(_loc4_ < int(param1.length))
            {
               _loc5_ = param1[_loc4_];
               if(_loc10_)
               {
                  _loc4_++;
                  if(!_loc10_)
                  {
                     continue;
                  }
               }
               _loc3_.push(Number(Math.atan2(_loc5_.y,_loc5_.x)));
            }
         }
         §§push(_loc3_);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         loop3:
         while(true)
         {
            if(!_loc9_)
            {
               §,o§ = Vector.<Number>(_loc6_);
               if(_loc9_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(1);
               if(_loc10_)
               {
                  §§push(int(§§pop()));
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               _loc4_ = §§pop();
               break loop3;
            }
            §§goto(addr00ff);
         }
         §§push(int(§,o§.length));
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         addr00ff:
         var _loc7_:* = §§pop();
         if(_loc10_)
         {
            loop1:
            while(_loc4_ < _loc7_)
            {
               §§push(_loc4_);
               if(_loc10_)
               {
                  _loc4_++;
                  if(!_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc8_ = §§pop();
               if(_loc10_)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc9_)
                        {
                           §§push(§,o§[_loc8_]);
                           if(!_loc9_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           if(!_loc10_)
                           {
                              break loop5;
                           }
                        }
                        §§pop();
                        if(_loc10_)
                        {
                           §§push(§,o§[_loc8_]);
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop() < §,o§[§@!0§]);
                           if(!_loc9_)
                           {
                              break loop5;
                           }
                           break;
                        }
                        continue loop1;
                     }
                     if(!§§pop())
                     {
                        continue loop1;
                     }
                     if(!_loc10_)
                     {
                        continue loop1;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop6;
               }
               §@!0§ = _loc8_;
            }
         }
      }
   }
}

