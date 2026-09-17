package §1!a§
{
   public class §55§
   {
      
      public var Permission:String;
      
      public var KeysToRemove:Array;
      
      public var Data:*;
      
      public function §55§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.Data != null)
         {
            Data = param1.Data;
         }
         KeysToRemove = param1.KeysToRemove;
         Permission = param1.Permission;
      }
   }
}

