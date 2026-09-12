package lime.app
{
   public class §!T§
   {
      
      public var §=z§:Boolean = false;
      
      public var §"!!§:Array = [];
      
      public var §8!P§:Array = [];
      
      public var §=v§:Array = [];
      
      public function §!T§()
      {
      }
      
      public function remove(param1:Object) : void
      {
         var _loc2_:int = int(§=v§.length);
         while(--_loc2_ >= 0)
         {
            if(Reflect.§<!Q§(§=v§[_loc2_],param1))
            {
               §=v§.splice(_loc2_,1);
               §8!P§.splice(_loc2_,1);
               §"!!§.splice(_loc2_,1);
            }
         }
      }
      
      public function §[!S§(param1:int, param2:int) : void
      {
         §=z§ = false;
         var _loc3_:Array = §=v§;
         var _loc4_:Array = §"!!§;
         var _loc5_:int = 0;
         while(_loc5_ < int(_loc3_.length))
         {
            _loc3_[_loc5_](param1,param2);
            if(!Boolean(_loc4_[_loc5_]))
            {
               remove(_loc3_[_loc5_]);
            }
            else
            {
               _loc5_++;
            }
            if(§=z§)
            {
               break;
            }
         }
      }
      
      public function add(param1:Object, param2:Boolean = false, param3:int = 0) : void
      {
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = int(§8!P§.length);
         while(_loc4_ < _loc5_)
         {
            _loc6_ = _loc4_++;
            if(param3 > int(§8!P§[_loc6_]))
            {
               §=v§.insert(_loc6_,param1);
               §8!P§.insert(_loc6_,param3);
               §"!!§.insert(_loc6_,!param2);
               return;
            }
         }
         §=v§.push(param1);
         §8!P§.push(param3);
         §"!!§.push(!param2);
      }
   }
}

