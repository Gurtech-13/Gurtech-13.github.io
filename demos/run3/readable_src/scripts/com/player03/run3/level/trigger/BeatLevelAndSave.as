package com.player03.run3.level.trigger
{
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   
   public class BeatLevelAndSave extends §8]§
   {
      
      public var §>!H§:Boolean;
      
      public function BeatLevelAndSave(param1:§<!§, param2:Level, param3:int)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §>!H§ = false;
            if(!_loc5_)
            {
               super(param1,param2,param3);
            }
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super.reset();
               if(!_loc1_)
               {
                  break;
               }
            }
            §>!H§ = false;
            break;
         }
      }
      
      override public function §5!0§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  §§push(super.§5!0§());
                  if(_loc2_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc1_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(false);
                     break;
                  }
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               tunnel.§?!I§.§%!U§(tunnel.characters[0].§73§.§[9§,tunnel.characters[0].§73§,tunnel.§3j§);
               break loop0;
            }
            return §§pop();
         }
         §§push(true);
         if(_loc1_)
         {
            return §§pop();
         }
         break loop1;
      }
   }
}

