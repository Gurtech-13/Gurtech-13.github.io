package com.player03.run3.level
{
   import §%!Z§.§&!S§;
   import §0!"§.§&B§;
   import §0!"§.§,!Z§;
   import layout3d.Layout3D;
   import §4!8§.§1!3§;
   import §>T§.§-2§;
   import §]N§.§?!H§;
   import §`!7§.§`!3§;
   import com.player03.run3.menu.§ L§;
   import flash.Boot;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§'h§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import openfl.Assets;
   
   public class §2N§ implements §[!M§
   {
      
      public var tunnelBounds:§&B§;
      
      public var tunnel:Level;
      
      public var §0!!§:Vector.<§-2§>;
      
      public var startZ:Number;
      
      public var endZ:Number;
      
      public var §4K§:int;
      
      public var §3^§:§7!M§;
      
      public function §2N§(param1:Level, param2:§>W§, param3:§>W§, param4:Number, param5:Point3D = undefined, param6:Quaternion = undefined, param7:Object = undefined)
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc13_:* = null as §-2§;
         var _loc14_:* = 0;
         var _loc15_:* = null as Vector.<§-2§>;
         while(true)
         {
            if(param7 == null)
            {
               if(!_loc16_)
               {
                  break;
               }
               param7 = true;
            }
            tunnel = param1;
            if(param4 > 0)
            {
               if(!_loc17_)
               {
                  startZ = 0;
               }
               break;
            }
            addr007f:
            endZ = 0;
            if(_loc16_)
            {
               addr0077:
               startZ = param4;
            }
            var _loc8_:Point3D = null;
            while(true)
            {
               if(_loc16_)
               {
                  if(param6 == null)
                  {
                     break;
                  }
               }
               _loc8_ = new Point3D(0,0,startZ);
               break;
            }
            var _loc9_:Vector.<§-2§> = new Vector.<§-2§>(0,false);
            if(_loc16_)
            {
               §0!!§ = _loc9_;
            }
            var _loc10_:Vector.<§?!H§> = new Vector.<§?!H§>(0,false);
            var _loc11_:Vector.<§?!H§> = _loc10_;
            var _loc12_:§#!J§ = new §#!J§(param1,param2,param3,§<!9§.§7!P§(),startZ,endZ);
            loop0:
            while(_loc12_.hasNext())
            {
               _loc13_ = _loc12_.next();
               loop4:
               while(true)
               {
                  if(!_loc17_)
                  {
                     if(!param7)
                     {
                        _loc13_.§`-§(null);
                        _loc13_.§,!!§ = false;
                        if(!_loc16_)
                        {
                           break;
                        }
                     }
                  }
                  while(true)
                  {
                     if(param6 != null)
                     {
                        if(_loc17_)
                        {
                           break;
                        }
                        _loc13_.§`!N§(param6,_loc8_,param5);
                     }
                     else if(param5 != null)
                     {
                        break loop4;
                     }
                     addr016e:
                     param1.§4M§(_loc13_);
                     break;
                  }
                  _loc13_.reset();
                  if(!_loc17_)
                  {
                     §0!!§.push(_loc13_);
                  }
                  _loc11_.push(_loc13_.§8I§());
                  continue loop0;
               }
               _loc13_.§"!<§(param5);
               §§goto(addr016e);
            }
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(!_loc17_)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(_loc16_)
                        {
                           if(param5 != null)
                           {
                              break;
                           }
                        }
                        §§pop();
                        if(_loc16_)
                        {
                           §§push(param6 != null);
                           break;
                        }
                        break loop7;
                     }
                     if(!§§pop())
                     {
                        break loop6;
                     }
                  }
                  startZ = §0!!§[0].transform.position.z;
                  endZ = startZ;
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc17_)
                        {
                           §§push(0);
                           if(_loc16_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc14_ = §§pop();
                           _loc15_ = §0!!§;
                           if(_loc16_)
                           {
                              loop1:
                              while(true)
                              {
                                 if(_loc14_ >= int(_loc15_.length))
                                 {
                                    break loop6;
                                 }
                                 _loc13_ = _loc15_[_loc14_];
                                 if(_loc16_)
                                 {
                                    _loc14_++;
                                    if(!_loc17_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc13_.§;!C§.§8W§.min.z);
                                             if(_loc16_)
                                             {
                                                §§push(startZ);
                                                if(_loc17_)
                                                {
                                                   break;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc16_)
                                                   {
                                                      startZ = _loc13_.§;!C§.§8W§.min.z;
                                                      if(_loc17_)
                                                      {
                                                         break loop11;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                §§push(_loc13_.§;!C§.§8W§.max.z);
                                             }
                                             §§push(endZ);
                                             break;
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    break loop11;
                                 }
                              }
                           }
                           break loop6;
                        }
                        addr0320:
                        §3^§.transform.setRotation(param6);
                        break loop9;
                     }
                     §§goto(addr034a);
                  }
                  §3^§.transform.§3;§();
                  if(_loc16_)
                  {
                     §'!`§(0);
                  }
                  break loop10;
               }
               while(true)
               {
                  if(param5 != null)
                  {
                     §3^§.transform.§"w§(param5);
                     if(_loc17_)
                     {
                        break;
                     }
                  }
                  if(param6 == null)
                  {
                     break loop9;
                  }
                  §§goto(addr0320);
               }
               addr034a:
               return;
            }
            tunnelBounds = new §&B§(_loc11_);
            §3^§ = new §7!M§(this,param2);
            break loop7;
         }
         endZ = param4;
         if(!_loc16_)
         {
            §§goto(addr0077);
         }
         §§goto(addr007f);
      }
      
      public static function §[y§(param1:§&B§) : Vector.<Point3D>
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as §?!H§;
         var _loc2_:Vector.<Point3D> = new Vector.<Point3D>(0,false);
         var _loc3_:Vector.<Point3D> = _loc2_;
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§?!H§> = param1.planes;
         if(_loc8_)
         {
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               if(!_loc7_)
               {
                  _loc4_++;
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               _loc3_.push(_loc6_.origin);
            }
         }
         return _loc3_;
      }
      
      public static function §!G§(param1:TunnelSection, param2:TunnelSection) : §2N§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(true);
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        if(param1 == null)
                        {
                           break loop1;
                        }
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(param2 == null);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
               }
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(param1 == param2);
                     if(!_loc4_)
                     {
                        break loop2;
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               break loop2;
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            §§goto(addr008d);
         }
         Boot.lastError = new Error();
         if(!_loc3_)
         {
            throw new ArgumentError("Must specify two distinct sections!");
         }
         addr008d:
         §§push(§§findproperty(§2N§));
         §§push(param1.tunnel);
         §§push(§§findproperty(§>W§));
         §§push(§2N§.§[y§(param1.tunnelBounds));
         §§push(§`!3§.§ !`§(param1.params.get("color0"),16777215));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         §§push(new §§pop().§>W§(§§pop(),§§pop()));
         §§push(§§findproperty(§>W§));
         §§push(§2N§.§[y§(param2.tunnelBounds));
         §§push(§`!3§.§ !`§(param2.params.get("color0"),16777215));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         §§push(new §§pop().§>W§(§§pop(),§§pop()));
         §§push(param2.startZ);
         if(!_loc3_)
         {
            §§push(§§pop() - param1.endZ);
         }
         return new §§pop().§2N§(§§pop(),§§pop(),§§pop(),§§pop(),new Point3D(0,0,param1.endZ));
      }
      
      public static function §&>§(param1:TunnelSection, param2:Object = undefined) : §2N§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(§§findproperty(§>W§));
         §§push(§2N§.§[y§(param1.tunnelBounds));
         §§push(§`!3§.§ !`§(param1.params.get("color0"),16777215));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:§>W§ = new §§pop().§>W§(§§pop(),§§pop());
         var _loc4_:Point3D = null;
         while(true)
         {
            if(_loc5_)
            {
               if(param1.startZ == 0)
               {
                  break;
               }
            }
            _loc4_ = new Point3D(0,0,param1.startZ);
            break;
         }
         while(true)
         {
            §§push(§§findproperty(§2N§));
            §§push(param1.tunnel);
            §§push(_loc3_);
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(param2 == null)
               {
                  §§push(Level.§7!,§.z);
                  if(_loc5_)
                  {
                     §§push(§§pop() * 2);
                  }
                  break;
               }
            }
            §§push(-param2);
            if(_loc5_)
            {
            }
            break;
         }
         return new §§pop().§2N§(§§pop(),§§pop(),§§pop(),§§pop(),_loc4_);
      }
      
      public static function §`!L§(param1:TunnelSection, param2:Object = undefined) : §2N§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§findproperty(§>W§));
         §§push(§2N§.§[y§(param1.tunnelBounds));
         §§push(§`!3§.§ !`§(param1.params.get("color0"),16777215));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:§>W§ = new §§pop().§>W§(§§pop(),§§pop());
         while(true)
         {
            §§push(§§findproperty(§2N§));
            §§push(param1.tunnel);
            §§push(_loc3_);
            §§push(_loc3_);
            if(_loc4_)
            {
               if(param2 == null)
               {
                  §§push(3000);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
            }
            §§push(Number(param2));
            if(_loc4_)
            {
            }
            break;
         }
         return new §§pop().§2N§(§§pop(),§§pop(),§§pop(),§§pop(),new Point3D(0,0,param1.endZ));
      }
      
      public static function §'!'§(param1:Level, param2:Vector.<Point3D>, param3:Number, param4:int, param5:Point3D = undefined, param6:Quaternion = undefined, param7:Object = undefined) : §2N§
      {
         if(param7 == null)
         {
            param7 = true;
         }
         var _loc8_:§>W§ = new §>W§(param2,param4);
         return new §2N§(param1,_loc8_,_loc8_,param3,param5,param6,param7);
      }
      
      public static function §#^§(param1:Level, param2:String, param3:int, param4:Point3D = undefined, param5:Quaternion = undefined, param6:Object = undefined) : §2N§
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc12_:* = null as §?!H§;
         var _loc13_:* = null as Point3D;
         var _loc14_:* = null as Point3D;
         while(true)
         {
            if(_loc15_)
            {
               if(param6 != null)
               {
                  break;
               }
            }
            param6 = true;
            break;
         }
         §§push(Layout3D);
         §§push(§59§.§`!S§(param2,"layout"));
         if(_loc15_)
         {
            §§push(§§pop());
         }
         var _loc7_:Layout3D = §§pop().parseSpec(§§pop());
         var _loc8_:§&B§ = _loc7_.getAreaBounds();
         §§push(§`!3§);
         §§push(§59§.§`!S§(param2,"tileWidth"));
         if(!_loc16_)
         {
            §§push(§§pop());
         }
         while(true)
         {
            §§push(§§pop().§ !`§(§§pop(),75));
            if(!_loc16_)
            {
               §§push(int(§§pop()));
               if(!_loc15_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(!_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc11_:Vector.<§?!H§> = _loc8_.planes;
         if(!_loc16_)
         {
            loop0:
            while(true)
            {
               §§push(_loc10_);
               if(_loc16_)
               {
                  break;
               }
               if(§§pop() < int(_loc11_.length))
               {
                  _loc12_ = _loc11_[_loc10_];
                  if(_loc15_)
                  {
                     _loc10_++;
                  }
                  _loc13_ = _loc12_.origin;
                  _loc14_ = _loc12_.origin;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc15_)
                        {
                           if(_loc14_ != null)
                           {
                              break;
                           }
                           if(!_loc15_)
                           {
                              break loop3;
                           }
                        }
                        _loc14_ = new Point3D(0,0,0);
                        break;
                     }
                     _loc14_.x = _loc13_.x * _loc9_;
                     if(!_loc16_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  _loc14_.y = _loc13_.y * _loc9_;
                  if(!_loc16_)
                  {
                     §§push(_loc14_);
                     §§push(_loc13_.z);
                     if(!_loc16_)
                     {
                        §§push(§§pop() * _loc9_);
                     }
                     §§pop().z = §§pop();
                  }
                  continue;
               }
               if(_loc15_)
               {
                  §§push(§`!3§);
                  §§push(§59§.§`!S§(param2,"color0"));
                  if(_loc15_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop().§ !`§(§§pop(),16777215));
                  if(_loc15_)
                  {
                     §§push(int(§§pop()));
                     if(_loc16_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
            }
            _loc10_ = §§pop();
         }
         return §2N§.§'!'§(param1,§2N§.§[y§(_loc8_),param3,_loc10_,param4,param5);
      }
      
      public function §'!`§(param1:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as Model;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     if(§4K§ != param1)
                     {
                        break;
                     }
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§3^§.§;Z§ == null);
                  if(!_loc4_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §4K§ = param1;
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  if(§3^§.§;Z§ != null)
                  {
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00d4);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §3^§.§;Z§.§4w§(§3^§);
         addr00b1:
         _loc2_ = §3^§;
         if(_loc3_)
         {
            tunnel.§<!Y§.§"!b§(param1).§&!2§(_loc2_);
         }
         addr00d4:
         return §4K§;
      }
      
      public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §-2§;
         if(_loc5_)
         {
            if(§0!!§ != null)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               var _loc2_:Vector.<§-2§> = §0!!§;
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(!_loc4_)
                  {
                     _loc1_++;
                     if(_loc5_)
                     {
                        _loc3_.§9!?§();
                     }
                  }
               }
               while(true)
               {
                  if(_loc5_)
                  {
                     §0!!§ = null;
                     tunnel = null;
                     tunnelBounds = null;
                     §3^§.dispose();
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §3^§ = null;
                  break;
               }
               return;
            }
         }
      }
   }
}

