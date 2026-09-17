package game
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!D§.§[!5§;
   import §%!Q§.§ !N§;
   import §%!Z§.§&!S§;
   import §+!4§.§8!_§;
   import §-!!§.§ B§;
   import §-!!§.§&l§;
   import §-!!§.§+"§;
   import §-!!§.§6!4§;
   import geom3d.Transform;
   import §2!"§.Spritesheet;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§!!Q§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import haxe.Timer;
   import haxeutils.math.geom.Quaternion;
   import nme3D.shader.§'H§;
   import unitsystem.§7o§;
   
   public class §`f§ extends §'!O§ implements §@[§
   {
      
      public var §%!?§:§8s§;
      
      public var §]! §:§&l§;
      
      public var §&!=§:§8!_§;
      
      public var §7S§:Vector.<String>;
      
      public var §!!4§:Shape;
      
      public var §'!A§:§5v§;
      
      public var §`W§:Vector.<§11§>;
      
      public var § !@§:§11§;
      
      public function §`f§(param1:§5v§)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         if(!_loc8_)
         {
            §'!A§ = param1;
            if(_loc7_)
            {
               super();
            }
         }
         §§push([]);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            while(_loc3_ < 10)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     _loc3_++;
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc4_ = §§pop();
               if(_loc7_)
               {
                  §§push(_loc2_);
                  §§push("");
                  if(!_loc8_)
                  {
                     §§push(§§pop() + _loc4_);
                     if(_loc7_)
                     {
                        §§push(§§pop());
                     }
                  }
                  §§pop().push(§§pop());
               }
            }
         }
         §§push(_loc2_);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §7S§ = Vector.<String>(_loc5_);
         §&!=§ = new §8!_§();
         loop4:
         while(true)
         {
            if(!_loc8_)
            {
               §§push(§&!=§);
               §§push(§7S§[0]);
               if(_loc7_)
               {
                  §§push(§§pop());
               }
               §§pop().§<!E§(§§pop(),192);
               if(_loc7_)
               {
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc8_)
                           {
                              _loc3_ = §§pop();
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push(int(§7S§.length));
                              if(_loc8_)
                              {
                                 break loop5;
                              }
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                           break loop5;
                        }
                        while(true)
                        {
                           if(§§pop() >= _loc4_)
                           {
                              break loop4;
                           }
                           §§push(_loc3_);
                           if(!_loc8_)
                           {
                              _loc3_++;
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc6_ = §§pop();
                           if(_loc7_)
                           {
                              §§push(§&!=§);
                              §§push(§7S§[_loc6_]);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                              }
                              §§push(48);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + _loc6_);
                              }
                              §§pop().§<!E§(§§pop(),§§pop());
                           }
                           break loop6;
                        }
                        break loop4;
                        addr0176:
                     }
                  }
                  _loc4_ = §§pop();
                  break loop6;
               }
               break;
            }
            while(true)
            {
               §§goto(addr0176);
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as §>f§;
         var _loc7_:* = 0;
         var _loc8_:* = null as Vector.<Function>;
         var _loc9_:* = null;
         while(true)
         {
            if(_loc10_)
            {
               if(§'!A§.editor == null)
               {
                  if(_loc10_)
                  {
                     return;
                  }
               }
               else
               {
                  §]! §.update(param1);
                  if(!_loc10_)
                  {
                     break;
                  }
               }
            }
            §&!=§.update(param1);
            break;
         }
         var _loc2_:§>3§ = §'!A§.editor.§?!_§.§,!_§;
         §§push(0);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(int(§7S§.length));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc11_)
         {
            loop0:
            while(_loc3_ < _loc4_)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc10_)
                  {
                     _loc3_++;
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  if(_loc10_)
                  {
                     _loc5_ = §§pop();
                     if(_loc10_)
                     {
                        §§push(_loc5_);
                        break;
                     }
                     break loop0;
                  }
                  break;
               }
               if(§§pop() >= int(_loc2_.§"2§.length))
               {
                  if(_loc10_)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(§&!=§);
                  §§push(§7S§[_loc5_]);
                  if(_loc10_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop().§+l§(§§pop()));
                  if(_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
               }
               _loc6_ = _loc2_.§"2§[_loc5_];
               if(!_loc11_)
               {
                  if(_loc2_.§]>§ == _loc6_)
                  {
                     break;
                  }
                  if(_loc10_)
                  {
                     _loc2_.§]>§ = _loc6_;
                     if(_loc10_)
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc7_ = §§pop();
                     }
                  }
               }
               _loc8_ = _loc2_.§<7§;
               if(_loc10_)
               {
                  while(_loc7_ < int(_loc8_.length))
                  {
                     §§push(_loc8_[_loc7_]);
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                     }
                     _loc9_ = §§pop();
                     if(_loc10_)
                     {
                        _loc7_++;
                        if(!_loc11_)
                        {
                           _loc9_(_loc6_);
                        }
                     }
                  }
               }
               break;
            }
         }
      }
      
      public function §3v§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc5_:* = 0;
         var _loc7_:* = null as §>f§;
         var _loc8_:* = null as Vector.<Function>;
         var _loc9_:* = null;
         §§push(-1);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc11_)
            {
               §§push(0);
               if(!_loc11_)
               {
                  break;
               }
               §§push(int(§§pop()));
               if(_loc10_)
               {
                  break;
               }
               _loc3_ = §§pop();
            }
            §§push(int(§`W§.length));
            if(_loc11_)
            {
               §§push(int(§§pop()));
            }
            break;
         }
         var _loc4_:* = §§pop();
         if(!_loc10_)
         {
            loop0:
            while(_loc3_ < _loc4_)
            {
               §§push(_loc3_);
               if(_loc11_)
               {
                  _loc3_++;
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        §§push(int(§§pop()));
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                     _loc5_ = §§pop();
                     if(_loc11_)
                     {
                        if(param1.currentTarget != §`W§[_loc5_])
                        {
                           continue loop0;
                        }
                        if(!_loc11_)
                        {
                           break loop0;
                        }
                     }
                     §§push(_loc5_);
                     if(_loc11_)
                     {
                        break;
                     }
                  }
               }
               _loc2_ = §§pop();
               break;
            }
         }
         var _loc6_:§>3§ = §'!A§.editor.§?!_§.§,!_§;
         loop4:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  §§push(false);
                  if(!_loc10_)
                  {
                     if(_loc2_ < 0)
                     {
                        break;
                     }
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(_loc10_)
                  {
                     break loop4;
                  }
               }
               §§push(_loc2_ < int(_loc6_.§"2§.length));
               if(_loc11_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            §§goto(addr01b3);
         }
         _loc7_ = _loc6_.§"2§[_loc2_];
         loop6:
         while(true)
         {
            if(!_loc10_)
            {
               if(_loc6_.§]>§ == _loc7_)
               {
                  break;
               }
               if(_loc11_)
               {
                  _loc6_.§]>§ = _loc7_;
                  if(_loc11_)
                  {
                     §§push(0);
                     if(_loc11_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc3_ = §§pop();
                  }
               }
            }
            _loc8_ = _loc6_.§<7§;
            if(!_loc10_)
            {
               while(true)
               {
                  if(_loc3_ >= int(_loc8_.length))
                  {
                     break loop6;
                  }
                  §§push(_loc8_[_loc3_]);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                  }
                  _loc9_ = §§pop();
                  if(_loc11_)
                  {
                     _loc3_++;
                     if(_loc11_)
                     {
                        _loc9_(_loc7_);
                     }
                  }
               }
            }
            break;
         }
         addr01b3:
      }
      
      public function §6!"§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §]! §.§>!%§ = 5 * layout.scale.x;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §&!=§.reset();
         }
      }
      
      public function §=!;§() : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc1_:* = null as §>3§;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as §>f§;
         var _loc7_:* = null as §11§;
         var _loc8_:* = null as § 7§;
         var _loc9_:* = null as § 7§;
         var _loc10_:* = null as §&d§;
         loop10:
         while(true)
         {
            if(!_loc11_)
            {
               if(§'!A§.editor == null)
               {
                  break;
               }
            }
            _loc1_ = §'!A§.editor.§?!_§.§,!_§;
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  loop27:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           §§push(_loc1_.§6!#§);
                           §§push(§"c§);
                           if(_loc12_)
                           {
                              §§push(§§pop());
                           }
                           §§push(int(§§pop().indexOf(§§pop(),0)));
                           if(_loc11_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!_loc12_)
                           {
                              break loop27;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(_loc11_)
                              {
                                 break loop12;
                              }
                              §§push(_loc1_.§6!#§);
                              §§push(§"c§);
                              if(_loc12_)
                              {
                                 §§push(§§pop());
                              }
                              §§pop().push(§§pop());
                           }
                           while(true)
                           {
                              §§push(int(§`W§.length));
                              if(!_loc11_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc11_)
                                 {
                                    break loop12;
                                 }
                                 §§push(int(§`W§.length));
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                              }
                              §§push(int(§§pop()));
                              break;
                           }
                           _loc3_ = §§pop();
                           if(!_loc12_)
                           {
                              break loop11;
                           }
                        }
                        §§push(int(_loc1_.§"2§.length));
                        break;
                     }
                     §§push(int(§§pop()));
                     if(_loc12_)
                     {
                        _loc4_ = §§pop();
                        break loop12;
                     }
                     §§goto(addr02f9);
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop11;
                     }
                     §§push(_loc3_);
                     if(_loc12_)
                     {
                        _loc3_++;
                        if(!_loc11_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc5_ = §§pop();
                     _loc6_ = _loc1_.§"2§[_loc5_];
                     §§push(§§findproperty(§11§));
                     §§push(§3v§);
                     if(_loc12_)
                     {
                        §§push(§§pop());
                     }
                     _loc7_ = new §§pop().§11§(§§pop());
                     loop29:
                     while(true)
                     {
                        loop30:
                        while(true)
                        {
                           loop31:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc11_)
                                 {
                                    §`W§.push(_loc7_);
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    §]! §.addChild(_loc7_);
                                    if(!_loc11_)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc12_)
                                       {
                                          break loop31;
                                       }
                                       §§push(10);
                                       if(!_loc12_)
                                       {
                                          break loop30;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          break loop29;
                                       }
                                       if(_loc11_)
                                       {
                                          break loop29;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    §§push("");
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() + _loc5_);
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(§§pop());
                                    break;
                                 }
                                 §§pop().§<%§(§§pop());
                                 if(_loc12_)
                                 {
                                    break loop29;
                                 }
                                 break;
                              }
                              §§goto(addr01ae);
                           }
                           §§goto(addr01a8);
                        }
                        if(§§pop() > §§pop())
                        {
                           addr01ae:
                           _loc8_ = new §?y§(_loc7_);
                           §§push(§§findproperty(§?y§));
                           §§push(§`W§);
                           §§push(_loc5_);
                           if(!_loc11_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = new §§pop().§?y§(§§pop()[§§pop()]);
                           _loc10_ = layout;
                           if(!_loc11_)
                           {
                              if(_loc10_ == null)
                              {
                                 if(_loc11_)
                                 {
                                    break loop12;
                                 }
                                 §§push(§&d§.§1$§());
                              }
                              else
                              {
                                 §§push(_loc10_);
                              }
                              §§pop().add(_loc8_,new §+X§(8,§2u§.RIGHT),_loc9_);
                           }
                           break loop12;
                        }
                        _loc8_ = new §?y§(§!!4§);
                        _loc9_ = new §?y§(_loc7_);
                        _loc10_ = layout;
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc12_)
                              {
                                 if(_loc10_ != null)
                                 {
                                    §§push(_loc10_);
                                    break;
                                 }
                                 if(_loc11_)
                                 {
                                    continue loop34;
                                 }
                              }
                              §§push(§&d§.§1$§());
                              break;
                           }
                           §§pop().add(_loc8_,new §4$§(true,0.5),_loc9_);
                           continue loop34;
                        }
                        _loc8_ = new §?y§(§!!4§);
                        _loc9_ = new §?y§(_loc7_);
                        _loc10_ = layout;
                        loop34:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc12_)
                              {
                                 if(_loc10_ != null)
                                 {
                                    §§push(_loc10_);
                                    break;
                                 }
                                 if(!_loc12_)
                                 {
                                    break loop34;
                                 }
                              }
                              §§push(§&d§.§1$§());
                              break;
                           }
                           §§pop().add(_loc8_,new §4$§(false,0.5),_loc9_);
                           if(!_loc11_)
                           {
                              break;
                           }
                           break loop12;
                        }
                        §!!4§.visible = true;
                        break loop12;
                     }
                     addr01a8:
                     §§push(_loc5_);
                     §§push(0);
                     break loop30;
                  }
                  break loop11;
               }
               while(true)
               {
                  §§push(_loc3_);
                  addr02f9:
                  while(true)
                  {
                     §§push(_loc4_);
                     break loop27;
                  }
               }
            }
            _loc8_ = new §?y§(§ !@§);
            §§push(§§findproperty(§?y§));
            §§push(§`W§);
            §§push(int(_loc1_.§"2§.length));
            if(_loc12_)
            {
               §§push(§§pop() - 1);
            }
            _loc9_ = new §§pop().§?y§(§§pop()[§§pop()]);
            _loc10_ = layout;
            loop13:
            while(true)
            {
               if(_loc10_ == null)
               {
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(_loc10_);
               }
               §§pop().add(_loc8_,new §+X§(8,§2u§.RIGHT),_loc9_);
               loop14:
               while(true)
               {
                  loop15:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        if(_loc12_)
                        {
                           loop17:
                           while(true)
                           {
                              loop18:
                              while(true)
                              {
                                 loop21:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc12_)
                                    {
                                       _loc3_ = int(§§pop());
                                       loop22:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(int(_loc1_.§"2§.length));
                                             if(_loc12_)
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   §§push(_loc4_);
                                                   if(_loc11_)
                                                   {
                                                      break loop17;
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc12_)
                                                         {
                                                            _loc3_++;
                                                            if(!_loc12_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§push(int(§§pop()));
                                                         break;
                                                      }
                                                      _loc5_ = §§pop();
                                                      if(_loc12_)
                                                      {
                                                         _loc1_.§"2§[_loc5_].§;§(§`W§[_loc5_]);
                                                      }
                                                      continue;
                                                   }
                                                   §§push(_loc2_);
                                                   if(!_loc12_)
                                                   {
                                                      break loop22;
                                                   }
                                                }
                                             }
                                             _loc3_ = int(§§pop());
                                             if(_loc12_)
                                             {
                                                §§push(int(§`W§.length));
                                                if(_loc12_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!_loc11_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc11_)
                                                         {
                                                            break loop15;
                                                         }
                                                         §§push(_loc4_);
                                                         if(!_loc12_)
                                                         {
                                                            break loop17;
                                                         }
                                                         if(§§pop() < §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc12_)
                                                               {
                                                                  _loc3_++;
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(int(§§pop()));
                                                               break;
                                                            }
                                                            _loc5_ = §§pop();
                                                            if(_loc12_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§`W§[_loc5_]);
                                                                  if(!_loc11_)
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
                                                               §§pop().§?'§(§§pop());
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      break loop15;
                                                   }
                                                   break loop16;
                                                }
                                                break loop21;
                                             }
                                             layout.apply();
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                             break loop18;
                                          }
                                          §§push(0);
                                          break;
                                       }
                                    }
                                    break loop22;
                                 }
                                 _loc4_ = int(§§pop());
                                 if(_loc12_)
                                 {
                                    §§goto(addr04c9);
                                 }
                                 §§goto(addr058f);
                              }
                              §]! §.§>1§();
                              §'!X§(_loc1_.§]>§);
                              addr058f:
                              §§push(_loc1_.§<7§);
                              §§push(§'!X§);
                              if(!_loc11_)
                              {
                                 §§push(§§pop());
                              }
                              §§goto(addr05aa);
                           }
                           loop2:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(_loc3_);
                                 if(_loc12_)
                                 {
                                    _loc3_++;
                                    if(!_loc11_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 _loc5_ = §§pop();
                                 if(_loc12_)
                                 {
                                    §`W§[_loc5_].visible = true;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc4_);
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 break;
                                 addr04c9:
                              }
                              if(!_loc12_)
                              {
                                 break loop14;
                              }
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    addr0562:
                                    §]! §.§"!E§ = true;
                                    break loop18;
                                 }
                                 break loop13;
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc12_)
                                 {
                                    _loc3_++;
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break;
                              }
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 if(!_loc11_)
                                 {
                                    §`W§[_loc5_].visible = false;
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                 }
                                 §`W§[_loc5_].x = 0;
                                 break;
                              }
                              §§goto(addr054d);
                           }
                           §§goto(addr05aa);
                           addr0557:
                        }
                        §§push(int(_loc1_.§"2§.length));
                        if(_loc11_)
                        {
                           break loop15;
                        }
                        _loc3_ = §§pop();
                        if(_loc12_)
                        {
                           break loop14;
                        }
                        §§goto(addr0562);
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc12_)
                        {
                           break;
                        }
                        §§goto(addr0557);
                     }
                     §§goto(addr05aa);
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     break loop16;
                  }
                  addr05aa:
                  if(§§pop() < §§pop())
                  {
                     if(_loc12_)
                     {
                        break loop13;
                     }
                  }
                  break loop10;
                  addr054d:
               }
               §§push(int(§`W§.length));
               if(_loc12_)
               {
                  §§push(int(§§pop()));
               }
               break loop15;
            }
            §§push(_loc1_.§<7§);
            §§push(§'!X§);
            if(_loc12_)
            {
               §§push(§§pop());
            }
            §§pop().push(§§pop());
            break;
         }
      }
      
      public function §8!,§(param1:MouseEvent = undefined) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §'!A§.editor.save();
               if(!_loc4_)
               {
                  break;
               }
            }
            §'!A§.editor.§`9§();
            break;
         }
         var _loc2_:Main = Main.instance;
         if(_loc4_)
         {
            Timer.delay(Mouse.hide,200);
            while(true)
            {
               if(_loc4_)
               {
                  Main.instance.§[W§ = §'!A§.editor;
                  if(!_loc3_)
                  {
                     §§push(Main.instance);
                     §§push(§§findproperty(Level));
                     §§push(0);
                     §§push(§§findproperty(§[!5§));
                     §§push(§'!A§.editor.§?!_§.§][§());
                     if(_loc4_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§,Z§(new §§pop().Level(§§pop(),new §§pop().§[!5§(§§pop()),§,a§.PLAYTEST,{"endTiles":true}),true);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
               §7o§.instance.§+D§(false);
               break;
            }
         }
      }
      
      public function §>H§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §11§;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§11§> = §`W§;
         while(true)
         {
            if(!_loc4_)
            {
               while(_loc1_ < int(_loc2_.length))
               {
                  _loc3_ = _loc2_[_loc1_];
                  if(!_loc4_)
                  {
                     _loc1_++;
                     if(_loc5_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc5_)
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
                        §§pop().§?'§(§§pop());
                     }
                  }
               }
               if(!_loc5_)
               {
                  break;
               }
               if(!§%!?§.visible)
               {
                  break;
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §%!?§.§>H§();
            break;
         }
      }
      
      public function §'!X§(param1:§>f§) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null as § 7§;
         var _loc4_:* = null as § 7§;
         var _loc5_:* = null as §&d§;
         §§push(int(§'!A§.editor.§?!_§.§,!_§.§"2§.indexOf(param1,0)));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc6_)
            {
               if(_loc2_ < 0)
               {
                  §!!4§.visible = false;
                  break;
               }
               if(!_loc6_)
               {
                  break;
               }
            }
            _loc3_ = new §?y§(§!!4§);
            _loc4_ = new §?y§(§`W§[_loc2_]);
            _loc5_ = layout;
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc7_)
                  {
                     if(_loc5_ != null)
                     {
                        §§push(_loc5_);
                        break;
                     }
                     if(_loc7_)
                     {
                        break loop1;
                     }
                  }
                  §§push(§&d§.§1$§());
                  break;
               }
               §§pop().add(_loc3_,new §4$§(true,0.5),_loc4_);
               break;
            }
            _loc3_ = new §?y§(§!!4§);
            _loc4_ = new §?y§(§`W§[_loc2_]);
            _loc5_ = layout;
            while(true)
            {
               if(_loc6_)
               {
                  if(_loc5_ != null)
                  {
                     §§push(_loc5_);
                     break;
                  }
                  if(_loc7_)
                  {
                     break loop0;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc3_,new §4$§(false,0.5),_loc4_);
            if(_loc6_)
            {
               §!!4§.visible = true;
            }
            break;
         }
      }
      
      public function §"c§(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc6_:* = null as §11§;
         var _loc3_:§>3§ = §'!A§.editor.§?!_§.§,!_§;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§11§> = §`W§;
         while(true)
         {
            if(_loc7_)
            {
               while(_loc4_ < int(_loc5_.length))
               {
                  _loc6_ = _loc5_[_loc4_];
                  if(!_loc8_)
                  {
                     _loc4_++;
                     if(_loc7_)
                     {
                        if(_loc6_.§1!2§ != param1)
                        {
                           continue;
                        }
                        if(!_loc7_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc6_.§"c§(_loc3_);
               }
               if(_loc8_)
               {
                  break;
               }
               if(!§%!?§.visible)
               {
                  break;
               }
               if(_loc8_)
               {
                  break;
               }
            }
            §%!?§.§"c§(param1,param2);
            break;
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc1_:Number = 12;
         §§push(§§findproperty(§+"§));
         §§push(§'!A§.§"!N§);
         if(!_loc13_)
         {
            §§push(§§pop());
         }
         var _loc2_:§+"§ = new §§pop().§+"§(§§pop(),0,44,"Options");
         if(_loc12_)
         {
            §&d§.§1$§().add(new §?y§(_loc2_),new §"q§(11184810,6710886,3.6));
         }
         var _loc3_:§ 7§ = new §?y§(_loc2_);
         if(_loc12_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc3_);
               if(_loc12_)
               {
                  if(_loc1_ != null)
                  {
                     §§push(new §;!!§(_loc1_,§2u§.RIGHT));
                     break;
                  }
               }
               §§push(§^`§.§ !P§(§2u§.RIGHT));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         _loc3_ = new §?y§(_loc2_);
         while(true)
         {
            if(_loc12_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(_loc1_,§2u§.TOP));
               if(!_loc12_)
               {
                  break;
               }
            }
            addChild(_loc2_);
            break;
         }
         §§push(§§findproperty(§+"§));
         §§push(§8!,§);
         if(!_loc13_)
         {
            §§push(§§pop());
         }
         var _loc4_:§+"§ = new §§pop().§+"§(§§pop(),0,44,"Playtest");
         if(!_loc13_)
         {
            §&d§.§1$§().add(new §?y§(_loc4_),new §"q§(11184810,6710886,3.6));
         }
         _loc3_ = new §?y§(_loc4_);
         var _loc5_:§ 7§ = new §?y§(_loc2_);
         if(_loc12_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc3_);
            §§push(§§findproperty(§+X§));
            §§push(_loc1_);
            if(_loc12_)
            {
               §§push(§§pop() * 2);
            }
            §§pop().add(§§pop(),new §§pop().§+X§(§§pop(),§2u§.LEFT),_loc5_);
         }
         _loc3_ = new §?y§(_loc4_);
         loop2:
         while(true)
         {
            while(true)
            {
               if(!_loc13_)
               {
                  §&d§.§1$§().add(_loc3_,new §;!!§(_loc1_,§2u§.TOP));
                  if(_loc13_)
                  {
                     break loop2;
                  }
                  addChild(_loc4_);
                  if(_loc13_)
                  {
                     break;
                  }
                  §!1§(null,new §?y§(_loc2_),_loc1_);
                  if(_loc13_)
                  {
                     break loop2;
                  }
               }
               §]! § = new §&l§(100,100,null,null,null,false);
               if(_loc12_)
               {
                  break loop2;
               }
               break;
            }
            _loc3_ = new §?y§(§]! §);
            while(true)
            {
               if(_loc12_)
               {
                  §&d§.§1$§().add(_loc3_,new §@$§(false,0));
                  if(_loc13_)
                  {
                     break;
                  }
               }
               §]! §.§9d§ = 0;
               if(_loc12_)
               {
                  break;
               }
               §§goto(addr026c);
            }
            §]! §.§6>§ = true;
            addr026c:
            §§push(§6!"§);
            if(!_loc13_)
            {
               §§push(§§pop());
               if(_loc12_)
               {
                  §§push(§§pop());
               }
            }
            var _loc6_:* = §§pop();
            if(!_loc13_)
            {
               layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc6_)));
               while(true)
               {
                  if(_loc12_)
                  {
                     _loc6_();
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  addChild(§]! §);
                  break;
               }
            }
            var _loc7_:Shape = new Shape();
            while(true)
            {
               if(_loc12_)
               {
                  §<!T§.fillRect(_loc7_,§^F§.SOLID(3355443));
                  if(!_loc12_)
                  {
                     break;
                  }
               }
               addChildAt(_loc7_,0);
               if(!_loc13_)
               {
                  break;
               }
               §§goto(addr0318);
            }
            §!!4§ = new Shape();
            addr0318:
            var _loc8_:§<!T§ = new §<!T§(null,3);
            if(_loc12_)
            {
               _loc8_.§=M§ = 16777215;
               if(!_loc13_)
               {
                  _loc8_.§4#§ = 2;
               }
            }
            var _loc9_:Rectangle = new Rectangle();
            _loc3_ = new § 6§(_loc9_);
            if(_loc12_)
            {
               §&d§.§1$§().add(_loc3_,new §`!W§(true,62));
            }
            _loc3_ = new § 6§(_loc9_);
            while(true)
            {
               while(true)
               {
                  if(_loc12_)
                  {
                     §&d§.§1$§().add(_loc3_,new §`!W§(false,62));
                     if(!_loc12_)
                     {
                        break;
                     }
                     layout.add(new §?y§(§!!4§),_loc8_,new § 6§(_loc9_));
                     if(_loc13_)
                     {
                        continue loop9;
                     }
                  }
                  §]! §.addChildAt(§!!4§,0);
                  if(_loc12_)
                  {
                     break;
                  }
                  continue loop9;
               }
               §%!?§ = new §8s§(§'!A§);
               if(_loc12_)
               {
                  addChild(§%!?§);
               }
               continue loop9;
            }
            _loc3_ = new §?y§(§%!?§);
            _loc5_ = new §?y§(§]! §);
            var _loc10_:§&d§ = §%!?§.layout;
            loop9:
            while(true)
            {
               while(true)
               {
                  if(_loc12_)
                  {
                     if(_loc10_ != null)
                     {
                        §§push(_loc10_);
                        break;
                     }
                     if(_loc13_)
                     {
                        break loop9;
                     }
                  }
                  §§push(§&d§.§1$§());
                  break;
               }
               §§pop().add(_loc3_,new §+X§(0,§2u§.BOTTOM),_loc5_);
               if(!_loc13_)
               {
                  §§push(§§findproperty(§ !@§));
                  §§push(§§findproperty(§11§));
                  §§push(§%!?§.§,!3§);
                  if(!_loc13_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§ !@§ = new §§pop().§11§(§§pop());
                  if(!_loc12_)
                  {
                     break;
                  }
                  § !@§.§-!Q§("Plus.png");
                  if(_loc13_)
                  {
                     break;
                  }
               }
               §]! §.addChild(§ !@§);
               break;
            }
            var _loc11_:Vector.<§11§> = new Vector.<§11§>(0,false);
            if(_loc12_)
            {
               §`W§ = _loc11_;
               if(!_loc13_)
               {
                  §=!;§();
               }
            }
            return;
         }
         §"!9§.§#m§(new §?y§(§]! §),new §?y§(_loc4_),_loc1_);
         break loop3;
      }
   }
}

