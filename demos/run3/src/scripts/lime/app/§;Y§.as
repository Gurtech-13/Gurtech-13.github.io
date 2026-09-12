package lime.app
{
   public class §;Y§
   {
      
      public var §=z§:Boolean = false;
      
      public var §"!!§:Array = [];
      
      public var §8!P§:Array = [];
      
      public var §=v§:Array = [];
      
      public function §;Y§()
      {
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

