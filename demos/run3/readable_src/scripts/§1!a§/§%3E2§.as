package §1!a§
{
   public class §>2§
   {
      
      public var UserReadOnlyDataKeys:Array;
      
      public var UserDataKeys:Array;
      
      public var TitleDataKeys:Array;
      
      public var PlayerStatisticNames:Array;
      
      public var GetUserVirtualCurrency:Boolean;
      
      public var GetUserReadOnlyData:Boolean;
      
      public var GetUserInventory:Boolean;
      
      public var GetUserData:Boolean;
      
      public var GetUserAccountInfo:Boolean;
      
      public var GetTitleData:Boolean;
      
      public var GetPlayerStatistics:Boolean;
      
      public var GetCharacterList:Boolean;
      
      public var GetCharacterInventories:Boolean;
      
      public function §>2§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         GetUserAccountInfo = param1.GetUserAccountInfo;
         GetUserInventory = param1.GetUserInventory;
         GetUserVirtualCurrency = param1.GetUserVirtualCurrency;
         GetUserData = param1.GetUserData;
         UserDataKeys = param1.UserDataKeys;
         GetUserReadOnlyData = param1.GetUserReadOnlyData;
         UserReadOnlyDataKeys = param1.UserReadOnlyDataKeys;
         GetCharacterInventories = param1.GetCharacterInventories;
         GetCharacterList = param1.GetCharacterList;
         GetTitleData = param1.GetTitleData;
         TitleDataKeys = param1.TitleDataKeys;
         GetPlayerStatistics = param1.GetPlayerStatistics;
         PlayerStatisticNames = param1.PlayerStatisticNames;
      }
   }
}

