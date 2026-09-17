package §1!a§
{
   public class §`!9§
   {
      
      public var KongregateId:String;
      
      public var ForceLink:Boolean;
      
      public var AuthTicket:String;
      
      public function §`!9§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         KongregateId = param1.KongregateId;
         AuthTicket = param1.AuthTicket;
         ForceLink = param1.ForceLink;
      }
   }
}

