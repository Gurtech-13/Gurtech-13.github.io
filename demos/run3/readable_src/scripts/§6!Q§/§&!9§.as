package §6!Q§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §"!M§.§;!7§;
   import §%!Q§.§ !>§;
   import §%!Z§.§&!S§;
   import §,!G§.§%M§;
   import §,!G§.§6!7§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §-!!§.§8!8§;
   import §-v§.§%!3§;
   import §-v§.§-G§;
   import §-v§.§2P§;
   import §-v§.§98§;
   import §0!"§.§,!Z§;
   import §2!S§.§28§;
   import §2!S§.§95§;
   import §4!6§.§=s§;
   import game.§#a§;
   import game.§`f§;
   import world3d.Entity3D;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§;0§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.Bunny;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import haxe.Timer;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §&!9§ extends §[k§ implements §@[§
   {
      
      public static var §1y§:Number;
      
      public var §5!a§:§+"§;
      
      public var §?B§:§,C§;
      
      public var §2S§:int;
      
      public var §!v§:§2P§;
      
      public var §3!;§:Sprite;
      
      public var §2!K§:§,C§;
      
      public var §#i§:§2P§;
      
      public var §-!"§:§95§;
      
      public var §'0§:§,C§;
      
      public var §+h§:§%!3§;
      
      public var §#!"§:Number;
      
      public var §7+§:§+;§;
      
      public var §`W§:Vector.<§28§>;
      
      public var §3!_§:§98§;
      
      public function §&!9§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §2S§ = -1;
               if(_loc1_)
               {
                  break;
               }
            }
            §#!"§ = -1;
            if(_loc2_)
            {
               super();
            }
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc2_:* = null as § 7§;
         var _loc3_:* = null;
         var _loc4_:* = null as §&d§;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as §,a§;
         var _loc7_:* = 0;
         var _loc8_:* = null as Vector.<§28§>;
         var _loc9_:* = null as §28§;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop16:
                  while(true)
                  {
                     loop23:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(!visible);
                           if(!_loc11_)
                           {
                              if(§§pop())
                              {
                                 return;
                              }
                              if(§3!;§.visible == §7o§.instance.paused)
                              {
                                 break;
                              }
                              if(_loc11_)
                              {
                                 break loop23;
                              }
                              §3!;§.visible = §7o§.instance.paused;
                              §2!K§.visible = !§3!;§.visible;
                              if(!_loc10_)
                              {
                                 break loop6;
                              }
                              if(§3!;§.visible)
                              {
                                 if(_loc11_)
                                 {
                                    continue loop10;
                                 }
                                 §#!"§ = -1;
                                 if(_loc11_)
                                 {
                                    break loop6;
                                 }
                                 §§push(false);
                                 if(Main.instance.tunnel == null)
                                 {
                                    break loop2;
                                 }
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    break loop1;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§2S§);
                                    if(!_loc11_)
                                    {
                                       if(§§pop() < 0)
                                       {
                                          break loop23;
                                       }
                                       if(!_loc11_)
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             if(!_loc11_)
                                             {
                                                break loop16;
                                             }
                                             §§goto(addr0455);
                                          }
                                          §§goto(addr04b4);
                                       }
                                       §§goto(addr047a);
                                    }
                                    §§goto(addr04d1);
                                 }
                                 §§goto(addr04d3);
                              }
                           }
                           if(Main.instance.tunnel.§5§ != §,a§.INFINITE)
                           {
                              §§pop();
                              §§push(Main.instance.tunnel.§7!E§ != null);
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc11_)
                           {
                              break loop2;
                           }
                           break loop16;
                        }
                        §§goto(addr0498);
                     }
                     §§goto(addr0493);
                  }
                  while(true)
                  {
                     if(Main.instance.tunnel.characters[0].§73§.§[9§ == §2S§)
                     {
                        §§pop();
                        §§push(Main.instance.tunnel.characters[0].§]!L§ != null);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     §§goto(addr0461);
                  }
                  §§goto(addr04b4);
               }
               if(§7+§ == null)
               {
                  break loop12;
               }
               while(true)
               {
                  if(_loc10_)
                  {
                     §7+§.visible = false;
                     _loc2_ = new §?y§(§3!_§);
                     _loc3_ = §&!9§.§1y§;
                     _loc4_ = layout;
                     loop18:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc11_)
                           {
                              if(_loc4_ != null)
                              {
                                 §§push(_loc4_);
                                 break;
                              }
                              if(_loc11_)
                              {
                                 break loop18;
                              }
                           }
                           §§push(§&d§.§1$§());
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc11_)
                           {
                              if(_loc3_ != null)
                              {
                                 §§push(new §;!!§(Number(_loc3_),§2u§.BOTTOM));
                                 break;
                              }
                           }
                           §§push(§^`§.§ !P§(§2u§.BOTTOM));
                           break;
                        }
                        §§pop().add(§§pop(),§§pop());
                        break;
                     }
                     _loc2_ = new §?y§(§5!a§);
                     _loc3_ = §&!9§.§1y§;
                     _loc4_ = layout;
                     while(true)
                     {
                        if(_loc10_)
                        {
                           if(_loc4_ != null)
                           {
                              §§push(_loc4_);
                              break;
                           }
                           if(_loc11_)
                           {
                              break loop12;
                           }
                        }
                        §§push(§&d§.§1$§());
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc10_)
                        {
                           if(_loc3_ != null)
                           {
                              §§push(new §;!!§(Number(_loc3_),§2u§.BOTTOM));
                              break;
                           }
                        }
                        §§push(§^`§.§ !P§(§2u§.BOTTOM));
                        break;
                     }
                     §§pop().add(§§pop(),§§pop());
                     break loop12;
                  }
                  §§goto(addr0493);
               }
               §§goto(addr0498);
            }
            if(§§pop())
            {
               if(!_loc11_)
               {
                  break loop6;
               }
               addr0461:
               Main.instance.tunnel.§5!Y§(§2S§);
               break;
            }
            while(true)
            {
               if(§7+§ == null)
               {
                  if(_loc10_)
                  {
                     §7+§ = new §+;§(null,null,false);
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  _loc2_ = new §?y§(§7+§);
                  _loc4_ = layout;
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           if(_loc4_ != null)
                           {
                              §§push(_loc4_);
                              break;
                           }
                           if(!_loc10_)
                           {
                              break loop8;
                           }
                        }
                        §§push(§&d§.§1$§());
                        break;
                     }
                     §§pop().add(_loc2_,§^`§.§ !P§(§2u§.BOTTOM));
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §3!;§.addChild(§7+§);
               }
               §7+§.reset();
               _loc2_ = new §?y§(§3!_§);
               _loc5_ = new §?y§(§7+§);
               _loc3_ = §&!9§.§1y§;
               _loc4_ = layout;
               while(true)
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(_loc4_ != null)
                        {
                           §§push(_loc4_);
                           break;
                        }
                        if(!_loc10_)
                        {
                           continue loop12;
                        }
                     }
                     §§push(§&d§.§1$§());
                     break;
                  }
                  §§pop().add(_loc2_,new §+X§(Number(_loc3_),§2u§.TOP),_loc5_);
                  continue loop12;
               }
               _loc2_ = new §?y§(§5!a§);
               _loc5_ = new §?y§(§7+§);
               _loc3_ = §&!9§.§1y§;
               _loc4_ = layout;
               loop12:
               while(true)
               {
                  while(true)
                  {
                     if(_loc10_)
                     {
                        if(_loc4_ != null)
                        {
                           §§push(_loc4_);
                           break;
                        }
                        if(_loc11_)
                        {
                           break loop12;
                        }
                     }
                     §§push(§&d§.§1$§());
                     break;
                  }
                  §§pop().add(_loc2_,new §+X§(Number(_loc3_),§2u§.TOP),_loc5_);
                  break;
               }
               _loc6_ = Main.instance.tunnel.§5§;
               loop14:
               while(true)
               {
                  if(_loc10_)
                  {
                     switch(_loc6_.index)
                     {
                        case 0:
                        case 6:
                           §5!a§.visible = true;
                           if(!_loc11_)
                           {
                              break;
                           }
                           break loop14;
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                           §5!a§.visible = false;
                           if(_loc10_)
                           {
                              break;
                           }
                           break loop14;
                     }
                  }
                  §§goto(addr0493);
               }
               §§goto(addr0498);
            }
            §§goto(addr04ab);
         }
         §2S§ = -1;
         addr047a:
         §]u§.§@!A§().§?=§.§9R§(null);
         loop3:
         while(true)
         {
            if(!_loc11_)
            {
               addr0493:
               reset();
               addr0498:
               if(!§3!;§.visible)
               {
                  break;
               }
               while(true)
               {
                  if(!_loc11_)
                  {
                     addr04ab:
                     addr04b4:
                     if(!§7o§.instance.mouseDown)
                     {
                        §#!"§ = -1;
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                  }
                  addr04d1:
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc7_ = §§pop();
                  break;
               }
            }
            addr04d3:
            _loc8_ = §`W§;
            while(true)
            {
               if(_loc10_)
               {
                  while(_loc7_ < int(_loc8_.length))
                  {
                     _loc9_ = _loc8_[_loc7_];
                     if(!_loc11_)
                     {
                        _loc7_++;
                        if(!_loc11_)
                        {
                           _loc9_.update(param1);
                        }
                     }
                  }
                  if(_loc10_)
                  {
                     §#i§.update(param1);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
               }
               §!v§.update(param1);
               if(_loc10_)
               {
                  break;
               }
               break loop3;
            }
            §3!_§.update(param1);
            break;
         }
      }
      
      public function §5N§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §§push(§7o§.instance);
               §§push(§7o§.instance.paused);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().§+D§(§§pop());
               if(_loc3_)
               {
                  break;
               }
               §§push(§7o§.instance.paused);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            update(0);
            break;
         }
      }
      
      public function §6=§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  §§push(§#!C§());
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(_loc1_)
                  {
                     break;
                  }
                  §§push(!§§pop());
                  if(_loc1_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(true);
                     break loop0;
                  }
               }
               §§push(Main.instance.tunnel.§5§ == §,a§.CHALLENGE);
               if(!_loc1_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      public function §]o§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§#!C§());
         if(_loc2_)
         {
            return Boolean(§§pop());
         }
      }
      
      public function §#!C§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Main.instance.tunnel != null)
         {
            if(_loc1_)
            {
               while(true)
               {
                  §§push(true);
                  if(Main.instance.tunnel.§5§ != §,a§.EXPLORE)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(Main.instance.tunnel.§5§ == §,a§.SHARED_CONTENT);
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  return false;
               }
            }
            return Main.instance.tunnel.§?!I§.§'m§(1);
         }
         return true;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §28§;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§28§> = §`W§;
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
            _loc3_.reset();
         }
         §#i§.reset();
         §!v§.reset();
         §-!"§.reset();
         §3!_§.reset();
         if(!_loc4_)
         {
            §2S§ = -1;
            §]u§.§@!A§().§?=§.§9R§(null);
         }
      }
      
      public function §+t§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:* = null as Level;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(false);
                     if(!_loc8_)
                     {
                        break loop1;
                     }
                     if(§#!"§ < 0)
                     {
                        break;
                     }
                     if(_loc7_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc8_)
                     {
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     §§push(Timer.stamp());
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           §§push(§#!"§);
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(§§pop() - §§pop());
                        }
                     }
                     §§push(1);
                     break;
                  }
                  §§push(§§pop() >= §§pop());
                  if(!_loc7_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  continue loop3;
               }
               §§goto(addr01a4);
            }
            §§push(Boolean(§§pop()));
            break loop13;
         }
         _loc2_ = Main.instance.tunnel;
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(false);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                     if(_loc2_ == null)
                     {
                        break;
                     }
                     if(_loc7_)
                     {
                        break loop3;
                     }
                     §§pop();
                     if(_loc7_)
                     {
                        continue loop5;
                     }
                  }
                  §§push(_loc2_.§5§ == §,a§.EXPLORE);
                  if(_loc8_)
                  {
                     break loop3;
                  }
                  break;
               }
               if(§§pop())
               {
                  continue loop5;
               }
               §§goto(addr01a4);
            }
            §§push(Boolean(§§pop()));
            break loop12;
         }
         _loc3_ = _loc2_.extraParams;
         while(true)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_.characters[0].§73§.§[9§);
                     if(_loc7_)
                     {
                        break;
                     }
                     _loc4_ = §§pop();
                     if(!_loc3_.backwards)
                     {
                        §§push(_loc4_);
                        if(!_loc7_)
                        {
                           §§push(1);
                           break loop5;
                        }
                        continue loop7;
                     }
                  }
                  §§push(_loc4_);
                  if(!_loc7_)
                  {
                     §§push(1);
                     if(_loc8_)
                     {
                        §§push(§§pop() - §§pop());
                        break;
                     }
                     break loop5;
                  }
                  continue loop7;
               }
               §§push(int(§§pop()));
               continue loop7;
            }
            §§push(§§pop() + §§pop());
            break loop11;
         }
         _loc5_ = §§pop();
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.§?!I§.§'m§(_loc5_));
                  if(_loc8_)
                  {
                     §§push(!Boolean(§§pop()));
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_.backwards)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              _loc4_++;
                           }
                           else
                           {
                              _loc4_--;
                           }
                        }
                        §§push(false);
                     }
                     if(_loc4_ < 0)
                     {
                        break loop6;
                     }
                     §§pop();
                     if(_loc7_)
                     {
                        break loop7;
                     }
                     §§push(_loc4_ < _loc2_.§?!I§.levelCount);
                     if(!_loc8_)
                     {
                        break loop6;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop6;
               }
               §§goto(addr0183);
            }
            Main.instance.§#f§(_loc4_,_loc2_.§?!I§,§,a§.EXPLORE,_loc3_);
            return;
         }
         if(§§pop())
         {
            addr0183:
            _loc3_.backwards = !_loc3_.backwards;
            break loop7;
         }
         addr01a4:
         var _loc6_:CharacterBase = Main.instance.tunnel.characters[0];
         while(true)
         {
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(§§findproperty(§2S§));
                  §§push(Main.instance.tunnel);
                  if(!_loc7_)
                  {
                     §§push(§2S§);
                     if(_loc7_)
                     {
                        break;
                     }
                     if(§§pop() >= 0)
                     {
                        if(_loc8_)
                        {
                           §§push(§2S§);
                           if(_loc8_)
                           {
                           }
                           break;
                        }
                     }
                     else if(_loc6_.§]!L§ == null)
                     {
                        §§push(_loc6_.§73§.§[9§);
                        break;
                     }
                  }
                  §§push(_loc6_.§]!L§.§[9§);
                  if(_loc8_)
                  {
                  }
                  break;
               }
               §§push(§§pop().§^!J§(§§pop(),true));
               if(_loc8_)
               {
                  §§push(int(§§pop()));
               }
               §§pop().§2S§ = §§pop();
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(§]u§.§@!A§().§?=§);
            §§push(Main.instance.tunnel.§?!I§.§5i§(§2S§));
            if(!_loc7_)
            {
               §§push(§§pop());
            }
            §§pop().§9R§(§§pop());
            break;
         }
      }
      
      public function §>"§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(§§findproperty(§#!"§));
            §§push(Timer.stamp());
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().§#!"§ = §§pop();
         }
      }
      
      public function §"7§(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:CharacterBase = Main.instance.tunnel.characters[0];
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
                     if(!_loc4_)
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§2S§ >= 0)
                        {
                           break loop2;
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
                     §§push(_loc2_.§]!L§ == null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §2S§ = _loc2_.§]!L§.§[9§;
                     if(_loc4_)
                     {
                     }
                  }
                  break loop0;
               }
               while(true)
               {
                  §§push(§§findproperty(§2S§));
                  §§push(Main.instance.tunnel);
                  if(!_loc4_)
                  {
                     §§push(§2S§);
                     if(_loc3_)
                     {
                        if(§§pop() >= 0)
                        {
                           if(!_loc4_)
                           {
                              addr00bf:
                              §§push(§2S§);
                              if(_loc4_)
                              {
                              }
                              break;
                           }
                        }
                        else if(_loc2_.§]!L§ == null)
                        {
                           §§push(_loc2_.§73§.§[9§);
                           break;
                        }
                        §§push(_loc2_.§]!L§.§[9§);
                        if(_loc3_)
                        {
                        }
                     }
                     break;
                  }
                  §§goto(addr00bf);
               }
               §§push(§§pop().§9$§(§§pop(),true,true));
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               §§pop().§2S§ = §§pop();
               if(!_loc4_)
               {
                  break loop0;
               }
               §§goto(addr0144);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §§push(§]u§.§@!A§().§?=§);
         §§push(Main.instance.tunnel.§?!I§.§5i§(§2S§));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         §§pop().§9R§(§§pop());
         addr0144:
      }
      
      public function §8!&§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push("https://run.wikia.com/wiki/");
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Level = Main.instance.tunnel;
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               if(_loc3_ != null)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_.§?!I§ is § !>§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(false);
                                       if(!_loc5_)
                                       {
                                          break loop3;
                                       }
                                       if(_loc3_.characters == null)
                                       {
                                          break;
                                       }
                                       if(_loc4_)
                                       {
                                          break loop3;
                                       }
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          break loop0;
                                       }
                                    }
                                    §§push(int(_loc3_.characters.length) > 0);
                                    if(_loc5_)
                                    {
                                       break loop3;
                                    }
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break loop4;
                           }
                           if(_loc3_.§5§ == §,a§.INFINITE)
                           {
                              if(_loc5_)
                              {
                                 §§push(_loc2_);
                                 break;
                              }
                              break loop0;
                           }
                           break loop1;
                        }
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                           §§push(_loc2_);
                           §§push(StringTools);
                           §§push(_loc3_.§?!I§.§5i§(_loc3_.characters[0].§73§.§[9§));
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop().replace(§§pop(),"\n"," "));
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 _loc2_ = §§pop() + §§pop();
                                 break loop1;
                              }
                           }
                           addr011a:
                           §§push(§§pop());
                        }
                        else
                        {
                           §§push(_loc2_);
                           §§push(StringTools);
                           §§push(_loc3_.§?!I§.§5i§(_loc3_.§]!#§(0,true).§[9§));
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop().replace(§§pop(),"\n"," "));
                           if(!_loc4_)
                           {
                              §§goto(addr011a);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        _loc2_ = §§pop();
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        break loop0;
                     }
                     while(true)
                     {
                        §§push(§§pop() + "Infinite Mode");
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     _loc2_ = §§pop();
                     if(_loc5_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
            }
            break loop1;
         }
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(_loc9_)
         {
            §3!;§ = new Sprite();
            while(true)
            {
               if(!_loc8_)
               {
                  §3!;§.visible = false;
                  if(_loc8_)
                  {
                     break;
                  }
               }
               addChild(§3!;§);
               break;
            }
         }
         var _loc1_:Shape = new Shape();
         if(_loc9_)
         {
            §<!T§.fillRect(_loc1_,§^F§.TRANSPARENT(0,0.7));
            if(_loc9_)
            {
               §3!;§.addChild(_loc1_);
            }
         }
         var _loc2_:Vector.<§28§> = new Vector.<§28§>(0,false);
         if(!_loc8_)
         {
            §`W§ = _loc2_;
            if(_loc9_)
            {
               §&!9§.§1y§ = 12;
            }
         }
         §§push(§§findproperty(§,C§));
         §§push("options/LargePauseIcon.png");
         §§push(§5N§);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
         var _loc4_:§ 7§ = new §?y§(_loc3_);
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc9_)
               {
                  §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
                  if(_loc8_)
                  {
                     break;
                  }
                  §&d§.§1$§().add(_loc4_,new §4$§(false,0.5));
                  if(_loc8_)
                  {
                     break loop1;
                  }
               }
               §3!;§.addChild(_loc3_);
               if(_loc9_)
               {
                  break;
               }
               break loop1;
            }
            §§push(§§findproperty(§2!K§));
            §§push(§§findproperty(§,C§));
            §§push("options/PauseIcon.png");
            §§push(§5N§);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§pop().§2!K§ = new §§pop().§,C§(§§pop(),§§pop());
            break;
         }
         _loc4_ = new §?y§(§2!K§);
         while(true)
         {
            if(!_loc8_)
            {
               §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.RIGHT));
               if(!_loc9_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.TOP));
            if(!_loc8_)
            {
               break;
            }
            addr01d0:
            _loc4_ = new §?y§(§?B§);
            while(true)
            {
               if(_loc9_)
               {
                  §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.RIGHT));
                  if(_loc9_)
                  {
                     §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.TOP));
                     if(_loc9_)
                     {
                        §3!;§.addChild(§?B§);
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                  }
               }
               §#i§ = new §2P§(0);
               break;
            }
            _loc4_ = new §?y§(§#i§);
            var _loc5_:§ 7§ = new §?y§(§2!K§);
            §§push(§&!9§.§1y§);
            if(_loc9_)
            {
               §§push(§§pop() / 2);
            }
            var _loc6_:* = §§pop();
            if(_loc9_)
            {
               §&d§.§1$§().add(_loc4_,new §+X§(Number(_loc6_),§2u§.LEFT),_loc5_);
            }
            _loc4_ = new §?y§(§#i§);
            §§push(§&!9§.§1y§);
            if(!_loc8_)
            {
               §§push(§§pop() * 2);
            }
            _loc6_ = §§pop();
            if(_loc9_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc4_);
                  if(!_loc8_)
                  {
                     if(_loc6_ != null)
                     {
                        §§push(new §;!!§(Number(_loc6_),§2u§.TOP));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.TOP));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               while(true)
               {
                  if(!_loc8_)
                  {
                     §3!;§.addChild(§#i§);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §!v§ = new §2P§(1);
                  break;
               }
            }
            _loc4_ = new §?y§(§!v§);
            _loc5_ = new §?y§(§#i§);
            §§push(§&!9§.§1y§);
            if(!_loc8_)
            {
               §§push(§§pop() / 2);
            }
            _loc6_ = §§pop();
            if(_loc9_)
            {
               §&d§.§1$§().add(_loc4_,new §+X§(Number(_loc6_),§2u§.LEFT),_loc5_);
            }
            _loc4_ = new §?y§(§!v§);
            §§push(§&!9§.§1y§);
            if(!_loc8_)
            {
               §§push(§§pop() * 2);
            }
            _loc6_ = §§pop();
            if(_loc9_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc4_);
                  if(_loc9_)
                  {
                     if(_loc6_ != null)
                     {
                        §§push(new §;!!§(Number(_loc6_),§2u§.TOP));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.TOP));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               if(_loc9_)
               {
                  §3!;§.addChild(§!v§);
                  while(true)
                  {
                     if(_loc9_)
                     {
                        §§push(§§findproperty(§-!"§));
                        §§push(§§findproperty(§95§));
                        §§push(§6=§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§-!"§ = new §§pop().§95§(§§pop());
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                     §+h§ = new §%!3§();
                     break;
                  }
               }
            }
            _loc4_ = new §?y§(§+h§);
            _loc5_ = new §?y§(§-!"§);
            while(true)
            {
               if(!_loc8_)
               {
                  §&d§.§1$§().add(_loc4_,new §@$§(false,0),_loc5_);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               layout.add(new §?y§(§+h§),new §;0§(true));
               break;
            }
            _loc4_ = new §?y§(§+h§);
            _loc6_ = §&!9§.§1y§;
            loop10:
            while(true)
            {
               while(true)
               {
                  if(_loc9_)
                  {
                     while(true)
                     {
                        §§push(§&d§.§1$§());
                        §§push(_loc4_);
                        if(_loc9_)
                        {
                           if(_loc6_ != null)
                           {
                              §§push(new §;!!§(Number(_loc6_),§2u§.LEFT));
                              break;
                           }
                        }
                        §§push(§^`§.§ !P§(§2u§.LEFT));
                        break;
                     }
                     §§pop().add(§§pop(),§§pop());
                     if(!_loc9_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(§&d§.§1$§());
                        §§push(_loc4_);
                        if(_loc9_)
                        {
                           if(_loc6_ != null)
                           {
                              §§push(new §;!!§(Number(_loc6_),§2u§.TOP));
                              break;
                           }
                        }
                        §§push(§^`§.§ !P§(§2u§.TOP));
                        break;
                     }
                     §§pop().add(§§pop(),§§pop());
                     if(!_loc8_)
                     {
                        §3!;§.addChild(§+h§);
                     }
                     §§push(§§findproperty(§9!=§));
                     §§push(§§findproperty(§28§));
                     §§push(§#!C§);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                     }
                     §§push("options/BackLevelIcon.png");
                     §§push(§+t§);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§9!=§(new §§pop().§28§(§§pop(),§§pop(),§§pop()),"Previous",true);
                     if(!_loc9_)
                     {
                        break loop10;
                     }
                  }
                  §9!=§(§-!"§,"Map");
                  break loop10;
               }
               var _loc7_:§8!8§ = §5!a§;
               if(!_loc8_)
               {
                  §&d§.§1$§().add(new §?y§(_loc7_),new §"q§(11184810,6710886,3.6));
               }
               _loc4_ = new §?y§(§5!a§);
               _loc6_ = §&!9§.§1y§;
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc4_);
                  if(!_loc8_)
                  {
                     if(_loc6_ != null)
                     {
                        §§push(new §;!!§(Number(_loc6_),§2u§.LEFT));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.LEFT));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc4_);
                  if(_loc9_)
                  {
                     if(_loc6_ != null)
                     {
                        §§push(new §;!!§(Number(_loc6_),§2u§.BOTTOM));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.BOTTOM));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               if(!_loc8_)
               {
                  §3!;§.addChild(§5!a§);
               }
               layout.apply();
               while(true)
               {
                  if(!_loc8_)
                  {
                     §-!"§.§4^§();
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  §3!_§ = new §98§();
                  break;
               }
               _loc4_ = new §?y§(§3!_§);
               _loc6_ = §&!9§.§1y§;
               if(_loc9_)
               {
                  while(true)
                  {
                     §§push(§&d§.§1$§());
                     §§push(_loc4_);
                     if(_loc9_)
                     {
                        if(_loc6_ != null)
                        {
                           §§push(new §;!!§(Number(_loc6_),§2u§.BOTTOM));
                           break;
                        }
                     }
                     §§push(§^`§.§ !P§(§2u§.BOTTOM));
                     break;
                  }
                  §§pop().add(§§pop(),§§pop());
               }
               _loc4_ = new §?y§(§3!_§);
               _loc6_ = §&!9§.§1y§;
               while(true)
               {
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(§&d§.§1$§());
                        §§push(_loc4_);
                        if(_loc9_)
                        {
                           if(_loc6_ != null)
                           {
                              §§push(new §;!!§(Number(_loc6_),§2u§.RIGHT));
                              break;
                           }
                        }
                        §§push(§^`§.§ !P§(§2u§.RIGHT));
                        break;
                     }
                     §§pop().add(§§pop(),§§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §3!;§.addChild(§3!_§);
                  break;
               }
               return;
            }
            §§push(§§findproperty(§9!=§));
            §§push(§§findproperty(§28§));
            §§push(§]o§);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            §§push("options/SkipLevelIcon.png");
            §§push(§"7§);
            if(_loc9_)
            {
               §§push(§§pop());
            }
            §§pop().§9!=§(new §§pop().§28§(§§pop(),§§pop(),§§pop()),"Next",true);
            §9!=§(new §28§(null,"menu/QualityIcon.png",§-G§.§>!U§),"Quality",false);
            if(_loc9_)
            {
               §§push(§§findproperty(§5!a§));
               §§push(§§findproperty(§+"§));
               §§push(§8!&§);
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               §§pop().§5!a§ = new §§pop().§+"§(§§pop(),0,25,"This level on\nRun Wiki");
            }
            break loop11;
         }
         addChild(§2!K§);
         if(_loc9_)
         {
            §§push(§§findproperty(§?B§));
            §§push(§§findproperty(§,C§));
            §§push("options/UnpauseIcon.png");
            §§push(§5N§);
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().§?B§ = new §§pop().§,C§(§§pop(),§§pop());
         }
         §§goto(addr01d0);
      }
      
      public function §9!=§(param1:§28§, param2:String, param3:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:* = null as § 7§;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null;
         var _loc7_:* = null as §&d§;
         loop0:
         while(true)
         {
            if(!_loc9_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(param3 == null)
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        §§push(false);
                        if(!_loc10_)
                        {
                           break loop1;
                        }
                        param3 = §§pop();
                     }
                     §3!;§.addChild(param1);
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc9_)
                           {
                              if(§-!"§ == null)
                              {
                                 break loop1;
                              }
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§pop();
                              if(_loc9_)
                              {
                                 break loop2;
                              }
                              §§push(§-!"§ == param1);
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                           §§push(!§§pop());
                           if(!_loc9_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§push(Boolean(§§pop()));
                        break loop1;
                     }
                  }
                  _loc4_ = new §?y§(param1);
                  _loc5_ = new §?y§(§-!"§);
                  while(true)
                  {
                     if(_loc10_)
                     {
                        §&d§.§1$§().add(_loc4_,new §@$§(false,0),_loc5_);
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     layout.add(new §?y§(param1),new §;0§(true));
                     break;
                  }
                  §§goto(addr0100);
               }
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     break loop2;
                  }
                  addr010e:
                  _loc4_ = new §?y§(param1);
                  _loc5_ = new §?y§(§+h§);
                  _loc6_ = §&!9§.§1y§;
                  if(!_loc9_)
                  {
                     §&d§.§1$§().add(_loc4_,new §+X§(Number(_loc6_),§2u§.RIGHT),_loc5_);
                  }
                  _loc4_ = new §?y§(param1);
                  _loc6_ = §&!9§.§1y§;
                  if(_loc10_)
                  {
                     while(true)
                     {
                        §§push(§&d§.§1$§());
                        §§push(_loc4_);
                        if(_loc10_)
                        {
                           if(_loc6_ != null)
                           {
                              §§push(new §;!!§(Number(_loc6_),§2u§.TOP));
                              break;
                           }
                        }
                        §§push(§^`§.§ !P§(§2u§.TOP));
                        break;
                     }
                     §§pop().add(§§pop(),§§pop());
                     if(_loc10_)
                     {
                        break;
                     }
                     §§goto(addr0266);
                  }
                  break;
               }
               addr0100:
               if(§'0§ != null)
               {
                  _loc4_ = new §?y§(param1);
                  _loc5_ = new §?y§(§'0§);
                  _loc6_ = §&!9§.§1y§;
                  _loc7_ = null;
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc10_)
                        {
                           if(_loc7_ != null)
                           {
                              _loc7_ = _loc7_;
                              break;
                           }
                        }
                        _loc7_ = §&d§.§1$§();
                        if(_loc10_)
                        {
                           break;
                        }
                        break loop6;
                     }
                     _loc7_.add(_loc4_,new §+X§(Number(_loc6_),§2u§.RIGHT),_loc5_);
                     if(!_loc9_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  _loc7_.add(_loc4_,new §4$§(false,0.5),_loc5_);
                  break;
               }
            }
            §§goto(addr010e);
         }
         §'0§ = param1;
         if(_loc10_)
         {
            addr0266:
            §`W§.push(param1);
            §§goto(addr0270);
         }
         addr0270:
         var _loc8_:TextField = §&!;§.§9Q§(16777215,32,null,param2);
         _loc6_ = null;
         if(!_loc9_)
         {
            while(true)
            {
               if(_loc6_ == null)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  _loc6_ = int(Number(_loc8_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc6_)));
               break;
            }
         }
         _loc4_ = new §?y§(_loc8_);
         _loc5_ = new §?y§(param1);
         _loc7_ = null;
         while(true)
         {
            if(_loc10_)
            {
               if(_loc7_ != null)
               {
                  _loc7_ = _loc7_;
                  break;
               }
            }
            _loc7_ = §&d§.§1$§();
            break;
         }
         _loc7_.add(_loc4_,new §+X§(0,§2u§.BOTTOM),_loc5_);
         _loc7_.add(_loc4_,new §4$§(true,0.5),_loc5_);
         §3!;§.addChild(_loc8_);
         param1.§]B§ = _loc8_;
         _loc8_.visible = param1.visible;
         if(param3)
         {
            if(_loc10_)
            {
               param1.addEventListener(MouseEvent.MOUSE_DOWN,§>"§);
            }
         }
      }
   }
}

