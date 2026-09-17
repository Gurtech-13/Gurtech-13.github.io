package haxe
{
   import flash.Boot;
   
   public class §%t§
   {
      
      public function §%t§()
      {
      }
      
      public static function §%w§() : Array
      {
         var _loc1_:Array = §%t§.§22§(new Error().getStackTrace());
         _loc1_.shift();
         return _loc1_;
      }
      
      public static function §!!H§() : Array
      {
         var _loc1_:Error = Boot.lastError;
         if(_loc1_ == null)
         {
            return [];
         }
         var _loc2_:Array = §%t§.§22§(_loc1_.getStackTrace());
         var _loc3_:Array = §%t§.§%w§();
         var _loc4_:int = int(_loc3_.length) - 1;
         while(_loc4_ > 0)
         {
            if(Std.string(_loc2_[int(_loc2_.length) - 1]) != Std.string(_loc3_[_loc4_]))
            {
               break;
            }
            _loc2_.pop();
            _loc4_--;
         }
         return _loc2_;
      }
      
      public static function toString(param1:Array) : String
      {
         var _loc4_:* = null as §6`§;
         var _loc2_:StringBuf = new StringBuf();
         var _loc3_:int = 0;
         while(_loc3_ < int(param1.length))
         {
            _loc4_ = param1[_loc3_];
            _loc3_++;
            _loc2_.b += "\nCalled from ";
            §%t§.§!!C§(_loc2_,_loc4_);
         }
         return _loc2_.b;
      }
      
      public static function §!!C§(param1:StringBuf, param2:§6`§) : void
      {
         var _loc3_:* = null as String;
         var _loc4_:int = 0;
         var _loc5_:* = null as §6`§;
         var _loc6_:* = null as String;
         var _loc7_:* = null;
         switch(param2.index)
         {
            case 0:
               param1.b += "a C function";
               break;
            case 1:
               _loc3_ = param2.params[0];
               param1.b += "module ";
               param1.b += _loc3_ == null ? "null" : "" + _loc3_;
               break;
            case 2:
               _loc4_ = int(param2.params[2]);
               _loc3_ = param2.params[1];
               _loc5_ = param2.params[0];
               if(_loc5_ != null)
               {
                  §%t§.§!!C§(param1,_loc5_);
                  param1.b += " (";
               }
               param1.b += _loc3_ == null ? "null" : "" + _loc3_;
               param1.b += " line ";
               param1.b += "" + _loc4_;
               if(_loc5_ != null)
               {
                  param1.b += ")";
               }
               break;
            case 3:
               _loc3_ = param2.params[1];
               _loc6_ = param2.params[0];
               param1.b += _loc6_ == null ? "null" : "" + _loc6_;
               param1.b += ".";
               param1.b += _loc3_ == null ? "null" : "" + _loc3_;
               break;
            case 4:
               _loc7_ = param2.params[0];
               param1.b += "local function #";
               param1.b += _loc7_ == null ? "null" : "" + _loc7_;
         }
      }
      
      public static function §22§(param1:String) : Array
      {
         var _loc5_:* = null as String;
         var _loc6_:* = null as String;
         var _loc7_:* = null as §6`§;
         var _loc2_:Array = [];
         var _loc3_:EReg = new EReg("at ([^/]+?)\\$?(/[^\\(]+)?\\(\\)(\\[(.*?):([0-9]+)\\])?","");
         var _loc4_:EReg = new EReg("^MethodInfo-([0-9]+)$","g");
         while(_loc3_.match(param1))
         {
            _loc5_ = _loc3_.matched(1).split("::").join(".");
            _loc6_ = _loc3_.matched(2);
            if(_loc6_ == null)
            {
               if(_loc4_.match(_loc5_))
               {
                  _loc7_ = §6`§.LocalFunction(Std.parseInt(_loc4_.matched(1)));
               }
               else
               {
                  _loc7_ = §6`§.Method(_loc5_,"new");
               }
            }
            else
            {
               _loc7_ = §6`§.Method(_loc5_,_loc6_.substr(1));
            }
            if(_loc3_.matched(3) != null)
            {
               _loc7_ = §6`§.FilePos(_loc7_,_loc3_.matched(4),Std.parseInt(_loc3_.matched(5)));
            }
            _loc2_.push(_loc7_);
            param1 = _loc3_.matchedRight();
         }
         return _loc2_;
      }
   }
}

