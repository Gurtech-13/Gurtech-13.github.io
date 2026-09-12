package format.svg
{
   import flash.Boot;
   
   public class §@l§
   {
      
      public static var §#y§:Array;
      
      public var §"?§:§4!7§;
      
      public var §-!D§:Number;
      
      public var §"1§:Number;
      
      public function §@l§()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(§@l§.§#y§ == null)
         {
            §@l§.§#y§ = [];
            _loc1_ = 0;
            while(_loc1_ < 128)
            {
               _loc2_ = _loc1_++;
               §@l§.§#y§[_loc2_] = §5&§(_loc2_);
            }
         }
      }
      
      public function §?T§() : Number
      {
         if(§"?§ != null)
         {
            return §"?§.§?T§();
         }
         return 0;
      }
      
      public function §<K§() : Number
      {
         if(§"?§ != null)
         {
            return §"?§.§<K§();
         }
         return 0;
      }
      
      public function §&!Z§() : Number
      {
         if(§"?§ != null)
         {
            return §"?§.§&!Z§();
         }
         return 0;
      }
      
      public function §2%§() : Number
      {
         if(§"?§ != null)
         {
            return §"?§.§2%§();
         }
         return 0;
      }
      
      public function parse(param1:String, param2:Boolean) : Array
      {
         var _loc3_:Number = NaN;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:Boolean = false;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:* = null as §&@§;
         var _loc21_:* = null as Array;
         var _loc22_:* = null as §-[§;
         §"1§ = §-!D§ = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:Array = [];
         var _loc7_:int = 0;
         var _loc8_:int = -1;
         var _loc9_:int = -1;
         §"?§ = null;
         var _loc10_:int = int(param1.length);
         var _loc11_:Boolean = false;
         while(_loc4_ <= _loc10_)
         {
            _loc12_ = _loc4_ == _loc10_ ? 32 : param1.charCodeAt(_loc4_);
            _loc13_ = _loc12_ > 0 && _loc12_ < 128 ? int(§@l§.§#y§[_loc12_]) : -1;
            if(_loc13_ == -1)
            {
               Boot.lastError = new Error();
               throw "failed parsing path near \'" + param1.substr(_loc4_) + "\'";
            }
            if(_loc13_ == -2)
            {
               _loc4_++;
            }
            else if(_loc13_ <= -3)
            {
               _loc14_ = _loc4_ + 1;
               _loc15_ = -1;
               _loc16_ = _loc13_ == -5;
               if(_loc13_ == -6)
               {
                  _loc15_ = 0;
                  _loc16_ = true;
               }
               while(_loc14_ < param1.length)
               {
                  _loc17_ = param1.charCodeAt(_loc14_);
                  _loc18_ = _loc17_ < 0 || _loc17_ > 127 ? -1 : int(§@l§.§#y§[_loc17_]);
                  if(_loc18_ > -3)
                  {
                     break;
                  }
                  if(_loc18_ == -5 && _loc16_)
                  {
                     break;
                  }
                  if(_loc15_ >= 0)
                  {
                     if(_loc18_ == -4)
                     {
                        if(_loc15_ != 0)
                        {
                           break;
                        }
                     }
                     else if(_loc18_ != -3)
                     {
                        break;
                     }
                     _loc15_++;
                  }
                  else if(_loc18_ == -6)
                  {
                     if(_loc15_ >= 0)
                     {
                        break;
                     }
                     _loc15_ = 0;
                     _loc16_ = true;
                  }
                  else if(_loc18_ == -4)
                  {
                     break;
                  }
                  _loc14_++;
               }
               if(_loc8_ >= 0)
               {
                  _loc3_ = Std.parseFloat(param1.substr(_loc4_,_loc14_ - _loc4_));
                  _loc5_.push(_loc3_);
               }
               _loc4_ = _loc14_;
            }
            else
            {
               _loc8_ = _loc12_;
               _loc9_ = _loc13_;
               _loc11_ = false;
               _loc7_ = _loc4_;
               _loc5_ = [];
               _loc4_++;
            }
            _loc3_ = 0;
            _loc19_ = 0;
            if(_loc8_ >= 0)
            {
               if(_loc9_ == int(_loc5_.length))
               {
                  if(param2 && §"?§ != null)
                  {
                     _loc3_ = §"?§.§<K§();
                     _loc19_ = §"?§.§?T§();
                  }
                  §"?§ = §>!"§(_loc8_,_loc5_);
                  if(§"?§ == null)
                  {
                     Boot.lastError = new Error();
                     throw "Unknown command " + String.fromCharCode(_loc8_) + " near \'" + param1.substr(_loc7_) + "\'";
                  }
                  if(param2 && §"?§.§?!X§() == 4)
                  {
                     _loc20_ = §"?§;
                     _loc21_ = _loc20_.§`!H§(_loc3_,_loc19_);
                     _loc14_ = 0;
                     while(_loc14_ < int(_loc21_.length))
                     {
                        _loc22_ = _loc21_[_loc14_];
                        _loc14_++;
                        _loc6_.push(_loc22_);
                     }
                  }
                  else
                  {
                     _loc6_.push(§"?§);
                  }
                  _loc11_ = true;
                  if(_loc9_ == 0)
                  {
                     _loc9_ = -1;
                     _loc8_ = -1;
                  }
                  else if(_loc8_ == 77)
                  {
                     _loc8_ = 76;
                  }
                  else if(_loc8_ == 109)
                  {
                     _loc8_ = 108;
                  }
                  _loc7_ = _loc4_;
                  _loc5_ = [];
               }
            }
         }
         if(_loc8_ >= 0 && !_loc11_)
         {
            Boot.lastError = new Error();
            throw "Unfinished command (" + int(_loc5_.length) + "/" + _loc9_ + ") near \'" + param1.substr(_loc7_) + "\'";
         }
         return _loc6_;
      }
      
      public function §>!"§(param1:int, param2:Array) : §4!7§
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         switch(param1)
         {
            case 65:
               return new § 8§(§<K§(),§?T§(),Number(param2[0]),Number(param2[1]),Number(param2[2]),Number(param2[3]) != 0,Number(param2[4]) != 0,Number(param2[5]),Number(param2[6]));
            case 67:
               return new §&@§(Number(param2[0]),Number(param2[1]),Number(param2[2]),Number(param2[3]),Number(param2[4]),Number(param2[5]));
            case 72:
               return new §&!D§(Number(param2[0]),§?T§());
            case 76:
               return new §&!D§(Number(param2[0]),Number(param2[1]));
            case 77:
               §"1§ = Number(param2[0]);
               §-!D§ = Number(param2[1]);
               return new §]6§(§"1§,§-!D§);
            case 81:
               return new §-[§(Number(param2[0]),Number(param2[1]),Number(param2[2]),Number(param2[3]));
            case 83:
               _loc3_ = §<K§();
               _loc4_ = §?T§();
               return new §&@§(_loc3_ * 2 - §2%§(),_loc4_ * 2 - §&!Z§(),Number(param2[0]),Number(param2[1]),Number(param2[2]),Number(param2[3]));
            case 84:
               _loc3_ = §<K§();
               _loc4_ = §?T§();
               return new §-[§(_loc3_ * 2 - §2%§(),_loc3_ * 2 - §&!Z§(),Number(param2[2]),Number(param2[3]));
            case 86:
               return new §&!D§(§<K§(),Number(param2[0]));
            case 90:
               return new §&!D§(§"1§,§-!D§);
            case 97:
               _loc3_ = §<K§();
               _loc4_ = §?T§();
               return new § 8§(_loc3_,_loc4_,Number(param2[0]),Number(param2[1]),Number(param2[2]),Number(param2[3]) != 0,Number(param2[4]) != 0,Number(param2[5]) + _loc3_,Number(param2[6]) + _loc4_);
            case 99:
               _loc3_ = §<K§();
               _loc4_ = §?T§();
               return new §&@§(Number(param2[0]) + _loc3_,Number(param2[1]) + _loc4_,Number(param2[2]) + _loc3_,Number(param2[3]) + _loc4_,Number(param2[4]) + _loc3_,Number(param2[5]) + _loc4_);
            case 104:
               return new §&!D§(Number(param2[0]) + §<K§(),§?T§());
            case 108:
               return new §&!D§(Number(param2[0]) + §<K§(),Number(param2[1]) + §?T§());
            case 109:
               §"1§ = Number(param2[0]) + §<K§();
               §-!D§ = Number(param2[1]) + §?T§();
               return new §]6§(§"1§,§-!D§);
            case 113:
               _loc3_ = §<K§();
               _loc4_ = §?T§();
               return new §-[§(Number(param2[0]) + _loc3_,Number(param2[1]) + _loc4_,Number(param2[2]) + _loc3_,Number(param2[3]) + _loc4_);
            case 115:
               _loc3_ = §<K§();
               _loc4_ = §?T§();
               return new §&@§(_loc3_ * 2 - §2%§(),_loc4_ * 2 - §&!Z§(),Number(param2[0]) + _loc3_,Number(param2[1]) + _loc4_,Number(param2[2]) + _loc3_,Number(param2[3]) + _loc4_);
            case 116:
               _loc3_ = §<K§();
               _loc4_ = §?T§();
               return new §-[§(_loc3_ * 2 - §2%§(),_loc4_ * 2 - §&!Z§(),Number(param2[0]) + _loc3_,Number(param2[1]) + _loc4_);
            case 118:
               return new §&!D§(§<K§(),Number(param2[0]) + §?T§());
            case 122:
               return new §&!D§(§"1§,§-!D§);
            default:
               return null;
         }
      }
      
      public function §5&§(param1:int) : int
      {
         if(param1 == 10)
         {
            return -2;
         }
         var _loc2_:String = String.fromCharCode(param1).toUpperCase();
         if(_loc2_ >= "0" && _loc2_ <= "9")
         {
            return -3;
         }
         var _loc3_:String = _loc2_;
         if(_loc3_ == "+")
         {
            return -4;
         }
         if(_loc3_ != "\t")
         {
            if(_loc3_ != "\n")
            {
               if(_loc3_ != "\r")
               {
                  if(_loc3_ != " ")
                  {
                     if(_loc3_ != ",")
                     {
                        if(_loc3_ == "-")
                        {
                           return -4;
                        }
                        if(_loc3_ == ".")
                        {
                           return -5;
                        }
                        if(_loc3_ == "A")
                        {
                           return 7;
                        }
                        if(_loc3_ == "C")
                        {
                           return 6;
                        }
                        if(_loc3_ != "E")
                        {
                           if(_loc3_ != "e")
                           {
                              if(_loc3_ != "Q")
                              {
                                 if(_loc3_ != "S")
                                 {
                                    if(_loc3_ != "L")
                                    {
                                       if(_loc3_ != "M")
                                       {
                                          if(_loc3_ != "T")
                                          {
                                             if(_loc3_ != "H")
                                             {
                                                if(_loc3_ != "V")
                                                {
                                                   if(_loc3_ == "Z")
                                                   {
                                                      return 0;
                                                   }
                                                   return -1;
                                                }
                                             }
                                             return 1;
                                          }
                                       }
                                    }
                                    return 2;
                                 }
                              }
                              return 4;
                           }
                        }
                        return -6;
                     }
                  }
               }
            }
         }
         return -2;
      }
   }
}

