package §2n§
{
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import flash.display.Shape;
   
   public class §0"§ extends §'!O§
   {
      
      public function §0"§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super(null,null,§&d§.§;`§());
         }
      }
      
      public function §4l§(param1:§ 7§, param2:Number, param3:§^F§ = undefined, param4:Object = undefined, param5:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc11_)
               {
                  if(param4 != null)
                  {
                     break;
                  }
                  if(!_loc11_)
                  {
                     break loop0;
                  }
               }
               param4 = 6;
               break;
            }
            if(param5 == null)
            {
               while(true)
               {
                  while(true)
                  {
                     if(_loc11_)
                     {
                        break loop0;
                     }
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr0071);
            }
            §§goto(addr0046);
         }
         param5 = 10066329;
         addr0046:
         while(true)
         {
            if(param3 == null)
            {
               if(_loc10_)
               {
                  break;
               }
               param3 = §^F§.SOLID(16777215);
            }
            addr0065:
            §!1§(null,param1,param2);
            break;
         }
         addr0071:
         var _loc6_:Shape = new Shape();
         while(true)
         {
            if(!_loc10_)
            {
               §<!T§.fillRect(_loc6_,param3,param2 * 1.5,param4,param5,null,layout);
               if(_loc10_)
               {
                  break;
               }
            }
            addChildAt(_loc6_,0);
            break;
         }
         var _loc7_:§ 7§ = new §?y§(this);
         var _loc8_:§ 7§ = new §4o§(§!n§.§&#§);
         var _loc9_:§&d§ = layout;
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  if(_loc9_ != null)
                  {
                     §§push(_loc9_);
                     break;
                  }
                  if(!_loc11_)
                  {
                     break loop4;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc7_,new §4$§(true,0.5),_loc8_);
            break;
         }
         _loc7_ = new §?y§(this);
         _loc8_ = new §4o§(§!n§.§&#§);
         _loc9_ = layout;
         loop6:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  if(_loc9_ != null)
                  {
                     §§push(_loc9_);
                     break;
                  }
                  if(!_loc11_)
                  {
                     break loop6;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc7_,new §4$§(false,0.5),_loc8_);
            break;
         }
      }
   }
}

