package §%!Z§
{
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import scenes.CrossingTheGap;
   import stage.StageActor;
   import com.player03.run3.level.Level;
   
   public class §@!a§ extends §`! §
   {
      
      public function §@!a§(param1:String, param2:Number, param3:Object = undefined)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function §-!I§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            graphics.clear();
            if(!_loc4_)
            {
               graphics.beginFill(§[!>§);
            }
         }
         §§push(§-7§.width * 0.1);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§-7§.height * 0.1);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         graphics.drawRoundRect(0,0,§-7§.width,§-7§.height,_loc1_ < _loc2_ ? _loc1_ : _loc2_);
         while(true)
         {
            if(!_loc4_)
            {
               graphics.endFill();
               if(!_loc3_)
               {
                  break;
               }
            }
            width = §-7§.width;
            height = §-7§.height;
            if(!_loc4_)
            {
               §-7§.x = 0;
            }
            break;
         }
         §-7§.y = 0;
      }
   }
}

