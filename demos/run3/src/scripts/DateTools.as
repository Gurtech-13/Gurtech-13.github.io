package
{
   import flash.Boot;
   
   public class DateTools
   {
      
      public static var §%!!§:Array = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
      
      public static var §1a§:Array = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
      
      public static var §6v§:Array = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
      
      public static var §0`§:Array = ["January","February","March","April","May","June","July","August","September","October","November","December"];
      
      public function DateTools()
      {
      }
      
      public static function __format_get(param1:Date, param2:String) : String
      {
         var _loc4_:int = 0;
         var _loc3_:String = param2;
         if(_loc3_ == "%")
         {
            return "%";
         }
         if(_loc3_ == "A")
         {
            return DateTools.§1a§[int(param1.getDay())];
         }
         if(_loc3_ == "B")
         {
            return DateTools.§0`§[int(param1.getMonth())];
         }
         if(_loc3_ == "C")
         {
            return StringTools.lpad(Std.string(int(int(param1.getFullYear()) / 100)),"0",2);
         }
         if(_loc3_ == "D")
         {
            return DateTools.__format(param1,"%m/%d/%y");
         }
         if(_loc3_ == "F")
         {
            return DateTools.__format(param1,"%Y-%m-%d");
         }
         if(_loc3_ != "I")
         {
            if(_loc3_ != "l")
            {
               if(_loc3_ == "M")
               {
                  return StringTools.lpad(Std.string(int(param1.getMinutes())),"0",2);
               }
               if(_loc3_ == "R")
               {
                  return DateTools.__format(param1,"%H:%M");
               }
               if(_loc3_ == "S")
               {
                  return StringTools.lpad(Std.string(int(param1.getSeconds())),"0",2);
               }
               if(_loc3_ == "T")
               {
                  return DateTools.__format(param1,"%H:%M:%S");
               }
               if(_loc3_ == "Y")
               {
                  return Std.string(int(param1.getFullYear()));
               }
               if(_loc3_ == "a")
               {
                  return DateTools.§%!!§[int(param1.getDay())];
               }
               if(_loc3_ != "b")
               {
                  if(_loc3_ != "h")
                  {
                     if(_loc3_ == "d")
                     {
                        return StringTools.lpad(Std.string(int(param1.getDate())),"0",2);
                     }
                     if(_loc3_ == "e")
                     {
                        return Std.string(int(param1.getDate()));
                     }
                     if(_loc3_ != "H")
                     {
                        if(_loc3_ != "k")
                        {
                           if(_loc3_ == "m")
                           {
                              return StringTools.lpad(Std.string(int(param1.getMonth()) + 1),"0",2);
                           }
                           if(_loc3_ == "n")
                           {
                              return "\n";
                           }
                           if(_loc3_ == "p")
                           {
                              if(int(param1.getHours()) > 11)
                              {
                                 return "PM";
                              }
                              return "AM";
                           }
                           if(_loc3_ == "r")
                           {
                              return DateTools.__format(param1,"%I:%M:%S %p");
                           }
                           if(_loc3_ == "s")
                           {
                              return Std.string(int(Number(param1.getTime()) / 1000));
                           }
                           if(_loc3_ == "t")
                           {
                              return "\t";
                           }
                           if(_loc3_ == "u")
                           {
                              _loc4_ = int(param1.getDay());
                              if(_loc4_ == 0)
                              {
                                 return "7";
                              }
                              return "" + _loc4_;
                           }
                           if(_loc3_ == "w")
                           {
                              return Std.string(int(param1.getDay()));
                           }
                           if(_loc3_ == "y")
                           {
                              return StringTools.lpad(Std.string(int(int(param1.getFullYear()) % 100)),"0",2);
                           }
                           Boot.lastError = new Error();
                           throw "Date.format %" + param2 + "- not implemented yet.";
                        }
                     }
                     return StringTools.lpad(Std.string(int(param1.getHours())),param2 == "H" ? "0" : " ",2);
                  }
               }
               return DateTools.§6v§[int(param1.getMonth())];
            }
         }
         _loc4_ = int(int(param1.getHours()) % 12);
         return StringTools.lpad(Std.string(_loc4_ == 0 ? 12 : _loc4_),param2 == "I" ? "0" : " ",2);
      }
      
      public static function __format(param1:Date, param2:String) : String
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(true)
         {
            _loc5_ = int(param2.indexOf("%",_loc4_));
            if(_loc5_ < 0)
            {
               break;
            }
            _loc6_ = _loc5_ - _loc4_;
            _loc3_ += _loc6_ == null ? param2.substr(_loc4_) : param2.substr(_loc4_,_loc6_);
            _loc3_ += Std.string(DateTools.__format_get(param1,param2.substr(_loc5_ + 1,1)));
            _loc4_ = _loc5_ + 2;
         }
         _loc6_ = param2.length - _loc4_;
         return _loc3_ + (_loc6_ == null ? param2.substr(_loc4_) : param2.substr(_loc4_,_loc6_));
      }
      
      public static function format(param1:Date, param2:String) : String
      {
         return DateTools.__format(param1,param2);
      }
   }
}

