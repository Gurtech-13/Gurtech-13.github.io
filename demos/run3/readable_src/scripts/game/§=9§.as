package game
{
   import haxeutils.math.geom.Point3D;
   
   public class §=9§ extends §5t§
   {
      
      public var §@!%§:int;
      
      public var §^$§:Game;
      
      public var §0M§:Number;
      
      public function §=9§(param1:Game, param2:int)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §0M§ = 0;
               if(_loc3_)
               {
                  super();
                  if(_loc4_)
                  {
                     break;
                  }
                  §^$§ = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            §@!%§ = param2;
            break;
         }
      }
      
      public function §'!9§(param1:Point3D, param2:Point3D, param3:Point3D) : Object
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:Point3D = §5!G§(param1,param2,true,param3);
         if(_loc8_)
         {
            if(_loc4_ != null)
            {
               §§push(int(Math.floor((_loc4_.x + 5) / 10)));
               if(!_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(int(Math.floor(_loc4_.z / 10)));
               if(_loc8_)
               {
                  §§push(int(§§pop()));
               }
               var _loc6_:* = §§pop();
               if(_loc8_)
               {
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(true);
                           if(_loc8_)
                           {
                              if(_loc5_ >= 0)
                              {
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§pop();
                                       if(!_loc8_)
                                       {
                                          break loop2;
                                       }
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                          break loop1;
                                       }
                                       §§push(§^$§.§?!_§.§=F§.§^X§);
                                       if(!_loc8_)
                                       {
                                          break loop0;
                                       }
                                       §§push(§§pop() >= §§pop());
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                              }
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr0123);
                                 }
                                 else
                                 {
                                    §§push(_loc5_);
                                    if(_loc8_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr0141);
                           }
                           §§goto(addr0143);
                        }
                     }
                     while(true)
                     {
                        §§push(§@!%§);
                        if(!_loc7_)
                        {
                           §§push(§^$§.§?!_§.§=F§.§^X§);
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc7_)
                           {
                              break loop0;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc7_)
                        {
                           §§push(int(§§pop()));
                           if(_loc8_)
                           {
                              _loc5_ = §§pop();
                              addr0123:
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 addr012c:
                                 §§push(_loc6_);
                                 if(!_loc7_)
                                 {
                                    §§push(§^$§.§?!_§.§5k§);
                                    break;
                                 }
                                 break loop0;
                              }
                           }
                        }
                        §§goto(addr0143);
                     }
                     addr0141:
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  addr0143:
                  return §§pop() + §§pop();
               }
               return null;
            }
         }
         return null;
      }
   }
}

