package §+!1§
{
   import geom3d.§]!Q§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import openfl.Lib;
   
   public class §;a§
   {
      
      public var start:Point3D;
      
      public var end:Point3D;
      
      public var §8W§:§]!Q§;
      
      public function §;a§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            start = new Point3D();
            if(_loc1_)
            {
               end = new Point3D();
               if(!_loc2_)
               {
                  §8W§ = new §]!Q§();
               }
            }
         }
      }
      
      public function §8Y§(param1:Scene3D) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Stage = Lib.get_current().stage;
         while(true)
         {
            §§push(start);
            §§push(end);
            §§push(_loc2_.mouseX / (_loc2_.stageWidth / 2));
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
               if(_loc5_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc3_:*;
         §§pop().x = _loc3_ = §§pop();
         §§pop().x = _loc3_;
         §§push(start);
         if(_loc4_)
         {
            while(true)
            {
               §§push(end);
               §§push(1 - _loc2_.mouseY / (_loc2_.stageHeight / 2));
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               _loc3_ = §§pop();
               §§push(_loc3_);
               break;
            }
            §§pop().y = §§pop();
         }
         §§pop().y = _loc3_;
         start.z = 0;
         end.z = 1;
         while(true)
         {
            if(!_loc5_)
            {
               param1.§8!"§(start,start);
               if(_loc5_)
               {
                  break;
               }
               param1.§8!"§(end,end);
               if(_loc5_)
               {
                  break;
               }
            }
            §%E§(param1);
            break;
         }
      }
      
      public function §%E§(param1:Scene3D) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §8W§.clear();
               if(_loc2_)
               {
                  break;
               }
            }
            §8W§.§%Y§(start);
            if(_loc3_)
            {
               §8W§.§%Y§(end);
            }
            break;
         }
      }
   }
}

