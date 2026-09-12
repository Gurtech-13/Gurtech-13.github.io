package §>T§
{
   import §"!M§.§!!P§;
   import §"!M§.§5r§;
   import §"!M§.§7!Y§;
   import §0!"§.§,!Z§;
   import §2X§.§>x§;
   import §2X§.PositionData3D;
   import §<!&§.§%!§;
   import §<!&§.§=2§;
   import §<!&§.§]p§;
   import §]N§.§?!H§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import haxeutils.math.geom.Point3DUtils;
   import nme3D.model.Model;
   
   public class §[C§ extends §%!§
   {
      
      public static var §-6§:Boolean;
      
      public static var §1]§:Point3D;
      
      public static var §7!U§:§"B§;
      
      public static var §[! §:Vector.<§[C§>;
      
      public static var §%!^§:Boolean = false;
      
      public var §@p§:§0!E§;
      
      public var §4!5§:§-n§;
      
      public var §=!R§:Point3D;
      
      public var §7<§:Number;
      
      public var §0w§:Number;
      
      public var §[l§:Number;
      
      public var §^=§:Number;
      
      public var §'!_§:int;
      
      public var §!!T§:Boolean;
      
      public var §@!B§:§!!P§;
      
      public var axis3:§?!H§;
      
      public var axis2:§?!H§;
      
      public var axis1:§?!H§;
      
      public var §5!J§:Number;
      
      public var §+-§:Number;
      
      public var § !&§:§^d§;
      
      public function §[C§()
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         §+-§ = 0;
         §7<§ = 0;
         §5!J§ = -1;
         §!!T§ = false;
         §4!5§ = null;
         super(null);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 4 + 1) + 1);
         }
         var _loc1_:int = §§pop();
         §'!_§ = _loc1_;
      }
      
      public static function §4r§(param1:§ !W§, param2:§0!E§) : §[C§
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §[C§;
         if(!§[C§.§%!^§)
         {
            §[C§.§%!^§ = true;
         }
         if(§[C§.§[! § == null)
         {
            §[C§.§[! § = new Vector.<§[C§>();
         }
         §§push(int(§[C§.§[! §.length));
         §§push(0);
         if(!_loc4_)
         {
            §§push(((§§pop() + 89 + 112) * 72 + 1 - 1) * 18);
         }
         if(§§pop() == §§pop())
         {
            _loc3_ = new §[C§();
         }
         else
         {
            §§push(§[C§.§[! §);
            §§push(int(§[C§.§[! §.length));
            §§push(1);
            if(!_loc4_)
            {
               §§push(-(-§§pop() - 30 + 39 - 40 + 1));
            }
            _loc3_ = §§pop()[§§pop() - §§pop()];
            §§push(§[C§.§[! §);
            §§push(int(§[C§.§[! §.length));
            §§push(1);
            if(!_loc4_)
            {
               §§push(-(§§pop() - 1 - 52) + 1 - 1);
            }
            §§push(§§pop() - §§pop());
            §§push(1);
            if(!_loc4_)
            {
               §§push(-(§§pop() - 1 - 1 + 5) - 1 + 113 - 5);
            }
            §§pop().splice(§§pop(),§§pop());
         }
         _loc3_.§]2§(param1,param2);
         return _loc3_;
      }
      
      public static function §>]§() : void
      {
         if(!§[C§.§%!^§)
         {
            §[C§.§%!^§ = true;
         }
         if(§[C§.§[! § == null)
         {
            §[C§.§[! § = new Vector.<§[C§>();
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(§ !&§ != null && §§pop() >= §§pop())
         {
            §+-§ += param1;
            if(§+-§ >= §7<§)
            {
               §5!J§ += §+-§;
               § !&§.update(this,§+-§);
               §§push(§§findproperty(§+-§));
               §§push(0);
               if(_loc2_)
               {
                  §§push(-((§§pop() - 1 + 66 - 1) * 98 + 32));
               }
               §§pop().§+-§ = §§pop();
            }
         }
      }
      
      public function §]2§(param1:§ !W§, param2:§0!E§) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = null as Point3D;
         var _loc5_:* = null as §?!H§;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as §"B§;
         var _loc8_:* = null as §"B§;
         level = param1;
         §!C§ = param1;
         § !&§ = null;
         §@p§ = param2;
         §0w§ = param2.§0w§;
         §[l§ = param2.§[l§;
         §^=§ = param2.§^=§;
         §4!5§ = param2.§4!5§;
         var _loc4_:§-n§ = §4!5§;
         switch(_loc4_.§+!=§)
         {
            case 0:
            case 1:
               if(!(§;!C§ is §7!Y§))
               {
                  §`-§(new §7!Y§(this));
               }
               if(axis3 != null)
               {
                  axis3 = null;
               }
               _loc3_ = §0!E§.§#<§;
               break;
            case 2:
            case 3:
            case 4:
               if(§4!5§ == §-n§.§'!%§)
               {
                  §`-§(new §7![§(this));
               }
               else if(!(§;!C§ is §5r§))
               {
                  §`-§(new §5r§(this));
               }
               if(axis3 == null)
               {
                  axis3 = new §?!H§();
                  _loc5_ = axis3;
                  _loc6_ = §0!E§.§8!W§;
                  _loc5_.§;[§(_loc6_.x,_loc6_.y,_loc6_.z);
                  axis3.§;!6§(transform);
               }
               _loc3_ = §0!E§.§`!!§;
               break;
            case 5:
               §`-§(null);
         }
         if(§4!5§ == §-n§.§'!%§)
         {
            if(§[!G§ == null)
            {
               §[!8§(new §]p§(this));
            }
         }
         else
         {
            §[!8§(null);
         }
         if(axis1 == null)
         {
            axis1 = new §?!H§();
            _loc5_ = axis1;
            _loc6_ = §0!E§.SIDE_1;
            _loc5_.§;[§(_loc6_.x,_loc6_.y,_loc6_.z);
            axis1.§;!6§(transform);
         }
         if(axis2 == null)
         {
            axis2 = new §?!H§();
            _loc5_ = axis2;
            _loc6_ = §0!E§.SIDE_2;
            _loc5_.§;[§(_loc6_.x,_loc6_.y,_loc6_.z);
            axis2.§;!6§(transform);
         }
         §=!R§ = null;
         §§push(§§findproperty(§'!_§));
         §§push(0);
         if(!_loc10_)
         {
            §§push((§§pop() - 1) * 60 + 1);
         }
         §§pop().§'!_§ = §§pop();
         if(§4!5§ != §-n§.§6!P§)
         {
            §9!4§(param2.§@8§[int(Number(Math.random()) * int(param2.§@8§.length))].§,!$§());
            model.§;!6§(transform);
         }
         else
         {
            §9!4§(null);
         }
         §@!B§ = param2.§@!B§;
         if(§@!B§ != null)
         {
            §@!B§.init(this);
         }
         if(param2.rotation != null)
         {
            _loc7_ = transform.§,t§;
            _loc8_ = param2.rotation;
            _loc7_.x = _loc8_.x;
            _loc7_.y = _loc8_.y;
            _loc7_.z = _loc8_.z;
            _loc7_.w = _loc8_.w;
         }
         else
         {
            _loc7_ = transform.§,t§;
            §§push(_loc7_);
            §§push(0);
            if(!_loc10_)
            {
               §§push(§§pop() - 43 - 0 + 22 - 1);
            }
            §§pop().x = §§pop();
            §§push(_loc7_);
            §§push(0);
            if(!_loc10_)
            {
               §§push(-((§§pop() - 1 - 1 - 16) * 8 + 27) + 1);
            }
            §§pop().y = §§pop();
            §§push(_loc7_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(--§§pop() + 1 + 36));
            }
            §§pop().z = §§pop();
            §§push(_loc7_);
            §§push(1);
            if(!_loc10_)
            {
               §§push(§§pop() - 90 - 38 + 1 + 1 + 1);
            }
            §§pop().w = §§pop();
         }
         §§push(transform.§%!7§);
         §§push(0);
         if(!_loc10_)
         {
            §§push(§§pop() * 12 + 1 + 1 + 1);
         }
         §§pop().x = §§pop();
         §§push(transform.§%!7§);
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() * 66 + 1 + 1 - 1 - 1 + 1);
         }
         §§pop().y = §§pop();
         §§push(transform.§%!7§);
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() - 42 - 51 + 104 + 0 - 1);
         }
         §§pop().z = §§pop();
         reset();
      }
      
      override public function reset() : void
      {
         var _temp_1:* = false;
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = _temp_1;
         super.reset();
         §§push(§§findproperty(§5!J§));
         §§push(-1);
         if(!_loc1_)
         {
            §§push(§§pop() - 1 - 1 - 28);
         }
         §§pop().§5!J§ = §§pop();
         §§push(§§findproperty(§+-§));
         §§push(0);
         if(!_loc1_)
         {
            §§push(§§pop() + 1 + 81 - 1);
         }
         §§pop().§+-§ = §§pop();
         if(§ !&§ != null)
         {
            § !&§.reset(this);
         }
      }
      
      public function §>§() : void
      {
         if(model != null)
         {
            §[C§.§[! §.push(this);
            § !&§ = null;
            model.dispose();
            §9!4§(null);
         }
      }
      
      public function §=d§(param1:PositionData3D, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = null as §"B§;
         var _loc6_:* = null as §"B§;
         var _loc3_:Point3D = param1.position;
         var _loc4_:Point3D = transform.§%!7§;
         if(_loc4_ == null)
         {
            §§push(§§findproperty(Point3D));
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() - 1 - 1) + 1 - 61);
            }
            §§push(0);
            §§push(0);
            if(!_loc8_)
            {
               §§push(-§§pop() + 30 + 105 - 111);
            }
            _loc4_ = new §§pop().Point3D(§§pop(),§§pop(),§§pop());
         }
         _loc4_.x = _loc3_.x * param2;
         _loc4_.y = _loc3_.y * param2;
         _loc4_.z = _loc3_.z * param2;
         if(§@p§.rotation != null)
         {
            _loc5_ = transform.§,t§;
            _loc6_ = §@p§.rotation;
            _loc5_.x = _loc6_.x;
            _loc5_.y = _loc6_.y;
            _loc5_.z = _loc6_.z;
            _loc5_.w = _loc6_.w;
         }
         else
         {
            _loc5_ = transform.§,t§;
            §§push(_loc5_);
            §§push(0);
            if(!_loc8_)
            {
               §§push(--§§pop() - 1);
            }
            §§pop().x = §§pop();
            §§push(_loc5_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(--§§pop() + 1 + 1));
            }
            §§pop().y = §§pop();
            §§push(_loc5_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(-§§pop() * 8) * 37 + 1 - 1);
            }
            §§pop().z = §§pop();
            §§push(_loc5_);
            §§push(1);
            if(_loc7_)
            {
               §§push(§§pop() + 77 - 69 - 1);
            }
            §§pop().w = §§pop();
         }
         if(param1.rotation != null)
         {
            §4!R§.§9!L§(param1.rotation,transform.§,t§,transform.§,t§);
         }
      }
      
      public function §,W§(param1:PositionData3D, param2:TunnelSection) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = null as Point3D;
         var _loc7_:* = null as Point3D;
         var _loc8_:* = null as Point3D;
         §=d§(param1,param2.tileWidth);
         var _loc3_:§ !W§ = param2.tunnel;
         if(§4!5§ == §-n§.§?!W§)
         {
            _loc4_ = §@p§.§4!W§;
            if(_loc3_.backwards)
            {
               _loc4_ -= 3.141592653589793;
               if(_loc4_ <= -3.141592653589793)
               {
                  _loc4_ += 6.283185307179586;
               }
            }
            _loc5_ = _loc4_;
            §§push(_loc5_);
            §§push(0);
            if(!_loc10_)
            {
               §§push(-(-(§§pop() + 1) + 103) + 1 + 37);
            }
            if((§§pop() >= §§pop() ? _loc5_ : -_loc5_) >= 1e-10)
            {
               _loc6_ = §[C§.§1]§;
               §§push(_loc6_);
               §§push(0);
               if(_loc9_)
               {
                  §§push((§§pop() + 119 + 1) * 96);
               }
               §§pop().x = §§pop();
               §§push(_loc6_);
               §§push(0);
               if(!_loc10_)
               {
                  §§push(-(§§pop() + 26 + 68) - 1 - 1);
               }
               §§pop().y = §§pop();
               §§push(_loc6_);
               §§push(param2.tileWidth);
               §§push(2);
               if(_loc9_)
               {
                  §§push(-(§§pop() - 1) + 91);
               }
               §§pop().z = §§pop() / §§pop();
               if(_loc3_.backwards)
               {
                  §[C§.§1]§.z = -§[C§.§1]§.z;
               }
               §§push(§4!R§);
               §§push(_loc4_);
               §§push(0);
               if(_loc9_)
               {
                  §§push(-(-(-(§§pop() + 1 + 100) - 111) + 75));
               }
               §§pop().§1!A§(§§pop(),§§pop(),0,§[C§.§7!U§);
               if(param1.rotation != null)
               {
                  §4!R§.§9!L§(param1.rotation,§[C§.§7!U§,§[C§.§7!U§);
               }
               §4!R§.§@!M§(§[C§.§7!U§,§[C§.§1]§,§[C§.§1]§);
               if(_loc3_.backwards)
               {
                  §[C§.§1]§.z = -§[C§.§1]§.z;
               }
               §§push(§§findproperty(§^V§));
               §§push(§'j§());
               §§push(param2.tileWidth);
               §§push(2);
               if(!_loc10_)
               {
                  §§push(-(-§§pop() * 55 - 1) - 1 - 1);
               }
               §§pop().§^V§(§§pop() + §§pop() / §§pop());
               _loc6_ = transform.§%!7§;
               _loc7_ = §[C§.§1]§;
               _loc8_ = transform.§%!7§;
               if(_loc8_ == null)
               {
                  §§push(§§findproperty(Point3D));
                  §§push(0);
                  if(_loc9_)
                  {
                     §§push((§§pop() + 1) * 46 - 1);
                  }
                  §§push(0);
                  §§push(0);
                  if(_loc9_)
                  {
                     §§push(-(§§pop() + 92 - 93 + 107));
                  }
                  _loc8_ = new §§pop().Point3D(§§pop(),§§pop(),§§pop());
               }
               _loc8_.x = _loc6_.x - _loc7_.x;
               _loc8_.y = _loc6_.y - _loc7_.y;
               _loc8_.z = _loc6_.z - _loc7_.z;
            }
         }
         if(_loc3_.backwards)
         {
            §^V§(param2.endZ - (§'j§() - param2.startZ));
         }
      }
      
      override public function §4h§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:* = null as Point3D;
         var _loc5_:* = null as §?!H§;
         if(§!!T§)
         {
            return;
         }
         if(§4!5§ == §-n§.§!!A§ || §4!5§ == §-n§.§'!%§)
         {
            _loc4_ = §[C§.§1]§;
            §§push(_loc4_);
            §§push(0);
            if(!_loc7_)
            {
               §§push(-(§§pop() * 58) - 1 - 1 - 115 - 24);
            }
            §§pop().x = §§pop();
            §§push(_loc4_);
            §§push(0);
            if(!_loc7_)
            {
               §§push(-(-(--(§§pop() + 56) + 92) + 27));
            }
            §§pop().y = §§pop();
            _loc4_.z = §!C§.backwards ? -§[l§ : §[l§;
            _loc5_ = axis1;
            _loc4_ = §[C§.§1]§;
            _loc5_.§7! §(_loc4_.x,_loc4_.y,_loc4_.z);
            _loc5_ = axis2;
            _loc4_ = §[C§.§1]§;
            _loc5_.§7! §(_loc4_.x,_loc4_.y,_loc4_.z);
            _loc5_ = axis3;
            _loc4_ = §[C§.§1]§;
            _loc5_.§7! §(_loc4_.x,_loc4_.y,_loc4_.z);
         }
         axis1.§-!_§(param1,param2,param3);
         axis2.§-!_§(param1,param2,param3);
         if(axis3 != null)
         {
            axis3.§-!_§(param1,param2,param3);
         }
         super.§4h§(param1,param2,param3);
      }
      
      public function §=y§(param1:TunnelSection, param2:int) : void
      {
         var _temp_1:* = false;
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = _temp_1;
         var _loc3_:* = null as §"B§;
         §§push(0);
         if(_loc17_)
         {
            §§push(§§pop() - 1 - 1 + 27 - 1);
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = null as §>x§;
         §§push(0);
         if(_loc17_)
         {
            §§push(-§§pop() - 9 - 7 - 1);
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push((-(§§pop() - 79) + 30) * 105 + 1);
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(!_loc16_)
         {
            §§push(-(-(§§pop() * 81 * 37) + 1 - 1));
         }
         var _loc8_:* = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(§§pop() + 1 - 63 - 89);
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push((§§pop() - 43 - 1) * 46 + 87);
         }
         var _loc10_:* = §§pop();
         var _loc11_:* = null as §[C§;
         var _loc12_:Boolean = false;
         var _loc13_:* = null as §"B§;
         var _loc14_:Number = NaN;
         §§push(0);
         if(!_loc16_)
         {
            §§push(§§pop() * 22 * 58 * 115);
         }
         var _loc15_:* = §§pop();
         §§push(false);
         §§push(false);
         §§push(param2);
         §§push(0);
         if(!_loc16_)
         {
            §§push(§§pop() + 1 - 47 + 20);
         }
         if(§§pop() >= §§pop())
         {
            §§pop();
            §§push(§@p§.rotation == null);
         }
         if(§§pop())
         {
            §§pop();
            §§push(§@!B§ == null || !§@!B§.§-!9§);
         }
         if(§§pop())
         {
            _loc3_ = transform.§+n§();
            §§push(0);
            if(_loc17_)
            {
               §§push((§§pop() + 1) * 98 - 1 - 1);
            }
            _loc4_ = int(§§pop());
            if(param1.layout is §>x§)
            {
               _loc5_ = param1.layout;
               §§push(_loc5_.§^X§);
               §§push(1);
               if(!_loc16_)
               {
                  §§push(-((§§pop() - 1 + 78) * 84) * 13);
               }
               if(§§pop() == §§pop())
               {
                  §§push(2);
                  if(_loc17_)
                  {
                     §§push(§§pop() - 1 - 1 - 1 + 1 - 1);
                  }
                  _loc4_ = int(§§pop());
               }
            }
            _loc6_ = int(_loc4_);
            while(true)
            {
               §§push(_loc6_);
               §§push(4);
               if(_loc17_)
               {
                  §§push(-§§pop() - 1 - 1);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               _loc7_ = _loc6_++;
               §§push(0);
               if(_loc17_)
               {
                  §§push(((-§§pop() + 1) * 69 + 28) * 45);
               }
               _loc8_ = int(§§pop());
               §§push(0);
               if(!_loc16_)
               {
                  §§push((§§pop() - 5) * 82 + 1);
               }
               _loc9_ = int(§§pop());
               switch(_loc7_)
               {
                  case 0:
                     §§push(-1);
                     if(_loc17_)
                     {
                        §§push((§§pop() * 56 * 105 - 1 + 1) * 60 - 76 - 66);
                     }
                     _loc8_ = int(§§pop());
                     break;
                  case 1:
                     §§push(1);
                     if(_loc17_)
                     {
                        §§push(-(§§pop() + 20 - 1) - 72);
                     }
                     _loc8_ = int(§§pop());
                     break;
                  case 2:
                     §§push(1);
                     if(_loc17_)
                     {
                        §§push(-((§§pop() * 6 + 25) * 26));
                     }
                     _loc9_ = int(§§pop());
                     break;
                  default:
                     §§push(-1);
                     if(!_loc16_)
                     {
                        §§push((-(§§pop() * 37 * 14 * 117 + 1) + 1) * 61);
                     }
                     _loc9_ = int(§§pop());
               }
               §§push(param1.layout);
               §§push(param2);
               §§push(_loc8_);
               §§push(0);
               if(!_loc16_)
               {
                  §§push(§§pop() + 1 - 1 - 18);
               }
               _loc10_ = int(§§pop().§6!,§(§§pop(),§§pop(),§§pop(),_loc9_));
               §§push(§ L§);
               §§push(948729);
               if(_loc17_)
               {
                  §§push((§§pop() - 41) * 4 + 1 - 1);
               }
               §§pop().low = §§pop();
               §§push(false);
               §§push(_loc10_);
               §§push(0);
               if(_loc17_)
               {
                  §§push(-(§§pop() + 12 + 1 - 68));
               }
               if(§§pop() >= §§pop())
               {
                  §§pop();
                  §§push(_loc10_ < int(param1.terrain.length));
               }
               _loc11_ = §§pop() ? param1.terrain[_loc10_] : null;
               if(!(_loc11_ == null || _loc11_.§@!B§ != null && _loc11_.§@!B§.§-!9§ || _loc11_.§@p§.rotation != null || _loc11_.§4!5§ == §-n§.§?!W§ != (§4!5§ == §-n§.§?!W§)))
               {
                  _loc13_ = _loc11_.transform.§+n§();
                  _loc14_ = _loc3_.x * _loc13_.x + _loc3_.y * _loc13_.y + _loc3_.z * _loc13_.z + _loc3_.w * _loc13_.w;
                  §§push(_loc14_);
                  §§push(0);
                  if(_loc17_)
                  {
                     §§push(-(-((§§pop() - 36 + 1) * 89) - 100));
                  }
                  _loc12_ = (§§pop() >= §§pop() ? _loc14_ : -_loc14_) <= 0.9999999999;
               }
               else
               {
                  _loc12_ = true;
               }
               if(!_loc12_)
               {
                  if(param1.tunnel.backwards)
                  {
                     _loc9_ = int(-_loc9_);
                  }
                  if(§4!5§ == §-n§.§?!W§)
                  {
                     _loc15_ = §1!9§.§`e§(_loc8_,_loc9_);
                     §'!_§ |= _loc15_;
                     _loc15_ = §1!9§.§`e§(-_loc8_,-_loc9_);
                     _loc11_.§'!_§ |= _loc15_;
                  }
                  else
                  {
                     §§push(§@O§);
                     §§push(_loc8_);
                     §§push(0);
                     if(!_loc16_)
                     {
                        §§push((§§pop() * 92 + 1 + 100) * 43 + 24 + 44);
                     }
                     _loc15_ = int(§§pop().§`e§(§§pop(),§§pop(),_loc9_));
                     §'!_§ |= _loc15_;
                     §§push(§@O§);
                     §§push(-_loc8_);
                     §§push(0);
                     if(_loc17_)
                     {
                        §§push(-(-§§pop() + 31 + 1) - 45 + 24);
                     }
                     _loc15_ = int(§§pop().§`e§(§§pop(),§§pop(),-_loc9_));
                     _loc11_.§'!_§ |= _loc15_;
                  }
               }
            }
         }
      }
      
      public function §%_§() : Point3D
      {
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         if(axis3 != null)
         {
            return axis3.normal;
         }
         if(§=!R§ == null)
         {
            _loc1_ = axis2.normal;
            _loc2_ = axis1.normal;
            §=!R§ = Point3DUtils.§ !K§(_loc1_.x,_loc1_.y,_loc1_.z,_loc2_.x,_loc2_.y,_loc2_.z,null);
         }
         return §=!R§;
      }
   }
}

