package §-v§
{
   import §!!$§.§ 6§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import openfl.Lib;
   
   public class §<=§ extends Sprite
   {
      
      public var §'w§:Vector.<Number>;
      
      public var §%!&§:Vector.<Object>;
      
      public function §<=§(param1:Vector.<Object>)
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc4_:* = null;
         var _loc7_:* = 0;
         while(true)
         {
            if(_loc13_)
            {
               super();
               if(!_loc13_)
               {
                  break;
               }
            }
            §%!&§ = param1;
            break;
         }
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc12_)
         {
            loop0:
            while(_loc3_ < int(param1.length))
            {
               _loc4_ = param1[_loc3_];
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(_loc13_)
                     {
                        _loc3_++;
                        if(_loc13_)
                        {
                           §§push(_loc4_.code);
                           if(_loc12_)
                           {
                              break;
                           }
                           §§push(int(§§pop().length));
                           if(!_loc13_)
                           {
                              break loop3;
                           }
                           if(§§pop() <= _loc2_)
                           {
                              continue loop0;
                           }
                           if(!_loc13_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     §§push(_loc4_.code);
                     break;
                  }
                  §§push(int(§§pop().length));
                  if(_loc13_)
                  {
                     §§push(int(§§pop()));
                  }
                  break;
               }
               _loc2_ = §§pop();
            }
         }
         §§push([]);
         if(!_loc12_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc13_)
            {
               §§push(0);
               if(_loc13_)
               {
                  §§push(int(§§pop()));
                  if(_loc12_)
                  {
                     break;
                  }
               }
               _loc3_ = §§pop();
            }
            §§push(_loc2_);
            if(!_loc12_)
            {
               §§push(int(§§pop()));
            }
            break;
         }
         var _loc6_:* = §§pop();
         if(_loc13_)
         {
            while(_loc3_ < _loc6_)
            {
               §§push(_loc3_);
               if(!_loc12_)
               {
                  _loc3_++;
                  if(!_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc7_ = §§pop();
               if(!_loc12_)
               {
                  _loc5_.push(-1);
               }
            }
         }
         §§push(_loc5_);
         if(!_loc12_)
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         if(!_loc12_)
         {
            §'w§ = Vector.<Number>(_loc8_);
         }
         var _loc9_:Rectangle = new Rectangle();
         var _loc10_:§ 7§ = new § 6§(_loc9_);
         if(!_loc12_)
         {
            §&d§.§1$§().add(_loc10_,new §30§(true,1.5));
         }
         _loc10_ = new § 6§(_loc9_);
         if(!_loc12_)
         {
            §&d§.§1$§().add(_loc10_,new §30§(false,0.3));
         }
         _loc10_ = new § 6§(_loc9_);
         if(_loc13_)
         {
            §&d§.§1$§().add(_loc10_,new §4$§(true,0.5));
         }
         _loc10_ = new § 6§(_loc9_);
         if(_loc13_)
         {
            §&d§.§1$§().add(_loc10_,§^`§.§ !P§(§2u§.BOTTOM));
         }
         var _loc11_:Shape = new Shape();
         while(true)
         {
            if(!_loc12_)
            {
               §<!T§.fillRect(_loc11_,§^F§.INVISIBLE,null,null,null,new § 6§(_loc9_));
               if(!_loc13_)
               {
                  break;
               }
            }
            addChild(_loc11_);
            if(_loc13_)
            {
               addEventListener(MouseEvent.CLICK,§<!?§);
            }
            break;
         }
      }
      
      public function §<!?§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Number = NaN;
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop11:
         while(true)
         {
            loop12:
            while(true)
            {
               while(true)
               {
                  if(_loc12_)
                  {
                     §§push(int(§'w§.length));
                     if(_loc11_)
                     {
                        break;
                     }
                     §§push(1);
                     if(_loc12_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc12_)
                        {
                           §§push(int(§§pop()));
                           if(_loc11_)
                           {
                              break loop12;
                           }
                           _loc3_ = §§pop();
                           if(!_loc12_)
                           {
                              break loop11;
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc12_)
                              {
                                 break loop12;
                              }
                           }
                           break loop12;
                           addr00b5:
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                        }
                     }
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc12_)
                           {
                              §§push(§'w§);
                              §§push(int(§'w§.length));
                              if(!_loc11_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              §§pop()[§§pop()] = param1.localX / Lib.get_current().stage.stageWidth;
                              if(!_loc12_)
                              {
                                 break loop11;
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc2_);
                           if(!_loc11_)
                           {
                              _loc2_++;
                              if(_loc12_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc4_ = §§pop();
                           if(!_loc11_)
                           {
                              §§push(§'w§);
                              §§push(_loc4_);
                              §§push(§'w§);
                              §§push(_loc4_);
                              if(_loc12_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§push(§§pop()[§§pop()]);
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§pop()[§§pop()] = §§pop();
                           }
                           §§goto(addr00b5);
                        }
                     }
                  }
                  §§push(0);
                  if(_loc12_)
                  {
                     break;
                  }
                  break loop12;
               }
               §§push(int(§§pop()));
               break;
            }
            _loc2_ = §§pop();
            break;
         }
         var _loc5_:Vector.<Object> = §%!&§;
         if(_loc12_)
         {
            loop1:
            while(_loc2_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc2_];
               _loc2_++;
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     loop15:
                     while(true)
                     {
                        loop16:
                        while(true)
                        {
                           loop17:
                           while(true)
                           {
                              loop18:
                              while(true)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             §§push(true);
                                             if(_loc12_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!_loc12_)
                                                {
                                                   break loop16;
                                                }
                                                _loc7_ = §§pop();
                                                §§push(§'w§.length);
                                                if(!_loc11_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!_loc12_)
                                                   {
                                                      break loop15;
                                                   }
                                                   §§push(int(_loc6_.code.length));
                                                   if(!_loc12_)
                                                   {
                                                      break loop14;
                                                   }
                                                   _loc3_ = int(§§pop() - §§pop());
                                                   §§push(0);
                                                   if(!_loc12_)
                                                   {
                                                      break loop13;
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(!_loc11_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc6_.code);
                                                         if(_loc12_)
                                                         {
                                                            §§push(int(§§pop().length));
                                                            if(_loc11_)
                                                            {
                                                               break loop13;
                                                            }
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               §§push(_loc8_);
                                                               if(_loc12_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     break loop20;
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc4_++;
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc11_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        _loc9_ = §§pop();
                                                                        if(_loc11_)
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                        §§push(_loc6_.code);
                                                                     }
                                                                     break loop18;
                                                                     addr01b3:
                                                                  }
                                                                  break loop19;
                                                               }
                                                               break loop14;
                                                            }
                                                            break loop14;
                                                            addr0244:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()[_loc9_]));
                                                            §§push(§'w§);
                                                            §§push(_loc9_);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() + _loc3_);
                                                            }
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(§§pop()[§§pop()]);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc10_ = §§pop() - §§pop();
                                                               if(!_loc12_)
                                                               {
                                                                  break loop17;
                                                               }
                                                               if(_loc10_ >= 0)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     break loop22;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        break loop21;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(0.25);
                                                                  break loop23;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               addr022b:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(false);
                                                                     if(!_loc12_)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc12_)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     §§goto(addr025b);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0244);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break loop17;
                                                      }
                                                      §§goto(addr020b);
                                                   }
                                                   §§goto(addr01b3);
                                                }
                                                §§goto(addr0227);
                                             }
                                             §§goto(addr022b);
                                          }
                                          §§goto(addr02a9);
                                       }
                                       §§goto(addr0272);
                                    }
                                    if(_loc12_)
                                    {
                                       §§goto(addr0259);
                                    }
                                    §§goto(addr02b5);
                                 }
                                 §§goto(addr0297);
                              }
                              §§goto(addr027b);
                           }
                           _loc4_ = 0;
                           addr0272:
                           §§push(int(§'w§.length));
                           if(!_loc11_)
                           {
                              break loop15;
                           }
                           break loop18;
                        }
                        _loc7_ = §§pop();
                        addr0259:
                        addr025b:
                        if(_loc7_)
                        {
                           _loc6_.onCodeEntered();
                           break loop17;
                        }
                        continue loop1;
                     }
                     addr027b:
                     _loc8_ = int(§§pop());
                     if(_loc11_)
                     {
                     }
                     §§goto(addr02b5);
                  }
                  if(§§pop() < §§pop())
                  {
                     addr0297:
                     §§push(_loc4_++);
                     if(_loc12_)
                     {
                        _loc9_ = §§pop();
                        if(_loc12_)
                        {
                           addr02a9:
                           §'w§[_loc9_] = -1;
                        }
                        addr02b5:
                        §§push(_loc4_);
                     }
                     break;
                  }
                  return;
               }
               §§push(_loc8_);
               break loop14;
            }
         }
      }
   }
}

