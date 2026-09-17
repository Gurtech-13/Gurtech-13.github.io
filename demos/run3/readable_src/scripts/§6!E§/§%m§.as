package §6!E§
{
   import flash.Boot;
   import haxe.ds.StringMap;
   
   public class §%m§
   {
      
      public static var init__:Boolean;
      
      public static var §5E§:StringMap;
      
      public function §%m§()
      {
      }
      
      public static function parse(param1:String, param2:Boolean = false) : §,l§
      {
         var _loc3_:§,l§ = §,l§.§%<§();
         §%m§.§!y§(param1,param2,0,_loc3_);
         return _loc3_;
      }
      
      public static function §!y§(param1:String, param2:Boolean, param3:int = 0, param4:§,l§ = undefined) : int
      {
         var _loc16_:* = null as String;
         var _loc17_:* = null;
         var _loc18_:* = null as §,l§;
         var _loc19_:* = null as StringMap;
         var _loc20_:* = null as StringMap;
         var _loc21_:* = null as String;
         var _loc5_:§,l§ = null;
         var _loc6_:int = 1;
         var _loc7_:int = 1;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = int(param1.charCodeAt(param3));
         var _loc13_:StringBuf = new StringBuf();
         var _loc14_:int = 1;
         var _loc15_:int = -1;
         loop0:
         while(true)
         {
            if(_loc12_ == 0)
            {
               if(_loc6_ == 1)
               {
                  _loc9_ = param3;
                  _loc6_ = 13;
               }
               if(_loc6_ == 13)
               {
                  if(param3 != _loc9_ || _loc10_ == 0)
                  {
                     _loc17_ = param3 - _loc9_;
                     _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                     param4.addChild(§,l§.§>R§(_loc13_.b));
                     _loc10_++;
                  }
                  return param3;
               }
               if(!param2 && _loc6_ == 18 && _loc14_ == 13)
               {
                  _loc13_.b += "&";
                  _loc17_ = param3 - _loc9_;
                  _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                  param4.addChild(§,l§.§>R§(_loc13_.b));
                  _loc10_++;
                  return param3;
               }
               Boot.lastError = new Error();
               throw new §&S§("Unexpected end",param1,param3);
            }
            switch(_loc6_)
            {
               case 0:
                  switch(_loc12_)
                  {
                     case 9:
                     case 10:
                     case 13:
                     case 32:
                        break;
                     default:
                        _loc6_ = _loc7_;
                        continue;
                  }
                  break;
               case 1:
                  if(_loc12_ == 60)
                  {
                     _loc6_ = 0;
                     _loc7_ = 2;
                     break;
                  }
                  _loc9_ = param3;
                  _loc6_ = 13;
                  continue;
               case 2:
                  switch(_loc12_)
                  {
                     case 33:
                        if(int(param1.charCodeAt(param3 + 1)) == 91)
                        {
                           param3 += 2;
                           if(param1.substr(param3,6).toUpperCase() != "CDATA[")
                           {
                              Boot.lastError = new Error();
                              throw new §&S§("Expected <![CDATA[",param1,param3);
                           }
                           param3 += 5;
                           _loc6_ = 17;
                           _loc9_ = param3 + 1;
                           break;
                        }
                        if(int(param1.charCodeAt(param3 + 1)) == 68 || int(param1.charCodeAt(param3 + 1)) == 100)
                        {
                           if(param1.substr(param3 + 2,6).toUpperCase() != "OCTYPE")
                           {
                              Boot.lastError = new Error();
                              throw new §&S§("Expected <!DOCTYPE",param1,param3);
                           }
                           param3 += 8;
                           _loc6_ = 16;
                           _loc9_ = param3 + 1;
                           break;
                        }
                        if(int(param1.charCodeAt(param3 + 1)) != 45 || int(param1.charCodeAt(param3 + 2)) != 45)
                        {
                           Boot.lastError = new Error();
                           throw new §&S§("Expected <!--",param1,param3);
                        }
                        param3 += 2;
                        _loc6_ = 15;
                        _loc9_ = param3 + 1;
                        break;
                     case 47:
                        if(param4 == null)
                        {
                           Boot.lastError = new Error();
                           throw new §&S§("Expected node name",param1,param3);
                        }
                        _loc9_ = param3 + 1;
                        _loc6_ = 0;
                        _loc7_ = 10;
                        break;
                     case 63:
                        _loc6_ = 14;
                        _loc9_ = param3;
                        break;
                     default:
                        _loc6_ = 3;
                        _loc9_ = param3;
                        continue;
                  }
                  break;
               case 3:
                  if(_loc12_ >= 97 && _loc12_ <= 122 || _loc12_ >= 65 && _loc12_ <= 90 || _loc12_ >= 48 && _loc12_ <= 57 || _loc12_ == 58 || _loc12_ == 46 || _loc12_ == 95 || _loc12_ == 45)
                  {
                     break;
                  }
                  if(param3 == _loc9_)
                  {
                     Boot.lastError = new Error();
                     throw new §&S§("Expected node name",param1,param3);
                  }
                  _loc5_ = §,l§.§1!-§(param1.substr(_loc9_,param3 - _loc9_));
                  param4.addChild(_loc5_);
                  _loc10_++;
                  _loc6_ = 0;
                  _loc7_ = 4;
                  continue;
               case 4:
                  switch(_loc12_)
                  {
                     case 47:
                        _loc6_ = 11;
                        break;
                     case 62:
                        _loc6_ = 9;
                        break;
                     default:
                        _loc6_ = 5;
                        _loc9_ = param3;
                        continue;
                  }
                  break;
               case 5:
                  if(_loc12_ >= 97 && _loc12_ <= 122 || _loc12_ >= 65 && _loc12_ <= 90 || _loc12_ >= 48 && _loc12_ <= 57 || _loc12_ == 58 || _loc12_ == 46 || _loc12_ == 95 || _loc12_ == 45)
                  {
                     break;
                  }
                  if(_loc9_ == param3)
                  {
                     Boot.lastError = new Error();
                     throw new §&S§("Expected attribute name",param1,param3);
                  }
                  _loc16_ = param1.substr(_loc9_,param3 - _loc9_);
                  _loc8_ = _loc16_;
                  if(_loc5_.exists(_loc8_))
                  {
                     Boot.lastError = new Error();
                     throw new §&S§("Duplicate attribute [" + _loc8_ + "]",param1,param3);
                  }
                  _loc6_ = 0;
                  _loc7_ = 6;
                  continue;
               case 6:
                  if(_loc12_ == 61)
                  {
                     _loc6_ = 0;
                     _loc7_ = 7;
                     break;
                  }
                  Boot.lastError = new Error();
                  throw new §&S§("Expected =",param1,param3);
                  break;
               case 7:
                  switch(_loc12_)
                  {
                     case 34:
                     case 39:
                        _loc13_ = new StringBuf();
                        _loc6_ = 8;
                        _loc9_ = param3 + 1;
                        _loc15_ = _loc12_;
                        break;
                     default:
                        break loop0;
                  }
                  break;
               case 8:
                  switch(_loc12_)
                  {
                     case 38:
                        _loc17_ = param3 - _loc9_;
                        _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                        _loc6_ = 18;
                        _loc14_ = 8;
                        _loc9_ = param3 + 1;
                        break;
                     case 60:
                     case 62:
                        if(param2)
                        {
                           Boot.lastError = new Error();
                           throw new §&S§("Invalid unescaped " + String.fromCharCode(_loc12_) + " in attribute value",param1,param3);
                        }
                        if(_loc12_ == _loc15_)
                        {
                           _loc17_ = param3 - _loc9_;
                           _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                           _loc16_ = _loc13_.b;
                           _loc13_ = new StringBuf();
                           _loc5_.§1!R§(_loc8_,_loc16_);
                           _loc6_ = 0;
                           _loc7_ = 4;
                        }
                        break;
                     default:
                        if(_loc12_ == _loc15_)
                        {
                           _loc17_ = param3 - _loc9_;
                           _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                           _loc16_ = _loc13_.b;
                           _loc13_ = new StringBuf();
                           _loc5_.§1!R§(_loc8_,_loc16_);
                           _loc6_ = 0;
                           _loc7_ = 4;
                        }
                  }
                  break;
               case 9:
                  param3 = §%m§.§!y§(param1,param2,param3,_loc5_);
                  _loc9_ = param3;
                  _loc6_ = 1;
                  break;
               case 10:
                  if(_loc12_ >= 97 && _loc12_ <= 122 || _loc12_ >= 65 && _loc12_ <= 90 || _loc12_ >= 48 && _loc12_ <= 57 || _loc12_ == 58 || _loc12_ == 46 || _loc12_ == 95 || _loc12_ == 45)
                  {
                     break;
                  }
                  if(_loc9_ == param3)
                  {
                     Boot.lastError = new Error();
                     throw new §&S§("Expected node name",param1,param3);
                  }
                  _loc16_ = param1.substr(_loc9_,param3 - _loc9_);
                  if(param4.§8! § != §,l§.§=!D§)
                  {
                     Boot.lastError = new Error();
                     throw "Bad node type, expected Element but found " + param4.§8! §;
                  }
                  if(_loc16_ != param4.§?;§)
                  {
                     if(param4.§8! § != §,l§.§=!D§)
                     {
                        Boot.lastError = new Error();
                        throw "Bad node type, expected Element but found " + param4.§8! §;
                     }
                     Boot.lastError = new Error();
                     throw new §&S§("Expected </" + param4.§?;§ + ">",param1,param3);
                  }
                  _loc6_ = 0;
                  _loc7_ = 12;
                  continue;
               case 11:
                  if(_loc12_ == 62)
                  {
                     _loc6_ = 1;
                     break;
                  }
                  Boot.lastError = new Error();
                  throw new §&S§("Expected >",param1,param3);
                  break;
               case 13:
                  if(_loc12_ == 60)
                  {
                     _loc17_ = param3 - _loc9_;
                     _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                     _loc18_ = §,l§.§>R§(_loc13_.b);
                     _loc13_ = new StringBuf();
                     param4.addChild(_loc18_);
                     _loc10_++;
                     _loc6_ = 0;
                     _loc7_ = 2;
                     break;
                  }
                  if(_loc12_ == 38)
                  {
                     _loc17_ = param3 - _loc9_;
                     _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                     _loc6_ = 18;
                     _loc14_ = 13;
                     _loc9_ = param3 + 1;
                  }
                  break;
               case 14:
                  if(_loc12_ == 63 && int(param1.charCodeAt(param3 + 1)) == 62)
                  {
                     param3++;
                     _loc16_ = param1.substr(_loc9_ + 1,param3 - _loc9_ - 2);
                     param4.addChild(§,l§.§[M§(_loc16_));
                     _loc10_++;
                     _loc6_ = 1;
                  }
                  break;
               case 15:
                  if(_loc12_ == 45 && int(param1.charCodeAt(param3 + 1)) == 45 && int(param1.charCodeAt(param3 + 2)) == 62)
                  {
                     param4.addChild(§,l§.§&!8§(param1.substr(_loc9_,param3 - _loc9_)));
                     _loc10_++;
                     param3 += 2;
                     _loc6_ = 1;
                  }
                  break;
               case 16:
                  if(_loc12_ == 91)
                  {
                     _loc11_++;
                     break;
                  }
                  if(_loc12_ == 93)
                  {
                     _loc11_--;
                     break;
                  }
                  if(_loc12_ == 62 && _loc11_ == 0)
                  {
                     param4.addChild(§,l§.§%!_§(param1.substr(_loc9_,param3 - _loc9_)));
                     _loc10_++;
                     _loc6_ = 1;
                  }
                  break;
               case 17:
                  if(_loc12_ == 93 && int(param1.charCodeAt(param3 + 1)) == 93 && int(param1.charCodeAt(param3 + 2)) == 62)
                  {
                     _loc18_ = §,l§.§^x§(param1.substr(_loc9_,param3 - _loc9_));
                     param4.addChild(_loc18_);
                     _loc10_++;
                     param3 += 2;
                     _loc6_ = 1;
                  }
                  break;
               case 18:
                  if(_loc12_ == 59)
                  {
                     _loc16_ = param1.substr(_loc9_,param3 - _loc9_);
                     if(int(_loc16_.charCodeAt(0)) == 35)
                     {
                        _loc17_ = int(_loc16_.charCodeAt(1)) == 120 ? Std.parseInt("0" + _loc16_.substr(1,_loc16_.length - 1)) : Std.parseInt(_loc16_.substr(1,_loc16_.length - 1));
                        _loc13_.b += String.fromCharCode(int(_loc17_));
                     }
                     else
                     {
                        _loc19_ = §%m§.§5E§;
                        if(!(_loc16_ in StringMap.§+!#§ ? _loc19_.existsReserved(_loc16_) : _loc16_ in _loc19_.h))
                        {
                           if(param2)
                           {
                              Boot.lastError = new Error();
                              throw new §&S§("Undefined entity: " + _loc16_,param1,param3);
                           }
                           _loc13_.b += Std.string("&" + _loc16_ + ";");
                        }
                        else
                        {
                           _loc20_ = §%m§.§5E§;
                           _loc21_ = _loc16_ in StringMap.§+!#§ ? _loc20_.getReserved(_loc16_) : _loc20_.h[_loc16_];
                           _loc13_.b += Std.string(_loc21_);
                        }
                     }
                     _loc9_ = param3 + 1;
                     _loc6_ = _loc14_;
                     break;
                  }
                  if(!(_loc12_ >= 97 && _loc12_ <= 122 || _loc12_ >= 65 && _loc12_ <= 90 || _loc12_ >= 48 && _loc12_ <= 57 || _loc12_ == 58 || _loc12_ == 46 || _loc12_ == 95 || _loc12_ == 45) && _loc12_ != 35)
                  {
                     if(param2)
                     {
                        Boot.lastError = new Error();
                        throw new §&S§("Invalid character in entity: " + String.fromCharCode(_loc12_),param1,param3);
                     }
                     _loc13_.b += "&";
                     _loc17_ = param3 - _loc9_;
                     _loc13_.b += _loc17_ == null ? param1.substr(_loc9_) : param1.substr(_loc9_,_loc17_);
                     _loc9_ = param3--;
                     _loc6_ = _loc14_;
                  }
                  break;
               case 12:
                  if(_loc12_ == 62)
                  {
                     if(_loc10_ == 0)
                     {
                        param4.addChild(§,l§.§>R§(""));
                     }
                     return param3;
                  }
                  Boot.lastError = new Error();
                  throw new §&S§("Expected >",param1,param3);
            }
            _loc12_ = int(param1.charCodeAt(++param3));
         }
         Boot.lastError = new Error();
         throw new §&S§("Expected \"",param1,param3);
      }
   }
}

