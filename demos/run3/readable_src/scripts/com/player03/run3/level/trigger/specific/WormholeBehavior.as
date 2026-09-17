package com.player03.run3.level.trigger.specific
{
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   
   public class WormholeBehavior extends §,!A§
   {
      
      public var action:§'!P§;
      
      public function WormholeBehavior(param1:§<!§, param2:Level, param3:int)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               §§push(this);
               §§push(§§findproperty(§<!§));
               §§push(§5A§);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().super(new §§pop().§<!§(§§pop()),param2,188);
               if(_loc5_)
               {
                  break;
               }
            }
            action = new §'!P§();
            break;
         }
      }
      
      override public function §5!0§() : Boolean
      {
         return true;
      }
      
      public function §5A§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as CharacterBase;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<CharacterBase> = tunnel.characters;
         if(!_loc5_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc5_)
               {
                  _loc1_++;
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc3_.§4=§(action,Number(Math.POSITIVE_INFINITY));
            }
         }
      }
   }
}

