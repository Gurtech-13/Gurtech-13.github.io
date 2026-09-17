package §1!a§
{
   public class §#r§
   {
      
      public var ThruCDN:Boolean;
      
      public var Key:String;
      
      public var HttpMethod:String;
      
      public function §#r§(param1:* = undefined)
      {
         if(param1 == null)
         {
            return;
         }
         Key = param1.Key;
         HttpMethod = param1.HttpMethod;
         ThruCDN = param1.ThruCDN;
      }
   }
}

