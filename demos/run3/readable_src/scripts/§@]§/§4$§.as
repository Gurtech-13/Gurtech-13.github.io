package §@]§
{
   import §>!O§.§^`§;
   
   public class §4$§ extends §^`§
   {
      
      public var percent:Number;
      
      public function §4$§(param1:Boolean, param2:Number)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               super(param1);
               if(!_loc3_)
               {
                  break;
               }
            }
            percent = param2;
            break;
         }
      }
      
      override public function §!!^§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            §§push(percent);
            if(_loc6_)
            {
               §§push(param2);
               if(_loc6_)
               {
                  §§push(§§pop() - param3);
                  if(_loc6_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(param1);
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc5_)
               {
                  break;
               }
            }
            return Number(§§pop());
         }
         return §§pop();
      }
   }
}

