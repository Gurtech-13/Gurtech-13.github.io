package nme3D.shader
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.vertex.PositionColorAlphaVertex;
   
   public class §,8§
   {
      
      public static var §1Z§:§'H§;
      
      public function §,8§()
      {
      }
      
      public static function §7!P§() : §'H§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§,8§.§1Z§ == null)
         {
            if(!_loc2_)
            {
               loop0:
               while(true)
               {
                  §§push(§,8§);
                  §§push(§§findproperty(§'H§));
                  §§push("m44 op, va0, vc0\n");
                  if(!_loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           §§push("mov vt0.xyz, va1.xyz\n");
                           if(_loc1_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push("mov vt0.w, va2.x\n");
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc1_)
                           {
                              §§push(§§pop());
                           }
                           §§push("mov v0, vt0");
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                           break loop0;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     break loop2;
                  }
                  §§push(§§pop());
                  §§push("mov oc, v0");
                  break;
               }
               §§pop().§1Z§ = new §§pop().§'H§(§§pop(),§§pop(),PositionColorAlphaVertex);
            }
         }
         return §,8§.§1Z§;
      }
   }
}

