package world3d
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import scenes.MyTurn;
   import §]!C§.Physics;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Physics3D extends Physics
   {
      
      public var §>h§:Point3D;
      
      public var §#O§:Number;
      
      public var §#!Q§:Point3D;
      
      public function Physics3D(param1:Number, param2:Number = 1)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               super.reset();
               while(true)
               {
                  if(_loc2_)
                  {
                     §#!Q§ = new Point3D(0,0,0);
                     if(_loc1_)
                     {
                        break;
                     }
                  }
                  §>h§ = new Point3D(0,0,0);
                  if(!_loc1_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §#O§ = 0;
            break;
         }
      }
      
      public function §?!D§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §=!W§(param1,param2,param3);
         §#!Q§.x = 0;
         §#!Q§.y = 0;
         §#!Q§.z = 0;
         §>h§.x = 0;
         while(true)
         {
            if(!_loc5_)
            {
               §>h§.y = 0;
               if(!_loc6_)
               {
                  break;
               }
               §>h§.z = 0;
               if(!_loc6_)
               {
                  break;
               }
            }
            §#O§ = param4;
            break;
         }
      }
      
      public function §2!`§(param1:Quaternion, param2:Number, param3:Number, param4:Number) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  _temp_2.x += param2;
                  if(_loc8_)
                  {
                     _temp_3.y += param3;
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  var _temp_4:* = §>h§;
                  §§push(_temp_4);
                  §§push(_temp_4.z);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + param4);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().z = §§pop();
                  if(!_loc8_)
                  {
                     break loop0;
                  }
               }
               if(param1 == null)
               {
                  if(_loc8_)
                  {
                     break loop0;
                  }
                  break;
               }
               QuaternionUtils.rotateVector(param1,§>h§,§#!Q§);
               break;
            }
            § !+§ = §#!Q§.x;
            if(!_loc7_)
            {
               §§goto(addr010f);
            }
            §§goto(addr011d);
         }
         _loc5_ = §#!Q§;
         _loc6_ = §>h§;
         if(_loc8_)
         {
            _loc5_.x = _loc6_.x;
            if(_loc7_)
            {
               break loop1;
            }
            _loc5_.y = _loc6_.y;
            if(!_loc8_)
            {
               break loop1;
            }
            _loc5_.z = _loc6_.z;
            if(!_loc7_)
            {
               break loop1;
            }
            §§goto(addr011d);
         }
         addr010f:
         §3!Y§ = §#!Q§.y;
         addr011d:
      }
   }
}

