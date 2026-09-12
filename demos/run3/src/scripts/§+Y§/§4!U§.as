package §+Y§
{
   import §"!M§.§=!T§;
   import §%!Q§.§>K§;
   import §3!b§.PlanetMissing;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import com.player03.run3.character.§6M§;
   import haxeutils.math.geom.Point3D;
   
   public class §4!U§ extends §=!T§
   {
      
      public static var init__:Boolean;
      
      public static var §1]§:Point3D;
      
      public var bridge:Bridge;
      
      public function §4!U§(param1:Bridge, param2:Number)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               super(param2);
               if(_loc4_)
               {
                  break;
               }
               bridge = param1;
               if(!_loc3_)
               {
                  break;
               }
            }
            §-!9§ = true;
            break;
         }
      }
      
      override public function §^C§(param1:§6M§, param2:§[C§) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            bridge.§2a§();
            if(!_loc4_)
            {
               super.§^C§(param1,param2);
            }
         }
      }
      
      override public function §9U§(param1:§6M§, param2:§[C§, param3:Point3D) : Boolean
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(!_loc10_)
         {
            if(param3.y <= 0)
            {
               var _loc4_:Point3D = param1.§[!G§.§>l§;
               var _loc5_:Point3D = §4!U§.§1]§;
               while(true)
               {
                  if(_loc9_)
                  {
                     if(_loc5_ != null)
                     {
                        break;
                     }
                  }
                  _loc5_ = new Point3D(0,0,0);
                  break;
               }
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc4_.x * param3.x);
                     if(_loc9_)
                     {
                        §§push(_loc4_.y * param3.y);
                        if(!_loc10_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc9_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc4_.z);
                           if(_loc9_)
                           {
                              §§push(§§pop() * param3.z);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc10_)
                        {
                           break loop1;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc10_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc6_:* = §§pop();
               if(_loc9_)
               {
                  §§push(_loc5_);
                  §§push(_loc6_);
                  if(!_loc10_)
                  {
                     §§push(§§pop() * param3.x);
                  }
                  §§pop().x = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc5_);
                     §§push(_loc6_);
                     if(_loc9_)
                     {
                        §§push(§§pop() * param3.y);
                     }
                     §§pop().y = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc5_);
                        §§push(_loc6_);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * param3.z);
                        }
                        §§pop().z = §§pop();
                     }
                  }
               }
               var _loc7_:Point3D = _loc5_;
               §§push(_loc7_.x * _loc7_.x);
               if(!_loc10_)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc7_.y * _loc7_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                           if(_loc10_)
                           {
                              break loop3;
                           }
                           §§push(_loc7_.z);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc7_.z);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc10_)
                        {
                           break loop3;
                        }
                        §§goto(addr014d);
                     }
                  }
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     addr014d:
                     §§push(Number(§§pop()));
                  }
                  break loop4;
               }
               var _loc8_:* = §§pop();
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc8_);
                        if(!_loc10_)
                        {
                           §§push(Bridge.§@!E§);
                           if(!_loc10_)
                           {
                              §§push(§§pop() * Bridge.§@!E§);
                           }
                           if(§§pop() <= §§pop())
                           {
                              bridge.§+k§();
                              if(_loc9_)
                              {
                                 break;
                              }
                              break loop6;
                           }
                           §§push(Number(Math.sqrt(_loc8_)));
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc8_ = §§pop();
                        if(_loc9_)
                        {
                           bridge.§2a§(_loc8_);
                           if(_loc9_)
                           {
                              break;
                           }
                           break loop6;
                        }
                        break loop5;
                     }
                     param1.§-,§ = 1.1;
                     break loop5;
                  }
                  §§push(super.§9U§(param1,param2,param3));
                  if(!_loc10_)
                  {
                     return Boolean(§§pop());
                  }
               }
               param1.§?`§.§@4§ = 1.07;
               break loop6;
            }
         }
         return false;
      }
   }
}

