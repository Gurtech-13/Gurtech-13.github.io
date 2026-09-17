package §!!0§
{
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   
   public class §4k§
   {
      
      public static var §?3§:§=!U§;
      
      public function §4k§()
      {
      }
      
      public static function §'l§() : §=!U§
      {
         var _loc1_:* = null as §=!U§;
         var _loc2_:* = null as §!!O§;
         var _loc3_:* = null as StringMap;
         if(§4k§.§?3§ == null)
         {
            §4k§.§?3§ = new StringMap();
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,0,true,false,false,false);
            _loc3_ = _loc1_;
            if("mov" in StringMap.§+!#§)
            {
               _loc3_.setReserved("mov",_loc2_);
            }
            else
            {
               _loc3_.h["mov"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,1,true,false,false,false);
            _loc3_ = _loc1_;
            if("add" in StringMap.§+!#§)
            {
               _loc3_.setReserved("add",_loc2_);
            }
            else
            {
               _loc3_.h["add"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,2,true,false,false,false);
            _loc3_ = _loc1_;
            if("sub" in StringMap.§+!#§)
            {
               _loc3_.setReserved("sub",_loc2_);
            }
            else
            {
               _loc3_.h["sub"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,3,true,false,false,false);
            _loc3_ = _loc1_;
            if("mul" in StringMap.§+!#§)
            {
               _loc3_.setReserved("mul",_loc2_);
            }
            else
            {
               _loc3_.h["mul"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,4,true,false,false,false);
            _loc3_ = _loc1_;
            if("div" in StringMap.§+!#§)
            {
               _loc3_.setReserved("div",_loc2_);
            }
            else
            {
               _loc3_.h["div"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,5,true,false,false,false);
            _loc3_ = _loc1_;
            if("rcp" in StringMap.§+!#§)
            {
               _loc3_.setReserved("rcp",_loc2_);
            }
            else
            {
               _loc3_.h["rcp"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,6,true,false,false,false);
            _loc3_ = _loc1_;
            if("min" in StringMap.§+!#§)
            {
               _loc3_.setReserved("min",_loc2_);
            }
            else
            {
               _loc3_.h["min"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,7,true,false,false,false);
            _loc3_ = _loc1_;
            if("max" in StringMap.§+!#§)
            {
               _loc3_.setReserved("max",_loc2_);
            }
            else
            {
               _loc3_.h["max"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,8,true,false,false,false);
            _loc3_ = _loc1_;
            if("frc" in StringMap.§+!#§)
            {
               _loc3_.setReserved("frc",_loc2_);
            }
            else
            {
               _loc3_.h["frc"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,9,true,false,false,false);
            _loc3_ = _loc1_;
            if("sqt" in StringMap.§+!#§)
            {
               _loc3_.setReserved("sqt",_loc2_);
            }
            else
            {
               _loc3_.h["sqt"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,10,true,false,false,false);
            _loc3_ = _loc1_;
            if("rsq" in StringMap.§+!#§)
            {
               _loc3_.setReserved("rsq",_loc2_);
            }
            else
            {
               _loc3_.h["rsq"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,11,true,false,false,false);
            _loc3_ = _loc1_;
            if("pow" in StringMap.§+!#§)
            {
               _loc3_.setReserved("pow",_loc2_);
            }
            else
            {
               _loc3_.h["pow"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,12,true,false,false,false);
            _loc3_ = _loc1_;
            if("log" in StringMap.§+!#§)
            {
               _loc3_.setReserved("log",_loc2_);
            }
            else
            {
               _loc3_.h["log"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,13,true,false,false,false);
            _loc3_ = _loc1_;
            if("exp" in StringMap.§+!#§)
            {
               _loc3_.setReserved("exp",_loc2_);
            }
            else
            {
               _loc3_.h["exp"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,14,true,false,false,false);
            _loc3_ = _loc1_;
            if("nrm" in StringMap.§+!#§)
            {
               _loc3_.setReserved("nrm",_loc2_);
            }
            else
            {
               _loc3_.h["nrm"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,15,true,false,false,false);
            _loc3_ = _loc1_;
            if("sin" in StringMap.§+!#§)
            {
               _loc3_.setReserved("sin",_loc2_);
            }
            else
            {
               _loc3_.h["sin"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,16,true,false,false,false);
            _loc3_ = _loc1_;
            if("cos" in StringMap.§+!#§)
            {
               _loc3_.setReserved("cos",_loc2_);
            }
            else
            {
               _loc3_.h["cos"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,17,true,true,false,false);
            _loc3_ = _loc1_;
            if("crs" in StringMap.§+!#§)
            {
               _loc3_.setReserved("crs",_loc2_);
            }
            else
            {
               _loc3_.h["crs"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,18,true,true,false,false);
            _loc3_ = _loc1_;
            if("dp3" in StringMap.§+!#§)
            {
               _loc3_.setReserved("dp3",_loc2_);
            }
            else
            {
               _loc3_.h["dp3"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,19,true,true,false,false);
            _loc3_ = _loc1_;
            if("dp4" in StringMap.§+!#§)
            {
               _loc3_.setReserved("dp4",_loc2_);
            }
            else
            {
               _loc3_.h["dp4"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,20,true,false,false,false);
            _loc3_ = _loc1_;
            if("abs" in StringMap.§+!#§)
            {
               _loc3_.setReserved("abs",_loc2_);
            }
            else
            {
               _loc3_.h["abs"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,21,true,false,false,false);
            _loc3_ = _loc1_;
            if("neg" in StringMap.§+!#§)
            {
               _loc3_.setReserved("neg",_loc2_);
            }
            else
            {
               _loc3_.h["neg"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"none",0,22,true,false,false,false);
            _loc3_ = _loc1_;
            if("sat" in StringMap.§+!#§)
            {
               _loc3_.setReserved("sat",_loc2_);
            }
            else
            {
               _loc3_.h["sat"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"sampler",1,38,true,false,true,false);
            _loc3_ = _loc1_;
            if("ted" in StringMap.§+!#§)
            {
               _loc3_.setReserved("ted",_loc2_);
            }
            else
            {
               _loc3_.h["ted"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("none","scalar",1,"none",0,39,true,false,true,false);
            _loc3_ = _loc1_;
            if("kil" in StringMap.§+!#§)
            {
               _loc3_.setReserved("kil",_loc2_);
            }
            else
            {
               _loc3_.h["kil"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"sampler",1,40,true,false,true,false);
            _loc3_ = _loc1_;
            if("tex" in StringMap.§+!#§)
            {
               _loc3_.setReserved("tex",_loc2_);
            }
            else
            {
               _loc3_.h["tex"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","matrix",3,"vector",3,23,true,false,false,true);
            _loc3_ = _loc1_;
            if("m33" in StringMap.§+!#§)
            {
               _loc3_.setReserved("m33",_loc2_);
            }
            else
            {
               _loc3_.h["m33"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","matrix",4,"vector",4,24,true,false,false,true);
            _loc3_ = _loc1_;
            if("m44" in StringMap.§+!#§)
            {
               _loc3_.setReserved("m44",_loc2_);
            }
            else
            {
               _loc3_.h["m44"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","matrix",3,"vector",4,25,true,false,false,true);
            _loc3_ = _loc1_;
            if("m43" in StringMap.§+!#§)
            {
               _loc3_.setReserved("m43",_loc2_);
            }
            else
            {
               _loc3_.h["m43"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,41,true,false,false,false);
            _loc3_ = _loc1_;
            if("sge" in StringMap.§+!#§)
            {
               _loc3_.setReserved("sge",_loc2_);
            }
            else
            {
               _loc3_.h["sge"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,42,true,false,false,false);
            _loc3_ = _loc1_;
            if("slt" in StringMap.§+!#§)
            {
               _loc3_.setReserved("slt",_loc2_);
            }
            else
            {
               _loc3_.h["slt"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,43,true,false,false,false);
            _loc3_ = _loc1_;
            if("sgn" in StringMap.§+!#§)
            {
               _loc3_.setReserved("sgn",_loc2_);
            }
            else
            {
               _loc3_.h["sgn"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,44,true,false,false,false);
            _loc3_ = _loc1_;
            if("seq" in StringMap.§+!#§)
            {
               _loc3_.setReserved("seq",_loc2_);
            }
            else
            {
               _loc3_.h["seq"] = _loc2_;
            }
            _loc1_ = §4k§.§?3§;
            _loc2_ = new §!!O§("vector","vector",4,"vector",4,45,true,false,false,false);
            _loc3_ = _loc1_;
            if("sne" in StringMap.§+!#§)
            {
               _loc3_.setReserved("sne",_loc2_);
            }
            else
            {
               _loc3_.h["sne"] = _loc2_;
            }
         }
         return §4k§.§?3§;
      }
   }
}

