package §^!0§
{
   public class §%2§
   {
      
      public var httpStatus:String;
      
      public var httpCode:int;
      
      public var errorMessage:String;
      
      public var errorCode:int;
      
      public var error:String;
      
      public function §%2§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         httpCode = param1.code;
         httpStatus = param1.status;
         error = param1.error;
         errorCode = param1.errorCode;
         errorMessage = param1.errorMessage;
      }
   }
}

