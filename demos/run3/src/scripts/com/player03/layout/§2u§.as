package com.player03.layout
{
   import flash.Boot;
   
   public final class §2u§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var BOTTOM:§2u§ = new §2u§("BOTTOM",3,null);
      
      public static var LEFT:§2u§ = new §2u§("LEFT",0,null);
      
      public static var RIGHT:§2u§ = new §2u§("RIGHT",1,null);
      
      public static var TOP:§2u§ = new §2u§("TOP",2,null);
      
      public static var __constructs__:Array = ["LEFT","RIGHT","TOP","BOTTOM"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §2u§(param1:String, param2:int, param3:Array)
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

