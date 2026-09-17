package haxeutils.math.geom
{
   import flash.Boot;
   import flash.geom.Point;
   
   public class §9%§
   {
      
      public var vertices:Vector.<Point>;
      
      public var §;;§:Vector.<Number>;
      
      public function §9%§(param1:int, param2:Number)
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc6_:* = 0;
         var _loc11_:* = null as Point;
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc13_)
               {
                  if(param1 >= 3)
                  {
                     break;
                  }
                  if(!_loc12_)
                  {
                     break loop2;
                  }
               }
               Boot.lastError = new Error();
               if(!_loc13_)
               {
                  break loop2;
               }
               break;
            }
            vertices = new Vector.<Point>();
            if(_loc12_)
            {
               §;;§ = new Vector.<Number>();
            }
            §§push(6.283185307179586);
            if(!_loc13_)
            {
               §§push(§§pop() / param1);
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(0);
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param1);
            if(_loc12_)
            {
               §§push(int(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc12_)
            {
               loop0:
               while(_loc4_ < _loc5_)
               {
                  §§push(_loc4_);
                  if(_loc12_)
                  {
                     _loc4_++;
                     if(_loc12_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc6_ = §§pop();
                  if(_loc12_)
                  {
                     vertices.push(new Point(Number(Math.cos(_loc3_ * (_loc6_ - 0.5))),Number(Math.sin(_loc3_ * (_loc6_ - 0.5)))));
                     if(!_loc12_)
                     {
                        continue;
                     }
                  }
                  while(true)
                  {
                     §§push(§;;§);
                     §§push(_loc3_);
                     if(_loc12_)
                     {
                        §§push(§§pop() * _loc6_);
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + 1.5707963267948966);
                     if(!_loc13_)
                     {
                        break;
                     }
                     addr0126:
                     §§pop().push(§§pop());
                     continue loop0;
                  }
                  §§goto(addr0126);
               }
            }
            §§push(vertices[1].x - vertices[0].x);
            if(!_loc13_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(vertices[1].y - vertices[0].y);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(param2);
            if(!_loc13_)
            {
               §§push(§§pop() / Number(Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_)));
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc13_)
            {
               §§push(0);
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
               }
               _loc4_ = §§pop();
            }
            var _loc10_:Vector.<Point> = vertices;
            if(_loc12_)
            {
               loop1:
               while(_loc4_ < int(_loc10_.length))
               {
                  _loc11_ = _loc10_[_loc4_];
                  while(true)
                  {
                     if(_loc12_)
                     {
                        _loc4_++;
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     _loc11_.x *= _loc9_;
                     if(!_loc13_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  _loc11_.y *= _loc9_;
               }
            }
            return;
         }
         throw new ArgumentError("Polygons must have at least 3 sides; got " + param1);
      }
   }
}

