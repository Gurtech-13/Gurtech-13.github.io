package §&!3§
{
   public class §'z§
   {
      
      public var vector:Object;
      
      public var index:int;
      
      public function §'z§(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               vector = param1;
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(index));
            §§push(int(param1.length));
            if(!_loc2_)
            {
               §§push(§§pop() - 1);
            }
            §§pop().index = §§pop();
            break;
         }
      }
      
      public function next() : Object
      {
         var _temp_2:* = vector;
         var _loc1_:int;
         index = (_loc1_ = index) - 1;
         return _temp_2[_loc1_];
      }
      
      public function hasNext() : Boolean
      {
         return index >= 0;
      }
   }
}

