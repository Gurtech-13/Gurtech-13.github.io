package §`_§
{
   import §%!Q§.§ !N§;
   import §%!Z§.§&!S§;
   import §1^§.Transform;
   import §2!"§.§1e§;
   import §2!"§.§8f§;
   import §2X§.PositionData3D;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §<!&§.§ !#§;
   import §<!&§.§%!§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.TunnelSection;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   import openfl.Lib;
   
   public class §^s§ extends §%!§
   {
      
      public static var init__:Boolean;
      
      public static var §?!Y§:§"B§;
      
      public static var §!#§:PositionData3D;
      
      public static var posData1:PositionData3D;
      
      public static var §0!=§:Point3D;
      
      public var spritesheet:§1e§;
      
      public var §9_§:TunnelSection;
      
      public var §]<§:Boolean;
      
      public var §'e§:Rectangle;
      
      public var goesTo:§ !N§;
      
      public var §!8§:§6O§;
      
      public var §?!]§:Point3D;
      
      public var billboardMode:Boolean;
      
      public function §^s§(param1:TunnelSection, param2:§6O§, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined, param6:String = undefined)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(param3 == null)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(false);
                  if(!_loc7_)
                  {
                     break loop0;
                  }
                  param3 = §§pop();
               }
               if(param5 == null)
               {
                  break;
               }
               continue loop2;
            }
            §§push(false);
            break;
         }
         param5 = §§pop();
         goesTo = null;
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  §]<§ = true;
                  billboardMode = false;
                  if(_loc7_)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§§findproperty(spritesheet));
                                 §§push(§§findproperty(§1e§));
                                 if(_loc7_)
                                 {
                                    §§push(param6);
                                    if(!_loc7_)
                                    {
                                       break loop5;
                                    }
                                    §§push(null);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       break loop6;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(param2.§`6§());
                                       if(!_loc8_)
                                       {
                                          break loop4;
                                       }
                                       break loop5;
                                    }
                                 }
                                 §§push(param6);
                                 if(!_loc8_)
                                 {
                                    break loop5;
                                 }
                                 break loop4;
                              }
                              §§goto(addr00b0);
                           }
                           §§pop().spritesheet = new §§pop().§1e§(§§pop(),§§pop(),0.45681063122923593,null,null,null,param4 != null,null,param5,param3);
                           spritesheet.§0p§ = 1;
                           if(param4 != null)
                           {
                              spritesheet.alpha = param4;
                           }
                           super(param1.tunnel,false,spritesheet);
                           §9_§ = param1;
                           §!8§ = param2;
                           §§push(transform);
                           §§push(§,!1§);
                           if(_loc7_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§ !%§(§§pop());
                           if(!_loc7_)
                           {
                              break loop2;
                           }
                        }
                        addr00b0:
                        §§push(null);
                        break loop6;
                     }
                     §§push(§§pop());
                     break loop5;
                  }
                  break;
               }
               §§push(transform);
               §§push(§!!S§);
               if(_loc7_)
               {
                  §§push(§§pop());
               }
               §§pop().§ W§(§§pop());
               break;
            }
            §'e§ = new Rectangle();
            break;
         }
         param1.tunnel.§4M§(this);
      }
      
      public function §2e§(param1:§^s§) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:§"B§ = transform.§+n§();
         var _loc3_:§"B§ = param1.transform.§+n§();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               loop1:
               while(true)
               {
                  §§push(_loc2_.x);
                  if(!_loc4_)
                  {
                     §§push(_loc3_.x);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  while(true)
                  {
                     §§push(_loc2_.y);
                     §§push(_loc3_.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        §§push(_loc2_.z);
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        §§push(_loc3_.z);
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     addr0091:
                     §§push(§§pop() * §§pop());
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(_loc2_.w);
                        break loop1;
                     }
                     if(§§pop() + §§pop() >= 0)
                     {
                        break loop0;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc5_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  addr0090:
                  §§goto(addr0091);
               }
               §§goto(addr0090);
            }
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(!_loc4_)
            {
               §§push(-§§pop());
            }
            §§pop().y = §§pop();
            if(!_loc4_)
            {
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(!_loc4_)
               {
                  §§push(-§§pop());
               }
               §§pop().z = §§pop();
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc5_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().w = §§pop();
                  break;
               }
               §§goto(addr0104);
            }
            break;
         }
         §4!R§.§+!Q§(_loc2_,_loc3_,0.5,_loc2_);
         if(_loc5_)
         {
            addr0104:
            transform.§"I§(_loc2_);
            param1.transform.§"I§(_loc2_);
            §§goto(addr0115);
         }
         addr0115:
      }
      
      public function §9E§(param1:Number, param2:Number, param3:Object = undefined, param4:Object = undefined) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = NaN;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = null as §"B§;
         var _loc11_:* = null as §"B§;
         loop0:
         while(true)
         {
            loop1:
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
                        if(_loc12_)
                        {
                           if(param3 == null)
                           {
                              param3 = false;
                           }
                           while(true)
                           {
                              if(param4 == null)
                              {
                                 §§push(0);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 param4 = §§pop();
                              }
                              §§push(param1);
                              if(_loc13_)
                              {
                                 break loop17;
                              }
                              §§push(§9_§.layout.§6!,§(0,0,0,int(Math.floor(param2))));
                              if(!_loc12_)
                              {
                                 break loop16;
                              }
                              §§push(int(§§pop()));
                              if(!_loc12_)
                              {
                                 break loop15;
                              }
                              param1 = §§pop() + §§pop();
                              if(!_loc12_)
                              {
                                 break loop0;
                              }
                              if(!param3)
                              {
                                 break loop1;
                              }
                              §§push(§9_§.layout.§6!,§(0,0,0,1));
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(int(§§pop()));
                              if(_loc12_)
                              {
                                 break;
                              }
                              _loc5_ = §§pop();
                              if(_loc13_)
                              {
                                 break loop0;
                              }
                           }
                           §§goto(addr00bb);
                        }
                        §§push(param1);
                        if(!_loc13_)
                        {
                           §§push(int(Math.ceil(int(§9_§.terrain.length) / _loc5_)));
                           if(!_loc13_)
                           {
                              break loop15;
                           }
                           break loop16;
                        }
                        §§goto(addr0119);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr0121);
               }
               §§push(§§pop() * _loc5_);
               if(_loc13_)
               {
                  break loop16;
               }
               addr00f3:
               param1 = §§pop() + §§pop();
               if(_loc12_)
               {
                  break;
               }
               §§goto(addr02fc);
            }
            §9_§.layout.§<!C§(int(Math.floor(param1)),§^s§.§!#§);
            if(!_loc13_)
            {
               addr0121:
               addr0119:
               if(param1 != int(Math.floor(param1)))
               {
                  §9_§.layout.§<!C§(int(Math.ceil(param1)),§^s§.posData1);
                  break;
               }
               §§goto(addr02af);
            }
            §§goto(addr02fc);
         }
         §^s§.posData1.position.z = §^s§.§!#§.position.z;
         if(!_loc13_)
         {
            _loc6_ = §^s§.§!#§.position;
            _loc7_ = §^s§.posData1.position;
            if(_loc12_)
            {
               §§push(param1);
               if(_loc12_)
               {
                  §§push(§§pop() - int(Math.floor(param1)));
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc8_ = §§pop();
            }
            _loc9_ = §^s§.§!#§.position;
            while(true)
            {
               if(_loc9_ == null)
               {
                  if(!_loc12_)
                  {
                     break;
                  }
                  _loc9_ = new Point3D(0,0,0);
               }
               _loc9_.x = _loc6_.x + _loc8_ * (_loc7_.x - _loc6_.x);
               _loc9_.y = _loc6_.y + _loc8_ * (_loc7_.y - _loc6_.y);
               break;
            }
            while(true)
            {
               §§push(_loc9_);
               §§push(_loc6_.z);
               if(_loc12_)
               {
                  §§push(_loc8_);
                  if(!_loc13_)
                  {
                     §§push(_loc7_.z);
                     if(!_loc13_)
                     {
                        §§push(§§pop() - _loc6_.z);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().z = §§pop();
            while(true)
            {
               if(_loc12_)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc13_)
                        {
                           if(int(Math.round(param1)) <= int(Math.floor(param1)))
                           {
                              break loop5;
                           }
                           if(_loc13_)
                           {
                              break loop5;
                           }
                           §§pop();
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(§^s§.§!#§.rotation == null);
                           if(!_loc12_)
                           {
                              break loop5;
                           }
                           §§push(!§§pop());
                           if(!_loc12_)
                           {
                              break loop5;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop5;
                     }
                  }
                  if(§§pop())
                  {
                     break loop6;
                  }
                  break;
               }
               _loc10_ = §^s§.§!#§.rotation;
               _loc11_ = §^s§.posData1.rotation;
               if(_loc12_)
               {
                  _loc10_.x = _loc11_.x;
                  if(_loc12_)
                  {
                     _loc10_.y = _loc11_.y;
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  _loc10_.z = _loc11_.z;
                  if(_loc13_)
                  {
                     break;
                  }
               }
               _loc10_.w = _loc11_.w;
               break;
            }
            addr02af:
            var _temp_1:* = §^s§.§!#§.position;
            §§push(_temp_1);
            §§push(_temp_1.z);
            if(_loc12_)
            {
               while(true)
               {
                  §§push(0.5);
                  if(!_loc13_)
                  {
                     §§push(param2);
                     if(!_loc13_)
                     {
                        §§push(§§pop() - int(Math.floor(param2)));
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc12_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§push(§§pop() + §§pop());
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().z = §§pop();
         }
         addr02fc:
         _loc6_ = §^s§.§!#§.position;
         if(!_loc13_)
         {
            _loc8_ = §9_§.tileWidth;
         }
         _loc7_ = §^s§.§!#§.position;
         if(_loc12_)
         {
            while(true)
            {
               if(_loc7_ == null)
               {
                  if(!_loc12_)
                  {
                     break;
                  }
                  _loc7_ = new Point3D(0,0,0);
               }
               _loc7_.x = _loc6_.x * _loc8_;
               if(!_loc13_)
               {
                  break;
               }
               addr036b:
               §§push(_loc7_);
               §§push(_loc6_.z);
               if(_loc12_)
               {
                  §§push(§§pop() * _loc8_);
               }
               §§pop().z = §§pop();
               if(!_loc13_)
               {
                  addr0384:
                  var _temp_2:* = §^s§.§!#§.position;
                  §§push(_temp_2);
                  §§push(_temp_2.z);
                  if(!_loc13_)
                  {
                     §§push(§§pop() + §9_§.startZ);
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().z = §§pop();
               }
            }
            _loc7_.y = _loc6_.y * _loc8_;
            while(true)
            {
               if(!_loc13_)
               {
                  §§goto(addr036b);
               }
               §§goto(addr0384);
            }
         }
         _loc6_ = transform.§<!C§();
         while(true)
         {
            if(_loc12_)
            {
               _loc6_.x = 0;
               if(!_loc13_)
               {
                  §§push(_loc6_);
                  §§push(param4 + 15 * §!8§.§,#§);
                  if(_loc12_)
                  {
                     §§push(§§pop() + 1.5);
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().y = §§pop();
                  if(!_loc13_)
                  {
                     _loc6_.z = 0;
                     if(!_loc12_)
                     {
                        break;
                     }
                  }
               }
               if(§^s§.§!#§.rotation == null)
               {
                  break;
               }
               if(!_loc12_)
               {
                  break;
               }
            }
            §4!R§.§@!M§(§^s§.§!#§.rotation,_loc6_,_loc6_);
            break;
         }
         _loc7_ = §^s§.§!#§.position;
         _loc9_ = _loc6_;
         if(_loc9_ == null)
         {
            _loc9_ = new Point3D(0,0,0);
         }
         _loc9_.x = _loc6_.x + _loc7_.x;
         while(true)
         {
            if(_loc12_)
            {
               _loc9_.y = _loc6_.y + _loc7_.y;
               §§push(_loc9_);
               §§push(_loc6_.z);
               if(_loc12_)
               {
                  §§push(§§pop() + _loc7_.z);
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().z = §§pop();
               transform.§"w§(_loc6_);
               if(!billboardMode)
               {
                  _loc10_ = transform.§+n§();
                  loop12:
                  while(true)
                  {
                     if(!_loc13_)
                     {
                        while(true)
                        {
                           if(§^s§.§!#§.rotation != null)
                           {
                              if(!_loc13_)
                              {
                                 _loc11_ = §^s§.§!#§.rotation;
                                 while(true)
                                 {
                                    if(!_loc13_)
                                    {
                                       _loc10_.x = _loc11_.x;
                                       if(!_loc12_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc10_.y = _loc11_.y;
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    break loop12;
                                 }
                                 _loc10_.z = _loc11_.z;
                                 if(_loc12_)
                                 {
                                    _loc10_.w = _loc11_.w;
                                 }
                                 break loop12;
                              }
                              addr05a8:
                              _loc10_.y = 0;
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              _loc10_.x = 0;
                              if(_loc12_)
                              {
                                 §§goto(addr05a8);
                              }
                           }
                           _loc10_.z = 0;
                           if(!_loc13_)
                           {
                              break;
                           }
                           break loop12;
                        }
                     }
                     _loc10_.w = 1;
                     break;
                  }
                  §4!R§.§9!L§(§^s§.§?!Y§,_loc10_,_loc10_);
                  if(_loc12_)
                  {
                     transform.§"I§(_loc10_);
                  }
                  §§goto(addr05f4);
               }
               if(§?!]§ != null)
               {
                  _loc7_ = §?!]§;
                  if(!_loc13_)
                  {
                     _loc7_.x = 0;
                     if(_loc12_)
                     {
                        _loc7_.y = -1;
                        if(!_loc13_)
                        {
                           _loc7_.z = 0;
                        }
                     }
                  }
                  break;
               }
            }
            §?!]§ = new Point3D(0,-1,0);
            break;
         }
         if(§^s§.§!#§.rotation != null)
         {
            §4!R§.§@!M§(§^s§.§!#§.rotation,§?!]§,§?!]§);
         }
         §^0§();
         addr05f4:
      }
      
      public function §!!S§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §]<§ = true;
         }
      }
      
      public function §,!1§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §]<§ = true;
         }
      }
      
      public function §^0§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc1_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc1_)
                     {
                        if(!billboardMode)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop();
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        §§push(§?!]§ == null);
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                     }
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  if(!§§pop())
                  {
                     break loop0;
                  }
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop2;
            }
            § !#§.§^0§(transform,§!C§.§<!M§,§?!]§,false);
            break;
         }
      }
      
      public function §<!U§() : Rectangle
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         var _loc5_:* = null as §=s§;
         var _loc6_:* = null as §'!Y§;
         var _loc7_:* = 0;
         var _loc8_:* = null as §!!V§;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null as §!!V§;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     if(_loc12_)
                     {
                        §§push(§]<§);
                        if(_loc13_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop5;
                        }
                        if(_loc13_)
                        {
                           break loop4;
                        }
                        model.update(0);
                        if(_loc13_)
                        {
                           break loop3;
                        }
                     }
                     §§push(int(Lib.get_current().stage.stageWidth));
                     if(_loc12_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc12_)
                        {
                           break loop3;
                        }
                        §§push(int(Lib.get_current().stage.stageHeight));
                     }
                     _loc3_ = §§pop();
                     if(!_loc13_)
                     {
                        break loop3;
                     }
                     break loop4;
                  }
                  §§goto(addr00a9);
               }
               return §'e§;
            }
            _loc6_ = §2_§.§'!D§(model.§;Z§.§<G§.vertices,"position");
            if(_loc12_)
            {
               §§push(0);
               if(_loc12_)
               {
                  §§push(int(§§pop()));
               }
               _loc7_ = §§pop();
            }
            _loc8_ = model.vertices;
            if(!_loc13_)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc8_.§@!Y§.length);
                     if(_loc12_)
                     {
                        §§push(int(§§pop()));
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(_loc8_.§5G§);
                        if(_loc13_)
                        {
                           break loop6;
                        }
                        §§push(§§pop() / §§pop());
                     }
                     §§push(int(§§pop()));
                     if(_loc12_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                     _loc9_ = §§pop();
                     if(!_loc13_)
                     {
                        break loop13;
                     }
                     break loop5;
                  }
                  while(true)
                  {
                     §§push(_loc9_);
                     break loop6;
                  }
               }
               while(§§pop() < §§pop())
               {
                  §§push(_loc7_);
                  if(_loc12_)
                  {
                     _loc7_++;
                     if(_loc12_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc10_ = §§pop();
                  _loc11_ = _loc6_.vertices;
                  while(true)
                  {
                     if(_loc12_)
                     {
                        §§push(_loc11_);
                        §§push(_loc11_.§5G§);
                        if(_loc12_)
                        {
                           §§push(model.§&"§);
                           if(_loc12_)
                           {
                              §§push(§§pop() + _loc10_);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§pop().offset = §§pop();
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                     §§push(_loc6_.§+R§);
                     §§push(_loc11_.offset);
                     if(!_loc13_)
                     {
                        §§push(§§pop() + _loc6_.§+^§);
                     }
                     §§pop().offset = §§pop();
                     break;
                  }
                  _loc5_ = _loc6_.§+R§;
                  §§push(§^s§.§0!=§);
                  §§push(_loc5_.§@!Y§[_loc5_.offset]);
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().x = §§pop();
                  §§push(§^s§.§0!=§);
                  §§push(_loc5_.§@!Y§);
                  §§push(_loc5_.offset);
                  if(!_loc13_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(!_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().y = §§pop();
                  §§push(§^s§.§0!=§);
                  §§push(_loc5_.§@!Y§);
                  §§push(_loc5_.offset);
                  if(!_loc13_)
                  {
                     §§push(§§pop() + 2);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().z = §§pop();
                  §9_§.tunnel.§"[§.project(§^s§.§0!=§,§^s§.§0!=§);
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§^s§.§0!=§);
                        §§push(§^s§.§0!=§.x + 1);
                        if(_loc12_)
                        {
                           §§push(_loc2_);
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              break loop9;
                           }
                        }
                        §§push(2);
                        break;
                     }
                     §§push(§§pop() / §§pop());
                     break;
                  }
                  §§pop().x = §§pop();
                  §§push(§^s§.§0!=§);
                  §§push(1 - §^s§.§0!=§.y);
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(2);
                        }
                        §§push(§§pop() / §§pop());
                        break;
                     }
                  }
                  §§pop().y = §§pop();
                  loop12:
                  while(true)
                  {
                     loop13:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc12_)
                           {
                              §§push(_loc4_);
                              if(_loc13_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 if(§'e§.left > §^s§.§0!=§.x)
                                 {
                                    §'e§.left = §^s§.§0!=§.x;
                                    if(_loc12_)
                                    {
                                       break loop12;
                                    }
                                    break loop13;
                                 }
                                 if(§'e§.right < §^s§.§0!=§.x)
                                 {
                                    §'e§.right = §^s§.§0!=§.x;
                                 }
                                 break loop12;
                              }
                           }
                           §§push(false);
                           if(_loc12_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        _loc4_ = §§pop();
                        if(_loc12_)
                        {
                           §'e§.x = §^s§.§0!=§.x;
                           if(_loc13_)
                           {
                              break loop12;
                           }
                        }
                        §'e§.y = §^s§.§0!=§.y;
                        if(!_loc13_)
                        {
                           §'e§.width = 0;
                           §'e§.height = 0;
                           break;
                        }
                        break loop12;
                     }
                     while(true)
                     {
                        §§push(_loc7_);
                        break loop7;
                     }
                  }
                  if(§'e§.top > §^s§.§0!=§.y)
                  {
                     if(!_loc13_)
                     {
                        §'e§.top = §^s§.§0!=§.y;
                        break loop13;
                     }
                  }
                  else if(§'e§.bottom >= §^s§.§0!=§.y)
                  {
                     break loop13;
                  }
                  §'e§.bottom = §^s§.§0!=§.y;
                  break loop13;
               }
               if(_loc13_)
               {
                  break loop5;
               }
            }
            §]<§ = false;
            break loop5;
         }
         addr00a9:
         §§push(true);
         if(!_loc13_)
         {
            §§push(Boolean(§§pop()));
         }
         _loc4_ = §§pop();
         break loop4;
      }
   }
}

