package com.player03.run3.api
{
   import §1!a§.§75§;
   import §1!a§.§^u§;
   import com.player03.run3.level.§!!Q§;
   
   public class News implements §+<§
   {
      
      public static var instance:News;
      
      public var §8,§:Array;
      
      public function News()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(PlayFabAPI.§@!A§().§0U§ != null)
            {
               if(_loc1_)
               {
                  §4!,§();
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               §§push(GlobalEventManager);
               §§push("PLAYFAB_LOGIN");
               §§push(§4!,§);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
            }
         }
      }
      
      public static function §@!A§() : News
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as News;
         if(_loc2_)
         {
            if(News.instance != null)
            {
               return News.instance;
            }
         }
         return News.instance = new News();
      }
      
      public function §4!,§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(PlayFabAPI.§@!A§());
            §§push(3);
            §§push(§-q§);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().getTitleNews(§§pop(),§§pop());
         }
      }
      
      public function §-q§(param1:§^u§) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as §75§;
         §§push([]);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1.News);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               while(_loc3_ < int(_loc4_.length))
               {
                  _loc5_ = _loc4_[_loc3_];
                  if(!_loc7_)
                  {
                     _loc3_++;
                     if(_loc6_)
                     {
                        _loc2_.push(new §4!b§(_loc5_));
                     }
                  }
               }
               if(!_loc7_)
               {
                  §8,§ = _loc2_;
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            GlobalEventManager.dispatchEvent("gotNews");
            break;
         }
      }
   }
}

