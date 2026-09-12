package §!]§
{
   import §!!"§.§-m§;
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §-!!§.§2!B§;
   import §3!b§.§+!"§;
   import §3!b§.§+Z§;
   import §3!b§.Cutscenes;
   import §3!b§.Insanity;
   import §3!b§.PlanetMissing;
   import §3!b§.StudentTeacher;
   import §3!b§.Teapot;
   import §=w§.§@[§;
   import §>!O§.§^`§;
   import §@]§.§;!!§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import haxe.ds.StringMap;
   
   public class §&! § extends Sprite implements §@[§
   {
      
      public var §?S§:Object;
      
      public var §[>§:§ !>§;
      
      public var §"'§:String;
      
      public var §`!X§:Array;
      
      public var §&E§:GlowFilter;
      
      public var image:Bitmap;
      
      public var glow:Boolean;
      
      public var §#!;§:Number;
      
      public var §+@§:Function;
      
      public var cutscene:§+Z§;
      
      public function §&! §(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         §#!;§ = 0;
         glow = false;
         super();
         § L§.low = 819872;
         if(_loc8_)
         {
            §"'§ = param1;
            while(true)
            {
               §§push(§§findproperty(image));
               §§push(§2!B§);
               §§push("map/");
               if(!_loc7_)
               {
                  §§push(§§pop() + param1);
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               if(_loc8_)
               {
                  break;
               }
               addr006c:
               §§pop().image = §§pop().§83§(§§pop());
               addr006a:
            }
            §§push(§§pop() + ".png");
            if(!_loc7_)
            {
               §§goto(addr006a);
            }
            §§goto(addr006c);
         }
         addChild(image);
         var _loc3_:§ 7§ = new §?y§(this);
         var _loc4_:Number = int(param2.x);
         if(!_loc7_)
         {
            §&d§.§1$§().add(_loc3_,new §;!!§(_loc4_,§2u§.LEFT));
         }
         _loc3_ = new §?y§(this);
         while(true)
         {
            if(!_loc7_)
            {
               _loc4_ = int(param2.y);
               if(_loc7_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(_loc3_,new §;!!§(_loc4_,§2u§.TOP));
            if(_loc8_)
            {
               if(param2.alpha != null)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            §§goto(addr0113);
         }
         alpha = param2.alpha;
         if(_loc8_)
         {
            addr0113:
            §?S§ = param2.progress;
            §§goto(addr011e);
         }
         addr011e:
         §§push(param2.path);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         loop2:
         while(true)
         {
            if(_loc8_)
            {
               §[>§ = §>K§.§@!A§().§2! §.get(_loc5_);
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     §§push(false);
                     if(_loc8_)
                     {
                        if(§?S§ == null)
                        {
                           break;
                        }
                        if(_loc7_)
                        {
                           break loop3;
                        }
                     }
                     §§pop();
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(§[>§ == null);
                           if(_loc8_)
                           {
                              break loop4;
                           }
                           addr01bd:
                           §§push(Boolean(§§pop()));
                           break loop3;
                        }
                        addr01df:
                        visible = false;
                        break loop2;
                     }
                     addr0184:
                     §[>§ = §>K§.§0x§;
                  }
                  if(§§pop())
                  {
                     §§goto(addr0184);
                  }
                  else
                  {
                     §§push(false);
                     if(§[>§ == null)
                     {
                        break;
                     }
                     §§pop();
                     if(_loc8_)
                     {
                        §§goto(addr01bd);
                        §§push(§?S§ == null);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  §?S§ = §[>§.levelCount;
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            §§goto(addr01df);
         }
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  if(_loc8_)
                  {
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc6_);
                           if(_loc8_)
                           {
                              §§push("Battery");
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    break loop7;
                                 }
                                 cutscene = Cutscenes.§`!%§();
                                 if(_loc8_)
                                 {
                                    break loop7;
                                 }
                                 addr029e:
                                 §+@§ = function():Boolean
                                 {
                                    var _temp_1:* = false;
                                    var _loc11_:Boolean = true;
                                    var _loc12_:Boolean = _temp_1;
                                    var _loc1_:* = 0;
                                    var _loc2_:* = null as StringMap;
                                    var _loc3_:* = null;
                                    var _loc4_:* = null as § !>§;
                                    var _loc5_:* = null as §-Q§;
                                    var _loc6_:* = 0;
                                    var _loc7_:* = 0;
                                    var _loc8_:* = null as §-Q§;
                                    var _loc9_:* = 0;
                                    var _loc10_:int = 0;
                                    if(!_loc12_)
                                    {
                                       §§push(§>K§.§>=§.§<o§());
                                       if(!_loc12_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc12_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§push(0);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   _loc1_ = §§pop();
                                                }
                                                §§goto(addr0063);
                                             }
                                             else
                                             {
                                                return false;
                                             }
                                          }
                                       }
                                       return §§pop();
                                    }
                                    addr0063:
                                    _loc2_ = §>K§.§@!A§().§2! §;
                                    _loc3_ = new §-m§(_loc2_.h,_loc2_.rh);
                                    loop1:
                                    while(true)
                                    {
                                       if(!_loc12_)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             §§push(Boolean(_loc3_.hasNext()));
                                             if(!_loc11_)
                                             {
                                                break loop1;
                                             }
                                             if(§§pop())
                                             {
                                                _loc4_ = _loc3_.next();
                                                _loc5_ = _loc4_.§0!R§;
                                                while(true)
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                                                            if(!_loc12_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               _loc6_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  §§push(_loc4_.levelCount);
                                                                  if(_loc11_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(_loc12_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(_loc6_);
                                                                     §§push(_loc7_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr00fa:
                                                                           §§push(_loc6_);
                                                                           continue loop4;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§push(_loc7_);
                                                                     if(_loc11_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  §§goto(addr014c);
                                                               }
                                                               §§goto(addr00fa);
                                                            }
                                                            addr0135:
                                                            §§push(_loc4_.availableUntil);
                                                            if(!_loc11_)
                                                            {
                                                               break loop4;
                                                            }
                                                            §§goto(addr0141);
                                                         }
                                                         §§goto(addr014b);
                                                      }
                                                      §§goto(addr00fa);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc11_)
                                                         {
                                                            break loop4;
                                                         }
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            _loc8_ = _loc4_.§0!R§;
                                                            if(_loc11_)
                                                            {
                                                               §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc11_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(_loc4_.levelCount);
                                                                           if(_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        §§push(_loc1_);
                                                                        break;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(§§pop() < _loc10_)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc9_);
                                                                           if(_loc11_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc10_);
                                                                        }
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     break;
                                                                  }
                                                               }
                                                               _loc1_ = §§pop();
                                                            }
                                                            continue loop0;
                                                         }
                                                         if(_loc12_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(_loc1_);
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr0135);
                                                      }
                                                      §§goto(addr0143);
                                                   }
                                                   §§goto(addr014b);
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.availableUntil);
                                                      if(!_loc12_)
                                                      {
                                                         break loop3;
                                                      }
                                                      addr0141:
                                                      addr0143:
                                                      §§push(§§pop() + 1);
                                                      break loop4;
                                                   }
                                                   addr014b:
                                                   §§goto(addr014c);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc11_)
                                                {
                                                   break loop5;
                                                }
                                                addr014c:
                                                _loc1_ = §§pop();
                                                continue;
                                             }
                                          }
                                       }
                                       return _loc1_ >= 50;
                                    }
                                    return §§pop();
                                 };
                                 if(_loc7_)
                                 {
                                    break loop8;
                                 }
                                 glow = true;
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          break loop7;
                                       }
                                       §§goto(addr030b);
                                    }
                                    §§goto(addr0321);
                                 }
                                 §§goto(addr0393);
                              }
                              else
                              {
                                 §§push(_loc6_);
                                 if(_loc7_)
                                 {
                                    break loop10;
                                 }
                                 §§push("DerpRunner");
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    cutscene = Cutscenes.§?2§();
                                    §§push(§§findproperty(§+@§));
                                    §§push(§>K§.§7&§.§#R§);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop());
                                    }
                                    §§pop().§+@§ = §§pop();
                                    if(_loc7_)
                                    {
                                    }
                                    break loop7;
                                 }
                                 §§push(_loc6_);
                                 if(!_loc8_)
                                 {
                                    break loop10;
                                 }
                              }
                           }
                           §§push("Planet");
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr02c4);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(_loc6_);
                           break;
                        }
                        cutscene = Cutscenes.§5!H§();
                        if(!_loc8_)
                        {
                           break loop6;
                        }
                     }
                     addr02c4:
                     if(§§pop() == "Teapot")
                     {
                        cutscene = Cutscenes.§'!Z§();
                        break loop7;
                     }
                     mouseEnabled = false;
                     break;
                  }
                  §§goto(addr029e);
               }
               mouseChildren = false;
               break;
            }
            while(true)
            {
               §§push(false);
               if(_loc8_)
               {
                  if(cutscene != null)
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(cutscene.§4b§ == §+Z§.§&L§);
                        if(_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               addr0321:
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     break loop6;
                  }
               }
               break;
            }
            §§goto(addr0393);
         }
         §§push(§+@§);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         if(§§pop() != null)
         {
            §§push(cutscene);
            §§push(§+!"§);
            §§push(§+@§);
            if(_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().§4b§ = §§pop().CUSTOM(§§pop());
         }
         else
         {
            §§push(cutscene);
            §§push(§+!"§);
            §§push(§9!%§);
            if(_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().§4b§ = §§pop().CUSTOM(§§pop());
         }
         addr0393:
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         if(§&E§ != null)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§push(§§findproperty(§#!;§));
                     §§push(§#!;§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + param1);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§#!;§ = §§pop();
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(§#!;§);
                     §§push(2.7);
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(§§findproperty(§#!;§));
                        §§push(§#!;§);
                        if(_loc4_)
                        {
                           §§push(§§pop() - 2.7);
                        }
                        §§pop().§#!;§ = §§pop();
                     }
                  }
                  §§push(§#!;§);
                  §§push(1.5);
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(1);
                              §§push(§#!;§);
                              if(!_loc3_)
                              {
                                 §§push(1.5);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                              }
                              §§push(1.2);
                              break;
                           }
                           §§push(§§pop() / §§pop());
                           break;
                        }
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc3_)
                           {
                              _loc2_ = §§pop();
                              if(_loc4_)
                              {
                                 addr00ea:
                                 §§push(20);
                                 if(_loc4_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() * 28);
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              break loop1;
                           }
                           §§goto(addr010b);
                        }
                     }
                     else
                     {
                        §§push(§#!;§);
                        §§push(1.5);
                        if(_loc3_)
                        {
                           break loop0;
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr00ea);
                        }
                     }
                     §§goto(addr010c);
                  }
                  §§goto(addr0136);
               }
            }
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_)
                  {
                     break;
                  }
               }
               addr010b:
               §§push(Number(§§pop()));
               break;
            }
            addr010c:
            _loc2_ = §§pop();
            if(_loc4_)
            {
               §&E§.blurX = _loc2_ * §&d§.§;`§().scale.x;
               addr0136:
               §&E§.blurY = _loc2_ * §&d§.§;`§().scale.y;
               if(!_loc3_)
               {
                  image.filters = §`!X§;
               }
            }
            break loop1;
         }
      }
      
      public function §9!%§() : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:* = null as § !>§;
         var _loc2_:* = null as §-Q§;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            if(§?S§ != null)
            {
               if(_loc6_)
               {
                  while(true)
                  {
                     §§push(§[>§.§<o§());
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     if(!§§pop())
                     {
                        §§push(false);
                        if(_loc6_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  §§goto(addr00fb);
               }
               addr005d:
               _loc1_ = §[>§;
               _loc2_ = _loc1_.§0!R§;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§push(int(Save.§@!A§().get(_loc2_.§=-§,int(_loc2_.§ -§))));
                        if(_loc6_)
                        {
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           §§push(_loc1_.levelCount);
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           break loop1;
                        }
                     }
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        if(§§pop() < _loc4_)
                        {
                           break loop1;
                        }
                        §§push(_loc4_);
                     }
                     break;
                  }
                  return §§pop() >= §?S§;
               }
               §§push(_loc3_);
               if(_loc6_)
               {
               }
               break loop2;
            }
            §§push(true);
            addr00fb:
            return §§pop();
         }
         §§goto(addr005d);
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:* = null as § !>§;
         var _loc3_:* = null as §-Q§;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as §+Z§;
         var _loc7_:* = false;
         var _loc8_:* = null as §]k§;
         loop0:
         while(true)
         {
            if(_loc9_)
            {
               § L§.low = 734388;
               if(_loc10_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(!visible)
                        {
                           loop9:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 if(§?S§ != null)
                                 {
                                    if(_loc10_)
                                    {
                                       break loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(§[>§.§<o§());
                                       if(_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc2_ = §[>§;
                                             _loc3_ = _loc2_.§0!R§;
                                             if(_loc9_)
                                             {
                                                _loc4_ = int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§)));
                                                §§push(_loc2_.levelCount);
                                                if(!_loc10_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         break loop9;
                                                      }
                                                      §§push(_loc4_);
                                                   }
                                                   §§push(§§pop() < _loc5_ ? _loc4_ : _loc5_);
                                                }
                                                §§push(§§pop() >= §?S§);
                                                if(!_loc10_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      _loc1_ = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      break loop9;
                                                   }
                                                }
                                                break loop10;
                                             }
                                             break loop9;
                                          }
                                          §§push(false);
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       break loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§push(true);
                                    if(_loc10_)
                                    {
                                       break loop4;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc9_)
                                    {
                                       continue loop5;
                                    }
                                    _loc1_ = §§pop();
                                    if(!_loc9_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 visible = _loc1_;
                                 if(!_loc10_)
                                 {
                                    §§push(!visible);
                                    break;
                                 }
                                 break loop9;
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                           }
                           return;
                        }
                        if(cutscene != null)
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                        §§goto(addr034f);
                     }
                     §§push(§+@§);
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop() != null)
                     {
                        continue loop5;
                     }
                     §§goto(addr0171);
                  }
                  §§pop();
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           §§push(Boolean(§+@§()));
                           if(_loc10_)
                           {
                              break;
                           }
                           if(!Boolean(§§pop()))
                           {
                              §&E§ = null;
                              if(!_loc10_)
                              {
                                 break loop1;
                              }
                              §§goto(addr0339);
                           }
                        }
                        §§push(glow);
                        if(!_loc10_)
                        {
                           if(§§pop())
                           {
                              break loop0;
                           }
                           §§push(false);
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     _loc1_ = §§pop();
                     addr0208:
                     loop7:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc9_)
                        {
                           addr020f:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    if(§`!X§ != null)
                                    {
                                       break;
                                    }
                                    if(!_loc10_)
                                    {
                                       §&E§ = new GlowFilter(16776960,1,20 * §&d§.§;`§().scale.x,20 * §&d§.§;`§().scale.y,2.5);
                                       if(_loc9_)
                                       {
                                          §`!X§ = [§&E§];
                                          break;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §&E§ = null;
                              }
                              §`!X§ = null;
                              if(!_loc10_)
                              {
                                 break;
                              }
                              break loop7;
                           }
                        }
                        addr0296:
                        if(§§pop())
                        {
                           if(!_loc10_)
                           {
                              addEventListener(MouseEvent.CLICK,§#_§);
                              if(_loc9_)
                              {
                                 buttonMode = true;
                                 if(_loc10_)
                                 {
                                    break loop5;
                                 }
                              }
                              useHandCursor = true;
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                           break loop5;
                        }
                        break;
                     }
                     addr02d5:
                     §#!;§ = 0;
                     break;
                  }
                  §§goto(addr0340);
               }
               if(buttonMode)
               {
                  removeEventListener(MouseEvent.CLICK,§#_§);
                  buttonMode = false;
                  if(!_loc10_)
                  {
                     addr0339:
                     useHandCursor = false;
                  }
               }
               §§goto(addr0340);
            }
            §`!X§ = null;
            if(!_loc10_)
            {
               break loop2;
            }
            addr0340:
            image.filters = §`!X§;
            addr034f:
            return;
         }
         _loc6_ = cutscene;
         loop12:
         while(true)
         {
            if(_loc9_)
            {
               if(_loc6_.§?^§ != null)
               {
                  if(_loc9_)
                  {
                     _loc8_ = _loc6_.§?^§;
                     _loc7_ = Boolean(Save.§@!A§().get(_loc8_.§=-§,Boolean(_loc8_.§ -§)));
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
               }
               else
               {
                  §§push(false);
                  if(_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc7_ = §§pop();
               }
            }
            while(true)
            {
               §§push(_loc7_);
               if(!_loc10_)
               {
                  §§push(!§§pop());
                  if(!_loc10_)
                  {
                     _loc1_ = Boolean(§§pop());
                     break loop12;
                  }
                  §§goto(addr020f);
               }
               §§goto(addr0296);
            }
            §§goto(addr02d5);
         }
         §§goto(addr0208);
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               if(cutscene != null)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  cutscene.display(2);
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            reset();
            break;
         }
      }
   }
}

