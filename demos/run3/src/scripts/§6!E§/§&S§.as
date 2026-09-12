package §6!E§
{
   public class §&S§
   {
      
      public var §4!]§:String;
      
      public var §^!M§:int;
      
      public var position:int;
      
      public var message:String;
      
      public var lineNumber:int;
      
      public function §&S§(param1:String, param2:String, param3:int)
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         §4!]§ = param2;
         message = param1;
         position = param3;
         lineNumber = 1;
         §^!M§ = 0;
         var _loc4_:int = 0;
         var _loc5_:int = param3;
         while(_loc4_ < _loc5_)
         {
            _loc6_ = _loc4_++;
            _loc7_ = int(param2.charCodeAt(_loc6_));
            if(_loc7_ == 10)
            {
               ++lineNumber;
               §^!M§ = 0;
            }
            else if(_loc7_ != 13)
            {
               ++§^!M§;
            }
         }
      }
      
      public function toString() : String
      {
         return Type.§#G§(Type.§2!$§(this)) + ": " + message + " at line " + lineNumber + " char " + §^!M§;
      }
   }
}

