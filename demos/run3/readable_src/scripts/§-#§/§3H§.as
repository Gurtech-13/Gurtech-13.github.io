package §-#§
{
   import §!!$§.§ 6§;
   import §6!Q§.§]u§;
   import §=w§.§,D§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   
   public class §3H§ implements §+<§, §,D§
   {
      
      public static var instance:§3H§;
      
      public var §5$§:Boolean;
      
      public function §3H§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §5$§ = true;
         }
      }
      
      public static function §@!A§() : §3H§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §3H§;
         if(_loc3_)
         {
            if(§3H§.instance != null)
            {
               return §3H§.instance;
            }
         }
         return §3H§.instance = new §3H§();
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               if(param1 <= 0)
               {
                  break;
               }
               if(!_loc3_)
               {
                  §]u§.§@!A§().options.§3!_§.update(0);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §]u§.§@!A§().options.§3!_§.§4f§();
               if(_loc3_)
               {
                  break;
               }
            }
            §5$§ = true;
            break;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §5$§ = false;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return §5$§;
      }
   }
}

