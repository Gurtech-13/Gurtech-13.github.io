package §-!!§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%G§.§ m§;
   import §2X§.Layout2D;
   import §2X§.PositionData2D;
   import §3!b§.BoatRide;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   
   public class § B§
   {
      
      public var scale:§38§;
      
      public var layout:Layout2D;
      
      public var §@+§:Boolean;
      
      public var §4T§:Boolean;
      
      public var §]^§:DisplayObjectContainer;
      
      public var §^! §:Boolean;
      
      public function § B§(param1:Layout2D, param2:Object = undefined, param3:Object = undefined, param4:DisplayObjectContainer = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  if(param2 == null)
                  {
                     §§push(false);
                     if(!_loc6_)
                     {
                        break;
                     }
                     param2 = §§pop();
                  }
                  if(param3 != null)
                  {
                     break loop0;
                  }
               }
               §§push(false);
               break;
            }
            param3 = §§pop();
            break;
         }
         §^! § = false;
         while(true)
         {
            if(!_loc5_)
            {
               layout = param1;
               §4T§ = param2;
               §@+§ = param3;
               if(_loc5_)
               {
                  break;
               }
               §]^§ = param4;
            }
            scale = §&d§.§1$§().scale;
            break;
         }
      }
      
      public function §3!,§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:* = null as DisplayObject;
         var _loc8_:* = null as PositionData2D;
         if(_loc9_)
         {
            if(§]^§ != null)
            {
               var _loc1_:* = 0;
               var _loc2_:* = 0;
               §§push(0);
               if(!_loc10_)
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!_loc10_)
               {
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:int = int(§]^§.numChildren);
               if(!_loc10_)
               {
                  loop0:
                  while(_loc4_ < _loc5_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc9_)
                        {
                           _loc4_++;
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc6_ = §§pop();
                     _loc7_ = §]^§.getChildAt(_loc6_);
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           if(_loc7_.visible)
                           {
                              _loc8_ = layout.§<!C§(_loc3_);
                              if(_loc9_)
                              {
                                 _loc3_++;
                              }
                              break;
                           }
                        }
                        _loc8_ = layout.§<!C§(0);
                        break;
                     }
                     _loc7_.x = _loc8_.position.x * scale.x + _loc1_;
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           _loc7_.y = _loc8_.position.y * scale.y + _loc2_;
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        if(_loc7_.visible)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§4T§);
                           if(!_loc10_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc1_);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + _loc7_.width);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    if(_loc10_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 _loc1_ = §§pop();
                              }
                              §§push(§@+§);
                           }
                           if(!§§pop())
                           {
                              continue loop0;
                           }
                           if(_loc10_)
                           {
                              continue loop0;
                           }
                           §§push(_loc2_);
                           if(_loc9_)
                           {
                              break loop4;
                           }
                           §§goto(addr0183);
                        }
                        §§goto(addr0183);
                     }
                     §§push(§§pop() + _loc7_.height);
                     if(!_loc10_)
                     {
                        break loop5;
                     }
                     addr0183:
                     _loc2_ = §§pop();
                  }
               }
               return;
            }
         }
      }
      
      public function §`t§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:* = null as PositionData2D;
         var _loc8_:* = null as DisplayObject;
         if(!_loc10_)
         {
            if(§]^§ == null)
            {
               if(!_loc10_)
               {
                  §§goto(addr0042);
               }
               else
               {
                  addr0053:
                  §3!,§();
               }
            }
            else
            {
               if(!§^! §)
               {
                  var _loc1_:* = 0;
                  var _loc2_:* = 0;
                  §§push(0);
                  if(_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = int(§]^§.numChildren);
                  if(!_loc10_)
                  {
                     loop0:
                     while(_loc4_ < _loc5_)
                     {
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc9_)
                           {
                              _loc4_++;
                              if(!_loc9_)
                              {
                                 break;
                              }
                           }
                           §§push(int(§§pop()));
                           break;
                        }
                        _loc6_ = §§pop();
                        _loc7_ = layout.§<!C§(_loc6_);
                        _loc8_ = §]^§.getChildAt(_loc6_);
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc10_)
                                    {
                                       _loc8_.x = _loc7_.position.x * scale.x + _loc1_;
                                       if(_loc10_)
                                       {
                                          break loop2;
                                       }
                                       _loc8_.y = _loc7_.position.y * scale.y + _loc2_;
                                       §§push(§4T§);
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc1_);
                                          if(!_loc9_)
                                          {
                                             break loop4;
                                          }
                                          §§push(§§pop() + _loc8_.width);
                                          if(!_loc9_)
                                          {
                                             break loop4;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc10_)
                                          {
                                             break loop3;
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc10_)
                                          {
                                             break loop2;
                                          }
                                       }
                                    }
                                    §§push(§@+§);
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc10_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr015c);
                           }
                           §§goto(addr0169);
                        }
                        §§push(_loc2_);
                        if(_loc10_)
                        {
                           break loop3;
                        }
                        addr015c:
                        §§push(§§pop() + _loc8_.height);
                        if(!_loc10_)
                        {
                           break loop3;
                        }
                        addr0169:
                        _loc2_ = §§pop();
                     }
                  }
                  return;
               }
               if(!_loc10_)
               {
                  §§goto(addr0053);
               }
            }
            return;
         }
         addr0042:
      }
   }
}

