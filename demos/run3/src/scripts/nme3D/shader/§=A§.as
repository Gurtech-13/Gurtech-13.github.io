package nme3D.shader
{
   import §+!1§.§[!9§;
   import §3!b§.Cutscenes;
   import §3!b§.Wait;
   import nme3D.shader.vertex.PositionUVVertex;
   
   public class §=A§
   {
      
      public function §=A§()
      {
      }
      
      public static function §1r§(param1:§[!9§, param2:Object = undefined) : §'H§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(param2 == null)
         {
            param2 = true;
         }
         §§push(§§findproperty(§'H§));
         §§push("m44 vt0, va0, vc0\n" + "mov op, vt0\n");
         §§push("mov vt1, va1\n");
         if(!_loc5_)
         {
            §§push(§§pop() + §§pop() + "sub vt2.z, vc4.z, vt0.z\n" + "div vt1.z, vt2.z, vc4.z\n");
            §§push("mul vt1.z, vt1.z, vc4.y\n");
         }
         §§push(§§pop() + §§pop());
         §§push("add vt1.z, vt1.z, vc4.x\n");
         if(!_loc5_)
         {
            §§push(§§pop() + §§pop());
            if(_loc4_)
            {
               §§push(§§pop() + "mov v0, vt1");
               if(!_loc5_)
               {
                  §§push(§§pop());
               }
            }
            §§push("tex ft0, v0, fs0 <2d, linear, nomip>\n");
         }
         §§push("mul ft0.xyz, ft0.xyz, v0.z\n");
         if(!_loc5_)
         {
            §§push(§§pop() + §§pop());
            §§push("mov oc, ft0");
         }
         var _loc3_:§'H§ = new §§pop().§'H§(§§pop(),§§pop() + §§pop(),PositionUVVertex);
         while(true)
         {
            if(_loc4_)
            {
               §<!9§.§'%§(_loc3_,param2);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc3_.§^N§(0,param1);
            break;
         }
         return _loc3_;
      }
   }
}

