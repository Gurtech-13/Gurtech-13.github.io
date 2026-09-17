package §>T§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §'!1§.§7!b§;
   import §+Y§.§#d§;
   import §+Y§.§4!U§;
   import §,!G§.§%M§;
   import §,!G§.§6!7§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§,C§;
   import §-!!§.§-;§;
   import §-!!§.§2!B§;
   import §-!!§.§8!8§;
   import §0!"§.§[T§;
   import geom3d.Transform;
   import §2!"§.Spritesheet;
   import §2!W§.§%U§;
   import game.§#a§;
   import game.§`f§;
   import §<?§.§#!7§;
   import §=w§.§,D§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import stage.§']§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.§'t§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§8J§;
   import com.player03.run3.character.Lizard;
   import com.player03.run3.character.Shadow;
   import com.player03.run3.character.§[!H§;
   import com.player03.run3.character.§]r§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.TunnelSection;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxe.ds.StringMap;
   import haxeutils.math.GrowthFunctions;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§'h§;
   import nme3D.model.Model;
   import nme3D.shader.§!-§;
   import nme3D.shader.§'H§;
   
   public class Bridge implements §,D§
   {
      
      public static var init__:Boolean;
      
      public static var §<N§:§%M§;
      
      public static var §@!E§:Number = 180;
      
      public var § g§:Boolean;
      
      public var §?v§:Number;
      
      public var §^!O§:Function;
      
      public var §+!M§:Number;
      
      public var §8D§:Number;
      
      public var §76§:Vector.<§8R§>;
      
      public var §9_§:TunnelSection;
      
      public var §5;§:Vector.<§#d§>;
      
      public var §[e§:Number;
      
      public var §>!§:Boolean;
      
      public function Bridge(param1:TunnelSection)
      {
         var a2:Number;
         var a1:Number;
         var _temp_1:* = true;
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = _temp_1;
         var _loc6_:* = null as StringMap;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         var _loc20_:* = null as §#d§;
         § g§ = false;
         if(_loc24_)
         {
            §>!§ = false;
            while(true)
            {
               if(!_loc23_)
               {
                  §8D§ = 0;
                  §[e§ = 0;
                  if(_loc23_)
                  {
                     break;
                  }
               }
               §§push(§§findproperty(§+!M§));
               §§push(90);
               if(!_loc23_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§+!M§ = §§pop();
               §9_§ = param1;
               break;
            }
         }
         while(true)
         {
            §§push(90);
            if(_loc24_)
            {
               §§push(0.25);
               if(_loc24_)
               {
                  §§push(param1.tileWidth);
                  if(_loc24_)
                  {
                     §§push(§§pop() - 90);
                  }
                  §§push(§§pop() * §§pop());
               }
               §§push(§§pop() + §§pop());
               if(_loc24_)
               {
                  §§push(Number(§§pop()));
                  if(_loc23_)
                  {
                     break;
                  }
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc23_)
            {
               a1 = _loc2_;
               if(!_loc24_)
               {
                  break;
               }
               §§push(§§newactivation());
               §§push(413);
               if(_loc24_)
               {
                  §§push(§§pop() - _loc2_);
               }
               §§pop().§§slot[2] = §§pop();
               if(!_loc24_)
               {
                  break;
               }
            }
            §^!O§ = function(param1:int):Number
            {
               var _temp_1:* = false;
               var _loc2_:Boolean = true;
               var _loc3_:Boolean = _temp_1;
               §§push(GrowthFunctions.boundedFunc(a1,a2,20000,param1));
               if(!_loc3_)
               {
                  return Number(§§pop());
               }
            };
            break;
         }
         var _loc3_:StringMap = param1.params;
         while(true)
         {
            §§push(§-;§);
            §§push(Std);
            if(!_loc23_)
            {
               §§push("color0");
               if(!_loc24_)
               {
                  break;
               }
               if(!(§§pop() in StringMap.§+!#§))
               {
                  §§push(_loc3_.h["color0"]);
                  break;
               }
            }
            §§push(_loc3_.getReserved("color0"));
            break;
         }
         §§push(§§pop().§+c§(§§pop().parseInt(§§pop()),15658734,0.612));
         if(!_loc23_)
         {
            §§push(uint(§§pop()));
         }
         var _loc4_:int = §§pop();
         var _loc5_:StringMap = param1.params;
         loop17:
         while(true)
         {
            if(_loc24_)
            {
               loop18:
               while(true)
               {
                  §§push("color1");
                  if(_loc24_)
                  {
                     while(true)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(_loc24_)
                        {
                           if(!§§pop())
                           {
                              addr0192:
                              §§push("color1" in _loc5_.h);
                              break loop18;
                           }
                           if(_loc23_)
                           {
                              break;
                           }
                           §§push(_loc5_.existsReserved("color1"));
                           if(!_loc24_)
                           {
                              break loop18;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc24_)
                        {
                        }
                        break loop18;
                     }
                     addr019b:
                     _loc6_ = param1.params;
                     if(_loc24_)
                     {
                        while(true)
                        {
                           §§push(§-;§);
                           §§push(_loc4_);
                           §§push(Std);
                           if(!_loc23_)
                           {
                              §§push("color1");
                              if(_loc23_)
                              {
                                 break;
                              }
                              if(!(§§pop() in StringMap.§+!#§))
                              {
                                 §§push(_loc6_.h["color1"]);
                                 break;
                              }
                           }
                           §§push(_loc6_.getReserved("color1"));
                           break;
                        }
                        §§push(§§pop().§+c§(§§pop(),§§pop().parseInt(§§pop()),0.2));
                        if(_loc24_)
                        {
                           §§push(uint(§§pop()));
                        }
                        _loc4_ = §§pop();
                     }
                     break loop17;
                  }
                  §§goto(addr0192);
               }
               if(!§§pop())
               {
                  break;
               }
            }
            §§goto(addr019b);
         }
         while(true)
         {
            §§push(§§findproperty(§0!E§));
            §§push(param1.tileWidth / 2);
            §§push(param1.tileWidth / 2);
            §§push(0);
            §§push(_loc4_);
            §§push(_loc4_);
            §§push(false);
            §§push(1);
            §§push(1);
            if(!_loc23_)
            {
               if(!param1.tunnel.backwards)
               {
                  §§push(0);
                  break;
               }
            }
            §§push(3.141592653589793);
            if(_loc23_)
            {
            }
            break;
         }
         var _loc7_:§0!E§ = new §§pop().§0!E§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),0,0,§!-§.§^L§(),§-n§.§?!W§,new §4!U§(this,50),int(§"=§.§,n§.indexOf("bridge")),param1.tunnel.backwards,null);
         var _loc8_:Vector.<§#d§> = new Vector.<§#d§>(0,false);
         if(_loc24_)
         {
            §5;§ = _loc8_;
         }
         var _loc9_:Vector.<§8R§> = new Vector.<§8R§>(0,false);
         if(!_loc23_)
         {
            §76§ = _loc9_;
         }
         §§push(param1.tunnel);
         §§push(param1.startZ);
         if(_loc24_)
         {
            §§push(§§pop() - 1);
         }
         while(true)
         {
            §§push(§§pop().§<J§(§§pop()) == null);
            if(!_loc23_)
            {
               §§push(!§§pop());
               if(!_loc24_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         var _loc10_:* = §§pop();
         §§push(param1.tunnel);
         §§push(param1.endZ);
         if(_loc24_)
         {
            §§push(§§pop() + 1);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         while(true)
         {
            §§push(§§pop().§<J§(§§pop()) == null);
            if(_loc24_)
            {
               §§push(!§§pop());
               if(_loc23_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         var _loc11_:* = §§pop();
         §§push(int(Math.round((param1.endZ - param1.startZ) / param1.tileWidth)));
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         loop24:
         while(true)
         {
            loop25:
            while(true)
            {
               loop27:
               while(true)
               {
                  loop30:
                  while(true)
                  {
                     loop31:
                     while(true)
                     {
                        loop32:
                        while(true)
                        {
                           loop33:
                           while(true)
                           {
                              loop36:
                              while(true)
                              {
                                 loop37:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc11_);
                                       if(_loc24_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc24_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc24_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc12_);
                                                if(_loc23_)
                                                {
                                                   break loop37;
                                                }
                                                §§push(int(Math.ceil(200 / param1.tileWidth)));
                                                if(!_loc24_)
                                                {
                                                   break loop36;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc24_)
                                                {
                                                   break loop27;
                                                }
                                                _loc12_ = int(§§pop());
                                                if(!_loc24_)
                                                {
                                                   break loop28;
                                                }
                                             }
                                             §§push(0);
                                             if(!_loc24_)
                                             {
                                                break loop33;
                                             }
                                             _loc13_ = §§pop();
                                             §§push(_loc12_);
                                             if(!_loc24_)
                                             {
                                                break loop32;
                                             }
                                             §§push(int(§§pop()));
                                             if(!_loc24_)
                                             {
                                                break loop31;
                                             }
                                             _loc14_ = §§pop();
                                             if(!_loc24_)
                                             {
                                                break loop30;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc13_);
                                                if(!_loc24_)
                                                {
                                                   break loop27;
                                                }
                                                §§push(_loc14_);
                                                if(!_loc24_)
                                                {
                                                   break loop25;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   loop39:
                                                   while(true)
                                                   {
                                                      §§push(_loc13_++);
                                                      if(_loc24_)
                                                      {
                                                         _loc15_ = §§pop();
                                                         if(!_loc23_)
                                                         {
                                                            §§push(0);
                                                            if(_loc24_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc24_)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  §§push(param1.§5k§);
                                                               }
                                                               _loc17_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc16_ >= _loc17_)
                                                                  {
                                                                     break loop39;
                                                                  }
                                                                  §§push(_loc16_++);
                                                                  if(!_loc23_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  §§pop().push(new §§pop().§#d§(§§pop(),§§pop(),§§pop(),§§pop()));
                                                               }
                                                               break;
                                                               addr04af:
                                                            }
                                                            while(true)
                                                            {
                                                               _loc18_ = §§pop();
                                                               loop40:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§5;§);
                                                                     §§push(§§findproperty(§#d§));
                                                                     §§push(this);
                                                                     §§push(_loc15_);
                                                                     if(_loc24_)
                                                                     {
                                                                        §§push(param1.§5k§);
                                                                        if(_loc23_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc24_)
                                                                        {
                                                                           break loop40;
                                                                        }
                                                                     }
                                                                     §§push(_loc18_);
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§push(_loc18_);
                                                                           break;
                                                                        }
                                                                        break loop40;
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(§§pop() > 0)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr045e);
                                                                  §§push(null);
                                                               }
                                                               §§push(§5;§);
                                                               §§push(int(§5;§.length));
                                                               if(!_loc23_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop()[§§pop()]);
                                                                  if(!_loc23_)
                                                                  {
                                                                     addr045e:
                                                                     if(_loc15_ <= 0)
                                                                     {
                                                                        §§push(null);
                                                                        break;
                                                                     }
                                                                  }
                                                                  loop43:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§5;§);
                                                                        §§push(_loc15_);
                                                                        if(_loc24_)
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc23_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc23_)
                                                                           {
                                                                              break loop43;
                                                                           }
                                                                        }
                                                                        §§push(param1.§5k§);
                                                                        if(!_loc23_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr049a);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc24_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr049b);
                                                                  }
                                                                  addr049a:
                                                                  addr049b:
                                                                  §§push(§§pop()[§§pop() + _loc18_]);
                                                                  break;
                                                               }
                                                               §§pop().push(new §§pop().§#d§(§§pop(),§§pop(),§§pop(),§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr04af);
                                                      }
                                                      continue loop40;
                                                   }
                                                   §§push(§5;§);
                                                   §§push(_loc15_);
                                                   if(_loc24_)
                                                   {
                                                      §§push(§§pop() * param1.§5k§);
                                                   }
                                                   §§push(§§pop()[§§pop()]);
                                                   §§push(2);
                                                   §§push(§5;§);
                                                   §§push(int(§5;§.length));
                                                   if(!_loc23_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   §§pop().§>!J§(§§pop(),§§pop()[§§pop()]);
                                                   continue;
                                                }
                                                §§push(_loc10_);
                                                if(_loc23_)
                                                {
                                                   break loop24;
                                                }
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          break loop30;
                                       }
                                       break loop28;
                                    }
                                    §§goto(addr0519);
                                 }
                                 §§goto(addr0589);
                              }
                              §§goto(addr05d4);
                           }
                           §§goto(addr0561);
                        }
                        §§push(int(§§pop()));
                        if(_loc23_)
                        {
                           break loop27;
                        }
                        _loc14_ = §§pop();
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc24_)
                              {
                                 §§goto(addr055f);
                              }
                              §§goto(addr05d0);
                           }
                           §§goto(addr05d8);
                        }
                        §§goto(addr05da);
                     }
                     _loc13_ = §§pop();
                     addr0519:
                     §§push(param1.§5k§);
                     break loop32;
                  }
                  §§push(0);
                  break loop31;
               }
               §§goto(addr05d2);
            }
            addr056a:
            if(§§pop() < §§pop())
            {
               §§push(_loc13_);
               if(!_loc23_)
               {
                  _loc13_++;
                  while(true)
                  {
                     loop29:
                     while(true)
                     {
                        if(_loc24_)
                        {
                           addr0543:
                           §§push(int(§§pop()));
                        }
                        _loc15_ = §§pop();
                        if(!_loc23_)
                        {
                           §5;§[_loc15_].§^>§ = 0;
                        }
                        while(true)
                        {
                           §§push(_loc13_);
                           addr0561:
                           while(true)
                           {
                              §§push(_loc14_);
                              if(_loc23_)
                              {
                                 break loop29;
                              }
                              §§goto(addr056a);
                           }
                           break loop29;
                        }
                        break;
                        addr055f:
                     }
                     §§goto(addr0588);
                  }
                  §§push(_loc11_);
                  break;
               }
               §§goto(addr0543);
            }
            break loop28;
         }
         if(§§pop())
         {
            §§push(int(§5;§.length));
            §§push(param1.§5k§);
            if(!_loc23_)
            {
               addr0589:
               _loc13_ = int(§§pop() - §§pop());
               addr0588:
               §§push(int(§5;§.length));
               if(!_loc23_)
               {
                  _loc14_ = §§pop();
                  while(true)
                  {
                     §§push(_loc13_);
                     addr05d2:
                     loop5:
                     while(true)
                     {
                        §§push(_loc14_);
                        addr05d4:
                        addr05d8:
                        while(§§pop() < §§pop())
                        {
                           §§push(_loc13_);
                           if(_loc24_)
                           {
                              _loc13_++;
                              if(_loc24_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc15_ = §§pop();
                           if(!_loc23_)
                           {
                              §5;§[_loc15_].§^>§ = 0;
                           }
                           break loop5;
                        }
                        break;
                     }
                  }
                  addr05d0:
               }
               addr05da:
               _loc13_ = int(§§pop());
               var _loc19_:Vector.<§#d§> = §5;§;
               if(_loc24_)
               {
                  while(_loc13_ < int(_loc19_.length))
                  {
                     _loc20_ = _loc19_[_loc13_];
                     if(!_loc23_)
                     {
                        _loc13_++;
                        if(_loc23_)
                        {
                           continue;
                        }
                     }
                     _loc20_.init(_loc7_);
                  }
               }
               _loc19_ = new Vector.<§#d§>(0,false);
               var _loc21_:Vector.<§#d§> = _loc19_;
               if(_loc24_)
               {
                  §§push(0);
                  if(!_loc23_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc13_ = §§pop();
               }
               var _loc22_:Vector.<§#d§> = §5;§;
               loop26:
               while(true)
               {
                  if(_loc24_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc13_);
                        if(!_loc24_)
                        {
                           break;
                        }
                        §§push(int(_loc22_.length));
                        if(!_loc23_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc24_)
                              {
                                 while(true)
                                 {
                                    §§push(int(_loc21_.length));
                                    break loop1;
                                 }
                                 addr06e9:
                                 if(!_loc24_)
                                 {
                                    break loop26;
                                 }
                                 param1.tunnel.§"[§.§3!#§.§5V§.sort(function(param1:§'h§, param2:§'h§):int
                                 {
                                    var _temp_1:* = true;
                                    var _loc3_:Boolean = false;
                                    var _loc4_:Boolean = _temp_1;
                                    §§push(int(param1.§@8§.length));
                                    if(_loc4_)
                                    {
                                       loop0:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!_loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(1);
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop0;
                                                   }
                                                   break;
                                                }
                                                §§push(int(param2.§@8§.length));
                                                if(!_loc4_)
                                                {
                                                   break loop0;
                                                }
                                                §§push(0);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             §§push(Model.§7R§(param1.§@8§[0],param2.§@8§[0]));
                                             if(!_loc3_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             break loop0;
                                          }
                                          §§push(-1);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                       }
                                       return §§pop();
                                    }
                                    return §§pop();
                                 });
                                 if(!_loc24_)
                                 {
                                    break loop26;
                                 }
                                 addr06d1:
                              }
                              addr070a:
                              param1.tunnel.registerAnimation(this);
                              if(_loc24_)
                              {
                                 reset();
                              }
                              break loop26;
                           }
                           _loc20_ = _loc22_[_loc13_];
                           if(!_loc23_)
                           {
                              _loc13_++;
                              if(!_loc23_)
                              {
                                 if(!Boolean(Math.isFinite(_loc20_.§^>§)))
                                 {
                                    continue;
                                 }
                                 if(_loc23_)
                                 {
                                    continue;
                                 }
                              }
                              _loc21_.push(_loc20_);
                           }
                           continue;
                        }
                        while(§§pop() > §§pop())
                        {
                           _loc21_.shift().§40§(_loc21_);
                           §§goto(addr06d1);
                        }
                        §§goto(addr06e9);
                     }
                     while(true)
                     {
                        §§goto(addr06e5);
                     }
                  }
                  §§goto(addr070a);
               }
               return;
            }
            §§goto(addr05d4);
         }
         §§goto(addr05d8);
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc3_:* = null as §3!I§;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = null as Vector.<§8R§>;
         var _loc9_:* = null as Bridge;
         var _loc10_:* = null as Vector.<§#d§>;
         var _loc11_:* = null as §#d§;
         if(_loc13_)
         {
            if(int(§76§.length) > 0)
            {
               while(true)
               {
                  §§push(§=B§);
                  §§push(int(§76§.length));
                  if(!_loc12_)
                  {
                     §§push(1);
                     if(_loc12_)
                     {
                        break;
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§push(-1);
                  break;
               }
               var _loc2_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
               loop3:
               while(true)
               {
                  if(!_loc12_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc2_.§#1§);
                        if(_loc12_)
                        {
                           break;
                        }
                        §§push(_loc2_.end);
                        if(!_loc12_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc13_)
                              {
                                 §§push(int(§76§.length));
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 §§goto(addr017e);
                              }
                              break loop3;
                           }
                           _loc3_ = _loc2_;
                           loop16:
                           while(true)
                           {
                              if(_loc13_)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.§#1§);
                                 if(!_loc12_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.§['§);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc12_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                          }
                                          var _temp_2:* = §§pop();
                                          §§push(_temp_2);
                                          §§push(_temp_2);
                                       }
                                       _loc5_ = §§pop();
                                       break;
                                    }
                                 }
                                 §§pop().§#1§ = §§pop();
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(_loc5_);
                              if(!_loc12_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc4_ = §§pop();
                              if(!_loc13_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§76§[_loc4_].strength);
                                 if(!_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    break loop16;
                                 }
                                 addr0117:
                                 _loc7_ = §76§.splice(_loc4_,1);
                                 continue loop0;
                              }
                              if(§§pop() == _loc6_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr0117);
                           }
                           §§goto(addr0111);
                        }
                        if(§§pop() <= §§pop())
                        {
                           if(_loc12_)
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           addr017e:
                           addr0180:
                           §§push(§§pop() > 1);
                           if(_loc13_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           loop4:
                           while(true)
                           {
                              if(_loc13_)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc12_)
                                       {
                                          §§push(§76§[0].z);
                                          §§push(§9_§.startZ);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() - 413);
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             break;
                                          }
                                          if(_loc12_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       §§pop();
                                       if(_loc13_)
                                       {
                                          while(true)
                                          {
                                             §§push(§76§[0].z);
                                             §§push(§9_§.endZ);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + 413);
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§push(§§pop() <= §§pop());
                                          if(!_loc13_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr022a);
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          break loop4;
                                       }
                                       §§push(§>!§);
                                       continue loop7;
                                    }
                                    §-o§();
                                    if(_loc12_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc12_)
                                          {
                                             break loop4;
                                          }
                                          _loc9_ = this;
                                          if(!_loc13_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc9_);
                                             §§push(_loc9_.§?v§);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + param1);
                                                if(_loc12_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          §§pop().§4!S§(§§pop());
                                          if(!_loc13_)
                                          {
                                             break loop7;
                                          }
                                       }
                                       else
                                       {
                                          _loc9_ = this;
                                          if(!_loc12_)
                                          {
                                             §§push(_loc9_);
                                             §§push(_loc9_.§?v§);
                                             if(!_loc12_)
                                             {
                                                §§push(param1);
                                                if(_loc13_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§?v§);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(0.5);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      break;
                                                   }
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§4!S§(§§pop());
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§9_§.tunnel.unpausedTime);
                                          if(!_loc12_)
                                          {
                                             §§push(§[e§);
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§push(1);
                                          break;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          break;
                                       }
                                       if(_loc13_)
                                       {
                                          break loop7;
                                       }
                                       §§goto(addr0341);
                                    }
                                    §>!§ = false;
                                    if(!_loc12_)
                                    {
                                       §§push(0);
                                       if(_loc13_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    §§goto(addr0341);
                                 }
                                 §§push(§§findproperty(§8D§));
                                 §§push(§8D§);
                                 if(!_loc12_)
                                 {
                                    §§push(param1);
                                    if(_loc13_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§8D§);
                                          if(_loc13_)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc12_)
                                                   {
                                                      §§push(0.5);
                                                      if(_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         break loop10;
                                                      }
                                                   }
                                                   if(§>!§)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         break loop10;
                                                      }
                                                      break loop9;
                                                   }
                                                   §§push(1);
                                                   break;
                                                }
                                             }
                                             §§push(0.8);
                                             if(_loc12_)
                                             {
                                             }
                                             break loop11;
                                          }
                                          §§push(§§pop() * §§pop());
                                          break;
                                       }
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§8D§ = §§pop();
                                 if(_loc13_)
                                 {
                                    break loop8;
                                 }
                                 addr0341:
                                 _loc10_ = §5;§;
                                 if(!_loc12_)
                                 {
                                    while(_loc4_ < int(_loc10_.length))
                                    {
                                       _loc11_ = _loc10_[_loc4_];
                                       if(_loc13_)
                                       {
                                          _loc4_++;
                                          if(_loc12_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc11_.update(§76§[0]);
                                    }
                                    if(_loc13_)
                                    {
                                       § g§ = true;
                                    }
                                 }
                                 break;
                              }
                              §76§[0].§1!<§ = true;
                              break;
                           }
                           return;
                           §§push(int(§76§.length));
                        }
                     }
                     §§push(0);
                     if(!_loc12_)
                     {
                        §§goto(addr0163);
                     }
                     §§goto(addr0180);
                  }
                  §-o§();
                  break;
               }
               return;
            }
            if(_loc13_)
            {
               §-o§();
            }
         }
      }
      
      public function §4!S§(param1:Number) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(§§findproperty(§+!M§));
            §§push(Number(§^!O§(int(Math.round(param1 * 1000)))));
            if(_loc3_)
            {
               §§push(0.413);
               if(_loc3_)
               {
                  §§push(§9_§.tunnel.power);
                  if(_loc3_)
                  {
                     §§push(§§pop() * 0.587);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop() * §§pop());
            }
            §§pop().§+!M§ = §§pop();
         }
         §§push(§§findproperty(§?v§));
         §§push(param1);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         return §§pop().§?v§ = §§pop();
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as §#d§;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§#d§> = §5;§;
         while(true)
         {
            if(_loc4_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(_loc4_)
                  {
                     _loc1_++;
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc3_.§#"§(false);
               }
               if(!_loc5_)
               {
                  §4!S§(0);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            §8D§ = 0;
            break;
         }
      }
      
      public function §2a§(param1:Object = undefined) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:* = NaN;
         var _loc3_:* = null as §%M§;
         var _loc4_:* = null as §6!7§;
         var _loc5_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc7_)
               {
                  §[e§ = §9_§.tunnel.unpausedTime;
                  if(!_loc8_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           if(param1 == null)
                           {
                              if(!_loc8_)
                              {
                                 §§push(Bridge.§<N§.range2.§[!$§(0.3));
                                 if(!_loc7_)
                                 {
                                    break loop0;
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc8_)
                                 {
                                    break loop2;
                                 }
                              }
                           }
                           else
                           {
                              _loc3_ = Bridge.§<N§;
                              _loc4_ = _loc3_.range2;
                              if(_loc7_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_.range1.§7!8§(Number(param1)));
                                       if(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc8_)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      loop7:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  §§push(0);
                                                                  break;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               §§push(_loc5_);
                                                               if(_loc8_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               §§push(1);
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               break loop7;
                                                            }
                                                            §§push(1);
                                                            if(_loc7_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc7_)
                                                               {
                                                               }
                                                               break loop6;
                                                            }
                                                            break;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         break loop6;
                                                      }
                                                   }
                                                   break loop7;
                                                }
                                                §§push(§§pop().§[!$§(§§pop()));
                                                if(!_loc7_)
                                                {
                                                   break loop4;
                                                }
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc7_)
                                          {
                                             break loop4;
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       break loop4;
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 break loop5;
                              }
                           }
                           §§push(§8D§);
                           if(_loc7_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        _loc5_ = Number(§§pop());
                        break;
                     }
                  }
               }
               break loop2;
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               while(true)
               {
                  §§push(§§findproperty(§8D§));
                  if(!_loc8_)
                  {
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        break;
                     }
                     if(§§pop() <= _loc6_)
                     {
                        §§push(_loc6_);
                        break;
                     }
                  }
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                  }
                  break;
               }
               §§pop().§8D§ = §§pop();
            }
            return;
         }
         §§push(Number(§§pop()));
         break loop1;
      }
      
      public function §+k§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §>!§ = true;
         }
      }
      
      public function §-o§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = null as Vector.<§#d§>;
         var _loc3_:* = null as §#d§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(!§ g§)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop1;
                  }
               }
               §§push(0);
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
               _loc1_ = §§pop();
               break loop1;
            }
            return;
         }
         _loc2_ = §5;§;
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
               _loc3_.§#"§(false);
            }
            if(_loc4_)
            {
               break loop2;
            }
         }
         § g§ = false;
         break loop2;
      }
      
      public function §=!V§() : Boolean
      {
         return §9_§.§!!8§ == null;
      }
   }
}

