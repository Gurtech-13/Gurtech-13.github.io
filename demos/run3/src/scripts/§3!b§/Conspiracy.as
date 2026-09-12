package §3!b§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §"p§.§'A§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§3`§;
   import §-!!§.§2!B§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class Conspiracy extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var duplicator:§^s§;
      
      public var child:§^s§;
      
      public var §&!b§:§"B§;
      
      public var §>0§:Point3D;
      
      public var §>P§:Point3D;
      
      public var §"!'§:§"B§;
      
      public var §"R§:Vector.<Bitmap>;
      
      public function Conspiracy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§^!T§,-1,null,{"endTiles":false});
               if(!_loc1_)
               {
                  §§push(§§findproperty(frames));
                  §§push(frame0);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame1);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame2);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame3);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame4);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame5);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame6);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame7);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame8);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame9);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame10);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame11);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame12);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame13);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame14);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame15);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame16);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame17);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().frames = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
            }
            name = "Conspiracy";
            break;
         }
      }
      
      public function §^!`§() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:* = null as §"B§;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = null as §"B§;
         var _loc6_:* = NaN;
         loop0:
         while(true)
         {
            if(§>P§ == null)
            {
               §>P§ = new Point3D(0,0,900);
               if(!_loc11_)
               {
                  break;
               }
               _loc1_ = null;
               loop1:
               while(true)
               {
                  if(_loc11_)
                  {
                     if(_loc1_ == null)
                     {
                        _loc1_ = new §"B§();
                     }
                     _loc2_ = Number(Math.sin(0.5497787143782138));
                     §§push(_loc1_);
                     §§push(-0.432);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc2_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc10_)
                     {
                        §§push(_loc1_);
                        §§push(-0.901);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().y = §§pop();
                        §§push(_loc1_);
                        §§push(-0.039);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc2_);
                        }
                        §§pop().z = §§pop();
                        _loc1_.w = Number(Math.cos(0.5497787143782138));
                        loop2:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              loop3:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc1_.x);
                                    §§push(_loc1_.x);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       §§push(_loc1_.y);
                                       if(_loc11_)
                                       {
                                          §§push(_loc1_.y);
                                          if(!_loc11_)
                                          {
                                             break loop3;
                                          }
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          §§push(_loc1_.z);
                                          §§push(_loc1_.z);
                                          if(_loc10_)
                                          {
                                             break loop3;
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc1_.w);
                                    }
                                    §§push(_loc1_.w);
                                    break loop3;
                                 }
                                 §§push(1);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    continue loop5;
                                 }
                                 §§goto(addr0123);
                              }
                              §§push(§§pop() + §§pop() * §§pop());
                              if(_loc11_)
                              {
                                 _loc3_ = §§pop();
                                 §§push(_loc3_);
                                 break loop4;
                              }
                              _loc4_ = Number(§§pop());
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(0);
                                    if(!_loc10_)
                                    {
                                       addr0123:
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc4_);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(-_loc4_);
                                          if(_loc10_)
                                          {
                                             break loop5;
                                          }
                                       }
                                       §§push(§§pop() < 1e-10);
                                       if(_loc11_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(!§§pop())
                                       {
                                          break loop2;
                                       }
                                       §§push(_loc3_);
                                       §§push(0);
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(1 / Number(Math.sqrt(_loc3_)));
                                       break loop5;
                                    }
                                    while(true)
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc1_.x = 0;
                                          if(_loc10_)
                                          {
                                             addr01b3:
                                             §§push(_loc1_);
                                             §§push(_loc1_.z);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() * _loc3_);
                                             }
                                             §§pop().z = §§pop();
                                             break;
                                          }
                                       }
                                       _loc1_.y = 0;
                                       _loc1_.z = 0;
                                       if(_loc11_)
                                       {
                                          _loc1_.w = 1;
                                          if(_loc11_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       break;
                                    }
                                 }
                                 _loc3_ = §§pop();
                                 §§push(_loc1_);
                                 §§push(_loc1_.x);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() * _loc3_);
                                 }
                                 §§pop().x = §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push(_loc1_);
                                    §§push(_loc1_.y);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * _loc3_);
                                    }
                                    §§pop().y = §§pop();
                                    §§goto(addr01b3);
                                 }
                              }
                              §§push(Number(§§pop()));
                              break loop6;
                           }
                           §§push(_loc1_);
                           §§push(_loc1_.w);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc3_);
                           }
                           §§pop().w = §§pop();
                           if(_loc11_)
                           {
                              break;
                           }
                           break loop1;
                        }
                     }
                  }
                  §&!b§ = _loc1_;
                  break;
               }
               _loc5_ = null;
               loop8:
               while(true)
               {
                  if(_loc5_ == null)
                  {
                     if(!_loc11_)
                     {
                        break;
                     }
                     _loc5_ = new §"B§();
                  }
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           loop14:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(Number(Math.sin(0.4799655442984406)));
                                 if(_loc11_)
                                 {
                                    _loc3_ = §§pop();
                                    §§push(_loc5_);
                                    §§push(0.01);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * _loc3_);
                                    }
                                    §§pop().x = §§pop();
                                    §§push(_loc5_);
                                    §§push(0.829);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() * _loc3_);
                                    }
                                    §§pop().y = §§pop();
                                    §§push(_loc5_);
                                    §§push(-0.56);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * _loc3_);
                                    }
                                    §§pop().z = §§pop();
                                    if(!_loc10_)
                                    {
                                       _loc5_.w = Number(Math.cos(0.4799655442984406));
                                       loop18:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc5_.x * _loc5_.x);
                                             §§push(_loc5_.y);
                                             §§push(_loc5_.y);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + §§pop() * §§pop());
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                if(_loc10_)
                                                {
                                                   break loop12;
                                                }
                                                §§push(_loc5_.z);
                                                §§push(_loc5_.z);
                                                if(_loc10_)
                                                {
                                                   break loop18;
                                                }
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc5_.w);
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc5_.w);
                                                   break loop18;
                                                }
                                             }
                                             break loop14;
                                          }
                                          loop20:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc11_)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§push(_loc4_);
                                                   §§push(1);
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc10_)
                                                   {
                                                      break loop20;
                                                   }
                                                }
                                                _loc6_ = §§pop();
                                                break loop8;
                                             }
                                             addr02e6:
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(_loc6_);
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                                break loop9;
                                             }
                                             §§push(_loc6_);
                                             if(_loc11_)
                                             {
                                                break loop12;
                                             }
                                             §§goto(addr0361);
                                          }
                                       }
                                       §§push(§§pop() + §§pop() * §§pop());
                                       if(_loc11_)
                                       {
                                          §§push(Number(§§pop()));
                                          break loop19;
                                       }
                                       break loop12;
                                    }
                                    break loop10;
                                 }
                                 break loop20;
                              }
                              addr0320:
                              if(§§pop() != §§pop())
                              {
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break loop9;
                              }
                              if(_loc11_)
                              {
                                 _loc5_.x = 0;
                                 _loc5_.y = 0;
                                 while(true)
                                 {
                                    if(_loc11_)
                                    {
                                       break loop10;
                                    }
                                    §§goto(addr03ac);
                                 }
                                 loop23:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§"J§);
                                       if(_loc11_)
                                       {
                                          §§push(int(frames.length));
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(!_loc10_)
                                          {
                                             _loc2_ = §§pop();
                                             §§push(_loc2_);
                                          }
                                          §§push(0);
                                          if(_loc11_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                break loop0;
                                             }
                                             addr0442:
                                             §§push(0);
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             break loop23;
                                          }
                                          addr041d:
                                          if(§§pop() <= §§pop())
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(_loc2_);
                                                break;
                                             }
                                             §§goto(addr044c);
                                          }
                                          else
                                          {
                                             §§push(1);
                                             if(_loc10_)
                                             {
                                                §§goto(addr0442);
                                             }
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                       break loop23;
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 addr044c:
                                 §4!R§.§+!Q§(§&!b§,§"!'§,_loc3_,tunnel.§<!M§.§,t§);
                                 var _loc7_:Point3D = §>0§;
                                 if(!_loc10_)
                                 {
                                    _loc7_.x = 0;
                                    while(true)
                                    {
                                       if(_loc11_)
                                       {
                                          _loc7_.y = 0;
                                          if(!_loc11_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc7_.z = -146;
                                       if(_loc11_)
                                       {
                                          §4!R§.§@!M§(tunnel.§<!M§.§,t§,§>0§,§>0§);
                                       }
                                       break;
                                    }
                                 }
                                 _loc7_ = §>P§;
                                 var _loc8_:Point3D = §>0§;
                                 var _loc9_:Point3D = tunnel.§<!M§.§%!7§;
                                 if(_loc9_ == null)
                                 {
                                    _loc9_ = new Point3D(0,0,0);
                                 }
                                 _loc9_.x = _loc7_.x + _loc8_.x;
                                 _loc9_.y = _loc7_.y + _loc8_.y;
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                    §§push(_loc7_.z);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + _loc8_.z);
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 §§pop().z = §§pop();
                                 tunnel.§<!M§.reset();
                                 tunnel.display(0);
                                 duplicator.§]<§ = true;
                                 if(!_loc10_)
                                 {
                                    child.§]<§ = true;
                                 }
                                 return;
                              }
                              §§goto(addr037a);
                           }
                           §§push(§§pop() < §§pop());
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc11_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc10_)
                                       {
                                          §§push(0);
                                          break loop15;
                                       }
                                       break loop9;
                                    }
                                    §§goto(addr034b);
                                 }
                                 §§goto(addr03c4);
                              }
                           }
                           §§goto(addr03d3);
                        }
                        §§push(1e-10);
                        break loop14;
                     }
                     _loc5_.z = 0;
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           addr034b:
                           _loc5_.w = 1;
                           §§goto(addr03c4);
                        }
                        else
                        {
                           §§goto(addr037a);
                        }
                     }
                  }
                  addr0361:
                  _loc4_ = Number(§§pop());
                  §§push(_loc5_);
                  §§push(_loc5_.x);
                  if(_loc11_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  if(_loc11_)
                  {
                     addr037a:
                     §§push(_loc5_);
                     §§push(_loc5_.y);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     while(true)
                     {
                        if(_loc11_)
                        {
                           §§push(_loc5_);
                           §§push(_loc5_.z);
                           if(!_loc10_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(_loc5_);
                           §§push(_loc5_.w);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           if(_loc11_)
                           {
                              addr03c4:
                              §"!'§ = _loc5_;
                              if(_loc10_)
                              {
                                 break;
                              }
                           }
                        }
                        addr03d3:
                        §>0§ = new Point3D(0,0,0);
                        break;
                     }
                  }
               }
               §§push(_loc6_);
               if(_loc10_)
               {
                  break loop20;
               }
               §§push(0);
               if(_loc11_)
               {
                  §§goto(addr02e6);
               }
               else
               {
                  §§goto(addr0320);
               }
            }
            continue loop23;
         }
         §§goto(addr041d);
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = null as Vector.<Bitmap>;
         var _loc3_:* = null as Bitmap;
         if(_loc5_)
         {
            if(§"R§ != null)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               _loc1_ = §§pop();
               _loc2_ = §"R§;
               while(true)
               {
                  if(_loc5_)
                  {
                     while(_loc1_ < int(_loc2_.length))
                     {
                        _loc3_ = _loc2_[_loc1_];
                        if(!_loc4_)
                        {
                           _loc1_++;
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        _loc3_.bitmapData.dispose();
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §"R§ = null;
                  break;
               }
            }
            §>P§ = null;
            while(true)
            {
               if(_loc5_)
               {
                  §>0§ = null;
                  if(!_loc5_)
                  {
                     break;
                  }
                  §&!b§ = null;
                  if(_loc5_)
                  {
                     §"!'§ = null;
                     tunnel = null;
                     duplicator = null;
                     if(_loc5_)
                     {
                        child = null;
                     }
                  }
               }
               sprites.length = 0;
               break;
            }
         }
      }
      
      public function §@!U§(param1:String, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as Vector.<Bitmap>;
         while(true)
         {
            §§push(§2!B§);
            §§push("cutscene/Conspiracy/");
            if(_loc7_)
            {
               §§push(§§pop() + param1);
               if(!_loc7_)
               {
                  break;
               }
               §§push(§§pop());
               if(_loc6_)
               {
                  break;
               }
               §§push(§§pop() + ".png");
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc4_:Bitmap = §§pop().§83§(§§pop(),false);
         loop1:
         while(true)
         {
            if(!_loc6_)
            {
               §+!!§(_loc4_,param2,param3);
               if(_loc6_)
               {
                  break;
               }
            }
            _loc4_.alpha = 0.6;
            while(true)
            {
               while(true)
               {
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  addr00b5:
                  _loc5_ = new Vector.<Bitmap>(0,false);
                  if(!_loc6_)
                  {
                     §"R§ = _loc5_;
                  }
                  break;
               }
               addr00d4:
               §"R§.push(_loc4_);
               break;
            }
            return;
         }
         dialog.addChild(_loc4_);
         if(!_loc7_)
         {
            break loop2;
         }
         if(§"R§ == null)
         {
            if(_loc6_)
            {
               break loop2;
            }
            §§goto(addr00b5);
         }
         §§goto(addr00d4);
      }
      
      public function §+!!§(param1:Bitmap, param2:Number, param3:Number) : void
      {
         var _gthis:Conspiracy;
         var image:Bitmap;
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(!_loc9_)
         {
            image = param1;
            if(!_loc9_)
            {
               _gthis = this;
            }
         }
         var _loc4_:§ 7§ = new §?y§(image);
         var _loc5_:§&d§ = dialog.layout;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc5_ != null)
                  {
                     §§push(_loc5_);
                     break;
                  }
                  if(!_loc8_)
                  {
                     break loop0;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc4_,new §3`§(param2,true));
            break;
         }
         _loc4_ = new §?y§(image);
         _loc5_ = dialog.layout;
         if(_loc8_)
         {
            while(true)
            {
               if(_loc5_ == null)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(_loc5_);
               }
               §§pop().add(_loc4_,new §3`§(param3,false));
               if(!_loc9_)
               {
                  break;
               }
            }
            dialog.layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
            {
               var _temp_1:* = true;
               var _loc3_:Boolean = false;
               var _loc4_:Boolean = _temp_1;
               var _loc1_:§38§ = _gthis.dialog.layout.scale;
               while(true)
               {
                  §§push(24);
                  §§push(_loc1_.x);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + _loc1_.y);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(§§pop() / 2);
                  break;
               }
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  image.filters = [new GlowFilter(16777215,1,_loc2_,_loc2_)];
               }
            })));
         }
         var _loc6_:§38§ = _gthis.dialog.layout.scale;
         while(true)
         {
            §§push(24);
            §§push(_loc6_.x);
            if(!_loc9_)
            {
               §§push(§§pop() + _loc6_.y);
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            if(_loc8_)
            {
               §§push(§§pop() / 2);
            }
            break;
         }
         §§push(§§pop() * §§pop());
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc9_)
         {
            image.filters = [new GlowFilter(16777215,1,_loc7_,_loc7_)];
         }
      }
      
      public function §6u§() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         if(!_loc13_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(true);
                  if(!_loc13_)
                  {
                     if(§"R§ == null)
                     {
                        break;
                     }
                     if(!_loc12_)
                     {
                        break loop0;
                     }
                  }
                  §§pop();
                  if(_loc12_)
                  {
                     §§push(int(§"R§.length) == 0);
                     if(_loc12_)
                     {
                        break loop0;
                     }
                     break;
                  }
               }
               if(!§§pop())
               {
                  §§push(§"R§);
                  §§push(int(§"R§.length));
                  if(_loc12_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc1_:Bitmap = §§pop()[§§pop()];
                  var _loc2_:§ 7§ = new §?y§(_loc1_);
                  var _loc3_:§&d§ = dialog.layout;
                  while(true)
                  {
                     §§push(_loc2_.§[![§());
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                           §§push(_loc2_.§;c§());
                           if(!_loc13_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc13_)
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:§'A§ = _loc3_.§&#§;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc13_)
                        {
                           §§push(_loc5_.x);
                           if(_loc12_)
                           {
                              §§push(_loc5_.width);
                              if(_loc12_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc12_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc13_)
                           {
                              break loop3;
                           }
                        }
                        §§push(_loc3_.scale.x);
                        break;
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc12_)
                     {
                        break;
                     }
                     §§goto(addr0126);
                  }
                  addr0126:
                  var _loc6_:Number = §§pop();
                  var _loc7_:§ 7§ = new §?y§(_loc1_);
                  var _loc8_:§&d§ = dialog.layout;
                  §§push(_loc7_.§1C§());
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_)
                        {
                           while(true)
                           {
                              §§push(_loc7_.§5`§());
                              if(_loc12_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop() / 2);
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc13_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                  }
                  var _loc9_:* = §§pop();
                  var _loc10_:§'A§ = _loc8_.§&#§;
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc13_)
                        {
                           §§push(_loc10_.y);
                           if(_loc12_)
                           {
                              §§push(_loc10_.height);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(§§pop() - §§pop());
                           if(!_loc12_)
                           {
                              break loop7;
                           }
                        }
                        §§push(_loc8_.scale.y);
                        break;
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break;
                  }
                  var _loc11_:* = §§pop();
                  if(!_loc13_)
                  {
                     §+!!§(_loc1_,_loc6_,_loc11_);
                     if(!_loc13_)
                     {
                        dialog.addChild(_loc1_);
                     }
                  }
                  return;
               }
            }
            §§push(Boolean(§§pop()));
            break loop1;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,null);
               if(_loc5_)
               {
                  duplicator.billboardMode = true;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            sprites.push(duplicator);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               duplicator.goesTo = new § !N§(_loc2_,-1);
               if(_loc5_)
               {
                  child = new §^s§(§9_§,§'O§.child,false,null,false,null);
                  if(_loc6_)
                  {
                     break;
                  }
                  child.billboardMode = true;
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            sprites.push(child);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc6_)
         {
            child.goesTo = new § !N§(_loc4_,-1);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §^!`§();
         duplicator.§9E§(4.8,30.9);
         duplicator.spritesheet.§,=§(76);
         if(_loc4_)
         {
            duplicator.spritesheet.§@S§(true);
            child.§9E§(3,31);
            if(!_loc5_)
            {
               child.spritesheet.§,=§(105);
            }
         }
         child.spritesheet.§@S§(true);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(dialog);
               §§push("Wait...");
               §§push(-240);
               §§push(-360);
               if(!_loc5_)
               {
                  §§push(null);
                  if(_loc5_)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           break loop1;
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     §§push(null);
                     break loop0;
                  }
               }
               §§push(null);
               if(!_loc5_)
               {
                  §§push(§§pop());
                  break;
               }
               break loop0;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            var _loc1_:* = §&!S§.width(1770);
            var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
            if(!_loc5_)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("This means they put a very greedy person in charge of their money.");
                     §§push(104);
                     §§push(-240);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           break loop3;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc5_)
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc5_)
                           {
                              break loop3;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop3;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop3;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),-1,_loc2_);
               }
               §§push(§§pop() / 2.5);
               break loop4;
            }
            _loc2_ = new § 6§(child.§<!U§());
            if(!_loc5_)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("That\'s bad?");
                     §§push(440);
                     §§push(-40);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(!_loc5_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 addr01c6:
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop5;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop5;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop5;
                              }
                           }
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop5;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§goto(addr01c6);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
               }
               §§push(§§pop() / 2.5);
               break loop6;
            }
            _loc1_ = §&!S§.width(1010);
            _loc2_ = new § 6§(duplicator.§<!U§());
            if(_loc4_)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Yeah: for them. It\'s great news for us!");
                        §§push(-108);
                        §§push(268);
                        if(!_loc5_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 §§push(null);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop());
                                    break loop8;
                                 }
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc5_)
                              {
                                 break loop7;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop7;
                              }
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop7;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
               }
               §§push(§§pop() / 2.5);
               break loop8;
            }
            _loc1_ = §&!S§.scale(0.6);
            var _loc3_:* = §&!S§.width(950);
            if(_loc4_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("We need to capitalize on this, if you\'ll excuse the pun.");
                  §§push(220);
                  §§push(360);
                  if(_loc4_)
                  {
                     if(_loc1_ == null)
                     {
                        if(_loc4_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else if(_loc1_ >= 0)
                     {
                        §§push(_loc1_ / 2.5);
                        break;
                     }
                  }
                  §§push(_loc1_);
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc3_ == null ? null : int(Math.round(_loc3_ / 2.5)),-1,null);
               if(!_loc5_)
               {
                  §6u§();
               }
            }
            return;
         }
         §§push(§§pop() / 2.5);
         break loop1;
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §^!`§();
         duplicator.§9E§(4.8,31.4);
         if(!_loc4_)
         {
            duplicator.spritesheet.§,=§(81);
            if(!_loc4_)
            {
               duplicator.spritesheet.§@S§(true);
            }
            child.§9E§(3,31);
            child.spritesheet.§,=§(105);
            child.spritesheet.§@S§(true);
         }
         var _loc1_:* = §&!S§.width(1770);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("How do you know he\'s the treasure? Just \'cause he loves batteries?");
                     §§push(104);
                     §§push(-232);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 break loop1;
                              }
                              break loop0;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop0;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         loop3:
         while(true)
         {
            if(_loc3_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Well, yeah. Who else would it be?");
                     §§push(0);
                     §§push(240);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 addr014d:
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop4;
                              }
                              addr0169:
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop4;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr0169);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                        }
                        §§push(§§pop() / 2.5);
                        break;
                     }
                     §§goto(addr014d);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
                  if(!_loc3_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop());
               break loop5;
            }
            §6u§();
            break;
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §^!`§();
         duplicator.§9E§(4.8,31.8);
         duplicator.spritesheet.§,=§(65);
         duplicator.spritesheet.§@S§(false);
         child.§9E§(3,31);
         child.spritesheet.§,=§(102);
         child.spritesheet.§@S§(true);
         var _loc1_:* = §&!S§.width(1050);
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("Is the Gentleman part of it?");
                  §§push(176);
                  §§push(-212);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 addr009f:
                                 §§push(§§pop());
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop0;
                        }
                        addr00b1:
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break;
                        }
                        break loop0;
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00b1);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = §&!S§.width(950);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("Absolutely! He\'s the official conspiracy treasurer.");
                  §§push(-308);
                  §§push(96);
                  if(!_loc4_)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc3_)
                                 {
                                    addr012f:
                                    §§push(null);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop4;
                                    }
                                    break loop3;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop5;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop3;
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr012f);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("The official what?");
                        §§push(360);
                        §§push(200);
                        if(!_loc4_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop8;
                              }
                              §§goto(addr01e9);
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop8;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr01ee);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr01e9);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),0,_loc2_);
            addr01ee:
            loop9:
            while(true)
            {
               if(_loc3_)
               {
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("He keeps track of everyone\'s money.");
                        §§push(40);
                        §§push(320);
                        if(_loc3_)
                        {
                           loop12:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(_loc3_)
                                       {
                                          addr0237:
                                          §§push(null);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             break loop11;
                                          }
                                          break loop10;
                                       }
                                       break;
                                    }
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       break loop12;
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 break loop10;
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              break loop10;
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§goto(addr0237);
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),1,null);
                     if(!_loc3_)
                     {
                        break loop9;
                     }
                  }
                  §§push(§§pop() / 2.5);
                  break loop11;
               }
               §@!U§("Gentleman",-160,-80);
               break;
            }
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §^!`§();
            duplicator.§9E§(4.8,30.3);
            while(true)
            {
               if(!_loc3_)
               {
                  duplicator.spritesheet.§,=§(47);
                  if(!_loc4_)
                  {
                     break;
                  }
                  duplicator.spritesheet.§@S§(false);
                  child.§9E§(3,31);
               }
               child.spritesheet.§,=§(102);
               break;
            }
            child.spritesheet.§@S§(true);
         }
         var _loc1_:* = §&!S§.width(1250);
         if(_loc4_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Sometimes she tells you what you should do.");
                  §§push(-96);
                  §§push(-292);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr00b6:
                              §§goto(addr00db);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop1;
                           }
                        }
                        addr00ca:
                        §§push(null);
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00db);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr00db:
         }
         _loc1_ = §&!S§.width(1510);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Sometimes she tells you about the Spaghetti Monster.");
                     §§push(224);
                     §§push(-132);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop4;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                           §§goto(addr016f);
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop4;
                  }
                  §§goto(addr017a);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0175);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),-1,_loc2_);
            addr017a:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         loop6:
         while(true)
         {
            if(!_loc3_)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Scaring people into submission. Classic.");
                     §§push(160);
                     §§push(320);
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    addr01d4:
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       break loop8;
                                    }
                                    break loop7;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop7;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           addr01fb:
                           §§push(null / 2.5);
                           break loop8;
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           break loop7;
                        }
                        §§goto(addr01fb);
                     }
                     §§goto(addr01d4);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
                  if(_loc3_)
                  {
                     break loop6;
                  }
               }
               §§push(§§pop());
               break loop8;
            }
            §6u§();
            break;
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §^!`§();
         duplicator.§9E§(4.8,30);
         duplicator.spritesheet.§,=§(79);
         if(_loc4_)
         {
            duplicator.spritesheet.§@S§(false);
         }
         child.§9E§(3,31);
         child.spritesheet.§,=§(102);
         child.spritesheet.§@S§(true);
         var _loc1_:* = §&!S§.width(1010);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Now let\'s talk about the Pastafarian!");
                        §§push(-68);
                        §§push(-172);
                        if(_loc4_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() != null)
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr00e6);
                  }
                  §§goto(addr00eb);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00e6);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00eb:
         }
         _loc1_ = §&!S§.width(900);
         _loc2_ = new § 6§(duplicator.§<!U§());
         loop4:
         while(true)
         {
            if(!_loc3_)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("What do we know about her?");
                     §§push(8);
                     §§push(268);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    addr0154:
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       break loop6;
                                    }
                                    break loop5;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    break loop5;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break;
                                 }
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop5;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break;
                        }
                        break loop5;
                     }
                     §§goto(addr0154);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
                  if(!_loc4_)
                  {
                     break loop4;
                  }
               }
               §§push(§§pop());
               break loop6;
            }
            §@!U§("Pastafarian",-200,40);
            break;
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §^!`§();
         duplicator.§9E§(4.8,30);
         duplicator.spritesheet.§,=§(72);
         if(_loc3_)
         {
            duplicator.spritesheet.§@S§(false);
            if(!_loc4_)
            {
               child.§9E§(3,31);
            }
         }
         child.spritesheet.§,=§(102);
         if(!_loc4_)
         {
            child.spritesheet.§@S§(true);
         }
         var _loc1_:* = §&!S§.width(1370);
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Clearly, the Skater is the messenger for the group.");
                        §§push(-216);
                        §§push(-252);
                        if(!_loc4_)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              §§goto(addr00c8);
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr00d3);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00ce);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr00d3:
         }
         _loc1_ = §&!S§.width(1260);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(dialog);
                  §§push("I never saw him messenging for anyone.");
                  §§push(264);
                  §§push(-92);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc4_)
                           {
                              §§goto(addr0176);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop5;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop4;
                     }
                  }
                  §§push(null);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop4;
               }
               §§goto(addr0176);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr0176:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            loop7:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("You probably missed it.");
                  §§push(-160);
                  §§push(240);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              addr01d4:
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop7;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop7;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop7;
                           }
                        }
                        §§push(null);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           break;
                        }
                     }
                     break loop7;
                  }
                  §§goto(addr01d4);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),0,_loc2_);
               if(!_loc4_)
               {
                  §6u§();
               }
            }
            §§push(§§pop() / 2.5);
            break loop8;
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §^!`§();
         }
         duplicator.§9E§(4.8,30.7);
         duplicator.spritesheet.§,=§(77);
         duplicator.spritesheet.§@S§(true);
         if(!_loc3_)
         {
            child.§9E§(3,30.9);
            child.spritesheet.§,=§(102);
         }
         child.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("Does that sound like fun to you?");
                  §§push(-160);
                  §§push(-240);
                  if(_loc2_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop());
                                    break loop1;
                                 }
                                 break loop0;
                              }
                              break;
                           }
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop0;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop0;
                     }
                  }
                  §§push(null);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop0;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc2_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Maybe?");
                  §§push(320);
                  §§push(200);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        break loop3;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr0163);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop3;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§goto(addr0163);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr0163:
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(_loc2_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("No, it sounds like a job.");
                     §§push(-40);
                     §§push(280);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr01c0:
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              addr01d9:
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop5;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break loop5;
                                 }
                                 §§goto(addr01d9);
                              }
                           }
                           §§push(§§pop());
                           break loop6;
                        }
                        break;
                     }
                     §§goto(addr01c0);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               if(!_loc3_)
               {
                  §6u§();
               }
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §^!`§();
         duplicator.§9E§(4.8,31.1);
         while(true)
         {
            if(_loc4_)
            {
               duplicator.spritesheet.§,=§(82);
               if(_loc3_)
               {
                  break;
               }
               duplicator.spritesheet.§@S§(false);
               child.§9E§(3,31);
               if(!_loc4_)
               {
                  break;
               }
               child.spritesheet.§,=§(60);
            }
            child.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("Consider the Skater. What does he do?");
                  §§push(0);
                  §§push(-280);
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§goto(addr00db);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop1;
                     }
                  }
                  §§push(null);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§goto(addr00db);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00db:
         }
         var _loc2_:* = §&!S§.width(900);
         if(!_loc3_)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("He skates around really fast.");
                        §§push(-232);
                        §§push(68);
                        if(_loc4_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 break loop4;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop5;
                              }
                              §§goto(addr016a);
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop5;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr016f);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr016a);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc4_ ? §§pop() : §§pop() / 2.5,_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,null);
            addr016f:
         }
         _loc2_ = §&!S§.width(1110);
         _loc1_ = new § 6§(child.§<!U§());
         loop8:
         while(true)
         {
            if(!_loc3_)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("He never stops except to sleep I guess.");
                     §§push(184);
                     §§push(296);
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       break loop10;
                                    }
                                    break loop9;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop9;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop9;
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop9;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),-1,_loc1_);
                  if(_loc3_)
                  {
                     break loop8;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop10;
            }
            §@!U§("Skater",-200,-120);
            break;
         }
      }
      
      public function frame17() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §^!`§();
            duplicator.§9E§(4.8,31);
            if(!_loc3_)
            {
               duplicator.spritesheet.§,=§(46);
               duplicator.spritesheet.§@S§(false);
            }
            child.§9E§(3,31);
            child.spritesheet.§,=§(110);
         }
         child.spritesheet.§@S§(true);
         var _loc1_:* = §&!S§.width(1500);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("I don\'t wanna play a game where the Runner\'s a bad guy.");
                        §§push(144);
                        §§push(-212);
                        if(_loc4_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                              §§goto(addr00d5);
                           }
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break loop4;
                        }
                        break loop1;
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00e0);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00db);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc4_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00e0:
            if(_loc4_)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("What?");
                     §§push(-408);
                     §§push(176);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr012c:
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop2;
                              }
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              §§push(§§pop());
                              break;
                           }
                        }
                        break loop2;
                     }
                     §§goto(addr012c);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               }
               §§push(§§pop() / 2.5);
               break loop3;
            }
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("This isn\'t a game.");
                     §§push(-132);
                     §§push(236);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 addr01c8:
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 break loop6;
                              }
                              addr01e2:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop6;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr01e2);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                           §§push(§§pop() / 2.5);
                           break loop7;
                        }
                        break;
                     }
                     §§goto(addr01c8);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc2_);
            }
            §§push(§§pop());
            break loop7;
         }
         _loc1_ = §&!S§.width(1260);
         if(!_loc3_)
         {
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Recognizing conspiracies is a vital life skill.");
                     §§push(184);
                     §§push(340);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop10;
                              }
                              break loop9;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop9;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop9;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop9;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),-1,null);
            }
            §§push(§§pop() / 2.5);
            break loop10;
         }
      }
      
      public function frame16() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §^!`§();
            duplicator.§9E§(4.8,31.3);
            duplicator.spritesheet.§,=§(82);
            duplicator.spritesheet.§@S§(true);
            child.§9E§(3,31);
            child.spritesheet.§,=§(110);
            child.spritesheet.§@S§(true);
         }
         var _loc1_:* = §&!S§.width(1200);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Ok, your next job is to figure out what the Student\'s really up to.");
                     §§push(-200);
                     §§push(-132);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop1;
                              }
                              break loop0;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop0;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(_loc4_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Dad?");
                     §§push(200);
                     §§push(124);
                     if(_loc4_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop4;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop4;
                           }
                           §§goto(addr016c);
                        }
                     }
                     §§push(null);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop4;
                  }
                  §§goto(addr0171);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr016c);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc4_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr0171:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Yes?");
                        §§push(-160);
                        §§push(212);
                        if(_loc4_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() != null)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop7;
                              }
                              break;
                           }
                           if(_loc3_)
                           {
                              break loop6;
                           }
                        }
                        §§push(null);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           break loop8;
                        }
                        break loop7;
                     }
                     §§goto(addr01f6);
                  }
                  §§goto(addr0207);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr01f6);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr0207:
         }
      }
      
      public function frame15() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §^!`§();
         while(true)
         {
            if(!_loc4_)
            {
               duplicator.§9E§(4.8,31.8);
               if(_loc4_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§,=§(79);
            duplicator.spritesheet.§@S§(false);
            child.§9E§(3,31);
            if(!_loc4_)
            {
               child.spritesheet.§,=§(110);
            }
            child.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(1800);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("She says she\'s doing science, but she doesn\'t even have a clipboard.");
                     §§push(120);
                     §§push(-280);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(null);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop2;
                                    }
                                    break loop1;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop1;
                        }
                     }
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
               loop4:
               while(true)
               {
                  if(!_loc4_)
                  {
                     § !C§("says");
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Good observation!");
                           §§push(-200);
                           §§push(-40);
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(null);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             break loop6;
                                          }
                                          break loop5;
                                       }
                                       break;
                                    }
                                    §§push(null);
                                    if(_loc4_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 break loop5;
                              }
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           break loop5;
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
                     break loop4;
                  }
                  §§push(§§pop() / 2.5);
                  break loop6;
               }
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         _loc1_ = §&!S§.width(1120);
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("That\'s exactly the sort of clue we need.");
                     §§push(-224);
                     §§push(308);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break loop10;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 break loop11;
                              }
                              break loop10;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop10;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop10;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),-1,_loc2_);
               if(_loc3_)
               {
                  §6u§();
               }
            }
            §§push(§§pop() / 2.5);
            break loop11;
         }
      }
      
      public function frame14() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §^!`§();
         }
         duplicator.§9E§(4.8,31.8);
         while(true)
         {
            if(_loc3_)
            {
               duplicator.spritesheet.§,=§(46);
               duplicator.spritesheet.§@S§(true);
               if(_loc4_)
               {
                  break;
               }
            }
            child.§9E§(3,31);
            child.spritesheet.§,=§(109);
            if(!_loc4_)
            {
               child.spritesheet.§@S§(true);
            }
            break;
         }
         var _loc1_:* = §&!S§.width(1460);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Have you found out anything about the Student?");
                     §§push(-136);
                     §§push(-292);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop2;
                              }
                              break loop1;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop1;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop1;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         _loc1_ = §&!S§.width(980);
         _loc2_ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Not really. She just sort of sits around most of the time.");
                  §§push(292);
                  §§push(216);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              addr0164:
                              §§push(null);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop4;
                           }
                           addr017d:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr017d);
                              }
                              else
                              {
                                 §§push(null);
                              }
                           }
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr0164);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
               if(!_loc4_)
               {
                  §@!U§("Student",280,-160);
               }
            }
            §§push(§§pop());
            break loop5;
         }
      }
      
      public function frame13() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §^!`§();
            duplicator.§9E§(4.8,30.6);
         }
         duplicator.spritesheet.§,=§(38);
         while(true)
         {
            if(!_loc4_)
            {
               duplicator.spritesheet.§@S§(true);
               child.§9E§(3,31);
               if(!_loc4_)
               {
                  child.spritesheet.§,=§(109);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            child.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(1260);
         if(!_loc4_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("It\'s a ploy to make people do what she says.");
                        §§push(-96);
                        §§push(-252);
                        if(_loc3_)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              §§goto(addr00d1);
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           break loop3;
                        }
                        break loop2;
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00dc);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00d7);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,null);
            addr00dc:
         }
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  §§push(dialog);
                  §§push("Ploy?");
                  §§push(0);
                  §§push(-80);
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 addr013d:
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    break loop6;
                                 }
                                 break loop5;
                              }
                              break;
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop5;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop5;
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop5;
                  }
                  §§goto(addr013d);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("A trick.");
                     §§push(-280);
                     §§push(200);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc3_)
                                 {
                                    addr01d4:
                                    §§push(null);
                                    if(_loc3_)
                                    {
                                       break loop10;
                                    }
                                    break loop8;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    break loop8;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break;
                                 }
                              }
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop8;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop9;
                        }
                        break;
                     }
                     §§goto(addr01d4);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),0,_loc2_);
            }
            §§push(§§pop());
            break loop9;
         }
         _loc2_ = new § 6§(child.§<!U§());
         loop12:
         while(true)
         {
            if(_loc3_)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Being nice is a trick?");
                     §§push(200);
                     §§push(240);
                     if(!_loc4_)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc4_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr028c);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop13;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop13;
                  }
                  §§goto(addr028c);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
               addr028c:
               if(!_loc3_)
               {
                  break;
               }
            }
            loop15:
            while(true)
            {
               loop16:
               while(true)
               {
                  §§push(dialog);
                  §§push("Yes.");
                  §§push(-40);
                  §§push(360);
                  if(_loc3_)
                  {
                     loop17:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc4_)
                                 {
                                    addr02d6:
                                    §§push(null);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       break loop16;
                                    }
                                    break loop15;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop17;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop15;
                        }
                        §§push(null);
                        if(!_loc4_)
                        {
                           break;
                        }
                        break loop15;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr02d6);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),2,null);
               if(!_loc4_)
               {
                  §6u§();
               }
               break loop12;
            }
            §§push(§§pop() / 2.5);
            break loop16;
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §^!`§();
         while(true)
         {
            if(!_loc4_)
            {
               duplicator.§9E§(4.8,30.3);
               duplicator.spritesheet.§,=§(46);
               if(_loc4_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§@S§(false);
            if(!_loc4_)
            {
               child.§9E§(3,31);
               child.spritesheet.§,=§(108);
               if(_loc4_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(1400);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("The Runner can\'t be in the conspirspacy.");
                  §§push(184);
                  §§push(-252);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc3_)
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr00f1);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop1;
                        }
                     }
                  }
                  §§push(null);
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§goto(addr00f1);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            addr00f1:
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("She can, and she is.");
                  §§push(-200);
                  §§push(-80);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc4_)
                           {
                              §§goto(addr0187);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop3;
                     }
                  }
                  §§push(null);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§goto(addr0187);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr0187:
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("She\'s too nice for that.");
                  §§push(280);
                  §§push(200);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              §§goto(addr0212);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc4_)
                           {
                              break loop6;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop6;
                     }
                  }
                  §§push(null);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop6;
               }
               §§goto(addr0212);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr0212:
            if(_loc3_)
            {
               §@!U§("Runner",280,-40);
            }
         }
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §^!`§();
         while(true)
         {
            if(!_loc4_)
            {
               duplicator.§9E§(4.8,29.9);
               duplicator.spritesheet.§,=§(76);
               duplicator.spritesheet.§@S§(false);
               if(!_loc4_)
               {
                  child.§9E§(3,31);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            child.spritesheet.§,=§(107);
            child.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(1100);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I heard he works at the Factory...");
                     §§push(16);
                     §§push(-212);
                     if(_loc5_)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    addr00c8:
                                    §§push(§§pop());
                                    break loop2;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc5_)
                                 {
                                    break loop3;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop1;
                           }
                           addr00dc:
                           §§push(null);
                           if(_loc5_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00dc);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(_loc5_)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Aha! He\'s a government agent!");
                  §§push(-280);
                  §§push(-40);
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        break loop5;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc4_)
                        {
                           §§push(null);
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr0186);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           break loop5;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop5;
                        }
                     }
                  }
                  §§push(null);
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop5;
               }
               §§goto(addr0186);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc2_);
            addr0186:
         }
         _loc1_ = §&!S§.scale(0.8);
         var _loc3_:* = §&!S§.width(600);
         loop7:
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("And probably an engineer.");
                  §§push(-404);
                  §§push(108);
                  if(_loc5_)
                  {
                     if(_loc1_ == null)
                     {
                        if(!_loc4_)
                        {
                           §§push(null);
                           break;
                        }
                     }
                     else if(_loc1_ >= 0)
                     {
                        §§push(_loc1_ / 2.5);
                        break;
                     }
                  }
                  §§push(_loc1_);
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc3_ == null ? null : int(Math.round(_loc3_ / 2.5)),-1,null);
               if(_loc5_)
               {
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(dialog);
                           §§push("That explains everything!");
                           §§push(-40);
                           §§push(240);
                           if(_loc5_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc5_)
                                    {
                                       addr0246:
                                       §§push(null);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       break loop9;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(!_loc5_)
                                    {
                                       break loop9;
                                    }
                                    if(§§pop() >= 0)
                                    {
                                       §§push(null);
                                       break loop9;
                                    }
                                 }
                                 §§push(null);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    break loop10;
                                 }
                                 break loop9;
                              }
                              break;
                           }
                           §§goto(addr0246);
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,null);
                     if(_loc4_)
                     {
                        break loop7;
                     }
                  }
                  §§push(§§pop() / 2.5);
                  break loop10;
               }
            }
            §6u§();
            break;
         }
      }
      
      public function frame10() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §^!`§();
                  if(!_loc3_)
                  {
                     duplicator.§9E§(4.8,30.5);
                     duplicator.spritesheet.§,=§(78);
                     if(!_loc3_)
                     {
                        duplicator.spritesheet.§@S§(false);
                        child.§9E§(3,31);
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                  }
                  child.spritesheet.§,=§(106);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               child.spritesheet.§@S§(true);
               if(_loc4_)
               {
                  break;
               }
               break loop0;
            }
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  §§push(dialog);
                  §§push("Ok, next is the Angel.");
                  §§push(-40);
                  §§push(-320);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break loop6;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              §§goto(addr00d2);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop7;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop6;
                     }
                  }
                  §§push(null);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop6;
               }
               §§goto(addr00d2);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr00d2:
            break;
         }
         var _loc1_:* = §&!S§.width(1400);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("He\'s mean and he wants to go home. I don\'t like him.");
                  §§push(224);
                  §§push(-132);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              addr0148:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop2;
                           }
                           addr0161:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop2;
                              }
                              §§goto(addr0161);
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr0148);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),null,_loc2_);
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
         _loc1_ = §&!S§.width(1260);
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Splitting up? That\'s unusual for a conspiracy.");
                  §§push(-56);
                  §§push(268);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              addr01de:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop4;
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop4;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr01de);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc1_ == null ? null : int(Math.round(_loc1_ / 2.5)),0,_loc2_);
               if(_loc4_)
               {
                  §@!U§("Angel",310,-280);
               }
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §^!`§();
         duplicator.§9E§(4.8,31.2);
         duplicator.spritesheet.§,=§(71);
         duplicator.spritesheet.§@S§(false);
         child.§9E§(3,31);
         child.spritesheet.§,=§(69);
         child.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(dialog);
                  §§push("About the conspiracy, of course.");
                  §§push(-40);
                  §§push(-240);
                  if(_loc2_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop0;
                     }
                  }
                  §§push(null);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop0;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc2_)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("What conpiracy?");
                  §§push(360);
                  §§push(-40);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              addr012a:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop3;
                           }
                           addr0142:
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop3;
                              }
                              §§goto(addr0142);
                           }
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr012a);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop4;
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("You mean you haven\'t noticed?");
                     §§push(0);
                     §§push(280);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break loop6;
                              }
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop5;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop5;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop5;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         tunnel.§<M§(0.6);
         §^!`§();
         duplicator.§9E§(4.8,31.2);
         duplicator.spritesheet.§,=§(79);
         if(_loc4_)
         {
            duplicator.spritesheet.§@S§(false);
            while(true)
            {
               if(_loc4_)
               {
                  child.§9E§(3,31);
                  if(_loc3_)
                  {
                     break;
                  }
                  child.spritesheet.§,=§(69);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               child.spritesheet.§@S§(true);
               if(!_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("So!");
                        §§push(-332);
                        §§push(-280);
                        if(!_loc3_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc4_)
                              {
                                 §§push(null);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr00dc);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop1;
                              }
                           }
                        }
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     §§goto(addr00dc);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
                  addr00dc:
               }
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("Let\'s review what we know.");
                  §§push(-16);
                  §§push(-212);
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break loop4;
                              }
                              §§goto(addr0177);
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(null);
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop3;
                     }
                  }
                  §§push(null);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§goto(addr0177);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),-1,_loc1_);
            addr0177:
         }
         var _loc2_:* = §&!S§.width(850);
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc4_)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("What we know about what?");
                  §§push(168);
                  §§push(308);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_)
                           {
                              §§push(null);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr01eb:
                              §§goto(addr021d);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break loop6;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop6;
                           }
                        }
                        addr01ff:
                        §§push(null);
                        if(_loc4_)
                        {
                           break;
                        }
                        break loop6;
                     }
                     §§goto(addr01eb);
                  }
                  §§goto(addr01ff);
               }
               §§goto(addr021d);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc2_ == null ? null : int(Math.round(_loc2_ / 2.5)),null,_loc1_);
            addr021d:
         }
      }
   }
}

