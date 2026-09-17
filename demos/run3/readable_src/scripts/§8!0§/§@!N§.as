package §8!0§
{
   import §"!L§.§%z§;
   import §4!6§.§!!V§;
   import §4!8§.§1!3§;
   import §4n§.Achievement;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§,a§;
   import flash.events.Event;
   
   public class §@!N§
   {
      
      public var vertices:§!!V§;
      
      public var length:int;
      
      public var index:int;
      
      public function §@!N§(param1:§!!V§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               index = 0;
               if(!_loc3_)
               {
                  vertices = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            while(true)
            {
               §§push(§§findproperty(length));
               §§push(param1.§@!Y§.length);
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(§§pop() / param1.§5G§);
               }
               §§push(int(§§pop()));
               break;
            }
            §§pop().length = §§pop();
            break;
         }
      }
      
      public function next() : §!!V§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:§!!V§ = vertices;
         §§push(_loc1_);
         §§push(_loc1_.§5G§);
         §§push(§§findproperty(index));
         var _temp_1:* = index;
         §§push(_temp_1);
         §§push(_temp_1);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().index = §§pop();
         if(!_loc4_)
         {
            §§push(§§pop() * _loc2_);
         }
         §§pop().offset = §§pop();
         return _loc1_;
      }
      
      public function hasNext() : Boolean
      {
         return index < length;
      }
   }
}

