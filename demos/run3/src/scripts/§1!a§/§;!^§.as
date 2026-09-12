package §1!a§
{
   import §^!0§.§;!I§;
   
   public class §;!^§
   {
      
      public var XboxInfo:§2!Y§;
      
      public var Username:String;
      
      public var TwitchInfo:§36§;
      
      public var TitleInfo:§&!X§;
      
      public var SteamInfo:§5!T§;
      
      public var PsnInfo:§@!H§;
      
      public var PrivateInfo:§;4§;
      
      public var PlayFabId:String;
      
      public var KongregateInfo:§,!T§;
      
      public var IosDeviceInfo:§>!<§;
      
      public var GoogleInfo:§<z§;
      
      public var GameCenterInfo:§%o§;
      
      public var FacebookInfo:§<>§;
      
      public var CustomIdInfo:§8!#§;
      
      public var Created:Date;
      
      public var AndroidDeviceInfo:§0!6§;
      
      public function §;!^§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         PlayFabId = param1.PlayFabId;
         Created = §;!I§.§6Z§(param1.Created);
         Username = param1.Username;
         TitleInfo = new §&!X§(param1.TitleInfo);
         PrivateInfo = new §;4§(param1.PrivateInfo);
         FacebookInfo = new §<>§(param1.FacebookInfo);
         SteamInfo = new §5!T§(param1.SteamInfo);
         GameCenterInfo = new §%o§(param1.GameCenterInfo);
         IosDeviceInfo = new §>!<§(param1.IosDeviceInfo);
         AndroidDeviceInfo = new §0!6§(param1.AndroidDeviceInfo);
         KongregateInfo = new §,!T§(param1.KongregateInfo);
         TwitchInfo = new §36§(param1.TwitchInfo);
         PsnInfo = new §@!H§(param1.PsnInfo);
         GoogleInfo = new §<z§(param1.GoogleInfo);
         XboxInfo = new §2!Y§(param1.XboxInfo);
         CustomIdInfo = new §8!#§(param1.CustomIdInfo);
      }
   }
}

