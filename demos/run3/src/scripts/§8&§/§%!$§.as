package §8&§
{
   import unitsystem.§7o§;
   
   public class §%!$§
   {
      
      public var thumbnail:String;
      
      public var rating:String;
      
      public var permalink:String;
      
      public var name:String;
      
      public var label:String;
      
      public var id:int;
      
      public var content:String;
      
      public var author:String;
      
      public function §%!$§(param1:*)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         id = param1.id;
         name = param1.name;
         permalink = param1.permalink;
         content = param1.content;
         while(true)
         {
            if(_loc2_)
            {
               label = param1.label;
               if(!_loc2_)
               {
                  break;
               }
               thumbnail = param1.thumbnail;
               if(_loc2_)
               {
                  author = param1.author;
               }
            }
            rating = param1.rating;
            break;
         }
      }
   }
}

