package §=b§
{
   import com.player03.run3.level.Level;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   
   public class §,0§
   {
      
      public var factory:Function;
      
      public var achievement:§<!§;
      
      public function §,0§(param1:§<!§, param2:Function)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            achievement = param1;
            if(!_loc3_)
            {
               factory = param2;
            }
         }
      }
      
      public function §6k§(param1:Level, param2:Object) : §,!A§
      {
         return factory(achievement,param1,param2);
      }
   }
}

