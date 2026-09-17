package §"!L§
{
   import §%!Q§.§ !N§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§,a§;
   import flash.Boot;
   import flash.display.Sprite;
   
   public final class §%z§
   {
      
      public static const __isenum:Boolean = true;
      
      public static var __constructs__:Array = ["LEVEL","LEVEL_WITH_CHARACTER","MODE","MODE_WITH_CHARACTER","MENU"];
      
      public var tag:String;
      
      public var index:int;
      
      public var params:Array;
      
      public const __enum__:Boolean = true;
      
      public function §%z§(param1:String, param2:int, param3:Array)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            tag = param1;
            while(true)
            {
               if(_loc5_)
               {
                  index = param2;
                  if(_loc4_)
                  {
                     break;
                  }
               }
               params = param3;
               break;
            }
         }
      }
      
      public static function LEVEL(param1:§ !N§) : §%z§
      {
         return new §%z§("LEVEL",0,[param1]);
      }
      
      public static function LEVEL_WITH_CHARACTER(param1:§ !N§, param2:CharacterDef) : §%z§
      {
         return new §%z§("LEVEL_WITH_CHARACTER",1,[param1,param2]);
      }
      
      public static function MENU(param1:Sprite) : §%z§
      {
         return new §%z§("MENU",4,[param1]);
      }
      
      public static function MODE(param1:§,a§) : §%z§
      {
         return new §%z§("MODE",2,[param1]);
      }
      
      public static function MODE_WITH_CHARACTER(param1:§,a§, param2:CharacterDef) : §%z§
      {
         return new §%z§("MODE_WITH_CHARACTER",3,[param1,param2]);
      }
      
      final public function toString() : String
      {
         return Boot.enum_to_string(this);
      }
   }
}

