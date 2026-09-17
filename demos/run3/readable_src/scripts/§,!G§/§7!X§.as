package §,!G§
{
   import haxeutils.math.§%@§;
   
   public class §7!X§ extends §6!7§
   {
      
      public var §'!<§:§%@§;
      
      public function §7!X§(param1:Number, param2:Number, param3:§%@§)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc4_)
            {
               §'!<§ = param3;
            }
         }
      }
      
      override public function §[!$§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(super.§[!$§(Number(§'!<§.§[=§(param1))));
         if(_loc2_)
         {
            return Number(§§pop());
         }
      }
      
      override public function §7!8§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§'!<§);
         §§push(super.§7!8§(param1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         return Number(§§pop().inverse(§§pop()));
      }
   }
}

