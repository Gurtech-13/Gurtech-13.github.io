package world3d
{
   import geom3d.Transform;
   import com.player03.run3.character.Climber;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   import unitsystem.§7o§;
   
   public class Billboard extends Entity3D
   {
      
      public static var init__:Boolean;
      
      public static var axis:Point3D;
      
      public var up:Point3D;
      
      public function Billboard(param1:World, param2:Point3D, param3:Boolean = false, param4:Model = undefined)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_)
         {
            super(param1,param3,param4);
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param2.x * param2.x);
               if(!_loc8_)
               {
                  §§push(param2.y * param2.y);
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     break loop0;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc7_)
               {
                  §§push(param2.z);
                  if(!_loc8_)
                  {
                     break;
                  }
                  addr005e:
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               break loop0;
            }
            §§goto(addr005e);
         }
         var _loc5_:* = §§pop();
         §§push(_loc5_);
         if(!_loc8_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc6_);
                     if(!_loc8_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc7_)
                           {
                              break loop4;
                           }
                           addr00bc:
                           §§push(_loc6_ < 1e-10);
                           if(!_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop3;
                           }
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(_loc6_);
                           if(_loc7_)
                           {
                              §§goto(addr00bc);
                              §§push(-§§pop());
                           }
                        }
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc8_)
                     {
                        param2.x = 0;
                        param2.y = -1;
                        if(!_loc7_)
                        {
                           break loop3;
                        }
                     }
                     param2.z = 0;
                     break loop3;
                  }
                  §§push(1 / Number(Math.sqrt(_loc5_)));
                  if(_loc7_)
                  {
                     break loop2;
                  }
                  §§goto(addr010b);
               }
               §§goto(addr010d);
            }
            up = param2;
            §§goto(addr0155);
         }
         addr010b:
         _loc5_ = Number(§§pop());
         addr010d:
         param2.x *= _loc5_;
         if(!_loc8_)
         {
            param2.y *= _loc5_;
            if(_loc8_)
            {
               break loop3;
            }
         }
         §§push(param2);
         §§push(param2.z);
         if(_loc7_)
         {
            §§push(§§pop() * _loc5_);
         }
         §§pop().z = §§pop();
         if(_loc7_)
         {
            break loop3;
         }
         addr0155:
      }
      
      public static function lookAt(param1:Transform, param2:Transform, param3:Point3D = undefined, param4:Boolean = true) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc6_:* = null as Point3D;
         var _loc5_:Point3D = param2.getPosition();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  _loc5_.x = 0;
                  if(!_loc9_)
                  {
                     _loc5_.y = 0;
                     if(!_loc8_)
                     {
                        break;
                     }
                     _loc5_.z = -1;
                     if(_loc9_)
                     {
                        break loop0;
                     }
                  }
               }
               QuaternionUtils.rotateVector(param2.getRotation(),_loc5_,_loc5_);
               if(!_loc9_)
               {
                  break;
               }
               break loop0;
            }
            if(param3 == null)
            {
               break;
            }
            _loc6_ = Billboard.axis;
            while(true)
            {
               if(_loc8_)
               {
                  _loc6_.x = param3.x;
                  if(_loc8_)
                  {
                     _loc6_.y = param3.y;
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
               }
               _loc6_.z = param3.z;
               break;
            }
            §§goto(addr00ee);
         }
         _loc6_ = Billboard.axis;
         while(true)
         {
            if(_loc8_)
            {
               _loc6_.x = 0;
               if(!_loc9_)
               {
                  _loc6_.y = -1;
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc6_.z = 0;
                  if(_loc8_)
                  {
                     addr00ee:
                     if(!param4)
                     {
                        break;
                     }
                     if(_loc9_)
                     {
                        break;
                     }
                  }
               }
            }
            QuaternionUtils.rotateVector(param2.getRotation(),Billboard.axis,Billboard.axis);
            break;
         }
         var _loc7_:Quaternion = param1.getRotation();
         if(_loc8_)
         {
            QuaternionUtils.fromAxes(_loc5_,Billboard.axis,_loc7_);
            if(!_loc9_)
            {
               param1.setRotation(_loc7_);
            }
         }
      }
      
      override public function display(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               super.display(param1);
               if(!_loc2_)
               {
                  break;
               }
            }
            Billboard.lookAt(transform,world.camera,up);
            break;
         }
      }
   }
}

