package § 0§
{
   import §!D§.§1!&§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-v§.§+'§;
   import geom3d.Transform;
   import §2n§.§7%§;
   import §4n§.Achievements;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import §=w§.§,D§;
   import §>T§.§!=§;
   import §>T§.§[C§;
   import §>T§.§[]§;
   import §>d§.§#l§;
   import §[^§.§!A§;
   import §[^§.§+!S§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.character.§'5§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.Shadow;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.menu.§1!?§;
   import com.player03.run3.save.§1!;§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObjectContainer;
   import haxe.Timer;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.§5! §;
   import haxeutils.sound.AdvancedSound;
   import motion.actuators.TransformActuator;
   import nme3D.Scene3D;
   import nme3D.model.Object3D;
   import nme3D.model.Model;
   
   public class §-!N§ extends Level
   {
      
      public static var init__:Boolean;
      
      public static var §<n§:Vector.<String>;
      
      public static var §4I§:int = 800;
      
      public static var §4a§:Number = 0.6;
      
      public static var §%A§:Number = 50;
      
      public static function ?(param1:int):Number
      {
         return GrowthFunctions.linearFunc(750,250,param1);
      }
      public static function `s(param1:int):Number
      {
         return GrowthFunctions.boundedFunc(70,-40,3.5,param1);
      }
      public var §%j§:Vector.<§!&§>;
      
      public var §1!@§:Boolean;
      
      public var §1!6§:Boolean;
      
      public var §4!F§:Number;
      
      public var §,M§:String;
      
      public var §'V§:Number;
      
      public var §0!G§:TunnelSection;
      
      public var §9!H§:Vector.<CharacterDef>;
      
      public var §3!H§:§+!S§;
      
      public function §-!N§(param1:§1!&§ = undefined)
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<CharacterBase>;
         var _loc5_:* = null as CharacterBase;
         loop1:
         while(true)
         {
            if(_loc14_)
            {
               §4!F§ = 0;
               while(true)
               {
                  if(_loc14_)
                  {
                     §0!G§ = null;
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§'V§));
                     §§push(-50);
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§'V§ = §§pop();
                     if(!_loc14_)
                     {
                        break loop1;
                     }
                  }
                  §,M§ = "";
                  if(!_loc13_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            §1!6§ = true;
            break;
         }
         var _loc2_:* = {
            "randomTransforms":true,
            "randomizeOnStart":true
         };
         loop3:
         while(true)
         {
            if(_loc14_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(§#l§.§1g§ != null)
                     {
                        if(_loc13_)
                        {
                           break;
                        }
                        _loc2_.modifyData = §#l§.§1g§.§"!Y§;
                        if(!_loc14_)
                        {
                           break loop4;
                        }
                     }
                     while(true)
                     {
                        §§push(this);
                        §§push(0);
                        if(!_loc13_)
                        {
                           if(param1 == null)
                           {
                              §§push(§8!=§.§@!A§());
                              break;
                           }
                        }
                        §§push(param1);
                        break;
                     }
                     §§pop().super(§§pop(),§§pop(),§,a§.INFINITE,_loc2_);
                     if(_loc14_)
                     {
                        break;
                     }
                  }
                  if(characters[0].§!8§ != CharacterRegistry.random)
                  {
                     break loop3;
                  }
                  if(_loc14_)
                  {
                     break;
                  }
               }
               §§push(0);
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
            }
            _loc4_ = characters;
            if(!_loc13_)
            {
               while(true)
               {
                  if(_loc3_ >= int(_loc4_.length))
                  {
                     break loop3;
                  }
                  _loc5_ = _loc4_[_loc3_];
                  if(!_loc13_)
                  {
                     _loc3_++;
                     if(_loc13_)
                     {
                        continue;
                     }
                  }
                  _loc5_.§!8§ = CharacterRegistry.random.character;
               }
            }
            break;
         }
         var _loc6_:Vector.<§!&§> = new Vector.<§!&§>(0,false);
         if(_loc14_)
         {
            §%j§ = _loc6_;
         }
         var _loc7_:Vector.<CharacterDef> = new Vector.<CharacterDef>(0,false);
         loop7:
         while(true)
         {
            while(true)
            {
               if(_loc14_)
               {
                  §9!H§ = _loc7_;
                  if(!_loc14_)
                  {
                     break;
                  }
                  §§push(§§findproperty(§&A§));
                  §§push(§-!N§.§<n§[int(Math.floor(Number(Math.random()) * (int(§-!N§.§<n§.length) - 1 + 1)))]);
                  if(_loc14_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§&A§ = §§pop();
                  if(!_loc14_)
                  {
                     break loop7;
                  }
               }
               §&^§ = true;
               if(_loc14_)
               {
                  §'!,§ = 200;
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               break loop7;
            }
            §3!H§ = new §+!S§(this,true);
            break;
         }
         var _loc8_:§2!;§ = §1!?§.§`0§;
         if(!_loc13_)
         {
            §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
         }
         var _loc9_:§]k§ = §1!?§.§]A§;
         §§push(Boolean(Save.§@!A§().get(_loc9_.§=-§,Boolean(_loc9_.§ -§))));
         if(!_loc13_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc10_:* = §§pop();
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  §§push(false);
                  if(!_loc13_)
                  {
                     while(true)
                     {
                        if(§#l§.§1g§ != null)
                        {
                           if(!_loc13_)
                           {
                              §§pop();
                              if(!_loc14_)
                              {
                                 break loop10;
                              }
                              §§push(§#l§.§1g§.§9!>§);
                              if(_loc13_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc14_)
                           {
                              break;
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc13_)
                           {
                              §§push(true);
                              if(!_loc13_)
                              {
                                 break;
                              }
                              break loop9;
                           }
                           break loop11;
                        }
                        break loop10;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop9;
               }
               §§goto(addr02c4);
            }
            §§push(["box","rotatedZBox"]);
            if(_loc14_)
            {
               §§push(§§pop());
            }
            var _loc12_:* = §§pop();
            §§push(§§findproperty(§[]§));
            §§push(this);
            §§push(_loc12_);
            §§push(int(Math.round(Number(§-!N§.§?§(_loc3_)))));
            if(!_loc13_)
            {
               §§push(§§pop() * 30);
            }
            §§push(Number(§§pop()));
            §§push(int(Math.round(Number(§-!N§.§`s§(_loc3_)))));
            if(!_loc13_)
            {
               §§push(§§pop() * 30);
            }
            var _loc11_:§[]§ = new §§pop().§[]§(§§pop(),§§pop(),§§pop(),Number(§§pop()));
            loop12:
            while(true)
            {
               while(true)
               {
                  if(_loc10_)
                  {
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push(_loc11_);
                     §§push(§^!N§);
                     if(_loc14_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§68§(§§pop());
                     if(_loc13_)
                     {
                        break loop12;
                     }
                  }
                  registerAnimation(_loc11_);
                  if(!_loc13_)
                  {
                     break loop12;
                  }
                  break;
               }
               §§push(§§findproperty(§[]§));
               §§push(this);
               §§push(_loc12_);
               §§push(int(Math.round(1.5 * Number(§-!N§.§?§(_loc3_)))));
               if(!_loc13_)
               {
                  §§push(§§pop() * 30);
               }
               §§push(Number(§§pop()));
               §§push(int(Math.round(4.13 * Number(§-!N§.§`s§(_loc3_)))));
               if(_loc14_)
               {
                  §§push(§§pop() * 30);
               }
               _loc11_ = new §§pop().§[]§(§§pop(),§§pop(),§§pop(),Number(§§pop()));
               loop17:
               while(true)
               {
                  while(true)
                  {
                     if(_loc14_)
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        if(!_loc14_)
                        {
                           break loop17;
                        }
                     }
                     §§push(_loc11_);
                     §§push(§^!N§);
                     if(_loc14_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§68§(§§pop());
                     if(!_loc13_)
                     {
                        break;
                     }
                     break loop17;
                  }
                  registerAnimation(_loc11_);
                  break;
               }
               §§goto(addr049c);
            }
            while(true)
            {
               §§push(_loc3_);
               if(!_loc13_)
               {
                  §§push(2);
                  if(!_loc14_)
                  {
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     §§push(§§findproperty(§[]§));
                     §§push(this);
                     §§push(_loc12_);
                     §§push(int(Math.round(0.5 * Number(§-!N§.§?§(_loc3_)))));
                     if(_loc14_)
                     {
                        §§push(§§pop() * 30);
                     }
                     §§push(Number(§§pop()));
                     §§push(int(Math.round(1.2 * Number(§-!N§.§`s§(_loc3_)))));
                     if(_loc14_)
                     {
                        §§push(§§pop() * 30);
                     }
                     _loc11_ = new §§pop().§[]§(§§pop(),§§pop(),§§pop(),Number(§§pop()));
                     while(true)
                     {
                        if(_loc14_)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        §§push(_loc11_);
                        §§push(§^!N§);
                        if(!_loc13_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§68§(§§pop());
                        if(_loc14_)
                        {
                           break;
                        }
                     }
                     registerAnimation(_loc11_);
                  }
                  §§push(_loc3_);
               }
               §§push(5);
               break;
            }
            if(§§pop() >= §§pop())
            {
               while(true)
               {
                  if(!_loc13_)
                  {
                     break loop13;
                  }
                  addr04b0:
                  §#l§.§1g§.§%!2§(this);
                  break;
               }
               §§goto(addr04bb);
            }
            addr049c:
            if(§#l§.§1g§ != null)
            {
               if(!_loc13_)
               {
                  §§goto(addr04b0);
               }
            }
            addr04bb:
            return;
         }
         _loc10_ = §§pop();
         if(_loc13_)
         {
            break loop10;
         }
         §§push(_loc3_);
         if(_loc14_)
         {
            if(§§pop() >= 2)
            {
               addr02c4:
               §§push(_loc3_);
               if(!_loc13_)
               {
                  §§push(int(§§pop()));
                  if(!_loc13_)
                  {
                     addr02d4:
                     _loc3_ = §§pop();
                     break loop10;
                  }
               }
               else
               {
                  addr02e2:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               §§push(2);
               if(_loc14_)
               {
                  §§goto(addr02e2);
               }
            }
            _loc3_ = §§pop();
            break loop10;
         }
         §§goto(addr02d4);
      }
      
      public static function §1!5§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§4!^§ = new §4!^§("infinite");
         while(true)
         {
            if(!_loc2_)
            {
               _loc1_.§4Z§(Save.§,>§);
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc1_.§4Z§(Save.mostBatteries);
            break;
         }
      }
      
      public static function §`A§(param1:§[C§) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:§!A§ = new §!A§(param1.§!C§,4,null,null,null,true);
         var _loc3_:Point3D = _loc2_.transform.§%!7§;
         var _loc4_:Point3D = param1.transform.§%!7§;
         if(!_loc6_)
         {
            _loc3_.x = _loc4_.x;
            _loc3_.y = _loc4_.y;
            _loc3_.z = _loc4_.z;
         }
         var _temp_1:* = _loc2_.transform.§%!7§;
         §§push(_temp_1);
         §§push(_temp_1.z);
         if(_loc5_)
         {
            §§push(§§pop() + param1.§[l§);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().z = §§pop();
         _loc2_.§'K§(false);
         while(true)
         {
            if(_loc5_)
            {
               _loc2_.reset();
               if(!_loc5_)
               {
                  break;
               }
               _loc2_.§1!X§(0,0,0);
               if(!_loc5_)
               {
                  break;
               }
               _loc2_.§6g§ = false;
            }
            param1.§!C§.§4M§(_loc2_);
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         super.update(param1);
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(false);
               if(§0!G§ != null)
               {
                  §§pop();
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§0!G§.§!!8§ == null);
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               if(§§pop())
               {
                  §0!G§ = null;
               }
               §3!H§.update(param1);
               §§push(false);
               if(!_loc3_)
               {
                  if(int(Math.round(§4!F§ * 0.03333333333333333)) >= 800)
                  {
                     break loop0;
                  }
                  if(_loc2_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(int(Math.round(characters[0].transform.position.z * 0.03333333333333333)) >= 800);
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
               }
               §§push(Boolean(§§pop()));
               break loop0;
            }
            §4!F§ = characters[0].transform.position.z;
            §§goto(addr00e8);
         }
         if(§§pop())
         {
            Achievements.§@!F§.§,Y§();
            if(_loc2_)
            {
               break loop1;
            }
            addr00e8:
            return;
         }
         break loop1;
      }
      
      public function §2'§(param1:CharacterBase, param2:CharacterDef) : Boolean
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc5_:* = null as CharacterDef;
         var _loc6_:* = null as CharacterBase;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = null as Vector.<Shadow>;
         var _loc11_:* = null as Shadow;
         var _loc12_:* = NaN;
         var _loc13_:* = null as §3!I§;
         var _loc14_:* = null as §3!I§;
         var _loc15_:* = 0;
         var _loc16_:* = null as §,!A§;
         if(_loc18_)
         {
            §§push(0);
            if(!_loc17_)
            {
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
         }
         var _loc4_:Vector.<CharacterDef> = CharacterRegistry.available;
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop22:
               while(true)
               {
                  loop23:
                  while(true)
                  {
                     loop24:
                     while(true)
                     {
                        if(_loc18_)
                        {
                           loop0:
                           while(_loc3_ < int(_loc4_.length))
                           {
                              _loc5_ = _loc4_[_loc3_];
                              _loc3_++;
                              if(!_loc17_)
                              {
                                 loop25:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       §§push(false);
                                       if(!_loc17_)
                                       {
                                          if(_loc5_ == param2)
                                          {
                                             break;
                                          }
                                          if(_loc17_)
                                          {
                                             break loop25;
                                          }
                                       }
                                       §§pop();
                                       if(_loc18_)
                                       {
                                          §§push(_loc5_.§<!,§());
                                          if(!_loc17_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc18_)
                                             {
                                                break loop25;
                                             }
                                             break;
                                          }
                                          break loop25;
                                       }
                                       addr00f0:
                                       if(§§pop())
                                       {
                                          if(_loc18_)
                                          {
                                             §1!@§ = false;
                                             if(!_loc17_)
                                             {
                                                break loop0;
                                             }
                                          }
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc18_)
                                       {
                                          break loop23;
                                       }
                                       §§pop();
                                       if(_loc17_)
                                       {
                                          break loop22;
                                       }
                                       §§push(int(§9!H§.indexOf(_loc5_,0)) < 0);
                                       if(_loc17_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    §§goto(addr00f0);
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop26;
                              }
                              break loop24;
                           }
                        }
                        if(param2 != null)
                        {
                           if(!_loc17_)
                           {
                              §§push(param1.§73§.§,`§);
                              if(!_loc17_)
                              {
                                 §§push(!§§pop());
                                 break loop4;
                              }
                              break loop23;
                           }
                           break loop3;
                        }
                        §§push(false);
                        break loop23;
                     }
                     §§goto(addr0194);
                  }
                  return §§pop();
               }
               §§goto(addr01f2);
            }
            if(§§pop())
            {
               param1.§73§.build();
               break;
            }
            §§goto(addr0145);
         }
         §,J§();
         addr0145:
         §§push(§§findproperty(§0!G§));
         §§push(§§findproperty(§]!#§));
         §§push(param1.§73§.endZ);
         if(!_loc17_)
         {
            §§push(§§pop() + 1);
            if(!_loc17_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().§0!G§ = §§pop().§]!#§(§§pop(),true);
         while(true)
         {
            if(§0!G§ == null)
            {
               if(!_loc17_)
               {
                  §0!G§ = §1W§;
                  if(!_loc18_)
                  {
                     break;
                  }
               }
            }
            addr0194:
            while(true)
            {
               §§push(§§findproperty(§73§));
               §§push(§§findproperty(§<J§));
               §§push(param1.§73§.endZ);
               if(_loc18_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc18_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§73§ = §§pop().§<J§(§§pop());
            if(!_loc17_)
            {
               if(power != §0!G§.power)
               {
                  §+!I§.§?!4§(power,§0!G§.power,"smooth");
               }
            }
            break;
         }
         addr01f2:
         _loc6_ = §+,§(param2);
         if(_loc18_)
         {
            §[6§(_loc6_);
            while(true)
            {
               if(!_loc17_)
               {
                  _loc6_.reset();
                  if(!_loc18_)
                  {
                     break;
                  }
               }
               §§push(_loc6_);
               §§push(_loc6_.§"!$§);
               if(!_loc17_)
               {
                  §§push(-§§pop());
               }
               §§pop().§3r§(§§pop(),true);
               if(!_loc17_)
               {
                  _loc6_.§&7§();
               }
               break;
            }
         }
         _loc7_ = param1.transform.§2!§();
         §§push(param1.§73§.tunnelBounds);
         §§push(_loc7_);
         §§push(_loc6_.§&N§);
         if(_loc18_)
         {
            §§push(§§pop() * 1.1);
         }
         §§pop().moveInside(§§pop(),§§pop(),_loc7_);
         loop8:
         while(true)
         {
            if(_loc18_)
            {
               §§push(_loc7_);
               §§push(param1.§73§.endZ);
               if(_loc18_)
               {
                  §§push(§§pop() - 80);
               }
               §§pop().z = §§pop();
               if(!_loc17_)
               {
                  _loc6_.transform.§"w§(_loc7_);
                  _loc6_.§+!X§ = param1.§"!$§;
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(-Number(Math.atan2(_loc7_.y,_loc7_.x)));
                        §§push(1.5707963267948966);
                        if(!_loc17_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc17_)
                           {
                              break;
                           }
                           _loc8_ = §§pop();
                           §§push(_loc8_);
                           §§push(_loc6_.§+!X§);
                           if(!_loc18_)
                           {
                              break loop9;
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc18_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc18_)
                              {
                                 _loc9_ = §§pop();
                                 if(_loc17_)
                                 {
                                    break;
                                 }
                                 if(_loc9_ < 0)
                                 {
                                    §§push(_loc9_);
                                    break loop10;
                                 }
                                 if(_loc17_)
                                 {
                                    break loop8;
                                 }
                                 §§push(_loc9_);
                                 if(!_loc18_)
                                 {
                                    break loop10;
                                 }
                                 §§push(6.283185307179586);
                                 if(_loc17_)
                                 {
                                    break loop9;
                                 }
                                 §§push(§§pop() % §§pop());
                              }
                           }
                           §§push(1.0471975511965976);
                           break loop9;
                        }
                        §§goto(addr032f);
                     }
                     §§goto(addr0318);
                  }
                  if(§§pop() > §§pop())
                  {
                     _loc6_.§+!X§ = _loc8_;
                  }
                  addr032f:
                  _loc6_.§3r§(_loc6_.§+!X§,true);
                  _loc6_.§&7§();
               }
            }
            §§push(0);
            if(_loc18_)
            {
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
            break;
         }
         _loc10_ = _loc6_.§?!%§;
         while(_loc3_ < int(_loc10_.length))
         {
            _loc11_ = _loc10_[_loc3_];
            if(_loc18_)
            {
               _loc3_++;
               if(_loc18_)
               {
                  _loc11_.reset();
               }
            }
         }
         loop12:
         while(true)
         {
            if(!_loc17_)
            {
               loop13:
               while(true)
               {
                  while(true)
                  {
                     §§push(param2.name);
                     if(!_loc17_)
                     {
                        §§push("Skater");
                        if(!_loc18_)
                        {
                           break;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc17_)
                           {
                              _loc6_.§%8§(-40);
                           }
                           break loop13;
                        }
                        §§push(param2.name);
                     }
                     §§push("Child");
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc6_.§%8§(-100);
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc6_.§?`§.strength);
                     if(!_loc17_)
                     {
                        §§push(-§§pop());
                        if(_loc17_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc12_ = §§pop();
                  if(!_loc17_)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc6_);
                           if(!_loc17_)
                           {
                              §§push(-250);
                              if(_loc17_)
                              {
                                 break;
                              }
                              if(§§pop() <= _loc12_)
                              {
                                 §§push(_loc12_);
                                 break loop16;
                              }
                           }
                           §§push(-250);
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc18_)
                        {
                        }
                        break;
                     }
                     §§pop().§%8§(§§pop());
                     break;
                  }
                  break loop12;
               }
            }
            break loop13;
         }
         while(true)
         {
            §§push(§=B§);
            §§push(int(animations.length));
            if(!_loc17_)
            {
               §§push(1);
               if(_loc17_)
               {
                  break;
               }
               §§push(§§pop() - §§pop());
            }
            §§push(-1);
            break;
         }
         _loc13_ = §§pop().§@W§(§§pop(),§§pop(),-1);
         if(!_loc17_)
         {
            loop2:
            while(_loc13_.§#1§ != _loc13_.end)
            {
               _loc14_ = _loc13_;
               while(true)
               {
                  if(!_loc17_)
                  {
                     loop20:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc14_);
                           §§push(_loc14_.§#1§);
                           if(_loc18_)
                           {
                              §§push(_loc13_.§['§);
                              if(!_loc18_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc18_)
                              {
                                 break loop20;
                              }
                           }
                           §§push(int(§§pop()));
                           if(_loc18_)
                           {
                              var _temp_2:* = §§pop();
                              §§push(_temp_2);
                              §§push(_temp_2);
                              break;
                           }
                           break loop20;
                        }
                        _loc15_ = §§pop();
                        break;
                     }
                     §§pop().§#1§ = §§pop();
                     if(!_loc18_)
                     {
                        break;
                     }
                  }
                  §§push(_loc15_);
                  if(_loc18_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc18_)
                  {
                     break;
                  }
                  addr04eb:
                  _loc16_ = animations[_loc3_];
                  if(!_loc17_)
                  {
                     if(_loc16_.§5!&§ == param1.§73§.id)
                     {
                        if(_loc18_)
                        {
                           animations.splice(_loc3_,1);
                        }
                     }
                  }
                  continue loop2;
               }
               if(!(animations[_loc3_] is §,!A§))
               {
                  continue;
               }
               §§goto(addr04eb);
            }
            if(!_loc17_)
            {
               analytics.reset();
            }
         }
         return true;
      }
      
      override public function §+,§(param1:CharacterDef) : CharacterBase
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  if(param1 != CharacterRegistry.random)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               CharacterRegistry.random.§4!a§(null,§9!H§);
               break loop0;
            }
            return super.§+,§(param1);
         }
         param1 = CharacterRegistry.random.character;
         break loop1;
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc1_:* = null as CharacterDef;
         var _loc2_:* = 0;
         var _loc3_:* = null as Vector.<Shadow>;
         var _loc4_:* = null as Shadow;
         var _loc5_:* = null as Vector.<§!&§>;
         var _loc6_:* = null as Vector.<CharacterDef>;
         var _loc7_:* = null as §+'§;
         var _loc8_:* = NaN;
         var _loc9_:* = false;
         var _loc10_:* = null as §5! §;
         if(§1!6§)
         {
            §1!6§ = false;
            super.reset();
            if(_loc12_)
            {
               §3!H§.reset();
            }
            if(int(§%j§.length) > 0)
            {
               §§push(§%j§);
               §§push(int(§%j§.length));
               if(_loc12_)
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop()[§§pop()].data;
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(_loc12_)
                     {
                        if(_loc1_ == CharacterRegistry.§;<§)
                        {
                           break;
                        }
                        if(_loc11_)
                        {
                           break loop2;
                        }
                     }
                     §+,§(CharacterRegistry.§;<§);
                     if(_loc11_)
                     {
                        break loop2;
                     }
                     §73§ = §8!$§[0];
                     if(_loc11_)
                     {
                        break loop2;
                     }
                     characters[0].reset();
                     if(!_loc11_)
                     {
                        break loop2;
                     }
                     §§goto(addr0102);
                  }
                  _loc5_ = new Vector.<§!&§>(0,false);
                  if(_loc12_)
                  {
                     §%j§ = _loc5_;
                  }
                  _loc6_ = new Vector.<CharacterDef>(0,false);
                  if(!_loc11_)
                  {
                     §9!H§ = _loc6_;
                  }
               }
               §§push(0);
               if(!_loc11_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
               addr0102:
               _loc3_ = characters[0].§?!%§;
               if(_loc12_)
               {
                  while(true)
                  {
                     if(_loc2_ >= int(_loc3_.length))
                     {
                        break loop3;
                     }
                     _loc4_ = _loc3_[_loc2_];
                     if(!_loc11_)
                     {
                        _loc2_++;
                        if(!_loc11_)
                        {
                           _loc4_.reset();
                        }
                     }
                  }
               }
               break loop3;
            }
            §[6§(characters[0]);
            §]u§.§@!A§().§]]§.reset();
            _loc7_ = §]u§.§@!A§().§]]§.§<^§;
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(!_loc11_)
                  {
                     _loc7_.§&-§(false);
                     while(true)
                     {
                        if(_loc12_)
                        {
                           _loc7_.§<q§();
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        §§push(Timer.stamp());
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc8_ = §§pop();
                        if(_loc12_)
                        {
                           if(§5! §.§@!A§().§2!C§ == null)
                           {
                              §§push(true);
                              if(_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc9_ = §§pop();
                              break;
                           }
                           if(!_loc12_)
                           {
                              break;
                           }
                        }
                        _loc10_ = §5! §.§@!A§();
                        if(_loc10_.§@h§ == null)
                        {
                           if(_loc10_.§2!C§ != null)
                           {
                              if(!_loc12_)
                              {
                                 break loop4;
                              }
                              §§push(_loc10_.§2!C§.§4!'§ != null);
                              if(!_loc11_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc11_)
                                 {
                                    _loc9_ = §§pop();
                                    break;
                                 }
                                 addr027a:
                                 _loc9_ = Boolean(§§pop());
                                 break;
                              }
                           }
                           else
                           {
                              §§push(false);
                              if(!_loc11_)
                              {
                                 §§goto(addr027a);
                              }
                           }
                        }
                        else
                        {
                           §§push(true);
                           if(!_loc12_)
                           {
                              break loop5;
                           }
                        }
                        _loc9_ = §§pop();
                        break;
                     }
                  }
                  §§push(_loc9_);
                  break;
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        §'V§ = _loc8_;
                        if(_loc11_)
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        if(§&A§ != §,M§)
                        {
                           break loop4;
                        }
                        §§push(§§findproperty(§&A§));
                        §§push(§-!N§.§<n§[int(Math.floor(Number(Math.random()) * (int(§-!N§.§<n§.length) - 1 + 1)))]);
                        if(_loc12_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§&A§ = §§pop();
                     }
                     break loop4;
                  }
                  §§goto(addr0325);
               }
               §§goto(addr0317);
            }
            §,M§ = §&A§;
            addr0317:
            §1!@§ = false;
            if(_loc12_)
            {
               addr0325:
               §0!G§ = §]!#§(0,true);
            }
         }
      }
      
      public function §[6§(param1:CharacterBase) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §%j§.push(new §!&§(param1.§!8§,analytics));
               if(_loc3_)
               {
                  break;
               }
            }
            if(param1.§!8§.§[P§ != null)
            {
               if(_loc2_)
               {
                  §9!H§.push(param1.§!8§.§[P§.§@D§[0]);
                  if(_loc3_)
                  {
                  }
               }
               break;
            }
            §9!H§.push(param1.§!8§);
            break;
         }
      }
      
      public function §^!N§(param1:§[C§, param2:int, param3:int) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:* = null as Model;
         var _loc6_:* = null as Scene3D;
         var _loc7_:* = null as Model;
         §§push(false);
         if(_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
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
                        if(!_loc8_)
                        {
                           §§push(param2);
                           §§push(param3);
                           if(!_loc8_)
                           {
                              §§push(§§pop() - 1);
                           }
                           if(§§pop() != §§pop())
                           {
                              break;
                           }
                           if(!_loc8_)
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 break loop2;
                              }
                              §§push(Number(Math.random()) < 0.4);
                              if(!_loc9_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc9_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           §§push(true);
                           if(_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break loop1;
                        }
                     }
                     break;
                  }
               }
               _loc4_ = §§pop();
               if(!_loc8_)
               {
                  §-!N§.§`A§(param1);
                  if(_loc9_)
                  {
                     break loop2;
                  }
                  break;
               }
            }
            break loop2;
         }
         §§push(§#l§.§1g§);
         §§push(param1.§0w§);
         if(!_loc8_)
         {
            §§push(§§pop() * 2);
         }
         _loc5_ = §§pop().§[n§(§§pop(),_loc4_);
         while(true)
         {
            if(_loc9_)
            {
               if(_loc5_ == null)
               {
                  break;
               }
            }
            _loc6_ = §"[§;
            _loc7_ = param1.model;
            loop5:
            while(true)
            {
               if(_loc7_.§0p§ > 0)
               {
                  §§push(_loc6_.§3!#§);
               }
               else
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc8_)
                     {
                        if(_loc7_.§0p§ >= 0)
                        {
                           break;
                        }
                        if(_loc9_)
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              break loop5;
                           }
                           §§push(_loc6_.§9!R§ == null);
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(!§§pop());
                     if(!_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(_loc6_.§9!R§);
                  }
                  else
                  {
                     §§push(_loc6_.§@8§);
                  }
               }
               §§pop().§4w§(_loc7_);
               if(!_loc8_)
               {
                  param1.§9!4§(_loc5_);
               }
               break;
            }
            §"[§.§&!2§(_loc5_);
            break;
         }
      }
      
      override public function §#!§(param1:CharacterBase) : void
      {
         var a11:CharacterBase;
         var f1:Function;
         var a1:CharacterBase;
         var f:Function;
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc6_:* = false;
         var _loc7_:* = null as §]k§;
         var _loc8_:* = null;
         var _loc9_:* = null as §'5§;
         var _loc10_:* = null as Function;
         var _loc11_:* = null as Function;
         §§push(false);
         if(§7%§.§@!A§().visible)
         {
            §§pop();
            §§push(§7%§.§@!A§().parent != null);
            if(!_loc14_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         if(§§pop())
         {
            return;
         }
         Currency.§@!A§().§`L§();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop17:
               while(true)
               {
                  if(_loc15_)
                  {
                     loop18:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc15_)
                           {
                              §§push(false);
                              if(!_loc15_)
                              {
                                 break loop18;
                              }
                              if(§0!G§ == null)
                              {
                                 break;
                              }
                              if(!_loc15_)
                              {
                                 break loop18;
                              }
                              §§pop();
                           }
                           §§push(§0!G§.§!!8§ == null);
                           if(_loc15_)
                           {
                              §§push(!§§pop());
                              if(!_loc14_)
                              {
                                 break loop18;
                              }
                              break;
                           }
                           break loop18;
                        }
                        if(§§pop())
                        {
                           §§pop();
                           if(!_loc15_)
                           {
                              break loop17;
                           }
                           while(true)
                           {
                              §§push(param1.transform.position.z);
                              if(!_loc14_)
                              {
                                 §§push(§0!G§.startZ);
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§push(450);
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           param1.§'7§(true);
                           break loop2;
                        }
                        if(_loc14_)
                        {
                           break loop1;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop19;
                  }
                  §73§ = §0!G§;
                  param1.reset();
                  if(_loc14_)
                  {
                     break loop2;
                  }
                  §'!5§(0.6);
                  if(!_loc15_)
                  {
                     break loop1;
                  }
                  §§push(int(§'!E§.§@!A§().§6a§.length));
                  if(!_loc14_)
                  {
                     if(§§pop() <= 0)
                     {
                        if(!_loc14_)
                        {
                           break;
                        }
                        §§goto(addr0162);
                     }
                     §§goto(addr0152);
                  }
                  §§goto(addr01a2);
               }
               §'!E§.§@!A§().§>!W§("Whoops! Let\'s pretend that didn\'t happen.",1.2);
               addr0152:
               §0!G§ = null;
               if(_loc14_)
               {
                  break loop1;
               }
               addr0162:
               return;
            }
            §§push(§%j§);
            §§push(int(§%j§.length));
            if(_loc15_)
            {
               §§push(§§pop() - 1);
            }
            §§pop()[§§pop()].§#! §();
            break;
         }
         §§push(int(Math.round(param1.transform.position.z * 0.03333333333333333)));
         if(_loc15_)
         {
            addr01a2:
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:§9'§ = §9'§.§@!A§();
         §§push(param1.§!8§.§6<§ + "SoloDistance");
         if(!_loc14_)
         {
            §§push(§§pop());
            if(!_loc14_)
            {
               §§push(§§pop());
            }
         }
         var _loc4_:* = §§pop();
         §§push(int(Math.round((param1.transform.position.z - param1.§'j§()) * 0.03333333333333333)));
         if(!_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         _loc3_.§?!;§.submit(_loc4_,_loc5_);
         while(true)
         {
            loop4:
            while(true)
            {
               loop15:
               while(true)
               {
                  if(_loc15_)
                  {
                     §§push(int(§%j§.length));
                     if(_loc14_)
                     {
                        break loop4;
                     }
                     while(true)
                     {
                        §§push(1);
                        if(!_loc14_)
                        {
                           if(§§pop() != §§pop())
                           {
                              break;
                           }
                           if(_loc14_)
                           {
                              break loop5;
                           }
                           §§push(_loc2_);
                           if(!_loc15_)
                           {
                              break loop4;
                           }
                           §§push(2000);
                           if(!_loc15_)
                           {
                              break loop15;
                           }
                        }
                        if(§§pop() < §§pop())
                        {
                           break;
                        }
                        Achievements.§=!_§.§,Y§();
                        if(_loc15_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  §§push(false);
                  if(int(§%j§.length) <= 2)
                  {
                     §§pop();
                     continue loop5;
                  }
                  §§goto(addr028a);
               }
               §§goto(addr0299);
            }
            §§push(5000);
            if(_loc14_)
            {
               break loop15;
            }
            §§push(§§pop() >= §§pop());
            if(!_loc14_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc14_)
               {
                  addr028a:
                  if(!§§pop())
                  {
                     addr02df:
                     §§push(false);
                     if(!_loc14_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc6_ = §§pop();
                     break loop5;
                  }
                  §§goto(addr0297);
                  §§push(int(§%j§.length));
               }
               §§goto(addr02d0);
            }
            §§goto(addr02df);
         }
         loop5:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_);
               if(!_loc14_)
               {
                  break loop4;
               }
               addr0297:
               addr0299:
               if(§§pop() == 1)
               {
                  §§push(true);
                  break;
               }
               if(!_loc15_)
               {
                  break loop5;
               }
               _loc7_ = §7%§.§`!-§;
               _loc6_ = Boolean(Save.§@!A§().get(_loc7_.§=-§,Boolean(_loc7_.§ -§)));
               if(!_loc14_)
               {
                  break loop5;
               }
               §§goto(addr0335);
            }
            addr02d0:
            _loc6_ = §§pop();
            break;
         }
         while(true)
         {
            §§push(_loc6_);
            if(!_loc14_)
            {
               if(§§pop())
               {
                  Achievements.§;!W§.§,Y§();
               }
               §§push(false);
               if(!_loc15_)
               {
                  break;
               }
            }
            §§goto(addr031c);
         }
         addr031c:
         §§push(§1!@§);
         if(!_loc14_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            §§pop();
            §§push(unpausedTime > 0);
            break loop7;
         }
         if(§§pop())
         {
            §1!@§ = true;
            if(_loc15_)
            {
               param1.model.§#"§(true);
            }
            addr0335:
            param1.§?`§.§!!2§ = param1.§?`§.§!"§;
            _loc8_ = param1.§!![§(§'5§).iterator();
            while(Boolean(_loc8_.hasNext()))
            {
               _loc9_ = _loc8_.next();
               if(_loc15_)
               {
                  _loc9_.§^-§ = _loc9_.§>@§;
               }
            }
            while(true)
            {
               if(_loc15_)
               {
                  §§push(§§newactivation());
                  §§push(§2'§);
                  if(!_loc14_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[1] = §§pop();
                  if(!_loc15_)
                  {
                     break;
                  }
                  a1 = param1;
                  if(!_loc14_)
                  {
                     while(true)
                     {
                        if(!_loc14_)
                        {
                           §§push(§§pop());
                           if(!_loc15_)
                           {
                              break;
                           }
                        }
                        _loc10_ = §§pop();
                        if(_loc15_)
                        {
                           §§push(§§newactivation());
                           §§push(§#!§);
                           if(_loc15_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§§slot[3] = §§pop();
                           a11 = param1;
                           if(_loc15_)
                           {
                              break;
                           }
                           addr03ed:
                           _loc11_ = §§pop();
                        }
                     }
                     §§goto(addr03ed);
                  }
               }
               §7%§.§@!A§().show(§9!H§,_loc10_,_loc11_);
               break;
            }
            return;
         }
         var _loc12_:§1!;§ = Save.infiniteDistance;
         if(_loc15_)
         {
            while(true)
            {
               §§push(_loc12_);
               §§push(Number(Save.§@!A§().get(_loc12_.§=-§,Number(_loc12_.§ -§))));
               if(!_loc14_)
               {
                  §§push(param1.transform.position.z);
                  if(!_loc14_)
                  {
                     §§push(§§pop() - §%j§[0].§0;§.§&5§.z);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc15_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§?F§(§§pop());
         }
         §§push(§]u§.§@!A§().§#!I§.§@!1§(§%j§));
         if(_loc15_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc14_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc13_:* = §§pop();
         §<,§.§'N§(§%j§);
         if(_loc15_)
         {
            while(true)
            {
               §§push(§<,§);
               §§push(this);
               §§push(param1);
               if(_loc15_)
               {
                  if(!_loc13_)
                  {
                     §§push("Died");
                     break;
                  }
               }
               §§push("Won");
               if(_loc14_)
               {
               }
               break;
            }
            §§pop().§]!!§(§§pop(),§§pop(),§§pop(),§%j§);
         }
         loop12:
         while(true)
         {
            while(true)
            {
               if(_loc2_ >= 800)
               {
                  if(!_loc15_)
                  {
                     break;
                  }
                  Achievements.§@!F§.§,Y§();
                  if(_loc14_)
                  {
                     break loop12;
                  }
               }
               while(true)
               {
                  §§push(Timer.stamp());
                  if(!_loc14_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc14_)
                     {
                        §§push(§'V§);
                        if(!_loc15_)
                        {
                           break;
                        }
                        §§push(§§pop() - §§pop());
                     }
                  }
                  §§push(50);
                  break;
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               addr0532:
               §5!Y§(0);
               break loop12;
            }
            §5! §.§@!A§().§#v§(null);
            §§goto(addr0532);
         }
      }
      
      override public function §^!J§(param1:int, param2:Boolean = false) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() - 1;
         }
      }
      
      override public function §9$§(param1:int, param2:Boolean = false, param3:Boolean = true) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1);
         if(_loc4_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function §<L§(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(§?!I§);
                  §§push(Number(Math.random()));
                  if(!_loc3_)
                  {
                     §§push(0.5);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§§pop() * 2);
                  if(_loc2_)
                  {
                     §§push(1.5707963267948966);
                     break;
                  }
                  break loop0;
               }
               §§push(§§pop() * §§pop());
               break;
            }
            §§pop().angle = §§pop();
            if(!_loc3_)
            {
               super.§<L§(param1);
            }
         }
      }
      
      override public function §5!Y§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §1!6§ = true;
            while(true)
            {
               if(_loc3_)
               {
                  super.§5!Y§(0);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §1!6§ = false;
               break;
            }
         }
      }
   }
}

import haxeutils.math.GrowthFunctions;

