package §2n§
{
   import § 0§.§!&§;
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §-!!§.§8!8§;
   import §-v§.§!!;§;
   import §-v§.§%!3§;
   import §-v§.§3!B§;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§]u§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§&!C§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.menu.§=!>§;
   import com.player03.run3.menu.Leaderboards;
   import com.player03.run3.save.§0d§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import nme3D.§1![§;
   import nme3D.Context3DUtils;
   
   public class §>!!§ extends §'!O§ implements §+<§
   {
      
      public var §9J§:§3!B§;
      
      public var §1!J§:TextField;
      
      public var §2!L§:TextField;
      
      public var §%!E§:TextField;
      
      public var §^@§:§2!R§;
      
      public var §?5§:§8!8§;
      
      public var §%!J§:TextField;
      
      public var §3Y§:§8!8§;
      
      public var §-!,§:§!!;§;
      
      public function §>!!§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               visible = false;
               if(_loc1_)
               {
                  addEventListener(Event.REMOVED,§&!%§);
               }
            }
         }
      }
      
      public function §"!O§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               if(§^@§ == null)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            param1.stopImmediatePropagation();
            if(!_loc3_)
            {
               §]u§.§@!A§().§5B§(§^@§,true);
            }
            break;
         }
      }
      
      public function §+!U§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         param1.stopImmediatePropagation();
         if(_loc3_)
         {
            §]u§.§@!A§().§5B§(§=!>§.§@!A§(),true);
         }
      }
      
      public function §-N§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopImmediatePropagation();
            if(_loc3_)
            {
               §§push(GlobalEventManager);
               §§push("focusIn");
               §§push(§5!I§);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
            }
         }
      }
      
      public function §&!%§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = null as §]u§;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               if(param1.target != this)
               {
                  §§push(false);
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc2_ = §§pop();
                  break;
               }
               if(_loc4_)
               {
                  break;
               }
            }
            _loc3_ = §]u§.§@!A§();
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc5_)
                  {
                     §§push(false);
                     if(!_loc3_.visible)
                     {
                        break;
                     }
                     §§pop();
                     if(!_loc5_)
                     {
                        break loop1;
                     }
                  }
                  §§push(int(_loc3_.blockingOverlays.indexOf(this)) >= 0);
                  break;
               }
               §§push(!§§pop());
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc5_)
                  {
                     _loc2_ = §§pop();
                     break loop0;
                  }
               }
               addr0092:
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §^@§ = null;
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(Context3DUtils.§"[§ == null)
                     {
                        break;
                     }
                  }
                  Context3DUtils.§"[§.§`!=§ = false;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§goto(addr00e3);
            }
            §]u§.§@!A§().§5!@§ = false;
            addr00e3:
            return;
         }
         §§goto(addr0092);
      }
      
      public function §@!1§(param1:Vector.<§!&§>) : Boolean
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc9_:* = null as §!&§;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc12_)
               {
                  if(§1!J§ != null)
                  {
                     break;
                  }
                  if(_loc13_)
                  {
                     break loop1;
                  }
               }
               §§push(§6!]§);
               if(_loc12_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     §^,§(null);
                     if(_loc12_)
                     {
                        break;
                     }
                     break loop1;
                  }
               }
               break;
            }
            param1[0].§0;§.§5F§ = 0;
            break;
         }
         §§push(param1);
         §§push(int(param1.length));
         if(!_loc13_)
         {
            §§push(§§pop() - 1);
         }
         var _loc2_:§!&§ = §§pop()[§§pop()];
         §§push(_loc2_.§;!1§.§&5§.z);
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§0d§ = Save.§,>§;
         §§push(Number(Save.§@!A§().get(_loc4_.§=-§,Number(_loc4_.§ -§))));
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  if(!_loc13_)
                  {
                     §§push(_loc3_);
                     if(!_loc12_)
                     {
                        break;
                     }
                     if(§§pop() <= _loc5_)
                     {
                        break loop4;
                     }
                     if(!_loc12_)
                     {
                        break loop3;
                     }
                  }
                  §§push(_loc3_);
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break;
               }
               _loc5_ = §§pop();
               if(!_loc13_)
               {
                  break loop3;
               }
               break;
            }
            §§push(int(Math.round(_loc3_ * 0.03333333333333333)));
            if(_loc12_)
            {
               §§push(int(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push([]);
            if(!_loc13_)
            {
               §§push(§§pop());
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(!_loc13_)
            {
               §§push(int(§§pop()));
            }
            var _loc8_:* = §§pop();
            if(!_loc13_)
            {
               while(_loc8_ < int(param1.length))
               {
                  _loc9_ = param1[_loc8_];
                  if(!_loc13_)
                  {
                     _loc8_++;
                     if(_loc12_)
                     {
                        _loc7_.push(_loc9_.data);
                     }
                  }
               }
            }
            §§push(_loc7_);
            if(!_loc13_)
            {
               §§push(§§pop());
            }
            var _loc10_:* = §§pop();
            while(true)
            {
               if(_loc12_)
               {
                  Leaderboards.§8M§(_loc6_,Vector.<§6O§>(_loc10_));
                  §§push(int(Math.round(_loc3_ * 0.03333333333333333)));
                  if(!_loc13_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc8_ = §§pop();
                  §1!J§.text = "" + _loc8_;
                  §2!L§.text = "You " + _loc2_.data.§=!!§;
                  if(_loc12_)
                  {
                     if(_loc3_ == _loc5_)
                     {
                        if(_loc13_)
                        {
                           break;
                        }
                        §%!E§.text = "meters. New high score!";
                     }
                     else
                     {
                        §%!E§.text = "meters. (Your best: " + int(Math.round(_loc5_ * 0.03333333333333333)) + ")";
                     }
                  }
               }
               §-!,§.§4t§(_loc2_.§;!1§.§5F§);
               if(_loc12_)
               {
                  §^@§ = new §2!R§(param1);
               }
               break;
            }
            while(true)
            {
               §§push(_loc2_.data.§@L§(_loc2_.§;!1§));
               if(_loc12_)
               {
                  §§push(§§pop());
                  if(_loc13_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            var _loc11_:* = §§pop();
            loop8:
            while(true)
            {
               while(true)
               {
                  if(_loc12_)
                  {
                     if(int(param1.length) >= int(§'O§.available.length))
                     {
                        §%!J§.text = "Wow, you spent a lot of power cells on this run. Was it worth it?";
                        break;
                     }
                     if(_loc11_ == null)
                     {
                        §%!J§.text = "";
                        break;
                     }
                     if(_loc13_)
                     {
                        break loop8;
                     }
                  }
                  §%!J§.text = _loc11_;
                  break;
               }
               §34§();
               layout.apply();
               Context3DUtils.§"[§.§`!=§ = true;
               if(!_loc13_)
               {
                  §]u§.§@!A§().§5B§(this);
                  break;
               }
               §§goto(addr02ed);
            }
            §]u§.§@!A§().§5!@§ = false;
            addr02ed:
            return _loc3_ == _loc5_;
         }
         Save.§,>§.§?F§(_loc5_);
         break loop4;
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc1_:§ 7§ = new §?y§(this);
         var _loc2_:§&d§ = §&d§.§;`§();
         if(!_loc12_)
         {
            while(true)
            {
               if(_loc2_ == null)
               {
                  if(!_loc11_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(_loc2_);
               }
               §§pop().add(_loc1_,new §30§(true,0.9));
               break;
            }
         }
         _loc1_ = new §?y§(this);
         _loc2_ = §&d§.§;`§();
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc12_)
               {
                  if(_loc2_ != null)
                  {
                     §§push(_loc2_);
                     break;
                  }
                  if(!_loc11_)
                  {
                     break loop1;
                  }
               }
               §§push(§&d§.§1$§());
               break;
            }
            §§pop().add(_loc1_,new §4$§(true,0.5));
            while(true)
            {
               if(!_loc12_)
               {
                  break loop1;
               }
               §§goto(addr00bb);
            }
            §§goto(addr00dc);
         }
         while(true)
         {
            if(_loc2_ == null)
            {
               if(!_loc11_)
               {
                  break;
               }
               §§push(§&d§.§1$§());
            }
            else
            {
               §§push(_loc2_);
            }
            §§pop().add(_loc1_,new §4$§(false,0.5));
            if(!_loc12_)
            {
               break;
            }
            var _loc3_:TextField = §1!J§;
            var _loc4_:* = null;
            loop4:
            while(true)
            {
               while(true)
               {
                  if(!_loc12_)
                  {
                     if(_loc4_ != null)
                     {
                        break;
                     }
                     if(!_loc11_)
                     {
                        break loop4;
                     }
                  }
                  _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
                  break;
               }
               §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
               if(!_loc12_)
               {
                  break;
               }
               §§goto(addr0166);
            }
            layout.add(new §?y§(§1!J§),new §4$§(true,0.35));
            addr0166:
            _loc1_ = new §?y§(§1!J§);
            if(_loc11_)
            {
               §&d§.§1$§().add(_loc1_,new §;!!§(6,§2u§.TOP));
               if(!_loc12_)
               {
                  addChild(§1!J§);
               }
            }
            var _loc5_:DisplayObject = §1!J§;
            if(!_loc12_)
            {
               §2!L§ = §&!;§.§9Q§(0,35);
            }
            _loc3_ = §2!L§;
            _loc4_ = null;
            if(!_loc12_)
            {
               while(true)
               {
                  if(_loc4_ == null)
                  {
                     if(_loc12_)
                     {
                        break;
                     }
                     _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
                  }
                  §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
                  break;
               }
            }
            _loc1_ = new §?y§(§2!L§);
            var _loc6_:§ 7§ = new §?y§(§1!J§);
            _loc2_ = null;
            loop7:
            while(true)
            {
               while(true)
               {
                  if(_loc11_)
                  {
                     if(_loc2_ != null)
                     {
                        _loc2_ = _loc2_;
                        break;
                     }
                  }
                  _loc2_ = §&d§.§1$§();
                  if(_loc11_)
                  {
                     break;
                  }
                  break loop7;
               }
               _loc2_.add(_loc1_,new §+X§(0,§2u§.LEFT),_loc6_);
               if(!_loc12_)
               {
                  _loc2_.add(_loc1_,new §4$§(false,0.5),_loc6_);
                  if(_loc11_)
                  {
                     break;
                  }
                  continue loop9;
               }
               §§goto(addr02ae);
            }
            addChild(§2!L§);
            if(_loc11_)
            {
               addr02ae:
               §%!E§ = §&!;§.§9Q§(0,35);
            }
            _loc3_ = §%!E§;
            _loc4_ = null;
            while(true)
            {
               while(true)
               {
                  if(_loc11_)
                  {
                     if(_loc4_ != null)
                     {
                        break;
                     }
                     if(!_loc11_)
                     {
                        continue loop11;
                     }
                  }
                  _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
                  break;
               }
               §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
               continue loop11;
            }
            _loc1_ = new §?y§(§%!E§);
            _loc6_ = new §?y§(§1!J§);
            _loc2_ = null;
            loop11:
            while(true)
            {
               while(true)
               {
                  if(!_loc12_)
                  {
                     if(_loc2_ != null)
                     {
                        _loc2_ = _loc2_;
                        break;
                     }
                  }
                  _loc2_ = §&d§.§1$§();
                  if(_loc11_)
                  {
                     break;
                  }
                  break loop11;
               }
               _loc2_.add(_loc1_,new §+X§(0,§2u§.RIGHT),_loc6_);
               if(!_loc12_)
               {
                  _loc2_.add(_loc1_,new §4$§(false,0.5),_loc6_);
                  if(!_loc11_)
                  {
                     break;
                  }
                  addChild(§%!E§);
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               §9J§ = new §3!B§("submit your score",44,0,false,true);
               break;
            }
            _loc1_ = new §?y§(§9J§);
            if(!_loc12_)
            {
               §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
            }
            _loc1_ = new §?y§(§9J§);
            _loc6_ = new §?y§(§1!J§);
            if(!_loc12_)
            {
               §&d§.§1$§().add(_loc1_,new §+X§(4.8,§2u§.BOTTOM),_loc6_);
               while(true)
               {
                  if(!_loc12_)
                  {
                     §9J§.§`W§.addEventListener(MouseEvent.CLICK,§-N§);
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  addChild(§9J§);
                  break;
               }
            }
            _loc5_ = §9J§;
            if(_loc11_)
            {
               §§push(§§findproperty(§3Y§));
               §§push(§§findproperty(§+"§));
               §§push(§+!U§);
               if(_loc11_)
               {
                  §§push(§§pop());
               }
               §§pop().§3Y§ = new §§pop().§+"§(§§pop(),0,44,"Your scores");
            }
            var _loc7_:§8!8§ = §3Y§;
            if(_loc11_)
            {
               §&d§.§1$§().add(new §?y§(_loc7_),new §"q§(11184810,6710886,3.6));
            }
            _loc1_ = new §?y§(§3Y§);
            if(_loc11_)
            {
               §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
            }
            _loc1_ = new §?y§(§3Y§);
            _loc6_ = new §?y§(§9J§);
            while(true)
            {
               if(!_loc12_)
               {
                  §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.TOP),_loc6_);
                  if(!_loc12_)
                  {
                     addChild(§3Y§);
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §34§();
                  if(_loc12_)
                  {
                     break;
                  }
                  §§push(§§findproperty(§?5§));
                  §§push(§§findproperty(§,C§));
                  §§push("menu/StatsButton.png");
                  §§push(§"!O§);
                  if(!_loc12_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§?5§ = new §§pop().§,C§(§§pop(),§§pop());
                  if(_loc12_)
                  {
                     break;
                  }
               }
               addChild(§?5§);
               break;
            }
            var _loc8_:§%!3§ = new §%!3§();
            _loc1_ = new §?y§(_loc8_);
            _loc6_ = new §?y§(§?5§);
            while(true)
            {
               if(_loc11_)
               {
                  §&d§.§1$§().add(_loc1_,new §@$§(false,0),_loc6_);
                  if(_loc12_)
                  {
                     break;
                  }
                  §"!9§.§]!A§(new §?y§(_loc8_));
                  if(_loc11_)
                  {
                     addChild(_loc8_);
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
               }
               §-!,§ = new §!!;§();
               if(_loc11_)
               {
                  break;
               }
               §§goto(addr0643);
            }
            layout.add(new §?y§(§-!,§),new §&!C§(true,0.5,20));
            addr0643:
            _loc1_ = new §?y§(§-!,§);
            _loc6_ = new §?y§(_loc5_);
            while(true)
            {
               if(_loc11_)
               {
                  §&d§.§1$§().add(_loc1_,new §+X§(6,§2u§.BOTTOM),_loc6_);
                  if(!_loc12_)
                  {
                     addChild(§-!,§);
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
               }
               §%!J§ = §&!;§.§9Q§(0,24,null,null,300,null,null,null,"center");
               break;
            }
            _loc3_ = §%!J§;
            _loc4_ = null;
            if(_loc11_)
            {
               while(true)
               {
                  if(_loc4_ == null)
                  {
                     if(_loc12_)
                     {
                        break;
                     }
                     _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
                  }
                  §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
                  break;
               }
            }
            _loc1_ = new §?y§(§%!J§);
            if(_loc11_)
            {
               §&d§.§1$§().add(_loc1_,new §30§(true,0.8));
            }
            _loc1_ = new §?y§(§%!J§);
            if(!_loc12_)
            {
               §&d§.§1$§().add(_loc1_,new §4$§(true,0.5));
            }
            _loc1_ = new §?y§(§%!J§);
            _loc6_ = new §?y§(§-!,§);
            while(true)
            {
               if(!_loc12_)
               {
                  §&d§.§1$§().add(_loc1_,new §+X§(4,§2u§.BOTTOM),_loc6_);
                  if(!_loc11_)
                  {
                     break;
                  }
               }
               addChild(§%!J§);
               break;
            }
            _loc5_ = §%!J§;
            var _loc9_:Shape = new Shape();
            if(_loc11_)
            {
               §!1§(null,new §?y§(_loc5_),36);
               if(_loc11_)
               {
                  layout.add(new §?y§(this),new §4$§(false,0.5),new §4o§(§&d§.§;`§().§&#§));
               }
            }
            var _loc10_:§<!T§ = new §<!T§(null,12);
            if(_loc11_)
            {
               _loc10_.fill = §^F§.SOLID(16777215);
               if(_loc11_)
               {
                  _loc10_.§=M§ = 13421772;
                  while(true)
                  {
                     if(_loc11_)
                     {
                        _loc10_.§4#§ = 6;
                        if(_loc11_)
                        {
                           layout.add(new §?y§(_loc9_),_loc10_);
                           if(_loc12_)
                           {
                              break;
                           }
                        }
                     }
                     addChildAt(_loc9_,0);
                     break;
                  }
               }
            }
            _loc1_ = new §?y§(§?5§);
            while(true)
            {
               if(_loc11_)
               {
                  §&d§.§1$§().add(_loc1_,new §;!!§(10,§2u§.RIGHT));
                  if(_loc12_)
                  {
                     break;
                  }
               }
               §&d§.§1$§().add(_loc1_,new §;!!§(10,§2u§.BOTTOM));
               break;
            }
            _loc1_ = new §?y§(_loc8_);
            if(!_loc12_)
            {
               §&d§.§1$§().add(_loc1_,new §;!!§(10,§2u§.LEFT));
               if(!_loc12_)
               {
                  §&d§.§1$§().add(_loc1_,new §;!!§(10,§2u§.BOTTOM));
               }
            }
            return;
         }
         addr00dc:
         §1!J§ = §&!;§.§9Q§(0,97,null,"center");
         continue loop4;
      }
      
      public function §34§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§9'§.§@!A§().§?!;§.isGuest());
         if(_loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §9J§.visible = _loc1_;
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(§3Y§);
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().visible = §§pop();
            break;
         }
      }
      
      public function §5!I§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §§push(GlobalEventManager);
               §§push("focusIn");
               §§push(§5!I§);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().removeEventListener(§§pop(),§§pop());
               if(!_loc1_)
               {
                  break;
               }
            }
            §34§();
            break;
         }
      }
   }
}

