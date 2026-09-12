package nme3D.shader
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §24§
   {
      
      public static var §1Z§:§'H§;
      
      public function §24§()
      {
      }
      
      public static function §7!P§() : §'H§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§24§.§1Z§ == null)
         {
            if(!_loc1_)
            {
               loop0:
               while(true)
               {
                  while(true)
                  {
                     §§push(§24§);
                     §§push(§§findproperty(§'H§));
                     §§push("m44 vt1, va0, vc0\n");
                     §§push("mov vt1.z, va1.x\n");
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc1_)
                        {
                           break;
                        }
                        §§push("mov op, vt1\n");
                        if(_loc1_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc1_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     §§goto(addr0075);
                  }
                  §§push("mov v0, va1.yyyy");
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr007a);
               }
               addr007a:
               §§push(§§pop() + §§pop());
               if(_loc2_)
               {
                  addr0075:
                  §§push(§§pop());
               }
               §§pop().§1Z§ = new §§pop().§'H§(§§pop(),"mov oc, v0",PositionDepthVertex);
            }
         }
         return §24§.§1Z§;
      }
      
      public static function §1;§(param1:§[!9§) : §'H§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(§§findproperty(§'H§));
            §§push("m44 vt1, va0, vc0\n");
            if(!_loc3_)
            {
               §§push(§§pop() + "mov op, vt1\n");
               if(!_loc4_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() + "mov v0, va1\n");
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§push(§§pop() + "mov v1, va2");
               break;
            }
            §§push(§§pop());
            break;
         }
         §§push("tex ft0, v0, fs0 <2d, linear, nomip>\n");
         §§push("sub ft0.w, ft0.w, v1.z\n");
         if(_loc4_)
         {
            §§push(§§pop() + §§pop());
            §§push("kil ft0.w\n");
            if(!_loc3_)
            {
               §§push(§§pop() + §§pop());
               §§push("mov oc, v1.yyyy");
            }
         }
         var _loc2_:§'H§ = new §§pop().§'H§(§§pop(),§§pop() + §§pop(),PositionUVDepthVertex);
         if(_loc4_)
         {
            _loc2_.§^N§(0,param1);
         }
         return _loc2_;
      }
      
      public static function §+H§(param1:§!!V§, param2:Number = 0, param3:Number = 0.01) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = null as §!!V§;
         var _loc6_:* = 0;
         var _loc7_:* = null as §=s§;
         var _loc4_:§'!Y§ = §2_§.§'!D§(param1,"depth");
         if(!_loc9_)
         {
            while(_loc4_.index < _loc4_.length)
            {
               _loc5_ = _loc4_.vertices;
               while(true)
               {
                  if(!_loc9_)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.§5G§);
                        if(_loc8_)
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.index);
                              if(_loc8_)
                              {
                                 var _temp_1:* = §§pop();
                                 §§push(_temp_1);
                                 §§push(_temp_1);
                                 if(!_loc9_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc6_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop() + 1);
                              break;
                           }
                           §§pop().index = §§pop();
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() * _loc6_);
                        break;
                     }
                     §§pop().offset = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(_loc4_.§+R§);
                  §§push(_loc5_.offset);
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc4_.§+^§);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
               _loc7_ = _loc4_.§+R§;
               if(_loc8_)
               {
                  _loc7_.§@!Y§[_loc7_.offset] = param2;
                  if(_loc9_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc7_.§@!Y§);
                     §§push(_loc7_.offset);
                     if(_loc8_)
                     {
                        §§push(1);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(0);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
                  if(_loc9_)
                  {
                     continue;
                  }
               }
               §§push(_loc7_.§@!Y§);
               §§push(_loc7_.offset);
               if(_loc8_)
               {
                  §§push(§§pop() + 2);
               }
               §§pop()[§§pop()] = param3;
            }
         }
      }
   }
}

