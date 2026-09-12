package §!!X§
{
   import §,!W§.§`'§;
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import §8!0§.§@!N§;
   import flash.geom.Point;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§1!U§;
   import nme3D.model.§3!^§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§[D§;
   import nme3D.shader.vertex.PositionColorVertex;
   
   public class Planet extends §6!%§
   {
      
      public var location:Point;
      
      public var §<0§:Number;
      
      public function Planet(param1:Object = undefined)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = null as §!!V§;
         var _loc5_:* = null as PositionColorVertex;
         var _loc6_:* = null as §=s§;
         while(true)
         {
            if(_loc7_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            param1 = 6000000;
            break;
         }
         param1 *= 9.608296648856726e-21;
         var _loc2_:§!!V§ = Type.createInstance(PositionColorVertex,[8,null]);
         while(true)
         {
            if(_loc7_)
            {
               vertices = _loc2_;
               if(_loc8_)
               {
                  break;
               }
            }
            §3!^§.§-h§(vertices,8,param1);
            break;
         }
         var _loc3_:* = new §@!N§(vertices);
         if(!_loc8_)
         {
            while(Boolean(_loc3_.hasNext()))
            {
               _loc4_ = _loc3_.next();
               _loc5_ = _loc4_;
               if(!_loc8_)
               {
                  §§push(_loc5_.§+R§);
                  §§push(_loc5_.offset);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 3);
                  }
                  §§pop().offset = §§pop();
               }
               _loc6_ = _loc5_.§+R§;
               if(!_loc8_)
               {
                  _loc6_.§@!Y§[_loc6_.offset] = 0;
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc6_.§@!Y§);
                        §§push(_loc6_.offset);
                        if(_loc7_)
                        {
                           §§push(1);
                           if(_loc8_)
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
                        continue;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc6_.§@!Y§);
                     §§push(_loc6_.offset);
                     if(_loc7_)
                     {
                        §§push(2);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§push(0);
                     break;
                  }
                  §§pop()[§§pop()] = §§pop();
               }
            }
         }
         §;v§(0);
         indices = §1!U§.§6d§(0,8);
         location = new Point(0,0);
         §!_§.§9i§(0,location);
         super(location.x,location.y,vertices,indices,§[D§.§7!P§());
      }
      
      public function §;v§(param1:Number) : Number
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = null as §!!V§;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as §!!V§;
         var _loc7_:* = null as PositionColorVertex;
         var _loc8_:* = null as §=s§;
         if(!_loc11_)
         {
            while(true)
            {
               if(§<0§ != param1)
               {
                  if(!_loc11_)
                  {
                     §§push(0);
                     if(!_loc11_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  _loc3_ = vertices;
                  if(_loc10_)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc3_.§@!Y§.length);
                           if(_loc10_)
                           {
                              §§push(int(§§pop()));
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(_loc3_.§5G§);
                              if(_loc11_)
                              {
                                 break loop4;
                              }
                              §§push(§§pop() / §§pop());
                           }
                           §§push(int(§§pop()));
                           if(!_loc10_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(_loc10_)
                           {
                              break;
                           }
                           §§goto(addr016a);
                        }
                        _loc4_ = §§pop();
                        if(!_loc11_)
                        {
                           §§goto(addr0169);
                        }
                     }
                     while(§§pop() < §§pop())
                     {
                        §§push(_loc2_);
                        if(!_loc11_)
                        {
                           _loc2_++;
                           if(_loc10_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc5_ = §§pop();
                        _loc6_ = vertices;
                        if(_loc10_)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.§5G§);
                           if(_loc10_)
                           {
                              §§push(§§pop() * _loc5_);
                           }
                           §§pop().offset = §§pop();
                        }
                        _loc7_ = _loc6_;
                        if(_loc10_)
                        {
                           §§push(_loc7_.§+R§);
                           §§push(_loc7_.offset);
                           if(!_loc11_)
                           {
                              §§push(§§pop() + 3);
                           }
                           §§pop().offset = §§pop();
                        }
                        _loc8_ = _loc7_.§+R§;
                        while(true)
                        {
                           if(_loc10_)
                           {
                              _loc8_.§@!Y§[_loc8_.offset] = param1;
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(_loc8_.§@!Y§);
                              §§push(_loc8_.offset);
                              if(_loc10_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop()[§§pop()] = param1;
                              if(_loc11_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc8_.§@!Y§);
                           §§push(_loc8_.offset);
                           if(!_loc11_)
                           {
                              §§push(§§pop() + 2);
                           }
                           §§pop()[§§pop()] = param1;
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr016a:
                           while(true)
                           {
                              §§push(_loc4_);
                              break loop1;
                           }
                        }
                     }
                  }
               }
               §8!Q§ = true;
               break;
            }
         }
         §§push(§§findproperty(§<0§));
         §§push(param1);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         return §§pop().§<0§ = §§pop();
      }
   }
}

