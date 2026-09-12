package §1!a§
{
   public class §8U§
   {
      
      public var TitleId:String;
      
      public var KongregateId:String;
      
      public var InfoRequestParameters:§>2§;
      
      public var CreateAccount:Boolean;
      
      public var AuthTicket:String;
      
      public function §8U§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         TitleId = param1.TitleId;
         KongregateId = param1.KongregateId;
         AuthTicket = param1.AuthTicket;
         CreateAccount = param1.CreateAccount;
         InfoRequestParameters = new §>2§(param1.InfoRequestParameters);
      }
   }
}

