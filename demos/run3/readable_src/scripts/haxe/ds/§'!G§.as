package haxe.ds
{
   public class §'!G§
   {
      
      public var value:Object;
      
      public var right:§'!G§;
      
      public var left:§'!G§;
      
      public var key:Object;
      
      public var §9!A§:int;
      
      public function §'!G§(param1:§'!G§, param2:Object, param3:Object, param4:§'!G§, param5:int = -1)
      {
         var _loc6_:int = 0;
         var _loc7_:* = null as §'!G§;
         var _loc8_:* = null as §'!G§;
         var _loc9_:* = null as §'!G§;
         left = param1;
         key = param2;
         value = param3;
         right = param4;
         if(param5 == -1)
         {
            _loc7_ = left;
            _loc8_ = right;
            if((_loc7_ == null ? 0 : _loc7_.§9!A§) > (_loc8_ == null ? 0 : _loc8_.§9!A§))
            {
               _loc9_ = left;
               if(_loc9_ == null)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = _loc9_.§9!A§;
               }
            }
            else
            {
               _loc9_ = right;
               if(_loc9_ == null)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = _loc9_.§9!A§;
               }
            }
            §9!A§ = _loc6_ + 1;
         }
         else
         {
            §9!A§ = param5;
         }
      }
   }
}

