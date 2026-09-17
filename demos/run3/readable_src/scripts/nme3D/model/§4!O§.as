package nme3D.model
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §&!a§.§2g§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class §4!O§ extends Model
   {
      
      public static var init__:Boolean;
      
      public static var §92§:Vector.<uint>;
      
      public static var §>!4§:Rectangle;
      
      public var side2Segments:int;
      
      public var side1Segments:int;
      
      public function §4!O§(param1:Point3D, param2:Point3D, param3:Point3D, param4:int, param5:int, param6:int, param7:§'H§, param8:Object = undefined, param9:Rectangle = undefined, param10:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc36_:Boolean = false;
         var _loc37_:Boolean = _temp_1;
         var _loc13_:* = null as Vector.<uint>;
         var _loc14_:* = null as Vector.<uint>;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:* = 0;
         var _loc24_:* = null as §'!Y§;
         var _loc25_:* = false;
         var _loc26_:* = NaN;
         var _loc27_:int = 0;
         var _loc28_:* = 0;
         var _loc29_:* = NaN;
         var _loc30_:* = null as §!!V§;
         var _loc31_:* = null as §=s§;
         var _loc32_:Number = NaN;
         var _loc33_:* = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:* = NaN;
         while(true)
         {
            if(!_loc36_)
            {
               side1Segments = param5;
               if(_loc36_)
               {
                  break;
               }
            }
            side2Segments = param6;
            break;
         }
         §§push(1 / param5);
         if(_loc37_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(1 / param6);
         if(!_loc36_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         loop21:
         while(true)
         {
            while(true)
            {
               if(!_loc36_)
               {
                  §§push(false);
                  if(_loc36_)
                  {
                     break;
                  }
                  if(param5 != 1)
                  {
                     break;
                  }
                  if(_loc36_)
                  {
                     break;
                  }
                  §§pop();
                  if(_loc36_)
                  {
                     break loop21;
                  }
               }
               §§push(param6 == 1);
               if(!_loc36_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            _loc14_ = new Vector.<uint>(0,false);
            _loc13_ = _loc14_;
            if(_loc37_)
            {
               while(true)
               {
                  §§push(0);
                  if(!_loc36_)
                  {
                     §§push(int(§§pop()));
                     if(_loc36_)
                     {
                        break;
                     }
                  }
                  _loc15_ = §§pop();
                  if(_loc37_)
                  {
                     §§push(param5);
                     if(_loc36_)
                     {
                        break;
                     }
                     §§push(int(§§pop()));
                     if(_loc37_)
                     {
                        break;
                     }
                     while(§§pop() < _loc16_)
                     {
                        loop40:
                        while(true)
                        {
                           §§push(_loc15_++);
                           if(!_loc36_)
                           {
                              _loc17_ = int(§§pop());
                              if(_loc36_)
                              {
                                 break;
                              }
                              loop41:
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc36_)
                                 {
                                    _loc18_ = §§pop();
                                    §§push(param6);
                                    if(!_loc37_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc36_)
                                 {
                                    _loc19_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc18_);
                                       break loop41;
                                    }
                                    addr02d7:
                                 }
                                 while(true)
                                 {
                                    _loc18_++;
                                 }
                                 addr017f:
                              }
                              while(true)
                              {
                                 if(§§pop() >= _loc19_)
                                 {
                                    break loop40;
                                 }
                                 §§push(_loc18_);
                                 if(_loc36_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr017f);
                              }
                              break;
                              addr02d9:
                           }
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(_loc37_)
                              {
                                 _loc20_ = §§pop();
                                 §§push(_loc13_);
                                 §§push(_loc17_);
                                 if(!_loc36_)
                                 {
                                    §§push(_loc20_);
                                    if(_loc37_)
                                    {
                                       §§push(param5);
                                       if(_loc37_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().push(§§pop());
                                 if(!_loc37_)
                                 {
                                    break loop40;
                                 }
                                 §§push(_loc13_);
                                 §§push(_loc17_);
                                 if(!_loc36_)
                                 {
                                    while(true)
                                    {
                                       §§push(1);
                                       if(_loc37_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc37_)
                                          {
                                             break;
                                          }
                                          §§push(_loc20_);
                                          if(!_loc36_)
                                          {
                                             §§push(param5);
                                             if(!_loc36_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       break;
                                    }
                                 }
                                 §§pop().push(§§pop());
                                 while(true)
                                 {
                                    if(_loc37_)
                                    {
                                       §§push(_loc13_);
                                       §§push(_loc17_);
                                       if(_loc37_)
                                       {
                                          loop44:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc20_);
                                                if(!_loc36_)
                                                {
                                                   §§push(1);
                                                   if(!_loc37_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc37_)
                                                   {
                                                      break loop44;
                                                   }
                                                }
                                                §§push(param5);
                                                if(_loc37_)
                                                {
                                                   break;
                                                }
                                                addr021f:
                                                §§push(§§pop() * §§pop());
                                                break loop44;
                                             }
                                             §§goto(addr021f);
                                          }
                                       }
                                       §§pop().push(§§pop());
                                       loop46:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc13_);
                                             §§push(_loc17_);
                                             if(!_loc36_)
                                             {
                                                §§push(1);
                                                if(!_loc37_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc37_)
                                                {
                                                   break loop46;
                                                }
                                             }
                                             §§push(_loc20_);
                                             if(!_loc36_)
                                             {
                                                §§push(param5);
                                                if(_loc37_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             break;
                                          }
                                          §§push(§§pop() + §§pop());
                                          break;
                                       }
                                       §§pop().push(§§pop());
                                       if(!_loc36_)
                                       {
                                          §§push(_loc13_);
                                          §§push(_loc17_);
                                          if(_loc37_)
                                          {
                                             §§push(_loc20_);
                                             if(!_loc36_)
                                             {
                                                loop48:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(_loc37_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc36_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(param5);
                                                         if(!_loc37_)
                                                         {
                                                            break loop48;
                                                         }
                                                      }
                                                      §§push(§§pop() + 1);
                                                      break loop48;
                                                   }
                                                }
                                                §§push(§§pop() * §§pop());
                                                break loop49;
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().push(§§pop());
                                          if(!_loc37_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    loop50:
                                    while(true)
                                    {
                                       loop51:
                                       while(true)
                                       {
                                          §§push(_loc13_);
                                          §§push(_loc17_);
                                          if(_loc37_)
                                          {
                                             §§push(1);
                                             if(_loc36_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc36_)
                                             {
                                                break loop50;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc20_);
                                             if(!_loc36_)
                                             {
                                                §§push(1);
                                                if(_loc36_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc36_)
                                                {
                                                   break loop51;
                                                }
                                             }
                                             §§push(param5);
                                             if(!_loc36_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             break;
                                          }
                                          §§push(§§pop() * §§pop());
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       break;
                                    }
                                    §§pop().push(§§pop());
                                    break;
                                 }
                                 §§goto(addr02d7);
                              }
                              §§goto(addr02d9);
                           }
                           break;
                        }
                     }
                     §§goto(addr02e7);
                     addr02e1:
                  }
                  while(true)
                  {
                     §§goto(addr02e1);
                  }
                  addr02df:
               }
               _loc16_ = §§pop();
               if(_loc37_)
               {
                  §§goto(addr02df);
               }
            }
            §§goto(addr02e7);
         }
         _loc13_ = §4!O§.§92§;
         if(_loc37_)
         {
            addr02e7:
            §§push(param5);
            if(_loc37_)
            {
               while(true)
               {
                  §§push(1);
                  if(_loc37_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc36_)
                     {
                        break;
                     }
                     §§push(param6);
                     if(!_loc36_)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc37_)
                  {
                     §§push(int(§§pop()));
                  }
                  break;
               }
            }
            _loc15_ = §§pop();
         }
         var _loc21_:§!!V§ = Type.createInstance(param7.§?"§,[_loc15_,null]);
         if(_loc37_)
         {
            super(_loc21_,_loc13_,param7);
            if(!_loc36_)
            {
               §&]§(param1,param2,param3);
            }
         }
         var _loc22_:§!!V§ = vertices;
         if(_loc37_)
         {
            §§push(_loc22_);
            §§push(_loc22_.§5G§);
            if(!_loc36_)
            {
               §§push(§§pop() * 0);
            }
            §§pop().offset = §§pop();
         }
         while(true)
         {
            §§push(_loc22_.§25§("uv") == null);
            if(_loc37_)
            {
               §§push(!§§pop());
               if(!_loc37_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         var _loc23_:* = §§pop();
         loop25:
         while(true)
         {
            §§push(false);
            if(_loc37_)
            {
               while(true)
               {
                  if(_loc23_)
                  {
                     if(_loc37_)
                     {
                        §§pop();
                        §§push(param9 == null);
                        if(!_loc37_)
                        {
                           break;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc37_)
                     {
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc37_)
                     {
                        break loop25;
                     }
                     param9 = §4!O§.§>!4§;
                  }
                  if(param10 != null)
                  {
                     if(_loc36_)
                     {
                        break loop25;
                     }
                     param9 = §2g§.§`K§(param10,param9);
                  }
                  §§push(_loc23_);
                  if(!_loc36_)
                  {
                     §§push(!§§pop());
                  }
                  break;
               }
            }
            if(§§pop())
            {
               break;
            }
            §§push(0);
            if(!_loc36_)
            {
               §§push(int(§§pop()));
            }
            _loc16_ = §§pop();
            _loc24_ = §2_§.§'!D§(vertices,"uv");
            while(true)
            {
               §§push(false);
               if(!_loc36_)
               {
                  if(param10 != null)
                  {
                     §§pop();
                     §§push(true);
                     if(param10 != 1)
                     {
                        §§pop();
                        §§push(param10 == 3);
                        if(_loc36_)
                        {
                           break;
                        }
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               §§push(Boolean(§§pop()));
               break;
            }
            _loc25_ = §§pop();
            §§push(0);
            if(_loc37_)
            {
               while(true)
               {
                  §§push(int(§§pop()));
                  if(!_loc36_)
                  {
                     _loc17_ = §§pop();
                     §§push(param6);
                     if(_loc36_)
                     {
                        break;
                     }
                  }
                  §§push(1);
                  if(_loc37_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc36_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc36_)
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc18_);
                     }
                     addr0704:
                  }
                  while(§§pop() < §§pop())
                  {
                     §§push(_loc17_);
                     if(_loc37_)
                     {
                        _loc17_++;
                        loop29:
                        while(true)
                        {
                           if(_loc37_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc36_)
                              {
                                 _loc19_ = §§pop();
                                 if(_loc37_)
                                 {
                                    §§push(_loc19_);
                                    if(!_loc36_)
                                    {
                                       §§push(_loc12_);
                                       if(!_loc36_)
                                       {
                                          loop30:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc36_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc37_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc26_ = §§pop();
                                             _loc20_ = 0;
                                             if(!_loc36_)
                                             {
                                                §§push(param5);
                                                §§push(1);
                                                if(!_loc36_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc37_)
                                                   {
                                                      _loc27_ = §§pop();
                                                      if(!_loc36_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc20_);
                                                            addr06fc:
                                                            while(true)
                                                            {
                                                               §§push(_loc27_);
                                                               addr06fe:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     break loop29;
                                                                  }
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc20_);
                                                                     if(_loc37_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc20_++;
                                                                           if(!_loc37_)
                                                                           {
                                                                              break loop31;
                                                                           }
                                                                        }
                                                                        addr0513:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        break loop31;
                                                                     }
                                                                     addr051b:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc28_ = §§pop();
                                                                  }
                                                               }
                                                               break loop29;
                                                            }
                                                         }
                                                         addr06fa:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc28_);
                                                         if(_loc37_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc11_);
                                                               addr0528:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc37_)
                                                                  {
                                                                     break loop30;
                                                                  }
                                                                  addr0530:
                                                                  while(true)
                                                                  {
                                                                     _loc29_ = §§pop();
                                                                     if(_loc25_)
                                                                     {
                                                                        if(_loc36_)
                                                                        {
                                                                           break loop29;
                                                                        }
                                                                        _loc30_ = _loc24_.vertices;
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§push(_loc30_);
                                                                           §§push(_loc30_.§5G§);
                                                                           if(_loc37_)
                                                                           {
                                                                              §§push(§§pop() * _loc16_);
                                                                           }
                                                                           §§pop().offset = §§pop();
                                                                           if(!_loc36_)
                                                                           {
                                                                              §§push(_loc24_.§+R§);
                                                                              §§push(_loc30_.offset);
                                                                              if(_loc37_)
                                                                              {
                                                                                 §§push(§§pop() + _loc24_.§+^§);
                                                                              }
                                                                              §§pop().offset = §§pop();
                                                                           }
                                                                        }
                                                                        _loc31_ = _loc24_.§+R§;
                                                                        _loc32_ = Number(param9.left);
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc37_)
                                                                                 {
                                                                                    §§push(_loc32_);
                                                                                    §§push(_loc26_);
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       break loop33;
                                                                                    }
                                                                                    §§push(param9.right - _loc32_);
                                                                                    if(!_loc37_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc37_)
                                                                                    {
                                                                                       break loop33;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       break loop32;
                                                                                    }
                                                                                    _loc33_ = §§pop();
                                                                                    if(_loc37_)
                                                                                    {
                                                                                       _loc34_ = Number(param9.top);
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc34_);
                                                                                 §§push(_loc29_);
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    break loop33;
                                                                                 }
                                                                                 addr05e2:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 break loop32;
                                                                              }
                                                                              §§goto(addr05e2);
                                                                           }
                                                                           §§push(param9.bottom - _loc34_);
                                                                           break loop34;
                                                                        }
                                                                        _loc35_ = Number(§§pop());
                                                                        _loc31_.§@!Y§[_loc31_.offset] = _loc33_;
                                                                        §§push(_loc31_.§@!Y§);
                                                                        §§push(_loc31_.offset);
                                                                        if(_loc37_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        §§pop()[§§pop()] = _loc35_;
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc30_ = _loc24_.vertices;
                                                                        while(true)
                                                                        {
                                                                           if(!_loc36_)
                                                                           {
                                                                              §§push(_loc30_);
                                                                              §§push(_loc30_.§5G§);
                                                                              if(!_loc36_)
                                                                              {
                                                                                 §§push(§§pop() * _loc16_);
                                                                              }
                                                                              §§pop().offset = §§pop();
                                                                              if(!_loc37_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§push(_loc24_.§+R§);
                                                                           §§push(_loc30_.offset);
                                                                           if(!_loc36_)
                                                                           {
                                                                              §§push(§§pop() + _loc24_.§+^§);
                                                                           }
                                                                           §§pop().offset = §§pop();
                                                                           break;
                                                                        }
                                                                        _loc31_ = _loc24_.§+R§;
                                                                        _loc32_ = Number(param9.left);
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           loop37:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    §§push(_loc32_);
                                                                                    §§push(_loc29_);
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       break loop37;
                                                                                    }
                                                                                    §§push(param9.right - _loc32_);
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc37_)
                                                                                    {
                                                                                       break loop37;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc37_)
                                                                                    {
                                                                                       break loop36;
                                                                                    }
                                                                                    _loc33_ = Number(§§pop());
                                                                                 }
                                                                                 _loc34_ = Number(param9.top);
                                                                                 §§push(_loc34_);
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    §§push(_loc26_);
                                                                                    if(!_loc36_)
                                                                                    {
                                                                                       §§push(param9.bottom - _loc34_);
                                                                                       break;
                                                                                    }
                                                                                    break loop37;
                                                                                 }
                                                                                 break loop36;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           break;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc37_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        _loc35_ = §§pop();
                                                                        if(_loc37_)
                                                                        {
                                                                           _loc31_.§@!Y§[_loc31_.offset] = _loc33_;
                                                                        }
                                                                        §§push(_loc31_.§@!Y§);
                                                                        §§push(_loc31_.offset);
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        §§pop()[§§pop()] = _loc35_;
                                                                     }
                                                                     _loc16_++;
                                                                     §§goto(addr06fa);
                                                                  }
                                                                  break loop29;
                                                               }
                                                            }
                                                            addr0526:
                                                         }
                                                         §§goto(addr06fc);
                                                         _loc28_ = §§pop();
                                                      }
                                                   }
                                                   §§goto(addr0526);
                                                }
                                                §§goto(addr06fe);
                                             }
                                             §§goto(addr06fa);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr0530);
                                          }
                                          break;
                                       }
                                       §§goto(addr0528);
                                    }
                                    §§goto(addr0513);
                                 }
                                 §§goto(addr06fa);
                              }
                           }
                           §§goto(addr051b);
                        }
                        while(true)
                        {
                           §§goto(addr0704);
                        }
                        addr0702:
                     }
                     §§goto(addr0526);
                  }
                  §§goto(addr070a);
               }
               _loc18_ = §§pop();
               §§goto(addr0702);
            }
            §§goto(addr0704);
         }
         §&c§(param4,param8);
         addr070a:
      }
      
      public function §&]§(param1:Point3D, param2:Point3D, param3:Point3D) : void
      {
         var _temp_1:* = true;
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = _temp_1;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         var _loc16_:* = null as §!!V§;
         var _loc17_:* = null as §=s§;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         §§push(1 / side1Segments);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1 / side2Segments);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc22_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:§'!Y§ = §2_§.§'!D§(vertices,"position");
         §§push(0);
         if(!_loc21_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         while(true)
         {
            §§push(side2Segments);
            if(!_loc21_)
            {
               §§push(§§pop() + 1);
               if(_loc21_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc11_:* = §§pop();
         while(true)
         {
            if(_loc22_)
            {
               loop0:
               while(_loc10_ < _loc11_)
               {
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        loop18:
                        while(true)
                        {
                           loop19:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(_loc22_)
                                 {
                                    _loc10_++;
                                    if(_loc21_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc21_)
                                       {
                                          _loc12_ = §§pop();
                                          §§push(_loc12_);
                                          §§push(_loc5_);
                                          if(!_loc22_)
                                          {
                                             break loop19;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc21_)
                                          {
                                             break loop18;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc21_)
                                          {
                                             break loop18;
                                          }
                                          _loc7_ = §§pop();
                                          if(!_loc22_)
                                          {
                                             break;
                                          }
                                          §§push(0);
                                       }
                                       _loc13_ = §§pop();
                                       break;
                                    }
                                    §§push(side1Segments);
                                    §§push(1);
                                    if(!_loc22_)
                                    {
                                       break loop11;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc22_)
                                    {
                                       break loop10;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break loop10;
                              }
                              §§goto(addr0273);
                           }
                           §§goto(addr0136);
                        }
                        while(true)
                        {
                           §§goto(addr014c);
                        }
                        continue loop0;
                     }
                     loop3:
                     for(; §§pop() < §§pop(); §§push(_loc14_))
                     {
                        §§push(_loc13_);
                        if(_loc22_)
                        {
                           _loc13_++;
                           _loc15_ = §§pop();
                           §§push(_loc15_);
                           if(_loc21_)
                           {
                              continue;
                           }
                        }
                        §§push(_loc4_);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc21_)
                           {
                              break loop18;
                           }
                           addr014c:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              if(!_loc22_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           break loop3;
                        }
                     }
                     continue loop0;
                  }
                  _loc14_ = §§pop();
                  if(_loc22_)
                  {
                     while(true)
                     {
                        §§push(_loc13_);
                        while(true)
                        {
                           §§push(_loc14_);
                           break loop11;
                        }
                     }
                     addr0271:
                  }
                  while(true)
                  {
                     _loc16_ = _loc9_.vertices;
                     while(true)
                     {
                        if(!_loc21_)
                        {
                           §§push(_loc16_);
                           §§push(_loc16_.§5G§);
                           if(_loc22_)
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().offset = §§pop();
                           if(_loc21_)
                           {
                              break;
                           }
                        }
                        §§push(_loc9_.§+R§);
                        §§push(_loc16_.offset);
                        if(_loc22_)
                        {
                           §§push(§§pop() + _loc9_.§+^§);
                        }
                        §§pop().offset = §§pop();
                        break;
                     }
                     _loc17_ = _loc9_.§+R§;
                     if(!_loc21_)
                     {
                        loop13:
                        while(true)
                        {
                           loop14:
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 §§push(param1.x + param2.x * _loc6_);
                                 §§push(param3.x * _loc7_);
                                 if(!_loc21_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc21_)
                                       {
                                          _loc18_ = §§pop();
                                          §§push(param1.y + param2.y * _loc6_);
                                          §§push(param3.y * _loc7_);
                                          if(_loc21_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc21_)
                                          {
                                             _loc19_ = §§pop();
                                             §§push(param1.z);
                                             §§push(param2.z);
                                             if(!_loc21_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc21_)
                                                {
                                                   break loop15;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(!_loc22_)
                                                {
                                                   break loop13;
                                                }
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc21_)
                                             {
                                                break loop14;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       §§push(param3.z);
                                       if(_loc22_)
                                       {
                                          break;
                                       }
                                       break loop13;
                                    }
                                 }
                                 §§push(_loc7_);
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              break loop13;
                           }
                           _loc20_ = §§pop();
                        }
                        §§push(§§pop() + §§pop());
                        break loop14;
                     }
                     _loc17_.§@!Y§[_loc17_.offset] = _loc18_;
                     while(true)
                     {
                        if(!_loc21_)
                        {
                           §§push(_loc17_.§@!Y§);
                           §§push(_loc17_.offset);
                           if(!_loc21_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop()[§§pop()] = _loc19_;
                           §§push(_loc17_.§@!Y§);
                           §§push(_loc17_.offset);
                           if(_loc22_)
                           {
                              §§push(§§pop() + 2);
                           }
                           §§pop()[§§pop()] = _loc20_;
                           if(_loc21_)
                           {
                              break;
                           }
                        }
                        _loc8_++;
                        break;
                     }
                     §§goto(addr0271);
                  }
               }
               if(!_loc22_)
               {
                  break;
               }
            }
            §<'§ = true;
            break;
         }
      }
      
      public function §&c§(param1:int, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc26_:Boolean = true;
         var _loc27_:* = §§pop();
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:* = null as §!!V§;
         var _loc22_:* = null as §=s§;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         loop8:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(_loc26_)
               {
                  §§push(16);
                  if(_loc27_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(_loc27_)
                  {
                     break loop8;
                  }
               }
               §§push(int(§§pop()));
               break loop8;
            }
            §§push(§§pop() / §§pop());
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop10:
            while(true)
            {
               §§push(param1);
               if(!_loc27_)
               {
                  while(true)
                  {
                     §§push(8);
                     if(_loc26_)
                     {
                        §§push(§§pop() >> §§pop());
                        if(_loc27_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(!_loc26_)
                        {
                           break;
                        }
                        §§push(255);
                        if(_loc27_)
                        {
                           break loop10;
                        }
                     }
                     §§push(§§pop() & §§pop());
                     break;
                  }
               }
               §§push(255);
               break;
            }
            §§push(§§pop() / §§pop());
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(param1);
               if(!_loc27_)
               {
                  §§push(255);
                  if(_loc27_)
                  {
                     break;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§push(255);
               break;
            }
            §§push(§§pop() / §§pop());
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(param2 != null)
            {
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     §§push(param2 >> 16);
                     if(_loc26_)
                     {
                        loop15:
                        while(true)
                        {
                           loop16:
                           while(true)
                           {
                              loop18:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop() / 255);
                                    if(!_loc27_)
                                    {
                                       _loc6_ = Number(§§pop());
                                       if(_loc27_)
                                       {
                                          break;
                                       }
                                       §§push(param2 >> 8);
                                       if(!_loc26_)
                                       {
                                          break loop18;
                                       }
                                       §§push(§§pop() & 0xFF);
                                       if(_loc27_)
                                       {
                                          break loop16;
                                       }
                                       §§push(255);
                                       if(!_loc26_)
                                       {
                                          break loop15;
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc27_)
                                       {
                                          break loop13;
                                       }
                                    }
                                    _loc7_ = Number(§§pop());
                                    while(true)
                                    {
                                       if(_loc26_)
                                       {
                                          §§push(param2 & 0xFF);
                                          if(_loc26_)
                                          {
                                             break loop18;
                                          }
                                          break loop16;
                                       }
                                       §§goto(addr015b);
                                    }
                                    §§goto(addr0160);
                                 }
                                 §§goto(addr0165);
                              }
                              §§push(255);
                              if(!_loc27_)
                              {
                                 break loop15;
                              }
                              break loop14;
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc27_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc26_)
                              {
                                 _loc8_ = §§pop();
                                 break;
                              }
                              addr015e:
                              _loc7_ = §§pop();
                           }
                           else
                           {
                              addr0153:
                              _loc6_ = §§pop();
                              if(!_loc27_)
                              {
                                 addr015b:
                                 §§goto(addr015e);
                                 §§push(Number(_loc4_));
                              }
                           }
                           addr0163:
                           _loc8_ = Number(_loc5_);
                           addr0160:
                           break;
                        }
                        addr0165:
                        §§push(1);
                     }
                     break loop16;
                  }
                  §§push(§§pop() / §§pop());
                  break;
               }
            }
            else
            {
               §§push(_loc3_);
               if(_loc27_)
               {
                  break loop13;
               }
               §§push(Number(§§pop()));
               if(!_loc27_)
               {
                  §§goto(addr0153);
               }
               §§goto(addr0163);
            }
            break loop13;
         }
         §§push(255);
         break loop9;
      }
   }
}

