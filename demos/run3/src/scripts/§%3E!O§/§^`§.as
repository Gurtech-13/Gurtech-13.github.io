package §>!O§
{
   import §%!Z§.§&!S§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   
   public class §^`§ implements §0S§
   {
      
      public var mask:int;
      
      public var §+A§:Boolean;
      
      public function §^`§(param1:Boolean)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               §+A§ = param1;
               if(!_loc3_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§findproperty(mask));
               if(_loc3_)
               {
                  if(!param1)
                  {
                     §§push(2);
                     break;
                  }
               }
               §§push(1);
               if(_loc2_)
               {
               }
               break;
            }
            §§pop().mask = §§pop();
            break;
         }
      }
      
      public static function § !P§(param1:§2u§) : §^`§
      {
         switch(param1.index)
         {
            case 0:
               return new §^`§(true);
            case 1:
               return new §4$§(true,1);
            case 2:
               return new §^`§(false);
            case 3:
               return new §4$§(false,1);
            default:
               return;
         }
      }
      
      public function §!!^§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param1;
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = NaN;
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     if(!§+A§)
                     {
                        §§push(§§findproperty(§!!^§));
                        §§push(param2.§1C§());
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(param2.§5`§());
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(param1.§5`§());
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(§§pop().§!!^§(§§pop(),§§pop(),§§pop(),param3.y));
                        break;
                     }
                     if(!_loc6_)
                     {
                        continue loop2;
                     }
                  }
                  §§push(§§findproperty(§!!^§));
                  §§push(param2.§[![§());
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(param2.§;c§());
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(param1.§;c§());
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop().§!!^§(§§pop(),§§pop(),§§pop(),param3.x));
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  §§push(Number(§§pop()));
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(!_loc5_)
                  {
                     continue loop2;
                  }
                  §§goto(addr00f4);
               }
               §§push(Number(§§pop()));
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr00f6);
            }
            _loc4_ = §§pop();
            addr00f4:
            addr00f6:
            §§push(_loc4_);
            §§push(param1.§1C§());
            if(_loc6_)
            {
               §§goto(addr0102);
            }
            §§goto(addr0103);
         }
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(_loc4_);
               §§push(param1.§[![§());
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc5_)
                  {
                     if(§§pop() != §§pop())
                     {
                        param1.§;g§(_loc4_);
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                        break;
                     }
                     break loop2;
                  }
                  addr0102:
                  §§push(Number(§§pop()));
               }
               addr0103:
               if(§§pop() != §§pop())
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
               break loop2;
            }
            param1.§=!=§(_loc4_);
            break;
         }
      }
   }
}

