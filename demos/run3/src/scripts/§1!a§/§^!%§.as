package §1!a§
{
   import §^!0§.§;!I§;
   
   public class §^!%§
   {
      
      public var Version:uint;
      
      public var StatisticName:String;
      
      public var ScheduledDeactivationTime:Date;
      
      public var ScheduledActivationTime:Date;
      
      public var DeactivationTime:Date;
      
      public var ActivationTime:Date;
      
      public function §^!%§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         StatisticName = param1.StatisticName;
         Version = param1.Version;
         ScheduledActivationTime = §;!I§.§6Z§(param1.ScheduledActivationTime);
         ActivationTime = §;!I§.§6Z§(param1.ActivationTime);
         ScheduledDeactivationTime = §;!I§.§6Z§(param1.ScheduledDeactivationTime);
         DeactivationTime = §;!I§.§6Z§(param1.DeactivationTime);
      }
   }
}

