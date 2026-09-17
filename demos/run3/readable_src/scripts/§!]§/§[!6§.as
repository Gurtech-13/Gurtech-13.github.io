package §!]§
{
   import § 0§.§>!0§;
   import §%!Q§.§6!a§;
   import §4n§.§>!,§;
   import com.player03.layout.§38§;
   import com.player03.run3.level.trigger.§<!§;
   import flash.display.Graphics;
   import flash.geom.Point;
   
   public class §[!6§
   {
      
      public static var init__:Boolean;
      
      public static var §-+§:Vector.<int>;
      
      public static var §-!]§:Vector.<Number>;
      
      public static var length:Point;
      
      public static var width:Point;
      
      public function §[!6§()
      {
      }
      
      public static function draw(param1:Graphics, param2:Point, param3:Number, param4:§38§, param5:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc6_:* = null as Point;
         var _loc7_:* = NaN;
         var _loc8_:* = null as Point;
         var _loc11_:* = 0;
         if(param5 == null)
         {
            param5 = false;
         }
         param1.endFill();
         §[!6§.length.x = Number(Math.cos(param3));
         if(!_loc12_)
         {
            §[!6§.length.y = Number(Math.sin(param3));
            if(_loc13_)
            {
               §[!6§.width.x = §[!6§.length.y;
               if(_loc13_)
               {
                  §[!6§.width.y = -§[!6§.length.x;
               }
            }
         }
         _loc6_ = §[!6§.length;
         if(!_loc12_)
         {
            §§push(24);
            §§push(param4.x);
            if(_loc13_)
            {
               §§push(§§pop() + param4.y);
               if(_loc13_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc12_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
            }
            §§push(§§pop() * §§pop());
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
            _loc7_ = §§pop();
         }
         _loc8_ = §[!6§.length;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc12_)
               {
                  if(_loc8_ != null)
                  {
                     break;
                  }
                  if(_loc12_)
                  {
                     break loop1;
                  }
               }
               _loc8_ = new Point(0,0);
               break;
            }
            _loc8_.x = _loc6_.x * _loc7_;
            if(!_loc12_)
            {
               break;
            }
            §§goto(addr010f);
         }
         _loc8_.y = _loc6_.y * _loc7_;
         addr010f:
         _loc6_ = §[!6§.width;
         if(_loc13_)
         {
            while(true)
            {
               §§push(10);
               §§push(param4.x);
               if(_loc13_)
               {
                  §§push(§§pop() + param4.y);
                  if(_loc12_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc12_)
               {
                  §§push(§§pop() / 2);
               }
               break;
            }
            §§push(§§pop() * §§pop());
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
            _loc7_ = §§pop();
         }
         _loc8_ = §[!6§.width;
         if(_loc13_)
         {
            while(true)
            {
               if(_loc8_ == null)
               {
                  if(_loc12_)
                  {
                     break;
                  }
                  _loc8_ = new Point(0,0);
               }
               _loc8_.x = _loc6_.x * _loc7_;
               if(!_loc12_)
               {
                  _loc8_.y = _loc6_.y * _loc7_;
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               param1.moveTo(param2.x,param2.y);
               break;
            }
         }
         §§push(0);
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(int(§[!6§.§-!]§.length));
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         loop5:
         while(true)
         {
            while(true)
            {
               if(_loc13_)
               {
                  while(_loc9_ < _loc10_)
                  {
                     §§push(_loc9_);
                     if(_loc13_)
                     {
                        _loc9_++;
                        if(!_loc12_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc11_ = §§pop();
                     if(_loc13_)
                     {
                        param1.lineStyle(§[!6§.§-!]§[_loc11_] * ((param4.x + param4.y) / 2),§[!6§.§-+§[_loc11_]);
                     }
                     _loc6_ = §[!6§.length;
                     if(!_loc12_)
                     {
                        §§push(_loc11_ + 0.75);
                        if(!_loc12_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc7_ = §§pop();
                        if(_loc13_)
                        {
                           param1.lineTo(param2.x + _loc6_.x * _loc7_,param2.y + _loc6_.y * _loc7_);
                        }
                     }
                  }
                  if(_loc13_)
                  {
                     if(param5)
                     {
                        break;
                     }
                     if(_loc12_)
                     {
                        break loop5;
                     }
                  }
               }
               param1.lineStyle(8 * ((param4.x + param4.y) / 2),1118481);
               break loop5;
            }
            return;
         }
         _loc6_ = §[!6§.width;
         if(!_loc12_)
         {
            param1.moveTo(param2.x + _loc6_.x * 0.9,param2.y + _loc6_.y * 0.9);
         }
         _loc6_ = §[!6§.width;
         _loc8_ = §[!6§.length;
         if(!_loc12_)
         {
            param1.lineTo(param2.x + _loc6_.x * 0.9 + _loc8_.x * 1.8,param2.y + _loc6_.y * 0.9 + _loc8_.y * 1.8);
         }
         _loc6_ = §[!6§.width;
         _loc8_ = §[!6§.length;
         if(!_loc12_)
         {
            param1.lineTo(param2.x + _loc6_.x * 2 + _loc8_.x * 1.8,param2.y + _loc6_.y * 2 + _loc8_.y * 1.8);
         }
         _loc6_ = §[!6§.length;
         if(_loc13_)
         {
            param1.lineTo(param2.x + _loc6_.x * 3,param2.y + _loc6_.y * 3);
         }
         _loc6_ = §[!6§.length;
         if(_loc13_)
         {
            param1.moveTo(param2.x + _loc6_.x * 3,param2.y + _loc6_.y * 3);
         }
         _loc6_ = §[!6§.width;
         _loc8_ = §[!6§.length;
         if(_loc13_)
         {
            param1.lineTo(param2.x + _loc6_.x * -2 + _loc8_.x * 1.8,param2.y + _loc6_.y * -2 + _loc8_.y * 1.8);
         }
         _loc6_ = §[!6§.width;
         _loc8_ = §[!6§.length;
         if(_loc13_)
         {
            param1.lineTo(param2.x + _loc6_.x * -0.9 + _loc8_.x * 1.8,param2.y + _loc6_.y * -0.9 + _loc8_.y * 1.8);
         }
         _loc6_ = §[!6§.width;
         if(_loc13_)
         {
            param1.lineTo(param2.x + _loc6_.x * -0.9,param2.y + _loc6_.y * -0.9);
         }
         break loop6;
      }
   }
}

