package §1!a§
{
   public class §5!T§
   {
      
      public var SteamId:String;
      
      public var SteamCurrency:String;
      
      public var SteamCountry:String;
      
      public var SteamActivationStatus:String;
      
      public function §5!T§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         SteamId = param1.SteamId;
         SteamCountry = param1.SteamCountry;
         SteamCurrency = param1.SteamCurrency;
         SteamActivationStatus = param1.SteamActivationStatus;
      }
   }
}

