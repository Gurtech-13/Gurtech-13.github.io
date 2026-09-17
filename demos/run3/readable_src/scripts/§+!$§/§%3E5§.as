package §+!$§
{
   import §%!Q§.§>K§;
   import scenes.§+!"§;
   import com.player03.run3.menu.§1!?§;
   import com.player03.run3.save.§]k§;
   
   public final class §>5§
   {
      
      public function §>5§()
      {
      }
      
      public static function §""§(param1:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               switch(§§pop())
               {
                  case 0:
                     §§push(2);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     break;
                  case 1:
                     §§push(3);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     §§goto(addr006d);
                     break;
                  case 2:
                     §§push(0);
                     if(!_loc4_)
                     {
                        addr006d:
                        return §§pop();
                     }
                     break;
                  case 3:
                     return 1;
                  default:
                     §§goto(addr0075);
               }
            }
            return §§pop();
         }
         addr0075:
      }
   }
}

