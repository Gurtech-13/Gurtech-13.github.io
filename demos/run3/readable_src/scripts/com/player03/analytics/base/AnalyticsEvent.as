package com.player03.analytics.base
{
   import com.player03.analytics.§8!3§;
   
   public class AnalyticsEvent
   {
      
      public var properties:*;
      
      public var collectionName:String;
      
      public function AnalyticsEvent(param1:String)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            collectionName = param1;
            if(!_loc4_)
            {
               properties = {};
            }
         }
         §§push(§8!3§.toString(Date.now()));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            properties["event_time"] = _loc2_;
         }
      }
   }
}

