package map
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!!X§.§!_§;
   import §"!L§.§%z§;
   import §%!Q§.§ !>§;
   import §%!Q§.§&r§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§2!B§;
   import §-!!§.§6!4§;
   import §-!!§.§^!8§;
   import §-v§.§%!3§;
   import scenes.§+Z§;
   import scenes.Cutscenes;
   import scenes.PlanetMissing;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.menu.§3!!§;
   import com.player03.run3.menu.§;!G§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import openfl.Assets;
   import unitsystem.§7o§;
   
   public class Map extends §[k§ implements §3!!§, §@[§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point;
      
      public static var §;!D§:Point;
      
      public static var §+!;§:§9t§;
      
      public static var §+1§:§%z§;
      
      public static var instance:Map;
      
      public var §&I§:Number;
      
      public var §'f§:Number;
      
      public var §%!G§:Shape;
      
      public var paths:Vector.<Path>;
      
      public var §9G§:Boolean;
      
      public var §^T§:Point;
      
      public var §4!<§:Rectangle;
      
      public var §&m§:Number;
      
      public var §!!B§:Number;
      
      public var §@!V§:Sprite;
      
      public var §[%§:§&l§;
      
      public var §]!Z§:Vector.<§6!X§>;
      
      public var §'!$§:Boolean;
      
      public var instructions:TextField;
      
      public var §2V§:Number;
      
      public var §"+§:§+U§;
      
      public var §+h§:§%!3§;
      
      public var §<C§:Rectangle;
      
      public var §2!=§:Vector.<§&! §>;
      
      public var §5!-§:Object;
      
      public var §0H§:§@2§;
      
      public var §^4§:§&x§;
      
      public function Map()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §&I§ = 0;
               §'!$§ = false;
               if(_loc2_)
               {
                  §5!-§ = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  super();
               }
               § L§.high = 919473;
               if(!_loc2_)
               {
                  break;
               }
               §^T§ = new Point(0,0);
               §§push(§6!]§);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            §^,§(null);
            break;
         }
      }
      
      public static function §%`§() : §%z§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Map.§+1§ == null)
         {
            if(!_loc1_)
            {
               Map.§+1§ = §%z§.MENU(Map.§@!A§());
            }
         }
         return Map.§+1§;
      }
      
      public static function §@!A§() : Map
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as Map;
         if(_loc2_)
         {
            if(Map.instance != null)
            {
               return Map.instance;
            }
         }
         return Map.instance = new Map();
      }
      
      public function §5Z§() : void
      {
         §§push(false);
         var _loc20_:Boolean = true;
         var _loc21_:* = §§pop();
         var _loc3_:* = 0;
         var _loc5_:* = null as §&! §;
         var _loc9_:* = null as Path;
         var _loc10_:* = NaN;
         var _loc11_:* = null as Point;
         var _loc12_:* = null as Point;
         var _loc13_:* = false;
         var _loc14_:* = null as § !>§;
         var _loc15_:* = null as §-Q§;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:int = 0;
         var _loc19_:* = 0;
         var _loc1_:Number = Number(§@!V§.mouseX);
         var _loc2_:Number = Number(§@!V§.mouseY);
         while(true)
         {
            §§push(false);
            if(_loc20_)
            {
               if(_loc1_ != §^T§.x)
               {
                  break;
               }
               §§pop();
               §§push(_loc2_ == §^T§.y);
            }
            §§push(Boolean(§§pop()));
            break;
         }
         if(§§pop())
         {
            return;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop35:
               while(true)
               {
                  loop36:
                  while(true)
                  {
                     loop37:
                     while(true)
                     {
                        §§push(true);
                        §§push(true);
                        if(_loc20_)
                        {
                           while(true)
                           {
                              §§push(true);
                              if(!_loc21_)
                              {
                                 §§push(true);
                                 §§push(Boolean(§4!<§.contains(mouseX,mouseY)));
                                 if(_loc20_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    if(_loc21_)
                                    {
                                       break loop36;
                                    }
                                    §§pop();
                                    §§push(Boolean(§<C§.contains(mouseX,mouseY)));
                                 }
                                 if(§§pop())
                                 {
                                    break;
                                 }
                                 §§pop();
                                 if(!_loc20_)
                                 {
                                    break loop3;
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc21_)
                                    {
                                       if(!§&r§.§@!A§().visible)
                                       {
                                          break;
                                       }
                                       if(!_loc21_)
                                       {
                                          §§pop();
                                          §§push(§&r§.§@!A§().§%N§());
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc21_)
                                    {
                                       break;
                                    }
                                    break loop37;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc20_)
                              {
                                 break;
                              }
                              break loop35;
                           }
                           if(§§pop())
                           {
                              break loop4;
                           }
                           if(_loc21_)
                           {
                              break loop3;
                           }
                        }
                        §§pop();
                        §§push(Boolean(§0H§.visible));
                        if(!_loc21_)
                        {
                           break loop4;
                        }
                        §§goto(addr01be);
                     }
                     §§goto(addr01a0);
                  }
                  §§goto(addr0157);
               }
               §§goto(addr0156);
            }
            if(!§§pop())
            {
               if(!_loc21_)
               {
                  §§pop();
                  if(_loc20_)
                  {
                     §§push(false);
                     §§push(false);
                     break;
                  }
                  §§goto(addr0205);
               }
               §§goto(addr01e3);
            }
            §§goto(addr01e4);
         }
         addr0156:
         addr0157:
         loop5:
         while(true)
         {
            §§push(false);
            §§push(false);
            if(§0H§.§8L§.visible)
            {
               §§pop();
               if(!_loc20_)
               {
                  break;
               }
               §§push(§0H§.§8L§.mouseX >= 0);
            }
            if(!§§pop())
            {
               break;
            }
            while(true)
            {
               if(!_loc21_)
               {
                  §§pop();
                  if(!_loc20_)
                  {
                     break;
                  }
                  §§push(§0H§.§8L§.mouseY >= 0);
               }
               §§push(Boolean(§§pop()));
               break loop5;
            }
            if(Boolean(§§pop()))
            {
               if(_loc20_)
               {
                  §§pop();
                  §§push(§0H§.§8L§.mouseY <= §0H§.§8L§.height);
               }
            }
            if(Boolean(§§pop()))
            {
               §"+§.hide();
               if(_loc20_)
               {
                  return;
               }
            }
            else
            {
               §§push(0);
               if(_loc20_)
               {
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
            }
            var _loc4_:Vector.<§&! §> = §2!=§;
            while(true)
            {
               if(_loc20_)
               {
                  loop0:
                  while(_loc3_ < int(_loc4_.length))
                  {
                     _loc5_ = _loc4_[_loc3_];
                     loop8:
                     while(true)
                     {
                        if(_loc20_)
                        {
                           _loc3_++;
                           if(!_loc21_)
                           {
                              loop9:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc20_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(false);
                                             if(!_loc21_)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(!_loc21_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(_loc20_)
                                                         {
                                                            if(_loc5_.cutscene != null)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc21_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc5_.x < _loc1_);
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break loop13;
                                                         }
                                                         if(!_loc21_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§pop();
                                                      if(!_loc20_)
                                                      {
                                                         break loop12;
                                                      }
                                                      §§push(_loc5_.x + _loc5_.width > _loc1_);
                                                      if(!_loc20_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                if(!_loc20_)
                                                {
                                                   break loop11;
                                                }
                                             }
                                             §§pop();
                                             if(!_loc21_)
                                             {
                                                §§push(_loc5_.y < _loc2_);
                                                if(!_loc21_)
                                                {
                                                   break loop11;
                                                }
                                                break;
                                             }
                                          }
                                          if(!§§pop())
                                          {
                                             break loop10;
                                          }
                                          if(!_loc20_)
                                          {
                                             break loop9;
                                          }
                                       }
                                       §§push(Boolean(§§pop()));
                                       break loop12;
                                    }
                                    §§pop();
                                    if(!_loc21_)
                                    {
                                       §§push(_loc5_.y + _loc5_.height > _loc2_);
                                       if(_loc20_)
                                       {
                                          break loop9;
                                       }
                                       break;
                                    }
                                    break loop8;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc20_)
                                 {
                                    break loop8;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop10;
                           }
                           break;
                        }
                        §"+§.hide();
                        break;
                     }
                     return;
                  }
                  if(_loc20_)
                  {
                     §^T§.x = _loc1_;
                     if(!_loc20_)
                     {
                        break;
                     }
                  }
               }
               §^T§.y = _loc2_;
               break;
            }
            §§push(Number(Math.POSITIVE_INFINITY));
            if(!_loc21_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Path = null;
            if(_loc20_)
            {
               §§push(0);
               if(_loc20_)
               {
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
            }
            var _loc8_:Vector.<Path> = paths;
            loop1:
            while(true)
            {
               §§push(_loc3_);
               if(_loc21_)
               {
                  break;
               }
               if(§§pop() >= int(_loc8_.length))
               {
                  loop15:
                  while(true)
                  {
                     while(true)
                     {
                        loop23:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc20_)
                              {
                                 §§push(true);
                                 if(!_loc20_)
                                 {
                                    break;
                                 }
                                 if(_loc7_ != null)
                                 {
                                    §§pop();
                                    §§push(_loc6_ > _loc7_.§%[§);
                                 }
                                 if(§§pop())
                                 {
                                    §"+§.hide();
                                    if(_loc20_)
                                    {
                                       break loop23;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc7_.§=;§(Map.§;!D§));
                                    if(_loc21_)
                                    {
                                       break loop1;
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc20_)
                                    {
                                       break loop1;
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    §§push(_loc7_.levels.§'m§(_loc3_));
                                    if(!_loc21_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc20_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(!§§pop());
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop24;
                                 }
                                 if(_loc21_)
                                 {
                                    break loop15;
                                 }
                                 §§pop();
                              }
                              §§push(_loc7_.levels.§#u§(_loc3_));
                              if(!_loc21_)
                              {
                                 break loop15;
                              }
                              §§goto(addr050b);
                           }
                           §§goto(addr05ea);
                        }
                        §§goto(addr06df);
                     }
                     loop24:
                     while(true)
                     {
                        loop25:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc21_)
                              {
                                 _loc14_ = _loc7_.levels;
                                 _loc15_ = _loc14_.§0!R§;
                                 loop26:
                                 while(true)
                                 {
                                    if(!_loc21_)
                                    {
                                       _loc16_ = int(Save.§@!A§().get(_loc15_.§=-§,int(_loc15_.§ -§)));
                                       _loc17_ = _loc14_.levelCount;
                                       while(true)
                                       {
                                          §§push(_loc16_);
                                          §§push(_loc17_);
                                          if(!_loc21_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc20_)
                                                {
                                                   continue loop20;
                                                }
                                                §§push(_loc16_);
                                                if(!_loc20_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc17_);
                                             }
                                             _loc18_ = §§pop();
                                             §§push(_loc7_.levels.availableUntil);
                                             §§push(1);
                                             if(!_loc20_)
                                             {
                                                break loop26;
                                             }
                                          }
                                          §§push(int(§§pop() + §§pop()));
                                          break;
                                       }
                                       _loc19_ = §§pop();
                                       if(!_loc20_)
                                       {
                                          break loop23;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc21_)
                                       {
                                          §§push(_loc18_);
                                          if(!_loc20_)
                                          {
                                             break;
                                          }
                                          if(§§pop() >= _loc19_)
                                          {
                                             §§push(_loc19_);
                                             if(_loc20_)
                                             {
                                                break loop26;
                                             }
                                             break;
                                          }
                                       }
                                       §§push(_loc18_);
                                       if(_loc20_)
                                       {
                                          break loop26;
                                       }
                                       break;
                                    }
                                    addr05c4:
                                    §§push(§§pop() <= §§pop());
                                    if(!_loc20_)
                                    {
                                       break loop25;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc20_)
                                    {
                                       break loop25;
                                    }
                                    _loc13_ = §§pop();
                                    if(_loc21_)
                                    {
                                       break loop24;
                                    }
                                 }
                                 §§goto(addr05c4);
                              }
                           }
                           else
                           {
                              §§push(false);
                              if(_loc20_)
                              {
                                 §§goto(addr05e9);
                              }
                              §§goto(addr05ea);
                           }
                           §§goto(addr05ec);
                        }
                        §§goto(addr05ee);
                     }
                     §§goto(addr06c2);
                  }
                  §§push(!Boolean(§§pop()));
                  if(!_loc21_)
                  {
                     addr050b:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc20_)
                        {
                           break loop16;
                        }
                        addr05e9:
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     addr05ea:
                     _loc13_ = §§pop();
                     addr05ec:
                     addr05ee:
                     if(_loc13_)
                     {
                        _loc14_ = _loc7_.levels;
                        _loc15_ = _loc14_.§0!R§;
                        _loc16_ = int(Save.§@!A§().get(_loc15_.§=-§,int(_loc15_.§ -§)));
                        loop18:
                        while(true)
                        {
                           loop19:
                           while(true)
                           {
                              loop20:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc21_)
                                    {
                                       §§push(_loc14_.levelCount);
                                       if(_loc21_)
                                       {
                                          break loop20;
                                       }
                                       §§push(int(§§pop()));
                                       if(_loc21_)
                                       {
                                          break;
                                       }
                                       _loc17_ = §§pop();
                                       §§push(_loc16_);
                                       if(_loc21_)
                                       {
                                          break loop20;
                                       }
                                       §§push(_loc17_);
                                       if(!_loc20_)
                                       {
                                          break loop19;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             addr0658:
                                             _loc18_ = _loc16_;
                                             §§push(_loc7_.levels.availableUntil);
                                             if(!_loc20_)
                                             {
                                                break;
                                             }
                                             §§push(1);
                                             if(!_loc20_)
                                             {
                                                break loop19;
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          else
                                          {
                                             §§push(_loc17_);
                                             if(!_loc21_)
                                             {
                                                §§goto(addr0658);
                                             }
                                          }
                                          §§push(int(§§pop()));
                                          break;
                                       }
                                       _loc19_ = §§pop();
                                       if(_loc21_)
                                       {
                                          break loop18;
                                       }
                                    }
                                    §§push(_loc18_);
                                    if(_loc20_)
                                    {
                                       §§push(_loc19_);
                                       break loop19;
                                    }
                                    §§goto(addr06b1);
                                 }
                                 §§goto(addr0696);
                              }
                              §§goto(addr0695);
                           }
                           if(§§pop() < §§pop())
                           {
                              if(!_loc21_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr06b1:
                              _loc3_ = int(_loc19_);
                           }
                        }
                        addr0696:
                        _loc3_ = _loc18_;
                        addr0695:
                        if(_loc21_)
                        {
                        }
                     }
                     _loc7_.§;3§(_loc3_,null,Map.§;!D§);
                     addr06c2:
                     §;!,§(_loc3_,_loc7_.levels,Map.§;!D§.x,Map.§;!D§.y);
                     addr06df:
                     return;
                  }
                  break loop16;
               }
               _loc9_ = _loc8_[_loc3_];
               _loc3_++;
               loop31:
               while(true)
               {
                  loop32:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc21_)
                        {
                           while(true)
                           {
                              §§push(_loc9_.levels.§<o§());
                              if(!_loc21_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc20_)
                                 {
                                    break;
                                 }
                              }
                              §§push(!§§pop());
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc20_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           _loc9_.§>7§(_loc1_,_loc2_,null,Map.§1]§);
                        }
                        §§push(_loc1_ - Map.§1]§.x);
                        if(!_loc21_)
                        {
                           §§push(_loc1_);
                           if(!_loc21_)
                           {
                              §§push(§§pop() - Map.§1]§.x);
                              if(!_loc21_)
                              {
                                 §§push(§§pop() * §§pop());
                                 §§push(_loc2_);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop() - Map.§1]§.y);
                                    if(!_loc21_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc21_)
                                       {
                                          §§push(§§pop() - Map.§1]§.y);
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc21_)
                                       {
                                          break loop32;
                                       }
                                    }
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc21_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc20_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc10_ = §§pop();
                              break;
                           }
                           break loop32;
                        }
                        break loop31;
                     }
                     §§push(_loc10_);
                     §§push(_loc6_);
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     continue loop1;
                  }
                  if(!_loc21_)
                  {
                     §§push(Number(_loc10_));
                     break;
                  }
                  §§goto(addr042e);
               }
               _loc6_ = §§pop();
               addr042e:
               _loc7_ = _loc9_;
               _loc11_ = Map.§;!D§;
               _loc12_ = Map.§1]§;
               if(_loc20_)
               {
                  _loc11_.x = _loc12_.x;
                  if(!_loc20_)
                  {
                     continue;
                  }
               }
               _loc11_.y = _loc12_.y;
            }
            §§goto(addr04cb);
         }
         addr01a0:
         if(§§pop())
         {
            §§pop();
            §§goto(addr01bd);
            §§push(§0H§.§8L§.mouseX <= §0H§.§8L§.width);
         }
         §§goto(addr01be);
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc29_:Boolean = true;
         var _loc30_:* = §§pop();
         var _loc2_:* = null as §&l§;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§&! §>;
         var _loc5_:* = null as §&! §;
         var _loc6_:* = null as §9t§;
         var _loc7_:* = null;
         var _loc8_:* = null as Rectangle;
         var _loc9_:* = null as Point;
         var _loc10_:* = null as §38§;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = null as PlanetMissing;
         var _loc21_:* = false;
         var _loc22_:* = null as §]k§;
         var _loc23_:* = null as Point;
         var _loc24_:* = null as Vector.<Path>;
         var _loc25_:* = null as Path;
         var _loc26_:* = null as §6!X§;
         var _loc27_:* = null as Vector.<§6!X§>;
         var _loc28_:* = null as §6!X§;
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               loop38:
               while(true)
               {
                  loop39:
                  while(true)
                  {
                     if(!_loc30_)
                     {
                        §7o§.controlScheme.update(param1);
                        §§push(§7o§.controlScheme.§,h§("left"));
                        if(_loc29_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc30_)
                           {
                              break;
                           }
                        }
                        §§push(§7o§.controlScheme.§,h§("right"));
                        if(_loc29_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop() != §§pop())
                        {
                           loop40:
                           while(true)
                           {
                              if(_loc29_)
                              {
                                 §§push(§7o§.controlScheme.§,h§("left"));
                                 if(!_loc30_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc30_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc30_)
                                             {
                                                break loop40;
                                             }
                                             §§push(§&I§);
                                             if(!_loc30_)
                                             {
                                                §§push(§&m§);
                                                if(_loc30_)
                                                {
                                                   break;
                                                }
                                                §§push(-§§pop());
                                                if(_loc30_)
                                                {
                                                   break;
                                                }
                                                if(§§pop() > §§pop())
                                                {
                                                   §§push(§§findproperty(§&I§));
                                                   §§push(§&m§);
                                                   if(_loc29_)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   §§pop().§&I§ = §§pop();
                                                   break loop40;
                                                }
                                                §§push(§&I§);
                                                if(_loc30_)
                                                {
                                                   break loop38;
                                                }
                                                §§push(§!!B§);
                                                if(!_loc30_)
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc29_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr0166:
                                                         §§push(§§findproperty(§&I§));
                                                         §§push(§&I§);
                                                         if(!_loc30_)
                                                         {
                                                            §§push(§'f§);
                                                            if(!_loc30_)
                                                            {
                                                               §§push(§§pop() * param1);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§pop().§&I§ = §§pop();
                                                         if(!_loc30_)
                                                         {
                                                            break loop40;
                                                         }
                                                         break loop8;
                                                      }
                                                      break loop40;
                                                   }
                                                }
                                                addr01ad:
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc30_)
                                                   {
                                                      §&I§ = §&m§;
                                                      if(_loc29_)
                                                      {
                                                         break loop40;
                                                      }
                                                      break loop9;
                                                   }
                                                   break loop40;
                                                }
                                                §§push(§&I§);
                                                if(_loc30_)
                                                {
                                                   break loop38;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(§&I§);
                                             if(!_loc30_)
                                             {
                                                §§push(§&m§);
                                                if(_loc30_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr01ad);
                                             }
                                          }
                                          §§push(§!!B§);
                                          break;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(§§findproperty(§&I§));
                                             §§push(§&I§);
                                             if(_loc29_)
                                             {
                                                §§push(§'f§);
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc29_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§pop().§&I§ = §§pop();
                                       }
                                       break;
                                    }
                                 }
                                 break loop39;
                              }
                              §§goto(addr0166);
                           }
                        }
                        else
                        {
                           §&I§ = 0;
                        }
                     }
                     §§push(§&I§);
                     break loop38;
                  }
                  §§goto(addr026c);
               }
               if(§§pop() != 0)
               {
                  break loop8;
               }
               §§goto(addr025c);
            }
            §'!$§ = false;
            §§goto(addr0277);
         }
         _loc2_ = §[%§;
         if(!_loc30_)
         {
            §§push(_loc2_);
            §§push(_loc2_._cameraX);
            if(!_loc30_)
            {
               §§push(§&I§);
               if(!_loc30_)
               {
                  §§push(§§pop() * param1);
               }
               §§push(§§pop() + §§pop());
               if(_loc29_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§+!>§(§§pop());
         }
         addr025c:
         addr026c:
         §§push(§7o§.instance.mouseDown);
         if(_loc29_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            break loop9;
         }
         addr0277:
         §§push(0);
         if(_loc29_)
         {
            §§push(int(§§pop()));
         }
         _loc3_ = §§pop();
         _loc4_ = §2!=§;
         loop10:
         while(true)
         {
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  loop32:
                  while(true)
                  {
                     loop34:
                     while(true)
                     {
                        if(_loc29_)
                        {
                           while(_loc3_ < int(_loc4_.length))
                           {
                              _loc5_ = _loc4_[_loc3_];
                              if(!_loc30_)
                              {
                                 _loc3_++;
                                 if(_loc30_)
                                 {
                                    continue;
                                 }
                              }
                              _loc5_.update(param1);
                           }
                           if(!_loc30_)
                           {
                              §[%§.update(param1);
                              §@!V§.x = §[%§.§'!8§(0);
                              §@!V§.y = §[%§.§<d§(0);
                              loop35:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc30_)
                                    {
                                       if(!instructions.visible)
                                       {
                                          break;
                                       }
                                       if(!_loc29_)
                                       {
                                          break loop35;
                                       }
                                    }
                                    §§pop();
                                    if(!_loc30_)
                                    {
                                       §§push(§[%§._cameraX);
                                       if(_loc29_)
                                       {
                                          §§push(§2V§);
                                          if(!_loc30_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc30_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc30_)
                                                {
                                                   break loop35;
                                                }
                                             }
                                             break;
                                          }
                                          break loop12;
                                       }
                                       break loop32;
                                    }
                                    break loop34;
                                 }
                                 if(§§pop())
                                 {
                                    instructions.visible = false;
                                    if(_loc30_)
                                    {
                                       break loop10;
                                    }
                                    _loc6_ = Map.§+!;§;
                                    while(true)
                                    {
                                       if(!_loc30_)
                                       {
                                          §§push(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))));
                                          if(!_loc30_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          if(!_loc29_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(_loc6_);
                                       §§push(_loc3_);
                                       if(_loc29_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§pop().§?F§(§§pop());
                                       break;
                                    }
                                 }
                                 §0H§.update(param1);
                                 if(_loc29_)
                                 {
                                    §5Z§();
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc30_)
                              {
                                 break loop36;
                              }
                              break loop11;
                           }
                        }
                        §§push(§"+§.x + §@!V§.x);
                        if(!_loc29_)
                        {
                           break loop32;
                        }
                        if(§§pop() < §[%§.x)
                        {
                           break;
                        }
                        §§push(§"+§.x + §"+§.width);
                        if(!_loc30_)
                        {
                           break loop32;
                        }
                        §§goto(addr042f);
                     }
                     §"+§.x = §[%§.x - §@!V§.x;
                     if(!_loc30_)
                     {
                        break loop10;
                     }
                     §§goto(addr0497);
                  }
                  addr042f:
                  §§push(§§pop() + §@!V§.x);
                  §§push(§[%§.x + §[%§.width);
                  break;
               }
               if(§§pop() > §§pop())
               {
                  while(true)
                  {
                     §§push(§"+§);
                     §§push(§[%§.x + §[%§.width);
                     if(_loc29_)
                     {
                        §§push(§§pop() - §"+§.width);
                        if(_loc30_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() - §@!V§.x);
                     break;
                  }
                  §§pop().x = §§pop();
               }
               break loop10;
            }
            if(§§pop())
            {
               if(!_loc30_)
               {
                  §9G§ = false;
               }
               addr0497:
               _loc7_ = §5!-§;
               if(!_loc30_)
               {
                  §5!-§ = null;
               }
               _loc8_ = new Rectangle();
               _loc9_ = new Point(0,0);
               _loc10_ = layout.scale;
               if(!_loc30_)
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
                                 §§push(_loc10_.x);
                                 if(!_loc30_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc10_.y);
                                       if(!_loc30_)
                                       {
                                          §§push((§§pop() + §§pop()) / 2);
                                          if(_loc30_)
                                          {
                                             break loop15;
                                          }
                                          _loc11_ = §§pop();
                                          §§push(§!_§.§@Y§);
                                          §§push(_loc11_);
                                          if(_loc30_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc12_ = §§pop() * §§pop();
                                       if(!_loc30_)
                                       {
                                          §§push(§!_§.§@N§);
                                          if(!_loc30_)
                                          {
                                             §§push(_loc11_);
                                             if(!_loc30_)
                                             {
                                                break;
                                             }
                                             break loop14;
                                          }
                                          break loop16;
                                       }
                                       break loop17;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc30_)
                                    {
                                       break loop13;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc13_ = §§pop();
                                 if(_loc29_)
                                 {
                                    §§push(§!_§.§[;§);
                                    if(_loc29_)
                                    {
                                       break loop13;
                                    }
                                    break loop15;
                                 }
                                 §§goto(addr0582);
                              }
                              _loc16_ = -36;
                              §§goto(addr0582);
                           }
                           _loc14_ = §§pop();
                           §%!G§.graphics.clear();
                           §%!G§.graphics.lineStyle(2,0);
                           if(!_loc30_)
                           {
                              break loop17;
                           }
                           addr0582:
                           while(true)
                           {
                              §§push(54);
                              if(_loc29_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc30_)
                                 {
                                    break;
                                 }
                              }
                              _loc15_ = §§pop();
                              if(_loc29_)
                              {
                                 §§push(6);
                                 if(_loc29_)
                                 {
                                    break;
                                 }
                                 while(§§pop() != _loc15_)
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc16_);
                                          if(_loc29_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc30_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc29_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc30_)
                                                {
                                                   break loop19;
                                                }
                                             }
                                          }
                                          var _temp_1:* = §§pop();
                                          §§push(_temp_1);
                                          §§push(_temp_1);
                                          break;
                                       }
                                       _loc16_ = §§pop();
                                       if(!_loc30_)
                                       {
                                          break;
                                       }
                                       §§goto(addr05da);
                                    }
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc29_)
                                       {
                                          addr05da:
                                          _loc17_ = §§pop();
                                          if(!_loc29_)
                                          {
                                             break;
                                          }
                                          §§push(_loc17_);
                                       }
                                       §§push(§§pop() * 3.141592653589793);
                                       if(!_loc30_)
                                       {
                                          §§push(§§pop() / 180);
                                          if(!_loc30_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc18_ = §§pop();
                                          if(_loc30_)
                                          {
                                             break;
                                          }
                                          §§push(_loc18_ + 0.03490658503988659);
                                       }
                                       _loc19_ = Number(§§pop());
                                       if(!_loc30_)
                                       {
                                          §%!G§.graphics.moveTo(_loc12_ + _loc14_ * Number(Math.cos(_loc18_)),_loc13_ + _loc14_ * Number(Math.sin(_loc18_)));
                                          if(!_loc29_)
                                          {
                                             break;
                                          }
                                       }
                                       §%!G§.graphics.lineTo(_loc12_ + _loc14_ * Number(Math.cos(_loc19_)),_loc13_ + _loc14_ * Number(Math.sin(_loc19_)));
                                       break;
                                    }
                                 }
                                 _loc20_ = Cutscenes.§5!H§();
                                 loop22:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc30_)
                                       {
                                          if(_loc20_.§?^§ != null)
                                          {
                                             if(_loc29_)
                                             {
                                                _loc22_ = _loc20_.§?^§;
                                                if(_loc29_)
                                                {
                                                   §§push(Boolean(Save.§@!A§().get(_loc22_.§=-§,Boolean(_loc22_.§ -§))));
                                                   if(!_loc29_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc30_)
                                                   {
                                                      break;
                                                   }
                                                   _loc21_ = §§pop();
                                                   if(!_loc29_)
                                                   {
                                                      break loop22;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(false);
                                             if(_loc29_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             _loc21_ = §§pop();
                                          }
                                       }
                                       §§push(_loc21_);
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       §§push(0);
                                       if(_loc29_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       break;
                                    }
                                    if(_loc30_)
                                    {
                                       break;
                                    }
                                    _loc23_ = §!_§.§9i§(_loc7_);
                                    while(true)
                                    {
                                       if(!_loc30_)
                                       {
                                          §%!G§.graphics.lineStyle();
                                          if(!_loc29_)
                                          {
                                             break;
                                          }
                                       }
                                       §%!G§.graphics.beginFill(0);
                                       if(!_loc30_)
                                       {
                                          §%!G§.graphics.drawCircle(_loc23_.x * _loc11_,_loc23_.y * _loc11_,2.5 * _loc11_);
                                          if(_loc29_)
                                          {
                                             §%!G§.graphics.endFill();
                                             if(_loc29_)
                                             {
                                                §§push(0);
                                                if(_loc29_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                _loc3_ = §§pop();
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    _loc4_ = §2!=§;
                                    loop30:
                                    while(true)
                                    {
                                       if(!_loc30_)
                                       {
                                          while(_loc3_ < int(_loc4_.length))
                                          {
                                             _loc5_ = _loc4_[_loc3_];
                                             if(_loc30_)
                                             {
                                                break;
                                             }
                                             _loc3_++;
                                             if(_loc30_)
                                             {
                                                break loop30;
                                             }
                                             if(_loc5_.§"'§ == "Planet")
                                             {
                                                if(!_loc30_)
                                                {
                                                   _loc5_.alpha = 0.5;
                                                   if(!_loc30_)
                                                   {
                                                      break;
                                                   }
                                                   break loop30;
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       §§goto(addr083e);
                                    }
                                    §§goto(addr0849);
                                 }
                                 _loc4_ = §2!=§;
                                 if(_loc29_)
                                 {
                                    while(_loc3_ < int(_loc4_.length))
                                    {
                                       _loc5_ = _loc4_[_loc3_];
                                       if(!_loc30_)
                                       {
                                          _loc3_++;
                                          if(!_loc29_)
                                          {
                                             break;
                                          }
                                       }
                                       if(_loc5_.§"'§ == "Planet")
                                       {
                                          if(!_loc30_)
                                          {
                                             _loc5_.alpha = 1;
                                          }
                                          break;
                                       }
                                    }
                                 }
                                 addr083e:
                                 §§push(0);
                                 if(_loc29_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 addr0849:
                                 _loc24_ = paths;
                                 loop4:
                                 while(_loc3_ < int(_loc24_.length))
                                 {
                                    _loc25_ = _loc24_[_loc3_];
                                    _loc3_++;
                                    _loc25_.draw(§%!G§.graphics,null,null,_loc7_,_loc9_);
                                    while(true)
                                    {
                                       if(_loc29_)
                                       {
                                          if(_loc8_.left > _loc9_.x)
                                          {
                                             if(_loc30_)
                                             {
                                                continue loop4;
                                             }
                                             _loc8_.left = _loc9_.x;
                                             if(_loc30_)
                                             {
                                                break;
                                             }
                                          }
                                          if(_loc8_.right < _loc9_.x)
                                          {
                                             if(!_loc29_)
                                             {
                                                break;
                                             }
                                             _loc8_.right = _loc9_.x;
                                          }
                                       }
                                       if(_loc8_.top > _loc9_.y)
                                       {
                                          break;
                                       }
                                       addr08da:
                                       if(_loc8_.bottom < _loc9_.y)
                                       {
                                          if(!_loc30_)
                                          {
                                             _loc8_.bottom = _loc9_.y;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    _loc8_.top = _loc9_.y;
                                    §§goto(addr08da);
                                 }
                                 if(_loc29_)
                                 {
                                    _loc8_.inflate(-§[%§.width / 4,-_loc8_.height / 2);
                                    if(_loc8_.width < 0)
                                    {
                                       _loc8_.x += _loc8_.width / 2;
                                       _loc8_.width = 0;
                                    }
                                    §[%§.§"!E§ = true;
                                    if(!_loc30_)
                                    {
                                       §[%§.§>1§();
                                    }
                                 }
                                 §[%§.§[!Y§.copyFrom(_loc8_);
                                 if(!_loc30_)
                                 {
                                    §^4§.reset();
                                 }
                                 _loc26_ = null;
                                 if(!_loc30_)
                                 {
                                    §§push(0);
                                    if(_loc29_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 _loc27_ = §]!Z§;
                                 if(!_loc30_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc29_)
                                       {
                                          break;
                                       }
                                       if(§§pop() < int(_loc27_.length))
                                       {
                                          _loc28_ = _loc27_[_loc3_];
                                          if(_loc29_)
                                          {
                                             _loc3_++;
                                             while(true)
                                             {
                                                if(!_loc30_)
                                                {
                                                   _loc28_.reset();
                                                   if(!_loc29_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                if(_loc28_.§1!E§)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          _loc26_ = _loc28_;
                                          continue;
                                       }
                                       while(true)
                                       {
                                          if(!_loc30_)
                                          {
                                             if(_loc26_ == null)
                                             {
                                                break;
                                             }
                                             if(!_loc29_)
                                             {
                                                break;
                                             }
                                          }
                                          §[%§.§+!>§(_loc26_.x);
                                          if(!_loc30_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(0);
                                       if(_loc29_)
                                       {
                                          break;
                                       }
                                       _loc3_ = §§pop();
                                    }
                                    §§goto(addr0a25);
                                    §§push(int(§§pop()));
                                 }
                                 _loc4_ = §2!=§;
                                 loop27:
                                 while(true)
                                 {
                                    if(!_loc30_)
                                    {
                                       while(_loc3_ < int(_loc4_.length))
                                       {
                                          _loc5_ = _loc4_[_loc3_];
                                          if(!_loc30_)
                                          {
                                             _loc3_++;
                                             if(!_loc30_)
                                             {
                                                if(_loc5_.§&E§ == null)
                                                {
                                                   continue;
                                                }
                                                if(!_loc29_)
                                                {
                                                   break loop27;
                                                }
                                             }
                                          }
                                          §[%§.§+!>§(_loc5_.x + _loc5_.width / 2);
                                          if(_loc29_)
                                          {
                                             break;
                                          }
                                          break loop27;
                                       }
                                    }
                                    §2V§ = §[%§._cameraX;
                                    break;
                                 }
                                 _loc6_ = Map.§+!;§;
                                 while(true)
                                 {
                                    if(_loc29_)
                                    {
                                       if(int(Save.§@!A§().get(_loc6_.§=-§,int(_loc6_.§ -§))) >= 3)
                                       {
                                          break;
                                       }
                                       if(!_loc29_)
                                       {
                                          break;
                                       }
                                    }
                                    instructions.visible = §[%§.§[!Y§.width > 0;
                                    break;
                                 }
                                 addr0afe:
                                 return;
                                 addr0672:
                              }
                              while(true)
                              {
                                 §§goto(addr0672);
                              }
                              continue loop22;
                              addr0670:
                           }
                           _loc3_ = §§pop();
                           §§goto(addr0670);
                        }
                        §§push(Number(§§pop()));
                        break loop16;
                     }
                     §§push(§§pop() * §§pop());
                     break loop15;
                  }
                  §§push(_loc11_);
                  break loop14;
               }
               continue loop22;
            }
            §§goto(addr0afe);
         }
         §§push(§9G§);
         break loop11;
      }
      
      public function §;!,§(param1:int, param2:§ !>§, param3:Number, param4:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            §§push(true);
            §§push(false);
            §§push(false);
            if(!_loc6_)
            {
               if(!§"+§.visible)
               {
                  break;
               }
               if(_loc6_)
               {
                  break;
               }
            }
            §§pop();
            §§push(§"+§.§5!K§ == param1);
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
            break;
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
                  §§push(§"+§.path == param2);
                  if(!_loc5_)
                  {
                     break loop1;
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(param2 == null);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     return;
                  }
                  §§push(true);
                  if(_loc5_)
                  {
                     if(param1 >= param2.levelCount)
                     {
                        break loop2;
                     }
                     if(!_loc6_)
                     {
                        §§pop();
                        §§push(false);
                     }
                     else
                     {
                        §§goto(addr00b6);
                     }
                  }
                  §§push(param2.§'m§(param1));
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
                  continue loop3;
               }
               §§goto(addr00cd);
            }
            if(!§§pop())
            {
               §§push(§7o§.instance.mouseDown);
               break loop3;
            }
            §"+§.hide();
            §§goto(addr00e3);
         }
         loop3:
         while(true)
         {
            while(true)
            {
               if(!§§pop())
               {
                  addr00b6:
                  §§pop();
                  if(_loc6_)
                  {
                     break;
                  }
                  §§push(!param2.§#u§(param1));
                  if(!_loc5_)
                  {
                     break loop3;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc5_)
                  {
                     break loop2;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop2;
            }
            addr00e3:
            return;
         }
         while(true)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  break;
               }
               §'!$§ = true;
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(§"+§);
            §§push(param1);
            §§push(param2.§5i§(param1));
            if(_loc5_)
            {
               §§push(§§pop());
            }
            §§pop().show(§§pop(),§§pop(),param2,param3,param4);
            break;
         }
      }
      
      public function §#9§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §9G§ = true;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc3_:* = null as §6!X§;
         var _loc5_:* = 0;
         var _loc6_:* = null as §0!?§;
         var _loc7_:* = null as String;
         var _loc8_:* = null as §9t§;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = false;
         var _loc14_:* = null as §0!?§;
         var _loc15_:* = null as §9t§;
         var _loc17_:* = null as §&! §;
         while(true)
         {
            if(!_loc19_)
            {
               if(§[!<§.§@!A§().§1!Y§ != this)
               {
                  if(!_loc19_)
                  {
                     return;
                  }
                  break;
               }
               §;!G§.§@!A§().§"!&§ = false;
               if(_loc19_)
               {
                  break;
               }
            }
            §"+§.hide();
            break;
         }
         §§push(0);
         if(!_loc19_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§6!X§> = §]!Z§;
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               if(_loc20_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc19_)
                     {
                        break loop10;
                     }
                     if(§§pop() < int(_loc2_.length))
                     {
                        _loc3_ = _loc2_[_loc1_];
                        while(true)
                        {
                           if(_loc20_)
                           {
                              _loc1_++;
                              if(_loc19_)
                              {
                                 break;
                              }
                           }
                           _loc3_.§0!B§ = false;
                           if(!_loc19_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        _loc3_.reset();
                        continue;
                     }
                     if(_loc19_)
                     {
                        break loop9;
                     }
                  }
               }
               §§push(0);
               if(!_loc20_)
               {
                  break;
               }
               §§push(int(§§pop()));
               if(!_loc19_)
               {
                  _loc1_ = §§pop();
                  break loop9;
               }
               §§goto(addr0112);
            }
            var _loc4_:* = §§pop();
            if(_loc20_)
            {
               loop1:
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc19_)
                  {
                     break;
                  }
                  if(§§pop() < _loc4_)
                  {
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc20_)
                        {
                           _loc1_++;
                           if(!_loc20_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc5_ = §§pop();
                     if(_loc19_)
                     {
                        break loop3;
                     }
                     if(§]!Z§[_loc5_].visible)
                     {
                        _loc6_ = §]!Z§[_loc5_].character.§>t§;
                        if(!_loc19_)
                        {
                           §§push(Save.§@!A§().get(_loc6_.§=-§,_loc6_.§ -§));
                           if(_loc20_)
                           {
                              §§push(§§pop());
                           }
                           _loc7_ = §§pop();
                        }
                        _loc8_ = §]!Z§[_loc5_].character.§ j§;
                        if(_loc19_)
                        {
                           break loop3;
                        }
                        loop13:
                        while(true)
                        {
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                                    if(!_loc19_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc19_)
                                       {
                                          _loc9_ = §§pop();
                                          if(_loc19_)
                                          {
                                             break loop3;
                                          }
                                          §§push(_loc5_);
                                          §§push(1);
                                          if(!_loc20_)
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop() + §§pop()));
                                          if(_loc19_)
                                          {
                                             break loop15;
                                          }
                                          _loc10_ = §§pop();
                                          if(!_loc20_)
                                          {
                                             continue loop16;
                                          }
                                          §§push(int(§]!Z§.length));
                                          if(!_loc20_)
                                          {
                                             break loop13;
                                          }
                                       }
                                    }
                                    §§push(int(§§pop()));
                                    break loop15;
                                 }
                                 §§goto(addr034d);
                              }
                              _loc11_ = §§pop();
                              if(!_loc19_)
                              {
                                 break loop16;
                              }
                              continue loop16;
                           }
                           loop3:
                           while(true)
                           {
                              _loc14_ = §]!Z§[_loc12_].character.§>t§;
                              loop16:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc20_)
                                    {
                                       if(_loc7_ == Save.§@!A§().get(_loc14_.§=-§,_loc14_.§ -§))
                                       {
                                          if(!_loc19_)
                                          {
                                             _loc15_ = §]!Z§[_loc12_].character.§ j§;
                                             §§push(_loc9_ == int(Save.§@!A§().get(_loc15_.§=-§,int(_loc15_.§ -§))));
                                             if(!_loc20_)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(_loc19_)
                                             {
                                                break;
                                             }
                                             _loc13_ = §§pop();
                                             if(!_loc20_)
                                             {
                                                break loop16;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(false);
                                          if(!_loc19_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc13_ = §§pop();
                                       }
                                    }
                                    §§push(_loc13_);
                                    if(!_loc19_)
                                    {
                                       break;
                                    }
                                    addr02ed:
                                    if(§§pop())
                                    {
                                       if(_loc20_)
                                       {
                                          §]!Z§[_loc5_].§0!B§ = true;
                                          §]!Z§[_loc5_].visible = false;
                                          if(_loc20_)
                                          {
                                             break loop3;
                                          }
                                          break loop16;
                                       }
                                    }
                                    else
                                    {
                                       §]!Z§[_loc12_].§0!B§ = true;
                                    }
                                    §]!Z§[_loc12_].visible = false;
                                    break loop16;
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 §§goto(addr02ed);
                                 §§push(§]!Z§[_loc12_].§1!E§);
                              }
                              while(true)
                              {
                                 §§push(_loc10_);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc11_);
                                    addr034d:
                                    while(§§pop() < §§pop())
                                    {
                                       §§push(_loc10_);
                                       if(!_loc19_)
                                       {
                                          _loc10_++;
                                          if(_loc20_)
                                          {
                                             break loop13;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    break loop3;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           _loc12_ = §§pop();
                           if(!_loc19_)
                           {
                              break loop14;
                           }
                           break;
                        }
                     }
                     continue;
                  }
                  if(!_loc19_)
                  {
                     §§push(0);
                     if(!_loc19_)
                     {
                        §§push(int(§§pop()));
                     }
                     break;
                  }
               }
               _loc1_ = §§pop();
            }
            var _loc16_:Vector.<§&! §> = §2!=§;
            while(true)
            {
               if(!_loc19_)
               {
                  while(_loc1_ < int(_loc16_.length))
                  {
                     _loc17_ = _loc16_[_loc1_];
                     if(_loc20_)
                     {
                        _loc1_++;
                        if(!_loc19_)
                        {
                           _loc17_.reset();
                        }
                     }
                  }
                  if(_loc20_)
                  {
                     §&I§ = 0;
                     if(_loc19_)
                     {
                        break;
                     }
                     §'!$§ = false;
                     if(!_loc20_)
                     {
                        break;
                     }
                  }
               }
               §&r§.§@!A§().§?!!§();
               break;
            }
            var _loc18_:§@2§ = §0H§;
            while(true)
            {
               if(_loc20_)
               {
                  if(_loc18_.visible)
                  {
                     if(_loc20_)
                     {
                        _loc18_.§,!3§(null);
                        if(!_loc20_)
                        {
                           break;
                        }
                     }
                  }
                  §0H§.reset();
                  if(!_loc20_)
                  {
                     break;
                  }
               }
               §9G§ = true;
               break;
            }
            return;
         }
         §§push(int(§]!Z§.length));
         if(!_loc19_)
         {
            addr0112:
            §§push(int(§§pop()));
         }
         break loop10;
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc3_)
                                 {
                                    §§push(§'!$§);
                                    if(!_loc2_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§[%§.mouseChildren));
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                 }
                                 break loop3;
                              }
                              §§pop();
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              §§push(Boolean(§4!<§.contains(mouseX,mouseY)));
                              if(!_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(!_loc2_)
                     {
                        §§push(Boolean(§<C§.contains(mouseX,mouseY)));
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                        }
                        break;
                     }
                  }
                  if(!§§pop())
                  {
                     break loop0;
                  }
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop2;
            }
            §"+§.§`m§(param1);
            break;
         }
      }
      
      public function §]!A§(param1:§ 7§) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §§push(param1.§;c§());
               if(_loc4_)
               {
                  while(true)
                  {
                     §§push(param1.§0!7§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() / §§pop());
                        §§push(param1.§5`§());
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc3_)
                           {
                              §§push(§§pop() / param1.§0!]§);
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §§push(param1.§;c§());
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(param1.§0!7§);
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr00b9:
                        §§push(param1.§5`§());
                        §§push(param1.§0!]§);
                     }
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§push(§§pop() / §§pop());
                  if(!_loc3_)
                  {
                     _loc2_ = Number(§§pop());
                     if(_loc4_)
                     {
                        §§push(param1);
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * param1.§0!]§);
                        }
                        §§pop().§&s§(§§pop());
                        if(_loc3_)
                        {
                        }
                     }
                     break;
                  }
                  §§goto(addr00b9);
               }
               _loc2_ = §§pop();
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(param1);
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(§§pop() * param1.§0!7§);
            }
            §§pop().§"!§(§§pop());
            break;
         }
      }
      
      public function §;O§(param1:String) : Path
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as Path;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<Path> = paths;
         if(_loc6_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               while(true)
               {
                  if(!_loc5_)
                  {
                     _loc2_++;
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  if(_loc4_.levels.pathName == param1)
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc4_;
            }
         }
         return null;
      }
      
      public function §#!T§(param1:Graphics, param2:Array = undefined, param3:Array = undefined, param4:Object = undefined, param5:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc8_:* = null as Path;
         while(true)
         {
            if(!_loc9_)
            {
               if(param4 != null)
               {
                  break;
               }
            }
            param4 = true;
            break;
         }
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<Path> = paths;
         if(_loc10_)
         {
            loop0:
            while(_loc6_ < int(_loc7_.length))
            {
               _loc8_ = _loc7_[_loc6_];
               loop2:
               while(true)
               {
                  if(!_loc9_)
                  {
                     _loc6_++;
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        if(param2 == null)
                        {
                           break;
                        }
                        if(_loc10_)
                        {
                           §§pop();
                           if(!_loc10_)
                           {
                              break loop2;
                           }
                           §§push(int(param2.indexOf(_loc8_.levels.pathName)) >= 0);
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
               _loc8_.draw(param1,param4,param3 != null && int(param3.indexOf(_loc8_.levels.pathName)) >= 0,param5);
            }
         }
      }
      
      public function §4O§(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as § !>§;
         var _loc3_:Path = §;O§(param1);
         while(true)
         {
            if(!_loc5_)
            {
               if(_loc3_ == null)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc4_ = §>K§.§@!A§().§7j§.get(param1);
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(_loc4_ == null)
                        {
                           break;
                        }
                     }
                     _loc3_ = new Path(_loc4_,param2);
                     if(_loc6_)
                     {
                        paths.push(_loc3_);
                     }
                     break;
                  }
               }
               if(_loc3_ == null)
               {
                  break;
               }
               if(_loc5_)
               {
                  break;
               }
               _loc3_.§8z§(param2);
               if(_loc5_)
               {
                  break;
               }
            }
            §9G§ = true;
            break;
         }
      }
      
      override public function §^g§() : void
      {
         var a1:§ 7§;
         var f:Function;
         §§push(false);
         var _loc24_:Boolean = true;
         var _loc25_:* = §§pop();
         var _loc15_:* = null as String;
         var _loc16_:* = null as §&! §;
         var _loc21_:* = null as CharacterDef;
         var _loc22_:* = null as §6!X§;
         var _loc1_:Bitmap = §2!B§.§83§("map/MapMask.png");
         var _loc2_:§ 7§ = new §?y§(_loc1_);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc2_,new §@$§(true,0));
         }
         _loc2_ = new §?y§(_loc1_);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc2_,new §@$§(false,0));
         }
         _loc2_ = new §?y§(_loc1_);
         while(true)
         {
            if(!_loc25_)
            {
               §§push(§§newactivation());
               §§push(§]!A§);
               if(_loc24_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc24_)
               {
                  break;
               }
            }
            a1 = _loc2_;
            break;
         }
         if(_loc24_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc25_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc3_)));
            if(!_loc25_)
            {
               _loc3_();
            }
         }
         var _loc4_:§ 7§ = new §?y§(_loc1_);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
         }
         _loc4_ = new §?y§(_loc1_);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.BOTTOM));
         }
         var _loc5_:Number = 12;
         if(_loc24_)
         {
            §4!<§ = new Rectangle();
         }
         _loc4_ = new § 6§(§4!<§);
         if(!_loc25_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc4_);
            §§push(§§findproperty(§@$§));
            §§push(true);
            §§push(_loc5_);
            if(!_loc25_)
            {
               §§push(§§pop() * 2);
            }
            §§pop().add(§§pop(),new §§pop().§@$§(§§pop(),§§pop()));
         }
         _loc4_ = new § 6§(§4!<§);
         if(_loc24_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc4_);
            §§push(§§findproperty(§@$§));
            §§push(false);
            §§push(_loc5_);
            if(_loc24_)
            {
               §§push(§§pop() * 2);
            }
            §§pop().add(§§pop(),new §§pop().§@$§(§§pop(),§§pop()));
         }
         _loc4_ = new § 6§(§4!<§);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
            if(_loc24_)
            {
               §&d§.§1$§().add(_loc4_,new §4$§(false,0.5));
               if(_loc24_)
               {
                  §[%§ = new §&l§(100,100,null,18,null,false);
               }
            }
         }
         _loc4_ = new §?y§(§[%§);
         var _loc6_:§ 7§ = new §?y§(_loc1_);
         if(!_loc25_)
         {
            §&d§.§1$§().add(_loc4_,new §@$§(true,2),_loc6_);
         }
         _loc4_ = new §?y§(§[%§);
         _loc6_ = new §?y§(_loc1_);
         if(!_loc25_)
         {
            §&d§.§1$§().add(_loc4_,new §@$§(false,2),_loc6_);
         }
         _loc4_ = new §?y§(§[%§);
         _loc6_ = new §?y§(_loc1_);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(true,0.5),_loc6_);
         }
         _loc4_ = new §?y§(§[%§);
         _loc6_ = new §?y§(_loc1_);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(false,0.5),_loc6_);
            while(true)
            {
               if(_loc24_)
               {
                  §[%§.§>!%§ = 40;
                  if(!_loc24_)
                  {
                     break;
                  }
               }
               §§push(§[%§);
               §§push(§[%§.§>!%§);
               if(!_loc25_)
               {
                  §§push(-§§pop());
               }
               §§pop().§#x§ = §§pop();
               break;
            }
         }
         var _loc7_:§^!8§ = §[%§.§@c§;
         while(true)
         {
            if(!_loc25_)
            {
               _loc7_.§<!K§ = -30;
               if(!_loc24_)
               {
                  break;
               }
            }
            _loc7_.§7!§ = 0;
            break;
         }
         var _loc8_:§7f§ = new §7f§(int(§[%§.width),int(§[%§.height));
         _loc4_ = new §?y§(_loc8_);
         _loc6_ = new §?y§(§[%§);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc4_,new §@$§(true,0),_loc6_);
         }
         _loc4_ = new §?y§(_loc8_);
         _loc6_ = new §?y§(§[%§);
         if(!_loc25_)
         {
            §&d§.§1$§().add(_loc4_,new §@$§(false,0),_loc6_);
         }
         _loc4_ = new §?y§(_loc8_);
         _loc6_ = new §?y§(§[%§);
         if(!_loc25_)
         {
            §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.LEFT),_loc6_);
         }
         _loc4_ = new §?y§(_loc8_);
         _loc6_ = new §?y§(§[%§);
         while(true)
         {
            if(_loc24_)
            {
               §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.TOP),_loc6_);
               if(_loc25_)
               {
                  break;
               }
               addChild(_loc8_);
               if(!_loc24_)
               {
                  break;
               }
            }
            addChild(§[%§);
            break;
         }
         var _loc9_:int = int(numChildren);
         addChild(_loc1_);
         § L§.mid = 133622;
         if(_loc24_)
         {
            §^4§ = new §&x§(§[%§);
            §@!V§ = new Sprite();
         }
         addChild(§@!V§);
         while(true)
         {
            if(!_loc25_)
            {
               §"+§ = new §+U§();
               if(_loc25_)
               {
                  break;
               }
            }
            §@!V§.addChild(§"+§);
            break;
         }
         addEventListener(MouseEvent.CLICK,§#_§);
         var _loc10_:* = JSON.parse(Assets.getText("text/MapContents.json"));
         var _loc11_:Vector.<§&! §> = new Vector.<§&! §>(0,false);
         if(!_loc25_)
         {
            §2!=§ = _loc11_;
         }
         var _loc12_:* = _loc10_.images;
         §§push(0);
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc13_:* = §§pop();
         while(true)
         {
            §§push(Reflect.fields(_loc12_));
            if(_loc24_)
            {
               §§push(§§pop());
               if(_loc25_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc14_:* = §§pop();
         if(!_loc25_)
         {
            while(_loc13_ < int(_loc14_.length))
            {
               §§push(_loc14_[_loc13_]);
               if(_loc24_)
               {
                  §§push(§§pop());
               }
               _loc15_ = §§pop();
               if(!_loc25_)
               {
                  _loc13_++;
               }
               _loc16_ = new §&! §(_loc15_,Reflect.field(_loc12_,_loc15_));
               if(_loc24_)
               {
                  §2!=§.push(_loc16_);
                  if(_loc25_)
                  {
                     continue;
                  }
               }
               §[%§.addChild(_loc16_);
            }
         }
         var _loc17_:Vector.<Path> = new Vector.<Path>(0,false);
         if(_loc24_)
         {
            paths = _loc17_;
            if(_loc24_)
            {
               §%!G§ = new Shape();
            }
         }
         var _loc18_:* = _loc10_.paths;
         if(!_loc25_)
         {
            while(true)
            {
               §§push(0);
               if(!_loc25_)
               {
                  §§push(int(§§pop()));
                  if(_loc24_)
                  {
                     _loc13_ = §§pop();
                     if(_loc25_)
                     {
                        break;
                     }
                     §§push(Reflect.fields(_loc18_));
                     if(!_loc25_)
                     {
                        §§push(§§pop());
                        if(!_loc25_)
                        {
                           §§push(§§pop());
                        }
                     }
                     _loc14_ = §§pop();
                     if(_loc25_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc13_);
                     }
                     addr0704:
                  }
               }
               while(§§pop() < int(_loc14_.length))
               {
                  §§push(_loc14_[_loc13_]);
                  if(_loc24_)
                  {
                     §§push(§§pop());
                  }
                  _loc15_ = §§pop();
                  if(_loc24_)
                  {
                     _loc13_++;
                     if(!_loc25_)
                     {
                        §4O§(_loc15_,Reflect.field(_loc18_,_loc15_));
                     }
                  }
                  §§goto(addr0704);
               }
               if(_loc24_)
               {
                  break;
               }
            }
            §[%§.addChild(§%!G§);
         }
         var _loc19_:Vector.<§6!X§> = new Vector.<§6!X§>(0,false);
         while(true)
         {
            if(!_loc25_)
            {
               §]!Z§ = _loc19_;
               if(!_loc24_)
               {
                  break;
               }
            }
            §§push(0);
            if(!_loc25_)
            {
               §§push(int(§§pop()));
            }
            _loc13_ = §§pop();
            break;
         }
         var _loc20_:Vector.<CharacterDef> = CharacterRegistry.available;
         if(!_loc25_)
         {
            while(_loc13_ < int(_loc20_.length))
            {
               _loc21_ = _loc20_[_loc13_];
               if(!_loc25_)
               {
                  _loc13_++;
                  if(!_loc24_)
                  {
                     continue;
                  }
               }
               if(_loc21_ != CharacterRegistry.random)
               {
                  _loc22_ = new §6!X§(_loc21_);
                  if(_loc24_)
                  {
                     §[%§.addChild(_loc22_);
                     if(_loc24_)
                     {
                        §]!Z§.push(_loc22_);
                     }
                  }
               }
            }
            if(!_loc25_)
            {
               §0H§ = new §@2§(§[%§);
            }
         }
         _loc4_ = new §?y§(§0H§);
         _loc6_ = new §?y§(§[%§);
         if(_loc24_)
         {
            §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.LEFT),_loc6_);
         }
         _loc4_ = new §?y§(§0H§);
         _loc6_ = new §?y§(§[%§);
         if(!_loc25_)
         {
            §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.TOP),_loc6_);
            if(_loc24_)
            {
               addChildAt(§0H§,_loc9_);
            }
         }
         var _loc23_:§@2§ = §0H§;
         §§push(_loc23_.§6!]§);
         if(!_loc25_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            _loc23_.§^,§(null);
         }
         addChild(§0H§.§8L§);
         addChild(§0H§.§-!8§);
         §+h§ = new §%!3§();
         _temp_1.scaleX *= 0.5;
         _temp_2.scaleY *= 0.5;
         addChildAt(§+h§,int(getChildIndex(§@!V§)));
         §<C§ = §+h§.getBounds(this);
         if(!_loc25_)
         {
            instructions = §&!;§.§9Q§(16777215,32,null,"Click and drag to view more.");
         }
         _loc4_ = new §?y§(instructions);
         §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.RIGHT));
         instructions.visible = false;
         while(true)
         {
            if(_loc24_)
            {
               addChild(instructions);
               if(!_loc24_)
               {
                  break;
               }
            }
            if(§&r§.§@!A§().parent != null)
            {
               break;
            }
            addr09b7:
            addChild(§&r§.§@!A§());
            while(true)
            {
               §§push(§#9§);
               if(_loc24_)
               {
                  §§push(§§pop());
                  if(!_loc24_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               if(_loc24_)
               {
                  break;
               }
               §§goto(addr0a16);
            }
            _loc3_ = §§pop();
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc3_)));
            if(_loc24_)
            {
               addr0a16:
               §§pop()();
               addr0a1b:
               return;
               §§push(_loc3_);
            }
            §§goto(addr0a1b);
         }
         removeChild(§&r§.§@!A§());
         §§goto(addr09b7);
      }
   }
}

