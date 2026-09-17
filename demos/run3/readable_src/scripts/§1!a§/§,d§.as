package §1!a§
{
   import §^!0§.§;!I§;
   
   public class §,d§
   {
      
      public var UsesIncrementedBy:int;
      
      public var UnitPrice:uint;
      
      public var UnitCurrency:String;
      
      public var RemainingUses:int;
      
      public var PurchaseDate:Date;
      
      public var ItemInstanceId:String;
      
      public var ItemId:String;
      
      public var ItemClass:String;
      
      public var Expiration:Date;
      
      public var DisplayName:String;
      
      public var CustomData:*;
      
      public var CatalogVersion:String;
      
      public var BundleParent:String;
      
      public var BundleContents:Array;
      
      public var Annotation:String;
      
      public function §,d§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         ItemId = param1.ItemId;
         ItemInstanceId = param1.ItemInstanceId;
         ItemClass = param1.ItemClass;
         PurchaseDate = §;!I§.§6Z§(param1.PurchaseDate);
         Expiration = §;!I§.§6Z§(param1.Expiration);
         RemainingUses = param1.RemainingUses;
         UsesIncrementedBy = param1.UsesIncrementedBy;
         Annotation = param1.Annotation;
         CatalogVersion = param1.CatalogVersion;
         BundleParent = param1.BundleParent;
         DisplayName = param1.DisplayName;
         UnitCurrency = param1.UnitCurrency;
         UnitPrice = param1.UnitPrice;
         BundleContents = param1.BundleContents;
         if(param1.CustomData != null)
         {
            CustomData = param1.CustomData;
         }
      }
   }
}

