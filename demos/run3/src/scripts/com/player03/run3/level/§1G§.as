package com.player03.run3.level
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§6M§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class §1G§
   {
      
      public var §9!8§:Number;
      
      public var §9_§:TunnelSection;
      
      public var §%%§:Number;
      
      public var §5F§:int;
      
      public var §&5§:Point3D;
      
      public function §1G§(param1:§6M§ = undefined)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §&5§ = new Point3D(0,0,0);
            if(_loc2_)
            {
               if(param1 != null)
               {
                  if(_loc2_)
                  {
                     §-K§(param1);
                  }
               }
            }
         }
      }
      
      public function §-K§(param1:§6M§) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:§ !W§ = param1.tunnel;
         if(!_loc6_)
         {
            if(param1.§73§ != null)
            {
               if(!_loc6_)
               {
                  §9_§ = param1.§73§;
                  if(!_loc5_)
                  {
                     addr0082:
                     §9_§ = _loc2_.§]!#§(param1.transform.position.z,false);
                  }
               }
               else
               {
                  addr0063:
                  if(§9_§ == null)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr0082);
                     }
                  }
               }
            }
            else
            {
               §9_§ = _loc2_.§]!#§(param1.transform.position.z,true);
               if(_loc5_)
               {
                  §§goto(addr0063);
               }
            }
         }
         var _loc3_:Point3D = §&5§;
         var _loc4_:Point3D = param1.transform.§2!§();
         _loc3_.x = _loc4_.x;
         while(true)
         {
            if(!_loc6_)
            {
               _loc3_.y = _loc4_.y;
               if(!_loc5_)
               {
                  break;
               }
               _loc3_.z = _loc4_.z;
               if(_loc5_)
               {
                  §%%§ = param1.§"!$§;
               }
               §9!8§ = _loc2_.unpausedTime;
               if(!_loc5_)
               {
                  break;
               }
            }
            §5F§ = _loc2_.§<!;§;
            break;
         }
      }
      
      public function §8!6§() : §1G§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:§1G§ = new §1G§();
         if(!_loc4_)
         {
            _loc1_.§9_§ = §9_§;
         }
         var _loc2_:Point3D = §&5§;
         while(true)
         {
            if(!_loc4_)
            {
               _loc1_.§&5§ = new Point3D(_loc2_.x,_loc2_.y,_loc2_.z);
               if(_loc3_)
               {
                  _loc1_.§%%§ = §%%§;
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            _loc1_.§9!8§ = §9!8§;
            if(_loc3_)
            {
               break;
            }
            §§goto(addr0097);
         }
         _loc1_.§5F§ = §5F§;
         addr0097:
         return _loc1_;
      }
   }
}

