package com.player03.run3.character
{
   import §'!1§.§ E§;
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §2X§.§>N§;
   import §2n§.§7%§;
   import §3!b§.§+Z§;
   import §4n§.Achievements;
   import §<!&§.§%!§;
   import §>T§.§[C§;
   import §[^§.§!A§;
   import §]!C§.§9x§;
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§`c§;
   import unitsystem.§7o§;
   
   public class Duplicator extends §6M§
   {
      
      public static var init__:Boolean;
      
      public static var §<Q§:Point3D;
      
      public static var §^h§:Point3D;
      
      public static var §=@§:Point3D;
      
      public static var §>`§:Point3D;
      
      public static var §1o§:Vector.<Duplicator>;
      
      public static function 42(param1:int):Number
      {
         return GrowthFunctions.boundedFunc(1,-1,0.8,param1);
      }
      public static function ;!N(param1:int):Number
      {
         return GrowthFunctions.boundedFunc(1,-1,4,param1);
      }
      public static var §82§:Number = 0.35;
      
      public static var §&P§:Number = 1.2;
      
      public static var §2!4§:Number = 0.8;
      
      public static var §5<§:int = 0;
      
      public var §'-§:int;
      
      public var §,§:Boolean;
      
      public var §`Y§:§]r§;
      
      public function Duplicator(param1:§ !W§, param2:§6O§)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               §'-§ = 0;
               §,§ = false;
               super(param1,param2);
               §`Y§ = §'+§;
               §?`§.§4y§ = false;
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(§[!G§);
            §§push(§^w§);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§^w§ = §§pop();
            while(true)
            {
               if(int(param1.characters.length) == 0)
               {
                  Duplicator.§1o§.length = 0;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               Duplicator.§1o§.push(this);
               break loop0;
            }
            §§goto(addr00b5);
         }
         §'E§ = int(Duplicator.§1o§.length) == 1;
         addr00b5:
      }
      
      public static function §6]§(param1:Duplicator, param2:Duplicator) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1.transform.position.z);
               if(_loc4_)
               {
                  §§push(param2.transform.position.z);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     §§push(0);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0074);
                  }
                  else
                  {
                     §§push(param1.transform.position.z);
                  }
               }
               §§push(param2.transform.position.z);
               break;
            }
            if(§§pop() > §§pop())
            {
               break;
            }
            §§goto(addr0077);
            §§push(-1);
         }
         §§push(1);
         if(!_loc3_)
         {
            addr0074:
            return §§pop();
         }
         addr0077:
         return §§pop();
      }
      
      override public function §&7§() : void
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
               if(_loc2_)
               {
                  §§push(model.visible);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(false);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(tunnel.characters[0] == this)
                                    {
                                       break loop3;
                                    }
                                    if(_loc1_)
                                    {
                                       break loop2;
                                    }
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 §§push(§"G§);
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 break loop3;
                              }
                              §§goto(addr0075);
                           }
                        }
                        §§push(!§§pop());
                        if(_loc2_)
                        {
                           addr0075:
                           §§push(Boolean(§§pop()));
                        }
                        break loop3;
                     }
                     break;
                  }
                  break loop3;
               }
               §%u§ = tunnel.characters[0].§%u§;
               if(!_loc1_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         super.§&7§();
         break loop1;
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc5_:* = null as §6M§;
         var _loc6_:* = false;
         var _loc7_:* = null as Duplicator;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Point3D;
         var _loc10_:* = null as §"B§;
         var _loc11_:* = null as §"B§;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!_loc14_)
         {
            §§push(model.visible);
            if(!_loc14_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               var _loc2_:Vector.<§6M§> = tunnel.characters;
               if(_loc15_)
               {
                  loop5:
                  while(true)
                  {
                     if(physicsData.onGround)
                     {
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              if(this == _loc2_[0])
                              {
                                 break;
                              }
                              if(!_loc15_)
                              {
                                 break;
                              }
                           }
                           §§push(§?`§);
                           §§push(1);
                           §§push(Number(Math.random()));
                           if(_loc15_)
                           {
                              §§push(§§pop() * 0.30000000000000004);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc15_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§pop().§@4§ = §§pop();
                           if(!_loc14_)
                           {
                              break;
                           }
                           break loop5;
                        }
                     }
                     super.update(param1);
                     break;
                  }
               }
               §§push(0);
               if(_loc15_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               _loc4_ = 0;
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        loop22:
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              while(true)
                              {
                                 §§push(_loc4_);
                                 §§push(int(_loc2_.length));
                                 if(_loc14_)
                                 {
                                    break loop9;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    _loc5_ = _loc2_[_loc4_];
                                    if(!_loc14_)
                                    {
                                       _loc4_++;
                                       if(!_loc15_)
                                       {
                                          continue;
                                       }
                                    }
                                    if(_loc5_.model.visible)
                                    {
                                       if(!_loc14_)
                                       {
                                          _loc3_++;
                                       }
                                    }
                                    continue;
                                 }
                                 if(this != _loc2_[0])
                                 {
                                    §'E§ = false;
                                    break loop8;
                                 }
                                 §'E§ = true;
                                 if(!_loc15_)
                                 {
                                    break loop22;
                                 }
                                 §§push(_loc3_);
                                 §§push(int(Math.round(3 + tunnel.power * 4)));
                                 if(_loc14_)
                                 {
                                    break loop9;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    break loop8;
                                 }
                                 if(_loc14_)
                                 {
                                    break loop8;
                                 }
                                 §§push(true);
                                 if(_loc15_)
                                 {
                                    if(§4!Z§ != 0)
                                    {
                                       §§pop();
                                       §§push(physicsData.onGround);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    var _temp_2:* = Duplicator;
                                    §§push(_temp_2);
                                    §§push(_temp_2.§82§);
                                    if(_loc15_)
                                    {
                                       §§push(param1);
                                       if(!_loc14_)
                                       {
                                          §§push(Duplicator);
                                          §§push(_loc3_);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          loop27:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop().§42§(§§pop())));
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(Duplicator.§;!N§(§'-§)));
                                                   if(_loc14_)
                                                   {
                                                      break loop27;
                                                   }
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(!_loc15_)
                                                {
                                                   break;
                                                }
                                                if(!physicsData.onGround)
                                                {
                                                   §§push(Duplicator.§2!4§);
                                                   break loop27;
                                                }
                                                if(_loc15_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§push(Duplicator.§&P§);
                                             if(_loc14_)
                                             {
                                             }
                                             break;
                                          }
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§82§ = §§pop();
                                    if(!_loc15_)
                                    {
                                       break loop7;
                                    }
                                 }
                              }
                           }
                           if(Duplicator.§82§ <= 0)
                           {
                              break;
                           }
                           break loop8;
                        }
                        Duplicator.§82§ = 0.35;
                        if(_loc14_)
                        {
                           break loop7;
                        }
                        _loc6_ = false;
                        if(_loc15_)
                        {
                           _loc4_ = 0;
                           §§goto(addr02a0);
                        }
                        else
                        {
                           §§goto(addr0444);
                        }
                     }
                     loop1:
                     while(true)
                     {
                        loop23:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc14_)
                              {
                                 addr02b1:
                                 §§push(_loc6_);
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr042b);
                              }
                           }
                           else
                           {
                              _loc5_ = _loc2_[_loc4_];
                              if(!_loc15_)
                              {
                                 break loop1;
                              }
                              _loc4_++;
                              if(!_loc15_)
                              {
                                 break loop1;
                              }
                              §§push(_loc5_.model.visible);
                              if(_loc15_)
                              {
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(_loc15_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             break;
                                          }
                                          §§push(true);
                                          if(!_loc15_)
                                          {
                                             break loop23;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc15_)
                                          {
                                             break loop23;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             §§push(int(_loc2_.length));
                                             continue loop23;
                                          }
                                          addr02a0:
                                       }
                                    }
                                    _loc6_ = §§pop();
                                    if(!_loc14_)
                                    {
                                       spawn(_loc5_);
                                       if(_loc15_)
                                       {
                                          break;
                                       }
                                    }
                                    break loop1;
                                 }
                                 §§goto(addr02b1);
                              }
                           }
                           §§push(!§§pop());
                           break;
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        break loop8;
                     }
                     _loc7_ = new Duplicator(tunnel,§!8§);
                     _loc8_ = _loc7_.transform.§%!7§;
                     _loc9_ = transform.§%!7§;
                     while(true)
                     {
                        if(_loc15_)
                        {
                           _loc8_.x = _loc9_.x;
                           if(!_loc15_)
                           {
                              break;
                           }
                           _loc8_.y = _loc9_.y;
                           if(!_loc15_)
                           {
                              break;
                           }
                        }
                        _loc8_.z = _loc9_.z;
                        break;
                     }
                     _loc10_ = _loc7_.transform.§=0§.§,t§;
                     _loc11_ = transform.§=0§.§,t§;
                     _loc10_.x = _loc11_.x;
                     while(true)
                     {
                        if(!_loc14_)
                        {
                           _loc10_.y = _loc11_.y;
                           if(!_loc15_)
                           {
                              break loop8;
                           }
                           _loc10_.z = _loc11_.z;
                           if(_loc14_)
                           {
                              break loop8;
                           }
                           _loc10_.w = _loc11_.w;
                           if(!_loc15_)
                           {
                              break;
                           }
                        }
                        level.§4M§(_loc7_);
                        _loc2_.push(_loc7_);
                        if(_loc15_)
                        {
                           break;
                        }
                        break loop8;
                     }
                     spawn(_loc7_);
                     break;
                  }
                  loop10:
                  while(true)
                  {
                     §§push(false);
                     if(_loc15_)
                     {
                        loop11:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc15_)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc14_)
                                          {
                                             §§push(physicsData.onGround);
                                             if(_loc15_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             if(!_loc15_)
                                             {
                                                break loop13;
                                             }
                                             §§pop();
                                             if(_loc14_)
                                             {
                                                break loop14;
                                             }
                                             §§push(§,§);
                                             if(_loc14_)
                                             {
                                                break loop13;
                                             }
                                          }
                                          §§push(!§§pop());
                                          if(!_loc14_)
                                          {
                                             break loop13;
                                          }
                                          break;
                                       }
                                       §§goto(addr03f4);
                                    }
                                 }
                                 addr03f4:
                                 if(Boolean(§§pop()))
                                 {
                                    if(_loc15_)
                                    {
                                       break loop14;
                                    }
                                    break loop11;
                                 }
                                 break;
                              }
                              break loop14;
                           }
                           if(§§pop())
                           {
                              if(!_loc14_)
                              {
                                 §§pop();
                                 addr042b:
                                 §§push(§7o§.controlScheme.§+l§("jump"));
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc15_)
                              {
                                 break loop10;
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop12;
                     }
                     if(§§pop())
                     {
                        addr0444:
                        _loc8_ = transform.§<!C§();
                        _loc10_ = transform.§=0§.§<!A§();
                        if(_loc15_)
                        {
                           loop16:
                           while(true)
                           {
                              §§push(0);
                              if(!_loc14_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc15_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc15_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                    }
                                    addr06eb:
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop() >= int(_loc2_.length))
                                 {
                                    break loop16;
                                 }
                                 _loc5_ = _loc2_[_loc4_];
                                 loop17:
                                 while(true)
                                 {
                                    if(!_loc14_)
                                    {
                                       _loc4_++;
                                       loop18:
                                       while(true)
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc15_)
                                                {
                                                   §§push(false);
                                                   if(_loc14_)
                                                   {
                                                      break loop19;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(_loc15_)
                                                      {
                                                         if(_loc5_ == this)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         §§push(_loc5_.model.visible);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         break;
                                                      }
                                                      break loop19;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc15_)
                                                   {
                                                      break loop19;
                                                   }
                                                   §§pop();
                                                   if(_loc14_)
                                                   {
                                                      break loop18;
                                                   }
                                                }
                                                §§push(_loc5_.§,§);
                                                if(_loc15_)
                                                {
                                                   break loop19;
                                                }
                                                §§goto(addr04fa);
                                             }
                                             if(§§pop())
                                             {
                                                break loop18;
                                             }
                                             break loop17;
                                          }
                                          §§push(!§§pop());
                                          if(!_loc14_)
                                          {
                                             addr04fa:
                                             §§push(Boolean(§§pop()));
                                          }
                                          break loop20;
                                       }
                                    }
                                    break loop18;
                                 }
                                 §§goto(addr06eb);
                              }
                              break;
                           }
                        }
                     }
                     §§push(physicsData.onGround);
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
                  §§goto(addr0717);
               }
               §,§ = false;
               §'-§ = 0;
               addr0717:
               return;
            }
         }
      }
      
      public function spawn(param1:Duplicator) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         while(true)
         {
            §§push(Number(Math.random()));
            if(_loc7_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(§§pop() * 2);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            break;
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point3D = transform.§<!C§();
         var _loc4_:Point3D = §[!G§.§>l§;
         _loc3_.x = _loc4_.x;
         loop1:
         while(true)
         {
            if(!_loc8_)
            {
               _loc3_.y = _loc4_.y;
               while(true)
               {
                  if(!_loc8_)
                  {
                     _loc3_.z = _loc4_.z;
                     if(!_loc7_)
                     {
                        break;
                     }
                     _loc3_.x += 130 * Number(Math.cos(_loc2_));
                     if(!_loc7_)
                     {
                        break loop1;
                     }
                  }
                  if(_loc3_.y > 0)
                  {
                     break;
                  }
                  addr00c1:
                  _loc3_.y -= 60;
               }
               _loc3_.y = 0;
               var _temp_1:* = tunnel.analytics;
               §§push(_temp_1);
               §§push(_temp_1.§1v§);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§1v§ = §§pop();
               §§goto(addr00c1);
            }
            while(true)
            {
               §§push(_loc3_);
               §§push(_loc3_.z);
               if(_loc7_)
               {
                  §§push(85);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * Number(Math.sin(_loc2_)));
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().z = §§pop();
            if(_loc7_)
            {
               break;
            }
            §§goto(addr00fd);
         }
         param1.reset();
         addr00fd:
         _loc4_ = param1.§[!G§.§>l§;
         if(!_loc8_)
         {
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.z = _loc3_.z;
            while(true)
            {
               if(_loc7_)
               {
                  param1.model.§#"§(true);
                  if(_loc7_)
                  {
                     §§push(param1.model);
                     §§push(1000);
                     if(_loc7_)
                     {
                        while(true)
                        {
                           §§push(int(Duplicator.§1o§.length));
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(1);
                           }
                           §§push(§§pop() - §§pop());
                           break;
                        }
                     }
                     §§pop().§0p§ = §§pop();
                     param1.transform.§"w§(transform.§<!C§());
                     param1.§"!$§ = §"!$§;
                     param1.§%u§ = §"!$§;
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  param1.§29§();
               }
               param1.§'-§ = §'-§;
               break;
            }
         }
         var _loc5_:§4S§ = param1.§-!§;
         loop6:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc8_)
                     {
                        if(§§pop() != _loc5_.§&!"§ > 0)
                        {
                           _loc5_.§&!"§ = 0;
                           if(_loc8_)
                           {
                              break loop6;
                           }
                        }
                        §§push(physicsData.onGround);
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(!§§pop());
                     break;
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc7_)
                  {
                     break loop6;
                  }
               }
               param1.§,§ = false;
               if(_loc7_)
               {
                  break;
               }
               addr0209:
               param1.§]!L§ = §]!L§;
               break loop6;
            }
            param1.§73§ = §73§;
            §§goto(addr0209);
         }
         _loc4_ = param1.transform.§%!7§;
         var _loc6_:Point3D = transform.§%!7§;
         loop8:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  _loc4_.x = _loc6_.x;
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc4_.y = _loc6_.y;
                  if(!_loc7_)
                  {
                     break loop8;
                  }
               }
               _loc4_.z = _loc6_.z;
               if(_loc7_)
               {
                  break;
               }
               break loop8;
            }
            §1!^§();
            break;
         }
      }
      
      public function §1!^§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:* = 0;
         var _loc8_:* = null as Duplicator;
         §§push(int(Duplicator.§1o§.length));
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(true);
         if(_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(Duplicator.§1o§[0].transform.position.z);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc1_);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(!_loc10_)
                  {
                     while(_loc4_ < _loc5_)
                     {
                        §§push(_loc4_);
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        _loc4_++;
                        §§push(int(§§pop()));
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                        _loc6_ = §§pop();
                        §§push(Duplicator.§1o§[_loc6_].transform.position.z);
                        if(_loc9_)
                        {
                           if(§§pop() > _loc3_)
                           {
                              §§push(false);
                              if(!_loc10_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc10_)
                                 {
                                    _loc2_ = §§pop();
                                    break;
                                 }
                              }
                              break loop2;
                           }
                           §§push(Duplicator.§1o§[_loc6_].transform.position.z);
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc3_ = §§pop();
                        if(!_loc10_)
                        {
                           continue;
                        }
                        §§goto(addr0136);
                     }
                  }
                  §§push(_loc2_);
                  break loop2;
               }
               _loc5_ = §§pop();
               §§goto(addr0136);
            }
            _loc4_ = int(§§pop());
            §§push(0);
            break loop5;
         }
         if(§§pop())
         {
            if(!_loc10_)
            {
               return;
            }
            addr0136:
            var _loc7_:Vector.<Duplicator> = Duplicator.§1o§;
            while(true)
            {
               if(_loc9_)
               {
                  while(_loc5_ < int(_loc7_.length))
                  {
                     _loc8_ = _loc7_[_loc5_];
                     if(!_loc10_)
                     {
                        _loc5_++;
                        if(_loc10_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc8_.model);
                     if(!_loc10_)
                     {
                        _loc4_--;
                     }
                     §§pop().§0p§ = _loc4_;
                  }
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               §§push(§!C§.§"[§.§3!#§);
               §§push(Model.§7R§);
               if(!_loc10_)
               {
                  §§push(§§pop());
               }
               §§pop().§9!B§ = §§pop();
               break;
            }
            return;
         }
         §§push(Duplicator.§1o§);
         §§push(Duplicator.§6]§);
         if(_loc9_)
         {
            §§push(§§pop());
         }
         §§pop().sort(§§pop());
         §§push(1000 + int(Duplicator.§1o§.length));
         break loop3;
      }
      
      override public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.reset();
            while(true)
            {
               if(_loc2_)
               {
                  Duplicator.§82§ = 0.35;
                  if(_loc2_)
                  {
                     §,§ = true;
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
               }
               §'-§ = 0;
               if(!_loc1_)
               {
                  break;
               }
            }
            model.§#"§(this == tunnel.characters[0]);
         }
      }
      
      override public function §?!Q§() : void
      {
      }
      
      public function §^w§(param1:§%!§) : Boolean
      {
         return param1.physicsData == null;
      }
      
      override public function §'7§(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         super.§'7§(param1);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           break loop0;
                        }
                        if(_loc2_)
                        {
                           var _temp_1:* = tunnel.analytics;
                           §§push(_temp_1);
                           §§push(_temp_1.§`§);
                           if(_loc2_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop().§`§ = §§pop();
                        }
                        §§push(false);
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        if(tunnel.§5§ != §,a§.INFINITE)
                        {
                           break loop1;
                        }
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(tunnel.analytics.§`§ == 50);
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               Achievements.§3!-§.§,Y§();
            }
            break;
         }
      }
      
      override public function §1r§() : §'H§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§'H§ = super.§1r§();
         if(!_loc2_)
         {
            if(_loc1_ == null)
            {
               §§push(§`c§);
               §§push(§'!b§);
               §§push(§!8§.§`6§());
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               return §§pop().§1r§(§§pop().§?!3§(§§pop(),false));
            }
         }
         return _loc1_;
      }
      
      override public function display(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null as Vector.<Duplicator>;
         var _loc6_:* = null as Duplicator;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = null as Point3D;
         var _loc11_:* = null as Point3D;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = null as Point3D;
         var _loc16_:* = null as Point3D;
         var _loc17_:* = 0;
         var _loc18_:int = 0;
         var _loc19_:* = null as §6M§;
         var _loc20_:* = null as §4S§;
         var _loc2_:Vector.<§6M§> = tunnel.characters;
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               loop39:
               while(true)
               {
                  loop41:
                  while(true)
                  {
                     if(_loc22_)
                     {
                        while(true)
                        {
                           §§push(model.visible);
                           if(_loc22_)
                           {
                              if(!§§pop())
                              {
                                 break loop6;
                              }
                              while(true)
                              {
                                 if(this != _loc2_[0])
                                 {
                                    §'+§ = null;
                                    if(_loc21_)
                                    {
                                       break loop41;
                                    }
                                    spritesheet.§,=§(_loc2_[0].spritesheet.§45§);
                                    if(!_loc22_)
                                    {
                                       break;
                                    }
                                    spritesheet.§@S§(_loc2_[0].spritesheet.xInverted);
                                 }
                                 else
                                 {
                                    §'+§ = §`Y§;
                                 }
                                 super.display(param1);
                                 if(_loc22_)
                                 {
                                    break;
                                 }
                                 break loop39;
                              }
                              if(this != _loc2_[0])
                              {
                                 break loop6;
                              }
                              §1!^§();
                              §§push(0);
                              if(!_loc22_)
                              {
                                 break loop5;
                              }
                              §§push(int(§§pop()));
                              if(!_loc22_)
                              {
                                 break loop5;
                              }
                              _loc3_ = §§pop();
                              §§push(0);
                              if(_loc22_)
                              {
                                 break loop5;
                              }
                              §§goto(addr0120);
                           }
                           §§goto(addr05c5);
                        }
                        §§goto(addr05e2);
                     }
                     §§goto(addr0117);
                  }
                  §§goto(addr05c6);
               }
               §§goto(addr05e6);
            }
            while(true)
            {
               §§push(false);
               if(_loc22_)
               {
                  if(Duplicator.§5<§ == 0)
                  {
                     break;
                  }
                  if(_loc21_)
                  {
                     break;
                  }
                  §§pop();
                  §§goto(addr05c6);
               }
               §§goto(addr05e1);
            }
            §§goto(addr05e2);
         }
         addr0120:
         _loc4_ = §§pop();
         while(true)
         {
            if(!_loc21_)
            {
               _loc5_ = Duplicator.§1o§;
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc21_)
                  {
                     break;
                  }
                  §§push(int(_loc5_.length));
                  if(_loc22_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              loop27:
                              while(true)
                              {
                                 if(_loc22_)
                                 {
                                    _loc7_ = tunnel.power;
                                    while(true)
                                    {
                                       §§push(150);
                                       if(_loc22_)
                                       {
                                          §§push(0.5);
                                          if(_loc21_)
                                          {
                                             break;
                                          }
                                          §§push(_loc7_);
                                          if(_loc21_)
                                          {
                                             break loop9;
                                          }
                                          §§push(0.5);
                                          if(!_loc22_)
                                          {
                                             break loop27;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(!_loc22_)
                                          {
                                             break loop9;
                                          }
                                          §§push(§§pop() * (§§pop() + §§pop()));
                                       }
                                       _loc8_ = §§pop();
                                       §§push(_loc8_);
                                       §§push(_loc8_);
                                       break;
                                    }
                                    addr0209:
                                    §§push(§§pop() * §§pop());
                                    if(_loc22_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc22_)
                                       {
                                          _loc8_ = §§pop();
                                          §§push(1);
                                          break loop0;
                                       }
                                    }
                                    _loc9_ = §§pop();
                                 }
                                 §§push(_loc9_);
                                 if(_loc22_)
                                 {
                                    §§push(0.3);
                                    §§push(_loc7_);
                                    if(!_loc21_)
                                    {
                                       §§push(0.7);
                                       break;
                                    }
                                    break loop9;
                                 }
                                 continue loop15;
                              }
                              §§push(§§pop() * §§pop());
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc22_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop() * §§pop());
                           break;
                        }
                        _loc9_ = Number(§§pop());
                        _loc10_ = transform.§2!§();
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    §§push(1);
                                    if(!_loc21_)
                                    {
                                       _loc4_ = §§pop();
                                       §§push(int(Duplicator.§1o§.length));
                                       if(!_loc21_)
                                       {
                                          _loc13_ = int(§§pop());
                                          loop18:
                                          while(true)
                                          {
                                             if(!_loc21_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc21_)
                                                   {
                                                      break loop18;
                                                   }
                                                   §§push(_loc13_);
                                                   if(!_loc22_)
                                                   {
                                                      break loop11;
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc21_)
                                                         {
                                                            _loc4_++;
                                                            if(_loc21_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(int(§§pop()));
                                                         break;
                                                      }
                                                      _loc14_ = §§pop();
                                                      if(_loc22_)
                                                      {
                                                         §§push(Duplicator.§1o§[_loc14_].model.visible);
                                                         if(_loc22_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         _loc11_ = Duplicator.§1o§[_loc14_].transform.§2!§();
                                                         _loc15_ = Duplicator.§<Q§;
                                                         while(true)
                                                         {
                                                            if(!_loc21_)
                                                            {
                                                               _loc15_.x = _loc11_.x;
                                                               if(_loc21_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            _loc15_.y = _loc11_.y;
                                                            if(_loc22_)
                                                            {
                                                               break;
                                                            }
                                                            _loc15_ = Duplicator.§<Q§;
                                                            _loc16_ = Duplicator.§<Q§;
                                                            loop21:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc22_)
                                                                  {
                                                                     if(_loc16_ != null)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc21_)
                                                                     {
                                                                        break loop21;
                                                                     }
                                                                  }
                                                                  _loc16_ = new Point3D(0,0,0);
                                                                  break;
                                                               }
                                                               _loc16_.x = _loc15_.x - _loc10_.x;
                                                               if(!_loc21_)
                                                               {
                                                                  _loc16_.y = _loc15_.y - _loc10_.y;
                                                                  if(_loc21_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(_loc16_);
                                                               §§push(_loc15_.z);
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(§§pop() - _loc10_.z);
                                                               }
                                                               §§pop().z = §§pop();
                                                               break;
                                                            }
                                                            _loc15_ = Duplicator.§<Q§;
                                                            if(_loc21_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(_loc15_.x * _loc15_.x);
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(_loc15_.y * _loc15_.y);
                                                                  if(!_loc22_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(_loc15_.z);
                                                                  if(!_loc22_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() * _loc15_.z);
                                                                  if(_loc21_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc22_)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc22_)
                                                                           {
                                                                              if(!physicsData.onGround)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc21_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§pop();
                                                                           if(_loc21_)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                        }
                                                                        §§push(_loc12_);
                                                                     }
                                                                     §§push(22500);
                                                                     break loop23;
                                                                  }
                                                                  addr03f2:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc22_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(Duplicator.§1o§[_loc14_].spritesheet);
                                                                     §§push(_loc9_);
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(1);
                                                                        §§push(_loc12_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(§§pop() / 22500);
                                                                        }
                                                                        §§push(§§pop() * (§§pop() - §§pop()));
                                                                     }
                                                                     §§pop().alpha = §§pop();
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               Duplicator.§1o§[_loc14_].model.§#"§(false);
                                                               if(_loc22_)
                                                               {
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§push(§§pop() > §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            §§goto(addr03f2);
                                                         }
                                                         _loc15_.z = _loc11_.z;
                                                         continue loop21;
                                                      }
                                                      continue;
                                                   }
                                                   if(!_loc22_)
                                                   {
                                                      break loop17;
                                                   }
                                                }
                                             }
                                             spritesheet.alpha = 1;
                                             if(_loc22_)
                                             {
                                                §§push(§4!Z§);
                                                §§push(2);
                                                if(_loc21_)
                                                {
                                                   break loop11;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   break loop6;
                                                }
                                                §§push(0);
                                                if(_loc22_)
                                                {
                                                   break;
                                                }
                                                continue loop13;
                                             }
                                             §§goto(addr04bc);
                                          }
                                       }
                                    }
                                    _loc4_ = §§pop();
                                    if(!_loc22_)
                                    {
                                       break loop15;
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc21_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc21_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc13_ = §§pop();
                                       if(_loc22_)
                                       {
                                          §§push(1);
                                          break;
                                       }
                                       break loop15;
                                    }
                                    §§push(int(§§pop()));
                                    continue loop13;
                                 }
                                 §§goto(addr0574);
                              }
                              §§goto(addr056c);
                           }
                           while(§§pop() < §§pop())
                           {
                              _loc18_ = _loc14_++;
                              if(_loc22_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_[_loc18_].model.visible);
                                    if(!_loc21_)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop15;
                                       }
                                       §§push(_loc2_[_loc18_].§4!Z§);
                                       §§push(0);
                                       if(_loc21_)
                                       {
                                          break loop13;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr0510);
                                       }
                                       else
                                       {
                                          §§push(false);
                                          if(!_loc22_)
                                          {
                                             break;
                                          }
                                          if(_loc2_[_loc18_].§4!Z§ != 1)
                                          {
                                             break;
                                          }
                                          if(_loc22_)
                                          {
                                             §§pop();
                                             §§push(_loc13_);
                                             §§push(0);
                                             if(_loc21_)
                                             {
                                                break loop13;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc21_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    §§push(_loc18_);
                                    if(_loc22_)
                                    {
                                       _loc13_ = §§pop();
                                       break loop15;
                                    }
                                    break loop12;
                                 }
                                 break loop15;
                              }
                              break loop6;
                              §§push(_loc17_);
                           }
                           §§goto(addr0574);
                        }
                        _loc14_ = §§pop();
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc22_)
                                 {
                                    addr04bc:
                                    §§push(int(_loc2_.length));
                                    if(!_loc21_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc22_)
                                       {
                                          _loc17_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc14_);
                                          }
                                          addr056c:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       break loop11;
                                    }
                                 }
                                 §§goto(addr056c);
                              }
                              addr0510:
                              if(_loc22_)
                              {
                                 _loc4_ = _loc18_;
                                 if(!_loc21_)
                                 {
                                    addr0574:
                                    §§push(_loc4_);
                                    if(!_loc22_)
                                    {
                                       break loop12;
                                    }
                                    §§push(0);
                                    if(_loc22_)
                                    {
                                       break;
                                    }
                                    §§goto(addr059f);
                                 }
                                 §§goto(addr05a3);
                              }
                              §§goto(addr058f);
                           }
                           if(§§pop() <= §§pop())
                           {
                              §§push(_loc13_);
                              break;
                           }
                           if(!_loc21_)
                           {
                              addr058f:
                              Duplicator.§5<§ = _loc4_;
                              break loop6;
                           }
                           §§goto(addr05a3);
                        }
                        addr059f:
                        if(§§pop() > 0)
                        {
                           addr05a3:
                           Duplicator.§5<§ = _loc13_;
                        }
                        break loop6;
                     }
                     _loc6_ = _loc5_[_loc4_];
                     if(!_loc21_)
                     {
                        _loc4_++;
                        if(!_loc21_)
                        {
                           if(_loc6_.model.visible)
                           {
                              if(_loc22_)
                              {
                                 _loc3_++;
                              }
                           }
                        }
                     }
                     continue;
                  }
                  §§push(1);
                  if(!_loc21_)
                  {
                     addr01ee:
                     §§push(§§pop() - §§pop());
                     §§push(7);
                  }
                  §§push(§§pop() / §§pop());
                  if(!_loc21_)
                  {
                     §§push(§§pop() * 0.4);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc21_)
                  {
                     break loop8;
                  }
                  §§push(Number(§§pop()));
                  if(!_loc22_)
                  {
                     break loop8;
                  }
                  §§goto(addr0209);
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc21_)
                  {
                     §§goto(addr01e4);
                  }
                  §§goto(addr01ee);
               }
               §§goto(addr01f0);
            }
            addr05c6:
            §§push(this);
            §§push(_loc2_);
            §§push(int(_loc2_.length));
            if(!_loc21_)
            {
               §§push(§§pop() - 1);
            }
            §§push(§§pop() == §§pop()[§§pop()]);
            if(_loc22_)
            {
               addr05e1:
               §§push(Boolean(§§pop()));
            }
            break;
         }
         addr05e2:
         if(§§pop())
         {
            addr05e6:
            _loc19_ = _loc2_[0];
            while(true)
            {
               if(_loc22_)
               {
                  _loc2_[0] = _loc2_[Duplicator.§5<§];
                  if(!_loc22_)
                  {
                     break;
                  }
                  _loc2_[Duplicator.§5<§] = _loc19_;
                  if(!_loc22_)
                  {
                     break;
                  }
               }
               Duplicator.§5<§ = 0;
               break;
            }
            _loc10_ = _loc19_.transform.§2!§();
            _loc11_ = _loc2_[0].transform.§2!§();
            _loc15_ = Duplicator.§>`§;
            loop31:
            while(true)
            {
               while(true)
               {
                  if(_loc22_)
                  {
                     if(_loc15_ != null)
                     {
                        break;
                     }
                     if(_loc21_)
                     {
                        break loop31;
                     }
                  }
                  _loc15_ = new Point3D(0,0,0);
                  break;
               }
               _loc15_.x = _loc10_.x - _loc11_.x;
               if(!_loc21_)
               {
                  break;
               }
               §§goto(addr06b4);
            }
            _loc15_.y = _loc10_.y - _loc11_.y;
            if(!_loc21_)
            {
               §§push(_loc15_);
               §§push(_loc10_.z);
               if(_loc22_)
               {
                  §§push(§§pop() - _loc11_.z);
               }
               §§pop().z = §§pop();
            }
            addr06b4:
            _loc10_ = Duplicator.§>`§;
            if(_loc22_)
            {
               loop33:
               while(true)
               {
                  §§push(Number(Math.sqrt(_loc10_.x * _loc10_.x + _loc10_.y * _loc10_.y + _loc10_.z * _loc10_.z)));
                  if(_loc22_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc21_)
                        {
                           _loc7_ = §§pop();
                           if(_loc21_)
                           {
                              break loop33;
                           }
                           §§push(_loc7_);
                           if(!_loc21_)
                           {
                              §§push(§§pop() / 140);
                              if(_loc21_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                  }
                  _loc8_ = §§pop();
                  if(!_loc21_)
                  {
                     loop35:
                     while(true)
                     {
                        loop36:
                        while(true)
                        {
                           §§push(tunnel);
                           §§push(0.3);
                           if(!_loc21_)
                           {
                              §§push(_loc8_);
                              if(_loc21_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(0.33);
                                 if(!_loc21_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(0.33);
                                       break loop36;
                                    }
                                    if(_loc21_)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_);
                                    if(_loc21_)
                                    {
                                       break loop36;
                                    }
                                    §§push(1.2);
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!_loc21_)
                                    {
                                       break;
                                    }
                                    break loop35;
                                 }
                                 §§push(1.2);
                                 if(_loc22_)
                                 {
                                 }
                                 break loop36;
                              }
                           }
                           §§push(_loc8_);
                           if(_loc22_)
                           {
                           }
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                     §§pop().§'!5§(§§pop());
                  }
                  break;
               }
            }
            _loc20_ = _loc2_[0].§-!§;
            if(_loc22_)
            {
               while(true)
               {
                  if(true != _loc20_.§&!"§ > 0)
                  {
                     if(_loc21_)
                     {
                        break;
                     }
                     _loc20_.§&!"§ = 0.12;
                     if(_loc21_)
                     {
                        break;
                     }
                  }
                  var _temp_2:* = tunnel.analytics;
                  §§push(_temp_2);
                  §§push(_temp_2.§]!-§);
                  if(!_loc21_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().§]!-§ = §§pop();
                  break;
               }
            }
         }
      }
      
      override public function §=5§(param1:§[C§, param2:Point3D, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            §§push(super.§=5§(param1,param2,param3));
            if(!_loc6_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         var _loc5_:§6M§ = tunnel.characters[0];
         loop1:
         while(true)
         {
            if(_loc7_)
            {
               loop2:
               while(true)
               {
                  §§push(false);
                  if(_loc7_)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc6_)
                              {
                                 §§push(false);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 if(this == _loc5_)
                                 {
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                    break loop4;
                                 }
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§push(_loc5_.physicsData.onGround);
                              if(_loc7_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc6_)
                                 {
                                    break loop4;
                                 }
                                 break;
                              }
                              break loop4;
                           }
                           if(!§§pop())
                           {
                              break loop3;
                           }
                           if(!_loc7_)
                           {
                              break loop3;
                           }
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(transform.position.z);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() - _loc5_.transform.position.z);
                              }
                              §§push(§§pop() > -100);
                              if(_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              break loop3;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop5;
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop1;
                     }
                  }
                  §§pop();
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(spritesheet.alpha > 0);
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc7_)
                           {
                              break loop2;
                           }
                        }
                        break loop1;
                     }
                     addr0115:
                     tunnel.characters[0].§%u§ = §%u§;
                     break;
                  }
               }
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§goto(addr0115);
                  }
               }
            }
            return _loc4_;
         }
         return §§pop();
      }
   }
}

import haxeutils.math.GrowthFunctions;

