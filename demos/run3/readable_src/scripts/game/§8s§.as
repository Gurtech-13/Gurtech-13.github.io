package game
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §!i§.§#A§;
   import §"§.§5O§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§&l§;
   import §-!!§.§,C§;
   import geom3d.Transform;
   import layout3d.§>N§;
   import §2n§.§0"§;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§`!W§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point2DUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import nme3D.model.§,T§;
   import nme3D.model.Object3D;
   import nme3D.model.Model;
   import openfl.Lib;
   
   public class §8s§ extends §0"§
   {
      
      public var §%L§:Vector.<§#A§>;
      
      public var §@! §:int;
      
      public var §5!_§:Vector.<String>;
      
      public var §>u§:MouseEvent;
      
      public var §'!A§:§5v§;
      
      public var §'6§:int;
      
      public var §'!>§:§[!'§;
      
      public var §1Q§:Vector.<§,C§>;
      
      public var §`W§:Vector.<Vector.<§#A§>>;
      
      public var §#!_§:§&l§;
      
      public function §8s§(param1:§5v§)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §'6§ = 0;
               if(!_loc3_)
               {
                  break;
               }
            }
            §@! § = 0;
            if(_loc3_)
            {
               super();
            }
            break;
         }
         var _loc2_:Vector.<String> = new Vector.<String>(0,false);
         while(true)
         {
            if(!_loc4_)
            {
               §5!_§ = _loc2_;
               §5!_§.push("I think that\'s enough, don\'t you?");
               if(!_loc3_)
               {
                  break;
               }
            }
            §5!_§.push("You\'ve used all ten hotkeys!");
            §5!_§.push("Could you simplify your level design, rather than adding more tiles?");
            §5!_§.push("You can make lots of interesting things with just two or three tiles. This is more than enough!");
            §5!_§.push("By the way, if you accidentally clicked the wrong tile, just reload the editor to get rid of it.");
            §5!_§.push("No but seriously, you get nine tiles plus the eraser, and that\'s it.");
            if(_loc3_)
            {
               §5!_§.push("Clicking more won\'t make me change my mind.");
               §5!_§.push("You\'re just clicking to see what else I say, aren\'t you?");
               §5!_§.push("Well...");
               §5!_§.push("Did you know? This game now has a wiki! Check it out at run.wikia.com.");
               if(_loc3_)
               {
                  §5!_§.push("The wiki editors have been doing a great job uncovering the secrets of this game, but they could always use more help.");
                  §5!_§.push("Ok, that\'s all. Get back to building that level!");
               }
            }
            §'!A§ = param1;
            break;
         }
         visible = false;
         addEventListener(MouseEvent.CLICK,§#_§);
      }
      
      public function §,!3§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §>u§ = param1;
            if(_loc3_)
            {
               if(visible)
               {
                  if(_loc3_)
                  {
                     §6V§();
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §@!?§();
               }
            }
         }
      }
      
      public function §@!?§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               visible = true;
               if(!_loc1_)
               {
                  break;
               }
            }
            §'!A§.editor.§+!_§ = false;
            if(_loc1_)
            {
               break;
            }
            §§goto(addr0055);
         }
         §`J§();
         if(!_loc2_)
         {
            §'!>§.visible = false;
         }
         addr0055:
      }
      
      public function §`J§() : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc1_:* = null as §>3§;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<§#A§>;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null as String;
         var _loc10_:* = null as §=!U§;
         var _loc11_:* = null as §0!E§;
         var _loc12_:* = null as Vector.<Vector.<§#A§>>;
         var _loc13_:* = null as §#A§;
         var _loc14_:* = null;
         var _loc15_:* = null as §>f§;
         loop13:
         while(true)
         {
            if(_loc17_)
            {
               if(§'!A§.editor == null)
               {
                  break;
               }
            }
            _loc1_ = §'!A§.editor.§?!_§.§,!_§;
            loop14:
            while(true)
            {
               loop15:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc16_)
                     {
                        §§push(0);
                        if(_loc16_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(!_loc17_)
                        {
                           break loop15;
                        }
                        _loc2_ = §§pop();
                        if(_loc16_)
                        {
                           break loop14;
                        }
                     }
                     §§push(3);
                     if(!_loc16_)
                     {
                        break loop15;
                     }
                     §§goto(addr0376);
                  }
                  §§goto(addr0383);
               }
               §§push(int(§§pop()));
               if(!_loc16_)
               {
                  _loc3_ = §§pop();
                  if(!_loc16_)
                  {
                     break;
                  }
                  continue loop29;
               }
               §§goto(addr0384);
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               addr0376:
               while(§§pop() < _loc3_)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc16_)
                     {
                        _loc2_++;
                        if(_loc16_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc4_ = §§pop();
                  _loc5_ = §`W§[_loc4_];
                  _loc6_ = 0;
                  §§push(int(_loc5_.length));
                  if(!_loc16_)
                  {
                     _loc7_ = §§pop();
                     while(_loc6_ < _loc7_)
                     {
                        §§push(_loc6_++);
                     }
                     continue loop0;
                     addr036d:
                  }
                  while(true)
                  {
                     _loc8_ = §§pop();
                     §§push(true);
                     if(_loc5_[_loc8_] != null)
                     {
                        §§pop();
                        while(true)
                        {
                           if(!_loc16_)
                           {
                              §§push(false);
                           }
                           §§push(_loc5_[_loc8_].§6!Y§.§,!_§ == _loc1_);
                           break;
                        }
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§"=§.§,n§[_loc8_]);
                           if(!_loc16_)
                           {
                              §§push(§§pop());
                              if(!_loc17_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop());
                           if(!_loc17_)
                           {
                              break;
                           }
                           _loc9_ = §§pop();
                           if(_loc17_)
                           {
                              §§push(_loc9_);
                              break;
                           }
                           _loc10_ = new StringMap();
                           while(true)
                           {
                              if(_loc17_)
                              {
                                 if(!("tileWidth" in StringMap.§+!#§))
                                 {
                                    _loc10_.h["tileWidth"] = "10";
                                    break;
                                 }
                                 if(!_loc17_)
                                 {
                                    break;
                                 }
                              }
                              _loc10_.setReserved("tileWidth","10");
                              if(_loc17_)
                              {
                              }
                              break;
                           }
                           _loc11_ = §"=§.§9!&§(null,_loc10_,true);
                           if(!_loc16_)
                           {
                              loop20:
                              while(true)
                              {
                                 §§push(_loc5_[_loc8_]);
                                 §§push(§§findproperty(§>f§));
                                 §§push(_loc1_);
                                 §§push("terrain-pos-");
                                 §§push(_loc11_);
                                 if(_loc17_)
                                 {
                                    loop21:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc16_)
                                          {
                                             if(_loc4_ <= 0)
                                             {
                                                break;
                                             }
                                             if(_loc16_)
                                             {
                                                break loop21;
                                             }
                                          }
                                          §§pop();
                                          if(_loc17_)
                                          {
                                             §§push(_loc4_ < 2);
                                             if(_loc17_)
                                             {
                                                break loop21;
                                             }
                                             break;
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          §§push("");
                                          break loop20;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break loop22;
                                 }
                                 §§push("~color-");
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() + _loc4_);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop());
                                       if(_loc16_)
                                       {
                                       }
                                    }
                                 }
                                 break;
                              }
                              §§pop().§3v§(new §§pop().§>f§(§§pop(),§§pop(),§§pop(),§§pop()));
                           }
                        }
                        if(§§pop() != null)
                        {
                           _loc10_ = new StringMap();
                           loop23:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc16_)
                                 {
                                    §§push("tileWidth" in StringMap.§+!#§);
                                    if(!_loc17_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       _loc10_.h["tileWidth"] = "10";
                                       break loop23;
                                    }
                                    if(_loc16_)
                                    {
                                       break loop23;
                                    }
                                 }
                                 _loc10_.setReserved("tileWidth","10");
                                 if(!_loc16_)
                                 {
                                    break loop23;
                                 }
                                 addr02cb:
                                 _loc11_ = §"=§.§9!&§(null,_loc10_,true);
                                 if(!_loc16_)
                                 {
                                    loop25:
                                    while(true)
                                    {
                                       loop26:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc5_[_loc8_]);
                                             §§push(§§findproperty(§>f§));
                                             §§push(_loc1_);
                                             §§push("terrain-pos-");
                                             §§push(_loc11_);
                                             if(!_loc16_)
                                             {
                                                §§push(false);
                                                if(_loc16_)
                                                {
                                                   break;
                                                }
                                                if(_loc4_ <= 0)
                                                {
                                                   break loop26;
                                                }
                                                if(_loc16_)
                                                {
                                                   break loop26;
                                                }
                                                §§pop();
                                                if(!_loc17_)
                                                {
                                                   break loop25;
                                                }
                                             }
                                             §§push(_loc4_ < 2);
                                             if(_loc17_)
                                             {
                                                break;
                                             }
                                             break loop26;
                                          }
                                          §§push(Boolean(§§pop()));
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       §§goto(addr0360);
                                       §§push("~");
                                    }
                                    while(true)
                                    {
                                       §§push("~color-");
                                       if(_loc17_)
                                       {
                                          §§push(§§pop() + _loc4_ + "~");
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       addr0360:
                                       §§push(§§pop() + _loc9_);
                                       break;
                                    }
                                    §§pop().§3v§(new §§pop().§>f§(§§pop(),§§pop(),§§pop(),§§pop()));
                                 }
                              }
                              if(§§pop())
                              {
                                 _loc10_.setReserved(_loc9_,null);
                              }
                              else
                              {
                                 _loc10_.h[_loc9_] = null;
                              }
                              §§goto(addr02cb);
                           }
                           §§push(_loc9_ in StringMap.§+!#§);
                           break loop24;
                        }
                        §§goto(addr0188);
                     }
                     §§goto(addr036d);
                  }
               }
               break;
            }
            if(_loc17_)
            {
               addr0384:
               _loc2_ = 0;
               addr0383:
            }
            _loc12_ = §`W§;
            loop29:
            while(true)
            {
               loop30:
               while(true)
               {
                  if(!_loc16_)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc17_)
                        {
                           break loop30;
                        }
                        if(§§pop() >= int(_loc12_.length))
                        {
                           if(_loc16_)
                           {
                              break loop29;
                           }
                        }
                        else
                        {
                           _loc5_ = _loc12_[_loc2_];
                           if(!_loc16_)
                           {
                              _loc2_++;
                              if(!_loc16_)
                              {
                                 §§push(0);
                                 if(_loc17_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc16_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc16_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                       }
                                       addr04ba:
                                    }
                                 }
                                 loop4:
                                 while(§§pop() < int(_loc5_.length))
                                 {
                                    _loc13_ = _loc5_[_loc3_];
                                    while(true)
                                    {
                                       if(_loc17_)
                                       {
                                          _loc3_++;
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                       }
                                       if(_loc13_ != null)
                                       {
                                          if(!_loc16_)
                                          {
                                             break;
                                          }
                                          addr0403:
                                          _loc14_ = new §5O§(_loc1_.§"2§);
                                          if(_loc17_)
                                          {
                                             loop5:
                                             while(Boolean(_loc14_.hasNext()))
                                             {
                                                _loc15_ = _loc14_.next();
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                §§push(false);
                                                if(_loc17_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(_loc17_)
                                                      {
                                                         if(_loc15_.§3!6§ == _loc13_.§6!Y§.§3!6§)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               §§pop();
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc15_.§>O§ == _loc13_.§6!Y§.§>O§);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                            }
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop();
                                                         if(_loc16_)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§push(_loc15_.§1!2§ == _loc13_.§6!Y§.§1!2§);
                                                         if(!_loc16_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc17_)
                                                   {
                                                      _loc13_.visible = false;
                                                   }
                                                   break;
                                                }
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    _loc13_.visible = true;
                                    §§goto(addr0403);
                                 }
                              }
                              continue;
                           }
                           §§goto(addr04ba);
                        }
                     }
                  }
                  §§push(0);
                  if(!_loc16_)
                  {
                     break;
                  }
                  addr04e5:
                  _loc2_ = §§pop();
                  break loop29;
               }
               §§goto(addr04e5);
            }
            _loc5_ = §%L§;
            if(!_loc17_)
            {
               break;
            }
            loop7:
            while(true)
            {
               §§push(_loc2_);
               if(_loc16_)
               {
                  break;
               }
               §§push(int(_loc5_.length));
               if(!_loc16_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc16_)
                     {
                        §§push(0);
                        if(_loc17_)
                        {
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(!_loc16_)
                              {
                                 break loop7;
                              }
                              while(true)
                              {
                                 §§push(2);
                              }
                           }
                           addr0610:
                           if(!_loc16_)
                           {
                              layout.apply();
                              if(!_loc17_)
                              {
                                 break loop13;
                              }
                           }
                           addr0625:
                           §>H§();
                           break loop13;
                        }
                        break;
                     }
                     break loop13;
                  }
                  _loc13_ = _loc5_[_loc2_];
                  while(true)
                  {
                     if(_loc17_)
                     {
                        _loc2_++;
                        if(_loc16_)
                        {
                           break;
                        }
                     }
                     _loc13_.visible = true;
                     break;
                  }
                  _loc14_ = new §5O§(_loc1_.§"2§);
                  if(_loc17_)
                  {
                     while(true)
                     {
                        if(!Boolean(_loc14_.hasNext()))
                        {
                           continue loop7;
                        }
                        _loc15_ = _loc14_.next();
                        if(!_loc17_)
                        {
                           break;
                        }
                        if(_loc15_ == _loc13_.§6!Y§)
                        {
                           if(!_loc16_)
                           {
                              break;
                           }
                           continue loop7;
                        }
                     }
                     _loc13_.visible = false;
                  }
                  continue;
               }
               while(§§pop() < §§pop())
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc16_)
                     {
                        _loc2_++;
                        if(_loc16_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc3_ = §§pop();
                  while(true)
                  {
                     if(_loc17_)
                     {
                        §1Q§[_loc3_].§@F§();
                        if(!_loc17_)
                        {
                           break;
                        }
                     }
                     §§push(§1Q§[_loc3_]);
                     §§push(0);
                     §§push(_loc1_.§23§[_loc3_]);
                     if(_loc17_)
                     {
                        §§push(int(§§pop()));
                     }
                     §§pop().§[a§(§§pop(),§§pop());
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     break;
                  }
                  §§push(2);
               }
               §§goto(addr0610);
            }
            _loc2_ = §§pop();
            if(!_loc16_)
            {
               §§goto(addr0609);
            }
            §§goto(addr0625);
         }
      }
      
      public function §%!6§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(§'!A§.editor != null)
            {
               if(!_loc2_)
               {
                  §'!A§.editor.§?!_§.§,!_§.§%^§(§'6§,param1);
               }
            }
         }
      }
      
      public function §>H§() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null as Vector.<§#A§>;
         var _loc5_:* = 0;
         var _loc6_:* = null as §#A§;
         while(true)
         {
            if(!_loc8_)
            {
               if(§'!A§.editor.§#Z§ >= 0)
               {
                  §§push(§2u§.RIGHT);
                  break;
               }
            }
            §§push(§2u§.TOP);
            break;
         }
         var _loc1_:§2u§ = §§pop();
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<Vector.<§#A§>> = §`W§;
         if(!_loc8_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(_loc7_)
               {
                  _loc2_++;
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           §§push(int(§§pop()));
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                     }
                     while(§§pop() < int(_loc4_.length))
                     {
                        _loc6_ = _loc4_[_loc5_];
                        if(!_loc8_)
                        {
                           _loc5_++;
                           if(!_loc8_)
                           {
                              if(_loc6_ != null)
                              {
                                 if(_loc7_)
                                 {
                                    _loc6_.§?'§(_loc1_);
                                 }
                              }
                           }
                        }
                     }
                     addr00fd:
                  }
                  continue;
               }
               while(true)
               {
                  §§goto(addr00fd);
               }
            }
         }
      }
      
      public function §<<§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            while(true)
            {
               if(param1 != §>u§)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  §6V§();
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §>u§ = null;
               break;
            }
         }
      }
      
      override public function §8G§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super.§8G§(param1);
               if(!_loc3_)
               {
                  break;
               }
            }
            Lib.get_current().stage.removeEventListener(MouseEvent.CLICK,§<<§);
            break;
         }
      }
      
      public function §"c§(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as §#A§;
         var _loc3_:§>3§ = §'!A§.editor.§?!_§.§,!_§;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§#A§> = §`W§[param1];
         while(true)
         {
            if(!_loc7_)
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
                  if(_loc6_ != null)
                  {
                     if(_loc8_)
                     {
                        _loc6_.§"c§(_loc3_);
                     }
                  }
               }
               if(!_loc8_)
               {
                  break;
               }
            }
            §1Q§[param1].§@F§();
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr00e4);
         }
         §1Q§[param1].§[a§(0,param2);
         addr00e4:
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = null as § 7§;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as §#A§;
         var _loc7_:* = null as §>f§;
         var _loc8_:* = null as §>3§;
         var _loc9_:* = null as Vector.<Function>;
         var _loc10_:* = null;
         var _loc11_:* = null as §'!E§;
         var _loc12_:* = null as §3!I§;
         var _loc13_:* = null as §3!I§;
         var _loc14_:* = null as String;
         §>u§ = param1;
         if(!_loc16_)
         {
            if(§'!A§.editor != null)
            {
               loop5:
               while(true)
               {
                  §§push(0);
                  if(_loc15_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc15_)
                     {
                        break;
                     }
                  }
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(_loc2_);
                     break loop5;
                  }
               }
               loop0:
               while(true)
               {
                  if(§§pop() >= 2)
                  {
                     if(!_loc16_)
                     {
                        §'!>§.visible = false;
                     }
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc16_)
                           {
                              if(param1.target == this)
                              {
                                 break loop6;
                              }
                              if(!_loc15_)
                              {
                                 break loop6;
                              }
                              §§pop();
                              if(!_loc15_)
                              {
                                 break;
                              }
                              §§push(param1.target is §#A§);
                              if(!_loc15_)
                              {
                                 break loop6;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop6;
                        }
                        _loc6_ = param1.target;
                        _loc7_ = _loc6_.§6!Y§;
                        if(!_loc16_)
                        {
                           loop8:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(int(§'!A§.editor.§?!_§.§,!_§.§"2§.length));
                                    if(!_loc16_)
                                    {
                                       §§push(§>3§.§<!P§);
                                       if(_loc16_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc16_)
                                          {
                                             if(_loc7_ is §6!D§)
                                             {
                                                if(_loc15_)
                                                {
                                                   _loc8_ = §'!A§.editor.§?!_§.§,!_§;
                                                   loop11:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            if(_loc8_.§]>§ == _loc7_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc15_)
                                                            {
                                                               break loop11;
                                                            }
                                                            _loc8_.§]>§ = _loc7_;
                                                            if(_loc16_)
                                                            {
                                                               break loop11;
                                                            }
                                                         }
                                                         §§push(0);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         _loc2_ = §§pop();
                                                         if(!_loc16_)
                                                         {
                                                            break loop11;
                                                         }
                                                      }
                                                      §6V§();
                                                   }
                                                   _loc9_ = _loc8_.§<7§;
                                                   if(!_loc16_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ >= int(_loc9_.length))
                                                         {
                                                            break loop12;
                                                         }
                                                         §§push(_loc9_[_loc2_]);
                                                         if(_loc15_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         _loc10_ = §§pop();
                                                         if(!_loc16_)
                                                         {
                                                            _loc2_++;
                                                            if(_loc15_)
                                                            {
                                                               _loc10_(_loc7_);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break loop12;
                                                }
                                                break loop9;
                                             }
                                             _loc11_ = §'!E§.§@!A§();
                                             while(true)
                                             {
                                                §§push(§=B§);
                                                §§push(int(_loc11_.§6a§.length));
                                                if(_loc15_)
                                                {
                                                   §§push(1);
                                                   if(_loc16_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§push(-1);
                                                break;
                                             }
                                             _loc12_ = §§pop().§@W§(§§pop(),§§pop(),-1);
                                             loop14:
                                             while(true)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc12_.§#1§);
                                                            if(!_loc15_)
                                                            {
                                                               break loop16;
                                                            }
                                                            §§push(_loc12_.end);
                                                            if(!_loc15_)
                                                            {
                                                               break loop15;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               _loc13_ = _loc12_;
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(_loc13_);
                                                                  §§push(_loc13_.§#1§);
                                                                  if(!_loc16_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc12_.§['§);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc15_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           if(_loc16_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           var _temp_1:* = §§pop();
                                                                           §§push(_temp_1);
                                                                           §§push(_temp_1);
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§pop().§#1§ = §§pop();
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc15_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc11_.§6a§[_loc2_].hide();
                                                               }
                                                               continue;
                                                            }
                                                            if(!_loc15_)
                                                            {
                                                               break loop14;
                                                            }
                                                         }
                                                      }
                                                      §§push(§5!_§[§@! §]);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc15_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      _loc14_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            §'!E§.§@!A§().§>!W§(_loc14_);
                                                            if(!_loc16_)
                                                            {
                                                               break loop14;
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr0417);
                                                      }
                                                   }
                                                   §§goto(addr03f9);
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      addr0417:
                                                      §§push(§§findproperty(§@! §));
                                                      §§push(§@! §);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      §§pop().§@! § = §§pop();
                                                   }
                                                }
                                             }
                                             addr03f9:
                                             §§push(§@! §);
                                             §§push(int(§5!_§.length));
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             break loop15;
                                             return;
                                          }
                                          break loop8;
                                       }
                                       §§push(int(§'!A§.editor.§?!_§.§,!_§.§"2§.indexOf(_loc7_,0)));
                                    }
                                    §§push(0);
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc15_)
                                    {
                                       break;
                                    }
                                    break loop8;
                                 }
                                 _loc8_ = §'!A§.editor.§?!_§.§,!_§;
                                 if(!_loc16_)
                                 {
                                    if(int(_loc8_.§"2§.length) >= §>3§.§<!P§)
                                    {
                                       if(_loc15_)
                                       {
                                          Boot.lastError = new Error();
                                          if(!_loc16_)
                                          {
                                             throw "Too many swatches!";
                                          }
                                       }
                                       else
                                       {
                                          addr04b8:
                                          §'!A§.§-T§.§=!;§();
                                       }
                                    }
                                    else
                                    {
                                       _loc8_.§"2§.push(_loc7_);
                                       if(_loc15_)
                                       {
                                          §§goto(addr04b8);
                                       }
                                    }
                                 }
                                 _loc8_ = §'!A§.editor.§?!_§.§,!_§;
                                 loop19:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc16_)
                                       {
                                          if(_loc8_.§]>§ == _loc7_)
                                          {
                                             break;
                                          }
                                          if(_loc16_)
                                          {
                                             break loop19;
                                          }
                                       }
                                       _loc8_.§]>§ = _loc7_;
                                       if(_loc15_)
                                       {
                                          break loop19;
                                       }
                                       §§goto(addr057b);
                                    }
                                    _loc6_.visible = false;
                                    if(!_loc16_)
                                    {
                                       §6V§();
                                    }
                                    §§goto(addr057b);
                                 }
                                 §§push(0);
                                 if(_loc15_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc16_)
                                 {
                                    _loc9_ = _loc8_.§<7§;
                                    if(_loc15_)
                                    {
                                       while(true)
                                       {
                                          if(_loc2_ >= int(_loc9_.length))
                                          {
                                             break loop20;
                                          }
                                          §§push(_loc9_[_loc2_]);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc10_ = §§pop();
                                          if(!_loc16_)
                                          {
                                             _loc2_++;
                                             if(_loc16_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc10_(_loc7_);
                                       }
                                    }
                                    break loop20;
                                 }
                                 §§goto(addr057b);
                              }
                              _loc6_.visible = false;
                              break;
                           }
                        }
                        break loop8;
                     }
                     if(§§pop())
                     {
                        break loop7;
                     }
                     addr057b:
                     return;
                  }
                  §§push(_loc2_);
                  if(!_loc16_)
                  {
                     _loc2_++;
                     if(_loc15_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc16_)
                  {
                     break;
                  }
                  if(param1.target == §1Q§[_loc3_])
                  {
                     loop21:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc16_)
                           {
                              §§push(false);
                              if(!_loc16_)
                              {
                                 if(§'6§ != _loc3_)
                                 {
                                    break;
                                 }
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(!_loc15_)
                              {
                                 break loop21;
                              }
                           }
                           §§push(Boolean(§'!>§.visible));
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc16_)
                           {
                              break loop0;
                           }
                           break;
                        }
                        §'6§ = _loc3_;
                        break;
                     }
                     _loc4_ = new §?y§(§'!>§);
                     _loc5_ = new §?y§(§1Q§[_loc3_]);
                     while(true)
                     {
                        if(_loc15_)
                        {
                           §&d§.§1$§().add(_loc4_,§^`§.§ !P§(§2u§.TOP),_loc5_);
                           if(_loc15_)
                           {
                              §§push(§'!>§);
                              §§push(§'!A§.editor.§?!_§.§,!_§.§23§[_loc3_]);
                              if(!_loc16_)
                              {
                                 §§push(int(§§pop()));
                              }
                              §§pop().§5!N§(§§pop());
                              if(!_loc15_)
                              {
                                 break;
                              }
                           }
                        }
                        §'!>§.visible = true;
                        break;
                     }
                     return;
                  }
                  §§push(_loc2_);
               }
               §'!>§.visible = false;
               if(!_loc16_)
               {
                  return;
               }
               break loop21;
            }
         }
      }
      
      override public function §3%§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.§3%§(param1);
            if(!_loc2_)
            {
               stage.addEventListener(MouseEvent.CLICK,§<<§);
            }
         }
      }
      
      public function §6V§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            visible = false;
            if(_loc1_)
            {
               if(§'!A§.editor != null)
               {
                  if(!_loc2_)
                  {
                     §'!A§.editor.§+!_§ = true;
                  }
               }
            }
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc2_:* = null as § 7§;
         var _loc5_:* = 0;
         var _loc6_:* = null as §,C§;
         var _loc8_:* = 0;
         var _loc9_:* = null as Vector.<Vector.<§#A§>>;
         var _loc10_:* = null as Vector.<§#A§>;
         var _loc12_:* = null as String;
         var _loc14_:* = null as §#A§;
         var _loc15_:* = null as §#A§;
         var _loc16_:* = null as § 7§;
         var _loc17_:* = 0;
         var _loc18_:* = null as §&d§;
         if(_loc19_)
         {
            layout.add(new §?y§(this),new §30§(true,0.8),new §4o§(§!n§.§&#§));
         }
         var _loc1_:Sprite = new Sprite();
         _loc2_ = new §?y§(_loc1_);
         if(_loc19_)
         {
            §&d§.§1$§().add(_loc2_,new §;!!§(10,§2u§.LEFT));
         }
         _loc2_ = new §?y§(_loc1_);
         if(!_loc20_)
         {
            §&d§.§1$§().add(_loc2_,new §;!!§(10,§2u§.TOP));
            if(_loc19_)
            {
               addChild(_loc1_);
            }
         }
         var _loc3_:Vector.<§,C§> = new Vector.<§,C§>(0,false);
         if(_loc19_)
         {
            §1Q§ = _loc3_;
         }
         §§push(0);
         if(!_loc20_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop16:
         while(true)
         {
            while(true)
            {
               if(!_loc20_)
               {
                  while(_loc4_ < 2)
                  {
                     §§push(_loc4_);
                     if(!_loc20_)
                     {
                        _loc4_++;
                        if(!_loc20_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc5_ = §§pop();
                     _loc6_ = new §,C§("editor/SelectedColor.png",null);
                     if(!_loc20_)
                     {
                        _loc6_.buttonMode = true;
                        if(!_loc20_)
                        {
                           _loc1_.addChild(_loc6_);
                           if(!_loc20_)
                           {
                              §1Q§.push(_loc6_);
                           }
                        }
                     }
                  }
                  if(!_loc19_)
                  {
                     break;
                  }
                  §#!_§ = new §&l§(100,100);
                  if(_loc19_)
                  {
                     §#!_§.§9d§ = 0;
                     if(_loc20_)
                     {
                        break loop16;
                     }
                  }
               }
               §#!_§.§5K§ = 0;
               if(!_loc20_)
               {
                  break;
               }
               break loop16;
            }
            §"!9§.§0>§(new §?y§(§#!_§),new §?y§(_loc1_),10);
            break;
         }
         _loc2_ = new §?y§(§#!_§);
         if(!_loc20_)
         {
            §&d§.§1$§().add(_loc2_,new §`!W§(false,280));
         }
         _loc2_ = new §?y§(§#!_§);
         if(_loc19_)
         {
            §&d§.§1$§().add(_loc2_,new §;!!§(10,§2u§.TOP));
            if(!_loc20_)
            {
               addChild(§#!_§);
            }
         }
         var _loc7_:Vector.<Vector.<§#A§>> = new Vector.<Vector.<§#A§>>(0,false);
         loop18:
         while(true)
         {
            while(true)
            {
               if(!_loc20_)
               {
                  §`W§ = _loc7_;
                  if(_loc20_)
                  {
                     break;
                  }
                  _loc4_ = 0;
                  if(!_loc19_)
                  {
                     break loop18;
                  }
               }
               _loc5_ = 3;
               if(_loc19_)
               {
                  break;
               }
               break loop18;
            }
            while(true)
            {
               §§push(_loc4_);
               if(_loc20_)
               {
                  break;
               }
               if(§§pop() >= _loc5_)
               {
                  if(_loc19_)
                  {
                     §§push(0);
                     if(!_loc20_)
                     {
                        §§push(int(§§pop()));
                     }
                     break;
                  }
                  break loop18;
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc20_)
                  {
                     _loc4_++;
                     if(!_loc19_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc8_ = §§pop();
               _loc9_ = §`W§;
               _loc10_ = new Vector.<§#A§>(0,false);
               if(!_loc20_)
               {
                  _loc9_.push(_loc10_);
               }
            }
            _loc4_ = §§pop();
            break;
         }
         var _loc11_:Vector.<String> = §"=§.§,n§;
         if(!_loc20_)
         {
            loop1:
            while(_loc4_ < int(_loc11_.length))
            {
               loop20:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc11_[_loc4_]);
                     if(_loc19_)
                     {
                        §§push(§§pop());
                        if(!_loc20_)
                        {
                           §§push(§§pop());
                           if(!_loc20_)
                           {
                              _loc12_ = §§pop();
                              if(!_loc20_)
                              {
                                 _loc4_++;
                                 §§push(int(§"=§.§ !G§.indexOf(_loc12_)));
                                 §§push(0);
                                 if(_loc20_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(true);
                                    if(_loc19_)
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             if(_loc19_)
                                             {
                                                §§push(§"=§.§^a§(_loc12_));
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                if(§§pop() != null)
                                                {
                                                   break loop23;
                                                }
                                                if(!_loc20_)
                                                {
                                                   §§pop();
                                                   if(!_loc19_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§"=§.§"!-§(_loc12_));
                                                   if(_loc20_)
                                                   {
                                                      break loop23;
                                                   }
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!_loc20_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             break loop23;
                                          }
                                          §§pop();
                                       }
                                       if(!§§pop())
                                       {
                                          if(_loc19_)
                                          {
                                             break loop24;
                                          }
                                       }
                                    }
                                    break loop20;
                                 }
                                 if(!_loc20_)
                                 {
                                    §§push(0);
                                    if(_loc19_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc19_)
                                       {
                                          _loc5_ = §§pop();
                                          addr036b:
                                          _loc9_ = §`W§;
                                          if(!_loc20_)
                                          {
                                             while(_loc5_ < int(_loc9_.length))
                                             {
                                                _loc10_ = _loc9_[_loc5_];
                                                if(!_loc20_)
                                                {
                                                   _loc5_++;
                                                   if(!_loc19_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                _loc10_.push(null);
                                             }
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr049b);
                                    }
                                    else
                                    {
                                       §§goto(addr0432);
                                    }
                                 }
                                 §§goto(addr036b);
                              }
                              §§push(_loc12_);
                           }
                        }
                     }
                     §§push(§§pop() == "bouncy");
                     if(!_loc20_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break loop20;
                  }
                  while(§§pop() < §§pop())
                  {
                     _loc8_ = _loc5_++;
                     §`W§[_loc8_].push(new §#A§());
                     if(_loc20_)
                     {
                        continue loop1;
                     }
                     §§goto(addr04d3);
                  }
                  §§goto(addr04db);
               }
               loop22:
               while(true)
               {
                  if(§§pop())
                  {
                     §§push(0);
                     if(!_loc20_)
                     {
                        §§push(int(§§pop()));
                        if(_loc19_)
                        {
                           addr0432:
                           _loc5_ = §§pop();
                           if(!_loc19_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              §§push(_loc5_);
                           }
                           addr046e:
                        }
                        while(true)
                        {
                           §§push(2);
                           if(!_loc19_)
                           {
                              break loop21;
                           }
                           if(§§pop() >= §§pop())
                           {
                              §`W§[2].push(new §#A§());
                              continue loop1;
                           }
                           addr04d5:
                           §§push(_loc5_);
                           if(_loc19_)
                           {
                              _loc5_++;
                              _loc8_ = int(§§pop());
                              if(!_loc20_)
                              {
                                 §`W§[_loc8_].push(null);
                                 if(!_loc19_)
                                 {
                                    break loop22;
                                 }
                                 §§goto(addr046e);
                              }
                              addr04db:
                              §`W§[2].push(null);
                              continue loop1;
                           }
                           while(true)
                           {
                              §§push(2);
                              break loop21;
                           }
                        }
                        break loop21;
                     }
                  }
                  else
                  {
                     §§push(0);
                  }
                  addr049b:
                  _loc5_ = §§pop();
                  break;
               }
               while(true)
               {
                  §§goto(addr04d5);
               }
               addr04d3:
            }
         }
         var _loc13_:§#A§ = null;
         loop25:
         while(true)
         {
            while(true)
            {
               if(_loc19_)
               {
                  §§push(0);
                  if(!_loc20_)
                  {
                     §§push(int(§§pop()));
                     if(_loc20_)
                     {
                        break;
                     }
                  }
                  _loc4_ = §§pop();
                  if(!_loc19_)
                  {
                     break loop25;
                  }
               }
               §§push(0);
               if(!_loc20_)
               {
                  §§push(int(§§pop()));
               }
               break;
            }
            _loc5_ = §§pop();
            break;
         }
         _loc9_ = §`W§;
         if(!_loc20_)
         {
            loop8:
            for(; _loc5_ < int(_loc9_.length); _loc13_ = _loc14_)
            {
               _loc10_ = _loc9_[_loc5_];
               if(_loc19_)
               {
                  _loc5_++;
               }
               _loc14_ = null;
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
                           if(_loc19_)
                           {
                              §§push(0);
                              if(!_loc20_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc20_)
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc19_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc19_)
                                          {
                                             break loop30;
                                          }
                                       }
                                       break;
                                    }
                                    break loop27;
                                 }
                                 while(true)
                                 {
                                    §§push(int(_loc10_.length));
                                    if(_loc20_)
                                    {
                                       break loop29;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop28;
                                    }
                                    _loc15_ = _loc10_[_loc8_];
                                    while(true)
                                    {
                                       if(_loc19_)
                                       {
                                          _loc8_++;
                                          if(_loc20_)
                                          {
                                             break;
                                          }
                                       }
                                       if(_loc15_ == null)
                                       {
                                          if(!_loc19_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          if(_loc14_ != null)
                                          {
                                             break;
                                          }
                                          _loc14_ = _loc15_;
                                          loop32:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc19_)
                                                {
                                                   if(_loc13_ == null)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc20_)
                                                   {
                                                      break loop32;
                                                   }
                                                }
                                                _loc2_ = new §?y§(_loc15_);
                                                _loc16_ = new §?y§(_loc13_);
                                                if(!_loc20_)
                                                {
                                                   §§push(§&d§.§1$§());
                                                   §§push(_loc2_);
                                                   §§push(§§findproperty(§+X§));
                                                   §§push(10);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc16_);
                                                }
                                                break;
                                             }
                                             §#!_§.addChild(_loc15_);
                                             break;
                                          }
                                       }
                                       break loop32;
                                    }
                                    _loc2_ = new §?y§(_loc15_);
                                    _loc16_ = new §?y§(_loc14_);
                                    if(_loc19_)
                                    {
                                       §§push(§&d§.§1$§());
                                       §§push(_loc2_);
                                       §§push(§§findproperty(§+X§));
                                       §§push(10);
                                       if(_loc19_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc16_);
                                    }
                                    continue loop32;
                                 }
                                 break loop29;
                              }
                              break;
                           }
                           break loop32;
                        }
                        §§goto(addr0691);
                     }
                     if(§§pop() < §§pop())
                     {
                        if(_loc19_)
                        {
                           break loop27;
                        }
                        continue loop8;
                     }
                     §§goto(addr06e1);
                  }
                  if(_loc19_)
                  {
                     addr0691:
                     §§push(_loc4_);
                     §§push(2);
                     break loop29;
                  }
                  continue loop8;
               }
               _loc2_ = new §?y§(§1Q§[_loc4_]);
               _loc16_ = new §?y§(_loc14_);
               if(!_loc20_)
               {
                  §&d§.§1$§().add(_loc2_,new §4$§(false,0.5),_loc16_);
               }
               addr06e1:
               _loc4_++;
            }
         }
         _loc10_ = new Vector.<§#A§>(0,false);
         §%L§ = _loc10_;
         loop34:
         while(true)
         {
            loop35:
            while(true)
            {
               while(true)
               {
                  if(!_loc20_)
                  {
                     §§push(0);
                     if(_loc19_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc19_)
                        {
                           break;
                        }
                     }
                     _loc5_ = §§pop();
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(1);
                        if(!_loc19_)
                        {
                           break loop35;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc5_);
                           if(_loc19_)
                           {
                              _loc5_++;
                              if(!_loc20_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc8_ = §§pop();
                           if(!_loc20_)
                           {
                              §%L§.push(new §#A§());
                           }
                           continue;
                        }
                        §%L§[0].§3v§(new §6!D§(§2!X§.§@!A§(),"editor/Drag.png"));
                        if(!_loc19_)
                        {
                           break loop34;
                        }
                     }
                  }
                  §§push(0);
                  break;
               }
               _loc5_ = §§pop();
               break loop34;
            }
            while(§§pop() < §§pop())
            {
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc20_)
                  {
                     _loc5_++;
                     if(_loc19_)
                     {
                        §§push(int(§§pop()));
                        if(_loc20_)
                        {
                           break;
                        }
                     }
                  }
                  _loc17_ = §§pop();
                  addr07dd:
                  if(_loc19_)
                  {
                     §§push(_loc17_);
                     break;
                  }
                  _loc2_ = new §?y§(§%L§[_loc17_]);
                  _loc16_ = new §?y§(_loc13_);
                  while(true)
                  {
                     if(_loc19_)
                     {
                        §§push(§&d§.§1$§());
                        §§push(_loc2_);
                        §§push(§§findproperty(§+X§));
                        §§push(10);
                        if(_loc19_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.BOTTOM),_loc16_);
                        if(!_loc19_)
                        {
                           break;
                        }
                     }
                     §#!_§.addChild(§%L§[_loc17_]);
                     break;
                  }
                  §§goto(addr08f1);
               }
               while(true)
               {
                  if(§§pop() == 0)
                  {
                     §§goto(addr07dd);
                  }
                  else
                  {
                     _loc2_ = new §?y§(§%L§[_loc17_]);
                     §§push(§§findproperty(§?y§));
                     §§push(§%L§);
                     §§push(_loc17_);
                     if(!_loc20_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc16_ = new §§pop().§?y§(§§pop()[§§pop()]);
                     _loc18_ = null;
                     loop42:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc19_)
                           {
                              if(_loc18_ != null)
                              {
                                 _loc18_ = _loc18_;
                                 break;
                              }
                           }
                           _loc18_ = §&d§.§1$§();
                           if(!_loc20_)
                           {
                              break;
                           }
                           break loop42;
                        }
                        §§push(_loc18_);
                        §§push(_loc2_);
                        §§push(§§findproperty(§+X§));
                        §§push(10);
                        if(_loc19_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.RIGHT),_loc16_);
                        if(_loc19_)
                        {
                           _loc18_.add(_loc2_,new §4$§(false,0.5),_loc16_);
                        }
                        break;
                     }
                  }
                  break loop42;
               }
               §§goto(addr08f1);
            }
            §§goto(addr08f9);
         }
         while(true)
         {
            §§push(int(§%L§.length));
            if(_loc19_)
            {
               _loc8_ = §§pop();
               if(!_loc19_)
               {
                  break;
               }
               while(true)
               {
                  §§push(_loc5_);
               }
            }
            while(true)
            {
               §§push(_loc8_);
               break loop35;
            }
            break;
         }
         addr08f9:
         §§push(§§findproperty(§'!>§));
         §§push(§§findproperty(§[!'§));
         §§push(§%!6§);
         if(_loc19_)
         {
            §§push(§§pop());
         }
         §§pop().§'!>§ = new §§pop().§[!'§(§§pop());
         _loc2_ = new §?y§(§'!>§);
         _loc16_ = new §?y§(_loc1_);
         if(!_loc20_)
         {
            §&d§.§1$§().add(_loc2_,new §+X§(0,§2u§.RIGHT),_loc16_);
            if(_loc19_)
            {
               §'!>§.visible = false;
               while(true)
               {
                  if(_loc19_)
                  {
                     addChild(§'!>§);
                     if(_loc20_)
                     {
                        break;
                     }
                  }
                  §4l§(new §?y§(§#!_§),10,§^F§.SOLID(1118481),6,3355443);
                  break;
               }
            }
         }
      }
   }
}

