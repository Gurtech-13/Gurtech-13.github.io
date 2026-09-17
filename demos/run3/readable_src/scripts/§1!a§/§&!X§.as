package §1!a§
{
   import §^!0§.§;!I§;
   
   public class §&!X§
   {
      
      public var isBanned:Boolean;
      
      public var Origination:String;
      
      public var LastLogin:Date;
      
      public var FirstLogin:Date;
      
      public var DisplayName:String;
      
      public var Created:Date;
      
      public function §&!X§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         DisplayName = param1.DisplayName;
         Origination = param1.Origination;
         Created = §;!I§.§6Z§(param1.Created);
         LastLogin = §;!I§.§6Z§(param1.LastLogin);
         FirstLogin = §;!I§.§6Z§(param1.FirstLogin);
         isBanned = param1.isBanned;
      }
   }
}

