package com.player03.run3.level.trigger.specific
{
   import §!!$§.§ 6§;
   import §-d§.§4?§;
   import §6!Q§.§#W§;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §6!Q§.§]u§;
   import §<?§.§#!7§;
   import §=w§.§,D§;
   import §>!O§.§#!6§;
   import §`_§.§7d§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.trigger.§8]§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.menu.§ L§;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import haxe.ds.StringMap;
   import haxeutils.sound.§5! §;
   
   public class NoJumpingOrAbilities extends §8]§
   {
      
      public var §=!5§:int;
      
      public var §4p§:int;
      
      public function NoJumpingOrAbilities(param1:§<!§, param2:§ !W§, param3:int)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super.reset();
               if(tunnel.characters == null)
               {
                  if(_loc2_)
                  {
                     §=!5§ = 0;
                     §4p§ = 0;
                  }
                  break;
               }
               §=!5§ = tunnel.analytics.§1v§;
            }
            §4p§ = tunnel.analytics.§]!-§;
            break;
         }
      }
      
      override public function §5!0§() : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§6M§ = tunnel.characters[0];
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     §§push(super.§5!0§());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(tunnel.analytics.§1v§);
                  if(_loc2_)
                  {
                     §§push(§=!5§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr009f);
               }
               if(§§pop())
               {
                  break loop0;
               }
               §§goto(addr00ad);
               return false;
            }
            return §§pop();
         }
         addr00a5:
         addr009f:
         §§push(tunnel.analytics.§]!-§ == §4p§);
         if(!_loc3_)
         {
            break loop1;
         }
         addr00ad:
         return §§pop();
      }
   }
}

