package §%!Z§
{
   import §&%§.§@w§;
   import game.§&!K§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import flash.display.Shape;
   
   public class §^U§ extends Shape
   {
      
      public static var §5!<§:Number = 60;
      
      public static var §7y§:Number = 4.8;
      
      public static var §!r§:Number = 6.4;
      
      public static var §@!2§:Number = 0.435;
      
      public var scale:§38§;
      
      public var §4m§:Boolean;
      
      public var §[!>§:int;
      
      public var §7s§:Object;
      
      public var bubble2:§ 7§;
      
      public var bubble1:§`! §;
      
      public function §^U§(param1:§`! §, param2:§ 7§, param3:Boolean = false, param4:§38§ = undefined)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §7s§ = null;
         while(true)
         {
            if(!_loc7_)
            {
               §[!>§ = 16777215;
               if(!_loc6_)
               {
                  break;
               }
            }
            super();
            bubble1 = param1;
            if(_loc6_)
            {
               bubble2 = param2;
            }
            §4m§ = param3;
            while(true)
            {
               §§push(§§findproperty(scale));
               if(_loc6_)
               {
                  if(param4 == null)
                  {
                     §§push(§&d§.§1$§().scale);
                     break;
                  }
               }
               §§push(param4);
               break;
            }
            §§pop().scale = §§pop();
            break;
         }
         §§push(§6;§);
         if(!_loc7_)
         {
            §§push(§§pop());
            if(_loc6_)
            {
               §§push(§§pop());
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            §&d§.§1$§().§6"§.push(new §#!7§(null,null,new §#!6§(_loc5_)));
            if(_loc6_)
            {
               _loc5_();
            }
         }
      }
      
      public function §6;§() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2470
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}

