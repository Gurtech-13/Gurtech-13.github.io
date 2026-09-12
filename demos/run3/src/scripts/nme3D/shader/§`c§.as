package nme3D.shader
{
   import §+!1§.§[!9§;
   import nme3D.shader.vertex.PositionUVAlphaVertex;
   
   public class §`c§
   {
      
      public function §`c§()
      {
      }
      
      public static function §1r§(param1:§[!9§) : §'H§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(§§findproperty(§'H§));
            §§push("m44 op, va0, vc0\n");
            if(_loc3_)
            {
               §§push(§§pop() + "mov v0, va1\n");
               if(_loc4_)
               {
                  break;
               }
               §§push(§§pop());
               if(!_loc3_)
               {
                  break;
               }
               §§push(§§pop() + "mov v0.z, va2.x");
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         §§push("tex ft1, v0.xy, fs0 <2d, linear, nomip>\n");
         §§push("mul ft1.w, ft1.w, v0.z\n");
         if(!_loc4_)
         {
            §§push(§§pop() + §§pop());
            §§push("mov oc, ft1");
         }
         var _loc2_:§'H§ = new §§pop().§'H§(§§pop(),§§pop() + §§pop(),PositionUVAlphaVertex);
         if(!_loc4_)
         {
            _loc2_.§^N§(0,param1);
         }
         return _loc2_;
      }
   }
}

