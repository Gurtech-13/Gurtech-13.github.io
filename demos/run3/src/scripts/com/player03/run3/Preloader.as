package com.player03.run3
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.geom.Matrix;
   import haxe.Timer;
   import openfl.Lib;
   
   public class Preloader extends NMEPreloader
   {
      
      public var § !9§:Matrix;
      
      public var §57§:Shape;
      
      public var §@x§:Number;
      
      public var §`!,§:Number;
      
      public var glow:Shape;
      
      public var §03§:int;
      
      public var §^m§:int;
      
      public var §6!B§:BitmapData;
      
      public function Preloader()
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §@x§ = 0;
            while(true)
            {
               if(!_loc5_)
               {
                  super();
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               removeChild(progress);
               if(_loc6_)
               {
                  break;
               }
            }
            removeChild(outline);
         }
         var _loc1_:Stage = Lib.get_current().stage;
         if(_loc6_)
         {
            §03§ = int(_loc1_.stageWidth * 1.1);
            if(!_loc5_)
            {
               §^m§ = int(_loc1_.stageHeight * 1.05);
               if(_loc6_)
               {
                  §6!B§ = new BitmapData(§03§,§^m§,false,0);
               }
            }
         }
         var _loc2_:DisplayObject = addChildAt(new Bitmap(§6!B§),0);
         if(!_loc5_)
         {
            _loc2_.x = (_loc1_.stageWidth - §03§) / 2;
            if(_loc6_)
            {
               _loc2_.y = (_loc1_.stageHeight - §^m§) / 2;
            }
         }
         var _loc3_:Number = 3;
         if(!_loc5_)
         {
            §57§ = new Shape();
            while(true)
            {
               if(_loc6_)
               {
                  § !9§ = new Matrix();
                  if(_loc6_)
                  {
                     § !9§.createGradientBox(_loc3_ * 2,_loc3_ * 2,0,-_loc3_,-_loc3_);
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
               }
               §57§.graphics.beginGradientFill("radial",[16777215,16777215],[0.9,0],[0,255],§ !9§);
               if(_loc6_)
               {
                  §57§.graphics.drawCircle(0,0,_loc3_);
               }
               break;
            }
         }
         var _loc4_:Matrix = new Matrix();
         _loc4_.createGradientBox(§03§,§^m§);
         if(!_loc5_)
         {
            glow = new Shape();
            glow.graphics.beginGradientFill("radial",[16777215,16777215,16777215,16777215],[1,0.75,0.35,0],[0,60,150,255],_loc4_);
            glow.graphics.drawEllipse(0,0,§03§,§^m§);
         }
         glow.x = _loc2_.x;
         glow.y = _loc2_.y;
         glow.alpha = 0;
         while(true)
         {
            if(_loc6_)
            {
               addChild(glow);
               if(!_loc6_)
               {
                  break;
               }
            }
            §`!,§ = -5;
            break;
         }
      }
      
      override public function onUpdate(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         §§push(param1 / param2);
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc13_)
         {
            glow.alpha = _loc3_;
         }
         §§push(§@x§);
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop35:
               while(true)
               {
                  if(_loc13_)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(!_loc12_)
                        {
                           if(_loc4_ >= _loc3_)
                           {
                              break;
                           }
                           if(_loc12_)
                           {
                              break;
                           }
                        }
                        §§pop();
                        if(!_loc12_)
                        {
                           §§push(Timer.stamp());
                           if(!_loc12_)
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc12_)
                                 {
                                    §§push(§`!,§);
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(!_loc13_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 §§push(0.3);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 break loop3;
                              }
                              §§push(§§pop() < §§pop());
                              if(_loc13_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              break;
                           }
                           break loop4;
                        }
                        break loop35;
                     }
                     if(§§pop())
                     {
                        return;
                     }
                     §§push(§§findproperty(§`!,§));
                     §§push(Timer.stamp());
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§`!,§ = §§pop();
                     §@x§ = _loc3_;
                  }
                  §6!B§.lock();
                  if(_loc13_)
                  {
                     break;
                  }
                  §§goto(addr03c7);
               }
               §§goto(addr03b6);
            }
            while(true)
            {
               §§push(_loc3_);
               break loop3;
            }
         }
         while(§§pop() < §§pop())
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop12:
                  while(true)
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
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(0.3333333333333333);
                                                      if(_loc13_)
                                                      {
                                                         loop24:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc8_ = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 _loc9_ = Number(§§pop());
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    break loop26;
                                                                                 }
                                                                                 break loop24;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr01b9);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_);
                                                                        }
                                                                        §§push(0.6666666666666666);
                                                                        if(!_loc13_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(!_loc13_)
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        §§push(1);
                                                                        if(!_loc13_)
                                                                        {
                                                                           continue loop31;
                                                                        }
                                                                        _loc8_ = int(§§pop());
                                                                        §§push(_loc4_ - 0.3333333333333333);
                                                                        if(!_loc12_)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           break loop26;
                                                                        }
                                                                        §§goto(addr0254);
                                                                     }
                                                                     _loc8_ = §§pop();
                                                                     break loop24;
                                                                  }
                                                                  §§goto(addr026e);
                                                               }
                                                               §§goto(addr0184);
                                                            }
                                                            loop27:
                                                            while(true)
                                                            {
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * 3.1415926536);
                                                                              §§push(2);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 §§push(3);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 §§push(§§pop() / §§pop());
                                                                                 §§push(_loc9_);
                                                                                 §§push(3.1415926536);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop() * 4);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop15;
                                                                                 }
                                                                                 _loc10_ = §§pop() + §§pop();
                                                                                 _loc11_ = Number(_loc9_);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop31;
                                                                                 }
                                                                                 §§push(_loc11_ * Number(Math.cos(_loc10_)));
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop30;
                                                                                 }
                                                                                 _loc5_ = Number(§§pop());
                                                                                 §§push(_loc11_);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop29;
                                                                                 }
                                                                                 _loc6_ = §§pop() * Number(Math.sin(_loc10_));
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop22;
                                                                                 }
                                                                                 §§push(Number(Math.random()));
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop23;
                                                                                 }
                                                                                 §§push(§§pop() * 3.1415926536);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break loop28;
                                                                                 }
                                                                                 §§push(2);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break loop27;
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break loop31;
                                                                                    }
                                                                                    break loop22;
                                                                                 }
                                                                                 §§goto(addr026e);
                                                                              }
                                                                              §§goto(addr0310);
                                                                           }
                                                                        }
                                                                        §§push(Number(Math.random()));
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(§§pop() * 0.5);
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr0254:
                                                                              _loc11_ = §§pop();
                                                                              if(_loc12_)
                                                                              {
                                                                                 break loop20;
                                                                              }
                                                                              §§push(_loc11_);
                                                                              §§push(_loc11_);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 break loop19;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc13_)
                                                                              {
                                                                                 break loop29;
                                                                              }
                                                                           }
                                                                           addr026e:
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc12_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 §§push(_loc11_);
                                                                                 §§push(Number(Math.cos(_loc10_)));
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    break loop32;
                                                                                 }
                                                                                 break loop5;
                                                                              }
                                                                              break loop17;
                                                                           }
                                                                           break loop18;
                                                                        }
                                                                        break loop21;
                                                                     }
                                                                     §§goto(addr02fc);
                                                                  }
                                                                  §§goto(addr02f0);
                                                               }
                                                               §§goto(addr0311);
                                                            }
                                                            §§goto(addr0308);
                                                         }
                                                         §§push(_loc4_);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(0.6666666666666666);
                                                            if(!_loc12_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc13_)
                                                               {
                                                                  _loc9_ = Number(§§pop());
                                                                  addr0184:
                                                                  §§push(_loc8_);
                                                                  break loop25;
                                                               }
                                                               break loop14;
                                                            }
                                                            break loop15;
                                                         }
                                                         break loop16;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      break loop16;
                                                   }
                                                   §§goto(addr03b3);
                                                }
                                                §§goto(addr035f);
                                             }
                                             §§goto(addr02cf);
                                          }
                                          §§goto(addr03a5);
                                       }
                                       §§goto(addr0333);
                                    }
                                    §§goto(addr033e);
                                 }
                                 §§goto(addr0352);
                              }
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc13_)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc12_)
                                    {
                                       §§push(_loc11_);
                                       if(!_loc12_)
                                       {
                                          §§push(Number(Math.sin(_loc10_)));
                                          break loop5;
                                       }
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0313);
                                 }
                                 §§goto(addr03b4);
                              }
                              §§goto(addr02c8);
                           }
                           §§goto(addr0329);
                        }
                        §§goto(addr0334);
                     }
                     §§goto(addr02c7);
                  }
                  §§goto(addr038f);
               }
               §§push(§§pop() * §§pop());
               if(!_loc12_)
               {
                  addr02f0:
                  _loc5_ = Number(§§pop());
                  §§push(_loc6_);
                  if(_loc13_)
                  {
                     addr02fc:
                     §§push(§^m§);
                     if(!_loc13_)
                     {
                        break loop9;
                     }
                     §§goto(addr0308);
                  }
                  §§goto(addr033f);
               }
               §§goto(addr033e);
            }
            addr03b4:
            §§push(§§pop() * §§pop());
            if(!_loc12_)
            {
               addr02c7:
               addr02c8:
               §§push(§§pop() + §§pop());
               if(!_loc12_)
               {
                  addr02cf:
                  §§push(Number(§§pop()));
               }
               _loc6_ = §§pop();
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     if(_loc13_)
                     {
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(_loc5_);
                              §§push(§03§);
                              if(!_loc12_)
                              {
                                 break loop6;
                              }
                              addr0308:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc12_)
                                 {
                                    addr0311:
                                    _loc6_ = Number(§§pop());
                                    addr0313:
                                    §§push(Number(Math.random()));
                                    if(!_loc13_)
                                    {
                                       break loop10;
                                    }
                                    §§push(_loc4_);
                                    if(!_loc13_)
                                    {
                                       break loop8;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    addr0310:
                                 }
                                 addr0333:
                                 §§push(§§pop() * 1.4);
                                 break;
                              }
                              addr0334:
                              §§push(1);
                              break loop9;
                           }
                           addr033f:
                           §§push(Number(§§pop()));
                           if(_loc12_)
                           {
                              break loop7;
                           }
                           _loc7_ = §§pop();
                           § !9§.identity();
                           § !9§.scale(_loc7_,_loc7_);
                           § !9§.translate(_loc5_ + §03§ / 2,_loc6_ + §^m§ / 2);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc12_)
                        {
                           addr033e:
                           §§push(Number(§§pop()));
                        }
                        break loop10;
                     }
                     addr038f:
                     §6!B§.draw(§57§,§ !9§);
                     addr03a5:
                     §§push(_loc4_);
                     break loop7;
                  }
               }
               §§push(0.0006666666666666666);
               break loop8;
            }
            §§push(§§pop() + §§pop());
            if(!_loc12_)
            {
               addr03b3:
               §§push(Number(§§pop()));
            }
            _loc4_ = §§pop();
            while(true)
            {
               §§push(_loc4_);
               break loop4;
            }
            break loop4;
         }
         §6!B§.unlock();
         addr03c7:
      }
   }
}

