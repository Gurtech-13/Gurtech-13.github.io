package haxeutils.math
{
   public class §,@§
   {
      
      public var start:int;
      
      public var §6!2§:int;
      
      public var end:int;
      
      public var §#1§:int;
      
      public function §,@§(param1:int, param2:int, param3:int = 0)
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         start = param1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param3);
               if(!_loc5_)
               {
                  if(§§pop() != 0)
                  {
                     if(_loc4_)
                     {
                        §6!2§ = param3;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(§§findproperty(§6!2§));
                        if(_loc4_)
                        {
                           §§push(param2);
                           if(_loc5_)
                           {
                              break;
                           }
                           if(§§pop() <= param1)
                           {
                              §§push(-1);
                              break;
                           }
                        }
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                        break;
                     }
                     §§pop().§6!2§ = §§pop();
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§§findproperty(§#1§));
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() - §6!2§);
                  }
                  §§pop().§#1§ = §§pop();
                  §§push(§6!2§);
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() > §§pop() == param2 > param1)
                     {
                        if(_loc4_)
                        {
                           §§push(param2);
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc5_)
                              {
                                 addr00c5:
                                 param2 = §§pop();
                                 break loop0;
                              }
                              §§push(int(§§pop() / §6!2§));
                              §§push(§6!2§);
                           }
                           addr00b1:
                           param2 = int(§§pop() * §§pop() + param1);
                           addr00ad:
                           break loop0;
                        }
                        break;
                     }
                     §§push(param1 - §6!2§);
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00b1);
            }
            return;
         }
         §§push(§§findproperty(end));
         §§push(param2);
         if(_loc4_)
         {
            §§push(§§pop() + §6!2§);
         }
         §§pop().end = §§pop();
         break loop1;
      }
      
      public function next() : int
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§,@§ = this;
         if(_loc3_)
         {
            §§push(_loc1_);
            §§push(_loc1_.§#1§);
            if(!_loc2_)
            {
               §§push(§§pop() + §6!2§);
            }
            §§pop().§#1§ = §§pop();
         }
         return _loc1_.§#1§;
      }
      
      public function hasNext() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            §§push(§#1§);
            if(!_loc1_)
            {
               §§push(§6!2§);
               if(!_loc2_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
            }
            §§push(end);
            break;
         }
         §§push(§§pop() == §§pop());
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}

