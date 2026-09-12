package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §2!W§.§&!6§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   
   public class §'5§ extends § m§
   {
      
      public var §>@§:int;
      
      public var §^-§:int;
      
      public var §"@§:§6M§;
      
      public function §'5§(param1:§6M§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §>@§ = 1;
         super(param1);
         if(!_loc2_)
         {
            §"@§ = param1;
            §`B§ = "jump";
         }
         buffer = 0.15;
         §§push(§§findproperty(§=!7§));
         §§push(§=!7§);
         if(!_loc2_)
         {
            §§push(§§pop() | 0x20);
         }
         §§pop().§=!7§ = §§pop();
         §§push(param1);
         §§push("jumpsRestored");
         §§push(§!f§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         §§pop().addEventListener(§§pop(),§§pop());
         reset();
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super.update(param1);
               if(!_loc3_)
               {
                  break;
               }
            }
            if(§ !B§.physicsData.onGround)
            {
               if(!_loc2_)
               {
                  §^-§ = 0;
               }
            }
            break;
         }
      }
      
      override public function §-A§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(§§findproperty(§^-§));
            §§push(§^-§);
            if(!_loc1_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().§^-§ = §§pop();
            while(true)
            {
               if(_loc2_)
               {
                  var _temp_2:* = §"@§.tunnel.analytics;
                  §§push(_temp_2);
                  §§push(_temp_2.§]!-§);
                  if(_loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().§]!-§ = §§pop();
                  if(_loc1_)
                  {
                     break;
                  }
               }
               §"@§.§%$§(§`B§);
               break;
            }
         }
      }
      
      public function §!f§(param1:§&!6§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §^-§ = 0;
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §^-§ = 0;
            if(_loc2_)
            {
               super.reset();
            }
         }
      }
      
      override public function §0!1§() : Boolean
      {
         return true;
      }
      
      override public function § A§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            while(true)
            {
               §§push(false);
               if(!_loc1_)
               {
                  if(§^-§ >= §>@§)
                  {
                     break;
                  }
               }
               §§pop();
               if(!_loc1_)
               {
                  §§push(§#!F§());
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break;
               }
            }
            if(!§§pop())
            {
               return false;
            }
         }
         return !§ !B§.physicsData.onGround;
      }
   }
}

