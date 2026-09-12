package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import §%!Q§.§>K§;
   import §+Y§.§#d§;
   import §2X§.PositionData3D;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§1!1§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §@=§ extends §#!G§
   {
      
      public var §%u§:Number;
      
      public var §9_§:TunnelSection;
      
      public var index:int;
      
      public function §@=§(param1:int)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this);
            §§push(§[+§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            if(!_loc2_)
            {
               index = param1;
            }
         }
      }
      
      override public function §7q§(param1:§ !W§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = null as TunnelSection;
         var _loc3_:* = null as PositionData3D;
         var _loc4_:* = null as §1!1§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc5_)
                  {
                     §§push(false);
                     if(_loc5_)
                     {
                        break;
                     }
                     if(param1.characters == null)
                     {
                        break;
                     }
                     if(!_loc6_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
                  §§push(int(param1.characters.length) > 0);
                  if(_loc6_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  break loop0;
               }
               _loc2_ = param1.§1W§;
               §§goto(addr0094);
            }
            §§push(Boolean(§§pop()));
            break loop4;
         }
         _loc2_ = param1.characters[0].§73§;
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  addr0094:
                  if(_loc2_ == §9_§)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop2;
                  }
               }
               §9_§ = _loc2_;
               break loop2;
            }
            return;
         }
         _loc3_ = §9_§.layout.§<!C§(index);
         _loc4_ = §4!R§.§,![§(_loc3_.rotation);
         if(_loc6_)
         {
            if(_loc4_.z >= 0)
            {
               §%u§ = _loc4_.angle;
               break loop3;
            }
            if(!_loc6_)
            {
               break loop3;
            }
         }
         §§push(§§findproperty(§%u§));
         §§push(_loc4_.angle);
         if(_loc6_)
         {
            §§push(-§§pop());
         }
         §§pop().§%u§ = §§pop();
         if(_loc5_)
         {
         }
         break loop3;
      }
      
      public function §[+§(param1:§ !W§) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1.characters[0].§"!$§);
         if(_loc4_)
         {
            §§push(§§pop() - §%u§);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     if(§§pop() >= 0)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                     }
                     else
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§push(-§§pop());
                        if(_loc3_)
                        {
                           break loop1;
                        }
                     }
                     if(§§pop() < 0.0001)
                     {
                        break;
                     }
                     §§push(0);
                     break loop0;
                  }
               }
               §§push(1);
               if(_loc4_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
   }
}

