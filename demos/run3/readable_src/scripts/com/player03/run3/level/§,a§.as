package com.player03.run3.level
{
   import flash.Boot;
   
   public final class §,a§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var CHALLENGE:§,a§ = new §,a§("CHALLENGE",6,null);
      
      public static var CUTSCENE:§,a§ = new §,a§("CUTSCENE",5,null);
      
      public static var EDIT:§,a§ = new §,a§("EDIT",2,null);
      
      public static var EXPLORE:§,a§ = new §,a§("EXPLORE",0,null);
      
      public static var INFINITE:§,a§ = new §,a§("INFINITE",1,null);
      
      public static var PLAYTEST:§,a§ = new §,a§("PLAYTEST",3,null);
      
      public static var SHARED_CONTENT:§,a§ = new §,a§("SHARED_CONTENT",4,null);
      
      public static var __constructs__:Array = ["EXPLORE","INFINITE","EDIT","PLAYTEST","SHARED_CONTENT","CUTSCENE","CHALLENGE"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §,a§(param1:String, param2:int, param3:Array)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               tag = param1;
               if(!_loc4_)
               {
                  break;
               }
            }
            index = param2;
            if(!_loc5_)
            {
               params = param3;
            }
            break;
         }
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

