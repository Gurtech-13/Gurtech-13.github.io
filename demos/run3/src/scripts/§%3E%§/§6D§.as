package §>%§
{
   import §>!O§.§ 3§;
   import com.player03.layout.§2u§;
   
   public class §6D§ extends § 3§
   {
      
      public var §1y§:Number;
      
      public function §6D§(param1:Boolean, param2:Object = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  param2 = 0;
               }
               while(true)
               {
                  §§push(this);
                  if(_loc3_)
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
               if(!_loc4_)
               {
                  break;
               }
            }
            §1y§ = param2;
         }
      }
      
      override public function §<c§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(_loc6_)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc5_)
               {
                  break loop0;
               }
               §§goto(addr0058);
            }
            addr0058:
            return §§pop();
         }
         §§push(§1y§);
         if(_loc6_)
         {
            §§push(§§pop() * param4);
         }
         break loop1;
      }
   }
}

