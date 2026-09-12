package §>d§
{
   import §'!1§.§ E§;
   import §+!1§.§[!9§;
   import §-!!§.§^!W§;
   import §>T§.§[C§;
   import §`_§.§7d§;
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import nme3D.model.§7v§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§=A§;
   
   public class §`U§ extends §#l§
   {
      
      public static var §-6§:Boolean;
      
      public static var §3L§:Vector.<Vector.<int>>;
      
      public static var §;'§:Vector.<§'H§>;
      
      public static var §77§:§7v§;
      
      public var §#!N§:§^!W§;
      
      public function §`U§()
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            super(3,22,4,25);
         }
         §§push([123,115,31,120,111,27,116,108,23,112,104,124,108,31,120,105,27,116,101,121,112,104,117,109,31,120,105,28,116,101,121,113,28,117,109,25,113,105,125,110,101,121,106,29,117,109,25,114,105,118,110,102,121,106,29,118,102,122,114,30,118,110,26,115,106,29,111,103,122,114,30,119,110,26,115,107,119,111,103,123,107,30,119,104,26,115,31,120,111,103,116,108,30,112,104,124,115,31,120,112]);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(int(Date.now().getFullYear()));
         if(_loc5_)
         {
            §§push(§§pop() - 2000);
            if(!_loc4_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
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
                     §§push(_loc2_);
                     §§push(int(_loc1_.length));
                     if(!_loc4_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           break loop1;
                        }
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(int(_loc1_[_loc2_]));
                                    if(!_loc4_)
                                    {
                                       _loc3_ = §§pop();
                                       if(!_loc5_)
                                       {
                                          break loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             §§push(100);
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                break loop6;
                                             }
                                             if(!_loc5_)
                                             {
                                                break loop6;
                                             }
                                             §§push(_loc3_);
                                             if(!_loc5_)
                                             {
                                                break loop5;
                                             }
                                          }
                                          §§push(100);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          break loop4;
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    §8!1§ = 4;
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    break loop3;
                                 }
                                 §>m§ = _loc3_;
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                                 §,!R§ = §8!1§;
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 §§push(§§findproperty(§>!_§));
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() - 7);
                                 }
                                 §§pop().§>!_§ = §§pop();
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                              }
                              §§push(§>!_§);
                              break;
                           }
                           §§push(0);
                           break;
                        }
                     }
                     break loop4;
                  }
                  §§goto(addr01f7);
               }
               return;
            }
            §#!N§ = new §^!W§();
            break loop2;
         }
         §,!R§ = 3;
         addr01f7:
         §§push(§§findproperty(§>!_§));
         §§push(§>!_§);
         if(!_loc4_)
         {
            §§push(§§pop() + 31);
         }
         §§pop().§>!_§ = §§pop();
         break loop1;
      }
      
      public static function §;!=§() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc8_:* = 0;
         var _loc10_:int = 0;
         var _loc1_:BitmapData = new BitmapData(32,32,false,16777215);
         §§push(Number(Math.random()));
         if(_loc12_)
         {
            §§push(§§pop() * 360);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(§^!W§);
                  §§push(_loc2_);
                  §§push(0.5);
                  if(!_loc13_)
                  {
                     §§push(Number(Math.random()));
                     if(_loc13_)
                     {
                        break loop2;
                     }
                     §§push(0.25);
                     if(_loc13_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc13_)
                     {
                        break loop2;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc13_)
                     {
                        break loop1;
                     }
                  }
                  §§push(Number(§§pop()));
                  break loop1;
               }
               §§goto(addr0092);
            }
            §§goto(addr009d);
         }
         §§push(0.6);
         if(!_loc13_)
         {
            §§push(Number(Math.random()));
            if(!_loc13_)
            {
               addr0092:
               §§push(§§pop() * 0.1);
            }
            §§push(§§pop() + §§pop());
            if(!_loc13_)
            {
               break loop2;
            }
            addr009d:
            while(true)
            {
               §§push(§§pop().§^!X§(§§pop(),§§pop(),§§pop()));
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
                  if(_loc13_)
                  {
                     break;
                  }
               }
               §§push(int(§§pop()));
               break;
            }
            var _loc3_:* = §§pop();
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc12_)
                           {
                              §§push(_loc2_);
                              if(!_loc12_)
                              {
                                 break;
                              }
                              §§push(Number(Math.random()));
                              if(!_loc12_)
                              {
                                 break loop14;
                              }
                              while(true)
                              {
                                 §§push(180);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    §§push(90);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc13_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    break loop6;
                                 }
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc13_)
                              {
                                 break loop5;
                              }
                              _loc2_ = Number(§§pop());
                              if(!_loc12_)
                              {
                                 break loop4;
                              }
                           }
                           §§push(_loc2_);
                           if(!_loc13_)
                           {
                              §§push(6.283185307179586);
                              if(!_loc13_)
                              {
                                 break loop6;
                              }
                              break loop14;
                           }
                           §§goto(addr011c);
                        }
                        §§goto(addr011f);
                     }
                     §§goto(addr011e);
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc12_)
                     {
                        break loop4;
                     }
                  }
                  continue loop7;
               }
               _loc2_ = §§pop();
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(§^!W§);
                     §§push(_loc2_);
                     §§push(0.7);
                     if(!_loc13_)
                     {
                        §§push(Number(Math.random()));
                        if(!_loc13_)
                        {
                           §§push(0.15);
                           if(!_loc12_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              break loop7;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc12_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§push(0.45);
                     if(!_loc13_)
                     {
                        §§push(Number(Math.random()));
                        if(!_loc13_)
                        {
                           §§push(§§pop() * 0.1);
                        }
                        break;
                     }
                     §§goto(addr0183);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                     break;
                  }
                  §§goto(addr0183);
               }
               addr0183:
               while(true)
               {
                  §§push(§§pop().§^!X§(§§pop(),§§pop(),Number(§§pop())));
                  if(_loc12_)
                  {
                     §§push(int(§§pop()));
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               var _loc4_:* = §§pop();
               var _loc5_:Vector.<Vector.<int>> = §`U§.§3L§;
               §§push(_loc5_);
               §§push(Number(Math.random()));
               if(_loc12_)
               {
                  §§push(§§pop() * int(_loc5_.length));
               }
               var _loc6_:Vector.<int> = §§pop()[int(§§pop())];
               var _loc7_:Rectangle = new Rectangle(0,0,32,1);
               §§push(0);
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
               }
               var _loc9_:* = §§pop();
               if(!_loc13_)
               {
                  loop0:
                  while(_loc9_ < 32)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc13_)
                        {
                           _loc9_++;
                           while(true)
                           {
                              if(_loc12_)
                              {
                                 _loc10_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    _loc7_.y = _loc10_;
                                    if(!_loc13_)
                                    {
                                       §§push(int(_loc6_.indexOf(_loc10_,0)));
                                       if(_loc13_)
                                       {
                                          break loop10;
                                       }
                                       if(§§pop() < 0)
                                       {
                                          addr024b:
                                          §§push(int(_loc3_));
                                          break loop10;
                                       }
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 §§push(_loc4_);
                              }
                              §§push(int(§§pop()));
                              if(_loc12_)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc12_)
                                 {
                                 }
                                 break;
                              }
                              break loop10;
                           }
                           addr0254:
                           _loc1_.fillRect(_loc7_,_loc8_);
                           continue loop0;
                        }
                        §§goto(addr024b);
                     }
                     _loc8_ = §§pop();
                     if(_loc13_)
                     {
                        continue;
                     }
                     §§goto(addr0254);
                  }
               }
               while(true)
               {
                  §§push(§§findproperty(§[!9§));
                  §§push(32 + "x");
                  if(!_loc13_)
                  {
                     §§push(§§pop());
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() + 32);
                  if(_loc12_)
                  {
                     break;
                  }
                  §§goto(addr0293);
               }
               addr0293:
               var _loc11_:§[!9§ = new §§pop().§[!9§(§§pop(),true);
               while(true)
               {
                  if(_loc12_)
                  {
                     _loc11_.texture.uploadFromBitmapData(_loc1_);
                     if(!_loc12_)
                     {
                        break;
                     }
                  }
                  §`U§.§;'§.push(§=A§.§1r§(_loc11_));
                  if(_loc12_)
                  {
                     break;
                  }
                  §§goto(addr02d3);
               }
               _loc1_.dispose();
               addr02d3:
               return;
            }
            addr011e:
            addr011c:
            addr011f:
            §§push(_loc2_ - 6.283185307179586);
            break loop5;
         }
         break loop2;
      }
      
      public static function §!%§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §`U§.§;!=§();
         if(!_loc1_)
         {
            §`U§.§77§ = §7v§.§ p§("text/model/EasterEgg.simple",§`U§.§;'§[0].§?!3§(0),23);
         }
      }
      
      override public function §"!Y§(param1:int, param2:String) : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(§#!N§);
         §§push(Number(Math.random()));
         if(!_loc5_)
         {
            §§push(§§pop() * 360);
         }
         §§pop().§2!D§ = §§pop();
         if(!_loc5_)
         {
            while(true)
            {
               §§push(Number(Math.random()));
               if(!_loc5_)
               {
                  §§push(0.1);
                  if(_loc5_)
                  {
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(§#!N§);
                     §§push(Number(Math.random()));
                     if(_loc6_)
                     {
                        §§push(§§pop() * 20);
                     }
                     §§pop().§2!D§ = §§pop();
                  }
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§#!N§);
                        §§push(Number(Math.random()));
                        if(!_loc5_)
                        {
                           §§push(0.3);
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                        }
                        §§push(0.2);
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break;
                  }
                  §§pop().§7!;§ = §§pop();
               }
               §§push(0.45);
               break;
            }
            if(§§pop() > §§pop())
            {
               §§push(§#!N§);
               §§push(Number(Math.random()));
               if(_loc6_)
               {
                  while(true)
                  {
                     §§push(0.2);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(0.7);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        break;
                     }
                  }
               }
               §§pop().§"!D§ = §§pop();
               if(_loc5_)
               {
               }
            }
            else
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(§#!N§);
                     §§push(Number(Math.random()));
                     if(!_loc5_)
                     {
                        §§push(0.15);
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           break loop4;
                        }
                     }
                     §§push(0.8);
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
               §§pop().§"!D§ = §§pop();
            }
         }
         var _loc3_:§^!W§ = §#!N§;
         while(true)
         {
            §§push(§^!W§.§^!X§(_loc3_.§2!D§,_loc3_.§7!;§,_loc3_.§"!D§));
            if(_loc6_)
            {
               §§push(int(§§pop()));
               if(_loc5_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push("color-0x");
            §§push(StringTools.hex(_loc4_,6));
            if(_loc6_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  §§push(§§pop() + §§pop() + "|");
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(param2);
               }
            }
            §§push(§§pop() + §§pop());
            break;
         }
         return §§pop();
      }
      
      override public function §^2§(param1:int) : Sprite
      {
         if(param1 == 2)
         {
            return new §`!Q§("Ready to hunt for Easter eggs?");
         }
         return null;
      }
      
      override public function §?c§() : String
      {
         return "menu/holiday/Egg.png";
      }
      
      override public function §]4§(param1:Number) : Model
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(§`U§.§77§ == null)
            {
               if(_loc5_)
               {
                  break;
               }
               §`U§.§!%§();
               if(!_loc4_)
               {
                  break;
               }
            }
            if(int(§`U§.§;'§.length) < 6)
            {
               if(_loc4_)
               {
                  §`U§.§;!=§();
               }
            }
            break;
         }
         var _loc2_:Model = §`U§.§77§.§,!$§();
         var _loc3_:Vector.<§'H§> = §`U§.§;'§;
         if(_loc4_)
         {
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(Number(Math.random()));
            if(_loc4_)
            {
               §§push(§§pop() * int(_loc3_.length));
            }
            §§pop().§1!W§(§§pop()[int(§§pop())]);
         }
         return _loc2_;
      }
   }
}

