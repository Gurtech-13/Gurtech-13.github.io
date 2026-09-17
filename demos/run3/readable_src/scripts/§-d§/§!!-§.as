package §-d§
{
   import §!!$§.§ 6§;
   import §2!"§.Spritesheet;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   
   public class §!!-§
   {
      
      public var start:int;
      
      public var length:int;
      
      public var §@!X§:Boolean;
      
      public function §!!-§(param1:int, param2:Object = undefined, param3:Object = undefined)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               loop1:
               while(true)
               {
                  if(param2 == null)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     param2 = 1;
                  }
                  while(true)
                  {
                     if(param3 == null)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        param3 = false;
                     }
                     start = param1;
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     break loop0;
                  }
               }
               length = param2;
               if(_loc5_)
               {
                  break;
               }
            }
            §#!3§(param3);
            break;
         }
      }
      
      public function §#!3§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§findproperty(§@!X§));
         §§push(param1);
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         return §§pop().§@!X§ = §§pop();
      }
      
      public function §-!P§(param1:Spritesheet, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               if(param2 < length)
               {
                  §§push(param1);
                  §§push(start);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().§,=§(§§pop());
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr0095);
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(param1);
            §§push(start);
            if(_loc3_)
            {
               while(true)
               {
                  §§push(length);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(1);
                  }
                  §§push(§§pop() - §§pop());
                  break;
               }
            }
            §§pop().§,=§(§§pop());
            if(_loc4_)
            {
            }
            break;
         }
         param1.§@S§(§@!X§);
         addr0095:
      }
      
      public function clone() : §!!-§
      {
         return new §!!-§(start,length,§@!X§);
      }
   }
}

