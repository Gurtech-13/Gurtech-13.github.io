package §1^§
{
   import §1=§.§ <§;
   import flash.Boot;
   import flash.errors.IllegalOperationError;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§1!1§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   
   public class Transform
   {
      
      public static var init__:Boolean;
      
      public static var §@,§:§1!1§;
      
      public var §;d§:Boolean;
      
      public var §"!V§:Matrix3D;
      
      public var §,w§:Vector.<Function>;
      
      public var §2h§:Vector.<Function>;
      
      public var §7!U§:§"B§;
      
      public var §^q§:Point3D;
      
      public var scale:Point3D;
      
      public var rotation:§"B§;
      
      public var position:Point3D;
      
      public var §=0§:Transform;
      
      public var §3!$§:Boolean;
      
      public var §^![§:Point3D;
      
      public var §,t§:§"B§;
      
      public var §%!7§:Point3D;
      
      public function Transform(param1:Object = undefined, param2:Object = undefined)
      {
         var _loc3_:* = null as Vector.<Function>;
         position = new Point3D(0,0,0);
         rotation = new §"B§();
         §%!7§ = new Point3D(0,0,0);
         §,t§ = new §"B§();
         §3!$§ = true;
         §;d§ = true;
         if(param1 != null)
         {
            _loc3_ = new Vector.<Function>(0,false);
            §,w§ = _loc3_;
            §,w§.push(param1);
         }
         if(param2 != null)
         {
            _loc3_ = new Vector.<Function>(0,false);
            §2h§ = _loc3_;
            §2h§.push(param2);
         }
      }
      
      public function §!4§() : void
      {
         var _loc1_:§"B§ = §7!U§;
         var _loc2_:Number = _loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y + _loc1_.z * _loc1_.z + _loc1_.w * _loc1_.w;
         var _loc3_:Number = _loc2_ - 1;
         if((_loc3_ >= 0 ? _loc3_ : -_loc3_) >= 1e-10)
         {
            if(_loc2_ == 0)
            {
               _loc1_.x = 0;
               _loc1_.y = 0;
               _loc1_.z = 0;
               _loc1_.w = 1;
            }
            else
            {
               _loc2_ = 1 / Number(Math.sqrt(_loc2_));
               _loc1_.x *= _loc2_;
               _loc1_.y *= _loc2_;
               _loc1_.z *= _loc2_;
               _loc1_.w *= _loc2_;
            }
         }
         §"I§(§7!U§);
      }
      
      public function §&!?§(param1:Number, param2:§"B§) : GenericActuator
      {
         var _loc3_:§"B§ = §7!U§;
         var _loc4_:§"B§ = rotation;
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.z = _loc4_.z;
         _loc3_.w = _loc4_.w;
         var _loc5_:§ <§ = Actuate.tween(§7!U§,param1,{
            "x":param2.x,
            "y":param2.y,
            "z":param2.z,
            "w":param2.w
         },true,§ <§);
         _loc5_.sendChange = true;
         _loc5_.§<f§ = §!4§;
         return _loc5_;
      }
      
      public function §+E§() : void
      {
         if(§^q§.x != position.x || §^q§.y != position.y || §^q§.z != position.z)
         {
            §"w§(§^q§);
         }
      }
      
      public function §7#§(param1:Number, param2:Number, param3:Number, param4:Number) : GenericActuator
      {
         var _loc5_:Point3D = §^q§;
         var _loc6_:Point3D = position;
         _loc5_.x = _loc6_.x;
         _loc5_.y = _loc6_.y;
         _loc5_.z = _loc6_.z;
         var _loc7_:§ <§ = Actuate.tween(§^q§,param1,{
            "x":param2,
            "y":param3,
            "z":param4
         },true,§ <§);
         _loc7_.sendChange = true;
         _loc7_.§<f§ = §+E§;
         return _loc7_;
      }
      
      public function translate(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null as Vector.<Function>;
         var _loc6_:* = null;
         if(§2h§ != null)
         {
            if(§2h§ != null)
            {
               _loc4_ = 0;
               _loc5_ = §2h§;
               while(_loc4_ < int(_loc5_.length))
               {
                  _loc6_ = _loc5_[_loc4_];
                  _loc4_++;
                  _loc6_(param1,param2,param3);
               }
            }
         }
         _temp_1.x += param1;
         _temp_2.y += param2;
         _temp_3.z += param3;
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc4_ = 0;
            _loc5_ = §,w§;
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               _loc4_++;
               _loc6_(true,false,false);
            }
         }
      }
      
      public function §'!=§(param1:Object = undefined, param2:Object = undefined) : void
      {
         if(param1 == null)
         {
            param1 = false;
         }
         if(param2 == null)
         {
            param2 = true;
         }
         Actuate.stop(§7!U§,null,param1,param2);
      }
      
      public function §`F§(param1:Object = undefined, param2:Object = undefined) : void
      {
         if(param1 == null)
         {
            param1 = false;
         }
         if(param2 == null)
         {
            param2 = true;
         }
         Actuate.stop(§^q§,null,param1,param2);
      }
      
      public function §3;§() : void
      {
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         _loc1_ = §%!7§;
         _loc2_ = position;
         _loc1_.x = _loc2_.x;
         _loc1_.y = _loc2_.y;
         _loc1_.z = _loc2_.z;
         var _loc3_:§"B§ = §,t§;
         var _loc4_:§"B§ = rotation;
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.z = _loc4_.z;
         _loc3_.w = _loc4_.w;
         if(scale != null)
         {
            if(§^![§ == null)
            {
               _loc1_ = scale;
               §^![§ = new Point3D(_loc1_.x,_loc1_.y,_loc1_.z);
            }
            else
            {
               _loc1_ = §^![§;
               _loc2_ = scale;
               _loc1_.x = _loc2_.x;
               _loc1_.y = _loc2_.y;
               _loc1_.z = _loc2_.z;
            }
         }
         else if(§^![§ != null)
         {
            §^![§ = null;
         }
      }
      
      public function §5!,§(param1:Transform) : Transform
      {
         var _loc2_:Transform = param1;
         while(_loc2_ != null)
         {
            if(_loc2_ == this)
            {
               Boot.lastError = new Error();
               throw new IllegalOperationError("A transform cannot be its own parent.");
            }
            _loc2_ = _loc2_.§=0§;
         }
         if(§=0§ != null)
         {
            §=0§.removeChild(this);
         }
         §=0§ = param1;
         if(§=0§ != null)
         {
            §=0§.addChild(this);
         }
         §;d§ = true;
         return §=0§;
      }
      
      public function §;!2§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null as Vector.<Function>;
         var _loc6_:* = null;
         if(scale == null)
         {
            scale = new Point3D(param1,param2,param3);
         }
         else
         {
            scale.x = param1;
            scale.y = param2;
            scale.z = param3;
         }
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc4_ = 0;
            _loc5_ = §,w§;
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               _loc4_++;
               _loc6_(false,false,true);
            }
         }
      }
      
      public function §"I§(param1:§"B§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null as Vector.<Function>;
         var _loc5_:* = null;
         var _loc2_:§"B§ = rotation;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.z = param1.z;
         _loc2_.w = param1.w;
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc3_ = 0;
            _loc4_ = §,w§;
            while(_loc3_ < int(_loc4_.length))
            {
               _loc5_ = _loc4_[_loc3_];
               _loc3_++;
               _loc5_(false,true,false);
            }
         }
      }
      
      public function §6!&§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:* = null as Vector.<Function>;
         var _loc9_:* = null;
         if(§2h§ != null)
         {
            _loc4_ = param1 - position.x;
            _loc5_ = param2 - position.y;
            _loc6_ = param3 - position.z;
            if(§2h§ != null)
            {
               _loc7_ = 0;
               _loc8_ = §2h§;
               while(_loc7_ < int(_loc8_.length))
               {
                  _loc9_ = _loc8_[_loc7_];
                  _loc7_++;
                  _loc9_(_loc4_,_loc5_,_loc6_);
               }
            }
         }
         position.x = param1;
         position.y = param2;
         position.z = param3;
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc7_ = 0;
            _loc8_ = §,w§;
            while(_loc7_ < int(_loc8_.length))
            {
               _loc9_ = _loc8_[_loc7_];
               _loc7_++;
               _loc9_(true,false,false);
            }
         }
      }
      
      public function §"w§(param1:Point3D) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:* = null as Vector.<Function>;
         var _loc7_:* = null;
         if(§2h§ != null)
         {
            _loc2_ = param1.x - position.x;
            _loc3_ = param1.y - position.y;
            _loc4_ = param1.z - position.z;
            if(§2h§ != null)
            {
               _loc5_ = 0;
               _loc6_ = §2h§;
               while(_loc5_ < int(_loc6_.length))
               {
                  _loc7_ = _loc6_[_loc5_];
                  _loc5_++;
                  _loc7_(_loc2_,_loc3_,_loc4_);
               }
            }
         }
         var _loc8_:Point3D = position;
         _loc8_.x = param1.x;
         _loc8_.y = param1.y;
         _loc8_.z = param1.z;
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc5_ = 0;
            _loc6_ = §,w§;
            while(_loc5_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc5_];
               _loc5_++;
               _loc7_(true,false,false);
            }
         }
      }
      
      public function §1!R§(param1:Transform) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:* = null as Vector.<Function>;
         var _loc7_:* = null;
         var _loc8_:* = null as Point3D;
         var _loc9_:* = null as Point3D;
         if(§2h§ != null)
         {
            _loc2_ = param1.position.x - position.x;
            _loc3_ = param1.position.y - position.y;
            _loc4_ = param1.position.z - position.z;
            if(§2h§ != null)
            {
               _loc5_ = 0;
               _loc6_ = §2h§;
               while(_loc5_ < int(_loc6_.length))
               {
                  _loc7_ = _loc6_[_loc5_];
                  _loc5_++;
                  _loc7_(_loc2_,_loc3_,_loc4_);
               }
            }
         }
         _loc8_ = position;
         _loc9_ = param1.position;
         _loc8_.x = _loc9_.x;
         _loc8_.y = _loc9_.y;
         _loc8_.z = _loc9_.z;
         var _loc10_:§"B§ = rotation;
         var _loc11_:§"B§ = param1.rotation;
         _loc10_.x = _loc11_.x;
         _loc10_.y = _loc11_.y;
         _loc10_.z = _loc11_.z;
         _loc10_.w = _loc11_.w;
         if(param1.scale != null)
         {
            if(scale == null)
            {
               _loc8_ = param1.scale;
               scale = new Point3D(_loc8_.x,_loc8_.y,_loc8_.z);
            }
            else
            {
               _loc8_ = scale;
               _loc9_ = param1.scale;
               _loc8_.x = _loc9_.x;
               _loc8_.y = _loc9_.y;
               _loc8_.z = _loc9_.z;
            }
         }
         else
         {
            scale = null;
         }
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc5_ = 0;
            _loc6_ = §,w§;
            while(_loc5_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc5_];
               _loc5_++;
               _loc7_(true,true,true);
            }
         }
      }
      
      public function rotate(param1:§"B§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null as Vector.<Function>;
         var _loc4_:* = null;
         §4!R§.§9!L§(rotation,param1,rotation);
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc2_ = 0;
            _loc3_ = §,w§;
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               _loc2_++;
               _loc4_(false,true,false);
            }
         }
      }
      
      public function reset() : void
      {
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         var _loc5_:int = 0;
         var _loc6_:* = null as Vector.<Function>;
         var _loc7_:* = null;
         _loc1_ = position;
         _loc2_ = §%!7§;
         _loc1_.x = _loc2_.x;
         _loc1_.y = _loc2_.y;
         _loc1_.z = _loc2_.z;
         var _loc3_:§"B§ = rotation;
         var _loc4_:§"B§ = §,t§;
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.z = _loc4_.z;
         _loc3_.w = _loc4_.w;
         if(§^![§ != null)
         {
            if(scale == null)
            {
               _loc1_ = §^![§;
               scale = new Point3D(_loc1_.x,_loc1_.y,_loc1_.z);
            }
            else
            {
               _loc1_ = scale;
               _loc2_ = §^![§;
               _loc1_.x = _loc2_.x;
               _loc1_.y = _loc2_.y;
               _loc1_.z = _loc2_.z;
            }
         }
         else if(scale != null)
         {
            scale = null;
         }
         §3!$§ = true;
         §;d§ = true;
         if(§,w§ != null)
         {
            _loc5_ = 0;
            _loc6_ = §,w§;
            while(_loc5_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc5_];
               _loc5_++;
               _loc7_(true,true,true);
            }
         }
      }
      
      public function §[!E§(param1:Function) : void
      {
         var _loc2_:* = null as Vector.<Function>;
         var _loc3_:int = 0;
         var _loc4_:* = null as Vector.<Function>;
         if(§,w§ != null)
         {
            _loc2_ = §,w§;
            _loc3_ = int(_loc2_.indexOf(param1,0));
            if(_loc3_ != -1)
            {
               _loc4_ = _loc2_.splice(_loc3_,1);
            }
         }
      }
      
      public function §#>§(param1:Function) : void
      {
         var _loc2_:* = null as Vector.<Function>;
         var _loc3_:int = 0;
         var _loc4_:* = null as Vector.<Function>;
         if(§2h§ != null)
         {
            _loc2_ = §2h§;
            _loc3_ = int(_loc2_.indexOf(param1,0));
            if(_loc3_ != -1)
            {
               _loc4_ = _loc2_.splice(_loc3_,1);
            }
         }
      }
      
      public function removeChild(param1:Transform) : void
      {
         §#>§(param1.§5!7§);
         §[!E§(param1.onUpdate);
      }
      
      public function onUpdate(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null as Vector.<Function>;
         var _loc6_:* = null;
         if(§,w§ != null)
         {
            _loc4_ = 0;
            _loc5_ = §,w§;
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               _loc4_++;
               _loc6_(param1,param2,param3);
            }
         }
      }
      
      public function §5!7§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc7_:int = 0;
         var _loc8_:* = null as Vector.<Function>;
         var _loc9_:* = null;
         if(§^q§ == null)
         {
            §^q§ = new Point3D(param1,param2,param3);
         }
         else
         {
            §^q§.x = param1;
            §^q§.y = param2;
            §^q§.z = param3;
         }
         if(§=0§.scale != null)
         {
            _temp_1.x *= §=0§.scale.x;
            _temp_2.y *= §=0§.scale.y;
            _temp_3.z *= §=0§.scale.z;
         }
         §4!R§.§@!M§(§=0§.§>;§(),§^q§,§^q§);
         var _loc4_:Number = Number(§^q§.x);
         var _loc5_:Number = Number(§^q§.y);
         var _loc6_:Number = §^q§.z;
         if(§2h§ != null)
         {
            _loc7_ = 0;
            _loc8_ = §2h§;
            while(_loc7_ < int(_loc8_.length))
            {
               _loc9_ = _loc8_[_loc7_];
               _loc7_++;
               _loc9_(_loc4_,_loc5_,_loc6_);
            }
         }
      }
      
      public function §>;§() : §"B§
      {
         var _loc1_:* = null as §"B§;
         var _loc2_:* = null as §"B§;
         if(§7!U§ == null)
         {
            _loc1_ = rotation;
            _loc2_ = new §"B§();
            _loc2_.x = _loc1_.x;
            _loc2_.y = _loc1_.y;
            _loc2_.z = _loc1_.z;
            _loc2_.w = _loc1_.w;
            §7!U§ = _loc2_;
         }
         else
         {
            _loc1_ = §7!U§;
            _loc2_ = rotation;
            _loc1_.x = _loc2_.x;
            _loc1_.y = _loc2_.y;
            _loc1_.z = _loc2_.z;
            _loc1_.w = _loc2_.w;
         }
         if(§=0§ != null)
         {
            §4!R§.§9!L§(§=0§.§>;§(),§7!U§,§7!U§);
         }
         return §7!U§;
      }
      
      public function §2!§() : Point3D
      {
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         if(§^q§ == null)
         {
            _loc1_ = position;
            §^q§ = new Point3D(_loc1_.x,_loc1_.y,_loc1_.z);
         }
         else
         {
            _loc1_ = §^q§;
            _loc2_ = position;
            _loc1_.x = _loc2_.x;
            _loc1_.y = _loc2_.y;
            _loc1_.z = _loc2_.z;
         }
         if(§=0§ != null)
         {
            §=0§.§6,§().transformVector3(§^q§,§^q§);
         }
         return §^q§;
      }
      
      public function §6,§() : Matrix3D
      {
         var _loc1_:* = null as Matrix3D;
         if(§"!V§ == null)
         {
            §"!V§ = new Matrix3D();
         }
         else
         {
            if(!§;d§)
            {
               return §"!V§;
            }
            _loc1_ = §"!V§;
            _loc1_.rawData[0] = 1;
            _loc1_.rawData[1] = 0;
            _loc1_.rawData[2] = 0;
            _loc1_.rawData[3] = 0;
            _loc1_.rawData[4] = 0;
            _loc1_.rawData[5] = 1;
            _loc1_.rawData[6] = 0;
            _loc1_.rawData[7] = 0;
            _loc1_.rawData[8] = 0;
            _loc1_.rawData[9] = 0;
            _loc1_.rawData[10] = 1;
            _loc1_.rawData[11] = 0;
            _loc1_.rawData[12] = 0;
            _loc1_.rawData[13] = 0;
            _loc1_.rawData[14] = 0;
            _loc1_.rawData[15] = 1;
         }
         if(scale != null)
         {
            §"!V§.appendScale(scale.x,scale.y,scale.z);
         }
         §4!R§.§,![§(§>;§(),Transform.§@,§);
         §"!V§.§%V§(Transform.§@,§.angle * 180 / 3.141592653589793,Transform.§@,§);
         var _loc2_:Point3D = §2!§();
         §"!V§.§1H§(_loc2_.x,_loc2_.y,_loc2_.z);
         §;d§ = false;
         return §"!V§;
      }
      
      public function §4!I§() : Point3D
      {
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         if(scale == null)
         {
            return null;
         }
         if(§^q§ == null)
         {
            _loc1_ = scale;
            §^q§ = new Point3D(_loc1_.x,_loc1_.y,_loc1_.z);
         }
         else
         {
            _loc1_ = §^q§;
            _loc2_ = scale;
            _loc1_.x = _loc2_.x;
            _loc1_.y = _loc2_.y;
            _loc1_.z = _loc2_.z;
         }
         return §^q§;
      }
      
      public function §+n§() : §"B§
      {
         var _loc1_:* = null as §"B§;
         var _loc2_:* = null as §"B§;
         if(§7!U§ == null)
         {
            _loc1_ = rotation;
            _loc2_ = new §"B§();
            _loc2_.x = _loc1_.x;
            _loc2_.y = _loc1_.y;
            _loc2_.z = _loc1_.z;
            _loc2_.w = _loc1_.w;
            §7!U§ = _loc2_;
         }
         else
         {
            _loc1_ = §7!U§;
            _loc2_ = rotation;
            _loc1_.x = _loc2_.x;
            _loc1_.y = _loc2_.y;
            _loc1_.z = _loc2_.z;
            _loc1_.w = _loc2_.w;
         }
         return §7!U§;
      }
      
      public function §<!C§() : Point3D
      {
         var _loc1_:* = null as Point3D;
         var _loc2_:* = null as Point3D;
         if(§^q§ == null)
         {
            _loc1_ = position;
            §^q§ = new Point3D(_loc1_.x,_loc1_.y,_loc1_.z);
         }
         else
         {
            _loc1_ = §^q§;
            _loc2_ = position;
            _loc1_.x = _loc2_.x;
            _loc1_.y = _loc2_.y;
            _loc1_.z = _loc2_.z;
         }
         return §^q§;
      }
      
      public function §<!A§() : §"B§
      {
         if(§7!U§ == null)
         {
            §7!U§ = new §"B§();
         }
         var _loc1_:§"B§ = rotation;
         var _loc2_:§"B§ = §7!U§;
         if(_loc2_ == null)
         {
            _loc2_ = new §"B§();
         }
         _loc2_.x = -_loc1_.x;
         _loc2_.y = -_loc1_.y;
         _loc2_.z = -_loc1_.z;
         _loc2_.w = _loc1_.w;
         return §7!U§;
      }
      
      public function § !%§(param1:Function) : void
      {
         var _loc2_:* = null as Vector.<Function>;
         if(§,w§ == null)
         {
            _loc2_ = new Vector.<Function>(0,false);
            §,w§ = _loc2_;
         }
         §,w§.push(param1);
      }
      
      public function § W§(param1:Function) : void
      {
         var _loc2_:* = null as Vector.<Function>;
         if(§2h§ == null)
         {
            _loc2_ = new Vector.<Function>(0,false);
            §2h§ = _loc2_;
         }
         if(int(§2h§.indexOf(param1,0)) < 0)
         {
            §2h§.push(param1);
         }
      }
      
      public function addChild(param1:Transform) : void
      {
         § W§(param1.§5!7§);
         § !%§(param1.onUpdate);
      }
   }
}

