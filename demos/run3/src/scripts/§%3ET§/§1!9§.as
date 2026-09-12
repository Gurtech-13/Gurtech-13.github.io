package §>T§
{
   public class §1!9§
   {
      
      public function §1!9§()
      {
      }
      
      public static function §`e§(param1:int, param2:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(param1);
            §§push(0);
            if(_loc3_)
            {
               if(§§pop() > §§pop())
               {
                  if(_loc3_)
                  {
                     return 1;
                  }
                  addr0049:
                  §§push(2);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
                  addr0054:
                  §§push(0);
               }
               else
               {
                  §§push(param1);
                  §§push(0);
                  if(_loc3_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr0049);
                     }
                     else
                     {
                        §§push(param2);
                     }
                     §§goto(addr0054);
                  }
               }
            }
            if(§§pop() > §§pop())
            {
               break;
            }
            addr0065:
            return 8;
         }
         §§push(4);
         if(_loc3_)
         {
            return §§pop();
         }
         §§goto(addr0065);
      }
   }
}

