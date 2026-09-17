package layout3d
{
   public class §"S§
   {
      
      public var positionIterator3D:Object;
      
      public var positionIterator2D:Object;
      
      public var level:§>N§;
      
      public var §]!F§:PositionData3D;
      
      public var §0u§:§+F§;
      
      public var count:int;
      
      public function §"S§(param1:§>N§, param2:§+F§, param3:Object = undefined, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  count = 0;
                  if(!_loc6_)
                  {
                     break;
                  }
                  level = param1;
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §0u§ = param2;
               if(!_loc5_)
               {
                  break loop0;
               }
               §§goto(addr0063);
            }
            return;
         }
         positionIterator2D = param3;
         if(_loc6_)
         {
            addr0063:
            positionIterator3D = param4;
         }
         break loop1;
      }
   }
}

