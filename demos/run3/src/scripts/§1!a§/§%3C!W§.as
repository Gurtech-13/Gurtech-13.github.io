package §1!a§
{
   public class §<!W§
   {
      
      public var UserVirtualCurrencyRechargeTimes:*;
      
      public var UserVirtualCurrency:*;
      
      public var UserReadOnlyDataVersion:uint;
      
      public var UserReadOnlyData:*;
      
      public var UserInventory:Array;
      
      public var UserDataVersion:uint;
      
      public var UserData:*;
      
      public var TitleData:*;
      
      public var PlayerStatistics:Array;
      
      public var CharacterList:Array;
      
      public var CharacterInventories:Array;
      
      public var AccountInfo:§;!^§;
      
      public function §<!W§(param1:* = undefined)
      {
         var _loc2_:* = null as Array;
         var _loc3_:int = 0;
         var _loc4_:* = null as Array;
         var _loc5_:* = null;
         var _loc6_:* = null as String;
         var _loc7_:* = null;
         var _loc8_:* = null as §0!+§;
         var _loc9_:* = null as §0!0§;
         if(param1 == null)
         {
            return;
         }
         AccountInfo = new §;!^§(param1.AccountInfo);
         if(param1.UserInventory != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.UserInventory;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §,d§(_loc5_));
            }
            UserInventory = _loc2_;
         }
         if(param1.UserVirtualCurrency != null)
         {
            UserVirtualCurrency = param1.UserVirtualCurrency;
         }
         if(param1.UserVirtualCurrencyRechargeTimes != null)
         {
            _loc5_ = {};
            UserVirtualCurrencyRechargeTimes = _loc5_;
            _loc3_ = 0;
            _loc2_ = Reflect.fields(param1.UserVirtualCurrencyRechargeTimes);
            while(_loc3_ < int(_loc2_.length))
            {
               _loc6_ = _loc2_[_loc3_];
               _loc3_++;
               _loc7_ = UserVirtualCurrencyRechargeTimes;
               _loc8_ = new §0!+§(Reflect.field(param1.UserVirtualCurrencyRechargeTimes,_loc6_));
               _loc7_[_loc6_] = _loc8_;
            }
         }
         if(param1.UserData != null)
         {
            _loc5_ = {};
            UserData = _loc5_;
            _loc3_ = 0;
            _loc2_ = Reflect.fields(param1.UserData);
            while(_loc3_ < int(_loc2_.length))
            {
               _loc6_ = _loc2_[_loc3_];
               _loc3_++;
               _loc7_ = UserData;
               _loc9_ = new §0!0§(Reflect.field(param1.UserData,_loc6_));
               _loc7_[_loc6_] = _loc9_;
            }
         }
         UserDataVersion = param1.UserDataVersion;
         if(param1.UserReadOnlyData != null)
         {
            _loc5_ = {};
            UserReadOnlyData = _loc5_;
            _loc3_ = 0;
            _loc2_ = Reflect.fields(param1.UserReadOnlyData);
            while(_loc3_ < int(_loc2_.length))
            {
               _loc6_ = _loc2_[_loc3_];
               _loc3_++;
               _loc7_ = UserReadOnlyData;
               _loc9_ = new §0!0§(Reflect.field(param1.UserReadOnlyData,_loc6_));
               _loc7_[_loc6_] = _loc9_;
            }
         }
         UserReadOnlyDataVersion = param1.UserReadOnlyDataVersion;
         if(param1.CharacterList != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.CharacterList;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §9A§(_loc5_));
            }
            CharacterList = _loc2_;
         }
         if(param1.CharacterInventories != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.CharacterInventories;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §7§(_loc5_));
            }
            CharacterInventories = _loc2_;
         }
         if(param1.TitleData != null)
         {
            TitleData = param1.TitleData;
         }
         if(param1.PlayerStatistics != null)
         {
            _loc2_ = [];
            _loc3_ = 0;
            _loc4_ = param1.PlayerStatistics;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc2_.push(new §<!!§(_loc5_));
            }
            PlayerStatistics = _loc2_;
         }
      }
   }
}

