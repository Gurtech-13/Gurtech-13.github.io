package com.player03.run3.api
{
   import §1^§.Transform;
   import §6!Q§.§'!E§;
   import §6[§.§`!O§;
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§4!^§;
   import flash.Boot;
   import nme3D.model.§,T§;
   
   public class DevMessage extends §-Q§ implements §+<§
   {
      
      public static var instance:DevMessage;
      
      public var §5!P§:String;
      
      public function DevMessage()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §§push(this);
               §§push("DevMessage");
               §§push(null);
               §§push(§-Q§.§ !M§);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(§&1§);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),§§pop());
               if(!_loc2_)
               {
                  break;
               }
            }
            new §4!^§("DevMessage").§4Z§(this);
            break;
         }
      }
      
      public static function §@!A§() : DevMessage
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as DevMessage;
         if(_loc3_)
         {
            if(DevMessage.instance != null)
            {
               return DevMessage.instance;
            }
         }
         return DevMessage.instance = new DevMessage();
      }
      
      public function §&1§(param1:String, param2:String) : String
      {
         return null;
      }
      
      override public function §;r§(param1:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               if(_loc2_ == §5!P§)
               {
                  break;
               }
               if(_loc3_)
               {
                  §5!P§ = _loc2_;
                  if(_loc4_)
                  {
                     break;
                  }
                  §'!E§.§@!A§().§>!W§(§5!P§);
                  if(_loc4_)
                  {
                     break;
                  }
                  PlayFabAPI.§@!A§().§2B§(§;!U§);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §0!#§.§@!A§().§,?§();
            break;
         }
      }
   }
}

