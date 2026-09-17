package §=w§
{
   import §!D§.§[!5§;
   import §<?§.§#!7§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import haxe.Timer;
   import unitsystem.§7o§;
   
   public class §-!W§
   {
      
      public function §-!W§()
      {
      }
      
      public static function §=I§(param1:String, param2:String) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §§push(-1);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0052);
                  }
                  else
                  {
                     §§push(param1);
                  }
               }
               §§push(param2);
               break;
            }
            if(§§pop() > §§pop())
            {
               break;
            }
            §§goto(addr0055);
            §§push(0);
         }
         §§push(1);
         if(_loc4_)
         {
            addr0052:
            return §§pop();
         }
         addr0055:
         return §§pop();
      }
      
      public static function §7G§(param1:Number, param2:Number) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           break loop1;
                        }
                        break loop0;
                     }
                     §§push(param2);
                  }
                  §§push(param1);
                  break;
               }
               if(§§pop() > §§pop())
               {
                  break loop0;
               }
               return 1;
            }
            return §§pop();
         }
         §§push(-1);
         if(!_loc3_)
         {
            return §§pop();
         }
         break loop1;
      }
   }
}

