package com.player03.run3.level
{
   import §!!X§.§ !§;
   import §!!X§.Planet;
   import §!!X§.Wormhole;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import §0!Y§.§=!^§;
   import §1^§.Transform;
   import §2!"§.§8f§;
   import §3F§.§4!V§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import com.player03.layout.§ 7§;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Vector3D;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.Context3DUtils;
   import nme3D.model.§'h§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§24§;
   
   public class §-p§ extends §6U§
   {
      
      public static var §-6§:Boolean;
      
      public static var §!!A§:§6U§;
      
      public static var §1]§:Vector3D;
      
      public static var §&K§:§4!V§;
      
      public var §6s§:Wormhole;
      
      public var §57§:§ !§;
      
      public var §9_§:TunnelSection;
      
      public var §<X§:Planet;
      
      public var §@k§:§[!9§;
      
      public var §6!;§:§=!^§;
      
      public var §3W§:§'h§;
      
      public var §`2§:Boolean;
      
      public var §>!P§:§'h§;
      
      public var §="§:Number;
      
      public function §-p§(param1:§]!^§)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §`2§ = true;
               if(_loc3_)
               {
                  break;
               }
               if(§-p§.§!!A§ == null)
               {
                  §-p§.§>]§();
               }
               super();
               if(!_loc3_)
               {
                  §>!P§ = new §'h§(§24§.§7!P§(),param1);
               }
            }
            §@k§ = new §[!9§("512x512",true);
            break;
         }
         §6!;§ = new §=!^§(§@k§,0,0,0);
         var _loc2_:§8f§ = new §8f§(null,2,2,null,§6!;§,null,§@k§);
         _loc2_.§;!6§(new Transform());
         §3W§ = new §'h§(§6!;§,this);
         while(true)
         {
            if(_loc4_)
            {
               §3W§.§&!2§(_loc2_);
               if(_loc4_)
               {
                  §57§ = new § !§();
                  if(_loc3_)
                  {
                     break;
                  }
                  §&!2§(§57§);
                  §6s§ = new Wormhole();
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §<X§ = new Planet();
            §&!2§(§<X§);
            break;
         }
      }
      
      public static function §>]§() : void
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc14_:* = null as Point3D;
         var _loc17_:* = 0;
         var _loc18_:* = null as §8f§;
         var _loc1_:Point3D = new Point3D(-1,0,0);
         var _loc2_:Point3D = new Point3D(1,0,0);
         var _loc3_:Point3D = new Point3D(0,-1,0);
         var _loc4_:Point3D = new Point3D(0,1,0);
         var _loc5_:Point3D = new Point3D(0,0,1);
         var _loc6_:Point3D = new Point3D(0,0,-1);
         §§push([_loc1_,_loc3_,_loc2_,_loc5_,_loc6_,_loc4_]);
         if(_loc20_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         var _loc8_:§"B§ = null;
         while(true)
         {
            if(!_loc19_)
            {
               if(_loc8_ != null)
               {
                  break;
               }
            }
            _loc8_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.6283185307179586)));
         if(_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc19_)
               {
                  _loc8_.x = _loc9_;
                  if(!_loc20_)
                  {
                     break;
                  }
                  _loc8_.y = 0 * _loc9_;
                  if(!_loc20_)
                  {
                     break loop4;
                  }
               }
               _loc8_.z = 0 * _loc9_;
               if(!_loc19_)
               {
                  break;
               }
               break loop4;
            }
            _loc8_.w = Number(Math.cos(0.6283185307179586));
            break;
         }
         while(true)
         {
            §§push(_loc8_.x);
            §§push(_loc8_.x);
            if(!_loc19_)
            {
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  §§push(_loc8_.y);
                  if(!_loc19_)
                  {
                     §§push(_loc8_.y);
                     if(_loc19_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc8_.z);
                  }
                  §§push(_loc8_.z);
                  if(!_loc19_)
                  {
                     break;
                  }
                  addr014d:
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc20_)
               {
                  break;
               }
               §§goto(addr014d);
               §§push(Number(§§pop()));
               §§push(_loc8_.w);
               §§push(_loc8_.w);
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc20_)
            {
               §§push(Number(§§pop()));
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc10_:* = §§pop();
         §§push(_loc10_);
         if(!_loc19_)
         {
            §§push(§§pop() - 1);
            if(!_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc11_:* = §§pop();
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(_loc11_);
                  §§push(0);
                  if(!_loc19_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc11_);
                        if(!_loc20_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§push(-_loc11_);
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc19_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop9;
                     }
                     §§push(_loc10_);
                     if(_loc19_)
                     {
                        break loop8;
                     }
                     §§push(0);
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc8_.x = 0;
                     _loc8_.y = 0;
                     _loc8_.z = 0;
                     _loc8_.w = 1;
                     break loop9;
                  }
                  §§push(1 / Number(Math.sqrt(_loc10_)));
                  break;
               }
               §§push(Number(§§pop()));
               break loop8;
            }
            var _loc12_:§"B§ = _loc8_;
            §§push(0);
            if(_loc20_)
            {
               §§push(int(§§pop()));
            }
            var _loc13_:* = §§pop();
            if(_loc20_)
            {
               while(_loc13_ < int(_loc7_.length))
               {
                  _loc14_ = _loc7_[_loc13_];
                  if(_loc20_)
                  {
                     _loc13_++;
                     if(!_loc20_)
                     {
                        continue;
                     }
                  }
                  §4!R§.§@!M§(_loc12_,_loc14_,_loc14_);
               }
            }
            §§push([§4!R§.§+!5§(_loc2_,_loc5_),§4!R§.§+!5§(_loc4_,_loc5_),§4!R§.§+!5§(_loc1_,_loc5_),§4!R§.§+!5§(_loc6_,_loc3_),§4!R§.§+!5§(_loc5_,_loc4_),§4!R§.§+!5§(_loc3_,_loc5_)]);
            if(!_loc19_)
            {
               §§push(§§pop());
            }
            var _loc15_:* = §§pop();
            var _loc16_:Vector.<§"B§> = Vector.<§"B§>(_loc15_);
            loop11:
            while(true)
            {
               if(!_loc19_)
               {
                  §-p§.§!!A§ = new §6U§();
                  if(!_loc19_)
                  {
                     §§push(0);
                     if(!_loc19_)
                     {
                        §§push(int(§§pop()));
                        if(_loc20_)
                        {
                           _loc13_ = §§pop();
                           if(!_loc20_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc13_);
                           }
                           addr03f5:
                        }
                     }
                     loop1:
                     while(true)
                     {
                        if(§§pop() >= 6)
                        {
                           break loop11;
                        }
                        while(true)
                        {
                           §§push(_loc13_);
                           if(!_loc19_)
                           {
                              _loc13_++;
                              if(_loc19_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc17_ = §§pop();
                        loop13:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§8f§));
                              §§push("Skybox");
                              if(_loc20_)
                              {
                                 §§push(_loc17_);
                                 if(!_loc20_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc20_)
                                 {
                                    §§push(§§pop());
                                    if(_loc19_)
                                    {
                                       break loop13;
                                    }
                                 }
                              }
                              §§push(§§pop() + ".png");
                              if(_loc20_)
                              {
                                 §§push(§§pop());
                              }
                              break loop13;
                           }
                           _loc18_ = new §§pop().§8f§(§§pop(),§§pop(),80);
                           if(_loc20_)
                           {
                              _loc18_.§;!6§(new Transform());
                           }
                           _loc14_ = _loc7_[_loc17_];
                           if(!_loc19_)
                           {
                              §§push(_loc18_.transform);
                              §§push(_loc14_.x * 40);
                              §§push(_loc14_.y * 40);
                              §§push(_loc14_.z);
                              if(_loc20_)
                              {
                                 §§push(§§pop() * 40);
                              }
                              §§pop().§6!&§(§§pop(),§§pop(),§§pop());
                              if(!_loc19_)
                              {
                                 _loc18_.transform.§"I§(_loc16_[_loc17_]);
                                 if(_loc19_)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                           §-p§.§!!A§.§&!2§(_loc18_);
                           continue loop1;
                        }
                        §§push(80);
                        break loop14;
                     }
                  }
                  break;
               }
               §§goto(addr03f5);
            }
            return;
         }
         _loc10_ = §§pop();
         §§push(_loc8_);
         §§push(_loc8_.x);
         if(_loc20_)
         {
            §§push(§§pop() * _loc10_);
         }
         §§pop().x = §§pop();
         §§push(_loc8_);
         §§push(_loc8_.y);
         if(_loc20_)
         {
            §§push(§§pop() * _loc10_);
         }
         §§pop().y = §§pop();
         if(_loc20_)
         {
            §§push(_loc8_);
            §§push(_loc8_.z);
            if(!_loc19_)
            {
               §§push(§§pop() * _loc10_);
            }
            §§pop().z = §§pop();
            if(!_loc19_)
            {
               §§push(_loc8_);
               §§push(_loc8_.w);
               if(!_loc19_)
               {
                  §§push(§§pop() * _loc10_);
               }
               §§pop().w = §§pop();
            }
         }
         break loop9;
      }
      
      override public function update(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §57§.update(param1);
               while(true)
               {
                  if(_loc4_)
                  {
                     §6s§.update(param1);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §<X§.update(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §>!P§.update(param1,param2);
            if(_loc4_)
            {
               super.update(param1,param2);
            }
            break;
         }
      }
      
      public function §[z§(param1:TunnelSection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(§9_§ == param1)
         {
            return;
         }
         §9_§ = param1;
         §="§ = param1.§@M§;
         if(!_loc3_)
         {
            §<X§.§8b§(param1.§#5§.x,param1.§#5§.y);
         }
         §57§.§8b§(param1.§#5§.x,param1.§#5§.y);
         §6s§.§8b§(param1.§#5§.x,param1.§#5§.y);
      }
      
      override public function §%!B§(param1:§4!V§, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = null as Context3D;
         var _loc4_:* = null as Point3D;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null as §=!^§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  §§push(true);
                  if(_loc9_)
                  {
                     if(param2)
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(!_loc9_)
                  {
                     break loop0;
                  }
               }
               §§push(§`2§);
               if(!_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     break;
                  }
                  §`2§ = false;
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc3_ = Context3DUtils.context3D;
                  if(!_loc8_)
                  {
                     _loc3_.setRenderToTexture(§@k§.texture);
                     if(_loc9_)
                     {
                        _loc3_.clear();
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              §-p§.§!!A§.§%!B§(param1,param2);
                              if(!_loc9_)
                              {
                                 break;
                              }
                           }
                           _loc3_.setRenderToBackBuffer();
                           break;
                        }
                     }
                  }
                  _loc4_ = §6s§.transform.§<!C§();
                  loop4:
                  while(true)
                  {
                     if(_loc9_)
                     {
                        param1.transformVector3Into4(_loc4_,§-p§.§1]§);
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(1);
                              if(_loc9_)
                              {
                                 _loc5_ = §§pop() / (2 * §-p§.§1]§.w);
                                 _loc4_.x = §-p§.§1]§.x * _loc5_;
                                 _loc4_.y = §-p§.§1]§.y * _loc5_;
                                 _loc4_.z = §-p§.§1]§.w;
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc9_)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc8_)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc9_)
                                                {
                                                   §§push(false);
                                                   if(_loc9_)
                                                   {
                                                      if(§-p§.§1]§.w > 0)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§pop();
                                                               if(_loc8_)
                                                               {
                                                                  break loop9;
                                                               }
                                                               §§push(_loc4_.x >= -0.5);
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(_loc4_.x <= 0.5);
                                                   if(_loc8_)
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
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          §§pop();
                                          if(!_loc8_)
                                          {
                                             §§push(_loc4_.y >= -0.5);
                                             if(!_loc8_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             break;
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       §§push(_loc4_.y <= 0.5);
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§push(0.5 + _loc4_.x);
                                       if(!_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             _loc6_ = §§pop();
                                             §6!;§.setFragmentUniform1f(4,0,_loc6_);
                                             §§push(0.5);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() - _loc4_.y);
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc6_ = §§pop();
                                             addr0221:
                                             §6!;§.setFragmentUniform1f(4,1,_loc6_);
                                             _loc7_ = §6!;§;
                                             if(_loc9_)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(4);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() * §6s§.transform.§4!I§().x);
                                                         if(!_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(_loc8_)
                                                         {
                                                            break loop11;
                                                         }
                                                         _loc6_ = §§pop();
                                                         if(_loc8_)
                                                         {
                                                            break loop4;
                                                         }
                                                         §§push(_loc6_);
                                                         if(!_loc9_)
                                                         {
                                                            break loop11;
                                                         }
                                                      }
                                                      §§push(§§pop() / 15);
                                                      if(!_loc8_)
                                                      {
                                                         break loop11;
                                                      }
                                                      break;
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      break loop4;
                                                   }
                                                }
                                                §§push(Number(§§pop()));
                                                break loop12;
                                             }
                                             _loc7_.setFragmentUniform1f(4,2,_loc6_);
                                             break loop4;
                                          }
                                          break;
                                       }
                                       break loop5;
                                    }
                                    break loop4;
                                 }
                                 §§push(0);
                              }
                              _loc6_ = Number(§§pop());
                              if(_loc9_)
                              {
                                 §§push(_loc6_);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              break loop4;
                           }
                           §§push(§§pop() / 15);
                           break;
                        }
                        _loc6_ = §§pop();
                        §6!;§.setFragmentUniform1f(4,2,_loc6_);
                        break;
                     }
                     §§goto(addr0221);
                  }
               }
               §3W§.§%!B§(§-p§.§&K§,false);
               if(!_loc8_)
               {
                  break loop0;
               }
               break;
            }
            §§goto(addr02f9);
         }
         super.§%!B§(param1,param2);
         addr02f9:
      }
      
      override public function §&!2§(param1:Model) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            while(true)
            {
               §§push(§>!P§.§&!2§(param1));
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §§push(!§§pop());
               break;
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  super.§&!2§(param1);
               }
            }
         }
      }
   }
}

