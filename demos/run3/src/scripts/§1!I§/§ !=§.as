package §1!I§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   
   public class § !=§
   {
      
      public var z:int;
      
      public var x:int;
      
      public var §%!0§:Boolean;
      
      public function § !=§(param1:int, param2:int)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            x = param1;
            if(!_loc4_)
            {
               z = param2;
               if(!_loc4_)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§%!0§));
                     if(!_loc4_)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           if(param1 == 0)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        §§pop();
                     }
                     §§push(param2 == 0);
                     if(_loc3_)
                     {
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                     break;
                  }
                  §§pop().§%!0§ = §§pop();
               }
            }
         }
      }
   }
}

