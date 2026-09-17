package §6!E§
{
   import flash.Boot;
   
   public class §5H§
   {
      
      public var §]+§:Boolean;
      
      public var §=!S§:StringBuf = new StringBuf();
      
      public function §5H§(param1:Boolean)
      {
         §]+§ = param1;
      }
      
      public static function §1?§(param1:§,l§, param2:Object = undefined) : String
      {
         if(param2 == null)
         {
            param2 = false;
         }
         var _loc3_:§5H§ = new §5H§(param2);
         _loc3_.§`!V§(param1,"");
         return _loc3_.§=!S§.b;
      }
      
      public function §`!V§(param1:§,l§, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null as String;
         var _loc6_:* = null as String;
         var _loc7_:* = null as §,l§;
         var _loc3_:int = param1.§8! §;
         switch(_loc3_)
         {
            case 0:
               _temp_1.b += Std.string(param2 + "<");
               if(param1.§8! § != §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, expected Element but found " + param1.§8! §;
               }
               _temp_2.b += Std.string(param1.§?;§);
               _loc4_ = param1.§7!#§();
               while(Boolean(_loc4_.hasNext()))
               {
                  _loc5_ = _loc4_.next();
                  _temp_3.b += Std.string(" " + _loc5_ + "=\"");
                  _loc6_ = StringTools.§#!$§(param1.get(_loc5_),true);
                  _temp_4.b += Std.string(_loc6_);
                  _temp_5.b += "\"";
               }
               if(§3!"§(param1))
               {
                  _temp_6.b += ">";
                  if(§]+§)
                  {
                     _temp_7.b += "\n";
                  }
                  if(param1.§8! § != §,l§.§@!P§ && param1.§8! § != §,l§.§=!D§)
                  {
                     Boot.lastError = new Error();
                     throw "Bad node type, expected Element or Document but found " + param1.§8! §;
                  }
                  _loc4_ = param1.§@!`§.iterator();
                  while(Boolean(_loc4_.hasNext()))
                  {
                     _loc7_ = _loc4_.next();
                     §`!V§(_loc7_,§]+§ ? param2 + "\t" : param2);
                  }
                  _temp_8.b += Std.string(param2 + "</");
                  if(param1.§8! § != §,l§.§=!D§)
                  {
                     Boot.lastError = new Error();
                     throw "Bad node type, expected Element but found " + param1.§8! §;
                  }
                  _temp_9.b += Std.string(param1.§?;§);
                  _temp_10.b += ">";
                  if(§]+§)
                  {
                     _temp_11.b += "\n";
                  }
                  break;
               }
               _temp_12.b += "/>";
               if(§]+§)
               {
                  _temp_13.b += "\n";
               }
               break;
            case 1:
               if(param1.§8! § == §,l§.§@!P§ || param1.§8! § == §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, unexpected " + param1.§8! §;
               }
               _loc5_ = param1.§#p§;
               if(_loc5_.length != 0)
               {
                  _loc6_ = param2 + StringTools.§#!$§(_loc5_);
                  _temp_14.b += Std.string(_loc6_);
                  if(§]+§)
                  {
                     _temp_15.b += "\n";
                  }
               }
               break;
            case 2:
               _temp_16.b += Std.string(param2 + "<![CDATA[");
               if(param1.§8! § == §,l§.§@!P§ || param1.§8! § == §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, unexpected " + param1.§8! §;
               }
               _loc5_ = StringTools.§"9§(param1.§#p§);
               _temp_17.b += Std.string(_loc5_);
               _temp_18.b += "]]>";
               if(§]+§)
               {
                  _temp_19.b += "\n";
               }
               break;
            case 3:
               if(param1.§8! § == §,l§.§@!P§ || param1.§8! § == §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, unexpected " + param1.§8! §;
               }
               _loc5_ = param1.§#p§;
               _loc5_ = new EReg("[\n\r\t]+","g").replace(_loc5_,"");
               _loc5_ = "<!--" + _loc5_ + "-->";
               var _temp_20:* = §=!S§;
               _temp_20.b += param2 == null ? "null" : "" + param2;
               _loc6_ = StringTools.§"9§(_loc5_);
               _temp_21.b += Std.string(_loc6_);
               if(§]+§)
               {
                  _temp_22.b += "\n";
               }
               break;
            case 4:
               if(param1.§8! § == §,l§.§@!P§ || param1.§8! § == §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, unexpected " + param1.§8! §;
               }
               _temp_23.b += Std.string("<!DOCTYPE " + param1.§#p§ + ">");
               if(§]+§)
               {
                  _temp_24.b += "\n";
               }
               break;
            case 5:
               if(param1.§8! § == §,l§.§@!P§ || param1.§8! § == §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, unexpected " + param1.§8! §;
               }
               _temp_25.b += Std.string("<?" + param1.§#p§ + "?>");
               if(§]+§)
               {
                  _temp_26.b += "\n";
               }
               break;
            case 6:
               if(param1.§8! § != §,l§.§@!P§ && param1.§8! § != §,l§.§=!D§)
               {
                  Boot.lastError = new Error();
                  throw "Bad node type, expected Element or Document but found " + param1.§8! §;
               }
               _loc4_ = param1.§@!`§.iterator();
               while(Boolean(_loc4_.hasNext()))
               {
                  _loc7_ = _loc4_.next();
                  §`!V§(_loc7_,param2);
               }
         }
      }
      
      public function §3!"§(param1:§,l§) : Boolean
      {
         var _loc3_:* = null as §,l§;
         var _loc4_:int = 0;
         if(param1.§8! § != §,l§.§@!P§ && param1.§8! § != §,l§.§=!D§)
         {
            Boot.lastError = new Error();
            throw "Bad node type, expected Element or Document but found " + param1.§8! §;
         }
         var _loc2_:* = param1.§@!`§.iterator();
         loop0:
         while(true)
         {
            if(!Boolean(_loc2_.hasNext()))
            {
               return false;
            }
            _loc3_ = _loc2_.next();
            _loc4_ = _loc3_.§8! §;
            switch(_loc4_)
            {
               case 0:
               case 1:
                  break loop0;
               case 2:
               case 3:
                  if(_loc3_.§8! § == §,l§.§@!P§ || _loc3_.§8! § == §,l§.§=!D§)
                  {
                     Boot.lastError = new Error();
                     throw "Bad node type, unexpected " + _loc3_.§8! §;
                  }
                  if(StringTools.§4j§(_loc3_.§#p§).length != 0)
                  {
                     return true;
                  }
            }
         }
         return true;
      }
   }
}

