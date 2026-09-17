package §[^§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import geom3d.Transform;
   import scenes.§+!"§;
   import world3d.Entity3D;
   import world3d.World;
   import com.player03.layout.§ 7§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import nme3D.model.Model;
   
   public class §4i§ extends Entity3D
   {
      
      public var § !a§:Number;
      
      public function §4i§(param1:World, param2:Model, param3:Number = 0.1)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               super(param1,false,param2);
               if(_loc4_)
               {
                  break;
               }
            }
            § !a§ = param3;
            break;
         }
      }
      
      override public function display(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Transform = §!C§.§<!M§;
         §§push(_loc2_.position.z);
         if(!_loc5_)
         {
            §§push(§§pop() + 1500);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_)
         {
            §§push(§§pop() - transform.§%!7§.z);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc6_)
            {
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * (1 - § !a§));
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               _loc4_ = §§pop();
               if(_loc5_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(model);
               §§push(transform.§%!7§.z);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(_loc2_.position.z);
               if(!_loc5_)
               {
                  §§push(§§pop() + 3000);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§#"§(§§pop() < §§pop());
            while(true)
            {
               if(_loc6_)
               {
                  break loop0;
               }
               addr0142:
               super.display(param1);
               break;
            }
            §§goto(addr014a);
         }
         §§push(model.visible);
         if(!_loc5_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(_loc6_)
            {
               return;
            }
         }
         else
         {
            while(true)
            {
               §§push(transform);
               §§push(_loc2_.position.x + transform.§%!7§.x);
               §§push(_loc2_.position.y + transform.§%!7§.y);
               §§push(transform.§%!7§.z);
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc4_);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§6!&§(§§pop(),§§pop(),§§pop());
            if(!_loc5_)
            {
               §§goto(addr0142);
            }
         }
         addr014a:
      }
   }
}

