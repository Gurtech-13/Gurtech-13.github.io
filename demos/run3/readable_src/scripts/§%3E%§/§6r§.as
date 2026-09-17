package §>%§
{
   import §>!O§.§ 3§;
   import com.player03.layout.§2u§;
   
   public class §6r§ extends § 3§
   {
      
      public var §1y§:Number;
      
      public function §6r§(param1:Boolean, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               param2 = 0;
               break;
            }
            while(true)
            {
               §§push(this);
               if(!_loc3_)
               {
                  if(!param1)
                  {
                     §§push(§2u§.BOTTOM);
                     break;
                  }
               }
               §§push(§2u§.RIGHT);
               break;
            }
            §§pop().super(§§pop());
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0061);
         }
         §1y§ = param2;
         addr0061:
      }
      
      override public function §<c§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§1y§);
            if(_loc6_)
            {
               §§push(§§pop() * param4);
            }
            return §§pop() - §§pop();
         }
      }
   }
}

