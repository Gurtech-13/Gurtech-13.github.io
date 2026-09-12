package com.player03.run3.level
{
   import §4n§.Achievements;
   import §=w§.§,D§;
   import com.player03.run3.character.§6M§;
   
   public class §8!M§ implements §,D§
   {
      
      public var tunnel:§ !W§;
      
      public var §0;§:§1G§;
      
      public var §`§:int;
      
      public var §7!-§:int;
      
      public var §7!7§:§1G§;
      
      public var §1v§:int;
      
      public var §;!1§:§1G§;
      
      public var §]!-§:int;
      
      public function §8!M§(param1:§ !W§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §`§ = 0;
         §]!-§ = 0;
         §7!-§ = 0;
         §1v§ = 0;
         tunnel = param1;
         if(_loc2_)
         {
            §0;§ = new §1G§();
            §7!7§ = new §1G§();
         }
         §;!1§ = new §1G§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§6M§ = tunnel.characters[0];
         if(!_loc3_)
         {
            if(_loc2_.physicsData.onGround)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     §§push(tunnel.unpausedTime);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - §7!7§.§9!8§);
                     }
                     if(§§pop() > 10)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        Achievements.§]!@§.§,Y§();
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                  }
                  §7!7§.§-K§(_loc2_);
                  break;
               }
            }
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §1v§ = 0;
         §7!-§ = 0;
         while(true)
         {
            if(_loc2_)
            {
               §]!-§ = 0;
               §`§ = 0;
               if(!_loc2_)
               {
                  break;
               }
               §0;§.§-K§(tunnel.characters[0]);
               if(!_loc2_)
               {
                  break;
               }
            }
            §7!7§.§-K§(tunnel.characters[0]);
            §;!1§.§-K§(tunnel.characters[0]);
            break;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
   }
}

