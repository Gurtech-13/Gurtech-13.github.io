package
{
   import §!!"§.§,X§;
   import §6!E§.§%m§;
   import flash.Boot;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class §,l§
   {
      
      public static var init__:Boolean;
      
      public static var §=!D§:int;
      
      public static var §8!R§:int;
      
      public static var §3h§:int;
      
      public static var §>g§:int;
      
      public static var §#!'§:int;
      
      public static var §;!<§:int;
      
      public static var §@!P§:int;
      
      public var parent:§,l§;
      
      public var §#p§:String;
      
      public var §8! §:int;
      
      public var §?;§:String;
      
      public var §@!`§:Array = [];
      
      public var §'v§:§=!U§ = new StringMap();
      
      public function §,l§(param1:int)
      {
         §8! § = param1;
      }
      
      public static function parse(param1:String) : §,l§
      {
         return §%m§.parse(param1);
      }
      
      public static function §1!-§(param1:String) : §,l§
      {
         var _loc2_:§,l§ = new §,l§(§,l§.§=!D§);
         if(_loc2_.§8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element but found " + _loc2_.§8! §;
         }
         _loc2_.§?;§ = param1;
         return _loc2_;
      }
      
      public static function §>R§(param1:String) : §,l§
      {
         var _loc2_:§,l§ = new §,l§(§,l§.§8!R§);
         if(_loc2_.§8! § == §,l§.§@!P§ || _loc2_.§8! § == §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, unexpected " + _loc2_.§8! §;
         }
         _loc2_.§#p§ = param1;
         return _loc2_;
      }
      
      public static function §^x§(param1:String) : §,l§
      {
         var _loc2_:§,l§ = new §,l§(§,l§.§3h§);
         if(_loc2_.§8! § == §,l§.§@!P§ || _loc2_.§8! § == §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, unexpected " + _loc2_.§8! §;
         }
         _loc2_.§#p§ = param1;
         return _loc2_;
      }
      
      public static function §&!8§(param1:String) : §,l§
      {
         var _loc2_:§,l§ = new §,l§(§,l§.§>g§);
         if(_loc2_.§8! § == §,l§.§@!P§ || _loc2_.§8! § == §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, unexpected " + _loc2_.§8! §;
         }
         _loc2_.§#p§ = param1;
         return _loc2_;
      }
      
      public static function §%!_§(param1:String) : §,l§
      {
         var _loc2_:§,l§ = new §,l§(§,l§.§#!'§);
         if(_loc2_.§8! § == §,l§.§@!P§ || _loc2_.§8! § == §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, unexpected " + _loc2_.§8! §;
         }
         _loc2_.§#p§ = param1;
         return _loc2_;
      }
      
      public static function §[M§(param1:String) : §,l§
      {
         var _loc2_:§,l§ = new §,l§(§,l§.§;!<§);
         if(_loc2_.§8! § == §,l§.§@!P§ || _loc2_.§8! § == §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, unexpected " + _loc2_.§8! §;
         }
         _loc2_.§#p§ = param1;
         return _loc2_;
      }
      
      public static function §%<§() : §,l§
      {
         return new §,l§(§,l§.§@!P§);
      }
      
      public function §1!R§(param1:String, param2:String) : void
      {
         if(§8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element but found " + §8! §;
         }
         var _loc3_:StringMap = §'v§;
         if(param1 in StringMap.§+!#§)
         {
            _loc3_.setReserved(param1,param2);
         }
         else
         {
            _loc3_.h[param1] = param2;
         }
      }
      
      public function removeChild(param1:§,l§) : Boolean
      {
         if(§8! § != §,l§.§@!P§ && §8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element or Document but found " + §8! §;
         }
         if(Boolean(§@!`§.remove(param1)))
         {
            param1.parent = null;
            return true;
         }
         return false;
      }
      
      public function get(param1:String) : String
      {
         if(§8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element but found " + §8! §;
         }
         var _loc2_:StringMap = §'v§;
         if(param1 in StringMap.§+!#§)
         {
            return _loc2_.getReserved(param1);
         }
         return _loc2_.h[param1];
      }
      
      public function §@<§() : §,l§
      {
         var _loc3_:* = null as §,l§;
         if(§8! § != §,l§.§@!P§ && §8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element or Document but found " + §8! §;
         }
         var _loc1_:int = 0;
         var _loc2_:Array = §@!`§;
         while(_loc1_ < int(_loc2_.length))
         {
            _loc3_ = _loc2_[_loc1_];
            _loc1_++;
            if(_loc3_.§8! § == §,l§.§=!D§)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function exists(param1:String) : Boolean
      {
         if(§8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element but found " + §8! §;
         }
         var _loc2_:StringMap = §'v§;
         if(param1 in StringMap.§+!#§)
         {
            return _loc2_.existsReserved(param1);
         }
         return param1 in _loc2_.h;
      }
      
      public function §2T§(param1:String) : Object
      {
         var _loc5_:* = null as §,l§;
         var _loc6_:Boolean = false;
         if(§8! § != §,l§.§@!P§ && §8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element or Document but found " + §8! §;
         }
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         var _loc4_:Array = §@!`§;
         while(_loc3_ < int(_loc4_.length))
         {
            _loc5_ = _loc4_[_loc3_];
            _loc3_++;
            if(_loc5_.§8! § == §,l§.§=!D§)
            {
               if(_loc5_.§8! § != §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, expected Element but found " + _loc5_.§8! §;
               }
               _loc6_ = _loc5_.§?;§ == param1;
            }
            else
            {
               _loc6_ = false;
            }
            if(_loc6_)
            {
               _loc2_.push(_loc5_);
            }
         }
         _loc4_ = _loc2_;
         return _loc4_.iterator();
      }
      
      public function §4!T§() : Object
      {
         var _loc4_:* = null as §,l§;
         if(§8! § != §,l§.§@!P§ && §8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element or Document but found " + §8! §;
         }
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         var _loc3_:Array = §@!`§;
         while(_loc2_ < int(_loc3_.length))
         {
            _loc4_ = _loc3_[_loc2_];
            _loc2_++;
            if(_loc4_.§8! § == §,l§.§=!D§)
            {
               _loc1_.push(_loc4_);
            }
         }
         _loc3_ = _loc1_;
         return _loc3_.iterator();
      }
      
      public function §7!#§() : Object
      {
         if(§8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element but found " + §8! §;
         }
         var _loc1_:StringMap = §'v§;
         return new §,X§(_loc1_.h,_loc1_.rh);
      }
      
      public function addChild(param1:§,l§) : void
      {
         if(§8! § != §,l§.§@!P§ && §8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element or Document but found " + §8! §;
         }
         if(param1.parent != null)
         {
            param1.parent.removeChild(param1);
         }
         §@!`§.push(param1);
         param1.parent = this;
      }
   }
}

