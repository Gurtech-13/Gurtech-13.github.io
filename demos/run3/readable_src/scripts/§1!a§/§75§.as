package §1!a§
{
   import §^!0§.§;!I§;
   
   public class §75§
   {
      
      public var Title:String;
      
      public var Timestamp:Date;
      
      public var NewsId:String;
      
      public var Body:String;
      
      public function §75§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         Timestamp = §;!I§.§6Z§(param1.Timestamp);
         NewsId = param1.NewsId;
         Title = param1.Title;
         Body = param1.Body;
      }
   }
}

