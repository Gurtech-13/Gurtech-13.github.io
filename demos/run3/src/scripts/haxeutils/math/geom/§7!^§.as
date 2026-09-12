package haxeutils.math.geom
{
   import flash.geom.Point;
   
   public class §7!^§
   {
      
      public function §7!^§()
      {
      }
      
      public static function § !I§(param1:Number, param2:Number, param3:Point, param4:Point, param5:Point = undefined) : Point
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc8_:* = NaN;
         var _loc10_:* = NaN;
         var _loc6_:Point = param5;
         §§push(Point2DUtils);
         §§push(param1);
         if(_loc11_)
         {
            §§push(§§pop() - param3.x);
         }
         §§push(param2);
         if(!_loc12_)
         {
            §§push(§§pop() - param3.y);
         }
         _loc6_ = §§pop().§-_§(§§pop(),§§pop(),param4.x - param3.x,param4.y - param3.y,_loc6_);
         var _loc7_:Point = _loc6_;
         loop0:
         while(true)
         {
            if(_loc11_)
            {
               while(true)
               {
                  if(_loc7_ == null)
                  {
                     if(!_loc11_)
                     {
                        break;
                     }
                     _loc7_ = new Point(0,0);
                  }
                  _loc7_.x = param3.x + _loc6_.x;
                  if(!_loc12_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            _loc7_.y = param3.y + _loc6_.y;
            break;
         }
         param5 = _loc6_;
         §§push(param3.x - param4.x);
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  if(!_loc12_)
                  {
                     §§push(_loc9_);
                     §§push(0);
                     if(!_loc11_)
                     {
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        §§push(-_loc9_);
                        continue loop6;
                     }
                     if(_loc12_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc9_);
                  continue loop6;
               }
               if(§§pop() <= §§pop())
               {
                  break loop2;
               }
               if(!_loc12_)
               {
                  param5.x = param4.x;
               }
               §§goto(addr01a9);
            }
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(1e-10);
                     if(!_loc12_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(Number(param3.x));
                           break;
                        }
                        if(_loc12_)
                        {
                           break loop6;
                        }
                        _loc10_ = Number(param3.y);
                        §§push(param5.y - _loc10_);
                        §§push(param4.y - _loc10_);
                        if(_loc12_)
                        {
                           break loop5;
                        }
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc12_)
                     {
                        break;
                     }
                     _loc8_ = §§pop();
                     if(!_loc12_)
                     {
                        break loop6;
                     }
                     §§goto(addr016d);
                  }
                  _loc10_ = §§pop();
                  if(_loc11_)
                  {
                     §§push(param5.x - _loc10_);
                     §§push(param4.x - _loc10_);
                     break loop5;
                  }
                  §§goto(addr01a9);
               }
               §§push(_loc8_);
               if(_loc11_)
               {
                  §§push(0);
                  if(!_loc11_)
                  {
                     break loop4;
                  }
                  if(§§pop() < §§pop())
                  {
                     if(!_loc11_)
                     {
                        break loop2;
                     }
                     param5.x = param3.x;
                     param5.y = param3.y;
                     addr016d:
                     if(!_loc12_)
                     {
                        break loop2;
                     }
                     §§goto(addr01a9);
                  }
                  else
                  {
                     §§push(_loc8_);
                  }
               }
               §§goto(addr0195);
            }
            §§push(§§pop() / §§pop());
            if(!_loc12_)
            {
               _loc8_ = §§pop();
               if(!_loc12_)
               {
                  break loop6;
               }
               addr01a9:
               param5.y = param4.y;
               break;
            }
            addr0195:
            §§push(1);
            break loop4;
         }
         return param5;
      }
   }
}

