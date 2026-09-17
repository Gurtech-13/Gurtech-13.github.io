package scenes
{
   import flash.Boot;
   
   public final class §+!"§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var ALWAYS:§+!"§ = new §+!"§("ALWAYS",1,null);
      
      public static var IF_CUTSCENE_LEVEL_COMPLETE:§+!"§ = new §+!"§("IF_CUTSCENE_LEVEL_COMPLETE",4,null);
      
      public static var IF_CUTSCENE_LEVEL_REACHED:§+!"§ = new §+!"§("IF_CUTSCENE_LEVEL_REACHED",3,null);
      
      public static var IF_FOLLOWING_LEVEL_REACHED:§+!"§ = new §+!"§("IF_FOLLOWING_LEVEL_REACHED",5,null);
      
      public static var IF_SHOWN:§+!"§ = new §+!"§("IF_SHOWN",2,null);
      
      public static var NEVER:§+!"§ = new §+!"§("NEVER",0,null);
      
      public static var __constructs__:Array = ["NEVER","ALWAYS","IF_SHOWN","IF_CUTSCENE_LEVEL_REACHED","IF_CUTSCENE_LEVEL_COMPLETE","IF_FOLLOWING_LEVEL_REACHED","CUSTOM"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §+!"§(param1:String, param2:int, param3:Array)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               tag = param1;
               if(!_loc5_)
               {
                  break;
               }
            }
            index = param2;
            if(_loc5_)
            {
               break;
            }
            §§goto(addr003f);
         }
         params = param3;
         addr003f:
      }
      
      public static function CUSTOM(param1:Function) : §+!"§
      {
         return new §+!"§("CUSTOM",6,[param1]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

