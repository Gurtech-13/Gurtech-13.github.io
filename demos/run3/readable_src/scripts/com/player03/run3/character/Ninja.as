package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%G§.§ m§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.Level;
   import flash.geom.Rectangle;
   
   public class Ninja extends CharacterBase
   {
      
      public var §>!G§:§,S§;
      
      public function Ninja(param1:Level, param2:CharacterDef)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as Vector.<§ m§>;
         if(!_loc7_)
         {
            super(param1,param2);
         }
         var _loc3_:Vector.<§ m§> = §`!C§;
         §§push(int(_loc3_.indexOf(§?`§,0)));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            while(true)
            {
               if(_loc4_ != -1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc5_ = _loc3_.splice(_loc4_,1);
               }
               §>!G§ = new §,S§(this,184,296);
               if(_loc6_)
               {
                  §`!C§.push(§>!G§);
               }
               break;
            }
         }
      }
   }
}

