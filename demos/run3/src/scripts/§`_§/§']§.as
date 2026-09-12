package §`_§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §<!&§.§%!§;
   import §>T§.§"=§;
   import §>T§.§@o§;
   import §>T§.§[C§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   
   public class §']§ extends §%!§
   {
      
      public function §']§(param1:§ !W§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(param1,false,§@o§.§,!'§(1));
         }
      }
      
      public function §[B§(param1:§[C§) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            transform.§1!R§(param1.transform);
         }
         var _loc2_:Point3D = param1.transform.§<!C§();
         var _loc3_:Point3D = param1.axis2.normal;
         §§push(param1.§[l§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Point3D = _loc2_;
         loop0:
         while(true)
         {
            if(!_loc6_)
            {
               while(true)
               {
                  if(_loc5_ == null)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     _loc5_ = new Point3D(0,0,0);
                  }
                  _loc5_.x = _loc3_.x * _loc4_;
                  if(_loc7_)
                  {
                     break;
                  }
                  addr00b1:
                  §§push(_loc5_);
                  §§push(_loc3_.z);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               _loc5_.y = _loc3_.y * _loc4_;
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr00b1);
            }
            transform.translate(_loc2_.x,_loc2_.y,_loc2_.z);
            break;
         }
      }
   }
}

