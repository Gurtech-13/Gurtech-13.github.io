package com.player03.run3.api
{
   import §1!a§.§75§;
   
   public class §4!b§
   {
      
      public var title:String;
      
      public var timestamp:Date;
      
      public var summary:String;
      
      public var fullText:String;
      
      public var §]!=§:Object;
      
      public function §4!b§(param1:§75§)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null;
         while(true)
         {
            if(!_loc4_)
            {
               title = param1.Title;
               if(!_loc3_)
               {
                  break;
               }
               timestamp = param1.Timestamp;
               if(!_loc3_)
               {
                  break;
               }
               if(param1.Body.charCodeAt(0) != 123)
               {
                  fullText = param1.Body;
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
            }
            _loc2_ = JSON.parse(param1.Body);
            if(!_loc4_)
            {
               summary = _loc2_.summary;
               if(_loc4_)
               {
                  break;
               }
               fullText = _loc2_.fullText;
               if(!_loc3_)
               {
                  break;
               }
            }
            §]!=§ = _loc2_.timestamp;
            break;
         }
      }
   }
}

