package
{
   import flash.Boot;
   
   public class EReg
   {
      
      public var result:*;
      
      public var r:RegExp;
      
      public function EReg(param1:String, param2:String)
      {
         r = new RegExp(param1,param2);
      }
      
      public function split(param1:String) : Array
      {
         var _loc2_:String = "#__delim__#";
         var _loc3_:String = param1.replace(r,_loc2_);
         return _loc3_.split(_loc2_);
      }
      
      public function replace(param1:String, param2:String) : String
      {
         return param1.replace(r,param2);
      }
      
      public function matchedRight() : String
      {
         if(result == null)
         {
            Boot.lastError = new Error();
            throw "No string matched";
         }
         var _loc1_:int = int(result["index"]) + result[0].length;
         var _loc2_:String = result.input;
         return _loc2_.substr(_loc1_,_loc2_.length - _loc1_);
      }
      
      public function matchedPos() : Object
      {
         if(result == null)
         {
            Boot.lastError = new Error();
            throw "No string matched";
         }
         return {
            "pos":int(result["index"]),
            "len":result[0].length
         };
      }
      
      public function §&f§() : String
      {
         if(result == null)
         {
            Boot.lastError = new Error();
            throw "No string matched";
         }
         var _loc1_:String = result.input;
         return _loc1_.substr(0,result["index"]);
      }
      
      public function matched(param1:int) : String
      {
         if(result != null && param1 >= 0 && param1 < int(result.length))
         {
            return result[param1];
         }
         Boot.lastError = new Error();
         throw "EReg::matched";
      }
      
      public function match(param1:String) : Boolean
      {
         if(r.global)
         {
            r.lastIndex = 0;
         }
         result = r.exec(param1);
         return result != null;
      }
   }
}

