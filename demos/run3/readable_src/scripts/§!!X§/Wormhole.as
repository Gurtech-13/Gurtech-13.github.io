package §!!X§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§`! §;
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §-!!§.§&!;§;
   import scenes.§+Z§;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import nme3D.model.§4!O§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§^&§;
   import nme3D.shader.vertex.PositionUVVertex;
   
   public class Wormhole extends §6!%§
   {
      
      public function Wormhole(param1:Object = undefined)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            §§push(0.1);
            if(!_loc9_)
            {
               param1 = §§pop();
               break;
            }
            §§goto(addr0033);
         }
         addr0033:
         param1 = §§pop();
         var _loc2_:§!!V§ = Type.createInstance(PositionUVVertex,[4,null]);
         var _loc3_:§!!V§ = _loc2_;
         if(_loc8_)
         {
            §§push(_loc3_);
            §§push(_loc3_.§5G§);
            if(!_loc9_)
            {
               §§push(§§pop() * 0);
            }
            §§pop().offset = §§pop();
         }
         var _loc4_:PositionUVVertex = _loc3_;
         if(_loc8_)
         {
            _loc4_.§+R§.offset = _loc4_.offset;
         }
         var _loc5_:§=s§ = _loc4_.§+R§;
         §§push(-param1);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(-param1);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(_loc5_.§@!Y§);
            §§push(_loc5_.offset);
            if(_loc8_)
            {
               §§push(§§pop() + 1);
            }
            §§pop()[§§pop()] = _loc7_;
            if(!_loc9_)
            {
               break;
            }
            §§goto(addr010a);
         }
         while(true)
         {
            §§push(_loc5_.§@!Y§);
            §§push(_loc5_.offset);
            if(_loc8_)
            {
               §§push(2);
               if(_loc9_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
            }
            §§push(0);
            break;
         }
         §§pop()[§§pop()] = §§pop();
         if(_loc8_)
         {
            §§push(_loc4_.§+R§);
            §§push(_loc4_.offset);
            if(!_loc9_)
            {
               §§push(§§pop() + 3);
            }
            §§pop().offset = §§pop();
         }
         addr010a:
         _loc5_ = _loc4_.§+R§;
         while(true)
         {
            if(_loc8_)
            {
               _loc5_.§@!Y§[_loc5_.offset] = 0;
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(_loc5_.§@!Y§);
                     §§push(_loc5_.offset);
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
                     break;
                  }
               }
            }
            _loc3_.offset = _loc3_.§5G§;
            break;
         }
         _loc4_ = _loc3_;
         if(!_loc9_)
         {
            _loc4_.§+R§.offset = _loc4_.offset;
         }
         _loc5_ = _loc4_.§+R§;
         while(true)
         {
            if(_loc8_)
            {
               while(true)
               {
                  §§push(Number(param1));
                  if(_loc8_)
                  {
                     _loc6_ = §§pop();
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(-param1);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc7_ = §§pop();
                  break;
               }
               _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
               §§push(_loc5_.§@!Y§);
               §§push(_loc5_.offset);
               if(_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop()[§§pop()] = _loc7_;
               while(true)
               {
                  §§push(_loc5_.§@!Y§);
                  §§push(_loc5_.offset);
                  if(_loc8_)
                  {
                     §§push(2);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(0);
                  break;
               }
               §§pop()[§§pop()] = §§pop();
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(_loc4_.§+R§);
            §§push(_loc4_.offset);
            if(_loc8_)
            {
               §§push(§§pop() + 3);
            }
            §§pop().offset = §§pop();
            break;
         }
         _loc5_ = _loc4_.§+R§;
         while(true)
         {
            if(_loc8_)
            {
               _loc5_.§@!Y§[_loc5_.offset] = 1;
               if(!_loc8_)
               {
                  break;
               }
               while(true)
               {
                  §§push(_loc5_.§@!Y§);
                  §§push(_loc5_.offset);
                  if(_loc8_)
                  {
                     §§push(1);
                     if(_loc9_)
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
                  break;
               }
            }
            §§push(_loc3_);
            §§push(_loc3_.§5G§);
            if(_loc8_)
            {
               §§push(§§pop() * 2);
            }
            §§pop().offset = §§pop();
            break;
         }
         _loc4_ = _loc3_;
         if(_loc8_)
         {
            _loc4_.§+R§.offset = _loc4_.offset;
         }
         _loc5_ = _loc4_.§+R§;
         while(true)
         {
            §§push(-param1);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  break;
               }
            }
            _loc6_ = §§pop();
            §§push(Number(param1));
            break;
         }
         _loc7_ = §§pop();
         _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
         if(_loc8_)
         {
            §§push(_loc5_.§@!Y§);
            §§push(_loc5_.offset);
            if(!_loc9_)
            {
               §§push(§§pop() + 1);
            }
            §§pop()[§§pop()] = _loc7_;
         }
         while(true)
         {
            §§push(_loc5_.§@!Y§);
            §§push(_loc5_.offset);
            if(_loc8_)
            {
               §§push(2);
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
         §§push(_loc4_.§+R§);
         §§push(_loc4_.offset);
         if(!_loc9_)
         {
            §§push(§§pop() + 3);
         }
         §§pop().offset = §§pop();
         _loc5_ = _loc4_.§+R§;
         if(_loc8_)
         {
            _loc5_.§@!Y§[_loc5_.offset] = 0;
            while(true)
            {
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(_loc5_.§@!Y§);
                     §§push(_loc5_.offset);
                     if(!_loc9_)
                     {
                        §§push(1);
                        if(_loc9_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(1);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc3_);
               §§push(_loc3_.§5G§);
               if(_loc8_)
               {
                  §§push(§§pop() * 3);
               }
               §§pop().offset = §§pop();
               break;
            }
         }
         _loc4_ = _loc3_;
         if(!_loc9_)
         {
            _loc4_.§+R§.offset = _loc4_.offset;
         }
         _loc5_ = _loc4_.§+R§;
         while(true)
         {
            §§push(Number(param1));
            if(!_loc9_)
            {
               _loc6_ = §§pop();
               if(_loc9_)
               {
                  break;
               }
               §§push(Number(param1));
            }
            _loc7_ = §§pop();
            _loc5_.§@!Y§[_loc5_.offset] = _loc6_;
            §§push(_loc5_.§@!Y§);
            §§push(_loc5_.offset);
            if(_loc8_)
            {
               §§push(§§pop() + 1);
            }
            §§pop()[§§pop()] = _loc7_;
            while(true)
            {
               §§push(_loc5_.§@!Y§);
               §§push(_loc5_.offset);
               if(_loc8_)
               {
                  §§push(2);
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
               }
               §§push(0);
               break;
            }
            §§pop()[§§pop()] = §§pop();
            if(_loc8_)
            {
               §§push(_loc4_.§+R§);
               §§push(_loc4_.offset);
               if(_loc8_)
               {
                  §§push(§§pop() + 3);
               }
               §§pop().offset = §§pop();
            }
            break;
         }
         _loc5_ = _loc4_.§+R§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc5_.§@!Y§[_loc5_.offset] = 1;
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(_loc5_.§@!Y§);
                     §§push(_loc5_.offset);
                     if(!_loc9_)
                     {
                        §§push(1);
                        if(_loc9_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(1);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            super(§!_§.§,K§,§!_§.§#!4§,_loc3_,§4!O§.§92§,§^&§.§1r§(§'!b§.§?!3§("Wormhole.png")));
            break;
         }
      }
   }
}

