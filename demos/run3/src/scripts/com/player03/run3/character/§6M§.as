package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §"!L§.§%z§;
   import §"!M§.§!!5§;
   import §"!M§.§!!P§;
   import §"!M§.§8i§;
   import §"!M§.§9!5§;
   import §"!M§.§<!O§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §'!1§.§7!b§;
   import §+Y§.§#d§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §0!"§.§[T§;
   import §1^§.Transform;
   import §2!"§.§1e§;
   import §2!W§.§%U§;
   import §3!b§.§+!"§;
   import §3!b§.PlanetMissing;
   import §3!b§.Protip;
   import §4n§.Achievement;
   import §4n§.Achievements;
   import §6!Q§.§]u§;
   import §6[§.§5v§;
   import §<!&§.§%!§;
   import §<&§.§>!A§;
   import §>T§.§"=§;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import §>T§.§^d§;
   import §[^§.§!A§;
   import §[^§.§+!S§;
   import §[^§.§+`§;
   import §[s§.§<!1§;
   import §`_§.§']§;
   import §`_§.§7d§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §6M§ extends §%!§ implements IEventDispatcher, §<!1§
   {
      
      public static var init__:Boolean;
      
      public static var §-t§:Point3D;
      
      public static var §!Y§:Point3D;
      
      public static var §"m§:§"B§;
      
      public static var §0R§:Number = 70;
      
      public static var §4V§:Number = 70;
      
      public static var §3!2§:Number = 100;
      
      public static var §0'§:Number = 40;
      
      public static var § F§:Number = 104;
      
      public static var §],§:Number = 0.05;
      
      public static var §6!9§:Number = 0.2;
      
      public static var §'g§:Number = 270;
      
      public static var §[!?§:Number = 300;
      
      public static var §>'§:Number = 900;
      
      public static var §!!Y§:Number = 300;
      
      public static var §&!§:Number = 0.2;
      
      public static var §",§:int = 1000;
      
      public static var §;!O§:Number = 300;
      
      public static var §8F§:Number = 15;
      
      public static var §5!8§:Number = 1.5;
      
      public static var §>!8§:Number = 16.5;
      
      public static var §<9§:Number = 1.8;
      
      public static var §;o§:Number = 6;
      
      public var §>!7§:Number;
      
      public var §"!2§:Number;
      
      public var §3!>§:Number;
      
      public var §+9§:Number;
      
      public var §?!>§:Number;
      
      public var §`@§:Number;
      
      public var tunnel:§ !W§;
      
      public var §9@§:Number;
      
      public var §>Z§:§2N§;
      
      public var §4U§:Number;
      
      public var §!b§:String;
      
      public var §[!V§:Vector.<§[!H§>;
      
      public var §4!H§:Vector.<Number>;
      
      public var §-!§:§4S§;
      
      public var §%u§:Number;
      
      public var spritesheet:§1e§;
      
      public var §!0§:int;
      
      public var §["§:Object;
      
      public var §+!X§:Number;
      
      public var §?!%§:Vector.<Shadow>;
      
      public var §"6§:Boolean;
      
      public var §[!L§:Number;
      
      public var §&N§:Number;
      
      public var §;i§:Number;
      
      public var §2!6§:Point3D;
      
      public var §`a§:Number;
      
      public var §4!Z§:int;
      
      public var §]!L§:TunnelSection;
      
      public var §=^§:Boolean;
      
      public var §[R§:Number;
      
      public var §#P§:Number;
      
      public var §9!+§:§[C§;
      
      public var §0I§:Number;
      
      public var §#=§:Number;
      
      public var §85§:Number;
      
      public var §?`§:§%U§;
      
      public var § !"§:Boolean;
      
      public var §8!X§:Boolean;
      
      public var § `§:§'t§;
      
      public var §@m§:Boolean;
      
      public var §]!K§:§=!U§;
      
      public var §#[§:§8J§;
      
      public var §-9§:Number;
      
      public var §"!+§:Number;
      
      public var §-,§:Number;
      
      public var §6N§:Number;
      
      public var §73§:TunnelSection;
      
      public var §"!$§:Number;
      
      public var §7!a§:Number;
      
      public var §!8§:§6O§;
      
      public var §^!Q§:Boolean;
      
      public var §'E§:Boolean;
      
      public var §"G§:Boolean;
      
      public var §]E§:Number;
      
      public var §'+§:§]r§;
      
      public var §8`§:Number;
      
      public var §&e§:Number;
      
      public var §`!C§:Vector.<§ m§>;
      
      public var §=N§:Vector.<String>;
      
      public function §6M§(param1:§ !W§, param2:§6O§)
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         §=^§ = false;
         §!0§ = 2;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc13_)
                  {
                     §`@§ = 0.7;
                     if(_loc12_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§&N§));
                     §§push(15);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§&N§ = §§pop();
                     §#P§ = 0;
                     § !"§ = false;
                     §'E§ = true;
                     §["§ = null;
                     if(_loc13_)
                     {
                        §%u§ = 0;
                        if(_loc13_)
                        {
                           §;i§ = 0;
                           §+!X§ = 0;
                           §"!$§ = 0;
                           §[!L§ = 0;
                           §>!7§ = 1;
                           if(_loc12_)
                           {
                              break loop1;
                           }
                           §&e§ = 0.9;
                        }
                     }
                     §§push(§§findproperty(§?!>§));
                     §§push(900);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§?!>§ = §§pop();
                     if(_loc12_)
                     {
                        break loop0;
                     }
                     §§push(§§findproperty(§3!>§));
                     §§push(300);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§3!>§ = §§pop();
                     §§push(§§findproperty(§+9§));
                     §§push(270);
                     if(_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§+9§ = §§pop();
                  }
                  §§push(§§findproperty(§"!2§));
                  §§push(300);
                  if(_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().§"!2§ = §§pop();
                  if(_loc13_)
                  {
                     §`a§ = 200;
                     if(_loc13_)
                     {
                        break loop0;
                     }
                     break loop1;
                  }
                  §§goto(addr011d);
               }
               §-3§ = true;
               §§push(0.7);
               if(_loc13_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!_loc12_)
               {
                  §§push(§§findproperty(spritesheet));
                  §§push(§§findproperty(§1e§));
                  §§push(param2.§`6§());
                  if(_loc13_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().spritesheet = new §§pop().§1e§(§§pop(),null,0.45681063122923593,0,-1.5,null,null,§1r§());
                  §'+§ = new §]r§(this,spritesheet,param2.frames);
                  while(true)
                  {
                     if(_loc13_)
                     {
                        §9!4§(spritesheet);
                        if(_loc12_)
                        {
                           break;
                        }
                        §§push(model);
                        §§push(1000);
                        if(_loc13_)
                        {
                           §§push(§§pop() + int(param1.characters.length));
                        }
                        §§pop().§0p§ = §§pop();
                        model.§;!6§(transform);
                        §-!§ = new §4S§(param2,spritesheet,param1.§"[§);
                        param1.registerAnimation(§-!§);
                        if(_loc12_)
                        {
                           break;
                        }
                        §§push(§§findproperty(§&N§));
                        §§push(15);
                        if(_loc13_)
                        {
                           §§push(§§pop() * param2.§,#§);
                        }
                        §§pop().§&N§ = §§pop();
                        §`-§(new §[T§(this,§&N§));
                     }
                     physicsData.§&Q§(1);
                     §§push(§[!G§);
                     §§push(§%9§);
                     if(_loc13_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§%9§ = §§pop();
                     §§push(§[!G§);
                     §§push(§0e§);
                     if(!_loc12_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§0e§ = §§pop();
                     transform.§5!,§(new Transform());
                     §2!6§ = new Point3D(0,0,0);
                     break;
                  }
               }
               §"!+§ = §"!2§;
               if(!_loc12_)
               {
                  §6N§ = §+9§;
               }
               var _loc4_:Vector.<String> = new Vector.<String>(0,false);
               if(!_loc12_)
               {
                  §=N§ = _loc4_;
               }
               var _loc5_:Vector.<§ m§> = new Vector.<§ m§>(0,false);
               if(!_loc12_)
               {
                  §`!C§ = _loc5_;
               }
               var _loc6_:Vector.<§[!H§> = new Vector.<§[!H§>(0,false);
               if(!_loc12_)
               {
                  §[!V§ = _loc6_;
               }
               var _loc7_:Vector.<Number> = new Vector.<Number>(0,false);
               §4!H§ = _loc7_;
               if(!_loc12_)
               {
                  §]!K§ = new StringMap();
                  §?`§ = new §%U§(this);
               }
               §?`§.§1!#§(40,104,0.05,0.2);
               §?`§.§!"§ = 1;
               §?`§.§3Q§ = false;
               if(_loc13_)
               {
                  §?`§.§?!P§ = 0.9;
                  §?`§.buffer = 0.25;
               }
               §@!8§(0.1);
               §?`§.§;V§ = false;
               while(true)
               {
                  if(!_loc12_)
                  {
                     §?`§.§@e§ = 0.25;
                     §?`§.§<F§ = true;
                     if(!_loc12_)
                     {
                        §?`§.§&!@§ = 20;
                        §?`§.§4y§ = true;
                        §`!C§.push(§?`§);
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                     § `§ = new §'t§(this,300,-1,true,§?`§);
                     if(!_loc12_)
                     {
                        §`!C§.push(§ `§);
                        if(_loc12_)
                        {
                           break;
                        }
                     }
                  }
                  §#[§ = new §8J§(this);
                  if(!_loc12_)
                  {
                     break;
                  }
                  §§goto(addr045c);
               }
               §`!C§.push(§#[§);
               if(!_loc12_)
               {
                  §7!a§ = 1;
               }
               addr045c:
               var _loc8_:Vector.<Shadow> = new Vector.<Shadow>(0,false);
               if(_loc13_)
               {
                  §?!%§ = _loc8_;
               }
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(16.5);
                     if(!_loc12_)
                     {
                        §§push(param2.§,#§);
                        if(!_loc13_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc12_)
                        {
                           break loop5;
                        }
                     }
                     §§push(param2.§2t§);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc13_)
                  {
                     break;
                  }
                  §§goto(addr04a4);
               }
               addr04a4:
               var _loc9_:Number = §§pop();
               var _loc10_:Shadow = new Shadow(§!C§,this,_loc9_);
               if(_loc13_)
               {
                  param1.§4M§(_loc10_);
                  if(!_loc12_)
                  {
                     §?!%§.push(_loc10_);
                  }
               }
               §§push(§§findproperty(Shadow));
               §§push(§!C§);
               §§push(this);
               §§push(_loc9_);
               if(!_loc12_)
               {
                  §§push(-§§pop());
               }
               var _loc11_:Shadow = new §§pop().Shadow(§§pop(),§§pop(),§§pop(),_loc10_);
               while(true)
               {
                  if(_loc13_)
                  {
                     param1.§4M§(_loc11_);
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
                  §?!%§.push(_loc11_);
                  break;
               }
               return;
            }
            §!8§ = param2;
            if(_loc13_)
            {
               §,!!§ = false;
            }
            break loop2;
         }
         super(param1,true);
         if(!_loc12_)
         {
            addr011d:
            tunnel = param1;
         }
         §73§ = param1.§1W§;
         break loop1;
      }
      
      public static function §@K§() : Number
      {
         return 0.7;
      }
      
      public static function §9k§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = NaN;
         while(true)
         {
            loop1:
            while(true)
            {
               loop5:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 while(true)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       loop16:
                                       while(true)
                                       {
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
                                                      if(_loc6_)
                                                      {
                                                         §§push(true);
                                                         §§push(param1);
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() != param2)
                                                            {
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(param2);
                                                               if(_loc5_)
                                                               {
                                                                  break loop20;
                                                               }
                                                               §§push(param2);
                                                               if(_loc5_)
                                                               {
                                                                  break loop19;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               return param1;
                                                            }
                                                            §§push(param2);
                                                            if(!_loc6_)
                                                            {
                                                               break loop18;
                                                            }
                                                            §§push(0);
                                                            if(_loc5_)
                                                            {
                                                               break loop16;
                                                            }
                                                            loop23:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(param2);
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop23;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(-param2);
                                                                  }
                                                                  §§push(param1);
                                                                  §§push(0);
                                                                  if(_loc5_)
                                                                  {
                                                                     break loop15;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(-param1);
                                                                     }
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        §§push(param2);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc5_)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           break loop19;
                                                                        }
                                                                        break loop23;
                                                                     }
                                                                  }
                                                                  §§goto(addr01dd);
                                                               }
                                                               §§goto(addr01db);
                                                            }
                                                            §§goto(addr01d2);
                                                         }
                                                         §§goto(addr01ec);
                                                      }
                                                      §§push(param2);
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         §§push(param2);
                                                         if(!_loc5_)
                                                         {
                                                            _loc4_ = §§pop() / §§pop();
                                                            if(_loc6_)
                                                            {
                                                               §§push(param3);
                                                               §§push(_loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc5_)
                                                                  {
                                                                     break loop15;
                                                                  }
                                                                  break loop11;
                                                               }
                                                               break loop10;
                                                            }
                                                            break loop9;
                                                         }
                                                         §§goto(addr00f6);
                                                      }
                                                      §§goto(addr0207);
                                                   }
                                                   §§goto(addr017c);
                                                }
                                                §§goto(addr0131);
                                             }
                                             §§goto(addr013d);
                                          }
                                          §§goto(addr01b4);
                                       }
                                       §§goto(addr017a);
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(-_loc4_);
                                          if(_loc5_)
                                          {
                                             break loop13;
                                          }
                                       }
                                       addr00f6:
                                       §§push(0.8);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          §§push(0.2);
                                       }
                                       §§push(§§pop() * (§§pop() + §§pop()));
                                       if(!_loc5_)
                                       {
                                          param3 = Number(§§pop());
                                          if(!_loc5_)
                                          {
                                             break loop8;
                                          }
                                          break loop5;
                                       }
                                       break loop1;
                                    }
                                    §§goto(addr0207);
                                 }
                                 §§goto(addr0208);
                              }
                              §§push(§§pop() - §§pop());
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 break loop10;
                              }
                              addr0131:
                              §§push(§§pop() / §§pop());
                              if(!_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 addr013d:
                                 §§push(param3);
                                 §§push(_loc4_);
                                 §§push(0);
                                 break;
                              }
                              §§goto(addr0143);
                           }
                           if(§§pop() >= §§pop())
                           {
                              addr0143:
                              §§push(_loc4_);
                              break;
                           }
                           §§push(_loc4_);
                           if(!_loc5_)
                           {
                              §§push(-§§pop());
                              break;
                           }
                           §§goto(addr01b7);
                        }
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc5_)
                           {
                              param3 = §§pop();
                              §§push(true);
                              §§push(param2);
                              if(_loc6_)
                              {
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§pop();
                                          break loop9;
                                       }
                                       §§goto(addr0180);
                                    }
                                    §§goto(addr0181);
                                 }
                                 §§goto(addr017e);
                              }
                              §§goto(addr017c);
                           }
                           §§goto(addr0211);
                        }
                        §§goto(addr0217);
                     }
                     addr0180:
                     addr0181:
                     addr017e:
                     addr017c:
                     addr017a:
                     if(!(param2 > 0 == param1 > 0))
                     {
                        §§push(param3 * 0.5);
                        if(!_loc5_)
                        {
                           addr01b4:
                           param3 = §§pop() + 0.5;
                           break;
                        }
                        break loop2;
                     }
                     if(_loc6_)
                     {
                        §§push(param3 * 0.8);
                        if(!_loc6_)
                        {
                           break loop1;
                        }
                        §§push(0.1);
                        continue loop3;
                     }
                     §§goto(addr0216);
                  }
                  §§goto(addr01b5);
               }
               §§goto(addr01bb);
            }
            §§push(param3);
            if(_loc5_)
            {
               break loop3;
            }
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     addr01d2:
                     param1 = Number(§§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(param1 <= param2)
                     {
                        break loop6;
                     }
                     §§push(param2);
                     if(!_loc5_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0208);
                  }
                  §§goto(addr0209);
               }
               §§goto(addr020a);
            }
            §§goto(addr0218);
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     param3 = Number(§§pop());
                     addr01b5:
                     addr01b7:
                     if(param2 > param1)
                     {
                        addr01bb:
                        §§push(param1);
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     §§push(param1);
                     if(_loc5_)
                     {
                        break loop2;
                     }
                  }
                  §§push(param3);
                  if(_loc6_)
                  {
                     addr0208:
                     addr0207:
                     §§push(§§pop() - §§pop());
                     break;
                  }
                  break loop3;
               }
               addr0209:
               param1 = §§pop();
               addr020a:
               §§push(param1);
               if(!_loc5_)
               {
                  addr0211:
                  §§push(param2);
                  break;
               }
               §§goto(addr0217);
            }
            if(§§pop() >= §§pop())
            {
               addr0218:
               §§push(param1);
               break;
            }
            addr0217:
            return param2;
            addr0216:
         }
         return §§pop();
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as StringMap;
         var _loc2_:StringMap = §]!K§;
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(_loc2_.existsReserved(param1));
                           if(_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                              }
                           }
                           break;
                        }
                        _loc3_ = §]!K§;
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§push(param1 in StringMap.§+!#§);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    §§push(_loc3_.h[param1]);
                                    break loop2;
                                 }
                              }
                              return _loc3_.getReserved(param1);
                           }
                           return §§pop();
                        }
                        §§push(int(§§pop().length) > 0);
                        break loop3;
                     }
                     §§push(param1);
                  }
                  §§push(§§pop() in _loc2_.h);
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop0;
               }
               if(!§§pop())
               {
                  §§push(false);
                  break;
               }
               continue loop2;
            }
            return §§pop();
         }
         continue loop2;
      }
      
      override public function §&7§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:* = 0;
         var _loc3_:* = null as §3!I§;
         var _loc4_:* = 0;
         var _loc5_:* = null as Vector.<String>;
         § L§.mid = 314450;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(_loc6_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(physicsData.onGround)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(§8`§ != 0);
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(int(Math.round(§8`§ / 6.283185307179586)));
                           if(_loc6_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc6_)
                              {
                                 break loop1;
                              }
                           }
                           _loc1_ = §§pop();
                           break;
                        }
                     }
                     break loop2;
                  }
               }
               §§push(false);
               if(_loc1_ > 0)
               {
                  §§pop();
                  §§push(§4!Z§);
                  break loop1;
               }
               §§goto(addr0097);
            }
            §§push(§§findproperty(§0!N§));
            §§push(§?J§());
            if(_loc6_)
            {
               §§push(Boolean(§§pop()));
            }
            §§pop().§0!N§(§§pop());
            §§goto(addr00e3);
         }
         addr0097:
         if(§§pop() == 0)
         {
            if(_loc7_)
            {
               break loop2;
            }
            Achievements.§8!@§.§,Y§();
            if(!_loc6_)
            {
               break loop2;
            }
         }
         §8`§ = 0;
         if(!_loc7_)
         {
            break loop2;
         }
         addr00e3:
         while(true)
         {
            §§push(§=B§);
            §§push(int(§=N§.length));
            if(_loc6_)
            {
               §§push(1);
               if(!_loc6_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         var _loc2_:§3!I§ = §§pop().§@W§(§§pop(),§§pop(),-1);
         if(!_loc7_)
         {
            loop0:
            while(_loc2_.§#1§ != _loc2_.end)
            {
               _loc3_ = _loc2_;
               while(true)
               {
                  if(!_loc7_)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.§#1§);
                           if(_loc6_)
                           {
                              §§push(_loc2_.§['§);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc6_)
                              {
                                 break loop5;
                              }
                              §§push(int(§§pop()));
                              if(_loc7_)
                              {
                                 break loop5;
                              }
                           }
                           var _temp_1:* = §§pop();
                           §§push(_temp_1);
                           §§push(_temp_1);
                           break;
                        }
                        _loc4_ = §§pop();
                        break;
                     }
                     §§pop().§#1§ = §§pop();
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc1_ = §§pop();
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(§7o§.controlScheme);
                  §§push(§=N§[_loc1_]);
                  if(_loc6_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop().§,h§(§§pop()));
                  if(_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc6_)
                     {
                        §§push(!§§pop());
                     }
                  }
                  if(§§pop())
                  {
                     break;
                  }
                  continue loop0;
               }
               _loc5_ = §=N§.splice(_loc1_,1);
            }
         }
      }
      
      public function §29§() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Transform = transform.§=0§;
         while(true)
         {
            §§push(§"!$§);
            if(_loc8_)
            {
               §§push(-§§pop());
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         var _loc3_:§"B§ = §6M§.§"m§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(_loc2_ / 2)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               _loc3_.x = 0 * _loc4_;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc3_.y = 0 * _loc4_;
            if(_loc8_)
            {
               _loc3_.z = _loc4_;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc3_.w = Number(Math.cos(_loc2_ / 2));
            break;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc3_.x * _loc3_.x);
                  §§push(_loc3_.y);
                  §§push(_loc3_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(_loc3_.z);
                     if(!_loc8_)
                     {
                        break loop4;
                     }
                     §§push(_loc3_.z);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc8_)
                  {
                     §§push(§§pop() + §§pop());
                     break;
                  }
                  §§goto(addr00f6);
               }
               §§push(_loc3_.w);
               break;
            }
            §§push(_loc3_.w);
            break;
         }
         addr00f6:
         §§push(§§pop() + §§pop() * §§pop());
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc5_);
         if(_loc8_)
         {
            §§push(§§pop() - 1);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               §§push(_loc6_);
               §§push(0);
               if(_loc8_)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(_loc6_);
                        }
                        else
                        {
                           §§push(_loc6_);
                           if(!_loc7_)
                           {
                              §§push(-§§pop());
                              if(!_loc8_)
                              {
                                 break loop7;
                              }
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                           if(_loc8_)
                           {
                              if(§§pop())
                              {
                                 break;
                              }
                              break loop5;
                           }
                        }
                        break loop6;
                     }
                     §§push(_loc5_);
                     break;
                  }
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc7_)
                  {
                     _loc3_.x = 0;
                     _loc3_.y = 0;
                     _loc3_.z = 0;
                     _loc3_.w = 1;
                     break loop5;
                  }
               }
               else
               {
                  _loc5_ = 1 / Number(Math.sqrt(_loc5_));
                  if(_loc8_)
                  {
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().x = §§pop();
                     if(_loc7_)
                     {
                        break loop5;
                     }
                     §§push(_loc3_);
                     §§push(_loc3_.y);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().y = §§pop();
                     §§push(_loc3_);
                     §§push(_loc3_.z);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.w);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().w = §§pop();
                        break loop5;
                     }
                  }
               }
               §§goto(addr01f9);
            }
            if(§§pop())
            {
               addr01f9:
               §[!G§.update(0);
               §§goto(addr0204);
            }
            addr0204:
            return;
         }
         _loc1_.§"I§(_loc3_);
         §§push(§"6§);
         break loop6;
      }
      
      override public function update(param1:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2016
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §@!8§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               §[R§ = param1;
               if(!_loc3_)
               {
                  break;
               }
            }
            §?`§.§[R§ = §[R§;
            break;
         }
         return §[R§;
      }
      
      public function §+!^§(param1:Number) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_)
         {
            § L§.low = 197702;
         }
         var _loc2_:§"B§ = transform.§+n§();
         var _loc3_:§"B§ = _loc2_;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(param1 / 2)));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            _loc3_.x = 0 * _loc4_;
            while(true)
            {
               if(_loc7_)
               {
                  _loc3_.y = 0 * _loc4_;
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               _loc3_.z = _loc4_;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc3_.w = Number(Math.cos(param1 / 2));
         }
         loop5:
         while(true)
         {
            §§push(_loc3_.x * _loc3_.x);
            §§push(_loc3_.y);
            §§push(_loc3_.y);
            if(!_loc8_)
            {
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  §§push(_loc3_.z);
                  if(_loc7_)
                  {
                     §§push(_loc3_.z);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     §§push(_loc3_.w);
                     §§push(_loc3_.w);
                     break;
                  }
                  break loop5;
               }
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         loop8:
         while(true)
         {
            while(true)
            {
               §§push(_loc6_);
               if(_loc7_)
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(_loc6_);
                        break loop8;
                     }
                     §§goto(addr0164);
                  }
                  else
                  {
                     §§push(_loc6_);
                  }
               }
               §§push(-§§pop());
               break loop8;
            }
            while(true)
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc8_)
                  {
                     _loc3_.x = 0;
                     §§goto(addr0164);
                  }
               }
               else
               {
                  _loc5_ = 1 / Number(Math.sqrt(_loc5_));
               }
               §§goto(addr0193);
            }
            §§goto(addr01e1);
         }
         §§push(1e-10);
         if(_loc7_)
         {
            §§push(§§pop() < §§pop());
            if(!_loc8_)
            {
               §§push(!§§pop());
            }
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        addr0164:
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           §§push(0);
                           break loop9;
                        }
                        _loc3_.y = 0;
                        if(_loc8_)
                        {
                           break;
                        }
                        _loc3_.z = 0;
                        _loc3_.w = 1;
                        if(_loc8_)
                        {
                           break loop11;
                        }
                     }
                     addr0193:
                     §§push(_loc3_);
                     §§push(_loc3_.x);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc3_);
                     §§push(_loc3_.y);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().y = §§pop();
                     if(_loc8_)
                     {
                        break loop10;
                     }
                     §§push(_loc3_);
                     §§push(_loc3_.z);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().z = §§pop();
                     §§push(_loc3_);
                     §§push(_loc3_.w);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().w = §§pop();
                     if(!_loc7_)
                     {
                        break loop10;
                     }
                  }
                  addr01e1:
                  transform.§"I§(_loc2_);
                  if(_loc7_)
                  {
                     §]E§ = param1;
                     break;
                  }
                  break loop10;
               }
               while(true)
               {
                  §§push(§]E§);
                  §§push(3.141592653589793);
                  if(_loc8_)
                  {
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     break loop10;
                  }
                  §§push(§§findproperty(§]E§));
                  §§push(§]E§);
                  if(!_loc8_)
                  {
                     §§push(§§pop() - 6.283185307179586);
                  }
                  §§pop().§]E§ = §§pop();
               }
            }
            while(true)
            {
               §§push(§]E§);
               if(!_loc7_)
               {
                  break;
               }
               §§push(-3.141592653589793);
            }
            §§goto(addr026d);
         }
         while(true)
         {
            if(§§pop() >= §§pop())
            {
               §§push(§]E§);
               break;
            }
            §§push(§§findproperty(§]E§));
            §§push(§]E§);
            if(!_loc8_)
            {
               §§push(§§pop() + 6.283185307179586);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§]E§ = §§pop();
            break loop10;
         }
         addr026d:
         return §§pop();
      }
      
      public function §%J§(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(§§findproperty(§%u§));
            §§push(Number(Math.atan2(param2,param1)));
            if(!_loc4_)
            {
               §§push(-§§pop());
               if(!_loc4_)
               {
                  §§push(§§pop() - 1.5707963267948966);
               }
            }
            §§pop().§%u§ = §§pop();
         }
      }
      
      public function §4=§(param1:§[!H§, param2:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(int(§[!V§.indexOf(param1,0)));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc3_ >= 0)
            {
               if(!_loc5_)
               {
                  §4!H§[_loc3_] = param2;
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  addr0086:
                  §4!H§.push(param2);
               }
            }
            else
            {
               §[!V§.push(param1);
               if(_loc4_)
               {
                  §§goto(addr0086);
               }
            }
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = null as § m§;
         while(true)
         {
            if(_loc8_)
            {
               § L§.mid = 646429;
               if(!_loc8_)
               {
                  break;
               }
            }
            §"G§ = true;
            if(_loc8_)
            {
               §62§();
            }
            break;
         }
         §§push(transform.position.z);
         §§push(§'j§());
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         §§push(§§pop() > §§pop());
         if(_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               super.reset();
               if(!_loc8_)
               {
                  break;
               }
               if(§'+§ == null)
               {
                  break;
               }
               if(!_loc8_)
               {
                  break;
               }
            }
            §'+§.reset();
            break;
         }
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§ m§> = §`!C§;
         while(_loc2_ < int(_loc3_.length))
         {
            _loc4_ = _loc3_[_loc2_];
            if(!_loc9_)
            {
               _loc2_++;
               if(!_loc9_)
               {
                  _loc4_.reset();
               }
            }
         }
         loop3:
         while(true)
         {
            if(!_loc9_)
            {
               §[!V§.length = 0;
               §4!H§.length = 0;
               model.§#"§(true);
               §4!Z§ = 0;
               §["§ = 0;
               §"!$§ = 0;
               if(_loc9_)
               {
                  break;
               }
            }
            §%u§ = §+!X§;
            §8!X§ = false;
            §^!Q§ = false;
            while(true)
            {
               if(!_loc9_)
               {
                  break loop3;
               }
               addr0161:
               §+!^§(0);
               break;
            }
            §§goto(addr016a);
         }
         §9@§ = 0;
         if(_loc8_)
         {
            §4U§ = 0;
            §§goto(addr0161);
         }
         addr016a:
         §8`§ = 0;
         §§push(§+!X§);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc5_);
               if(!_loc9_)
               {
                  if(§§pop() != _loc5_)
                  {
                     if(!_loc8_)
                     {
                        break;
                     }
                     §%u§ = 0;
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(§%u§);
               }
               if(§§pop() == 0)
               {
                  §29§();
                  break;
               }
               if(!_loc8_)
               {
                  break;
               }
            }
            §&7§();
            if(_loc9_)
            {
            }
            break;
         }
         var _loc6_:Point3D = transform.§<!C§();
         if(_loc8_)
         {
            _loc6_.y -= §&N§ * 1.1;
            transform.§"w§(_loc6_);
            §6N§ = §+9§;
            §"!+§ = §"!2§;
         }
         §-,§ = 1;
         §-9§ = §>!7§;
         if(!_loc9_)
         {
            §[!L§ = 0;
         }
         var _loc7_:§4S§ = §-!§;
         loop6:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc1_);
                  if(!_loc9_)
                  {
                     if(§§pop() == _loc7_.§&!"§ > 0)
                     {
                        break;
                     }
                     §§push(_loc1_);
                  }
                  if(!§§pop())
                  {
                     _loc7_.§&!"§ = 0;
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§goto(addr02c2);
                  }
               }
               _loc7_.§&!"§ = 0.12;
               if(!_loc9_)
               {
                  break;
               }
               break loop6;
            }
            §9!+§ = null;
            if(!_loc9_)
            {
               §#P§ = level.unpausedTime;
               break;
            }
            §§goto(addr02c2);
         }
         §0I§ = level.unpausedTime;
         addr02c2:
         §#=§ = level.unpausedTime;
         if(!_loc9_)
         {
            §"G§ = false;
         }
      }
      
      override public function §9!?§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as Shadow;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<Shadow> = §?!%§;
         if(_loc6_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(_loc6_)
               {
                  _loc1_++;
                  if(_loc6_)
                  {
                     _loc3_.§9!?§();
                  }
               }
            }
         }
         var _loc4_:§1![§ = tunnel.§"[§;
         var _loc5_:Model = §-!§;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(!_loc7_)
                  {
                     if(_loc5_.§0p§ > 0)
                     {
                        §§push(_loc4_.§3!#§);
                        break loop2;
                     }
                     while(true)
                     {
                        §§push(false);
                        if(!_loc7_)
                        {
                           if(_loc5_.§0p§ >= 0)
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              break;
                           }
                        }
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc4_.§9!R§ == null);
                           if(_loc6_)
                           {
                              §§push(!§§pop());
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        break loop3;
                     }
                     if(!§§pop())
                     {
                        §§push(_loc4_.§@8§);
                        break loop2;
                     }
                     if(_loc7_)
                     {
                        break loop1;
                     }
                  }
                  §§push(_loc4_.§9!R§);
                  break loop2;
               }
               §§goto(addr011f);
            }
            §§pop().§4w§(_loc5_);
            break;
         }
         tunnel.§5!F§(§-!§);
         if(_loc6_)
         {
            addr011f:
            super.§9!?§();
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as Vector.<Function>;
         var _loc4_:Vector.<Function> = §7b§(param1);
         §§push(int(_loc4_.indexOf(param2,0)));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc5_ == -1)
               {
                  break;
               }
            }
            _loc6_ = _loc4_.splice(_loc5_,1);
            break;
         }
      }
      
      public function §?!Q§() : void
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
                     if(_loc2_)
                     {
                        §§push(§?`§.§'!S§());
                        if(!_loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(!_loc1_)
                     {
                        §§push(§?`§.§!!2§ > 1);
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        break;
                     }
                  }
                  if(!§§pop())
                  {
                     break loop0;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop2;
            }
            var _temp_2:* = tunnel.analytics;
            §§push(_temp_2);
            §§push(_temp_2.§]!-§);
            if(_loc2_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().§]!-§ = §§pop();
            break;
         }
      }
      
      public function §&!F§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
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
                     if(!_loc1_)
                     {
                        var _temp_2:* = tunnel.analytics;
                        §§push(_temp_2);
                        §§push(_temp_2.§1v§);
                        if(_loc2_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§pop().§1v§ = §§pop();
                        if(_loc1_)
                        {
                           break;
                        }
                        §§push(false);
                        if(!_loc1_)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc1_)
                              {
                                 if(§9!+§ == null)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    §§pop();
                                    if(_loc1_)
                                    {
                                       break loop1;
                                    }
                                    §§push(§9!+§.§@!B§ == null);
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           if(!§§pop())
                           {
                              break loop2;
                           }
                           if(_loc1_)
                           {
                              break loop1;
                           }
                        }
                        §§pop();
                        if(_loc1_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§#P§ >= level.unpausedTime - 0.1);
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     break loop2;
                  }
                  §9!+§.§@!B§.§^C§(this,§9!+§);
                  break loop0;
               }
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     break loop3;
                  }
               }
               break loop0;
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
      }
      
      public function §'7§(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            tunnel.analytics.§;!1§.§-K§(this);
         }
      }
      
      public function §5!1§(param1:§+`§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.§#!Y§(this);
         }
      }
      
      public function §@y§(param1:Number = 1e-10) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(§;i§);
            if(!_loc3_)
            {
               §§push(§§pop() - §"!$§);
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() >= 0)
                  {
                     addr0050:
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                     }
                     break;
                  }
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§push(-§§pop());
               break;
            }
            §§goto(addr0050);
         }
         return §§pop() >= param1;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as StringMap;
         var _loc2_:StringMap = §]!K§;
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() in StringMap.§+!#§);
                     if(_loc5_)
                     {
                        break loop0;
                     }
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(_loc2_.existsReserved(param1));
                           if(_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc4_)
                              {
                              }
                           }
                           break;
                        }
                        _loc3_ = §]!K§;
                        loop2:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 §§push(param1 in StringMap.§+!#§);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    §§push(_loc3_.h[param1]);
                                    break loop2;
                                 }
                              }
                              return _loc3_.getReserved(param1);
                           }
                           return §§pop();
                        }
                        §§push(int(§§pop().length) > 0);
                        break loop3;
                     }
                     §§push(param1);
                  }
                  §§push(§§pop() in _loc2_.h);
                  if(!_loc5_)
                  {
                     break;
                  }
                  break loop0;
               }
               if(!§§pop())
               {
                  §§push(false);
                  break;
               }
               continue loop2;
            }
            return §§pop();
         }
         continue loop2;
      }
      
      public function §0e§(param1:§%!§) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(param1.§-J§)
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(param1 is §+`§);
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     if(!§§pop())
                     {
                        return true;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  §§push(param1.model.visible);
                  break;
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §5!1§(param1);
            break;
         }
         return false;
      }
      
      public function §1r§() : §'H§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§ !W§ = tunnel;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     if(_loc1_.characters == null)
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(int(_loc1_.characters.length) > 0);
                  if(_loc2_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  break loop0;
               }
               return null;
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         return tunnel.characters[0].model.§1Z§;
      }
      
      public function §7b§(param1:String) : Vector.<Function>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = null as Vector.<Function>;
         var _loc4_:* = null as StringMap;
         var _loc5_:* = null as Vector.<Function>;
         var _loc3_:StringMap = §]!K§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc7_)
                  {
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§push(§§pop() in StringMap.§+!#§);
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              addr0057:
                              §§push(_loc3_.existsReserved(param1));
                              if(!_loc6_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           break loop0;
                        }
                        §§push(param1);
                     }
                     §§push(§§pop() in _loc3_.h);
                     break loop1;
                  }
                  §§goto(addr0057);
               }
               §§push(Boolean(§§pop()));
               if(_loc6_)
               {
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            _loc5_ = new Vector.<Function>(0,false);
            _loc2_ = _loc5_;
            _loc4_ = §]!K§;
            if(_loc7_)
            {
               if(param1 in StringMap.§+!#§)
               {
                  if(!_loc6_)
                  {
                     _loc4_.setReserved(param1,_loc2_);
                     if(_loc7_)
                     {
                     }
                  }
               }
               else
               {
                  _loc4_.h[param1] = _loc2_;
               }
            }
            §§goto(addr0122);
         }
         _loc4_ = §]!K§;
         while(true)
         {
            if(!_loc6_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  _loc2_ = _loc4_.h[param1];
                  break;
               }
            }
            _loc2_ = _loc4_.getReserved(param1);
            break;
         }
         addr0122:
         return _loc2_;
      }
      
      public function §6b§() : Number
      {
         return §"!2§;
      }
      
      public function §!![§(param1:Class) : Object
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = null as § m§;
         §§push([]);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Vector.<§ m§> = §`!C§;
         if(_loc6_)
         {
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               if(!_loc7_)
               {
                  _loc3_++;
                  if(_loc6_)
                  {
                     §§push(Std.§is§(_loc5_,param1));
                     if(!_loc7_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           _loc2_.push(_loc5_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function §62§() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as §@I§;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as Point3D;
         while(true)
         {
            if(!_loc7_)
            {
               §73§ = tunnel.§]!#§(tunnel.§73§.startZ,false);
               if(!_loc6_)
               {
                  break;
               }
            }
            if(§73§ == null)
            {
               break;
            }
            var _loc1_:Vector.<§@I§> = null;
            var _loc2_:Number = 0;
            loop1:
            while(true)
            {
               if(tunnel.backwards)
               {
                  if(!_loc7_)
                  {
                     if(§73§.§2!U§ == null)
                     {
                        §73§.§]-§();
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                  }
                  _loc1_ = §73§.§2!U§;
                  if(_loc6_)
                  {
                     if(_loc1_ == null)
                     {
                        if(_loc6_)
                        {
                           §§push(§73§.tileWidth);
                           if(_loc6_)
                           {
                              §§push(-§§pop());
                           }
                           _loc2_ = §§pop();
                        }
                     }
                  }
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(_loc1_ != null)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§pop();
                              if(!_loc6_)
                              {
                                 break loop8;
                              }
                              §§push(int(_loc1_.length));
                              if(!_loc6_)
                              {
                                 break loop3;
                              }
                              §§push(0);
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                              §§push(§§pop() == §§pop());
                              if(!_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           if(§§pop())
                           {
                              _loc1_ = §73§.§;S§;
                           }
                           §§push(false);
                           break;
                        }
                        if(_loc1_ != null)
                        {
                           §§pop();
                           break loop1;
                        }
                        §§goto(addr0138);
                     }
                     §§goto(addr013c);
                  }
                  §§push(0);
                  break;
               }
               addr0138:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr013c:
                     §§push(_loc1_);
                     §§push(Number(Math.random()));
                     if(!_loc7_)
                     {
                        §§push(§§pop() * int(_loc1_.length));
                     }
                     _loc3_ = §§pop()[int(§§pop())];
                     _loc4_ = transform.§%!7§;
                     _loc5_ = _loc3_.position;
                     if(_loc7_)
                     {
                        break;
                     }
                     _loc4_.x = _loc5_.x;
                     if(!_loc7_)
                     {
                        _loc4_.y = _loc5_.y;
                     }
                     _loc4_.z = _loc5_.z;
                     §+!X§ = _loc3_.rotation;
                  }
                  else
                  {
                     _loc4_ = transform.§%!7§;
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           _loc4_.x = 0;
                           if(_loc7_)
                           {
                              break;
                           }
                        }
                        _loc4_.y = 0;
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     _loc4_.z = §73§.startZ;
                     if(_loc6_)
                     {
                        §+!X§ = 0;
                     }
                  }
                  var _temp_1:* = transform.§%!7§;
                  while(true)
                  {
                     §§push(_temp_1);
                     §§push(_temp_1.z);
                     if(_loc6_)
                     {
                        §§push(§§pop() + _loc2_);
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().z = §§pop();
                  break;
               }
               while(true)
               {
                  §§push(false);
                  if(_loc6_)
                  {
                     if(tunnel.§73§ == §73§)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        §§pop();
                        §§push(tunnel.§5§ == §,a§.PLAYTEST);
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     §§push(!§§pop());
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     transform.§%!7§.z = tunnel.§73§.startZ + §&N§;
                  }
               }
               return;
            }
            §§push(int(_loc1_.length));
            break loop3;
         }
      }
      
      public function §0!N§(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = NaN;
         var _loc11_:* = null as Point3D;
         var _loc12_:* = NaN;
         var _loc13_:* = null as Point3D;
         §§push(§%u§);
         if(!_loc14_)
         {
            §§push(§§pop() - §"!$§);
            if(!_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         loop10:
         while(true)
         {
            loop11:
            while(true)
            {
               loop27:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        §§push(0);
                        if(!_loc14_)
                        {
                           §§push((§§pop() >= §§pop() ? _loc2_ : -_loc2_) < 1e-10);
                           if(!_loc15_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop37:
                              while(true)
                              {
                                 loop38:
                                 while(true)
                                 {
                                    if(!_loc14_)
                                    {
                                       § L§.mid = 455034;
                                       if(!_loc15_)
                                       {
                                          continue loop34;
                                       }
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§%u§);
                                          §§push(§"!$§);
                                          if(_loc14_)
                                          {
                                             break loop27;
                                          }
                                          §§push(3.141592653589793);
                                          if(_loc15_)
                                          {
                                             loop39:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc15_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push(§§findproperty(§%u§));
                                                      §§push(§%u§);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() - 6.283185307179586);
                                                      }
                                                      §§pop().§%u§ = §§pop();
                                                      continue loop0;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§%u§);
                                                      §§push(§"!$§);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(3.141592653589793);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc14_)
                                                            {
                                                               break loop39;
                                                            }
                                                            continue loop9;
                                                         }
                                                         addr010c:
                                                      }
                                                      break loop39;
                                                   }
                                                   break;
                                                   addr00f7:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(§"G§);
                                                      if(_loc15_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            §§push(§%u§);
                                                            if(_loc15_)
                                                            {
                                                               §§push(§"!$§);
                                                               if(_loc14_)
                                                               {
                                                                  break loop10;
                                                               }
                                                               _loc8_ = §§pop() - §§pop();
                                                               §§push(_loc8_);
                                                               §§push(0);
                                                               if(!_loc15_)
                                                               {
                                                                  break loop38;
                                                               }
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(_loc8_);
                                                               }
                                                               else
                                                               {
                                                                  §§push(-_loc8_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§goto(addr0225);
                                                                  }
                                                               }
                                                            }
                                                            §§push(2.356194490192345);
                                                            if(!_loc14_)
                                                            {
                                                               break loop39;
                                                            }
                                                            break loop37;
                                                         }
                                                         break loop11;
                                                      }
                                                      _loc7_ = false;
                                                      loop40:
                                                      while(true)
                                                      {
                                                         loop41:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc15_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        break loop40;
                                                                     }
                                                                     if(§]!L§ == null)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§9!+§ != null)
                                                                        {
                                                                           §§push(§9!+§.§@p§.§!!_§);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(0);
                                                                              break loop38;
                                                                           }
                                                                           §§goto(addr0243);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc15_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              continue loop34;
                                                                           }
                                                                           §§goto(addr02aa);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(true);
                                                                        if(_loc15_)
                                                                        {
                                                                           _loc6_ = Boolean(§§pop());
                                                                           if(!_loc15_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop34;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc14_)
                                                                     {
                                                                        break loop41;
                                                                     }
                                                                  }
                                                                  _loc6_ = Boolean(§§pop());
                                                                  if(_loc14_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop34;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0282);
                                                            }
                                                            §§goto(addr0284);
                                                         }
                                                         §§goto(addr02a3);
                                                      }
                                                      §§goto(addr0290);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§findproperty(§%u§));
                                                         §§push(§%u§);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop() + 6.283185307179586);
                                                            if(_loc14_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(Number(§§pop()));
                                                         break;
                                                      }
                                                      §§pop().§%u§ = §§pop();
                                                      §§goto(addr00f7);
                                                   }
                                                }
                                                break;
                                             }
                                             _loc7_ = §§pop() < §§pop();
                                             continue loop40;
                                          }
                                          §§goto(addr010c);
                                       }
                                    }
                                    continue loop40;
                                 }
                              }
                              §§goto(addr0250);
                           }
                           else
                           {
                              §§goto(addr06ba);
                           }
                        }
                        §§push(§§pop() == §§pop());
                        break;
                     }
                     §§push(!§§pop());
                     if(!_loc14_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc14_)
                        {
                           _loc6_ = §§pop();
                           continue loop34;
                        }
                        continue loop30;
                     }
                     §§goto(addr02aa);
                  }
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(!_loc14_)
                           {
                              addr0225:
                              §§push(§#=§);
                              §§push(§0I§);
                              if(!_loc14_)
                              {
                                 break loop27;
                              }
                              break loop10;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc15_)
                              {
                                 addr0282:
                                 _loc5_ = §§pop();
                                 §§goto(addr0284);
                              }
                              §§goto(addr02bf);
                           }
                        }
                        §§goto(addr02c1);
                     }
                     §§goto(addr02e5);
                  }
                  §§goto(addr02c3);
               }
               loop29:
               while(true)
               {
                  loop30:
                  while(true)
                  {
                     loop31:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           while(true)
                           {
                              §§push(§%u§);
                              if(!_loc14_)
                              {
                                 addr0243:
                                 §§push(§"!$§);
                                 if(_loc14_)
                                 {
                                    break loop10;
                                 }
                                 §§push(§§pop() > §§pop());
                                 if(_loc14_)
                                 {
                                    break loop30;
                                 }
                                 §§push(§§pop() == §@m§);
                                 if(_loc14_)
                                 {
                                    break loop29;
                                 }
                                 _loc5_ = !§§pop();
                                 §§push(_loc5_);
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    addr0290:
                                    §§push(level.unpausedTime - §0I§);
                                 }
                                 else
                                 {
                                    §§push(false);
                                    if(!_loc15_)
                                    {
                                       break loop30;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(_loc14_)
                                    {
                                       break loop31;
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr02c1);
                                 }
                              }
                              §§push(0.5);
                              break loop10;
                           }
                           §§goto(addr02aa);
                        }
                        else
                        {
                           §§push(true);
                           if(_loc15_)
                           {
                              _loc5_ = Boolean(§§pop());
                              §§goto(addr0284);
                           }
                        }
                        §§goto(addr02c3);
                     }
                     §§goto(addr02e5);
                  }
                  §§goto(addr02de);
               }
               §§goto(addr02d7);
            }
            return;
         }
         addr02c3:
         addr02a3:
         §§push(§§pop() < §§pop());
         if(!_loc14_)
         {
            addr02aa:
            _loc4_ = §§pop();
            addr02c1:
            §§push(_loc4_);
         }
         while(true)
         {
            if(§§pop())
            {
               if(_loc14_)
               {
                  break;
               }
               §§push(physicsData.§8h§);
               if(_loc15_)
               {
                  addr02de:
                  _loc3_ = §§pop();
                  break;
               }
            }
            else
            {
               §§push(false);
            }
            addr02e5:
            _loc3_ = §§pop();
            if(_loc15_)
            {
               break;
            }
            break loop11;
         }
         if(_loc3_)
         {
            break loop11;
         }
         _loc9_ = transform.§<!C§();
         if(physicsData.§8h§)
         {
            _loc9_.y -= 1;
         }
         while(true)
         {
            §§push(Number(Math.sqrt(_loc9_.x * _loc9_.x + _loc9_.y * _loc9_.y)));
            if(_loc15_)
            {
               §§push(Number(§§pop()));
               if(!_loc15_)
               {
                  break;
               }
               _loc8_ = §§pop();
               §§push(Number(Math.atan2(_loc9_.y,_loc9_.x)));
               if(!_loc15_)
               {
                  break;
               }
               §§push(§%u§);
               if(!_loc14_)
               {
                  §§push(§§pop() - §"!$§);
               }
               §§push(§§pop() + §§pop());
               if(_loc14_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            if(!_loc14_)
            {
               break;
            }
            §§goto(addr0388);
         }
         addr0388:
         _loc10_ = §§pop();
         §§push(_loc9_);
         §§push(_loc8_);
         if(!_loc14_)
         {
            §§push(§§pop() * Number(Math.cos(_loc10_)));
         }
         §§pop().x = §§pop();
         if(_loc15_)
         {
            §§push(_loc9_);
            §§push(_loc8_);
            if(_loc15_)
            {
               §§push(§§pop() * Number(Math.sin(_loc10_)));
            }
            §§pop().y = §§pop();
         }
         transform.§"w§(_loc9_);
         _loc11_ = §[!G§.§>l§;
         if(_loc15_)
         {
            §§push(false);
            if(!_loc14_)
            {
               if(§"6§)
               {
                  if(!_loc14_)
                  {
                     §§pop();
                     §§push(param1);
                     if(_loc15_)
                     {
                        §§push(!§§pop());
                        if(_loc15_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
            }
            if(§§pop())
            {
               _loc11_.y = 0;
            }
         }
         loop14:
         while(true)
         {
            loop15:
            while(true)
            {
               §§push(Number(Math.sqrt(_loc11_.x * _loc11_.x + _loc11_.y * _loc11_.y)));
               if(!_loc14_)
               {
                  _loc8_ = Number(§§pop());
                  loop23:
                  while(true)
                  {
                     loop24:
                     while(true)
                     {
                        loop25:
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              §§push(Number(Math.atan2(_loc11_.y,_loc11_.x)));
                              if(!_loc14_)
                              {
                                 §§push(§%u§);
                                 if(_loc14_)
                                 {
                                    break loop14;
                                 }
                                 §§push(§§pop() - §"!$§);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc15_)
                                 {
                                    break loop24;
                                 }
                              }
                              §§push(Number(§§pop()));
                              if(_loc14_)
                              {
                                 break loop23;
                              }
                              _loc10_ = §§pop();
                           }
                           §§push(_loc11_);
                           §§push(_loc8_);
                           if(_loc15_)
                           {
                              §§push(§§pop() * Number(Math.cos(_loc10_)));
                           }
                           §§pop().x = §§pop();
                           §§push(_loc11_);
                           §§push(_loc8_);
                           if(!_loc14_)
                           {
                              §§push(§§pop() * Number(Math.sin(_loc10_)));
                           }
                           §§pop().y = §§pop();
                           while(true)
                           {
                              if(_loc15_)
                              {
                                 §§push(§%u§);
                                 §§push(§"!$§);
                                 if(_loc15_)
                                 {
                                    break loop25;
                                 }
                                 break loop14;
                              }
                              addr04cf:
                              if(_loc12_ >= 0)
                              {
                                 if(_loc15_)
                                 {
                                    break;
                                 }
                                 break loop15;
                              }
                              §§push(_loc12_);
                              break loop23;
                           }
                           addr04de:
                           §§push(_loc12_);
                           break loop24;
                        }
                        §§push(§§pop() - §§pop());
                        if(!_loc15_)
                        {
                           break loop23;
                        }
                        _loc12_ = §§pop();
                        if(_loc15_)
                        {
                           §§goto(addr04cf);
                        }
                        §§goto(addr04de);
                     }
                  }
                  §§push(-§§pop());
               }
               break loop24;
            }
            §[!G§.§>l§.x = 0;
            continue loop16;
         }
         if(§§pop() > §§pop())
         {
            if(!_loc14_)
            {
               break loop15;
            }
         }
         _loc13_ = §[!G§.§#!Q§;
         loop16:
         while(true)
         {
            loop17:
            while(true)
            {
               if(!_loc14_)
               {
                  §§push(Number(Math.sqrt(_loc13_.x * _loc13_.x + _loc13_.y * _loc13_.y)));
                  if(!_loc14_)
                  {
                     _loc8_ = §§pop();
                     if(!_loc15_)
                     {
                        break loop16;
                     }
                     §§push(Number(Math.atan2(_loc13_.y,_loc13_.x)));
                  }
                  loop19:
                  while(true)
                  {
                     loop20:
                     while(true)
                     {
                        §§push(§%u§);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - §"!$§);
                           if(!_loc14_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc14_)
                              {
                                 _loc10_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    break loop16;
                                 }
                                 §§push(_loc13_);
                                 §§push(_loc8_);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() * Number(Math.cos(_loc10_)));
                                 }
                                 §§pop().x = §§pop();
                                 §§push(_loc13_);
                                 §§push(_loc8_);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() * Number(Math.sin(_loc10_)));
                                 }
                                 §§pop().y = §§pop();
                                 if(!_loc15_)
                                 {
                                    break loop17;
                                 }
                                 while(true)
                                 {
                                    §§push(§%u§);
                                    if(_loc14_)
                                    {
                                       break loop20;
                                    }
                                 }
                                 break;
                                 addr05c8:
                              }
                              while(true)
                              {
                                 §§push(3.141592653589793);
                                 if(_loc14_)
                                 {
                                    break loop19;
                                 }
                              }
                           }
                           break loop19;
                        }
                        while(§§pop() > §§pop())
                        {
                           §§push(§§findproperty(§%u§));
                           §§push(§%u§);
                           if(!_loc14_)
                           {
                              §§push(§§pop() - 6.283185307179586);
                           }
                           §§pop().§%u§ = §§pop();
                           §§goto(addr05c8);
                        }
                        §§goto(addr0604);
                     }
                     while(true)
                     {
                        §§push(-3.141592653589793);
                        break loop19;
                        §§push(§%u§);
                     }
                  }
                  while(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(§§findproperty(§%u§));
                        §§push(§%u§);
                        if(_loc15_)
                        {
                           §§push(§§pop() + 6.283185307179586);
                           if(!_loc15_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§%u§ = §§pop();
                     while(true)
                     {
                        §§push(§%u§);
                        break loop20;
                     }
                  }
               }
               §"!$§ = §%u§;
               §0I§ = tunnel.unpausedTime;
               break loop16;
            }
            while(true)
            {
               §§push(physicsData.§8h§);
               if(!_loc14_)
               {
                  §§goto(addr0671);
               }
               §§goto(addr0685);
            }
            §§goto(addr0686);
         }
         §29§();
         while(true)
         {
            §§push(§"6§);
            if(!_loc14_)
            {
               if(!§§pop())
               {
                  break;
               }
               §§push(false);
               if(_loc15_)
               {
                  if(§[!G§.§>l§.y < 0)
                  {
                     if(!_loc14_)
                     {
                        §§pop();
                        break loop17;
                     }
                  }
                  addr0686:
                  if(§§pop())
                  {
                     if(_loc14_)
                     {
                        break;
                     }
                     §[!G§.§>l§.y = 0;
                  }
                  §§push(physicsData);
                  §§push(0);
                  §§push(physicsData.§=8§);
                  if(_loc15_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§%q§(§§pop(),§§pop());
                  break;
               }
            }
            addr0671:
            §§push(!§§pop());
            if(_loc15_)
            {
               addr0685:
               §§push(Boolean(§§pop()));
            }
            §§goto(addr0686);
         }
         addr06ba:
      }
      
      override public function display(param1:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as §8J§;
         if(!_loc4_)
         {
            § L§.mid = 490344;
            if(!_loc4_)
            {
               while(true)
               {
                  if(§'+§ != null)
                  {
                     if(_loc3_)
                     {
                        §'+§.update(param1);
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  if(§#[§.active)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     _loc2_ = §#[§;
                     if(!_loc4_)
                     {
                        _loc2_.§"@§.tunnel.§%K§.y = § !W§.§7!,§.y * 0.4;
                        if(_loc3_)
                        {
                           _loc2_.§"@§.tunnel.§4-§ = _loc2_.cameraRotation;
                        }
                     }
                  }
                  super.display(param1);
                  break;
               }
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = null as StringMap;
         var _loc6_:* = null as String;
         var _loc7_:* = null as Vector.<Function>;
         var _loc8_:* = null;
         var _loc2_:StringMap = §]!K§;
         var _loc3_:String = param1.type;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        §§push(_loc3_);
                        if(_loc9_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(_loc10_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 addr0065:
                                 §§push(_loc2_.existsReserved(_loc3_));
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                              break loop1;
                           }
                           §§push(_loc3_);
                        }
                        §§push(§§pop() in _loc2_.h);
                        if(!_loc10_)
                        {
                           break loop2;
                        }
                        break loop4;
                     }
                     §§goto(addr0065);
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc10_)
                  {
                     break loop2;
                  }
                  break;
               }
               §§goto(addr0146);
            }
            if(§§pop())
            {
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc4_ = §§pop();
               }
               break;
            }
            §§goto(addr0145);
         }
         _loc5_ = §]!K§;
         while(true)
         {
            if(!_loc10_)
            {
               _loc6_ = param1.type;
               if(!_loc10_)
               {
                  if(!(_loc6_ in StringMap.§+!#§))
                  {
                     §§push(_loc5_.h[_loc6_]);
                     break;
                  }
               }
            }
            §§push(_loc5_.getReserved(_loc6_));
            break;
         }
         _loc7_ = §§pop();
         if(_loc9_)
         {
            while(_loc4_ < int(_loc7_.length))
            {
               §§push(_loc7_[_loc4_]);
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               _loc8_ = §§pop();
               if(_loc9_)
               {
                  _loc4_++;
                  if(!_loc9_)
                  {
                     continue;
                  }
               }
               _loc8_(param1);
            }
         }
         addr0146:
         return true;
         addr0145:
      }
      
      public function §%9§(param1:§%!§, param2:Point3D) : Boolean
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc5_:* = null as Vector.<String>;
         var _loc6_:* = 0;
         var _loc7_:* = null as Vector.<String>;
         var _loc8_:* = null as §[C§;
         var _loc9_:Number = NaN;
         var _loc10_:* = null as §<!O§;
         var _loc11_:* = NaN;
         var _loc12_:* = null as Point3D;
         if(!_loc14_)
         {
            § L§.low = 928488;
         }
         var _loc3_:Transform = transform.§=0§;
         var _loc4_:Point3D = §;!C§.§ i§.normal;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop22:
               while(true)
               {
                  §§push(false);
                  if(!_loc14_)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           loop28:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(param1.§-J§);
                                 if(!_loc14_)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(param1 is §+`§);
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          if(param1.model.visible)
                                          {
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                             §5!1§(param1);
                                          }
                                          return false;
                                       }
                                       break loop28;
                                    }
                                    §§push(param1 is §[C§);
                                    if(_loc14_)
                                    {
                                       break loop0;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          §§push(false);
                                          if(_loc4_.y < -0.1)
                                          {
                                             addr00cc:
                                             §§pop();
                                             §§push(§?`§.active);
                                             if(!_loc14_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                break loop0;
                                             }
                                             break loop22;
                                          }
                                          break loop0;
                                       }
                                       break loop1;
                                    }
                                    §§push(false);
                                    §§push(§;!C§.§ i§.§]!1§);
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       break loop22;
                                    }
                                    §§pop();
                                    if(_loc14_)
                                    {
                                       break;
                                    }
                                    §§goto(addr03b9);
                                 }
                                 §§goto(addr03c3);
                              }
                              §§goto(addr03ec);
                           }
                           §§goto(addr03cd);
                        }
                        §§goto(addr03dd);
                     }
                     §§goto(addr03f5);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr03c2);
            }
            §7o§.controlScheme.§#6§("jump",0);
            physicsData.§&!>§ = tunnel.unpausedTime;
            while(true)
            {
               if(!_loc14_)
               {
                  §?`§.§=!J§();
                  if(_loc13_)
                  {
                     _loc5_ = §=N§;
                     loop24:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              §§push(int(_loc5_.indexOf("jump",0)));
                              if(_loc13_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                              }
                              _loc6_ = §§pop();
                              if(_loc14_)
                              {
                                 break loop24;
                              }
                           }
                           §§push(_loc6_);
                           break;
                        }
                        if(§§pop() != -1)
                        {
                           break;
                        }
                        §§goto(addr016d);
                     }
                     _loc7_ = _loc5_.splice(_loc6_,1);
                     §§goto(addr016d);
                  }
                  else
                  {
                     §§goto(addr03dd);
                  }
               }
               else
               {
                  §§goto(addr03cd);
               }
               §§goto(addr03f5);
            }
            §§goto(addr0402);
         }
         loop2:
         while(true)
         {
            if(§§pop())
            {
               if(!_loc14_)
               {
                  break loop1;
               }
               addr03b9:
               addr03c3:
               addr03c2:
               if(§4!Z§ == 0)
               {
                  if(_loc13_)
                  {
                     addr03cd:
                     §9!+§ = null;
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
                  addr03dd:
                  §#P§ = level.unpausedTime;
                  addr03ec:
                  §<a§(_loc4_);
               }
               break;
            }
            addr016d:
            _loc8_ = param1;
            while(true)
            {
               if(_loc13_)
               {
                  §§push(!§=5§(_loc8_,_loc4_,§;!C§.§ i§.§;!R§));
                  if(!_loc14_)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc13_)
                              {
                                 break;
                              }
                              §§push(false);
                              if(!_loc14_)
                              {
                                 return §§pop();
                              }
                              addr020e:
                              §§push(_loc8_.§5!J§ < 0);
                              if(!_loc13_)
                              {
                                 break loop4;
                              }
                              addr021d:
                              §§push(Boolean(§§pop()));
                           }
                           else
                           {
                              §§push(true);
                              §§push(true);
                              if(_loc13_)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    if(!_loc14_)
                                    {
                                       if(_loc8_.§@!B§ == null)
                                       {
                                          break;
                                       }
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                    }
                                    §§pop();
                                    §§push(§!0§);
                                    if(!_loc14_)
                                    {
                                       §§push(0);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc14_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          break;
                                       }
                                       addr0203:
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             §§pop();
                                             §§goto(addr020e);
                                          }
                                       }
                                       §§goto(addr021d);
                                    }
                                    addr0201:
                                    §§goto(addr0203);
                                 }
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(false);
                                    if(_loc14_)
                                    {
                                       break loop4;
                                    }
                                    §§goto(addr0201);
                                    §§push(§!0§);
                                 }
                                 §§push(1);
                              }
                           }
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§push(!(_loc8_.§@!B§ is §9!5§));
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc13_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    §§push(§?`§);
                                    §§push(§[R§);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() + 0.15);
                                       if(!_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§pop().§[R§ = §§pop();
                                    while(true)
                                    {
                                       if(!_loc14_)
                                       {
                                          _loc9_ = Number(param2.x);
                                          while(true)
                                          {
                                             if(_loc9_ >= 0)
                                             {
                                                §§push(_loc9_);
                                             }
                                             else
                                             {
                                                §§push(_loc9_);
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                §§push(-§§pop());
                                             }
                                             if(§§pop() < 0.1)
                                             {
                                                §§push(§;!C§.§ i§.§]!1§);
                                                break loop8;
                                             }
                                             break loop2;
                                          }
                                          §§goto(addr040c);
                                       }
                                       §§goto(addr02b4);
                                    }
                                    §§goto(addr02be);
                                 }
                              }
                              §§push(!§§pop());
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc13_)
                              {
                                 addr02b4:
                                 param2.y = 0;
                                 param2.z = 0;
                              }
                           }
                           addr02be:
                           §§push(false);
                           §§push(!§?`§.active);
                           break loop4;
                        }
                        _loc10_ = _loc8_.§ !&§;
                        loop19:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc8_.§5!J§);
                              if(!_loc14_)
                              {
                                 if(§§pop() < 3600)
                                 {
                                    break loop2;
                                 }
                                 §§push(_loc8_.§5!J§ + 0.1);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc13_)
                                 {
                                    §§push(3600);
                                    if(!_loc13_)
                                    {
                                       break loop19;
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§push(§§pop() * 75);
                              }
                              §§push(20);
                              break loop19;
                           }
                           if(§§pop() < _loc11_)
                           {
                              §§goto(addr035e);
                           }
                           else
                           {
                              §§push(§<!B§());
                              if(!_loc14_)
                              {
                                 §§goto(addr0383);
                              }
                              §§goto(addr0384);
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc14_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc14_)
                                 {
                                    _loc11_ = §§pop();
                                    addr035e:
                                    if(_loc13_)
                                    {
                                       §§push(§<!B§());
                                       break loop20;
                                    }
                                    §%8§(_loc11_);
                                    if(!_loc14_)
                                    {
                                       param2.y = 0;
                                       break loop2;
                                    }
                                    addr038d:
                                    param2.y *= 0.5;
                                    break loop2;
                                 }
                                 break;
                              }
                              break loop20;
                           }
                           addr0383:
                           §§push(Number(§§pop()));
                           break;
                        }
                        addr0384:
                        if(§§pop() >= _loc11_ * 1.4)
                        {
                           break loop2;
                        }
                        §§goto(addr038d);
                     }
                     if(§§pop())
                     {
                        §§pop();
                        §§push(_loc8_.§ !&§ == null);
                        if(!_loc14_)
                        {
                           §§push(!§§pop());
                        }
                     }
                     if(§§pop())
                     {
                        break loop5;
                     }
                     break loop2;
                  }
                  break;
               }
               §?`§.§[R§ = §[R§;
               break loop2;
            }
            addr0402:
            if(§§pop())
            {
               addr040c:
               _loc9_ = §§pop();
               _loc12_ = param2;
               loop11:
               while(true)
               {
                  if(_loc12_ == null)
                  {
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc12_ = new Point3D(0,0,0);
                  }
                  _loc12_.x = param2.x * _loc9_;
                  _loc12_.y = param2.y * _loc9_;
                  §§push(_loc12_);
                  §§push(param2.z);
                  if(!_loc14_)
                  {
                     §§push(§§pop() * _loc9_);
                  }
                  §§pop().z = §§pop();
                  loop12:
                  while(true)
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
                                    while(true)
                                    {
                                       §§push(§[!G§.§>l§.x + param2.x);
                                       if(!_loc14_)
                                       {
                                          §§push(70);
                                          if(_loc13_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§push(param2);
                                                §§push(70);
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() - §[!G§.§>l§.x);
                                                }
                                                §§pop().x = §§pop();
                                                if(_loc14_)
                                                {
                                                   break loop17;
                                                }
                                                if(param2.x < 0)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      param2.x = 0;
                                                   }
                                                   else
                                                   {
                                                      addr04eb:
                                                      if(param2.x > 0)
                                                      {
                                                         param2.x = 0;
                                                         if(!_loc13_)
                                                         {
                                                            break loop16;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(§[!G§.§>l§.x + param2.x);
                                                if(_loc14_)
                                                {
                                                   break;
                                                }
                                                §§push(-70);
                                                if(_loc14_)
                                                {
                                                   break loop13;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(param2);
                                                   §§push(-70);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() - §[!G§.§>l§.x);
                                                   }
                                                   §§pop().x = §§pop();
                                                   §§goto(addr04eb);
                                                }
                                             }
                                             §§push(§[!G§.§>l§.y + param2.y);
                                             if(!_loc13_)
                                             {
                                                break loop12;
                                             }
                                             §§push(70);
                                             if(_loc14_)
                                             {
                                                break loop15;
                                             }
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             §§push(param2);
                                             §§push(70);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() - §[!G§.§>l§.y);
                                             }
                                             §§pop().y = §§pop();
                                             if(param2.y < 0)
                                             {
                                                param2.y = 0;
                                             }
                                             break loop14;
                                          }
                                          §§push(§[!G§.§>l§.y + param2.y);
                                          if(!_loc13_)
                                          {
                                             break loop12;
                                          }
                                       }
                                       §§push(-70);
                                       if(_loc13_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             break loop17;
                                          }
                                          break loop14;
                                       }
                                       break loop13;
                                    }
                                    §§goto(addr05ba);
                                 }
                                 §§push(param2);
                                 §§push(-70);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() - §[!G§.§>l§.y);
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc13_)
                                 {
                                    if(param2.y > 0)
                                    {
                                       break;
                                    }
                                 }
                                 break loop14;
                              }
                              param2.y = 0;
                              if(_loc13_)
                              {
                                 break loop14;
                              }
                              break loop11;
                           }
                           §§goto(addr05d4);
                        }
                        §§push(param2.z);
                        if(_loc13_)
                        {
                           addr05ba:
                           §§push(100);
                           if(!_loc14_)
                           {
                              break;
                           }
                           break loop15;
                        }
                        break loop12;
                     }
                     if(§§pop() > §§pop())
                     {
                        param2.z = 100;
                        break loop11;
                     }
                     §§push(param2.z);
                     break;
                  }
                  addr05d4:
                  if(§§pop() < -100)
                  {
                     param2.z = -100;
                  }
                  break;
               }
               addr05dd:
               return true;
               §§push(§`@§);
            }
            §§goto(addr05dd);
         }
         addr03f5:
         §§goto(addr0402);
      }
      
      public function §=5§(param1:§[C§, param2:Point3D, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as §"B§;
         var _loc8_:* = null as §"B§;
         var _loc9_:* = null as §"B§;
         var _loc10_:* = null as Point3D;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         if(!_loc13_)
         {
            § L§.low = 237522;
            while(true)
            {
               if(_loc14_)
               {
                  §9!+§ = param1;
                  if(!_loc14_)
                  {
                     break;
                  }
               }
               §#P§ = level.unpausedTime;
               break;
            }
         }
         var _loc4_:§!!P§ = param1.§@!B§;
         var _loc5_:§8i§ = null;
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               if(_loc4_ != null)
               {
                  if(_loc13_)
                  {
                     break;
                  }
                  _loc4_.§6p§(param1.§;!C§.§ i§,§;!C§.§ i§);
                  if(_loc13_)
                  {
                     break loop6;
                  }
                  if(_loc4_ is §8i§)
                  {
                     _loc5_ = _loc4_;
                  }
               }
               while(true)
               {
                  §§push(true);
                  if(_loc4_ != null)
                  {
                     §§pop();
                     while(true)
                     {
                        if(!_loc13_)
                        {
                           break loop7;
                        }
                        §§goto(addr0466);
                     }
                     §§goto(addr0479);
                  }
                  addr00e2:
                  if(§§pop())
                  {
                     §§push(§;!C§.§ i§.§]!1§);
                     break;
                  }
                  while(true)
                  {
                     §§push(false);
                     if(_loc4_ != null)
                     {
                        if(_loc14_)
                        {
                           §§pop();
                           if(_loc13_)
                           {
                              break;
                           }
                           §§goto(addr0455);
                        }
                        §§goto(addr0461);
                     }
                     §§goto(addr0462);
                  }
                  §§goto(addr0466);
               }
               loop17:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(param1.§@p§.rotation == null)
                        {
                           _loc6_ = param1.§%_§();
                        }
                        else
                        {
                           _loc7_ = param1.transform.§+n§();
                           _loc8_ = param1.§@p§.rotation;
                           _loc9_ = _loc7_;
                           loop19:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc13_)
                                 {
                                    if(_loc9_ != null)
                                    {
                                       break;
                                    }
                                    if(!_loc14_)
                                    {
                                       break loop19;
                                    }
                                 }
                                 _loc9_ = new §"B§();
                                 break;
                              }
                              §§push(_loc9_);
                              §§push(_loc8_.x);
                              if(!_loc13_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().x = §§pop();
                              if(!_loc13_)
                              {
                                 §§push(_loc9_);
                                 §§push(_loc8_.y);
                                 if(_loc14_)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().y = §§pop();
                                 if(!_loc13_)
                                 {
                                    §§push(_loc9_);
                                    §§push(_loc8_.z);
                                    if(!_loc13_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().z = §§pop();
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc9_.w = _loc8_.w;
                              }
                              break;
                           }
                           _loc6_ = param1.transform.§<!C§();
                           _loc10_ = param1.§%_§();
                           while(true)
                           {
                              if(_loc14_)
                              {
                                 _loc6_.x = _loc10_.x;
                                 if(_loc14_)
                                 {
                                    _loc6_.y = _loc10_.y;
                                    if(!_loc14_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc6_.z = _loc10_.z;
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                              }
                              §4!R§.§@!M§(_loc7_,_loc6_,_loc6_);
                              break;
                           }
                        }
                        loop22:
                        while(true)
                        {
                           loop23:
                           while(true)
                           {
                              §§push(_loc6_.x * param3.x);
                              §§push(_loc6_.y * param3.y);
                              if(!_loc13_)
                              {
                                 loop24:
                                 while(true)
                                 {
                                    loop25:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc6_.z);
                                          if(!_loc13_)
                                          {
                                             §§push(§§pop() * param3.z);
                                             if(_loc13_)
                                             {
                                                break loop24;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc14_)
                                             {
                                                break loop25;
                                             }
                                             _loc11_ = §§pop();
                                             §§push(_loc11_);
                                             §§push(-1e-10);
                                             if(_loc13_)
                                             {
                                                break loop24;
                                             }
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc14_)
                                             {
                                                §<a§(param2);
                                                §§push(_loc11_);
                                                break loop25;
                                             }
                                             break loop17;
                                          }
                                          break loop23;
                                       }
                                       §§push(1e-10);
                                       break loop24;
                                    }
                                    _loc12_ = §§pop();
                                    if(_loc14_)
                                    {
                                       if(_loc12_ >= 0)
                                       {
                                          if(_loc14_)
                                          {
                                             §§push(_loc12_);
                                             break loop26;
                                          }
                                          break loop22;
                                       }
                                       §§push(-_loc12_);
                                       break loop26;
                                    }
                                    break loop22;
                                 }
                              }
                              break loop24;
                           }
                        }
                        §+!^§(_loc5_.§>!I§);
                        break loop23;
                     }
                     loop27:
                     while(true)
                     {
                        §§push(param2.z);
                        if(!_loc13_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc13_)
                              {
                                 _loc11_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    break loop6;
                                 }
                                 break loop27;
                              }
                              §§goto(addr031e);
                           }
                        }
                        §§goto(addr031f);
                     }
                     §§goto(addr0479);
                  }
                  §§goto(addr0485);
               }
               §§goto(addr048f);
            }
            §§push(_loc4_.§8g§);
            if(_loc13_)
            {
               continue loop17;
            }
            §§push(Boolean(§§pop()));
            if(!_loc14_)
            {
               continue loop17;
            }
            §§goto(addr00e2);
         }
         loop8:
         while(true)
         {
            §§push(_loc11_);
            if(_loc14_)
            {
               if(§§pop() >= 0)
               {
                  if(_loc13_)
                  {
                     addr0455:
                     addr0461:
                     addr0462:
                     §§push(_loc4_.§8g§);
                     if(!_loc13_)
                     {
                        §§push(!§§pop());
                     }
                     if(Boolean(§§pop()))
                     {
                        §;7§(param2);
                        addr0466:
                     }
                     break;
                  }
                  §§push(_loc11_);
                  if(_loc13_)
                  {
                     addr031e:
                     §§push(-§§pop());
                  }
               }
               else
               {
                  §§push(_loc11_);
                  if(_loc14_)
                  {
                     §§goto(addr031e);
                  }
               }
            }
            addr031f:
            if(§§pop() < 1e-10)
            {
               _loc6_ = param1.§%_§();
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           if(!_loc13_)
                           {
                              §§push(_loc6_.x * param3.x + _loc6_.y * param3.y);
                              §§push(_loc6_.z);
                              if(_loc14_)
                              {
                                 §§push(param3.z);
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc14_)
                                 {
                                    break loop10;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc14_)
                                 {
                                    break loop11;
                                 }
                                 _loc12_ = Number(§§pop());
                                 if(_loc13_)
                                 {
                                    break loop8;
                                 }
                                 §§push(_loc12_);
                                 if(!_loc14_)
                                 {
                                    break loop11;
                                 }
                                 §§push(0.8);
                                 if(_loc13_)
                                 {
                                    break loop10;
                                 }
                              }
                              if(§§pop() <= §§pop())
                              {
                                 break loop9;
                              }
                              §<a§(param1.§%_§(),false);
                              if(_loc5_ == null)
                              {
                                 break loop9;
                              }
                              while(true)
                              {
                                 §§push(§§findproperty(§%u§));
                                 §§push(§%u§);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() + _loc5_.§>!I§);
                                    if(!_loc14_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              §§pop().§%u§ = §§pop();
                           }
                           while(true)
                           {
                              §§push(§%u§);
                              §§push(§"!$§);
                              §§push(3.141592653589793);
                              if(!_loc14_)
                              {
                                 break loop12;
                              }
                              if(§§pop() > §§pop() + §§pop())
                              {
                                 §§push(§§findproperty(§%u§));
                                 §§push(§%u§);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - 6.283185307179586);
                                 }
                                 §§pop().§%u§ = §§pop();
                                 continue;
                              }
                              §§goto(addr041d);
                           }
                           break;
                        }
                        §§goto(addr042b);
                     }
                     while(true)
                     {
                        §§push(§"!$§);
                        break loop10;
                        §§push(§%u§);
                     }
                  }
                  while(true)
                  {
                     §§push(3.141592653589793);
                     addr042b:
                     while(true)
                     {
                        if(§§pop() >= §§pop() - §§pop())
                        {
                           break loop9;
                        }
                        §§push(§§findproperty(§%u§));
                        §§push(§%u§);
                        if(!_loc13_)
                        {
                           §§push(§§pop() + 6.283185307179586);
                           if(!_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().§%u§ = §§pop();
                        while(true)
                        {
                           §§push(§%u§);
                           break loop11;
                        }
                     }
                     break loop9;
                  }
               }
               §;7§(param2);
            }
            break;
         }
         addr0479:
         §-9§ = §>!7§;
         addr0485:
         if(_loc4_ != null)
         {
            addr048f:
            §§push(_loc4_.§9U§(this,param1,param2));
            if(_loc14_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc14_)
               {
                  §§goto(addr04a9);
               }
            }
            return §§pop();
         }
         §§push(true);
         addr04a9:
         return §§pop();
      }
      
      public function §?J§() : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = null as String;
         var _loc4_:* = null as TunnelSection;
         var _loc5_:* = null as TunnelSection;
         var _loc1_:§!!5§ = null;
         loop0:
         while(true)
         {
            if(!_loc7_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc6_)
                        {
                           §§push(false);
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(§9!+§ == null)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              break loop2;
                           }
                           §§pop();
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                        }
                        §§push(§9!+§.§@!B§ == null);
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        break;
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(§9!+§.§@!B§ is §!!5§);
                        break loop1;
                     }
                  }
                  §§push(!§§pop());
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break loop3;
               }
               if(!§§pop())
               {
                  break;
               }
            }
            _loc1_ = §9!+§.§@!B§;
            if(!_loc7_)
            {
               §§push(false);
               if(!_loc7_)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(false);
                        if(!_loc7_)
                        {
                           if(!physicsData.onGround)
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              break loop4;
                           }
                        }
                        §§pop();
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§push(§?`§.active);
                              if(_loc6_)
                              {
                                 §§push(!§§pop());
                                 if(_loc6_)
                                 {
                                    break loop4;
                                 }
                                 break loop5;
                              }
                              break loop4;
                           }
                           addr011b:
                           §§push(Boolean(§§pop()));
                           break;
                        }
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              §§push(_loc1_.§ !_§);
                              §§push(§<!B§());
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§push(§§pop() > §§pop());
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           §§goto(addr011b);
                        }
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop5;
               }
               if(§§pop())
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop17:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 §§push(int(§73§.terrain.indexOf(§9!+§,0)));
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc7_)
                                 {
                                    break loop17;
                                 }
                                 §§push(null);
                                 if(!_loc6_)
                                 {
                                    break loop9;
                                 }
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    break loop9;
                                 }
                                 _loc3_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    break loop8;
                                 }
                              }
                              §§push(_loc2_);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 if(_loc6_)
                                 {
                                    break loop8;
                                 }
                                 continue loop10;
                              }
                              §§goto(addr02ae);
                           }
                           §§goto(addr01a7);
                        }
                        §%8§(_loc1_.§ !_§);
                        §§goto(addr02d7);
                     }
                     if(§§pop() == "box")
                     {
                        if(_loc6_)
                        {
                           break loop17;
                        }
                     }
                     break loop0;
                  }
                  addr02d7:
                  §§push(§73§.layout.§6!,§(_loc2_,0,0,1));
                  if(!_loc7_)
                  {
                     addr01a7:
                     §§push(int(§§pop()));
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc6_)
                  {
                     _loc4_ = §73§;
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              § L§.low = 948729;
                              if(!_loc6_)
                              {
                                 break loop10;
                              }
                              §§push(false);
                              if(_loc6_)
                              {
                                 if(_loc2_ < 0)
                                 {
                                    break;
                                 }
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(_loc7_)
                              {
                                 break loop10;
                              }
                           }
                           §§push(_loc2_ < int(_loc4_.terrain.length));
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(_loc4_.terrain[_loc2_]);
                        }
                        else
                        {
                           §§push(null);
                        }
                        if(§§pop() != null)
                        {
                           break;
                        }
                        §§goto(addr02ae);
                     }
                     _loc5_ = §73§;
                     loop12:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           § L§.low = 948729;
                           if(_loc7_)
                           {
                              break;
                           }
                        }
                        loop13:
                        while(true)
                        {
                           loop14:
                           while(true)
                           {
                              §§push(§"=§.§,n§);
                              if(!_loc7_)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc7_)
                                    {
                                       if(_loc2_ < 0)
                                       {
                                          break;
                                       }
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                    }
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() < int(_loc5_.terrain.length));
                                          if(_loc6_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          break;
                                       }
                                       break loop14;
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    §§push(null);
                                    break loop13;
                                 }
                              }
                              §§push(_loc5_.terrain[_loc2_]);
                              break loop13;
                           }
                           while(true)
                           {
                              §§push(§§pop()[§§pop()]);
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                           _loc3_ = §§pop();
                           break loop12;
                        }
                        §§push(§§pop().§@p§.§<T§);
                        break loop14;
                     }
                     addr02ae:
                     §§push(_loc3_);
                     break loop9;
                  }
                  var _temp_1:* = §?`§;
                  §§push(_temp_1);
                  §§push(_temp_1.§@4§);
                  if(_loc6_)
                  {
                     §§push(§§pop() * 1.1);
                  }
                  §§pop().§@4§ = §§pop();
               }
            }
            break;
         }
         §§push(_loc1_ == null);
         if(!_loc7_)
         {
            return !§§pop();
         }
      }
      
      override public function §<!R§(param1:§ m§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            § m§.§@!K§(param1,§`!C§);
         }
      }
      
      public function §&!7§(param1:Object = undefined, param2:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(_loc7_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            param1 = 0;
            break;
         }
         §§push(§73§.§0!'§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        loop11:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc6_)
                              {
                                 if(§]!L§ == null)
                                 {
                                    break;
                                 }
                                 if(!_loc7_)
                                 {
                                    break loop11;
                                 }
                              }
                              §§pop();
                              §§push(§]!L§.§0!'§);
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(_loc7_)
                                 {
                                    break loop11;
                                 }
                                 break;
                              }
                              break loop10;
                           }
                           if(§§pop())
                           {
                              _loc3_ = §]!L§.§0!'§;
                           }
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              break loop3;
                           }
                           §§push(§§pop() - param1);
                           if(!_loc7_)
                           {
                              break loop2;
                           }
                           _loc3_ = §§pop();
                           if(transform.position.y <= -_loc3_)
                           {
                              if(§<!B§() < 0)
                              {
                                 §%8§(0);
                                 if(_loc6_)
                                 {
                                    addr00de:
                                    if(param2 == null)
                                    {
                                       addr00e5:
                                       §§push(tunnel.§6!=§());
                                       break loop3;
                                    }
                                    break loop1;
                                 }
                              }
                              return;
                           }
                           § L§.low = 653980;
                           if(_loc7_)
                           {
                              §§goto(addr00de);
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop12;
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr00fe);
               }
               param2 = §§pop();
               break loop1;
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(Number(Math.sqrt(2 * param2 * (_loc4_ >= 0 ? _loc4_ : -_loc4_))));
               if(!_loc6_)
               {
                  §§push(-§§pop());
                  if(_loc6_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc5_:* = §§pop();
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(true);
                           if(_loc7_)
                           {
                              if(_loc5_ == _loc5_)
                              {
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          break loop8;
                                       }
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          break loop7;
                                       }
                                       §§push(§§pop() > 0);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 §§push(0);
                                 if(_loc7_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    break loop5;
                                 }
                                 break loop6;
                              }
                              break loop5;
                           }
                           break;
                        }
                     }
                     §§push(§<!B§());
                     if(_loc7_)
                     {
                        break loop6;
                     }
                     break;
                  }
                  if(§§pop() < _loc5_)
                  {
                     if(!_loc6_)
                     {
                        §%8§(_loc5_);
                     }
                  }
                  break loop5;
               }
               §§push(Number(§§pop()));
               break loop7;
            }
            return;
         }
         §§push(_loc3_);
         if(_loc7_)
         {
            addr00fe:
            §§push(-§§pop() + §&N§);
         }
         §§push(§§pop() - transform.position.y);
         break loop2;
      }
      
      public function §<a§(param1:Point3D, param2:Boolean = true, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = false;
         var _loc7_:* = NaN;
         var _loc6_:Number = Number(param1.x);
         while(true)
         {
            loop7:
            while(true)
            {
               if(_loc10_)
               {
                  loop16:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(0);
                        if(_loc10_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc6_);
                              if(!_loc10_)
                              {
                                 break loop16;
                              }
                           }
                           else
                           {
                              §§push(-_loc6_);
                           }
                           loop18:
                           while(true)
                           {
                              if(§§pop() < 1e-10)
                              {
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 _loc7_ = Number(param1.y);
                                 loop19:
                                 while(true)
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(_loc7_);
                                             §§push(0);
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(-_loc7_);
                                                if(_loc10_)
                                                {
                                                   break loop20;
                                                }
                                                continue loop5;
                                             }
                                             if(_loc9_)
                                             {
                                                break loop19;
                                             }
                                          }
                                          §§push(_loc7_);
                                          break loop20;
                                       }
                                       §§goto(addr011a);
                                    }
                                    §§push(1e-10);
                                    if(!_loc10_)
                                    {
                                       break loop7;
                                    }
                                    §§push(§§pop() < §§pop());
                                    if(!_loc10_)
                                    {
                                       continue loop8;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(_loc10_)
                                    {
                                       _loc5_ = §§pop();
                                       break loop18;
                                    }
                                 }
                                 §§goto(addr01a8);
                              }
                              else
                              {
                                 §§push(false);
                                 if(!_loc10_)
                                 {
                                    continue loop8;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc9_)
                              {
                                 _loc5_ = §§pop();
                                 break;
                              }
                              continue loop8;
                           }
                           addr00b4:
                           §§push(_loc5_);
                           continue loop8;
                        }
                        §§goto(addr011a);
                     }
                     §§goto(addr0122);
                  }
                  §§goto(addr0123);
               }
               §§goto(addr00b4);
            }
            §§push(§§pop() - §§pop());
            if(!_loc9_)
            {
               §§goto(addr010a);
               §§push(param2);
            }
            §§goto(addr012b);
         }
         while(true)
         {
            loop9:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(-1.5707963267948966);
                  §§push(param3);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        §§push(Number(Math.atan2(-param1.y,-param1.x)));
                        break loop7;
                     }
                     loop13:
                     while(true)
                     {
                        §§push(Number(Math.atan2(param1.y,param1.x)));
                        if(!_loc9_)
                        {
                           break loop7;
                        }
                        addr0122:
                        addr0123:
                        §§push(§§pop() + §§pop());
                        if(!_loc9_)
                        {
                           addr012b:
                           _loc7_ = Number(§§pop());
                           if(!_loc9_)
                           {
                              loop0:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 loop5:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§"!$§);
                                       if(_loc10_)
                                       {
                                          §§push(3.141592653589793);
                                          if(!_loc10_)
                                          {
                                             break loop5;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                       }
                                       if(§§pop() > Number(§§pop()))
                                       {
                                          §§push(_loc7_);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() - 6.283185307179586);
                                             if(_loc10_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc7_ = §§pop();
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc10_)
                                          {
                                             §§push(§"!$§);
                                             break loop13;
                                          }
                                          break loop9;
                                          _loc7_ = §§pop();
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + 6.283185307179586);
                                                if(!_loc9_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          _loc7_ = §§pop();
                                          §§goto(addr0192);
                                       }
                                    }
                                 }
                                 break;
                              }
                              break loop5;
                           }
                           addr01a8:
                           §§push(_loc7_);
                           break loop9;
                        }
                        continue loop11;
                     }
                     while(true)
                     {
                        §§push(3.141592653589793);
                        break loop5;
                     }
                     addr01a1:
                  }
                  addr010a:
                  if(§§pop())
                  {
                     §§push(§"!$§);
                  }
                  else
                  {
                     addr011a:
                     §§push(0);
                     if(_loc9_)
                     {
                        §§goto(addr01a1);
                     }
                  }
                  §§goto(addr0122);
               }
               §§goto(addr01a8);
            }
            §§push(§§pop() - §"!$§);
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
            continue loop11;
         }
         var _loc8_:* = §§pop();
         loop10:
         while(true)
         {
            loop11:
            while(true)
            {
               while(true)
               {
                  §§push(_loc8_);
                  if(!_loc9_)
                  {
                     §§push(0);
                     if(!_loc10_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc10_)
                        {
                           break loop11;
                        }
                        §§push(_loc8_);
                        if(_loc10_)
                        {
                        }
                     }
                     else
                     {
                        §§push(_loc8_);
                        if(!_loc10_)
                        {
                           break loop10;
                        }
                        §§push(-§§pop());
                        if(_loc9_)
                        {
                           break loop10;
                        }
                     }
                  }
                  §§push(§§pop() < 1e-10);
                  if(_loc10_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop11;
                  }
                  if(!_loc9_)
                  {
                     §§push(§9@§);
                     break loop10;
                  }
                  §§goto(addr022c);
               }
               §§goto(addr021f);
            }
            return;
         }
         addr021f:
         if(§§pop() != 0)
         {
            §+!^§(0);
         }
         addr022c:
         §%u§ = _loc7_;
         if(_loc10_)
         {
            §"6§ = param4;
         }
         break loop11;
      }
      
      public function §;7§(param1:Point3D) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(1.5707963267948966);
         if(!_loc5_)
         {
            while(true)
            {
               §§push(§§pop() + Number(Math.atan2(param1.y,param1.x)));
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.5393804002589986);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            if(!_loc5_)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc5_)
                     {
                        if(_loc2_ > _loc3_)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           break loop2;
                        }
                     }
                     §§pop();
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(-§§pop());
                        }
                        §§push(§§pop() >= §§pop());
                        if(_loc4_)
                        {
                           break loop2;
                        }
                        break;
                     }
                  }
                  if(!§§pop())
                  {
                     break loop1;
                  }
                  if(!_loc4_)
                  {
                     break loop1;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop3;
            }
            §+!^§(_loc2_);
            break;
         }
      }
      
      public function §3r§(param1:Number, param2:Object = undefined, param3:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc4_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               while(true)
               {
                  §§push(false);
                  if(_loc5_)
                  {
                     param2 = §§pop();
                     break loop1;
                  }
                  addr006a:
                  §§pop();
                  §§push(Boolean(param2));
                  break;
               }
               addr006d:
               if(§§pop())
               {
                  while(true)
                  {
                     if(_loc5_)
                     {
                        §§push(§§findproperty(§%u§));
                        §§push(§%u§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + param1);
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().§%u§ = §§pop();
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     if(param3)
                     {
                        break loop0;
                     }
                     break;
                  }
               }
               §§goto(addr00c3);
            }
            while(true)
            {
               if(param3 == null)
               {
                  §§push(false);
                  if(_loc4_)
                  {
                     break;
                  }
                  param3 = §§pop();
               }
               §§push(true);
               if(_loc4_)
               {
                  break;
               }
               if(§4!Z§ != 0)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr006a);
         }
         §§push(§§findproperty(§0!N§));
         §§push(§?J§());
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         §§pop().§0!N§(§§pop());
         addr00c3:
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            §7b§(param1).push(param2);
         }
      }
      
      public function §9!S§(param1:String) : Boolean
      {
         return int(§=N§.indexOf(param1,0)) >= 0;
      }
      
      public function §%$§(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(int(§=N§.indexOf(param1,0)) < 0)
            {
               if(_loc2_)
               {
                  §=N§.push(param1);
               }
            }
         }
      }
   }
}

