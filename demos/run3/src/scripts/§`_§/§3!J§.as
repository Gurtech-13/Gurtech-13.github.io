package §`_§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §-d§.§!!-§;
   import §-d§.§-!'§;
   import §=w§.§,D§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§!!Q§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §3!J§ implements §,D§
   {
      
      public var §6!F§:Number;
      
      public var §6W§:Point3D;
      
      public var y:Number;
      
      public var §;6§:Point3D;
      
      public var sprite:§^s§;
      
      public var §9f§:Function;
      
      public var land:§!!-§;
      
      public var §2!?§:Number;
      
      public var jump:§!!-§;
      
      public var §;!`§:Number;
      
      public var frame:Number;
      
      public var §1p§:§!!-§;
      
      public var § !&§:§!!-§;
      
      public function §3!J§(param1:§^s§, param2:int, param3:Number, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(param4 == null)
         {
            param4 = true;
         }
         frame = 0;
         sprite = param1;
         §2!?§ = param3;
         while(true)
         {
            if(!_loc7_)
            {
               §§push(§§findproperty(§6!F§));
               §§push(param3);
               if(!_loc7_)
               {
                  §§push(-§§pop());
               }
               §§pop().§6!F§ = §§pop();
               if(!_loc8_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§;!`§));
            §§push(param1.§!C§.§6!=§());
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().§;!`§ = §§pop();
            break;
         }
         var _loc5_:§-!'§ = param1.§!8§.frames;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc7_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param2);
                        if(_loc8_)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(!_loc7_)
                              {
                                 jump = _loc5_.jump.left;
                                 §1p§ = _loc5_.§1p§.left;
                                 land = _loc5_.land.left;
                                 break loop2;
                              }
                              break loop4;
                           }
                           §§push(param2);
                        }
                        §§push(0);
                        break;
                     }
                     if(§§pop() != §§pop())
                     {
                        jump = _loc5_.jump.right;
                        §1p§ = _loc5_.§1p§.right;
                        if(!_loc7_)
                        {
                           break;
                        }
                        break loop1;
                     }
                     jump = _loc5_.jump.center;
                     if(!_loc7_)
                     {
                        §1p§ = _loc5_.§1p§.center;
                        if(_loc8_)
                        {
                           land = _loc5_.land.center;
                           if(!_loc7_)
                           {
                              break loop2;
                           }
                        }
                        addr0163:
                        if(!param4)
                        {
                           break loop1;
                        }
                     }
                     §§goto(addr0174);
                  }
               }
               break loop4;
            }
            § !&§ = jump;
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr0163);
         }
         land = null;
         addr0174:
         §6W§ = new Point3D(0,1,0);
         var _loc6_:Point3D = param1.transform.§<!C§();
         while(true)
         {
            if(!_loc7_)
            {
               §;6§ = new Point3D(_loc6_.x,_loc6_.y,_loc6_.z);
               if(_loc7_)
               {
                  break;
               }
               §4!R§.§@!M§(param1.transform.§+n§(),§6W§,§6W§);
               if(!_loc8_)
               {
                  break;
               }
            }
            reset();
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = null as §!!-§;
         §§push(§§findproperty(frame));
         §§push(frame);
         if(_loc10_)
         {
            §§push(30);
            if(!_loc9_)
            {
               §§push(§§pop() * param1);
            }
            §§push(§§pop() + §§pop());
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().frame = §§pop();
         while(true)
         {
            §§push(§§findproperty(§6!F§));
            §§push(§6!F§);
            if(!_loc9_)
            {
               §§push(§;!`§);
               if(!_loc9_)
               {
                  §§push(§§pop() * param1);
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().§6!F§ = §§pop();
         while(true)
         {
            §§push(§§findproperty(y));
            §§push(y);
            if(!_loc9_)
            {
               §§push(§6!F§);
               if(_loc10_)
               {
                  §§push(§§pop() * param1);
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         §§pop().y = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  if(y >= 0)
                  {
                     if(_loc10_)
                     {
                        if(land == null)
                        {
                           if(_loc9_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           y = 0;
                           addr00ec:
                           if(§ !&§ == land)
                           {
                              break loop2;
                           }
                           §§push(false);
                           if(!_loc9_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc2_ = §§pop();
                           §§goto(addr0135);
                        }
                     }
                     §§push(§9f§);
                     if(!_loc9_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop() != null)
                     {
                        §9f§();
                     }
                     reset();
                     return;
                  }
                  break;
               }
               §§goto(addr00ec);
            }
            var _loc4_:Point3D = sprite.transform.§<!C§();
            var _loc5_:Point3D = §;6§;
            var _loc6_:Point3D = §6W§;
            §§push(y);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Point3D = _loc4_;
            loop5:
            while(true)
            {
               if(!_loc9_)
               {
                  while(true)
                  {
                     if(_loc8_ == null)
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        _loc8_ = new Point3D(0,0,0);
                     }
                     _loc8_.x = _loc5_.x + _loc6_.x * _loc7_;
                     if(!_loc9_)
                     {
                        _loc8_.y = _loc5_.y + _loc6_.y * _loc7_;
                        break;
                     }
                     break loop5;
                  }
               }
               while(true)
               {
                  §§push(_loc8_);
                  §§push(_loc5_.z);
                  if(_loc10_)
                  {
                     §§push(_loc6_.z);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc7_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().z = §§pop();
               sprite.transform.§"w§(_loc4_);
               loop8:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc10_)
                           {
                              if(y >= 0)
                              {
                                 break;
                              }
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                           §§pop();
                           if(!_loc9_)
                           {
                              §§push(§6!F§ > -10);
                              if(_loc10_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(_loc9_)
                        {
                           break loop8;
                        }
                     }
                     §§pop();
                     §§push(§ !&§ == §1p§);
                     if(_loc10_)
                     {
                        §§push(!§§pop());
                        if(!_loc9_)
                        {
                           break loop8;
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        break loop5;
                     }
                     addr02ea:
                     § !&§.§-!P§(sprite.spritesheet,int(frame));
                     break;
                  }
                  §§goto(addr0303);
               }
               §§push(Boolean(§§pop()));
               break loop9;
            }
            § !&§ = §1p§;
            while(true)
            {
               if(!_loc9_)
               {
                  frame = 0;
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               §§goto(addr02ea);
            }
            addr0303:
            return;
         }
         _loc3_ = § !&§;
         while(true)
         {
            if(!_loc9_)
            {
               §§push(int(frame) >= _loc3_.length);
               if(!_loc9_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc10_)
                  {
                     _loc2_ = §§pop();
                     addr0135:
                     §§push(_loc2_);
                  }
               }
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     reset();
                     return;
                  }
                  break;
               }
               if(§ !&§ == land)
               {
                  break loop3;
               }
            }
            §§push(§9f§);
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            if(§§pop() != null)
            {
               §9f§();
            }
            § !&§ = land;
            if(_loc10_)
            {
               break;
            }
            break loop3;
         }
         frame = 0;
         break loop3;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         frame = 0;
         § !&§ = jump;
         § !&§.§-!P§(sprite.spritesheet,0);
         if(!_loc1_)
         {
            sprite.transform.§"w§(§;6§);
         }
         y = 0;
         if(!_loc1_)
         {
            §§push(§§findproperty(§6!F§));
            §§push(§2!?§);
            if(_loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().§6!F§ = §§pop();
         }
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
   }
}

