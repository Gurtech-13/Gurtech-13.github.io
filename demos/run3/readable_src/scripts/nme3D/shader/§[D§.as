package nme3D.shader
{
   import nme3D.shader.vertex.PositionColorVertex;
   
   public class §[D§
   {
      
      public static var §1Z§:§'H§;
      
      public function §[D§()
      {
      }
      
      public static function §7!P§() : §'H§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§[D§.§1Z§ == null)
         {
            if(!_loc1_)
            {
               loop0:
               while(true)
               {
                  while(true)
                  {
                     §§push(§[D§);
                     §§push(§§findproperty(§'H§));
                     §§push("m44 op, va0, vc0\n");
                     if(!_loc1_)
                     {
                        §§push("mov v0, va1");
                        if(_loc1_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§§pop());
                     break loop0;
                  }
                  §§pop().§1Z§ = new §§pop().§'H§(§§pop(),§§pop(),PositionColorVertex);
               }
               §§push("mov oc, v0");
               break loop1;
            }
         }
         return §[D§.§1Z§;
      }
   }
}

