package lime.app
{
   public class §=!Q§
   {
      
      public var §=z§:Boolean = false;
      
      public var §"!!§:Array = [];
      
      public var §8!P§:Array = [];
      
      public var §=v§:Array = [];
      
      public function §=!Q§()
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
      
      public function §[!S§(param1:Number, param2:Number, param3:int) : void
      {
         §=z§ = false;
         var _loc4_:Array = §=v§;
         var _loc5_:Array = §"!!§;
         var _loc6_:int = 0;
         while(_loc6_ < int(_loc4_.length))
         {
            _loc4_[_loc6_](param1,param2,param3);
            if(!Boolean(_loc5_[_loc6_]))
            {
               remove(_loc4_[_loc6_]);
            }
            else
            {
               _loc6_++;
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

