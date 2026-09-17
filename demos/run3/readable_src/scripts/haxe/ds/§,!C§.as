package haxe.ds
{
   import flash.Boot;
   
   public class §,!C§
   {
      
      public var §2?§:§'!G§;
      
      public function §,!C§()
      {
      }
      
      public function §2!_§(param1:Object, param2:Object, param3:§'!G§) : §'!G§
      {
         var _loc5_:* = null as §'!G§;
         if(param3 == null)
         {
            return new §'!G§(null,param1,param2,null);
         }
         var _loc4_:int = §?!2§(param1,param3.key);
         if(_loc4_ == 0)
         {
            return new §'!G§(param3.left,param1,param2,param3.right,param3 == null ? 0 : param3.§9!A§);
         }
         if(_loc4_ < 0)
         {
            _loc5_ = §2!_§(param1,param2,param3.left);
            return §[U§(_loc5_,param3.key,param3.value,param3.right);
         }
         _loc5_ = §2!_§(param1,param2,param3.right);
         return §[U§(param3.left,param3.key,param3.value,_loc5_);
      }
      
      public function §1!R§(param1:Object, param2:Object) : void
      {
         §2?§ = §2!_§(param1,param2,§2?§);
      }
      
      public function §<!F§(param1:§'!G§) : §'!G§
      {
         if(param1.left == null)
         {
            return param1.right;
         }
         return §[U§(§<!F§(param1.left),param1.key,param1.value,param1.right);
      }
      
      public function §'X§(param1:Object, param2:§'!G§) : §'!G§
      {
         if(param2 == null)
         {
            Boot.lastError = new Error();
            throw "Not_found";
         }
         var _loc3_:int = §?!2§(param1,param2.key);
         if(_loc3_ == 0)
         {
            return §%Q§(param2.left,param2.right);
         }
         if(_loc3_ < 0)
         {
            return §[U§(§'X§(param1,param2.left),param2.key,param2.value,param2.right);
         }
         return §[U§(param2.left,param2.key,param2.value,§'X§(param1,param2.right));
      }
      
      public function remove(param1:Object) : Boolean
      {
         var _loc3_:* = null as String;
         try
         {
            §2?§ = §'X§(param1,§2?§);
            return true;
         }
         catch(_loc_e_:String)
         {
            _loc3_ = _loc_e_;
            return false;
         }
      }
      
      public function §9w§(param1:§'!G§) : §'!G§
      {
         if(param1 == null)
         {
            Boot.lastError = new Error();
            throw "Not_found";
         }
         if(param1.left == null)
         {
            return param1;
         }
         return §9w§(param1.left);
      }
      
      public function §%Q§(param1:§'!G§, param2:§'!G§) : §'!G§
      {
         if(param1 == null)
         {
            return param2;
         }
         if(param2 == null)
         {
            return param1;
         }
         var _loc3_:§'!G§ = §9w§(param2);
         return §[U§(param1,_loc3_.key,_loc3_.value,§<!F§(param2));
      }
      
      public function §?!1§(param1:§'!G§, param2:Array) : void
      {
         if(param1 != null)
         {
            §?!1§(param1.left,param2);
            param2.push(param1.key);
            §?!1§(param1.right,param2);
         }
      }
      
      public function keys() : Object
      {
         var _loc1_:Array = [];
         §?!1§(§2?§,_loc1_);
         return _loc1_.iterator();
      }
      
      public function §"Y§(param1:§'!G§, param2:Array) : void
      {
         if(param1 != null)
         {
            §"Y§(param1.left,param2);
            param2.push(param1.value);
            §"Y§(param1.right,param2);
         }
      }
      
      public function iterator() : Object
      {
         var _loc1_:Array = [];
         §"Y§(§2?§,_loc1_);
         return _loc1_.iterator();
      }
      
      public function get(param1:Object) : Object
      {
         var _loc3_:int = 0;
         var _loc2_:§'!G§ = §2?§;
         while(_loc2_ != null)
         {
            _loc3_ = §?!2§(param1,_loc2_.key);
            if(_loc3_ == 0)
            {
               return _loc2_.value;
            }
            if(_loc3_ < 0)
            {
               _loc2_ = _loc2_.left;
            }
            else
            {
               _loc2_ = _loc2_.right;
            }
         }
         return null;
      }
      
      public function exists(param1:Object) : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:§'!G§ = §2?§;
         while(_loc2_ != null)
         {
            _loc3_ = §?!2§(param1,_loc2_.key);
            if(_loc3_ == 0)
            {
               return true;
            }
            if(_loc3_ < 0)
            {
               _loc2_ = _loc2_.left;
            }
            else
            {
               _loc2_ = _loc2_.right;
            }
         }
         return false;
      }
      
      public function §?!2§(param1:Object, param2:Object) : int
      {
         return Reflect.§?!2§(param1,param2);
      }
      
      public function §[U§(param1:§'!G§, param2:Object, param3:Object, param4:§'!G§) : §'!G§
      {
         var _loc7_:* = null as §'!G§;
         var _loc8_:* = null as §'!G§;
         var _loc5_:int = param1 == null ? 0 : param1.§9!A§;
         var _loc6_:int = param4 == null ? 0 : param4.§9!A§;
         if(_loc5_ > _loc6_ + 2)
         {
            _loc7_ = param1.left;
            _loc8_ = param1.right;
            if((_loc7_ == null ? 0 : _loc7_.§9!A§) >= (_loc8_ == null ? 0 : _loc8_.§9!A§))
            {
               return new §'!G§(param1.left,param1.key,param1.value,new §'!G§(param1.right,param2,param3,param4));
            }
            return new §'!G§(new §'!G§(param1.left,param1.key,param1.value,param1.right.left),param1.right.key,param1.right.value,new §'!G§(param1.right.right,param2,param3,param4));
         }
         if(_loc6_ > _loc5_ + 2)
         {
            _loc7_ = param4.right;
            _loc8_ = param4.left;
            if((_loc7_ == null ? 0 : _loc7_.§9!A§) > (_loc8_ == null ? 0 : _loc8_.§9!A§))
            {
               return new §'!G§(new §'!G§(param1,param2,param3,param4.left),param4.key,param4.value,param4.right);
            }
            return new §'!G§(new §'!G§(param1,param2,param3,param4.left.left),param4.left.key,param4.left.value,new §'!G§(param4.left.right,param4.key,param4.value,param4.right));
         }
         return new §'!G§(param1,param2,param3,param4,(_loc5_ > _loc6_ ? _loc5_ : _loc6_) + 1);
      }
   }
}

