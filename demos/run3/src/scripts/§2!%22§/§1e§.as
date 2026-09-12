package §2!"§
{
   import §!]§.§4N§;
   import §!]§.§6!X§;
   import §!]§.Path;
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §-!!§.§2!B§;
   import §2X§.PositionData3D;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §6[§.§+!7§;
   import §6[§.§=!X§;
   import §6[§.§`!O§;
   import §8!0§.§2_§;
   import §>T§.§[C§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§8!M§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§9t§;
   import flash.Boot;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import nme3D.model.§4!O§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§24§;
   import nme3D.shader.§=A§;
   import nme3D.shader.§^&§;
   import nme3D.shader.§`c§;
   import openfl.Assets;
   import unitsystem.§7o§;
   
   public class §1e§ extends Model
   {
      
      public var §2!!§:Number;
      
      public var §6m§:Number;
      
      public var xInverted:Boolean;
      
      public var §'T§:Rectangle;
      
      public var §=S§:Number;
      
      public var §=`§:int;
      
      public var §?!=§:Array;
      
      public var §45§:int;
      
      public var §7!$§:Number;
      
      public var §5!R§:Number;
      
      public var alpha:Number;
      
      public function §1e§(param1:String, param2:String = undefined, param3:Number = undefined, param4:Object = undefined, param5:Object = undefined, param6:Object = undefined, param7:Object = undefined, param8:§'H§ = undefined, param9:Object = undefined, param10:Object = undefined)
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop15:
               while(true)
               {
                  if(_loc14_)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           if(param4 == null)
                           {
                              if(_loc15_)
                              {
                                 break;
                              }
                              §§push(0);
                              if(!_loc14_)
                              {
                                 break loop16;
                              }
                              param4 = §§pop();
                           }
                           if(param5 == null)
                           {
                              §§push(0);
                              break loop16;
                           }
                           §§goto(addr0045);
                        }
                        §§push(false);
                        if(!_loc14_)
                        {
                           break loop15;
                        }
                        param7 = §§pop();
                        §§goto(addr006d);
                     }
                     param5 = §§pop();
                     addr0045:
                     if(param6 == null)
                     {
                        §§push(false);
                        if(!_loc14_)
                        {
                           break loop1;
                        }
                        param6 = §§pop();
                     }
                     if(param7 == null)
                     {
                        if(_loc14_)
                        {
                           break loop17;
                        }
                        addr0074:
                        §§push(false);
                        if(!_loc15_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     addr006d:
                     if(param9 != null)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0087);
            }
            param9 = §§pop();
            break;
         }
         if(param10 == null)
         {
            addr0087:
            param10 = false;
         }
         alpha = 1;
         xInverted = false;
         var _loc11_:§[!9§ = §'!b§.§?!3§(param1,param6);
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop11:
               while(true)
               {
                  loop12:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param2);
                        if(_loc14_)
                        {
                           §§push(null);
                           if(_loc14_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 break loop11;
                              }
                              if(!_loc14_)
                              {
                                 break;
                              }
                              if(param6)
                              {
                                 §§push(§'!b§.§;!]§);
                                 §§push(param1);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push("img/");
                                    if(!_loc15_)
                                    {
                                       §§push(§§pop() + param1);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop());
                                          if(_loc14_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       param2 = §§pop();
                                       if(!_loc15_)
                                       {
                                          break loop12;
                                       }
                                       §§goto(addr0177);
                                    }
                                    §§goto(addr0151);
                                 }
                                 §§goto(addr0153);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc15_)
                           {
                              break loop3;
                           }
                           §§push(§§pop());
                           if(!_loc14_)
                           {
                              break loop2;
                           }
                        }
                        param2 = §§pop();
                        if(!_loc15_)
                        {
                           break loop12;
                        }
                        break loop11;
                     }
                     §§goto(addr013d);
                  }
                  §§push(param2);
                  if(_loc14_)
                  {
                     §§push(§§pop().substr(0,int(param2.lastIndexOf("."))));
                  }
                  break loop2;
               }
               §§goto(addr015b);
            }
            param2 = §§pop();
            addr013d:
            §§goto(addr013e);
         }
         §§push(§§pop());
         if(_loc14_)
         {
            break loop3;
         }
         addr013e:
         while(true)
         {
            §§push(§§pop() + ".json");
            if(_loc14_)
            {
               §§push(§§pop());
               if(_loc15_)
               {
                  break;
               }
            }
            addr0151:
            §§push(§§pop());
            break;
         }
         addr0153:
         param2 = §§pop();
         if(!_loc15_)
         {
            addr015b:
            §?!=§ = JSON.parse(Assets.getText(param2)).frames;
         }
         addr0177:
         var _loc12_:* = §?!=§.pop();
         §=S§ = param3;
         loop5:
         while(true)
         {
            if(!_loc15_)
            {
               §§push(§§findproperty(§5!R§));
               §§push(int(_loc12_.spriteSourceSize.x));
               if(_loc14_)
               {
                  §§push(-§§pop());
               }
               §§push(§§pop() * param3);
               if(!_loc15_)
               {
                  §§push(§§pop() + param4);
               }
               §§pop().§5!R§ = §§pop();
               if(!_loc15_)
               {
                  §§push(§§findproperty(§7!$§));
                  §§push(int(_loc12_.spriteSourceSize.y));
                  if(_loc14_)
                  {
                     §§push(-§§pop());
                  }
                  §§push(§§pop() * param3);
                  if(!_loc15_)
                  {
                     §§push(§§pop() + param5);
                  }
                  §§pop().§7!$§ = §§pop();
                  §'T§ = new Rectangle();
                  if(_loc14_)
                  {
                     §6m§ = 1 / _loc11_.width;
                     §2!!§ = 1 / _loc11_.height;
                  }
                  §§push(§§findproperty(§=`§));
                  §§push(_loc11_.width);
                  if(_loc14_)
                  {
                     §§push(int(§§pop() * §6m§));
                  }
                  §§pop().§=`§ = §§pop();
                  loop6:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(_loc14_)
                           {
                              if(param8 == null)
                              {
                                 break;
                              }
                              if(_loc15_)
                              {
                                 break;
                              }
                              §§pop();
                              if(!_loc14_)
                              {
                                 break loop7;
                              }
                              §§push(param8.§?!3§(0) == _loc11_);
                              if(!_loc14_)
                              {
                                 break loop6;
                              }
                              §§push(!§§pop());
                              if(!_loc14_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc15_)
                           {
                              break;
                           }
                           break loop6;
                        }
                        if(§§pop())
                        {
                           if(param9)
                           {
                              addr027d:
                              param8 = §24§.§1;§(_loc11_);
                              break loop5;
                           }
                           if(param7)
                           {
                              param8 = §`c§.§1r§(_loc11_);
                              break loop5;
                           }
                           if(param10)
                           {
                              break;
                           }
                           param8 = §^&§.§1r§(_loc11_);
                           break loop5;
                        }
                        §§push(false);
                        break loop6;
                     }
                  }
                  param9 = §§pop();
                  break;
               }
               break loop7;
            }
            §§goto(addr027d);
         }
         var _loc13_:§!!V§ = Type.createInstance(param8.§?"§,[4,null]);
         loop9:
         while(true)
         {
            if(_loc14_)
            {
               super(_loc13_,§4!O§.§92§,param8);
               while(true)
               {
                  if(_loc14_)
                  {
                     if(!param9)
                     {
                        break;
                     }
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
                  §24§.§+H§(vertices);
                  if(!_loc15_)
                  {
                     break;
                  }
                  break loop9;
               }
            }
            §,=§(0);
            break;
         }
      }
      
      public function §@S§(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §§push(xInverted);
               if(!_loc2_)
               {
                  if(§§pop() == param1)
                  {
                     if(!_loc2_)
                     {
                        §§push(xInverted);
                        if(!_loc2_)
                        {
                           §§goto(addr004a);
                        }
                        break;
                     }
                  }
                  else
                  {
                     xInverted = param1;
                     if(_loc3_)
                     {
                        §,=§(§45§);
                     }
                  }
                  addr0062:
                  §§push(xInverted);
                  break;
               }
               addr004a:
               return §§pop();
            }
            §§goto(addr0062);
         }
         return §§pop();
      }
      
      public function §,=§(param1:int) : int
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc5_:* = null as §=s§;
         var _loc6_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as §!!V§;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc11_)
                  {
                     §§push(0);
                     if(_loc11_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        break loop3;
                     }
                     §§push(0);
                     if(!_loc11_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc12_)
                        {
                           break loop2;
                        }
                     }
                  }
                  param1 = §§pop();
                  break loop3;
               }
               §§goto(addr0068);
            }
            §45§ = param1;
            §§push(param1);
            break;
         }
         addr0068:
         if(§§pop() < int(§?!=§.length))
         {
            _loc2_ = §?!=§[param1];
            loop4:
            while(true)
            {
               while(true)
               {
                  if(!_loc11_)
                  {
                     §'T§.x = int(_loc2_.frame.x) * §6m§;
                     if(_loc12_)
                     {
                        §'T§.y = int(_loc2_.frame.y) * §2!!§;
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                     §'T§.width = int(_loc2_.frame.w) * §6m§;
                     if(_loc11_)
                     {
                        break loop4;
                     }
                  }
                  §'T§.height = int(_loc2_.frame.h) * §2!!§;
                  if(!_loc11_)
                  {
                     break loop4;
                  }
                  break;
               }
               var _loc3_:§'!Y§ = §2_§.§'!D§(vertices,"uv");
               var _loc4_:§!!V§ = _loc3_.vertices;
               if(!_loc11_)
               {
                  §§push(_loc4_);
                  §§push(_loc4_.§5G§);
                  if(_loc12_)
                  {
                     §§push(§§pop() * 0);
                  }
                  §§pop().offset = §§pop();
                  if(!_loc11_)
                  {
                     §§push(_loc3_.§+R§);
                     §§push(_loc4_.offset);
                     if(_loc12_)
                     {
                        §§push(§§pop() + _loc3_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc5_ = _loc3_.§+R§;
               while(true)
               {
                  if(!_loc11_)
                  {
                     §§push(Number(§'T§.left));
                     if(_loc11_)
                     {
                        break;
                     }
                     _loc6_ = §§pop();
                  }
                  §§push(Number(§'T§.top));
                  break;
               }
               var _loc7_:* = §§pop();
               while(true)
               {
                  if(!_loc11_)
                  {
                     _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(_loc5_.§@!Y§);
                  §§push(_loc5_.offset);
                  if(!_loc11_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop()[§§pop()] = _loc7_;
                  break;
               }
               _loc4_ = _loc3_.vertices;
               if(!_loc11_)
               {
                  _loc4_.offset = _loc4_.§5G§;
                  if(!_loc11_)
                  {
                     §§push(_loc3_.§+R§);
                     §§push(_loc4_.offset);
                     if(_loc12_)
                     {
                        §§push(§§pop() + _loc3_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc5_ = _loc3_.§+R§;
               if(!_loc11_)
               {
                  while(true)
                  {
                     §§push(Number(§'T§.left));
                     if(!_loc11_)
                     {
                        _loc6_ = §§pop();
                        if(!_loc12_)
                        {
                           break;
                        }
                        §§push(Number(§'T§.bottom));
                     }
                     _loc7_ = §§pop();
                     if(_loc12_)
                     {
                        _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(_loc5_.§@!Y§);
                  §§push(_loc5_.offset);
                  if(!_loc11_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop()[§§pop()] = _loc7_;
               }
               _loc4_ = _loc3_.vertices;
               while(true)
               {
                  if(_loc12_)
                  {
                     §§push(_loc4_);
                     §§push(_loc4_.§5G§);
                     if(_loc12_)
                     {
                        §§push(§§pop() * 2);
                     }
                     §§pop().offset = §§pop();
                     if(!_loc12_)
                     {
                        break;
                     }
                  }
                  §§push(_loc3_.§+R§);
                  §§push(_loc4_.offset);
                  if(_loc12_)
                  {
                     §§push(§§pop() + _loc3_.§+^§);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
               _loc5_ = _loc3_.§+R§;
               loop10:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        §§push(Number(§'T§.right));
                        if(_loc11_)
                        {
                           break;
                        }
                        _loc6_ = §§pop();
                        if(!_loc12_)
                        {
                           break loop10;
                        }
                     }
                     §§push(Number(§'T§.top));
                     break;
                  }
                  _loc7_ = §§pop();
                  if(!_loc11_)
                  {
                     break;
                  }
                  §§goto(addr032c);
               }
               _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
               if(!_loc11_)
               {
                  addr032c:
                  §§push(_loc5_.§@!Y§);
                  §§push(_loc5_.offset);
                  if(!_loc11_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop()[§§pop()] = _loc7_;
               }
               _loc4_ = _loc3_.vertices;
               if(!_loc11_)
               {
                  §§push(_loc4_);
                  §§push(_loc4_.§5G§);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * 3);
                  }
                  §§pop().offset = §§pop();
                  if(!_loc11_)
                  {
                     §§push(_loc3_.§+R§);
                     §§push(_loc4_.offset);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + _loc3_.§+^§);
                     }
                     §§pop().offset = §§pop();
                  }
               }
               _loc5_ = _loc3_.§+R§;
               if(!_loc11_)
               {
                  while(true)
                  {
                     §§push(Number(§'T§.right));
                     if(!_loc11_)
                     {
                        _loc6_ = §§pop();
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(Number(§'T§.bottom));
                     }
                     _loc7_ = §§pop();
                     if(_loc12_)
                     {
                        break;
                     }
                     addr03c7:
                     §§push(_loc5_.§@!Y§);
                     §§push(_loc5_.offset);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop()[§§pop()] = _loc7_;
                  }
                  _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
                  if(_loc12_)
                  {
                     §§goto(addr03c7);
                  }
               }
               _loc4_ = vertices;
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     if(_loc12_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.§5G§);
                        if(_loc12_)
                        {
                           §§push(§§pop() * 0);
                        }
                        §§pop().offset = §§pop();
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(_loc4_.§>9§("alpha"));
                        if(_loc12_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           break loop13;
                        }
                        if(_loc11_)
                        {
                           break loop13;
                        }
                     }
                     loop15:
                     while(true)
                     {
                        §§push(0);
                        if(!_loc11_)
                        {
                           §§push(int(§§pop()));
                           if(_loc11_)
                           {
                              break;
                           }
                           _loc8_ = §§pop();
                           if(_loc11_)
                           {
                              break loop14;
                           }
                           while(true)
                           {
                              §§push(_loc8_);
                              if(_loc11_)
                              {
                                 break loop15;
                              }
                           }
                           break;
                           addr04b3:
                        }
                        while(true)
                        {
                           if(§§pop() >= 4)
                           {
                              if(_loc12_)
                              {
                                 break loop13;
                              }
                              break loop14;
                           }
                           while(true)
                           {
                              §§push(_loc8_);
                              if(!_loc11_)
                              {
                                 _loc8_++;
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              break;
                           }
                           _loc9_ = §§pop();
                           _loc10_ = vertices;
                           if(_loc12_)
                           {
                              §§push(_loc10_);
                              §§push(_loc10_.§5G§);
                              if(_loc12_)
                              {
                                 §§push(§§pop() * _loc9_);
                              }
                              §§pop().offset = §§pop();
                           }
                           _loc5_ = _loc10_.getAttribute1("alpha");
                           if(_loc12_)
                           {
                              §§push(alpha);
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc6_ = §§pop();
                              if(!_loc11_)
                              {
                                 _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
                              }
                           }
                           §§goto(addr04b3);
                        }
                        break;
                     }
                     §§goto(addr04d5);
                  }
                  addr04d5:
                  return §§pop();
               }
               §8!Q§ = true;
               break loop14;
            }
            §?!@§(int(_loc2_.spriteSourceSize.x) * §=S§,int(_loc2_.spriteSourceSize.y) * §=S§,int(_loc2_.frame.w) * §=S§,int(_loc2_.frame.h) * §=S§);
            break loop5;
         }
         Boot.lastError = new Error();
         throw new Error("Frame " + param1 + " is out of bounds!");
      }
      
      public function §?!@§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop16:
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc10_)
                           {
                              §§push(§5!R§);
                              if(_loc11_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc10_)
                                 {
                                    param1 = §§pop();
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    §§push(param2);
                                 }
                                 §§push(§7!$§);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc11_)
                              {
                                 break loop16;
                              }
                              §§push(Number(§§pop()));
                           }
                           §§push(Number(§§pop()));
                           if(_loc10_)
                           {
                              break loop2;
                           }
                           param2 = §§pop();
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                        if(!xInverted)
                        {
                           break loop1;
                        }
                        if(_loc10_)
                        {
                           break loop0;
                        }
                     }
                     §§push(param1);
                     break;
                  }
                  param1 = -§§pop();
                  if(!_loc10_)
                  {
                     break loop0;
                  }
                  break loop1;
               }
               §§goto(addr008c);
            }
            var _loc5_:§'!Y§ = §2_§.§'!D§(vertices,"position");
            var _loc6_:§!!V§ = _loc5_.vertices;
            while(true)
            {
               if(_loc11_)
               {
                  §§push(_loc6_);
                  §§push(_loc6_.§5G§);
                  if(_loc11_)
                  {
                     §§push(§§pop() * 0);
                  }
                  §§pop().offset = §§pop();
                  if(_loc10_)
                  {
                     break;
                  }
               }
               §§push(_loc5_.§+R§);
               §§push(_loc6_.offset);
               if(_loc11_)
               {
                  §§push(§§pop() + _loc5_.§+^§);
               }
               §§pop().offset = §§pop();
               break;
            }
            var _loc7_:§=s§ = _loc5_.§+R§;
            while(true)
            {
               if(_loc11_)
               {
                  _loc7_.§@!Y§[_loc7_.offset] = param1;
                  if(!_loc10_)
                  {
                     §§push(_loc7_.§@!Y§);
                     §§push(_loc7_.offset);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop()[§§pop()] = param2;
                     if(_loc10_)
                     {
                        break;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc7_.§@!Y§);
                  §§push(_loc7_.offset);
                  if(!_loc10_)
                  {
                     §§push(2);
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(0);
                  break;
               }
               §§pop()[§§pop()] = §§pop();
               break;
            }
            _loc6_ = _loc5_.vertices;
            while(true)
            {
               if(!_loc10_)
               {
                  _loc6_.offset = _loc6_.§5G§;
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               §§push(_loc5_.§+R§);
               §§push(_loc6_.offset);
               if(!_loc10_)
               {
                  §§push(§§pop() + _loc5_.§+^§);
               }
               §§pop().offset = §§pop();
               break;
            }
            _loc7_ = _loc5_.§+R§;
            while(true)
            {
               §§push(param2);
               if(_loc11_)
               {
                  §§push(§§pop() + param4);
                  if(_loc11_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc10_)
                     {
                        break;
                     }
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc8_:* = §§pop();
            while(true)
            {
               if(!_loc10_)
               {
                  _loc7_.§@!Y§[_loc7_.offset] = param1;
                  if(_loc10_)
                  {
                     break;
                  }
               }
               §§push(_loc7_.§@!Y§);
               §§push(_loc7_.offset);
               if(_loc11_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc8_;
               if(_loc11_)
               {
                  break;
               }
               §§goto(addr01ec);
            }
            while(true)
            {
               §§push(_loc7_.§@!Y§);
               §§push(_loc7_.offset);
               if(!_loc10_)
               {
                  §§push(2);
                  if(!_loc11_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
               }
               §§push(0);
               break;
            }
            §§pop()[§§pop()] = §§pop();
            addr01ec:
            _loc6_ = _loc5_.vertices;
            if(_loc11_)
            {
               §§push(_loc6_);
               §§push(_loc6_.§5G§);
               if(_loc11_)
               {
                  §§push(§§pop() * 2);
               }
               §§pop().offset = §§pop();
               if(_loc11_)
               {
                  §§push(_loc5_.§+R§);
                  §§push(_loc6_.offset);
                  if(!_loc10_)
                  {
                     §§push(§§pop() + _loc5_.§+^§);
                  }
                  §§pop().offset = §§pop();
               }
            }
            _loc7_ = _loc5_.§+R§;
            if(!_loc10_)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc10_)
                  {
                     §§push(§§pop() + param3);
                     if(!_loc10_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               _loc8_ = §§pop();
               while(true)
               {
                  if(!_loc10_)
                  {
                     _loc7_.§@!Y§[_loc7_.offset] = _loc8_;
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(_loc7_.§@!Y§);
                  §§push(_loc7_.offset);
                  if(_loc11_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop()[§§pop()] = param2;
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               while(true)
               {
                  §§push(_loc7_.§@!Y§);
                  §§push(_loc7_.offset);
                  if(!_loc10_)
                  {
                     §§push(2);
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(0);
                  break;
               }
               §§pop()[§§pop()] = §§pop();
            }
            _loc6_ = _loc5_.vertices;
            while(true)
            {
               if(_loc11_)
               {
                  §§push(_loc6_);
                  §§push(_loc6_.§5G§);
                  if(_loc11_)
                  {
                     §§push(§§pop() * 3);
                  }
                  §§pop().offset = §§pop();
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               §§push(_loc5_.§+R§);
               §§push(_loc6_.offset);
               if(!_loc10_)
               {
                  §§push(§§pop() + _loc5_.§+^§);
               }
               §§pop().offset = §§pop();
               break;
            }
            _loc7_ = _loc5_.§+R§;
            while(true)
            {
               if(_loc11_)
               {
                  §§push(param1);
                  if(_loc11_)
                  {
                     §§push(param3);
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc11_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(Number(§§pop()));
                  }
                  _loc8_ = §§pop();
               }
               §§push(param2);
               §§push(param4);
               break;
            }
            var _loc9_:Number = §§pop() + §§pop();
            if(!_loc10_)
            {
               _loc7_.§@!Y§[_loc7_.offset] = _loc8_;
               if(_loc11_)
               {
                  §§push(_loc7_.§@!Y§);
                  §§push(_loc7_.offset);
                  if(!_loc10_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop()[§§pop()] = _loc9_;
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        §§push(_loc7_.§@!Y§);
                        §§push(_loc7_.offset);
                        if(_loc11_)
                        {
                           §§push(2);
                           if(!_loc11_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(0);
                        break;
                     }
                     §§pop()[§§pop()] = §§pop();
                  }
               }
            }
            return;
         }
         §§push(param3);
         if(!_loc10_)
         {
            addr008c:
            §§push(-§§pop());
         }
         param3 = §§pop();
         break loop1;
      }
   }
}

