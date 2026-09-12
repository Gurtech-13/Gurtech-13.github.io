package com.player03.run3.menu
{
   import §!!$§.§?y§;
   import §!D§.§1!&§;
   import §"!M§.§!!P§;
   import §'!W§.§&!A§;
   import §+!1§.§+T§;
   import §+!1§.§;a§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §1!a§.§"!4§;
   import §1!a§.§&0§;
   import §1!a§.§0!0§;
   import §1!a§.§5!'§;
   import §1!a§.§<!!§;
   import §1!a§.§^!?§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §6!Q§.§"q§;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §6[§.§&!K§;
   import §6[§.§5v§;
   import §6[§.§=9§;
   import §6[§.§>3§;
   import §6[§.§>f§;
   import §6[§.§`!O§;
   import §8!0§.§2_§;
   import §<!&§.§%!§;
   import §=w§.§,D§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§-n§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §^!0§.§%2§;
   import §^!0§.§7P§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Save;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.§9%§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   import nme3D.shader.§!-§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import openfl.Lib;
   
   public class §'Q§ extends §[k§ implements §3!!§, §,D§
   {
      
      public var §]!>§:Number;
      
      public var §=h§:String;
      
      public var input:TextField;
      
      public function §'Q§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §=h§ = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            super();
            break;
         }
      }
      
      public static function §0!2§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(PlayFabAPI.§@!A§().§0U§ != null)
         {
            if(!_loc2_)
            {
               §'Q§.§]!]§();
               if(_loc1_)
               {
               }
            }
         }
         else
         {
            §§push(GlobalEventManager);
            §§push("PLAYFAB_LOGIN");
            §§push(§'Q§.§]!]§);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().addEventListener(§§pop(),§§pop());
         }
      }
      
      public static function §]!]§() : void
      {
         var needsAttention:Boolean;
         var hasAttention:Boolean;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §§push(GlobalEventManager);
               §§push("PLAYFAB_LOGIN");
               §§push(§'Q§.§]!]§);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().removeEventListener(§§pop(),§§pop());
               if(!_loc4_)
               {
                  break;
               }
            }
            hasAttention = true;
            if(_loc4_)
            {
               needsAttention = false;
            }
            break;
         }
         var _loc1_:§5!'§ = new §5!'§();
         while(true)
         {
            if(!_loc3_)
            {
               _loc1_.Keys = ["MessageToDev"];
               if(_loc3_)
               {
                  break;
               }
            }
            §7P§.GetUserData(_loc1_,function(param1:§"!4§):void
            {
               var _temp_1:* = false;
               var _loc2_:Boolean = true;
               var _loc3_:Boolean = _temp_1;
               if(param1.Data != null)
               {
                  if(!_loc3_)
                  {
                     needsAttention = Reflect.hasField(param1.Data,"MessageToDev");
                     if(!_loc3_)
                     {
                        loop0:
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc3_)
                                 {
                                    if(!needsAttention)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       §§pop();
                                       if(!_loc2_)
                                       {
                                          break loop1;
                                       }
                                       §§push(hasAttention);
                                       if(!_loc2_)
                                       {
                                          break loop0;
                                       }
                                    }
                                 }
                                 §§push(!§§pop());
                                 if(_loc2_)
                                 {
                                    break loop0;
                                 }
                                 break;
                              }
                              §§goto(addr0068);
                           }
                           PlayFabAPI.§@!A§().getDeveloperAttention();
                        }
                        addr0068:
                        if(Boolean(§§pop()))
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                        }
                     }
                  }
               }
               else
               {
                  needsAttention = false;
                  if(_loc2_)
                  {
                     continue loop1;
                  }
               }
            });
            break;
         }
         var _loc2_:§&0§ = new §&0§();
         if(!_loc3_)
         {
            _loc2_.StatisticNames = ["NeedsDeveloperAttention"];
            if(_loc4_)
            {
               §7P§.GetPlayerStatistics(_loc2_,function(param1:§^!?§):void
               {
                  var _temp_1:* = false;
                  var _loc5_:Boolean = true;
                  var _loc6_:Boolean = _temp_1;
                  var _loc4_:* = null as §<!!§;
                  if(_loc5_)
                  {
                     hasAttention = false;
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(param1.Statistics);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     while(_loc2_ < int(_loc3_.length))
                     {
                        _loc4_ = _loc3_[_loc2_];
                        _loc2_++;
                        if(!_loc6_)
                        {
                           if(_loc4_.StatisticName != "NeedsDeveloperAttention")
                           {
                              continue;
                           }
                        }
                        hasAttention = _loc4_.Value > 0;
                        break;
                     }
                  }
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc5_)
                        {
                           if(!needsAttention)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              §§pop();
                              §§push(hasAttention);
                              if(_loc6_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        §§push(!§§pop());
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        PlayFabAPI.§@!A§().getDeveloperAttention();
                     }
                     return;
                  }
                  §§push(Boolean(§§pop()));
                  break loop2;
               });
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            while(true)
            {
               §§push(§§findproperty(§]!>§));
               §§push(§]!>§);
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§]!>§ = §§pop();
         }
      }
      
      public function §%F§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(true);
               if(!_loc4_)
               {
                  while(true)
                  {
                     §§push(true);
                     if(_loc3_)
                     {
                        if(input.text.length > 0)
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(input.text == §=h§);
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        break loop0;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§push(!input.visible);
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop0;
            }
            input.visible = false;
            if(_loc3_)
            {
               PlayFabAPI.§@!A§().§^G§(input.text,§!!F§,_loc2_);
            }
            §§goto(addr016a);
         }
         if(§§pop())
         {
            return;
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(§]!>§);
                  if(_loc3_)
                  {
                     §§push(40);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        _loc2_ = 1;
                        if(_loc4_)
                        {
                        }
                        break loop1;
                     }
                     §§push(§]!>§);
                     if(_loc3_)
                     {
                        §§push(120);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(2);
                           if(!_loc4_)
                           {
                              §§push(int(§§pop()));
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                           }
                           _loc2_ = §§pop();
                           break loop1;
                        }
                        §§push(§]!>§);
                        if(!_loc3_)
                        {
                           break loop2;
                        }
                     }
                  }
                  §§push(300);
                  if(_loc3_)
                  {
                     if(§§pop() < §§pop())
                     {
                        addr016a:
                        if(_loc3_)
                        {
                           §§push(3);
                           break loop3;
                        }
                        return;
                     }
                     §§push(§]!>§);
                     break loop2;
                  }
                  break;
               }
               §§goto(addr010f);
            }
            _loc2_ = §§pop();
            break loop1;
         }
         addr010f:
         if(§§pop() < 900)
         {
            if(_loc4_)
            {
               break loop1;
            }
            §§push(4);
            if(!_loc4_)
            {
               _loc2_ = int(§§pop());
               break loop1;
            }
         }
         else
         {
            §§push(5);
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
         }
         _loc2_ = §§pop();
         break loop1;
      }
      
      public function reset() : void
      {
         var _gthis:§'Q§;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               _gthis = this;
               if(_loc3_)
               {
                  §]!>§ = 0;
                  if(_loc3_)
                  {
                     if(§=h§ == null)
                     {
                        input.visible = false;
                        break;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            input.visible = true;
            if(!_loc2_)
            {
               return;
            }
            break;
         }
         var _loc1_:§5!'§ = new §5!'§();
         while(true)
         {
            if(_loc3_)
            {
               _loc1_.Keys = ["MessageToDev"];
               if(_loc2_)
               {
                  break;
               }
            }
            §7P§.GetUserData(_loc1_,function(param1:§"!4§):void
            {
               var _temp_1:* = true;
               var _loc4_:Boolean = false;
               var _loc5_:Boolean = _temp_1;
               var _loc2_:* = null as §0!0§;
               var _loc3_:* = null as String;
               loop0:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc5_)
                           {
                              if(param1.Data == null)
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(Reflect.hasField(param1.Data,"MessageToDev"));
                              if(_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           break loop0;
                        }
                     }
                     _loc2_ = Reflect.field(param1.Data,"MessageToDev");
                     if(!_loc4_)
                     {
                        _gthis.input.text = _gthis.§=h§ = _loc2_.Value;
                     }
                     break;
                  }
                  _gthis.input.visible = true;
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr00a7);
               }
               _gthis.§]!>§ = 0;
               addr00a7:
            },function(param1:§%2§):void
            {
               var _temp_1:* = false;
               var _loc2_:Boolean = true;
               var _loc3_:Boolean = _temp_1;
               _gthis.input.visible = true;
               if(_loc2_)
               {
                  _gthis.§]!>§ = 0;
               }
            });
            break;
         }
      }
      
      public function §!!F§(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               input.visible = true;
               if(!_loc2_)
               {
                  break;
               }
            }
            if(param1)
            {
               if(_loc2_)
               {
                  §=h§ = input.text;
                  if(_loc2_)
                  {
                     §'!E§.§@!A§().§>!W§("Message sent! I\'ll get back to you as soon as I can.");
                     if(_loc3_)
                     {
                     }
                  }
               }
               break;
            }
            §'!E§.§@!A§().§>!W§("Message not sent. Please check your connection and try again.");
            break;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:Shape = new Shape();
         if(_loc11_)
         {
            §<!T§.fillRect(_loc1_,§^F§.SOLID(0));
            if(!_loc10_)
            {
               addChild(_loc1_);
            }
         }
         §§push(§§findproperty(§,C§));
         §§push("menu/CloseWindowIcon.png");
         §§push(close);
         if(_loc11_)
         {
            §§push(§§pop());
         }
         var _loc2_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
         var _loc3_:§ 7§ = new §?y§(_loc2_);
         while(true)
         {
            if(_loc11_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(10,§2u§.RIGHT));
               if(_loc10_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(_loc3_,new §;!!§(10,§2u§.TOP));
            if(!_loc10_)
            {
               break;
            }
            §§goto(addr00c1);
         }
         addChild(_loc2_);
         addr00c1:
         §§push(§§findproperty(§+"§));
         §§push(§%F§);
         if(!_loc10_)
         {
            §§push(§§pop());
         }
         var _loc4_:§+"§ = new §§pop().§+"§(§§pop(),0,60,"Send");
         if(!_loc10_)
         {
            §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
         }
         _loc3_ = new §?y§(_loc4_);
         if(_loc11_)
         {
            §&d§.§1$§().add(_loc3_,new §4$§(true,0.5));
            if(!_loc10_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(5,§2u§.BOTTOM));
               if(_loc11_)
               {
                  addChild(_loc4_);
               }
            }
         }
         var _loc5_:TextField = §&!;§.§9Q§(16777215,80,null,"Lost save data? Let me know what\'s missing:");
         _loc3_ = new §?y§(_loc5_);
         var _loc6_:§ 7§ = new §?y§(_loc2_);
         if(_loc11_)
         {
            §&d§.§1$§().add(_loc3_,§^`§.§ !P§(§2u§.BOTTOM),_loc6_);
            if(!_loc10_)
            {
               addChild(_loc5_);
            }
         }
         var _loc7_:TextField = §&!;§.§9Q§(16777215,80,null,"...");
         _loc3_ = new §?y§(_loc7_);
         if(!_loc10_)
         {
            §&d§.§1$§().add(_loc3_,new §4$§(true,0.5));
            while(true)
            {
               if(_loc11_)
               {
                  §&d§.§1$§().add(_loc3_,new §4$§(false,0.5));
                  if(!_loc10_)
                  {
                     addChild(_loc7_);
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
               }
               input = §&!;§.§9Q§(0,40,null,null,700,500,true);
               break;
            }
         }
         var _loc8_:TextField = input;
         var _loc9_:* = null;
         if(!_loc10_)
         {
            while(true)
            {
               if(_loc9_ == null)
               {
                  if(_loc10_)
                  {
                     break;
                  }
                  _loc9_ = int(Number(_loc8_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc9_)));
               break;
            }
         }
         _loc3_ = new §?y§(input);
         if(_loc11_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(true,180));
         }
         _loc3_ = new §?y§(input);
         while(true)
         {
            if(!_loc10_)
            {
               §&d§.§1$§().add(_loc3_,new §4$§(true,0.5));
               if(!_loc10_)
               {
                  §"!9§.§5C§(new §?y§(input),new §?y§(_loc2_),8);
                  if(!_loc11_)
                  {
                     break;
                  }
               }
            }
            §"!9§.§<_§(new §?y§(input),new §?y§(_loc4_),8);
            if(!_loc10_)
            {
               addChild(input);
            }
            break;
         }
      }
      
      public function close(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            visible = false;
         }
      }
   }
}

