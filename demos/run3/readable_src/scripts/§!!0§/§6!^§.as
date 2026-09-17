package §!!0§
{
   import haxe.ds.StringMap;
   
   public class §6!^§
   {
      
      public static var §?3§:StringMap;
      
      public function §6!^§()
      {
      }
      
      public static function §'l§() : StringMap
      {
         var _loc1_:* = null as StringMap;
         var _loc2_:* = null as §8c§;
         if(§6!^§.§?3§ == null)
         {
            §6!^§.§?3§ = new StringMap();
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(0,"vertex attribute");
            if("va" in StringMap.§+!#§)
            {
               _loc1_.setReserved("va",_loc2_);
            }
            else
            {
               _loc1_.h["va"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(1,"fragment constant");
            if("fc" in StringMap.§+!#§)
            {
               _loc1_.setReserved("fc",_loc2_);
            }
            else
            {
               _loc1_.h["fc"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(1,"vertex constant");
            if("vc" in StringMap.§+!#§)
            {
               _loc1_.setReserved("vc",_loc2_);
            }
            else
            {
               _loc1_.h["vc"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(2,"fragment temporary");
            if("ft" in StringMap.§+!#§)
            {
               _loc1_.setReserved("ft",_loc2_);
            }
            else
            {
               _loc1_.h["ft"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(2,"vertex temporary");
            if("vt" in StringMap.§+!#§)
            {
               _loc1_.setReserved("vt",_loc2_);
            }
            else
            {
               _loc1_.h["vt"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(3,"vertex output");
            if("vo" in StringMap.§+!#§)
            {
               _loc1_.setReserved("vo",_loc2_);
            }
            else
            {
               _loc1_.h["vo"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(3,"vertex output");
            if("op" in StringMap.§+!#§)
            {
               _loc1_.setReserved("op",_loc2_);
            }
            else
            {
               _loc1_.h["op"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(3,"fragment depth output");
            if("fd" in StringMap.§+!#§)
            {
               _loc1_.setReserved("fd",_loc2_);
            }
            else
            {
               _loc1_.h["fd"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(3,"fragment output");
            if("fo" in StringMap.§+!#§)
            {
               _loc1_.setReserved("fo",_loc2_);
            }
            else
            {
               _loc1_.h["fo"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(3,"fragment output");
            if("oc" in StringMap.§+!#§)
            {
               _loc1_.setReserved("oc",_loc2_);
            }
            else
            {
               _loc1_.h["oc"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(4,"varying");
            if("v" in StringMap.§+!#§)
            {
               _loc1_.setReserved("v",_loc2_);
            }
            else
            {
               _loc1_.h["v"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(4,"varying output");
            if("vi" in StringMap.§+!#§)
            {
               _loc1_.setReserved("vi",_loc2_);
            }
            else
            {
               _loc1_.h["vi"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(4,"varying input");
            if("fi" in StringMap.§+!#§)
            {
               _loc1_.setReserved("fi",_loc2_);
            }
            else
            {
               _loc1_.h["fi"] = _loc2_;
            }
            _loc1_ = §6!^§.§?3§;
            _loc2_ = new §8c§(5,"sampler");
            if("fs" in StringMap.§+!#§)
            {
               _loc1_.setReserved("fs",_loc2_);
            }
            else
            {
               _loc1_.h["fs"] = _loc2_;
            }
         }
         return §6!^§.§?3§;
      }
   }
}

