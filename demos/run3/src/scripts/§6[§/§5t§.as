package §6[§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §1^§.Transform;
   import §]N§.§?!H§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class §5t§
   {
      
      public static var §-6§:Boolean;
      
      public static var §1]§:Point3D;
      
      public var §7'§:Number;
      
      public var §1!M§:Number;
      
      public var §+e§:Number;
      
      public var §8w§:Number;
      
      public var §-!Y§:Transform;
      
      public var §2!7§:§?!H§;
      
      public var §&!<§:Point3D;
      
      public var §<!<§:Point3D;
      
      public function §5t§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §1!M§ = 1;
         §7'§ = 0;
         §8w§ = 1;
         §+e§ = 0;
         if(_loc1_)
         {
            §§push(§§findproperty(§-!Y§));
            §§push(§§findproperty(Transform));
            §§push(§%C§);
            if(_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().§-!Y§ = new §§pop().Transform(§§pop());
            §2!7§ = new §?!H§();
            §2!7§.§;[§(0,1,0);
         }
         §2!7§.§;!6§(§-!Y§);
         §<!<§ = new Point3D(1,0,0);
         §&!<§ = new Point3D(0,0,1);
      }
      
      public function §%C§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §2!7§.§-!_§(param1,param2,param3);
         }
      }
      
      public function §5!G§(param1:Point3D, param2:Point3D, param3:Object = undefined, param4:Point3D = undefined) : Point3D
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:* = null as Point3D;
         while(true)
         {
            if(!_loc11_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            param3 = false;
            break;
         }
         var _loc5_:§?!H§ = §2!7§;
         if(!_loc11_)
         {
            §?!H§.§9j§(_loc5_.origin,_loc5_.normal,param1,param2,§5t§.§1]§,0,1);
         }
         var _loc6_:Number = Number(§5t§.§1]§.x);
         if(_loc10_)
         {
            if(_loc6_ != _loc6_)
            {
               if(_loc10_)
               {
                  §§goto(addr0078);
               }
               else
               {
                  addr0085:
                  _loc7_ = §5t§.§1]§;
                  while(true)
                  {
                     if(_loc10_)
                     {
                        param4.x = _loc7_.x;
                        if(!_loc11_)
                        {
                           param4.y = _loc7_.y;
                           if(!_loc10_)
                           {
                              break;
                           }
                        }
                     }
                     param4.z = _loc7_.z;
                     break;
                  }
               }
            }
            else if(param4 != null)
            {
               §§goto(addr0085);
            }
            _loc7_ = §5t§.§1]§;
            var _loc8_:Point3D = §2!7§.origin;
            var _loc9_:Point3D = §5t§.§1]§;
            loop2:
            while(true)
            {
               if(_loc9_ == null)
               {
                  if(_loc11_)
                  {
                     break;
                  }
                  _loc9_ = new Point3D(0,0,0);
               }
               _loc9_.x = _loc7_.x - _loc8_.x;
               _loc9_.y = _loc7_.y - _loc8_.y;
               loop3:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           break loop2;
                        }
                        addr016a:
                        §§push(false);
                        if(!_loc11_)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(false);
                              if(!_loc11_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc10_)
                                       {
                                          if(§5t§.§1]§.x < §+e§)
                                          {
                                             break;
                                          }
                                          if(_loc11_)
                                          {
                                             break loop7;
                                          }
                                       }
                                       §§pop();
                                       if(!_loc11_)
                                       {
                                          §§push(§5t§.§1]§.x <= §8w§);
                                          if(_loc10_)
                                          {
                                             break loop7;
                                          }
                                          break;
                                       }
                                       break loop6;
                                    }
                                    if(!§§pop())
                                    {
                                       break loop6;
                                    }
                                    if(!_loc10_)
                                    {
                                       break loop6;
                                    }
                                    §§pop();
                                    §§push(§5t§.§1]§.z >= §7'§);
                                    if(_loc11_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop8;
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                           if(§§pop())
                           {
                              §§pop();
                              break;
                           }
                        }
                        §§goto(addr01fb);
                     }
                     addr01e5:
                     §§push(§5t§.§1]§.z <= §1!M§);
                     break loop3;
                  }
                  if(§§pop())
                  {
                     return §5t§.§1]§;
                  }
                  return null;
               }
               §§push(Boolean(§§pop()));
               if(!_loc11_)
               {
                  addr01fb:
                  §§push(Boolean(§§pop()));
               }
               break loop4;
            }
            §§push(_loc9_);
            §§push(_loc7_.z);
            if(_loc10_)
            {
               §§push(§§pop() - _loc8_.z);
            }
            §§pop().z = §§pop();
            while(true)
            {
               if(!_loc11_)
               {
                  §4!R§.§@!M§(§-!Y§.§<!A§(),§5t§.§1]§,§5t§.§1]§);
                  §§push(true);
                  if(param3)
                  {
                     break loop4;
                  }
                  if(_loc11_)
                  {
                     break loop3;
                  }
                  §§pop();
                  §§goto(addr016a);
               }
               §§goto(addr01e5);
            }
            §§goto(addr01fb);
         }
         addr0078:
         return null;
      }
   }
}

