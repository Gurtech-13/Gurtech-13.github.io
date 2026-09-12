package §6!Q§
{
   import §!!$§.§?y§;
   import §-!!§.§8!8§;
   import §>!O§.§0S§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import flash.Boot;
   
   public class §"q§ implements §0S§
   {
      
      public var mask:int;
      
      public var §4#§:Number;
      
      public var §=M§:int;
      
      public var §[!>§:int;
      
      public function §"q§(param1:int, param2:int, param3:Number)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               mask = 1024;
               if(!_loc5_)
               {
                  break;
               }
               §[!>§ = param1;
               if(!_loc5_)
               {
                  break;
               }
            }
            §=M§ = param2;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr0059);
         }
         §4#§ = param3;
         addr0059:
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = null as §8!8§;
         var _loc6_:* = null as §?y§;
         var _loc4_:Class = §8!8§;
         while(true)
         {
            if(_loc8_)
            {
               if(param1 is §?y§)
               {
                  if(!_loc8_)
                  {
                     §§goto(addr00d9);
                  }
                  _loc6_ = param1;
                  if(!_loc7_)
                  {
                     §§push(Std.§is§(_loc6_.§ v§,_loc4_));
                     if(_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           _loc5_ = _loc6_.§ v§;
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                     }
                     else
                     {
                        Boot.lastError = new Error();
                        if(!_loc7_)
                        {
                           §§push(Std.string(_loc4_));
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop() + " required!");
                           if(_loc8_)
                           {
                              throw §§pop();
                           }
                        }
                     }
                  }
               }
               else
               {
                  Boot.lastError = new Error();
                  if(_loc8_)
                  {
                     addr00d9:
                     §§push(Std.string(_loc4_));
                     if(_loc8_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() + " required!");
                     if(!_loc7_)
                     {
                        throw §§pop();
                     }
                  }
               }
            }
            _loc5_.§@F§();
            if(_loc8_)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(6);
                  §§push(param3.x);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + param3.y);
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc7_)
                  {
                     §§push(§§pop() / 2);
                  }
                  break;
               }
               §§push(§§pop() * §§pop());
               §§push(§[!>§);
               §§push(§=M§);
               §§push(§4#§);
               if(!_loc7_)
               {
                  while(true)
                  {
                     §§push(param3.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() + param3.y);
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        §§push(§§pop() / 2);
                     }
                     break;
                  }
               }
               §§pop().§5]§(§§pop(),§§pop(),§§pop(),§§pop());
            }
            break;
         }
      }
   }
}

