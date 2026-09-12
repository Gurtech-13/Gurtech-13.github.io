package §>%§
{
   import §>!O§.§ 3§;
   import com.player03.layout.§2u§;
   
   public class §^!D§ extends § 3§
   {
      
      public var §1y§:Number;
      
      public function §^!D§(param1:Boolean, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  param2 = 0;
               }
               while(true)
               {
                  §§push(this);
                  if(!_loc3_)
                  {
                     if(!param1)
                     {
                        §§push(§2u§.TOP);
                        break;
                     }
                  }
                  §§push(§2u§.LEFT);
                  break;
               }
               §§pop().super(§§pop());
               if(_loc4_)
               {
                  §1y§ = param2;
               }
               break;
            }
         }
      }
      
      override public function §<c§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§1y§);
               if(_loc5_)
               {
                  §§push(§§pop() * param4);
               }
               §§push(§§pop() + §§pop());
               if(!_loc5_)
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

