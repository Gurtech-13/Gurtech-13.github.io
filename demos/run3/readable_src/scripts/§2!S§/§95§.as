package §2!S§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §!!X§.§!_§;
   import §!]§.§4N§;
   import §%!Q§.§ !>§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§8!8§;
   import §-v§.§@5§;
   import layout3d.§>N§;
   import §3!7§.§9y§;
   import scenes.Cutscenes;
   import scenes.LeaveItHere;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import game.§^!U§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§38§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§[!<§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import nme3D.model.§'h§;
   
   public class §95§ extends §28§
   {
      
      public var §]9§:Point;
      
      public var §`![§:Shape;
      
      public var layout:§&d§;
      
      public var §'!&§:§@5§;
      
      public function §95§(param1:Function)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            §§push(this);
            §§push(param1);
            §§push("map/MapIconFlat.png");
            §§push(§2Q§);
            if(_loc6_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop(),§§pop(),§§pop());
            if(_loc6_)
            {
               layout = §&d§.§1$§();
            }
         }
         var _loc2_:Rectangle = new Rectangle();
         var _loc3_:§ 7§ = new § 6§(_loc2_);
         var _loc4_:§ 7§ = new §?y§(§6!B§);
         if(_loc6_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(true,2),_loc4_);
         }
         _loc3_ = new § 6§(_loc2_);
         _loc4_ = new §?y§(§6!B§);
         if(_loc6_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(false,2),_loc4_);
         }
         _loc3_ = new § 6§(_loc2_);
         if(_loc6_)
         {
            §&d§.§1$§().add(_loc3_,new §;!!§(1,§2u§.LEFT));
         }
         _loc3_ = new § 6§(_loc2_);
         while(true)
         {
            if(!_loc7_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(1,§2u§.TOP));
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§'!&§));
            §§push(§§findproperty(§@5§));
            §§push(§6!B§.bitmapData.width / 2);
            if(!_loc7_)
            {
               §§push(§§pop() * 0.8);
            }
            §§pop().§'!&§ = new §§pop().§@5§(§§pop(),_loc2_);
            if(_loc6_)
            {
               §]9§ = new Point(0,0);
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr0183);
            }
            break;
         }
         §`![§ = new Shape();
         addr0183:
         while(true)
         {
            §§push(§7!'§);
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
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc5_)));
         }
      }
      
      public function §2Q§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §[!<§.§@!A§().§4X§(§4N§.§@!A§());
         if(_loc2_)
         {
            Main.instance.§,Z§(null);
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               super.reset();
               if(_loc4_)
               {
                  break;
               }
            }
            if(§'!&§ == null)
            {
               break;
            }
            var _loc1_:* = null;
            var _loc2_:Level = Main.instance.tunnel;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc3_)
                  {
                     if(_loc2_ == null)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                  }
                  _loc1_ = _loc2_.extraParams.customDate;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§push(false);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(_loc1_ != null)
                           {
                              break;
                           }
                           §§pop();
                           if(_loc4_)
                           {
                              break loop3;
                           }
                        }
                        §§push(false);
                        if(_loc2_.characters != null)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              break loop3;
                           }
                           addr00ac:
                           §§push(_loc2_.§?!I§.§99§(_loc2_.characters[0].§73§.§[9§));
                           if(_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           break loop2;
                        }
                        §§goto(addr00a7);
                     }
                     if(!§§pop())
                     {
                        break loop2;
                     }
                     §§goto(addr00ac);
                  }
                  addr00a7:
                  §§push(int(_loc2_.characters.length) > 0);
                  break loop4;
               }
               §'!&§.§1!+§(_loc1_);
               if(!_loc4_)
               {
                  §7!'§();
               }
               break;
            }
            return;
         }
      }
      
      public function §7!'§() : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:* = null as § !>§;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = null as Point;
         var _loc8_:* = null as Point;
         var _loc9_:* = null as Point;
         var _loc10_:* = null as §38§;
         var _loc1_:Level = Main.instance.tunnel;
         loop0:
         while(true)
         {
            if(!_loc12_)
            {
               loop1:
               while(true)
               {
                  §§push(true);
                  if(_loc11_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(_loc11_)
                           {
                              while(true)
                              {
                                 §§push(true);
                                 if(_loc11_)
                                 {
                                    if(_loc1_ == null)
                                    {
                                       break;
                                    }
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    if(_loc12_)
                                    {
                                       break loop2;
                                    }
                                    §§push(_loc1_.characters == null);
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                              if(§§pop())
                              {
                                 break loop2;
                              }
                              if(_loc12_)
                              {
                                 break loop2;
                              }
                              §§pop();
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(int(_loc1_.characters.length) == 0);
                              if(!_loc11_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop2;
                        }
                        §§pop();
                        if(!_loc11_)
                        {
                           break loop0;
                        }
                        §§push(_loc1_.§?!I§ is § !>§);
                        if(!_loc11_)
                        {
                           break loop1;
                        }
                        §§goto(addr00ca);
                     }
                     if(§§pop())
                     {
                        break;
                     }
                     if(!_loc12_)
                     {
                        break loop3;
                     }
                     addr00ca:
                     §§push(!§§pop());
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               if(§§pop())
               {
                  if(_loc12_)
                  {
                     break;
                  }
                  §`![§.visible = false;
                  if(_loc11_)
                  {
                     break;
                  }
               }
               else
               {
                  §`![§.visible = true;
               }
            }
            _loc2_ = _loc1_.§?!I§;
            while(true)
            {
               loop6:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc11_)
                           {
                              §§push(§'!&§.§5z§);
                              if(!_loc11_)
                              {
                                 break;
                              }
                              §§push(layout.scale.x);
                              if(!_loc11_)
                              {
                                 break loop10;
                              }
                              _loc3_ = §§pop() - §§pop();
                              if(_loc11_)
                              {
                                 §§push(§'!&§.§>8§);
                                 §§push(layout.scale.y);
                                 if(!_loc11_)
                                 {
                                    break loop9;
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc12_)
                                 {
                                    break loop6;
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc12_)
                                 {
                                    continue loop7;
                                 }
                              }
                           }
                           §§push(§!_§.§2<§);
                           break;
                        }
                        _loc5_ = §§pop();
                        if(_loc11_)
                        {
                           §§push(_loc1_.characters[0].§73§.§#5§.x - _loc5_);
                           if(_loc11_)
                           {
                              §§push(§!_§.§,K§);
                              if(!_loc12_)
                              {
                                 break;
                              }
                              break loop9;
                           }
                           break loop6;
                        }
                        continue loop7;
                     }
                     §§push(§§pop() - _loc5_);
                     break;
                  }
                  §§push(§§pop() / §§pop());
                  break;
               }
               _loc6_ = §§pop();
               continue loop7;
            }
            _loc7_ = §'!&§.§9i§;
            _loc8_ = §'!&§.§#H§;
            _loc9_ = §]9§;
            loop7:
            while(true)
            {
               while(true)
               {
                  if(_loc11_)
                  {
                     if(_loc9_ == null)
                     {
                        if(_loc12_)
                        {
                           break;
                        }
                        _loc9_ = new Point(0,0);
                     }
                     _loc9_.x = _loc7_.x + _loc6_ * (_loc8_.x - _loc7_.x);
                     if(!_loc11_)
                     {
                        break loop7;
                     }
                     _loc9_.y = _loc7_.y + _loc6_ * (_loc8_.y - _loc7_.y);
                     if(_loc12_)
                     {
                        break loop7;
                     }
                  }
                  §`![§.graphics.clear();
                  if(!_loc12_)
                  {
                     break;
                  }
                  break loop7;
               }
               §`![§.graphics.beginFill(0);
               break;
            }
            _loc10_ = layout.scale;
            if(!_loc12_)
            {
               §`![§.graphics.drawCircle(_loc3_ + §]9§.x,_loc4_ + §]9§.y,(_loc10_.x + _loc10_.y) / 2 * 2);
            }
            break;
         }
      }
      
      public function §4^§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            addChild(§'!&§);
            if(_loc2_)
            {
               addChild(§`![§);
            }
         }
      }
   }
}

