package §1!a§
{
   import §^!0§.§;!I§;
   
   public class §0!+§
   {
      
      public var SecondsToRecharge:int;
      
      public var RechargeTime:Date;
      
      public var RechargeMax:int;
      
      public function §0!+§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         SecondsToRecharge = param1.SecondsToRecharge;
         RechargeTime = §;!I§.§6Z§(param1.RechargeTime);
         RechargeMax = param1.RechargeMax;
      }
   }
}

