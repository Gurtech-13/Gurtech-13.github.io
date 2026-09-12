package §"!M§
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §0!"§.§,!Z§;
   import §1^§.§]!Q§;
   import §3!b§.Cutscenes;
   import §3!b§.Naming;
   import §6[§.§5v§;
   import §6[§.§`!O§;
   import §<!&§.§%!§;
   import §<?§.§#!7§;
   import §>!O§.§0S§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§<!9§;
   
   public class §3u§ extends §,!Z§
   {
      
      public var §2w§:§,!Z§;
      
      public var §%g§:Vector.<§,!Z§>;
      
      public function §3u§(param1:§%!§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super(param1,0);
               if(!_loc3_)
               {
                  break;
               }
            }
            §%g§ = new Vector.<§,!Z§>();
            break;
         }
      }
      
      override public function §2y§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc6_:* = null as §,!Z§;
         if(_loc7_)
         {
            §8W§.clear();
         }
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§,!Z§> = §%g§;
         if(_loc7_)
         {
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               if(!_loc8_)
               {
                  _loc4_++;
                  if(_loc8_)
                  {
                     continue;
                  }
                  _loc6_.§2y§(param1,param2,param3);
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               §8W§.§]§(_loc6_.§8W§);
            }
         }
      }
      
      override public function §5=§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as §,!Z§;
         if(!_loc7_)
         {
            super.§5=§(param1,param2,param3);
         }
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§,!Z§> = §%g§;
         if(!_loc7_)
         {
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               if(_loc8_)
               {
                  _loc4_++;
                  if(_loc8_)
                  {
                     _loc6_.§5=§(param1,param2,param3);
                  }
               }
            }
         }
      }
      
      override public function §1%§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Object = undefined, param5:Point3D = undefined, param6:§"B§ = undefined) : Point3D
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc9_:* = null as §,!Z§;
         var _loc10_:* = NaN;
         loop1:
         while(true)
         {
            if(!_loc12_)
            {
               while(true)
               {
                  if(param5 == null)
                  {
                     if(!_loc11_)
                     {
                        break;
                     }
                     param5 = new Point3D(0,0,0);
                  }
                  param5.x = Number(Math.NaN);
                  if(_loc11_)
                  {
                     param5.y = Number(Math.NaN);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  break loop1;
               }
            }
            param5.z = Number(Math.NaN);
            break;
         }
         §§push(0);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<§,!Z§> = §%g§;
         if(_loc11_)
         {
            do
            {
               if(_loc7_ >= int(_loc8_.length))
               {
                  break;
               }
               _loc9_ = _loc8_[_loc7_];
               if(!_loc11_)
               {
                  break;
               }
               _loc7_++;
               if(!_loc12_)
               {
                  _loc9_.§1%§(param1,param2,param3,param4,param5,param6);
                  if(_loc12_)
                  {
                     break;
                  }
                  §§push(Number(param5.x));
                  if(!_loc11_)
                  {
                     continue;
                  }
                  _loc10_ = §§pop();
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               §§push(_loc10_);
            }
            while(§§pop() != _loc10_);
         }
         return param5;
      }
      
      override public function §&D§(param1:§,!Z§, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = null as §,!Z§;
         var _loc6_:* = null as §]!Q§;
         var _loc7_:* = null as §]!Q§;
         var _loc8_:* = NaN;
         while(true)
         {
            if(_loc10_)
            {
               if(param1 is §3u§)
               {
                  if(!_loc9_)
                  {
                     return;
                  }
                  break;
               }
               § i§.§%r§ = false;
               if(_loc9_)
               {
                  break;
               }
               param1.§ i§.§%r§ = false;
               if(_loc9_)
               {
                  break;
               }
            }
            §2w§ = null;
            break;
         }
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§,!Z§> = §%g§;
         if(_loc10_)
         {
            loop0:
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(_loc10_)
               {
                  _loc3_++;
               }
               _loc6_ = _loc5_.§8W§;
               _loc7_ = param1.§8W§;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     if(!_loc9_)
                     {
                        _loc8_ = §§pop();
                        §§push(false);
                        if(!_loc9_)
                        {
                           §§push(false);
                           if(!_loc9_)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc10_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc10_)
                                          {
                                             §§push(false);
                                             if(!_loc9_)
                                             {
                                                if(_loc6_.min.x > _loc7_.max.x + _loc8_)
                                                {
                                                   break;
                                                }
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§pop();
                                             if(_loc9_)
                                             {
                                                break loop5;
                                             }
                                          }
                                          §§push(_loc6_.max.x >= _loc7_.min.x - _loc8_);
                                          if(!_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                break loop5;
                                             }
                                             §§goto(addr015f);
                                          }
                                       }
                                       §§goto(addr0160);
                                    }
                                    §§pop();
                                    if(!_loc9_)
                                    {
                                       addr0160:
                                       §§push(_loc6_.min.y <= _loc7_.max.y + _loc8_);
                                       if(!_loc9_)
                                       {
                                          addr015f:
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                §§pop();
                                                if(_loc9_)
                                                {
                                                   break loop4;
                                                }
                                                §§push(_loc6_.max.y >= _loc7_.min.y - _loc8_);
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§pop();
                                       if(_loc9_)
                                       {
                                          break loop3;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_.min.z);
                                          §§push(_loc7_.max.z);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() + _loc8_);
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       §§push(§§pop() <= §§pop());
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                              }
                           }
                           if(!§§pop())
                           {
                              break loop2;
                           }
                           if(!_loc10_)
                           {
                              break loop2;
                           }
                        }
                        §§pop();
                        §§push(_loc6_.max.z);
                     }
                     §§push(_loc7_.min.z);
                     if(_loc10_)
                     {
                        §§push(§§pop() - _loc8_);
                     }
                     §§push(§§pop() >= §§pop());
                     if(_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc9_)
                        {
                           break loop2;
                        }
                        break;
                     }
                     break loop2;
                  }
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        §2w§ = _loc5_;
                     }
                     return;
                  }
                  continue loop0;
               }
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     _loc5_.§&D§(param1,param2);
                  }
                  §§push(§ i§.§%r§);
                  break loop3;
               }
            }
         }
      }
      
      public function §,g§(param1:§,!Z§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(param1.§!K§ != §!K§)
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
               param1.§ i§ = § i§;
               if(_loc3_)
               {
                  §§push(§§findproperty(volume));
                  §§push(volume);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1.volume);
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop().volume = §§pop();
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            §%g§.push(param1);
            break;
         }
      }
   }
}

