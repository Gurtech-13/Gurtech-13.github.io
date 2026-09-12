package §[^§
{
   import § 0§.§-!N§;
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §"!M§.§7,§;
   import §%!Z§.§&!S§;
   import §,!G§.§%M§;
   import §,!G§.§6!7§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§,C§;
   import §-!!§.§6!4§;
   import §-v§.§%!3§;
   import §-v§.§+'§;
   import §2X§.§>N§;
   import §2X§.LineLayout2D;
   import §4n§.Achievements;
   import §6!Q§.§]u§;
   import §6[§.§+B§;
   import §6[§.§3!0§;
   import §6[§.§5t§;
   import §6[§.§8A§;
   import §6[§.§=9§;
   import §6[§.§^!R§;
   import §6[§.§`!O§;
   import §<!&§.§%!§;
   import §<!&§.§=2§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>d§.§#l§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import §]!C§.§9x§;
   import §]N§.§?!H§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§2!;§;
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.events.TextEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.model.§[O§;
   import nme3D.shader.§!-§;
   import nme3D.shader.§'H§;
   
   public class §!A§ extends §+`§
   {
      
      public static var §-6§:Boolean;
      
      public static var §+!'§:Point3D;
      
      public static var §9h§:§6!7§;
      
      public static var §#!S§:§%M§;
      
      public static var §]!`§:§6!7§;
      
      public static var §#!A§:§6!7§;
      
      public static var §`!_§:Vector.<int>;
      
      public static var §=!F§:§6!7§;
      
      public static var §'!7§:§6!7§;
      
      public static var §2v§:int = 40;
      
      public static var §?!,§:Number = 1.5707963267948966;
      
      public static var §4]§:Number = 1;
      
      public static var §1!>§:Number = 30;
      
      public static var §>J§:Number = 0.5;
      
      public static var §9!M§:Number = 0.3;
      
      public static var §8u§:Number = 0.9;
      
      public var §%!V§:int;
      
      public var §"!%§:Number;
      
      public var §&!"§:Number;
      
      public var §"D§:§%!§;
      
      public var §,V§:§6M§;
      
      public var §+O§:Number;
      
      public var §4q§:Boolean;
      
      public var §"]§:Number;
      
      public var §<s§:Boolean;
      
      public var §?!8§:Object;
      
      public var §"8§:int;
      
      public var §!Z§:Number;
      
      public var §5!J§:Number;
      
      public var §2q§:Number;
      
      public function §!A§(param1:§=2§, param2:int = 1, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined, param6:Object = undefined)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc7_:* = null as §%M§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(_loc8_)
                     {
                        while(true)
                        {
                           if(param6 == null)
                           {
                              §§push(false);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              param6 = §§pop();
                           }
                           §<s§ = false;
                           §&!"§ = -1;
                           §"!%§ = 0.5;
                           §?!8§ = null;
                           if(param4 != null)
                           {
                              §+O§ = param4;
                           }
                           else
                           {
                              _loc7_ = §!A§.§#!S§;
                              if(!_loc9_)
                              {
                                 §§push(§§findproperty(§+O§));
                                 §§push(_loc7_.range2);
                                 §§push(_loc7_.range1.§7!8§(param2));
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§push(§§pop().§[!$§(§§pop()));
                                 if(!_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§pop().§+O§ = §§pop();
                              }
                           }
                           while(true)
                           {
                              §§push(§§findproperty(§+O§));
                              §§push(§+O§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() + 30);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           §§pop().§+O§ = §§pop();
                           if(_loc8_)
                           {
                              if(param5 != null)
                              {
                                 §"8§ = param5;
                              }
                              else
                              {
                                 §§push(§§findproperty(§"8§));
                                 §§push(§!A§.§`!_§);
                                 §§push(Number(Math.random()));
                                 if(!_loc9_)
                                 {
                                    §§push(§!A§.§`!_§.length);
                                    if(_loc8_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§push(§§pop()[int(§§pop())]);
                                 if(_loc8_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 §§pop().§"8§ = §§pop();
                                 if(!_loc8_)
                                 {
                                    break loop1;
                                 }
                              }
                           }
                           §§push(false);
                           if(param6)
                           {
                              if(!_loc9_)
                              {
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    §§push(§#l§.§1g§ != null);
                                    break;
                                 }
                                 break loop4;
                              }
                              break loop3;
                           }
                           addr0149:
                           if(!§§pop())
                           {
                              §§push(false);
                              if(_loc8_)
                              {
                                 param6 = §§pop();
                                 break loop0;
                              }
                              break loop3;
                           }
                           if(_loc9_)
                           {
                              break loop0;
                           }
                        }
                        §§goto(addr0149);
                     }
                     §<s§ = true;
                     if(!_loc9_)
                     {
                        break loop0;
                     }
                     §§goto(addr01a7);
                  }
                  §§goto(addr01c2);
               }
               §§goto(addr01be);
            }
            return;
         }
         super(param1,§+O§,§!A§.§2m§(param2,§"8§,param3,param4,param6),new §"B§());
         while(true)
         {
            if(_loc8_)
            {
               addr01a7:
               §-J§ = true;
               §%!V§ = param2;
               if(!_loc8_)
               {
                  break loop1;
               }
               if(param6)
               {
                  break;
               }
            }
            addr01c2:
            model.§0p§ = -1;
            break;
         }
         §8!C§();
         break loop1;
      }
      
      public static function §!!I§() : Point3D
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(Number(Math.random()));
         if(_loc2_)
         {
            §§push(§§pop() * 3.141592653589793);
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §!A§.§+!'§.x = Number(Math.cos(_loc1_));
            if(!_loc3_)
            {
               §!A§.§+!'§.y = Number(Math.sin(_loc1_));
               if(!_loc3_)
               {
                  §!A§.§+!'§.z = 0;
               }
            }
         }
         return §!A§.§+!'§;
      }
      
      public static function §2m§(param1:int, param2:int, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined) : Model
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:* = null as §%M§;
         var _loc7_:* = null as Model;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc10_)
                  {
                     if(param3 == null)
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        param3 = 0.3;
                     }
                     if(param5 != null)
                     {
                        break loop1;
                     }
                     if(_loc9_)
                     {
                        break loop0;
                     }
                  }
                  §§push(false);
                  if(_loc10_)
                  {
                     param5 = §§pop();
                     break loop1;
                  }
                  §§goto(addr00c7);
               }
               _loc6_ = §!A§.§#!S§;
               §§push(_loc6_.range2);
               §§push(_loc6_.range1.§7!8§(param1));
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(§§pop().§[!$§(§§pop()));
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               param4 = §§pop();
               §§goto(addr009f);
            }
            if(param4 == null)
            {
               while(true)
               {
                  if(!_loc9_)
                  {
                     break loop2;
                  }
                  addr00c4:
                  §§push(Boolean(param5));
                  break;
               }
               addr00c7:
               if(§§pop())
               {
                  break;
               }
               §§goto(addr00fe);
            }
            addr009f:
            §§push(false);
            if(_loc10_)
            {
               if(§#l§.§1g§ != null)
               {
                  if(!_loc9_)
                  {
                     §§pop();
                     if(!_loc10_)
                     {
                        break;
                     }
                     §§goto(addr00c4);
                  }
               }
            }
            §§goto(addr00c7);
         }
         _loc7_ = §#l§.§1g§.§]4§(param4);
         if(_loc10_)
         {
            if(_loc7_ == null)
            {
               addr00fe:
               var _loc8_:§'H§ = §!-§.§^L§();
               return new §[O§(param2,_loc8_,param4,param3);
            }
         }
         return _loc7_;
      }
      
      override public function §+i§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               if(§"D§ != null)
               {
                  §§push(true);
                  break;
               }
            }
            while(true)
            {
               §§push(§9§());
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §§push(!§§pop());
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc2_:* = null as TunnelSection;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = false;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = null as Point3D;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         super.update(param1);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc15_)
               {
                  §§push(§&!"§);
                  §§push(0);
                  if(_loc16_)
                  {
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     break loop0;
                  }
               }
               §§push(§§findproperty(§&!"§));
               §§push(§&!"§);
               if(_loc15_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§&!"§ = §§pop();
               §§push(§&!"§);
               §§push(0);
               if(!_loc16_)
               {
                  break;
               }
               §§goto(addr00ed);
            }
            if(§§pop() > §§pop())
            {
               break;
            }
            if(_loc15_)
            {
               dispose(false);
               break;
            }
            §§goto(addr00df);
         }
         loop2:
         while(true)
         {
            §§push(false);
            if(§>l§ != null)
            {
               if(_loc15_)
               {
                  §§pop();
                  §§push(!§]!B§);
                  if(!_loc16_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc16_)
                     {
                        break;
                     }
                  }
               }
            }
            while(true)
            {
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     §§push(§§findproperty(§"!%§));
                     §§push(§"!%§);
                     if(_loc15_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§"!%§ = §§pop();
                     addr00df:
                     §§push(§"!%§);
                     §§push(0);
                     if(!_loc15_)
                     {
                        break;
                     }
                     if(§§pop() <= §§pop())
                     {
                        §"!%§ = 0.5;
                        §>l§.x = -transform.position.y;
                        §>l§.y = transform.position.x;
                        §>l§.z = 0;
                        if(!_loc15_)
                        {
                           continue loop6;
                        }
                        _loc2_ = level.§]!#§(transform.position.z,true);
                        loop12:
                        while(true)
                        {
                           if(!_loc16_)
                           {
                              if(_loc2_ == null)
                              {
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_.§6!0§);
                                    if(!_loc16_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    if(!_loc16_)
                                    {
                                       break loop12;
                                    }
                                    addr018e:
                                    _loc5_ = §>l§;
                                    if(!_loc16_)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§push(_loc5_.x * _loc5_.x);
                                             if(!_loc16_)
                                             {
                                                §§push(_loc5_.y * _loc5_.y);
                                                if(_loc16_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc15_)
                                                {
                                                   break loop14;
                                                }
                                             }
                                             loop33:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc15_)
                                                   {
                                                      §§push(_loc5_.z);
                                                      if(!_loc15_)
                                                      {
                                                         break loop15;
                                                      }
                                                      §§push(_loc5_.z);
                                                      if(!_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         break loop33;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         break loop14;
                                                      }
                                                   }
                                                   §§push(Number(§§pop()));
                                                   break loop14;
                                                }
                                                §§goto(addr0210);
                                             }
                                             §§goto(addr0214);
                                          }
                                          §§push(_loc3_);
                                          if(!_loc16_)
                                          {
                                             §§goto(addr0210);
                                          }
                                          §§goto(addr0213);
                                       }
                                       §§push(_loc3_);
                                       if(!_loc16_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc15_)
                                             {
                                                break loop15;
                                             }
                                             addr0214:
                                             §§push(§§pop() > §§pop());
                                             if(_loc15_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             _loc6_ = §§pop();
                                             addr021f:
                                             _loc7_ = §>l§;
                                             loop16:
                                             while(true)
                                             {
                                                if(!_loc16_)
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc7_.x * _loc7_.x);
                                                         §§push(_loc7_.y * _loc7_.y);
                                                         if(_loc15_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc16_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            §§push(_loc7_.z);
                                                            if(!_loc15_)
                                                            {
                                                               break loop17;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * _loc7_.z);
                                                            if(_loc15_)
                                                            {
                                                               break loop17;
                                                            }
                                                            §§goto(addr02af);
                                                         }
                                                         §§goto(addr02bf);
                                                      }
                                                      §§push(1);
                                                      if(_loc15_)
                                                      {
                                                         _loc9_ = §§pop() - §§pop();
                                                         §§goto(addr028b);
                                                         §§push(_loc9_);
                                                      }
                                                      §§goto(addr02bf);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc15_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      §§push(_loc8_);
                                                      if(_loc15_)
                                                      {
                                                         break loop18;
                                                      }
                                                      addr028b:
                                                      §§push(0);
                                                      if(!_loc16_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  break loop16;
                                                               }
                                                               §§push(_loc9_);
                                                               if(_loc15_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc9_);
                                                            }
                                                            §§push(-§§pop());
                                                            break;
                                                         }
                                                         addr02af:
                                                         §§push(§§pop() < 1e-10);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc8_);
                                                         §§push(0);
                                                      }
                                                      addr02bf:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            _loc7_.x = 1;
                                                         }
                                                         addr02cf:
                                                         _loc7_.y = 0;
                                                         if(!_loc16_)
                                                         {
                                                            _loc7_.z = 0;
                                                         }
                                                         break;
                                                      }
                                                      §§push(1 / Number(Math.sqrt(_loc8_)));
                                                   }
                                                   _loc8_ = Number(§§pop());
                                                   while(true)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         _loc7_.x *= _loc8_;
                                                         if(!_loc15_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      _loc7_.y *= _loc8_;
                                                      break;
                                                   }
                                                   §§push(_loc7_);
                                                   §§push(_loc7_.z);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * _loc8_);
                                                   }
                                                   §§pop().z = §§pop();
                                                   break;
                                                }
                                                §§goto(addr02cf);
                                             }
                                             _loc7_ = §>l§;
                                             if(_loc15_)
                                             {
                                                §§push(§"]§);
                                                if(!_loc16_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc8_ = §§pop();
                                             }
                                             _loc10_ = §>l§;
                                             loop22:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      if(_loc10_ == null)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         _loc10_ = new Point3D(0,0,0);
                                                      }
                                                      _loc10_.x = _loc7_.x * _loc8_;
                                                      if(!_loc15_)
                                                      {
                                                         break loop22;
                                                      }
                                                   }
                                                   _loc10_.y = _loc7_.y * _loc8_;
                                                   break loop22;
                                                }
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      loop25:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(25);
                                                            if(_loc15_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Number(Math.sqrt(transform.position.x * transform.position.x + transform.position.y * transform.position.y)));
                                                               if(!_loc15_)
                                                               {
                                                                  break loop25;
                                                               }
                                                            }
                                                            §§push(Number(§§pop()));
                                                            break loop25;
                                                         }
                                                         _temp_1.x -= transform.position.x / _loc9_ * _loc8_;
                                                         _temp_2.y -= transform.position.y / _loc9_ * _loc8_;
                                                      }
                                                      _loc9_ = §§pop();
                                                      if(!_loc16_)
                                                      {
                                                         break loop26;
                                                      }
                                                      break;
                                                   }
                                                   §>l§.z = §!Z§;
                                                   break;
                                                }
                                                addr0447:
                                                if(§"D§ != null)
                                                {
                                                   loop27:
                                                   while(true)
                                                   {
                                                      loop28:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§findproperty(§5!J§));
                                                               §§push(§5!J§);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop() + param1);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§pop().§5!J§ = §§pop();
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§5!J§);
                                                                        §§push(0.9);
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(level is §-!N§)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    dispose(false);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0510);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 model.§#"§(false);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                              }
                                                                              §§goto(addr06e7);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§5!J§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 break loop28;
                                                                              }
                                                                              §§push(0.9);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 break loop30;
                                                                              }
                                                                              _loc3_ = §§pop() / §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push(§+O§);
                                                                              if(_loc16_)
                                                                              {
                                                                                 break loop31;
                                                                              }
                                                                              §§push(§!A§.§=!F§.§[!$§(_loc3_));
                                                                              if(_loc16_)
                                                                              {
                                                                                 break loop30;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc16_)
                                                                        {
                                                                           break loop30;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr0544);
                                                                  }
                                                                  _loc4_ = Number(§§pop());
                                                                  if(!_loc15_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc15_)
                                                               {
                                                                  break loop27;
                                                               }
                                                               _loc4_ = §§pop();
                                                               if(_loc16_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               addr0510:
                                                               §§push(false);
                                                               if(§"D§.physicsData != null)
                                                               {
                                                                  break loop2;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     §§push(0.7);
                                                                     if(_loc15_)
                                                                     {
                                                                        addr0544:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc15_)
                                                                        {
                                                                           break loop31;
                                                                        }
                                                                        break loop27;
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                            }
                                                            §§push(§!A§.§'!7§.§[!$§(_loc3_));
                                                            if(!_loc16_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(§4q§)
                                                               {
                                                                  break loop28;
                                                               }
                                                               §§push(-1);
                                                               break loop4;
                                                            }
                                                            break loop27;
                                                         }
                                                         §§goto(addr0582);
                                                      }
                                                      §§push(1);
                                                      if(_loc15_)
                                                      {
                                                      }
                                                      break loop4;
                                                   }
                                                   addr0582:
                                                   §§push(§§pop() * param1);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                   §§push(§§findproperty(§2q§));
                                                   §§push(§2q§);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() + _loc8_);
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§pop().§2q§ = §§pop();
                                                   continue loop6;
                                                }
                                                §§goto(addr06e7);
                                             }
                                             §§push(_loc10_);
                                             §§push(_loc7_.z);
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop() * _loc8_);
                                             }
                                             §§pop().z = §§pop();
                                             break loop23;
                                          }
                                          addr0210:
                                          addr0213:
                                          §§push(§§pop() * (§§pop() * _loc4_));
                                       }
                                       §§goto(addr0214);
                                    }
                                    §§goto(addr021f);
                                 }
                                 addr018c:
                                 _loc4_ = Number(§§pop());
                                 addr018b:
                                 §§goto(addr018e);
                              }
                           }
                           dispose(false);
                           if(!_loc16_)
                           {
                              return;
                           }
                           break;
                        }
                        §§push(0.8);
                        if(!_loc16_)
                        {
                           §§goto(addr018b);
                        }
                        §§goto(addr018c);
                     }
                  }
                  §§goto(addr0447);
               }
               §§push(§§pop() * §§pop());
               break loop27;
            }
            _loc7_ = §"D§.transform.§2!§();
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(_loc15_)
                     {
                        §§push(_loc7_.x + _loc4_ * Number(Math.cos(§2q§)));
                        if(!_loc15_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(_loc16_)
                        {
                           break loop6;
                        }
                        _loc9_ = §§pop();
                        if(!_loc15_)
                        {
                           break loop5;
                        }
                     }
                     §§push(_loc7_.y + _loc4_ * Number(Math.sin(§2q§)));
                     if(!_loc16_)
                     {
                        break loop6;
                     }
                     break;
                  }
                  _loc11_ = §§pop();
                  break loop5;
               }
               §§push(Number(§§pop()));
               break loop11;
            }
            _loc5_ = transform.§<!C§();
            while(true)
            {
               if(_loc15_)
               {
                  while(true)
                  {
                     §§push(Number(_loc5_.x));
                     if(_loc15_)
                     {
                        _loc12_ = §§pop();
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(_loc12_);
                           if(!_loc16_)
                           {
                              §§push(_loc3_);
                              if(_loc15_)
                              {
                                 §§push(_loc9_);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() - _loc12_);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().x = §§pop();
                        if(!_loc16_)
                        {
                           §§push(Number(_loc5_.y));
                           if(_loc16_)
                           {
                              break;
                           }
                           _loc13_ = §§pop();
                        }
                        §§push(_loc5_);
                        §§push(_loc13_);
                        if(!_loc16_)
                        {
                           §§push(_loc3_);
                           if(!_loc16_)
                           {
                              §§push(_loc11_);
                              if(!_loc16_)
                              {
                                 §§push(§§pop() - _loc13_);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc16_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§pop().y = §§pop();
                        §§push(_loc5_.z);
                        if(_loc16_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  _loc14_ = §§pop();
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(_loc14_);
                     if(!_loc16_)
                     {
                        §§push(_loc3_);
                        if(!_loc16_)
                        {
                           §§push(_loc7_.z);
                           if(_loc15_)
                           {
                              §§push(§§pop() - _loc14_);
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc16_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  §§pop().z = §§pop();
                  if(!_loc15_)
                  {
                     break;
                  }
               }
               transform.§"w§(_loc5_);
               break;
            }
            addr06e7:
            return;
         }
         §§pop();
         §§goto(addr0530);
      }
      
      public function §]f§(param1:§%!§) : §%!§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §"D§ = param1;
               if(_loc3_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     if(param1 == null)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop1;
                     }
                  }
                  §§pop();
                  if(!_loc3_)
                  {
                     §§push(param1 is §6M§);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  §§goto(addr008b);
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               else
               {
                  §,V§ = null;
               }
               §§goto(addr008b);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §,V§ = param1;
         if(_loc2_)
         {
         }
         addr008b:
         return §"D§;
      }
      
      public function §'K§(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = null as §1![§;
         var _loc4_:* = null as Model;
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(model.§0p§);
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(§§pop() == §§pop())
                           {
                              break loop0;
                           }
                           if(_loc5_)
                           {
                              break loop2;
                           }
                           if(param1)
                           {
                              if(_loc5_)
                              {
                                 break loop2;
                              }
                              §§push(-1);
                              if(_loc5_)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(1);
                              if(_loc5_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        §§push(int(§§pop()));
                        if(_loc6_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              §§push(_loc2_);
                              break loop1;
                           }
                           break loop2;
                        }
                        break loop1;
                     }
                     §§goto(addr0084);
                  }
               }
               addr0084:
               if(§§pop() != model.§0p§)
               {
                  break loop2;
               }
               break;
            }
            break loop2;
         }
      }
      
      public function §%^§(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     if(§"8§ == param1)
                     {
                        break loop0;
                     }
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(§<s§);
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  break loop0;
               }
               model.§%^§(param1);
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  break loop1;
               }
               §"8§ = param1;
               if(!_loc2_)
               {
                  break loop1;
               }
            }
         }
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc6_)
         {
            super.reset();
            model.§#"§(true);
            §]f§(null);
            §5!J§ = 0;
            §"!%§ = 0.5;
            while(true)
            {
               if(§>l§ == null)
               {
                  §>l§ = new Point3D(0,0,0);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §>l§.x = -transform.position.y;
               if(_loc6_)
               {
                  §>l§.y = transform.position.x;
               }
               §>l§.z = 0;
               break;
            }
         }
         var _loc1_:Point3D = §>l§;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        loop18:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§push(_loc1_.x * _loc1_.x);
                                 §§push(_loc1_.y * _loc1_.y);
                                 if(_loc5_)
                                 {
                                    continue loop5;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break loop18;
                                 }
                                 §§push(_loc1_.z);
                                 if(_loc5_)
                                 {
                                    break loop10;
                                 }
                                 §§push(§§pop() * _loc1_.z);
                                 if(_loc5_)
                                 {
                                    break loop9;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    break loop4;
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break loop2;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                              }
                              §§push(_loc2_);
                              break loop18;
                           }
                           §§goto(addr0194);
                        }
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                              break loop14;
                           }
                           §§push(_loc3_);
                           §§push(0);
                           if(_loc5_)
                           {
                              §§goto(addr0158);
                           }
                        }
                        §§push(§§pop() >= §§pop() ? _loc3_ : -_loc3_);
                        §§push(1e-10);
                        if(_loc6_)
                        {
                           break loop9;
                        }
                        continue loop5;
                     }
                     §§goto(addr0290);
                  }
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                  }
                  loop11:
                  while(true)
                  {
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
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_)
                                             {
                                                break loop13;
                                             }
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                break loop12;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   _loc1_.x = 1;
                                                   _loc1_.y = 0;
                                                   if(_loc6_)
                                                   {
                                                      _loc1_.z = 0;
                                                      break;
                                                   }
                                                   break loop11;
                                                }
                                                break;
                                             }
                                             §§push(1);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() / Number(Math.sqrt(_loc2_)));
                                                if(_loc5_)
                                                {
                                                   break loop15;
                                                }
                                                _loc2_ = Number(§§pop());
                                                _loc1_.x *= _loc2_;
                                                if(_loc5_)
                                                {
                                                   break loop14;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0281);
                                             }
                                          }
                                          _loc1_.y *= _loc2_;
                                          if(_loc6_)
                                          {
                                             §§push(_loc1_);
                                             §§push(_loc1_.z);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * _loc2_);
                                             }
                                             §§pop().z = §§pop();
                                             break;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    if(§?!8§ == null)
                                    {
                                       §§push(§§findproperty(§"]§));
                                       §§push(§!A§.§]!`§.§[!$§(Number(Math.random())));
                                       if(!_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§pop().§"]§ = §§pop();
                                       if(!_loc5_)
                                       {
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       §!Z§ = §?!8§;
                                       if(_loc6_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    §§goto(addr0274);
                                 }
                                 §§goto(addr0288);
                              }
                              §§goto(addr028b);
                           }
                           §§goto(addr02ed);
                        }
                        §§goto(addr024b);
                     }
                     §§goto(addr028a);
                  }
                  §§push(§!A§.§#!A§.§7!8§(§?!8§));
                  if(!_loc5_)
                  {
                     addr024b:
                     _loc2_ = Number(§§pop());
                     if(_loc6_)
                     {
                        §§push(_loc2_);
                        break loop2;
                     }
                     §§goto(addr02ed);
                  }
                  else
                  {
                     §§goto(addr028b);
                  }
               }
               §§goto(addr0290);
            }
            §§push(0.1);
            if(!_loc5_)
            {
               while(true)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc2_);
                        §§push(1);
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(§§pop() <= §§pop())
                        {
                           if(_loc5_)
                           {
                              continue loop7;
                           }
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr0281:
                           §§push(1);
                        }
                     }
                     else
                     {
                        §§push(0.1);
                     }
                     addr0288:
                     §§push(2);
                     break;
                  }
                  addr028b:
                  _loc2_ = §§pop() / §§pop();
                  addr028a:
                  §§push(0.5);
                  break loop4;
               }
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§"]§));
                     §§push(§!A§.§]!`§);
                     §§push(Number(Math.random()));
                     if(_loc6_)
                     {
                        §§push(0.5);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc3_);
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           break loop7;
                        }
                     }
                     §§push(_loc3_);
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     break;
                  }
                  §§goto(addr02df);
               }
               addr02df:
               §§push(§§pop().§[!$§(Number(§§pop())));
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§"]§ = §§pop();
               §§goto(addr02ed);
            }
            addr0290:
            _loc3_ = §§pop() - §§pop();
            continue loop7;
         }
         §§push(§§findproperty(§!Z§));
         §§push(§!A§.§#!A§.§[!$§(Number(Math.random())));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         §§pop().§!Z§ = §§pop();
         addr02ed:
         _loc1_ = §>l§;
         if(!_loc5_)
         {
            §§push(§"]§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
            _loc2_ = §§pop();
         }
         var _loc4_:Point3D = §>l§;
         while(true)
         {
            if(_loc6_)
            {
               if(_loc4_ == null)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc4_ = new Point3D(0,0,0);
               }
               _loc4_.x = _loc1_.x * _loc2_;
               if(!_loc5_)
               {
                  _loc4_.y = _loc1_.y * _loc2_;
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc4_);
            §§push(_loc1_.z);
            if(!_loc5_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§pop().z = §§pop();
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr0388);
         }
         §>l§.z = §!Z§;
         addr0388:
      }
      
      public function §8!C§(param1:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc8_)
            {
               §§push(transform.§,t§);
               §§push(Number(Math.random()));
               if(!_loc8_)
               {
                  §§push(§§pop() - 0.5);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  §§push(transform.§,t§);
                  §§push(Number(Math.random()));
                  if(_loc9_)
                  {
                     §§push(§§pop() - 0.5);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(transform.§,t§);
                  §§push(Number(Math.random()));
                  if(!_loc8_)
                  {
                     §§push(§§pop() - 0.5);
                  }
                  §§pop().z = §§pop();
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            §§push(transform.§,t§);
            §§push(Number(Math.random()));
            if(_loc9_)
            {
               §§push(§§pop() - 0.5);
            }
            §§pop().w = §§pop();
            break;
         }
         var _loc2_:§"B§ = transform.§,t§;
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc9_)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_.z);
                  §§push(_loc2_.z);
                  if(_loc8_)
                  {
                     break loop1;
                  }
               }
               §§push(§§pop() + §§pop() * §§pop());
               break;
            }
            §§push(_loc2_.w);
            if(_loc9_)
            {
               §§push(_loc2_.w);
               break;
            }
            §§goto(addr00dc);
         }
         addr00dc:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc8_)
         {
            §§push(§§pop() - 1);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               loop12:
               while(true)
               {
                  §§push(_loc4_);
                  §§push(0);
                  if(!_loc8_)
                  {
                     §§push((§§pop() >= §§pop() ? _loc4_ : -_loc4_) < 1e-10);
                     if(!_loc8_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!_loc9_)
                     {
                        break loop4;
                     }
                     §§push(_loc3_);
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           _loc2_.z = 0;
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                        _loc2_.w = 1;
                        break loop12;
                     }
                     §§goto(addr01b8);
                  }
                  else
                  {
                     §§push(1 / Number(Math.sqrt(_loc3_)));
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc9_)
                        {
                           _loc3_ = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc3_);
                           }
                           §§pop().x = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc3_);
                           }
                           §§pop().y = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc3_);
                           }
                           §§pop().z = §§pop();
                           break loop4;
                        }
                     }
                  }
                  §§goto(addr01d3);
               }
               if(param1 == null)
               {
                  §§goto(addr01b8);
               }
               else
               {
                  §§push(Number(param1));
                  if(_loc8_)
                  {
                     break loop3;
                  }
               }
               §§goto(addr01d3);
            }
            §§push(_loc2_);
            §§push(_loc2_.w);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().w = §§pop();
            if(!_loc8_)
            {
               break loop12;
            }
            addr01b8:
            addr01d3:
            §§push(1.5707963267948966);
            break;
         }
         _loc3_ = §§pop();
         var _loc5_:Point3D = §!A§.§!!I§();
         _loc2_ = rotation;
         if(_loc2_ == null)
         {
            _loc2_ = new §"B§();
         }
         loop5:
         while(true)
         {
            §§push(Number(Math.sin(_loc3_ / 2)));
            if(!_loc8_)
            {
               _loc4_ = §§pop();
               _loc2_.x = _loc5_.x * _loc4_;
               if(_loc9_)
               {
                  _loc2_.y = _loc5_.y * _loc4_;
               }
               §§push(_loc2_);
               §§push(_loc5_.z);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               if(_loc9_)
               {
                  _loc2_.w = Number(Math.cos(_loc3_ / 2));
               }
               §§push(_loc2_.x);
               if(_loc8_)
               {
                  break;
               }
               §§push(_loc2_.x);
               if(!_loc8_)
               {
                  loop6:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(_loc2_.z);
                                 if(!_loc9_)
                                 {
                                    break loop7;
                                 }
                              }
                              §§push(_loc2_.z);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc8_)
                                 {
                                    break loop7;
                                 }
                                 break loop6;
                              }
                           }
                           §§push(_loc2_.w);
                           if(!_loc9_)
                           {
                              break loop6;
                           }
                           §§push(_loc2_.w);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc9_)
                        {
                           break loop8;
                        }
                        break loop5;
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc6_:* = §§pop();
         §§push(_loc6_);
         if(_loc9_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         loop9:
         while(true)
         {
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(_loc7_);
                  §§push(0);
                  if(_loc9_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc8_)
                        {
                           break loop10;
                        }
                        §§push(_loc7_);
                     }
                     else
                     {
                        §§push(_loc7_);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(-§§pop());
                     }
                     §§push(§§pop() < 1e-10);
                     if(_loc9_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop9;
                     }
                     §§push(_loc6_);
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc8_)
                     {
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        if(_loc9_)
                        {
                           _loc2_.w = 1;
                        }
                        break loop9;
                     }
                     break loop10;
                  }
                  §§push(1 / Number(Math.sqrt(_loc6_)));
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
               _loc6_ = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc6_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
                  §§pop().y = §§pop();
               }
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc6_);
               }
               §§pop().z = §§pop();
               if(_loc9_)
               {
                  break;
               }
               break loop9;
            }
            §§push(_loc2_);
            §§push(_loc2_.w);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc6_);
            }
            §§pop().w = §§pop();
            break;
         }
      }
      
      override public function §#!Y§(param1:§%!§) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:* = false;
         var _loc5_:* = null as §2!;§;
         var _loc6_:* = null as §+'§;
         if(!_loc11_)
         {
            Currency.§@!A§().queueSoftEarned(§%!V§);
         }
         while(true)
         {
            §§push(param1.level.§<!;§);
            if(_loc10_)
            {
               §§push(§§pop() + §%!V§);
               if(_loc11_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         if(_loc10_)
         {
            param1.level.§<!;§ = _loc2_;
         }
         var _loc3_:§2!;§ = Save.mostBatteries;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))) < _loc2_)
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        _loc5_ = Save.mostBatteries;
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(int(Save.§@!A§().get(_loc5_.§=-§,int(_loc5_.§ -§))));
                                 if(!_loc11_)
                                 {
                                    §§push(40);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(false);
                                       if(!_loc11_)
                                       {
                                          break loop6;
                                       }
                                       break loop5;
                                    }
                                    §§push(_loc2_);
                                 }
                                 §§push(40);
                                 break;
                              }
                              §§push(§§pop() >= §§pop());
                              if(_loc11_)
                              {
                                 break loop5;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc10_)
                              {
                                 break;
                              }
                              _loc4_ = §§pop();
                              if(_loc10_)
                              {
                              }
                              §§goto(addr010b);
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc10_)
                           {
                              _loc4_ = §§pop();
                              addr010b:
                              §§push(_loc4_);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              Achievements.§9!2§.§,Y§();
                           }
                           Save.mostBatteries.§?F§(_loc2_);
                           break;
                        }
                     }
                     §§push(§<s§);
                     if(_loc10_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop2;
                     }
                     if(!_loc10_)
                     {
                        break loop1;
                     }
                  }
                  _loc6_ = §]u§.§@!A§().§]]§.§<^§;
                  if(_loc10_)
                  {
                     if(_loc6_.§-!%§ == null)
                     {
                        break loop2;
                     }
                     if(!_loc10_)
                     {
                        break loop2;
                     }
                  }
                  _loc6_.§-!%§.§%^§(§"8§);
                  break loop2;
               }
               §§goto(addr0195);
            }
            §5!J§ = 0;
            if(_loc10_)
            {
               break;
            }
            break loop4;
         }
         §2!9§ = false;
         addr0195:
         var _loc7_:Point3D = transform.§<!C§();
         var _loc8_:Point3D = param1.transform.§2!§();
         if(_loc10_)
         {
            §2q§ = Number(Math.atan2(_loc7_.y - _loc8_.y,_loc7_.x - _loc8_.x));
         }
         §§push(§2q§);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc10_)
            {
               if(_loc9_ != _loc9_)
               {
                  if(!_loc10_)
                  {
                     break;
                  }
                  §2q§ = 0;
                  if(_loc11_)
                  {
                     break;
                  }
               }
            }
            §4q§ = Number(Math.random()) > 0.5;
            if(_loc10_)
            {
               break;
            }
            §§goto(addr023d);
         }
         §]f§(param1);
         if(_loc10_)
         {
            addr023d:
            §'K§(false);
            §§goto(addr0245);
         }
         addr0245:
      }
      
      override public function §9§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               if(level == null)
               {
                  §§push(false);
                  break;
               }
            }
            §§push(§>Y§);
            if(_loc1_)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  break;
               }
            }
            return §§pop();
         }
         return §§pop();
      }
      
      override public function §&R§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.§&R§();
            if(_loc2_)
            {
               §"!%§ = 0;
            }
         }
      }
   }
}

