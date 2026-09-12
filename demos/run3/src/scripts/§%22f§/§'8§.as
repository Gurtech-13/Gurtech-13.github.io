package §"f§
{
   import § 0§.§>!0§;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import openfl.Lib;
   
   public class §'8§
   {
      
      public var §>L§:String;
      
      public var description:String;
      
      public function §'8§(param1:String = undefined, param2:String = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               description = param1;
               if(!_loc4_)
               {
                  break;
               }
            }
            §>L§ = param2;
            break;
         }
      }
      
      public function getURL(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            Lib.getURL(new URLRequest(§>L§));
         }
      }
   }
}

