package format.svg
{
   import §!!"§.§,X§;
   import §6!E§.§5H§;
   import flash.Boot;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.Log;
   import haxe.ds.StringMap;
   
   public class SVGData extends §[!I§
   {
      
      public static var init__:Boolean;
      
      public static var §"a§:EReg;
      
      public static var §+P§:EReg;
      
      public static var §;]§:EReg;
      
      public static var §@!I§:EReg;
      
      public static var §5!B§:EReg;
      
      public static var §!! §:EReg;
      
      public static var §^!4§:EReg;
      
      public static var §%#§:EReg;
      
      public static var §6!J§:§'#§;
      
      public var width:Number;
      
      public var §1!7§:§@l§;
      
      public var §<v§:StringMap;
      
      public var §?b§:Boolean;
      
      public var height:Number;
      
      public function SVGData(param1:§,l§, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = null as String;
         var _loc6_:Number = NaN;
         var _loc8_:* = null as Array;
         super();
         var _loc3_:§,l§ = param1.§@<§();
         if(_loc3_ != null)
         {
            if(_loc3_.§8! § != §,l§.§=!D§)
            {
               Boot.lastError = new Error();
               throw "Bad node type, expected Element but found " + _loc3_.§8! §;
            }
            if(_loc3_.§?;§ != "svg")
            {
               if(_loc3_.§8! § != §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, expected Element but found " + _loc3_.§8! §;
               }
               _loc4_ = _loc3_.§?;§ != "svg:svg";
            }
            else
            {
               _loc4_ = false;
            }
         }
         else
         {
            _loc4_ = true;
         }
         if(_loc4_)
         {
            if(_loc3_ == null)
            {
               _loc5_ = "null";
            }
            else
            {
               if(_loc3_.§8! § != §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, expected Element but found " + _loc3_.§8! §;
               }
               _loc5_ = _loc3_.§?;§;
            }
            Boot.lastError = new Error();
            throw "Not an SVG file (" + _loc5_ + ")";
         }
         §<v§ = new StringMap();
         §1!7§ = new §@l§();
         §?b§ = param2;
         width = §@-§("width",_loc3_,null,0);
         height = §@-§("height",_loc3_,null,0);
         if(width == 0 && height == 0)
         {
            width = height = 400;
         }
         else if(width == 0)
         {
            width = height;
         }
         else if(height == 0)
         {
            height = width;
         }
         var _loc7_:Rectangle = new Rectangle(0,0,width,height);
         if(_loc3_.exists("viewBox"))
         {
            _loc5_ = _loc3_.get("viewBox");
            _loc8_ = int(_loc5_.indexOf(",")) != -1 ? _loc5_.split(",") : _loc5_.split(" ");
            _loc7_ = new Rectangle(Std.parseFloat(StringTools.§"9§(_loc8_[0])),Std.parseFloat(StringTools.§"9§(_loc8_[1])),Std.parseFloat(StringTools.§"9§(_loc8_[2])),Std.parseFloat(StringTools.§"9§(_loc8_[3])));
         }
         §2!Q§(this,_loc3_,new Matrix(1,0,0,1,-_loc7_.x,-_loc7_.y),null);
      }
      
      public function §,G§(param1:§,l§, param2:Matrix, param3:StringMap) : §&!S§
      {
         var _loc8_:* = null as §,l§;
         if(param1.exists("transform"))
         {
            param2 = param2.clone();
            applyTransform(param2,param1.get("transform"));
         }
         var _loc4_:StringMap = §"i§(param1,param3);
         var _loc5_:§&!S§ = new §&!S§();
         _loc5_.matrix = param2;
         _loc5_.name = param1.exists("id") ? param1.get("id") : "";
         _loc5_.x = §-!@§(param1,"x",0);
         _loc5_.y = §-!@§(param1,"y",0);
         _loc5_.fill = §!j§("fill",param1,_loc4_);
         _loc5_.§8!D§ = §@-§("fill-opacity",param1,_loc4_,1);
         _loc5_.§,$§ = §@-§("stroke-opacity",param1,_loc4_,1);
         _loc5_.§0!$§ = §7!W§("stroke",param1,_loc4_,null);
         _loc5_.§]&§ = §@-§("stroke-width",param1,_loc4_,1);
         _loc5_.§>!L§ = §;_§("font-family",param1,_loc4_,"");
         _loc5_.§8!V§ = §@-§("font-size",param1,_loc4_,12);
         _loc5_.§"!B§ = §@-§("letter-spacing",param1,_loc4_,0);
         _loc5_.kerning = §@-§("kerning",param1,_loc4_,0);
         _loc5_.§@!5§ = §;_§("text-align",param1,_loc4_,"start");
         var _loc6_:String = "";
         var _loc7_:* = param1.§4!T§();
         while(Boolean(_loc7_.hasNext()))
         {
            _loc8_ = _loc7_.next();
            _loc6_ += §5H§.§1?§(_loc8_);
         }
         _loc5_.text = _loc6_;
         return _loc5_;
      }
      
      public function §6@§(param1:§,l§, param2:Matrix, param3:StringMap, param4:Boolean, param5:Boolean, param6:Boolean = false) : Path
      {
         var _loc11_:* = null as String;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:int = 0;
         var _loc23_:* = null as Array;
         var _loc24_:* = null as §4!7§;
         if(param1.exists("transform"))
         {
            param2 = param2.clone();
            applyTransform(param2,param1.get("transform"));
         }
         var _loc7_:StringMap = §"i§(param1,param3);
         var _loc8_:String = param1.exists("id") ? param1.get("id") : "";
         var _loc9_:Path = new Path();
         _loc9_.fill = §!j§("fill",param1,_loc7_);
         _loc9_.alpha = §@-§("opacity",param1,_loc7_,1);
         _loc9_.§8!D§ = §@-§("fill-opacity",param1,_loc7_,1);
         _loc9_.§,$§ = §@-§("stroke-opacity",param1,_loc7_,1);
         _loc9_.§0!$§ = §7!W§("stroke",param1,_loc7_,null);
         _loc9_.§]&§ = §@-§("stroke-width",param1,_loc7_,1);
         var _loc10_:§=!U§ = new StringMap();
         _loc11_ = "round";
         if("round" in StringMap.§+!#§)
         {
            _loc10_.setReserved("round",_loc11_);
         }
         else
         {
            _loc10_.h["round"] = _loc11_;
         }
         _loc11_ = "square";
         if("square" in StringMap.§+!#§)
         {
            _loc10_.setReserved("square",_loc11_);
         }
         else
         {
            _loc10_.h["square"] = _loc11_;
         }
         _loc11_ = "none";
         if("butt" in StringMap.§+!#§)
         {
            _loc10_.setReserved("butt",_loc11_);
         }
         else
         {
            _loc10_.h["butt"] = _loc11_;
         }
         _loc9_.§^?§ = §'!T§("stroke-linecap",param1,_loc7_,"none",_loc10_);
         var _loc12_:§=!U§ = new StringMap();
         _loc11_ = "bevel";
         if("bevel" in StringMap.§+!#§)
         {
            _loc12_.setReserved("bevel",_loc11_);
         }
         else
         {
            _loc12_.h["bevel"] = _loc11_;
         }
         _loc11_ = "round";
         if("round" in StringMap.§+!#§)
         {
            _loc12_.setReserved("round",_loc11_);
         }
         else
         {
            _loc12_.h["round"] = _loc11_;
         }
         _loc11_ = "miter";
         if("miter" in StringMap.§+!#§)
         {
            _loc12_.setReserved("miter",_loc11_);
         }
         else
         {
            _loc12_.h["miter"] = _loc11_;
         }
         _loc9_.§?f§ = §'!T§("stroke-linejoin",param1,_loc7_,"miter",_loc12_);
         _loc9_.§^!_§ = §@-§("stroke-miterlimit",param1,_loc7_,3);
         _loc9_.§+K§ = [];
         _loc9_.matrix = param2;
         _loc9_.name = _loc8_;
         if(param4)
         {
            _loc13_ = param1.exists("x") ? Std.parseFloat(param1.get("x")) : 0;
            _loc14_ = param1.exists("y") ? Std.parseFloat(param1.get("y")) : 0;
            _loc15_ = Std.parseFloat(param1.get("width"));
            _loc16_ = Std.parseFloat(param1.get("height"));
            _loc17_ = param1.exists("rx") ? Std.parseFloat(param1.get("rx")) : 0;
            _loc18_ = param1.exists("ry") ? Std.parseFloat(param1.get("ry")) : 0;
            if(_loc17_ == 0 || _loc18_ == 0)
            {
               _loc9_.§+K§.push(new §]6§(_loc13_,_loc14_));
               _loc9_.§+K§.push(new §&!D§(_loc13_ + _loc15_,_loc14_));
               _loc9_.§+K§.push(new §&!D§(_loc13_ + _loc15_,_loc14_ + _loc16_));
               _loc9_.§+K§.push(new §&!D§(_loc13_,_loc14_ + _loc16_));
               _loc9_.§+K§.push(new §&!D§(_loc13_,_loc14_));
            }
            else
            {
               _loc9_.§+K§.push(new §]6§(_loc13_,_loc14_ + _loc18_));
               _loc9_.§+K§.push(new §-[§(_loc13_,_loc14_,_loc13_ + _loc17_,_loc14_));
               _loc9_.§+K§.push(new §&!D§(_loc13_ + _loc15_ - _loc17_,_loc14_));
               _loc9_.§+K§.push(new §-[§(_loc13_ + _loc15_,_loc14_,_loc13_ + _loc15_,_loc14_ + _loc17_));
               _loc9_.§+K§.push(new §&!D§(_loc13_ + _loc15_,_loc14_ + _loc16_ - _loc18_));
               _loc9_.§+K§.push(new §-[§(_loc13_ + _loc15_,_loc14_ + _loc16_,_loc13_ + _loc15_ - _loc17_,_loc14_ + _loc16_));
               _loc9_.§+K§.push(new §&!D§(_loc13_ + _loc17_,_loc14_ + _loc16_));
               _loc9_.§+K§.push(new §-[§(_loc13_,_loc14_ + _loc16_,_loc13_,_loc14_ + _loc16_ - _loc18_));
               _loc9_.§+K§.push(new §&!D§(_loc13_,_loc14_ + _loc18_));
            }
         }
         else if(param5)
         {
            _loc13_ = param1.exists("cx") ? Std.parseFloat(param1.get("cx")) : 0;
            _loc14_ = param1.exists("cy") ? Std.parseFloat(param1.get("cy")) : 0;
            _loc15_ = param6 && param1.exists("r") ? Std.parseFloat(param1.get("r")) : 0;
            _loc16_ = param6 ? _loc15_ : (param1.exists("rx") ? Std.parseFloat(param1.get("rx")) : 0);
            _loc17_ = _loc16_ * 0.7071067811865476;
            _loc18_ = _loc16_ * 0.41421356237309503;
            _loc19_ = param6 ? _loc15_ : (param1.exists("ry") ? Std.parseFloat(param1.get("ry")) : 0);
            _loc20_ = _loc19_ * 0.7071067811865476;
            _loc21_ = _loc19_ * 0.41421356237309503;
            _loc9_.§+K§.push(new §]6§(_loc13_ + _loc16_,_loc14_));
            _loc9_.§+K§.push(new §-[§(_loc13_ + _loc16_,_loc14_ + _loc21_,_loc13_ + _loc17_,_loc14_ + _loc20_));
            _loc9_.§+K§.push(new §-[§(_loc13_ + _loc18_,_loc14_ + _loc19_,_loc13_,_loc14_ + _loc19_));
            _loc9_.§+K§.push(new §-[§(_loc13_ - _loc18_,_loc14_ + _loc19_,_loc13_ - _loc17_,_loc14_ + _loc20_));
            _loc9_.§+K§.push(new §-[§(_loc13_ - _loc16_,_loc14_ + _loc21_,_loc13_ - _loc16_,_loc14_));
            _loc9_.§+K§.push(new §-[§(_loc13_ - _loc16_,_loc14_ - _loc21_,_loc13_ - _loc17_,_loc14_ - _loc20_));
            _loc9_.§+K§.push(new §-[§(_loc13_ - _loc18_,_loc14_ - _loc19_,_loc13_,_loc14_ - _loc19_));
            _loc9_.§+K§.push(new §-[§(_loc13_ + _loc18_,_loc14_ - _loc19_,_loc13_ + _loc17_,_loc14_ - _loc20_));
            _loc9_.§+K§.push(new §-[§(_loc13_ + _loc16_,_loc14_ - _loc21_,_loc13_ + _loc16_,_loc14_));
         }
         else
         {
            _loc11_ = param1.exists("points") ? "M" + param1.get("points") + "z" : (param1.exists("x1") ? "M" + param1.get("x1") + "," + param1.get("y1") + " " + param1.get("x2") + "," + param1.get("y2") + "z" : param1.get("d"));
            _loc22_ = 0;
            _loc23_ = §1!7§.parse(_loc11_,§?b§);
            while(_loc22_ < int(_loc23_.length))
            {
               _loc24_ = _loc23_[_loc22_];
               _loc22_++;
               _loc9_.§+K§.push(_loc24_);
            }
         }
         return _loc9_;
      }
      
      public function §2!Q§(param1:§[!I§, param2:§,l§, param3:Matrix, param4:StringMap) : §[!I§
      {
         var _loc6_:* = null as String;
         var _loc8_:* = null as §,l§;
         if(param2.exists("transform"))
         {
            param3 = param3.clone();
            applyTransform(param3,param2.get("transform"));
         }
         if(param2.exists("inkscape:label"))
         {
            param1.name = param2.get("inkscape:label");
         }
         else if(param2.exists("id"))
         {
            param1.name = param2.get("id");
         }
         var _loc5_:StringMap = §"i§(param2,param4);
         if(param2.exists("opacity"))
         {
            _loc6_ = param2.get("opacity");
            if(_loc5_ == null)
            {
               _loc5_ = new StringMap();
            }
            if("opacity" in StringMap.§+!#§ ? _loc5_.existsReserved("opacity") : "opacity" in _loc5_.h)
            {
               _loc6_ = Std.string(Std.parseFloat(_loc6_) * Std.parseFloat("opacity" in StringMap.§+!#§ ? _loc5_.getReserved("opacity") : _loc5_.h["opacity"]));
            }
            if("opacity" in StringMap.§+!#§)
            {
               _loc5_.setReserved("opacity",_loc6_);
            }
            else
            {
               _loc5_.h["opacity"] = _loc6_;
            }
         }
         var _loc7_:* = param2.§4!T§();
         while(Boolean(_loc7_.hasNext()))
         {
            _loc8_ = _loc7_.next();
            if(_loc8_.§8! § != §,l§.§=!D§)
            {
               Boot.lastError = new Error();
               throw "Bad node type, expected Element but found " + _loc8_.§8! §;
            }
            _loc6_ = _loc8_.§?;§;
            if(_loc6_.substr(0,4) == "svg:")
            {
               _loc6_ = _loc6_.substr(4);
            }
            if(_loc6_ == "defs")
            {
               §=7§(_loc8_);
            }
            else if(_loc6_ == "g")
            {
               if(!(_loc8_.exists("display") && _loc8_.get("display") == "none"))
               {
                  param1.§@!`§.push(§&!N§.DisplayGroup(§2!Q§(new §[!I§(),_loc8_,param3,_loc5_)));
               }
            }
            else if(_loc6_ == "path" || _loc6_ == "line" || _loc6_ == "polyline")
            {
               param1.§@!`§.push(§&!N§.DisplayPath(§6@§(_loc8_,param3,_loc5_,false,false)));
            }
            else if(_loc6_ == "rect")
            {
               param1.§@!`§.push(§&!N§.DisplayPath(§6@§(_loc8_,param3,_loc5_,true,false)));
            }
            else if(_loc6_ == "polygon")
            {
               param1.§@!`§.push(§&!N§.DisplayPath(§6@§(_loc8_,param3,_loc5_,false,false)));
            }
            else if(_loc6_ == "ellipse")
            {
               param1.§@!`§.push(§&!N§.DisplayPath(§6@§(_loc8_,param3,_loc5_,false,true)));
            }
            else if(_loc6_ == "circle")
            {
               param1.§@!`§.push(§&!N§.DisplayPath(§6@§(_loc8_,param3,_loc5_,false,true,true)));
            }
            else if(_loc6_ == "text")
            {
               param1.§@!`§.push(§&!N§.DisplayText(§,G§(_loc8_,param3,_loc5_)));
            }
            else if(_loc6_ == "linearGradient")
            {
               §2M§(_loc8_,"linear",true);
            }
            else if(_loc6_ == "radialGradient")
            {
               §2M§(_loc8_,"radial",true);
            }
         }
         return param1;
      }
      
      public function §2M§(param1:§,l§, param2:String, param3:Boolean) : void
      {
         var _loc6_:* = null as String;
         var _loc7_:* = null as StringMap;
         var _loc8_:* = null as String;
         var _loc9_:* = null as §9!Z§;
         var _loc11_:* = null as §,l§;
         var _loc4_:String = param1.get("id");
         var _loc5_:§9!Z§ = new §9!Z§(param2);
         if(param3 && param1.exists("xlink:href"))
         {
            _loc6_ = param1.get("xlink:href");
            if(_loc6_.charAt(0) != "#")
            {
               Boot.lastError = new Error();
               throw "xlink - unkown syntax : " + _loc6_;
            }
            _loc7_ = §<v§;
            _loc8_ = _loc6_.substr(1);
            _loc9_ = _loc8_ in StringMap.§+!#§ ? _loc7_.getReserved(_loc8_) : _loc7_.h[_loc8_];
            if(_loc9_ == null)
            {
               Boot.lastError = new Error();
               throw "Unknown xlink : " + _loc6_;
            }
            _loc5_.§23§ = _loc9_.§23§;
            _loc5_.§?6§ = _loc9_.§?6§;
            _loc5_.§2Z§ = _loc9_.§2Z§;
            _loc5_.§4x§ = _loc9_.§4x§.clone();
            _loc5_.§7z§ = _loc9_.§7z§;
            _loc5_.§%4§ = _loc9_.§%4§;
            _loc5_.§&N§ = _loc9_.§&N§;
         }
         if(param1.exists("x1"))
         {
            _loc5_.x1 = §-!@§(param1,"x1");
            _loc5_.y1 = §-!@§(param1,"y1");
            _loc5_.x2 = §-!@§(param1,"x2");
            _loc5_.y2 = §-!@§(param1,"y2");
         }
         else
         {
            _loc5_.x1 = §-!@§(param1,"cx");
            _loc5_.y1 = §-!@§(param1,"cy");
            _loc5_.x2 = §-!@§(param1,"fx",_loc5_.x1);
            _loc5_.y2 = §-!@§(param1,"fy",_loc5_.y1);
         }
         _loc5_.§&N§ = §-!@§(param1,"r");
         if(param1.exists("gradientTransform"))
         {
            applyTransform(_loc5_.§4x§,param1.get("gradientTransform"));
         }
         var _loc10_:* = param1.§4!T§();
         while(Boolean(_loc10_.hasNext()))
         {
            _loc11_ = _loc10_.next();
            _loc7_ = §"i§(_loc11_,null);
            _loc5_.§23§.push(§,!"§("stop-color",_loc11_,_loc7_,0));
            _loc5_.§?6§.push(§@-§("stop-opacity",_loc11_,_loc7_,1));
            _loc5_.§2Z§.push(int(Std.parseFloat(_loc11_.get("offset")) * 255));
         }
         _loc7_ = §<v§;
         if(_loc4_ in StringMap.§+!#§)
         {
            _loc7_.setReserved(_loc4_,_loc5_);
         }
         else
         {
            _loc7_.h[_loc4_] = _loc5_;
         }
      }
      
      public function §=7§(param1:§,l§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null as §,l§;
         var _loc6_:* = null as String;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = _loc2_++;
            _loc4_ = param1.§4!T§();
            while(Boolean(_loc4_.hasNext()))
            {
               _loc5_ = _loc4_.next();
               if(_loc5_.§8! § != §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, expected Element but found " + _loc5_.§8! §;
               }
               _loc6_ = _loc5_.§?;§;
               if(_loc6_.substr(0,4) == "svg:")
               {
                  _loc6_ = _loc6_.substr(4);
               }
               if(_loc6_ == "linearGradient")
               {
                  §2M§(_loc5_,"linear",_loc3_ == 1);
               }
               else if(_loc6_ == "radialGradient")
               {
                  §2M§(_loc5_,"radial",_loc3_ == 1);
               }
            }
         }
      }
      
      public function §"i§(param1:§,l§, param2:StringMap) : StringMap
      {
         var _loc4_:* = null;
         var _loc5_:* = null as String;
         var _loc6_:* = null as String;
         var _loc9_:* = null as String;
         var _loc10_:* = null as String;
         if(!param1.exists("style"))
         {
            return param2;
         }
         var _loc3_:StringMap = new StringMap();
         if(param2 != null)
         {
            _loc4_ = new §,X§(param2.h,param2.rh);
            while(Boolean(_loc4_.hasNext()))
            {
               _loc5_ = _loc4_.next();
               _loc6_ = _loc5_ in StringMap.§+!#§ ? param2.getReserved(_loc5_) : param2.h[_loc5_];
               if(_loc5_ in StringMap.§+!#§)
               {
                  _loc3_.setReserved(_loc5_,_loc6_);
               }
               else
               {
                  _loc3_.h[_loc5_] = _loc6_;
               }
            }
         }
         _loc5_ = param1.get("style");
         var _loc7_:Array = SVGData.§"a§.split(_loc5_);
         var _loc8_:int = 0;
         while(_loc8_ < int(_loc7_.length))
         {
            _loc6_ = _loc7_[_loc8_];
            _loc8_++;
            if(SVGData.§+P§.match(_loc6_))
            {
               _loc9_ = SVGData.§+P§.matched(1);
               _loc10_ = SVGData.§+P§.matched(2);
               if(_loc9_ in StringMap.§+!#§)
               {
                  _loc3_.setReserved(_loc9_,_loc10_);
               }
               else
               {
                  _loc3_.h[_loc9_] = _loc10_;
               }
            }
         }
         return _loc3_;
      }
      
      public function §'!T§(param1:String, param2:§,l§, param3:StringMap, param4:Object, param5:StringMap) : Object
      {
         var _loc6_:String = §;_§(param1,param2,param3,"");
         if(_loc6_ == "" || !(_loc6_ in StringMap.§+!#§ ? param5.existsReserved(_loc6_) : _loc6_ in param5.h))
         {
            return param4;
         }
         return _loc6_ in StringMap.§+!#§ ? param5.getReserved(_loc6_) : param5.h[_loc6_];
      }
      
      public function §;_§(param1:String, param2:§,l§, param3:StringMap, param4:String) : String
      {
         if(param2 != null && param2.exists(param1))
         {
            return param2.get(param1);
         }
         if(param3 != null && (param1 in StringMap.§+!#§ ? param3.existsReserved(param1) : param1 in param3.h))
         {
            return param1 in StringMap.§+!#§ ? param3.getReserved(param1) : param3.h[param1];
         }
         return param4;
      }
      
      public function §7!W§(param1:String, param2:§,l§, param3:StringMap, param4:Object) : Object
      {
         var _loc6_:* = null as EReg;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:Number = NaN;
         var _loc15_:* = null as String;
         var _loc5_:String = §;_§(param1,param2,param3,"");
         if(_loc5_ == "")
         {
            return param4;
         }
         if(SVGData.§%#§.match(_loc5_))
         {
            _loc6_ = SVGData.§%#§;
            _loc7_ = Std.parseFloat(_loc6_.matched(1));
            if(_loc6_.matched(2) == "%")
            {
               _loc7_ = _loc7_ * 255 / 100;
            }
            _loc8_ = Std.parseFloat(_loc6_.matched(3));
            if(_loc6_.matched(4) == "%")
            {
               _loc8_ = _loc8_ * 255 / 100;
            }
            _loc9_ = Std.parseFloat(_loc6_.matched(5));
            if(_loc6_.matched(6) == "%")
            {
               _loc9_ = _loc9_ * 255 / 100;
            }
            _loc10_ = _loc7_;
            if(_loc10_ < 0)
            {
               _loc10_ = 0;
            }
            if(_loc10_ > 255)
            {
               _loc10_ = 255;
            }
            _loc11_ = int(_loc10_) << 16;
            _loc12_ = _loc8_;
            if(_loc12_ < 0)
            {
               _loc12_ = 0;
            }
            if(_loc12_ > 255)
            {
               _loc12_ = 255;
            }
            _loc13_ = _loc11_ | int(_loc12_) << 8;
            _loc14_ = _loc9_;
            if(_loc14_ < 0)
            {
               _loc14_ = 0;
            }
            if(_loc14_ > 255)
            {
               _loc14_ = 255;
            }
            return _loc13_ | int(_loc14_);
         }
         if(_loc5_ == "none")
         {
            return null;
         }
         if(_loc5_.charAt(0) == "#")
         {
            _loc15_ = _loc5_.substr(1);
            if(_loc15_.length == 3)
            {
               _loc15_ = _loc15_.substr(0,1) + _loc15_.substr(0,1) + _loc15_.substr(1,1) + _loc15_.substr(1,1) + _loc15_.substr(2,1) + _loc15_.substr(2,1);
            }
            return Std.parseInt("0x" + _loc15_);
         }
         return Std.parseInt(_loc5_);
      }
      
      public function §@-§(param1:String, param2:§,l§, param3:StringMap, param4:Number) : Number
      {
         var _loc5_:String = §;_§(param1,param2,param3,"");
         if(_loc5_ == "")
         {
            return param4;
         }
         return Std.parseFloat(_loc5_);
      }
      
      public function §-!@§(param1:§,l§, param2:String, param3:Number = 0) : Number
      {
         if(param1.exists(param2))
         {
            return Std.parseFloat(param1.get(param2));
         }
         return param3;
      }
      
      public function §!j§(param1:String, param2:§,l§, param3:StringMap) : §'#§
      {
         var _loc5_:* = null as String;
         var _loc6_:* = null as EReg;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:Number = NaN;
         var _loc15_:* = null as StringMap;
         var _loc16_:* = null as StringMap;
         var _loc4_:String = §;_§(param1,param2,param3,"");
         if(_loc4_ == "")
         {
            return SVGData.§6!J§;
         }
         if(_loc4_.charAt(0) == "#")
         {
            _loc5_ = _loc4_.substr(1);
            if(_loc5_.length == 3)
            {
               _loc5_ = _loc5_.substr(0,1) + _loc5_.substr(0,1) + _loc5_.substr(1,1) + _loc5_.substr(1,1) + _loc5_.substr(2,1) + _loc5_.substr(2,1);
            }
            return §'#§.FillSolid(int(Std.parseInt("0x" + _loc5_)));
         }
         if(SVGData.§%#§.match(_loc4_))
         {
            _loc6_ = SVGData.§%#§;
            _loc7_ = Std.parseFloat(_loc6_.matched(1));
            if(_loc6_.matched(2) == "%")
            {
               _loc7_ = _loc7_ * 255 / 100;
            }
            _loc8_ = Std.parseFloat(_loc6_.matched(3));
            if(_loc6_.matched(4) == "%")
            {
               _loc8_ = _loc8_ * 255 / 100;
            }
            _loc9_ = Std.parseFloat(_loc6_.matched(5));
            if(_loc6_.matched(6) == "%")
            {
               _loc9_ = _loc9_ * 255 / 100;
            }
            _loc10_ = _loc7_;
            if(_loc10_ < 0)
            {
               _loc10_ = 0;
            }
            if(_loc10_ > 255)
            {
               _loc10_ = 255;
            }
            _loc11_ = int(_loc10_) << 16;
            _loc12_ = _loc8_;
            if(_loc12_ < 0)
            {
               _loc12_ = 0;
            }
            if(_loc12_ > 255)
            {
               _loc12_ = 255;
            }
            _loc13_ = _loc11_ | int(_loc12_) << 8;
            _loc14_ = _loc9_;
            if(_loc14_ < 0)
            {
               _loc14_ = 0;
            }
            if(_loc14_ > 255)
            {
               _loc14_ = 255;
            }
            return §'#§.FillSolid(_loc13_ | int(_loc14_));
         }
         if(_loc4_ == "none")
         {
            return §'#§.FillNone;
         }
         if(SVGData.§^!4§.match(_loc4_))
         {
            _loc5_ = SVGData.§^!4§.matched(1);
            _loc15_ = §<v§;
            if(_loc5_ in StringMap.§+!#§ ? _loc15_.existsReserved(_loc5_) : _loc5_ in _loc15_.h)
            {
               _loc16_ = §<v§;
               return §'#§.FillGrad(_loc5_ in StringMap.§+!#§ ? _loc16_.getReserved(_loc5_) : _loc16_.h[_loc5_]);
            }
            Boot.lastError = new Error();
            throw "Unknown url:" + _loc5_;
         }
         Boot.lastError = new Error();
         throw "Unknown fill string:" + _loc4_;
      }
      
      public function §,!"§(param1:String, param2:§,l§, param3:StringMap, param4:int) : int
      {
         var _loc6_:* = null as String;
         var _loc5_:String = §;_§(param1,param2,param3,"");
         if(_loc5_ == "")
         {
            return param4;
         }
         if(_loc5_.charAt(0) == "#")
         {
            _loc6_ = _loc5_.substr(1);
            if(_loc6_.length == 3)
            {
               _loc6_ = _loc6_.substr(0,1) + _loc6_.substr(0,1) + _loc6_.substr(1,1) + _loc6_.substr(1,1) + _loc6_.substr(2,1) + _loc6_.substr(2,1);
            }
            return Std.parseInt("0x" + _loc6_);
         }
         return Std.parseInt(_loc5_);
      }
      
      public function applyTransform(param1:Matrix, param2:String) : Number
      {
         var _loc4_:Number = NaN;
         var _loc5_:* = null as Matrix;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:Number = 1;
         if(SVGData.§;]§.match(param2))
         {
            param1.translate(Std.parseFloat(SVGData.§;]§.matched(1)),Std.parseFloat(SVGData.§;]§.matched(2)));
         }
         else if(SVGData.§@!I§.match(param2))
         {
            _loc4_ = Std.parseFloat(SVGData.§@!I§.matched(1));
            param1.scale(_loc4_,_loc4_);
            _loc3_ = _loc4_;
         }
         else if(SVGData.§5!B§.match(param2))
         {
            _loc5_ = new Matrix(Std.parseFloat(SVGData.§5!B§.matched(1)),Std.parseFloat(SVGData.§5!B§.matched(2)),Std.parseFloat(SVGData.§5!B§.matched(3)),Std.parseFloat(SVGData.§5!B§.matched(4)),Std.parseFloat(SVGData.§5!B§.matched(5)),Std.parseFloat(SVGData.§5!B§.matched(6)));
            _loc5_.concat(param1);
            param1.a = _loc5_.a;
            param1.b = _loc5_.b;
            param1.c = _loc5_.c;
            param1.d = _loc5_.d;
            param1.tx = _loc5_.tx;
            param1.ty = _loc5_.ty;
            _loc3_ = Number(Math.sqrt(param1.a * param1.a + param1.c * param1.c));
         }
         else if(SVGData.§!! §.match(param2))
         {
            _loc4_ = Std.parseFloat(SVGData.§!! §.matched(1));
            _loc6_ = Std.parseFloat(SVGData.§!! §.matched(2));
            if(_loc6_ == Number(Math.NaN))
            {
               _loc6_ = 0;
            }
            _loc7_ = Std.parseFloat(SVGData.§!! §.matched(3));
            if(_loc7_ == Number(Math.NaN))
            {
               _loc7_ = 0;
            }
            _loc8_ = _loc4_ * Math.PI / 180;
            param1.translate(-_loc6_,-_loc7_);
            param1.rotate(_loc8_);
            param1.translate(_loc6_,_loc7_);
         }
         else
         {
            Log.trace("Warning, unknown transform:" + param2,{
               "fileName":"SVGData.hx",
               "lineNumber":154,
               "className":"format.svg.SVGData",
               "methodName":"applyTransform"
            });
         }
         return _loc3_;
      }
   }
}

