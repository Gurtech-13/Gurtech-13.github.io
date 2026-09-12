package nme3D.shader
{
   import com.player03.analytics.§8!3§;
   import nme3D.shader.vertex.PositionColorAlphaVertex;
   
   public class §!-§
   {
      
      public static var §1Z§:§'H§;
      
      public static var §2k§:§'H§;
      
      public function §!-§()
      {
      }
      
      public static function §7!P§() : §'H§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§!-§.§1Z§ == null)
         {
            if(_loc2_)
            {
               §!-§.§1Z§ = §!-§.§1r§(true);
            }
         }
         return §!-§.§1Z§;
      }
      
      public static function §^L§() : §'H§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§!-§.§2k§ == null)
         {
            if(_loc2_)
            {
               §!-§.§2k§ = §!-§.§1r§(false);
            }
         }
         return §!-§.§2k§;
      }
      
      public static function §1r§(param1:Boolean) : §'H§
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(§§findproperty(§'H§));
                     §§push("m44 vt0, va0, vc0\n");
                     §§push("mov op, vt0\n");
                     if(_loc3_)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + "mov vt1, va1\n");
                                    if(_loc4_)
                                    {
                                       break loop0;
                                    }
                                    §§push(§§pop() + "mov vt1.w, va2.x\n");
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    §§push("sub vt2.z, vc4.z, vt0.z\n");
                                    if(!_loc3_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_)
                                    {
                                       break loop4;
                                    }
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§push("div vt2.z, vt2.z, vc4.z\n");
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       break loop4;
                                    }
                                    break loop0;
                                 }
                                 break loop5;
                              }
                              §§goto(addr0097);
                           }
                        }
                        §§push("mul vt2.z, vt2.z, vc4.y\n");
                        if(_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 addr0097:
                                 §§push("add vt2.z, vt2.z, vc4.x\n");
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                              }
                           }
                           §§push("mul vt1.xyz, vt1.xyz, vt2.z\n");
                        }
                     }
                     break loop5;
                  }
                  §§goto(addr00bc);
               }
               §§push(§§pop() + §§pop());
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               break loop0;
            }
            addr00bc:
            §§push(§§pop());
            §§push("mov v0, vt1");
            break loop2;
         }
         var _loc2_:§'H§ = new §§pop().§'H§(§§pop(),"mov oc, v0",PositionColorAlphaVertex);
         if(!_loc4_)
         {
            §<!9§.§'%§(_loc2_,param1);
         }
         return _loc2_;
      }
   }
}

