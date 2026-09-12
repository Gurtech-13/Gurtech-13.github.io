package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import §-!!§.§8!8§;
   import §-!!§.§@b§;
   import §1^§.Transform;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §8!H§.§=l§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   import nme3D.§1![§;
   import nme3D.model.§%d§;
   import nme3D.model.§,T§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   
   public class ComingThrough extends §+Z§
   {
      
      public var skater:§^s§;
      
      public var §-P§:§^s§;
      
      public var §%!P§:Number;
      
      public var §'^§:§"B§;
      
      public var map:§,T§;
      
      public function ComingThrough()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               super(§>K§.§0x§,9,null,{
                  "stopLoadingAfter":10,
                  "startTilesLength":0,
                  "modifyData":function(param1:int, param2:String):String
                  {
                     var _temp_1:* = true;
                     var _loc7_:Boolean = false;
                     var _loc8_:Boolean = _temp_1;
                     var _loc3_:* = null as Array;
                     var _loc4_:* = 0;
                     var _loc5_:* = 0;
                     var _loc6_:* = 0;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       §§push(param1);
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(9);
                                       if(_loc7_)
                                       {
                                          break loop13;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          break loop11;
                                       }
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(param2);
                                             if(!_loc8_)
                                             {
                                                break loop9;
                                             }
                                             §§push(§§pop().split("|"));
                                             if(!_loc8_)
                                             {
                                                break loop4;
                                             }
                                             §§push(§§pop());
                                             if(_loc7_)
                                             {
                                                break loop4;
                                             }
                                             _loc3_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(0);
                                          if(_loc8_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc7_)
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                break loop3;
                                             }
                                          }
                                          continue loop11;
                                       }
                                    }
                                    §§push(_loc3_);
                                    break loop4;
                                 }
                                 §§goto(addr0081);
                              }
                              §§goto(addr0139);
                           }
                           §§goto(addr0151);
                        }
                        while(true)
                        {
                           §§push(int(§§pop().length));
                           if(!_loc7_)
                           {
                              addr0081:
                              §§push(int(§§pop()));
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           _loc5_ = §§pop();
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr013d);
                              }
                              §§goto(addr013e);
                           }
                           §§goto(addr0150);
                        }
                        §§goto(addr0137);
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        addr0137:
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           addr0139:
                           loop1:
                           while(§§pop() < §§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    _loc4_++;
                                    if(_loc8_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 _loc6_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(false);
                                          if(!_loc7_)
                                          {
                                             §§push(StringTools.startsWith(_loc3_[_loc6_],"terrain-"));
                                             if(_loc8_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             if(_loc7_)
                                             {
                                                break loop6;
                                             }
                                          }
                                          §§pop();
                                          if(_loc7_)
                                          {
                                             break loop1;
                                          }
                                       }
                                       §§push(_loc3_);
                                       if(_loc8_)
                                       {
                                          while(true)
                                          {
                                             addr0125:
                                             §§push(_loc6_);
                                             if(!_loc7_)
                                             {
                                                §§push(int(§§pop()[§§pop()].indexOf("~crumbling")));
                                                break loop5;
                                             }
                                             §§pop().splice(§§pop(),1);
                                             if(!_loc7_)
                                             {
                                                break loop1;
                                             }
                                             addr0151:
                                             return param2;
                                             addr0150:
                                          }
                                       }
                                       addr013e:
                                       §§push(§§pop().join("|"));
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                       }
                                       param2 = §§pop();
                                       §§goto(addr0150);
                                    }
                                    addr0111:
                                    if(!§§pop())
                                    {
                                       break loop2;
                                    }
                                    if(!_loc8_)
                                    {
                                       break loop1;
                                    }
                                    §§push(_loc3_);
                                    if(_loc8_)
                                    {
                                       §§goto(addr0125);
                                       §§push(_loc6_);
                                    }
                                    §§goto(addr013e);
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop7;
                              }
                              §§push(§§pop() >= 0);
                              if(!_loc7_)
                              {
                                 break loop6;
                              }
                              §§goto(addr0111);
                           }
                           addr013d:
                           §§goto(addr013e);
                        }
                     }
                  }
               });
               if(!_loc2_)
               {
                  §3!<§(new § !N§(§>K§.§0x§,10));
                  while(true)
                  {
                     if(_loc1_)
                     {
                        §8#§ = true;
                        if(!_loc1_)
                        {
                           break;
                        }
                     }
                     §§push(§§findproperty(frames));
                     §§push(frame0);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame1);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame2);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame3);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame4);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame5);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame6);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame7);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame8);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame9);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame10);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame11);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame12);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame13);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame14);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame15);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame16);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame17);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame18);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame19);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame20);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame21);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame22);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().frames = null;
                     if(_loc1_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
            }
            name = "Coming Through";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  if(map != null)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     if(map.transform != null)
                     {
                        map.transform.§`F§(false,false);
                        map.transform.§'!=§(false,false);
                     }
                     map = null;
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                  }
               }
               tunnel = null;
               break;
            }
            §-P§ = null;
            break;
         }
         skater = null;
         sprites.length = 0;
      }
      
      override public function skip(param1:Event = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(true);
            if(_loc3_)
            {
               if(§"J§ >= int(frames.length))
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
            }
            §§pop();
            §§push(§!!6§ == 1);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         if(§§pop())
         {
            if(!_loc2_)
            {
               super.skip(param1);
            }
            return;
         }
         §§push(§§findproperty(§"J§));
         §§push(int(frames.length));
         if(!_loc2_)
         {
            §§push(§§pop() - 1);
         }
         §§pop().§"J§ = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               dialog.visible = false;
               if(!_loc3_)
               {
                  break;
               }
            }
            §6!I§.visible = false;
            break;
         }
      }
      
      public function select(param1:§6O§, param2:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               tunnel.§<M§(1);
               if(_loc3_)
               {
                  break;
               }
            }
            §'O§.§3§(param1);
            if(_loc4_)
            {
               dialog.visible = false;
            }
            break;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            if(!_loc5_)
            {
               sprites.push(§-P§);
            }
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(!_loc5_)
         {
            §-P§.goesTo = new § !N§(_loc2_,10);
            if(!_loc5_)
            {
               skater = new §^s§(§9_§,§'O§.skater,false,null,false,null);
               if(_loc6_)
               {
                  sprites.push(skater);
               }
            }
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc6_)
         {
            skater.goesTo = new § !N§(_loc4_,10);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         if(_loc10_)
         {
            §§push(map.transform);
            §§push(§%!P§);
            if(!_loc11_)
            {
               §§push(§§pop() - 60);
            }
            §§pop().§6!&§(§§pop(),-167,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(_loc10_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(-0.2181661564992912)));
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc10_)
            {
               _loc2_.x = 0 * _loc3_;
               if(!_loc10_)
               {
                  break;
               }
            }
            _loc2_.y = 0 * _loc3_;
            if(_loc10_)
            {
               break;
            }
            §§goto(addr00a8);
         }
         _loc2_.z = _loc3_;
         if(!_loc11_)
         {
            addr00a8:
            _loc2_.w = Number(Math.cos(-0.2181661564992912));
            §§goto(addr00b5);
         }
         addr00b5:
         loop2:
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            if(_loc10_)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(_loc10_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(_loc11_)
                        {
                           break loop3;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc11_)
                           {
                              break;
                           }
                        }
                        break loop2;
                     }
                     §§goto(addr0102);
                  }
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
                  break;
               }
               addr0102:
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc11_)
            {
               §§push(§§pop() - 1);
               if(!_loc10_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop6:
         while(true)
         {
            while(true)
            {
               §§push(_loc5_);
               if(!_loc11_)
               {
                  while(true)
                  {
                     §§push(0);
                     if(!_loc11_)
                     {
                        §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                        if(!_loc11_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop6;
                        }
                        §§push(_loc4_);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break;
                     }
                     if(_loc10_)
                     {
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                        break loop6;
                     }
                     §§goto(addr01fc);
                  }
               }
               _loc4_ = Number(§§pop());
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(_loc10_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().x = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               if(_loc10_)
               {
                  break loop6;
               }
               break;
            }
            skater.spritesheet.§@S§(true);
            §§goto(addr0233);
         }
         _loc1_.§"I§(_loc2_);
         §-P§.§9E§(4.1,58.5);
         §-P§.spritesheet.§,=§(55);
         if(!_loc11_)
         {
            §-P§.spritesheet.§@S§(true);
            skater.§9E§(1.3,60,null,100);
            addr01fc:
         }
         skater.spritesheet.§,=§(96);
         if(!_loc11_)
         {
            break loop7;
         }
         addr0233:
         var _loc6_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc11_)
         {
            dialog.§";§("Hup!",240,0,null,null,null,_loc6_,null);
         }
         var _loc7_:Transform = skater.transform;
         var _loc8_:§"B§ = null;
         if(_loc8_ == null)
         {
            _loc8_ = new §"B§();
         }
         _loc4_ = Number(Math.sin(-0.7853981633974483));
         _loc8_.x = 0 * _loc4_;
         if(!_loc11_)
         {
            _loc8_.y = 0 * _loc4_;
         }
         _loc8_.z = _loc4_;
         _loc8_.w = Number(Math.cos(-0.7853981633974483));
         loop8:
         while(true)
         {
            if(!_loc11_)
            {
               while(true)
               {
                  §§push(_loc8_.x);
                  §§push(_loc8_.x);
                  if(_loc10_)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc8_.y);
                     §§push(_loc8_.y);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc10_)
                        {
                           break loop8;
                        }
                        §§push(Number(§§pop()));
                        if(_loc11_)
                        {
                           break loop8;
                        }
                        §§push(_loc8_.z);
                        §§push(_loc8_.z);
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc10_)
                  {
                     addr0321:
                     §§push(Number(§§pop()));
                     §§push(_loc8_.w);
                     if(!_loc11_)
                     {
                        §§push(_loc8_.w);
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc10_)
                     {
                        break loop8;
                     }
                  }
                  _loc5_ = Number(§§pop());
               }
               §§goto(addr0321);
            }
            §§push(_loc5_);
            break;
         }
         var _loc9_:Number = §§pop() - 1;
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
                     §§push(_loc9_);
                     if(!_loc11_)
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
                              break loop13;
                           }
                           §§push(_loc9_);
                        }
                        else
                        {
                           §§push(_loc9_);
                           if(!_loc11_)
                           {
                              §§push(-§§pop());
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(!_loc11_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop11;
                        }
                        if(_loc11_)
                        {
                           break loop10;
                        }
                        §§push(_loc5_);
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc8_.x = 0;
                     while(true)
                     {
                        if(_loc10_)
                        {
                           break loop13;
                        }
                        §§goto(addr040d);
                     }
                     §§goto(addr043b);
                  }
                  else
                  {
                     §§push(1 / Number(Math.sqrt(_loc5_)));
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc5_ = §§pop();
                     if(!_loc10_)
                     {
                        break loop10;
                     }
                     §§goto(addr03c2);
                  }
               }
               _loc8_.y = 0;
               _loc8_.z = 0;
               _loc8_.w = 1;
               if(!_loc11_)
               {
                  break;
               }
               addr03c2:
               §§push(_loc8_);
               §§push(_loc8_.x);
               if(!_loc11_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().x = §§pop();
               break loop10;
            }
            _loc7_.rotate(_loc8_);
            if(_loc10_)
            {
               §,!J§ = 0.2;
            }
            §§goto(addr043b);
         }
         §§push(_loc8_);
         §§push(_loc8_.y);
         if(_loc10_)
         {
            §§push(§§pop() * _loc5_);
         }
         §§pop().y = §§pop();
         while(true)
         {
            if(!_loc11_)
            {
               §§push(_loc8_);
               §§push(_loc8_.z);
               if(_loc10_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               if(!_loc10_)
               {
                  break;
               }
            }
            addr040d:
            §§push(_loc8_);
            §§push(_loc8_.w);
            if(!_loc11_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().w = §§pop();
            if(_loc10_)
            {
               break loop11;
            }
            break;
         }
         addr043b:
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §-P§.§9E§(4.1,58.5);
         §-P§.spritesheet.§,=§(70);
         while(true)
         {
            if(_loc2_)
            {
               §-P§.spritesheet.§@S§(false);
               if(!_loc2_)
               {
                  break;
               }
            }
            skater.§9E§(15.6,60,null,37);
            break;
         }
         skater.spritesheet.§,=§(96);
         if(_loc2_)
         {
            skater.spritesheet.§@S§(true);
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(_loc2_)
            {
               dialog.§";§("Hup!",240,0,null,null,null,_loc1_,null);
               if(_loc2_)
               {
                  skater.§2e§(§-P§);
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §,!J§ = 0.3;
            break;
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §-P§.§9E§(4.1,58.5);
         §-P§.spritesheet.§,=§(93);
         while(true)
         {
            if(_loc1_)
            {
               §-P§.spritesheet.§@S§(false);
               if(_loc1_)
               {
                  skater.§9E§(15.9,60);
                  if(!_loc2_)
                  {
                     skater.spritesheet.§,=§(98);
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
               }
            }
            skater.spritesheet.§@S§(true);
            if(_loc1_)
            {
               skater.§2e§(§-P§);
               §,!J§ = 0.12;
            }
            break;
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(!_loc9_)
         {
            §§push(map.transform);
            §§push(§%!P§);
            if(_loc8_)
            {
               §§push(§§pop() - 83);
            }
            §§pop().§6!&§(§§pop(),-154,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(-0.3490658503988659)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            _loc2_.x = 0 * _loc3_;
            if(_loc8_)
            {
               _loc2_.y = 0 * _loc3_;
               while(true)
               {
                  if(!_loc9_)
                  {
                     _loc2_.z = _loc3_;
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  _loc2_.w = Number(Math.cos(-0.3490658503988659));
                  break;
               }
            }
         }
         §§push(_loc2_.x);
         §§push(_loc2_.x);
         if(_loc8_)
         {
            §§push(§§pop() * §§pop());
            §§push(_loc2_.y);
         }
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.y);
               if(_loc8_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     break loop2;
                  }
               }
               §§push(§§pop() * §§pop());
               if(!_loc9_)
               {
                  §§push(§§pop() + §§pop());
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_.w);
               break loop2;
            }
            var _loc4_:Number = §§pop() + §§pop();
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(§§pop() - 1);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(_loc8_)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(0);
                           if(!_loc9_)
                           {
                              §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                              if(!_loc9_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break loop5;
                              }
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(_loc4_);
                              if(_loc9_)
                              {
                                 break loop7;
                              }
                              §§push(0);
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              break loop7;
                           }
                           if(_loc8_)
                           {
                              break;
                           }
                           §§goto(addr01af);
                        }
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        if(_loc8_)
                        {
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                           break loop5;
                        }
                        addr0208:
                        §-P§.spritesheet.§@S§(false);
                        if(_loc8_)
                        {
                           skater.§9E§(15.9,60);
                           break loop4;
                        }
                        §§goto(addr0239);
                     }
                     _loc4_ = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc9_)
                     {
                        addr01af:
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  break loop4;
               }
               _loc1_.§"I§(_loc2_);
               §-P§.§9E§(4.1,58.5);
               §-P§.spritesheet.§,=§(93);
               if(!_loc9_)
               {
                  §§goto(addr0208);
               }
               §§goto(addr022f);
            }
            skater.spritesheet.§,=§(90);
            addr022f:
            skater.spritesheet.§@S§(true);
            addr0239:
            var _loc6_:§ 7§ = new § 6§(skater.§<!U§());
            if(_loc8_)
            {
               dialog.§";§("Wait.",320,-40,null,null,null,_loc6_,null);
            }
            var _loc7_:* = §&!S§.width(250);
            if(_loc8_)
            {
               dialog.§";§("Where\'s it going!?",220,150,null,_loc7_,-1,null,null);
            }
            _loc6_ = new § 6§(§-P§.§<!U§());
            while(true)
            {
               if(!_loc9_)
               {
                  dialog.§";§("I guess it just follows gravity.",40,340,null,null,null,_loc6_,null);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               skater.§2e§(§-P§);
               break;
            }
            return;
         }
         §§push(§§pop() * §§pop());
         break loop3;
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            §§push(map.transform);
            §§push(§%!P§);
            if(_loc6_)
            {
               §§push(§§pop() - 60);
            }
            §§pop().§6!&§(§§pop(),-167,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(-0.2181661564992912)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               _loc2_.x = 0 * _loc3_;
               if(!_loc7_)
               {
                  _loc2_.y = 0 * _loc3_;
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc2_.z = _loc3_;
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            _loc2_.w = Number(Math.cos(-0.2181661564992912));
            break;
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
                     §§push(_loc2_.x);
                     if(!_loc7_)
                     {
                        §§push(_loc2_.x);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc7_)
                        {
                           break loop8;
                        }
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc7_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc7_)
                        {
                           break loop2;
                        }
                        §§push(Number(§§pop()));
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc6_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc7_)
                        {
                           break loop2;
                        }
                     }
                     §§push(_loc2_.w);
                     break;
                  }
                  §§push(_loc2_.w);
                  break loop3;
               }
               §§push(Number(§§pop()));
               break loop2;
            }
            §§push(§§pop() + §§pop() * §§pop());
            break loop8;
         }
         var _loc4_:* = Number(§§pop());
         §§push(_loc4_);
         if(!_loc7_)
         {
            §§push(§§pop() - 1);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               if(_loc6_)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(0);
                        if(_loc6_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              addr014e:
                              §§push(_loc5_ < 1e-10);
                              if(!_loc7_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 break loop6;
                              }
                           }
                           else
                           {
                              §§push(-_loc5_);
                              if(!_loc7_)
                              {
                                 §§goto(addr014e);
                              }
                           }
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc4_)));
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           break loop6;
                        }
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        if(_loc7_)
                        {
                           break loop5;
                        }
                        _loc2_.z = 0;
                        if(_loc7_)
                        {
                           break loop4;
                        }
                        _loc2_.w = 1;
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr01ea);
                     }
                     _loc1_.§"I§(_loc2_);
                  }
                  _loc4_ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  if(_loc7_)
                  {
                     break loop4;
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc6_)
                  {
                     addr01ea:
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(!_loc7_)
                     {
                        break loop7;
                     }
                  }
               }
               §-P§.§9E§(4.1,58.5);
               if(_loc6_)
               {
                  §-P§.spritesheet.§,=§(93);
                  §-P§.spritesheet.§@S§(false);
                  skater.§9E§(15.9,60);
                  if(!_loc7_)
                  {
                     break loop4;
                  }
                  §§goto(addr0267);
               }
               break loop4;
            }
            skater.spritesheet.§@S§(false);
            if(!_loc7_)
            {
               addr0267:
               skater.§2e§(§-P§);
               §§goto(addr0273);
            }
            addr0273:
            return;
         }
         skater.spritesheet.§,=§(94);
         break loop5;
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc7_)
            {
               map.transform.§`F§(false,false);
               if(_loc7_)
               {
                  break;
               }
               map.transform.§'!=§(false,false);
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(map.transform);
            §§push(§%!P§);
            if(_loc8_)
            {
               §§push(§§pop() - 35);
            }
            §§pop().§6!&§(§§pop(),-172,4620);
            break;
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(-0.10471975511965977)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            if(!_loc7_)
            {
               _loc2_.x = 0 * _loc3_;
               while(true)
               {
                  if(_loc8_)
                  {
                     _loc2_.y = 0 * _loc3_;
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  _loc2_.z = _loc3_;
                  if(!_loc7_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            _loc2_.w = Number(Math.cos(-0.10471975511965977));
            break;
         }
         loop4:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc8_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_.z);
                  if(_loc7_)
                  {
                     break loop4;
                  }
               }
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     §§push(_loc2_.w);
                  }
                  §§push(_loc2_.w);
                  break loop4;
               }
               §§goto(addr012b);
            }
            §§push(§§pop() + §§pop());
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            addr012b:
            var _loc4_:* = Number(§§pop());
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
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
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           loop11:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(_loc5_);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(!_loc8_)
                                       {
                                          break loop10;
                                       }
                                       §§push(-§§pop());
                                    }
                                    §§push(§§pop() < 1e-10);
                                    if(!_loc7_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       break loop8;
                                    }
                                    §§push(_loc4_);
                                    if(!_loc8_)
                                    {
                                       break loop11;
                                    }
                                    §§push(0);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    _loc2_.x = 0;
                                    if(!_loc7_)
                                    {
                                       _loc2_.y = 0;
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       break loop8;
                                    }
                                    addr01c3:
                                    _loc2_.w = 1;
                                    break loop8;
                                 }
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break loop11;
                              }
                              _loc2_.z = 0;
                              if(_loc8_)
                              {
                                 §§goto(addr01c3);
                              }
                              addr0253:
                              skater.§9E§(2,60);
                              if(_loc8_)
                              {
                                 skater.spritesheet.§,=§(97);
                                 addr0270:
                                 skater.spritesheet.§@S§(false);
                              }
                              break loop7;
                           }
                        }
                        break loop11;
                     }
                     _loc4_ = §§pop();
                     if(_loc7_)
                     {
                        break loop7;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  break;
               }
               _loc1_.§"I§(_loc2_);
               if(_loc8_)
               {
                  §-P§.§9E§(4.1,58.4);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §-P§.spritesheet.§,=§(56);
                  §-P§.spritesheet.§@S§(true);
                  §§goto(addr0253);
               }
               §§goto(addr0270);
            }
            var _loc6_:§ 7§ = new § 6§(skater.§<!U§());
            while(true)
            {
               if(!_loc7_)
               {
                  dialog.§";§("Don\'t worry, I got this!",320,-120,null,null,null,_loc6_,null);
                  if(_loc7_)
                  {
                     break;
                  }
               }
               skater.§2e§(§-P§);
               break;
            }
            return;
         }
         §§push(§§pop() * §§pop());
         break loop5;
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §-P§.§9E§(4.1,58.4);
         if(_loc3_)
         {
            §-P§.spritesheet.§,=§(85);
            §-P§.spritesheet.§@S§(true);
         }
         skater.§9E§(3.9,60);
         skater.spritesheet.§,=§(81);
         if(!_loc2_)
         {
            skater.spritesheet.§@S§(true);
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Oops, sorry!",140,-60,null,null,null,_loc1_,null);
         }
      }
      
      public function frame22() : void
      {
         var runnerButton:§8!8§;
         var a11:§6O§;
         var f1:Function;
         var skaterButton:§8!8§;
         var a1:§6O§;
         var f:Function;
         var _gthis:ComingThrough;
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         _gthis = this;
         if(§!!6§ != 1)
         {
            §,!J§ = 0.001;
            return;
         }
         tunnel.§<M§(0.2);
         §5! §.§@!A§().§'J§(1);
         tunnel.display(0);
         var _loc1_:* = §&!S§.scale(2);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc8_)
               {
                  dialog.§`!^§("Choose your character!",0,250,_loc1_,null,16777215);
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        §§push(§§newactivation());
                        §§push(select);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§§slot[2] = §§pop();
                        a1 = §'O§.skater;
                        if(!_loc9_)
                        {
                           break;
                        }
                        skaterButton = new §8!8§(function(param1:MouseEvent):void
                        {
                           f(a1,param1);
                        });
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                        dialog.addChild(skaterButton);
                     }
                     §§push(§§newactivation());
                     §§push(select);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[5] = §§pop();
                     a11 = §'O§.§-P§;
                     runnerButton = new §8!8§(function(param1:MouseEvent):void
                     {
                        f1(a11,param1);
                     });
                     break;
                  }
                  dialog.addChild(runnerButton);
                  if(_loc8_)
                  {
                     break loop0;
                  }
                  dialog.layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
                  {
                     var _temp_1:* = true;
                     var _loc7_:Boolean = false;
                     var _loc8_:Boolean = _temp_1;
                     _gthis.§-P§.§]<§ = true;
                     if(_loc8_)
                     {
                        _gthis.skater.§]<§ = true;
                        while(true)
                        {
                           if(_loc8_)
                           {
                              _gthis.tunnel.display(0);
                              if(!_loc7_)
                              {
                                 runnerButton.§@F§();
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                           }
                           skaterButton.§@F§();
                           break;
                        }
                     }
                     var _loc1_:§38§ = _gthis.dialog.layout.scale;
                     while(true)
                     {
                        §§push(10);
                        §§push(_loc1_.x);
                        if(_loc8_)
                        {
                           §§push(§§pop() + _loc1_.y);
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           §§push(§§pop() / 2);
                        }
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     var _loc3_:Rectangle = _gthis.§-P§.§<!U§();
                     if(_loc8_)
                     {
                        runnerButton.§[a§(_loc2_,16777215,0,null,null,null,_loc3_);
                     }
                     var _loc4_:§38§ = _gthis.dialog.layout.scale;
                     §§push(10);
                     §§push(_loc4_.x);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc4_.y);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc8_)
                           {
                              §§push(§§pop() / 2);
                           }
                        }
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     var _loc6_:Rectangle = _gthis.skater.§<!U§();
                     if(!_loc7_)
                     {
                        skaterButton.§[a§(_loc5_,16777215,0,null,null,null,_loc6_);
                     }
                  })));
               }
               _gthis.§-P§.§]<§ = true;
               if(_loc9_)
               {
                  _gthis.skater.§]<§ = true;
                  _gthis.tunnel.display(0);
               }
               runnerButton.§@F§();
               if(_loc9_)
               {
                  break loop0;
               }
               break;
            }
            var _loc2_:§38§ = _gthis.dialog.layout.scale;
            §§push(10);
            §§push(_loc2_.x);
            if(_loc9_)
            {
               §§push(§§pop() + _loc2_.y);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
            }
            §§push(§§pop() * §§pop());
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:Rectangle = _gthis.§-P§.§<!U§();
            if(_loc9_)
            {
               runnerButton.§[a§(_loc3_,16777215,0,null,null,null,_loc4_);
            }
            var _loc5_:§38§ = _gthis.dialog.layout.scale;
            while(true)
            {
               §§push(10);
               §§push(_loc5_.x);
               if(!_loc8_)
               {
                  §§push(§§pop() + _loc5_.y);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr0200);
            }
            addr0200:
            §§push(§§pop() * §§pop());
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Rectangle = _gthis.skater.§<!U§();
            while(true)
            {
               if(!_loc8_)
               {
                  skaterButton.§[a§(_loc6_,16777215,0,null,null,null,_loc7_);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §=!`§ = Number(Math.POSITIVE_INFINITY);
               break;
            }
            return;
         }
         skaterButton.§@F§();
         break loop1;
      }
      
      public function frame21() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         tunnel.§<!M§.translate(0,0,80);
         map.§#"§(false);
         if(!_loc3_)
         {
            §-P§.§9E§(11.8,60.3);
         }
         §-P§.spritesheet.§,=§(28);
         §-P§.spritesheet.§@S§(true);
         skater.§9E§(12.1,61.4,null,27);
         if(!_loc3_)
         {
            skater.spritesheet.§,=§(14);
            if(_loc4_)
            {
               skater.spritesheet.§@S§(false);
            }
         }
         var _loc1_:* = §&!S§.width(413);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("So I don\'t believe I caught your name.",-340,-300,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("No time for that now!",240,20,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(0.9);
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("I\'ve got exploring to do!",80,220,_loc1_,null,-1,null,null);
               if(_loc3_)
               {
                  break;
               }
               if(§!!6§ == 1)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §6!I§.visible = false;
            break;
         }
      }
      
      public function frame20() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as §!!V§;
         var _loc7_:* = null as §=s§;
         var _loc8_:* = NaN;
         var _loc1_:§'!Y§ = §2_§.§'!D§(map.vertices,"position");
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:§!!V§ = map.vertices;
         while(true)
         {
            §§push(_loc3_.§@!Y§.length);
            if(!_loc11_)
            {
               §§push(int(§§pop()));
               if(_loc11_)
               {
                  break;
               }
               §§push(§§pop() / _loc3_.§5G§);
            }
            §§push(int(§§pop()));
            if(!_loc11_)
            {
               §§push(int(§§pop()));
            }
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc11_)
            {
               while(_loc2_ < _loc4_)
               {
                  §§push(_loc2_);
                  if(!_loc11_)
                  {
                     _loc2_++;
                     if(!_loc11_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc5_ = §§pop();
                  _loc6_ = _loc1_.vertices;
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.§5G§);
                        if(!_loc11_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().offset = §§pop();
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     §§push(_loc1_.§+R§);
                     §§push(_loc6_.offset);
                     if(_loc10_)
                     {
                        §§push(§§pop() + _loc1_.§+^§);
                     }
                     §§pop().offset = §§pop();
                     break;
                  }
                  _loc7_ = _loc1_.§+R§;
                  if(_loc10_)
                  {
                     §§push(_loc7_.§@!Y§[_loc7_.offset]);
                     if(_loc10_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc11_)
                        {
                           §§push(§§pop() * 0.5);
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     _loc8_ = §§pop();
                     if(_loc10_)
                     {
                        _loc7_.§@!Y§[_loc7_.offset] = _loc8_;
                     }
                  }
                  _loc6_ = _loc1_.vertices;
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.§5G§);
                        if(_loc10_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                        §§pop().offset = §§pop();
                        if(!_loc10_)
                        {
                           break;
                        }
                     }
                     §§push(_loc1_.§+R§);
                     §§push(_loc6_.offset);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + _loc1_.§+^§);
                     }
                     §§pop().offset = §§pop();
                     break;
                  }
                  _loc7_ = _loc1_.§+R§;
                  if(!_loc11_)
                  {
                     §§push(_loc7_.§@!Y§);
                     §§push(_loc7_.offset);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop()[§§pop()]);
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc10_)
                        {
                           §§push(§§pop() * 2);
                           if(_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     _loc8_ = §§pop();
                     if(_loc10_)
                     {
                        §§push(_loc7_.§@!Y§);
                        §§push(_loc7_.offset);
                        if(_loc10_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§pop()[§§pop()] = _loc8_;
                     }
                  }
               }
               map.§`!$§();
               map.transform.translate(10,15,-20);
               if(_loc11_)
               {
                  break;
               }
               §-P§.§9E§(11.8,60.4);
               if(_loc10_)
               {
                  §-P§.spritesheet.§,=§(29);
                  §-P§.spritesheet.§@S§(true);
               }
               skater.§9E§(12.1,61,null,1);
               if(_loc10_)
               {
                  skater.spritesheet.§,=§(83);
               }
            }
            skater.spritesheet.§@S§(false);
            break;
         }
         var _loc9_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc11_)
         {
            dialog.§";§("Here you go!",140,-240,null,null,null,_loc9_,null);
         }
         _loc9_ = new § 6§(§-P§.§<!U§());
         if(_loc10_)
         {
            dialog.§";§("Thank you.",-200,100,null,null,null,_loc9_,null);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §-P§.§9E§(4.1,58.4,null,-3);
         §-P§.spritesheet.§,=§(90);
         while(true)
         {
            if(_loc2_)
            {
               §-P§.spritesheet.§@S§(true);
               if(_loc3_)
               {
                  break;
               }
            }
            skater.§9E§(3.9,60);
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0072);
         }
         skater.spritesheet.§,=§(51);
         if(!_loc3_)
         {
            addr0072:
            skater.spritesheet.§@S§(false);
            var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
            §§goto(addr007c);
         }
         addr007c:
         if(!_loc3_)
         {
            dialog.§";§("Coming through!",360,40,null,null,null,_loc1_,null);
         }
      }
      
      public function frame19() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§"B§ = §'^§;
         while(true)
         {
            if(!_loc3_)
            {
               _loc1_.x = 0;
               _loc1_.y = 0;
               _loc1_.z = 0;
               if(_loc2_)
               {
                  _loc1_.w = 1;
                  map.transform.§"I§(§'^§);
                  §-P§.§9E§(11.8,60.2);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §-P§.spritesheet.§,=§(13);
                  §-P§.spritesheet.§@S§(true);
               }
               skater.§9E§(12.1,61,null,1);
               skater.spritesheet.§,=§(93);
            }
            skater.spritesheet.§@S§(false);
            break;
         }
      }
      
      public function frame18() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(_loc8_)
         {
            map.transform.§6!&§(§%!P§,-182,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(-0.04363323129985824)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               _loc2_.x = 0 * _loc3_;
               if(!_loc7_)
               {
                  _loc2_.y = 0 * _loc3_;
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc2_.z = _loc3_;
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            _loc2_.w = Number(Math.cos(-0.04363323129985824));
            break;
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x * _loc2_.x);
                     if(_loc8_)
                     {
                        §§push(_loc2_.y);
                        if(_loc7_)
                        {
                           break loop13;
                        }
                        §§push(_loc2_.y);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break loop13;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           break loop3;
                        }
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           break loop2;
                        }
                     }
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        break loop13;
                     }
                     §§goto(addr010e);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc7_)
                  {
                     break loop2;
                  }
                  §§goto(addr0111);
               }
               §§push(_loc2_.z);
               if(!_loc7_)
               {
                  break loop14;
               }
               §§goto(addr010d);
            }
            addr010d:
            addr010e:
            §§goto(addr010f);
         }
         §§push(Number(§§pop()));
         if(!_loc7_)
         {
            break loop3;
         }
         addr0111:
         var _loc4_:* = Number(§§pop());
         addr010f:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(§§pop() - 1);
               if(!_loc8_)
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
            while(true)
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     break loop5;
                  }
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc5_);
                  }
                  else
                  {
                     §§push(_loc5_);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(-§§pop());
                  }
               }
               §§push(§§pop() < 1e-10);
               if(_loc8_)
               {
                  §§push(!§§pop());
               }
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§push(_loc4_);
                        §§push(0);
                        break loop5;
                     }
                     §§goto(addr01f9);
                  }
                  §§goto(addr0269);
               }
               §§goto(addr021b);
            }
            _loc4_ = §§pop();
            while(true)
            {
               if(!_loc7_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(_loc8_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           if(_loc7_)
                           {
                              break loop9;
                           }
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        §§goto(addr01f9);
                     }
                     §§goto(addr0269);
                  }
                  §§goto(addr0285);
               }
               §§goto(addr0241);
            }
            §§goto(addr027b);
         }
         if(§§pop() == §§pop())
         {
            loop7:
            while(true)
            {
               if(!_loc7_)
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  addr01f9:
                  _loc1_.§"I§(_loc2_);
                  if(_loc7_)
                  {
                     break;
                  }
                  tunnel.§<!M§.translate(0,-30,10);
                  if(_loc7_)
                  {
                     break;
                  }
               }
               addr021b:
               §-P§.§9E§(11.8,60.4);
               while(true)
               {
                  if(!_loc7_)
                  {
                     §-P§.spritesheet.§,=§(9);
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  addr0241:
                  §-P§.spritesheet.§@S§(true);
                  if(_loc8_)
                  {
                     skater.§9E§(12,60.9,null,5);
                     if(!_loc7_)
                     {
                        break loop7;
                     }
                     break;
                  }
                  var _loc6_:§ 7§ = new § 6§(skater.§<!U§());
                  §§goto(addr0285);
               }
               §§goto(addr027b);
            }
            addr0269:
            skater.spritesheet.§,=§(24);
            if(_loc8_)
            {
               addr027b:
               skater.spritesheet.§@S§(true);
               §§goto(addr0285);
            }
            addr0285:
            if(!_loc7_)
            {
               dialog.§";§("Oh, that\'s what.",270,-160,null,null,null,_loc6_,null);
            }
            return;
         }
         §§push(1 / Number(Math.sqrt(_loc4_)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         break loop6;
      }
      
      public function frame17() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            while(true)
            {
               §§push(map.transform);
               §§push(§%!P§);
               if(_loc6_)
               {
                  §§push(§§pop() + 9);
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§6!&§(§§pop(),-169,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.1308996938995747)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_)
         {
            _loc2_.x = 0 * _loc3_;
            while(true)
            {
               if(!_loc7_)
               {
                  _loc2_.y = 0 * _loc3_;
                  if(!_loc7_)
                  {
                     _loc2_.z = _loc3_;
                     if(_loc7_)
                     {
                        break;
                     }
                  }
               }
               _loc2_.w = Number(Math.cos(0.1308996938995747));
               break;
            }
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.x);
            if(_loc6_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§pop() * _loc2_.x);
                     §§push(_loc2_.y);
                     if(_loc6_)
                     {
                        §§push(_loc2_.y);
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(_loc2_.z);
                           §§push(_loc2_.z);
                           if(!_loc6_)
                           {
                              break loop4;
                           }
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     break;
                  }
                  §§push(Number(§§pop()));
                  if(_loc6_)
                  {
                     §§push(_loc2_.w);
                     §§push(_loc2_.w);
                     break;
                  }
                  break loop3;
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop7:
         while(true)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  if(!_loc7_)
                  {
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              §§push(0);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc5_);
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(_loc7_)
                                 {
                                    break loop10;
                                 }
                              }
                           }
                           §§push(§§pop() < 1e-10);
                           if(!_loc7_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§push(_loc4_);
                              break loop10;
                           }
                           break loop9;
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           if(_loc6_)
                           {
                              _loc2_.z = 0;
                              if(_loc6_)
                              {
                                 _loc2_.w = 1;
                              }
                              break loop9;
                           }
                           addr020a:
                           §-P§.§9E§(12,60.3,null,95);
                           if(_loc7_)
                           {
                              break loop7;
                           }
                           §-P§.spritesheet.§,=§(8);
                           if(_loc6_)
                           {
                              break loop8;
                           }
                           §§goto(addr0268);
                        }
                        else
                        {
                           _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(_loc6_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                        }
                     }
                     §§push(0);
                     break loop11;
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(_loc6_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc6_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(_loc6_)
                     {
                        break;
                     }
                     break loop8;
                  }
                  break loop7;
               }
               _loc1_.§"I§(_loc2_);
               tunnel.§<!M§.translate(0,-70,20);
               §§goto(addr020a);
            }
            §-P§.spritesheet.§@S§(true);
            skater.§9E§(12.2,60.7,null,85);
            skater.spritesheet.§,=§(23);
            addr0268:
            skater.spritesheet.§@S§(true);
            if(_loc6_)
            {
               break;
            }
            §§goto(addr0282);
         }
         §,!J§ = 0.16;
         addr0282:
      }
      
      public function frame16() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            while(true)
            {
               §§push(map.transform);
               §§push(§%!P§);
               if(_loc6_)
               {
                  §§push(§§pop() + 6);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§6!&§(§§pop(),-175,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(_loc6_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.08726646259971647)));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc6_)
            {
               _loc2_.x = 0 * _loc3_;
               if(!_loc6_)
               {
                  break;
               }
            }
            _loc2_.y = 0 * _loc3_;
            if(!_loc7_)
            {
               break;
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_.x * _loc2_.x);
                  if(!_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc6_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              §§push(_loc2_.z);
                           }
                           §§push(_loc2_.z);
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                           §§push(_loc2_.w);
                           §§push(_loc2_.w);
                           break;
                        }
                        break loop4;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc6_)
                     {
                        break loop3;
                     }
                  }
                  §§push(Number(§§pop()));
                  break loop3;
               }
               var _loc4_:* = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc6_)
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
                  loop8:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc5_);
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              §§push(-§§pop());
                              if(!_loc6_)
                              {
                                 continue loop9;
                              }
                           }
                        }
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(_loc4_);
                              §§push(0);
                              break loop8;
                           }
                           §§goto(addr021c);
                        }
                        §§goto(addr0216);
                     }
                     §§goto(addr02a4);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     continue loop9;
                  }
                  loop12:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           if(_loc6_)
                           {
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                              if(_loc7_)
                              {
                                 break loop12;
                              }
                              §§goto(addr0216);
                           }
                           else
                           {
                              §§goto(addr01eb);
                           }
                        }
                        else
                        {
                           §§goto(addr01be);
                        }
                        §§goto(addr027f);
                     }
                     §§goto(addr0291);
                  }
                  §§goto(addr02a4);
               }
               _loc4_ = §§pop();
               loop9:
               while(true)
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        addr01be:
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(_loc6_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(_loc7_)
                        {
                           break loop9;
                        }
                     }
                     addr01eb:
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc7_)
                     {
                        break loop9;
                     }
                     break;
                  }
                  addr027f:
                  skater.spritesheet.§,=§(20);
                  if(!_loc7_)
                  {
                     §§goto(addr0291);
                  }
                  §§goto(addr02a4);
               }
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(_loc6_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               if(!_loc7_)
               {
                  addr0216:
                  _loc1_.§"I§(_loc2_);
                  addr021c:
                  tunnel.§<!M§.translate(0,-50,20);
                  §-P§.§9E§(12,60.2,null,195);
                  §-P§.spritesheet.§,=§(7);
                  §-P§.spritesheet.§@S§(true);
                  if(_loc6_)
                  {
                     skater.§9E§(12.3,60.5,null,185);
                     if(_loc6_)
                     {
                        break loop10;
                     }
                     §§goto(addr02a4);
                  }
                  addr0291:
                  skater.spritesheet.§@S§(true);
                  §,!J§ = 0.18;
               }
               addr02a4:
               return;
            }
            §§push(Number(§§pop()));
            break loop4;
         }
         _loc2_.z = _loc3_;
         if(!_loc7_)
         {
            _loc2_.w = Number(Math.cos(0.08726646259971647));
         }
         continue loop3;
      }
      
      public function frame15() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         if(_loc10_)
         {
            §§push(map.transform);
            §§push(§%!P§);
            if(!_loc11_)
            {
               §§push(§§pop() + 3);
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§6!&§(§§pop(),-179,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(_loc10_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.04363323129985824)));
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc11_)
         {
            _loc2_.x = 0 * _loc3_;
            if(!_loc11_)
            {
               _loc2_.y = 0 * _loc3_;
               while(true)
               {
                  if(_loc10_)
                  {
                     _loc2_.z = _loc3_;
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  _loc2_.w = Number(Math.cos(0.04363323129985824));
                  break;
               }
            }
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop21:
               while(true)
               {
                  loop22:
                  while(true)
                  {
                     §§push(_loc2_.x);
                     if(!_loc11_)
                     {
                        §§push(§§pop() * _loc2_.x);
                        §§push(_loc2_.y);
                        if(_loc11_)
                        {
                           break loop21;
                        }
                        while(true)
                        {
                           §§push(_loc2_.y);
                           if(!_loc11_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              §§push(_loc2_.z);
                              §§push(_loc2_.z);
                              if(!_loc10_)
                              {
                                 break loop22;
                              }
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc10_)
                           {
                              break;
                           }
                           break loop3;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc10_)
                        {
                           break loop2;
                        }
                     }
                     §§push(_loc2_.w);
                     break loop21;
                  }
                  §§push(§§pop() * §§pop());
                  break loop3;
               }
               §§push(_loc2_.w);
               break loop22;
            }
            §§push(§§pop() + §§pop());
            break;
         }
         var _loc4_:* = Number(§§pop());
         §§push(_loc4_);
         if(_loc10_)
         {
            §§push(§§pop() - 1);
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  if(_loc10_)
                  {
                     loop19:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(0);
                           if(!_loc11_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 addr014e:
                                 §§push(_loc5_ < 1e-10);
                                 if(!_loc11_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc4_);
                                 if(_loc11_)
                                 {
                                    break loop19;
                                 }
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(_loc10_)
                                 {
                                    §§goto(addr014e);
                                 }
                              }
                              §§push(0);
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              break loop19;
                           }
                           if(_loc10_)
                           {
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              if(_loc10_)
                              {
                                 break;
                              }
                              §§goto(addr019e);
                           }
                        }
                        _loc2_.w = 1;
                        break loop4;
                     }
                     _loc4_ = §§pop();
                     addr019e:
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     if(_loc11_)
                     {
                        break loop5;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc10_)
                     {
                        break loop4;
                     }
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  if(!_loc11_)
                  {
                     break loop4;
                  }
                  §§goto(addr01fd);
               }
               §§goto(addr0266);
            }
            §-P§.§9E§(12,60.1,null,270);
            if(!_loc10_)
            {
               break loop18;
            }
            §-P§.spritesheet.§,=§(5);
            §-P§.spritesheet.§@S§(true);
            §§goto(addr024d);
         }
         _loc1_.§"I§(_loc2_);
         addr01fd:
         tunnel.§<!M§.translate(0,-30,20);
         if(!_loc11_)
         {
            break loop5;
         }
         addr024d:
         skater.§9E§(12.4,60.3,null,260);
         if(_loc10_)
         {
            addr0266:
            skater.spritesheet.§,=§(17);
            skater.spritesheet.§@S§(true);
         }
         var _loc6_:§"B§ = §-P§.transform.§+n§();
         if(_loc6_ == null)
         {
            _loc6_ = new §"B§();
         }
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop14:
               while(true)
               {
                  while(true)
                  {
                     §§push(Number(Math.sin(0.2617993877991494)));
                     if(!_loc11_)
                     {
                        _loc4_ = Number(§§pop());
                        if(_loc10_)
                        {
                           _loc6_.x = 0 * _loc4_;
                           _loc6_.y = 0 * _loc4_;
                           _loc6_.z = _loc4_;
                           if(!_loc10_)
                           {
                              continue loop9;
                           }
                        }
                        _loc6_.w = Number(Math.cos(0.2617993877991494));
                        §§push(_loc6_.x * _loc6_.x);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(_loc6_.y);
                        if(!_loc11_)
                        {
                           §§push(_loc6_.y);
                           if(_loc11_)
                           {
                              break loop14;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc10_)
                           {
                              break loop7;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_)
                        {
                           break loop6;
                        }
                     }
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        §§push(_loc6_.z);
                        if(!_loc11_)
                        {
                           break loop7;
                        }
                        §§goto(addr0346);
                     }
                     §§goto(addr0348);
                  }
                  §§goto(addr0347);
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(_loc11_)
               {
                  break loop6;
               }
               §§push(Number(§§pop()));
               if(!_loc11_)
               {
                  §§goto(addr0345);
                  §§push(_loc6_.w);
                  §§push(_loc6_.w);
               }
               §§goto(addr0348);
            }
            while(true)
            {
               §§push(_loc6_.z);
               if(_loc10_)
               {
                  break loop14;
               }
               addr0345:
               addr0346:
               addr0347:
               §§push(§§pop() + §§pop() * §§pop());
               break;
            }
            addr0348:
            §§push(Number(§§pop()));
            break;
         }
         _loc5_ = §§pop();
         var _loc7_:Number = _loc5_ - 1;
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(_loc7_);
                  §§push(0);
                  if(!_loc11_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc11_)
                        {
                           break;
                        }
                        addr0378:
                        §§push(_loc7_ < 1e-10);
                        if(_loc10_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop9;
                        }
                        if(!_loc10_)
                        {
                           break loop8;
                        }
                        §§push(_loc5_);
                     }
                     else
                     {
                        §§push(-_loc7_);
                        if(!_loc11_)
                        {
                           §§goto(addr0378);
                        }
                     }
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     break;
                  }
                  addr03d1:
                  addr0405:
                  _loc5_ = 1 / Number(Math.sqrt(_loc5_));
                  §§push(_loc6_);
                  §§push(_loc6_.x);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().x = §§pop();
                  §§push(_loc6_);
                  §§push(_loc6_.y);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().y = §§pop();
                  §§push(_loc6_);
                  §§push(_loc6_.z);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().z = §§pop();
                  §§push(_loc6_);
                  §§push(_loc6_.w);
                  if(_loc10_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().w = §§pop();
                  break loop9;
               }
               _loc6_.x = 0;
               _loc6_.y = 0;
               if(_loc10_)
               {
                  _loc6_.z = 0;
                  if(!_loc11_)
                  {
                     break loop8;
                  }
                  §§goto(addr03d1);
               }
               §§goto(addr0405);
            }
            var _loc8_:§"B§ = _loc6_;
            if(!_loc11_)
            {
               §-P§.transform.rotate(_loc8_);
            }
            var _loc9_:§"B§ = _loc8_;
            loop11:
            while(true)
            {
               if(_loc10_)
               {
                  while(true)
                  {
                     if(_loc9_ == null)
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        _loc9_ = new §"B§();
                     }
                     §§push(_loc9_);
                     §§push(_loc8_.x);
                     if(_loc10_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().x = §§pop();
                     if(_loc10_)
                     {
                        break;
                     }
                     break loop11;
                  }
                  §§push(_loc9_);
                  §§push(_loc8_.y);
                  if(!_loc11_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().y = §§pop();
               }
               §§push(_loc9_);
               §§push(_loc8_.z);
               if(!_loc11_)
               {
                  §§push(-§§pop());
               }
               §§pop().z = §§pop();
               break;
            }
            _loc9_.w = _loc8_.w;
            while(true)
            {
               if(!_loc11_)
               {
                  skater.transform.rotate(_loc8_);
                  if(_loc11_)
                  {
                     break;
                  }
               }
               §,!J§ = 0.2;
               break;
            }
            return;
         }
         _loc6_.w = 1;
         if(_loc11_)
         {
         }
         break loop9;
      }
      
      public function frame14() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         tunnel.§<!M§.translate(0,0,20);
         while(true)
         {
            if(_loc3_)
            {
               §-P§.§9E§(4,60,null,50);
               §-P§.spritesheet.§,=§(4);
               §-P§.spritesheet.§@S§(true);
               skater.§9E§(3.5,60.1,null,25);
               if(_loc2_)
               {
                  break;
               }
               skater.spritesheet.§,=§(14);
            }
            skater.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc2_)
         {
            dialog.§";§("Then what?",340,-40,null,null,null,_loc1_,null);
         }
      }
      
      public function frame13() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         tunnel.§<!M§.translate(0,0,10);
         §-P§.§9E§(4,59.9,null,25);
         if(_loc2_)
         {
            §-P§.spritesheet.§,=§(0);
            §-P§.spritesheet.§@S§(true);
            skater.§9E§(3.5,60);
            skater.spritesheet.§,=§(90);
            if(_loc2_)
            {
               skater.spritesheet.§@S§(true);
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Jump!",-40,240,null,null,null,_loc1_,null);
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §-P§.§9E§(4,58.8);
               §-P§.spritesheet.§,=§(58);
               §-P§.spritesheet.§@S§(true);
               if(_loc4_)
               {
                  break;
               }
            }
            skater.§9E§(3.5,60);
            skater.spritesheet.§,=§(81);
            break;
         }
         skater.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("I think it\'s stuck.",260,-20,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(410);
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Don\'t give up yet. I have an idea.",-180,270,null,_loc2_,null,_loc1_,null);
            if(_loc3_)
            {
               dialog.§";§("Yeah?",320,320,null,null,0,null,null);
            }
         }
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            map.transform.§6!&§(§%!P§,-182,4620);
         }
         var _loc1_:§"B§ = §'^§;
         while(true)
         {
            if(!_loc2_)
            {
               _loc1_.x = 0;
               _loc1_.y = 0;
               _loc1_.z = 0;
               if(_loc2_)
               {
                  break;
               }
            }
            _loc1_.w = 1;
            map.transform.§"I§(§'^§);
            break;
         }
         §-P§.§9E§(4.1,58.5);
         while(true)
         {
            if(!_loc2_)
            {
               §-P§.spritesheet.§,=§(69);
               if(!_loc3_)
               {
                  break;
               }
               §-P§.spritesheet.§@S§(false);
               if(!_loc2_)
               {
                  skater.§9E§(3.5,60);
               }
            }
            skater.spritesheet.§,=§(93);
            break;
         }
         skater.spritesheet.§@S§(true);
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_)
         {
            §§push(map.transform);
            §§push(§%!P§);
            if(!_loc8_)
            {
               §§push(§§pop() - 35);
            }
            §§pop().§6!&§(§§pop(),-172,4620);
         }
         var _loc1_:Transform = map.transform;
         var _loc2_:§"B§ = §'^§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(-0.10471975511965977)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            _loc2_.x = 0 * _loc3_;
            if(_loc7_)
            {
               _loc2_.y = 0 * _loc3_;
               while(true)
               {
                  if(!_loc8_)
                  {
                     _loc2_.z = _loc3_;
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  _loc2_.w = Number(Math.cos(-0.10471975511965977));
                  break;
               }
            }
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc2_.x);
                     if(_loc7_)
                     {
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc7_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                           §§push(_loc2_.z);
                           §§push(_loc2_.z);
                           if(!_loc7_)
                           {
                              break loop3;
                           }
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc8_)
                        {
                           break loop2;
                        }
                     }
                  }
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
                  break loop3;
               }
               §§push(Number(§§pop()));
               break loop2;
            }
            §§push(§§pop() + §§pop() * §§pop());
            break loop11;
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(_loc7_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop9:
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     §§push(0);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc8_)
                              {
                                 break loop5;
                              }
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(-_loc5_);
                           }
                           §§push(§§pop() < 1e-10);
                           if(!_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              break loop4;
                           }
                           break loop9;
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!_loc7_)
                        {
                           break loop5;
                        }
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        if(_loc7_)
                        {
                           _loc2_.w = 1;
                           break;
                        }
                        §§goto(addr01e5);
                     }
                     else
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(_loc8_)
                        {
                           break loop4;
                        }
                     }
                  }
                  §§push(Number(§§pop()));
                  break loop4;
               }
               §§goto(addr01fb);
            }
            §-P§.spritesheet.§@S§(true);
            skater.§9E§(3.5,60);
            §§goto(addr0240);
         }
         _loc4_ = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.x);
         if(_loc7_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().x = §§pop();
         loop6:
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     addr01e5:
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(_loc8_)
                     {
                        break loop6;
                     }
                     _loc1_.§"I§(_loc2_);
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  §-P§.§9E§(4.1,58.4);
                  if(_loc8_)
                  {
                     break;
                  }
                  §-P§.spritesheet.§,=§(28);
                  if(_loc7_)
                  {
                     break loop5;
                  }
               }
               addr0240:
               skater.spritesheet.§,=§(95);
               if(!_loc7_)
               {
                  break;
               }
            }
            skater.spritesheet.§@S§(true);
            break;
         }
         var _loc6_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Oof.",220,20,null,null,null,_loc6_,null);
         }
         _loc6_ = new § 6§(§-P§.§<!U§());
         while(true)
         {
            if(_loc7_)
            {
               dialog.§";§("Huh.",0,280,null,null,null,_loc6_,null);
               if(!_loc7_)
               {
                  break;
               }
            }
            skater.§2e§(§-P§);
            break;
         }
      }
      
      public function frame1() : void
      {
         var tweenMapPosition:Function;
         var count:int;
         var _gthis:ComingThrough;
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         if(_loc12_)
         {
            _gthis = this;
         }
         var _loc1_:§1![§ = tunnel.§"[§;
         var _loc2_:Model = §-P§.model;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc13_)
               {
                  if(_loc2_.§0p§ <= 0)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc13_)
                           {
                              if(_loc2_.§0p§ >= 0)
                              {
                                 break loop16;
                              }
                              if(_loc13_)
                              {
                                 break loop16;
                              }
                              §§pop();
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(_loc1_.§9!R§ == null);
                              if(!_loc13_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc12_)
                                 {
                                    break loop16;
                                 }
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop16;
                        }
                        addr00c8:
                        §-P§.spritesheet.§,=§(72);
                        §-P§.spritesheet.§@S§(true);
                        if(_loc12_)
                        {
                           skater.§9E§(4,59,null,1);
                        }
                        skater.spritesheet.§,=§(10);
                        break loop0;
                     }
                     if(§§pop())
                     {
                        §§push(_loc1_.§9!R§);
                        break;
                     }
                     §§push(_loc1_.§@8§);
                     break;
                  }
                  if(!_loc12_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc1_.§3!#§);
               break;
            }
            §§pop().§4w§(_loc2_);
            tunnel.§"[§.§&!2§(§-P§.model);
            §-P§.§9E§(4.5,58.1,null,30);
            §§goto(addr00c8);
         }
         skater.spritesheet.§@S§(true);
         var _loc3_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc12_)
         {
            dialog.§";§("Coming through!",360,40,null,null,null,_loc3_,null);
         }
         _loc3_ = new § 6§(§-P§.§<!U§());
         if(!_loc13_)
         {
            dialog.§";§("Gah!",-200,80,null,null,null,_loc3_,null);
         }
         var _loc4_:BitmapData = new BitmapData(1,1,false,12364668);
         var _loc5_:§[!9§ = new §[!9§("1x1",true);
         while(true)
         {
            if(!_loc13_)
            {
               _loc5_.texture.uploadFromBitmapData(_loc4_);
               _loc4_.dispose();
               map = new §,T§(§=l§.§9T§(12364668),§<!9§.§7!P§(),true,20,0.5,12.5);
               if(!_loc13_)
               {
                  map.§;!6§(new Transform());
                  if(_loc13_)
                  {
                     break;
                  }
               }
            }
            tunnel.§"[§.§&!2§(map);
            map.transform.§6!&§(§-P§.transform.position.x,§-P§.transform.position.y - 10,§-P§.transform.position.z + 50);
            break;
         }
         var _loc6_:§"B§ = null;
         while(true)
         {
            if(_loc12_)
            {
               if(_loc6_ != null)
               {
                  break;
               }
            }
            _loc6_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.2243994752564138)));
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc13_)
            {
               _loc6_.x = 0 * _loc7_;
               if(!_loc12_)
               {
                  break;
               }
            }
            _loc6_.y = 0 * _loc7_;
            if(_loc12_)
            {
               break;
            }
            addr02a0:
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc6_.x);
                        §§push(_loc6_.x);
                        if(_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           §§push(_loc6_.y);
                           §§push(_loc6_.y);
                           if(!_loc13_)
                           {
                              §§push(§§pop() + §§pop() * §§pop());
                              if(!_loc12_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                              if(_loc13_)
                              {
                                 break loop7;
                              }
                              §§push(_loc6_.z);
                              if(_loc13_)
                              {
                                 break loop6;
                              }
                              §§push(_loc6_.z);
                              if(_loc13_)
                              {
                                 break loop5;
                              }
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc13_)
                        {
                           break loop7;
                        }
                        §§goto(addr02f9);
                     }
                     §§goto(addr0305);
                  }
                  addr02f9:
                  §§push(Number(§§pop()));
                  §§push(_loc6_.w);
                  §§push(_loc6_.w);
                  break loop5;
               }
               addr0305:
               var _loc8_:* = §§pop() + §§pop();
               while(true)
               {
                  §§push(_loc8_);
                  if(!_loc13_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc9_:* = §§pop();
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc9_);
                        §§push(0);
                        if(!_loc13_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc13_)
                              {
                                 break loop10;
                              }
                              addr0348:
                              §§push(_loc9_ < 1e-10);
                              if(!_loc13_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break loop9;
                              }
                              §§push(_loc8_);
                           }
                           else
                           {
                              §§push(_loc9_);
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(-§§pop());
                              if(_loc12_)
                              {
                                 §§goto(addr0348);
                              }
                           }
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc8_)));
                           if(!_loc13_)
                           {
                              break;
                           }
                           addr039f:
                           _loc8_ = §§pop();
                           break loop10;
                        }
                        if(_loc12_)
                        {
                           _loc6_.x = 0;
                           if(_loc13_)
                           {
                              break loop10;
                           }
                           _loc6_.y = 0;
                           if(_loc12_)
                           {
                              _loc6_.z = 0;
                              _loc6_.w = 1;
                              break loop9;
                           }
                           §§goto(addr03dc);
                        }
                        §§goto(addr03b3);
                     }
                     §§goto(addr039f);
                  }
                  §§push(_loc6_);
                  §§push(_loc6_.x);
                  if(!_loc13_)
                  {
                     §§push(§§pop() * _loc8_);
                  }
                  §§pop().x = §§pop();
                  addr03b3:
                  §§push(_loc6_);
                  §§push(_loc6_.y);
                  if(!_loc13_)
                  {
                     §§push(§§pop() * _loc8_);
                  }
                  §§pop().y = §§pop();
                  if(_loc12_)
                  {
                     §§push(_loc6_);
                     §§push(_loc6_.z);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                     §§pop().z = §§pop();
                     addr03dc:
                     §§push(_loc6_);
                     §§push(_loc6_.w);
                     if(_loc12_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                     §§pop().w = §§pop();
                     break;
                  }
                  §§goto(addr03f6);
               }
               §'^§ = _loc6_;
               addr03f6:
               map.transform.§"I§(§'^§);
               var _loc10_:§"B§ = §'^§;
               var _loc11_:§"B§ = §'^§;
               if(_loc12_)
               {
                  if(_loc11_ == null)
                  {
                     _loc11_ = new §"B§();
                  }
                  §§push(_loc11_);
                  §§push(_loc10_.x);
                  if(_loc12_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().x = §§pop();
                  while(true)
                  {
                     if(_loc12_)
                     {
                        §§push(_loc11_);
                        §§push(_loc10_.y);
                        if(_loc12_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                     §§push(_loc11_);
                     §§push(_loc10_.z);
                     if(!_loc13_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().z = §§pop();
                     if(!_loc13_)
                     {
                        break;
                     }
                  }
                  _loc11_.w = _loc10_.w;
               }
               map.transform.§&!?§(0.6,§'^§).ease(Quad.§<y§()).repeat().reflect();
               _loc10_ = §'^§;
               while(true)
               {
                  if(_loc12_)
                  {
                     _loc10_.x = 0;
                     _loc10_.y = 0;
                     _loc10_.z = 0;
                     if(!_loc13_)
                     {
                        _loc10_.w = 1;
                        §%!P§ = map.transform.position.x;
                        count = 0;
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                  }
                  tweenMapPosition = null;
                  if(!_loc13_)
                  {
                     tweenMapPosition = function():void
                     {
                        var _temp_1:* = false;
                        var _loc2_:Boolean = true;
                        var _loc3_:Boolean = _temp_1;
                        if(_gthis.map == null)
                        {
                           return;
                        }
                        §§push(-80);
                        if(_loc2_)
                        {
                           §§push(1 + count * 0.25);
                           if(_loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop() / §§pop());
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc1_:* = §§pop();
                        loop0:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_gthis.map.transform.position.y + _loc1_ > -182)
                                 {
                                    §§push(_gthis.map.transform);
                                    §§push(0.5);
                                    §§push(_gthis.§%!P§);
                                    if(_loc2_)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(50);
                                             if(_loc2_)
                                             {
                                                §§push(2);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * count);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(_loc3_)
                                                {
                                                   break loop2;
                                                }
                                             }
                                             if(_gthis.map.transform.position.x <= _gthis.§%!P§)
                                             {
                                                §§push(1);
                                                break;
                                             }
                                             if(_loc2_)
                                             {
                                                break loop2;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc2_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr00fd);
                                       }
                                       §§push(-1);
                                       if(_loc3_)
                                       {
                                       }
                                       break loop3;
                                    }
                                    while(true)
                                    {
                                       §§push(_gthis.map.transform.position.y + _loc1_);
                                       §§push(_gthis.map.transform.position.z);
                                       if(_loc2_)
                                       {
                                          §§push(30);
                                          §§push(count);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§push(§§pop() + §§pop() / §§pop());
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    §§pop().§7#§(§§pop(),§§pop(),§§pop(),§§pop()).ease(Quad.get_easeOut()).onComplete(tweenMapPosition).delay(0.1);
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    break loop0;
                                 }
                              }
                              while(true)
                              {
                                 §§push(_gthis.map.transform);
                                 §§push(0.6);
                                 §§push(_gthis.§%!P§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + 20);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              §§pop().§7#§(§§pop(),§§pop(),-182,4620);
                              if(_loc2_)
                              {
                                 _gthis.map.transform.§&!?§(0.6,_gthis.§'^§);
                                 if(!_loc3_)
                                 {
                                    break loop0;
                                 }
                                 break;
                              }
                              break loop0;
                           }
                           return;
                        }
                        count += 1;
                        break loop1;
                     };
                     while(true)
                     {
                        §§push(map.transform);
                        §§push(0.6);
                        §§push(map.transform.position.x - 70);
                        §§push(map.transform.position.y - 40);
                        §§push(map.transform.position.z);
                        if(_loc12_)
                        {
                           §§push(§§pop() + 150);
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§7#§(§§pop(),§§pop(),§§pop(),§§pop()).ease(Quad.get_easeOut()).onComplete(tweenMapPosition);
                     if(!_loc13_)
                     {
                        §,!J§ = 0.3;
                     }
                  }
                  break;
               }
               return;
            }
            §§push(§§pop() * §§pop());
            break loop6;
         }
         _loc6_.z = _loc7_;
         if(_loc12_)
         {
            _loc6_.w = Number(Math.cos(0.2243994752564138));
         }
         §§goto(addr02a0);
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         _loc1_.x = 2;
         while(true)
         {
            if(!_loc4_)
            {
               _loc1_.y = 106;
               if(!_loc3_)
               {
                  break;
               }
               _loc1_.z = 4129;
            }
            tunnel.§<!M§.reset();
            if(!_loc4_)
            {
               tunnel.display(0);
               §-P§.§9E§(4.3,57.9,null,-2);
               break;
            }
            §§goto(addr007e);
         }
         §-P§.spritesheet.§,=§(36);
         addr007e:
         §-P§.spritesheet.§@S§(true);
         skater.§9E§(4,56.8,null,18);
         skater.spritesheet.§,=§(6);
         skater.spritesheet.§@S§(false);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("Coming through!",360,40,null,null,null,_loc2_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            §,!J§ = 0.2;
            if(!_loc4_)
            {
               §6!I§.visible = true;
            }
            break;
         }
      }
   }
}

