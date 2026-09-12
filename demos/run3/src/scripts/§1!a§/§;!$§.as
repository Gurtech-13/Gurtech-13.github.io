package §1!a§
{
   import §^!0§.§;!I§;
   
   public class §;!$§
   {
      
      public var SettingsForUser:§1E§;
      
      public var SessionTicket:String;
      
      public var PlayFabId:String;
      
      public var NewlyCreated:Boolean;
      
      public var LastLoginTime:Date;
      
      public var InfoResultPayload:§<!W§;
      
      public function §;!$§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         SessionTicket = param1.SessionTicket;
         PlayFabId = param1.PlayFabId;
         NewlyCreated = param1.NewlyCreated;
         SettingsForUser = new §1E§(param1.SettingsForUser);
         LastLoginTime = §;!I§.§6Z§(param1.LastLoginTime);
         InfoResultPayload = new §<!W§(param1.InfoResultPayload);
      }
   }
}

