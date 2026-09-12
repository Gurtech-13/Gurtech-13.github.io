package nme3D.shader
{
   import §+!1§.§[!9§;
   import nme3D.shader.vertex.PositionUVVertex;
   
   public class §^&§
   {
      
      public function §^&§()
      {
      }
      
      public static function §1r§(param1:§[!9§) : §'H§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(§§findproperty(§'H§));
            §§push("m44 op, va0, vc0\n");
            if(_loc4_)
            {
               §§push("mov v0, va1");
               if(_loc3_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
               }
            }
            §§push("tex oc, v0, fs0 <2d, linear, nomip>");
            break;
         }
         var _loc2_:§'H§ = new §§pop().§'H§(§§pop(),§§pop(),PositionUVVertex);
         if(!_loc3_)
         {
            _loc2_.§^N§(0,param1);
         }
         return _loc2_;
      }
   }
}

