package §1=§
{
   import motion.actuators.SimpleActuator;
   
   public class § <§ extends SimpleActuator
   {
      
      public var §<f§:Function;
      
      public function § <§(param1:Object, param2:Number, param3:*)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §%e§(param1:Function) : Function
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            sendChange = true;
         }
         §§push(§§findproperty(§<f§));
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         return §§pop().§<f§ = §§pop();
      }
      
      override public function complete(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §§push(§<f§);
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §<f§();
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            super.complete(param1);
            break;
         }
      }
      
      override public function change() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §§push(§<f§);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() == null)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §<f§();
               if(!_loc1_)
               {
                  break;
               }
               break loop0;
            }
            super.change();
            break;
         }
      }
   }
}

