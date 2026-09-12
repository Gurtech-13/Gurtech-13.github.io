package §,!G§
{
   import com.player03.run3.level.TunnelSection;
   
   public class §6!7§
   {
      
      public var start:Number;
      
      public var end:Number;
      
      public function §6!7§(param1:Number, param2:Number)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               start = param1;
               if(_loc4_)
               {
                  break;
               }
            }
            end = param2;
            break;
         }
      }
      
      public function §[!$§(param1:Number) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(start);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(end);
               if(_loc3_)
               {
                  §§push(§§pop() - _loc2_);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc3_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public function §7!8§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(start);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(_loc4_)
         {
            while(true)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(end);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - _loc2_);
                  }
               }
               return §§pop() / §§pop();
            }
         }
         return §§pop();
      }
   }
}

