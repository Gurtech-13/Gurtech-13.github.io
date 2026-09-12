package §%!Q§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class § !N§
   {
      
      public var §1!R§:§ !>§;
      
      public var §+!=§:int;
      
      public function § !N§(param1:§ !>§, param2:int)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §1!R§ = param1;
            if(!_loc4_)
            {
               §+!=§ = param2;
            }
         }
      }
      
      public function §3<§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               if(§+!=§ >= 0)
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§+!=§));
            §§push(§+!=§);
            if(_loc1_)
            {
               §§push(§§pop() + §1!R§.levelCount);
            }
            §§pop().§+!=§ = §§pop();
            break;
         }
      }
   }
}

