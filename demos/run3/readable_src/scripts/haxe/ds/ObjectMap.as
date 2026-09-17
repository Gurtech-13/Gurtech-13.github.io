package haxe.ds
{
   import §4F§.§4!L§;
   import flash.utils.Dictionary;
   import haxe.§=!U§;
   
   public dynamic class ObjectMap extends Dictionary implements §=!U§
   {
      
      public function ObjectMap()
      {
         super(false);
      }
      
      public function §1!R§(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = param1;
         this[_loc3_] = param2;
      }
      
      public function remove(param1:Object) : Boolean
      {
         var _loc2_:Object = param1;
         var _loc3_:Boolean = this[_loc2_] != null;
         delete this[_loc2_];
         return _loc3_;
      }
      
      public function keys() : Object
      {
         var _loc1_:§4!L§ = new §4!L§();
         _loc1_.§5V§ = this;
         return _loc1_;
      }
      
      public function get(param1:Object) : Object
      {
         var _loc2_:Object = param1;
         return this[_loc2_];
      }
      
      public function exists(param1:Object) : Boolean
      {
         var _loc2_:Object = param1;
         return this[_loc2_] != null;
      }
   }
}

