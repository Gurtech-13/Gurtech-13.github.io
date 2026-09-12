package §-!!§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.level.§!!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import motion.actuators.TransformActuator;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §^!8§ extends §6!4§
   {
      
      public var §?T§:Number;
      
      public var §<K§:Number;
      
      public var §7!§:Number;
      
      public var §<!K§:Number;
      
      public var §%y§:Boolean;
      
      public var §!F§:Boolean;
      
      public var §,!;§:Number;
      
      public var §><§:Number;
      
      public var §?h§:Number;
      
      public function §^!8§(param1:Number)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §%y§ = false;
         while(true)
         {
            if(_loc3_)
            {
               §7!§ = -30;
               while(true)
               {
                  if(_loc3_)
                  {
                     §<!K§ = 0;
                     §><§ = 0;
                     §?h§ = 0;
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §?T§ = 0;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §<K§ = 0;
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§,!;§));
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().§,!;§ = §§pop();
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null as §38§;
         var _loc3_:* = NaN;
         var _loc4_:* = null as §&l§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc5_)
                  {
                     §§push(§%y§);
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(_loc5_)
                     {
                        §?h§ = Lib.get_current().stage.mouseX - §<K§;
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                     }
                     §><§ = Lib.get_current().stage.mouseY - §?T§;
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§!F§);
                  if(!_loc6_)
                  {
                     break;
                  }
                  addr018b:
                  if(§§pop())
                  {
                     break loop0;
                  }
                  break loop1;
               }
               §§push(!§§pop());
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        break loop0;
                     }
                     _loc2_ = §&d§.§;`§().scale;
                     loop3:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           §§push(1);
                           §§push(_loc2_.x);
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() + _loc2_.y);
                                 if(!_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(§§pop() / 2);
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc5_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 break loop3;
                              }
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(§§pop() * _loc3_);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              _loc3_ = §§pop();
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                           }
                           §§goto(addr010f);
                        }
                        loop6:
                        while(true)
                        {
                           §§push(§§findproperty(§!F§));
                           §§push(§?h§);
                           if(_loc5_)
                           {
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§?h§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(§><§);
                                             if(!_loc6_)
                                             {
                                                §§push(§><§);
                                                if(_loc6_)
                                                {
                                                   break loop8;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(!_loc5_)
                                                {
                                                   break loop7;
                                                }
                                             }
                                          }
                                       }
                                       §§push(_loc3_);
                                       break loop8;
                                    }
                                    §§goto(addr017a);
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 break loop6;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc6_)
                              {
                                 addr017a:
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§push(§,!;§);
                           break;
                        }
                        §§pop().§!F§ = §§pop() >= §§pop();
                        break;
                     }
                  }
                  §§push(§!F§);
               }
               §§goto(addr018b);
            }
            return;
         }
         _loc4_ = §]@§;
         if(_loc5_)
         {
            §§push(_loc4_);
            §§push(_loc4_._cameraX);
            if(_loc5_)
            {
               §§push(§§pop() - §?h§);
            }
            §§pop().§+!>§(§§pop());
         }
         _loc4_ = §]@§;
         if(_loc5_)
         {
            §§push(_loc4_);
            §§push(_loc4_._cameraY);
            if(_loc5_)
            {
               §§push(§§pop() - §><§);
            }
            §§pop().§<k§(§§pop());
            if(!_loc6_)
            {
               §<K§ = Lib.get_current().stage.mouseX;
               if(_loc5_)
               {
                  §?T§ = Lib.get_current().stage.mouseY;
               }
            }
         }
         break loop1;
      }
      
      override public function §-u§(param1:MouseEvent) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §§push(§!F§);
               if(!_loc3_)
               {
                  break;
               }
               if(!§§pop())
               {
                  var _loc2_:§&l§ = §]@§;
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_._cameraX);
                        if(_loc3_)
                        {
                           §§push(§§pop() + param1.delta * §<!K§);
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§+!>§(§§pop());
                  }
                  _loc2_ = §]@§;
                  if(_loc3_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_._cameraY);
                     if(_loc3_)
                     {
                        §§push(§§pop() + param1.delta * §7!§);
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§pop().§<k§(§§pop());
                  }
                  return true;
               }
            }
            return false;
         }
         return §§pop();
      }
      
      override public function §!!?§(param1:MouseEvent) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §%y§ = false;
         }
         return §!F§;
      }
      
      override public function §6J§(param1:MouseEvent) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §§push(false);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(!§7o§.instance.mouseDown)
                        {
                           break loop2;
                        }
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§%y§);
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc2_)
                        {
                           break loop2;
                        }
                        break loop1;
                     }
                     break loop2;
                  }
                  §§goto(addr0068);
               }
               if(§§pop())
               {
                  break loop0;
               }
               return false;
            }
            return §§pop();
         }
         §§push(§!F§);
         if(!_loc2_)
         {
            addr0068:
            return §§pop();
         }
         break loop1;
      }
      
      override public function §04§(param1:MouseEvent) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(false);
                              if(!_loc3_)
                              {
                                 §§push(false);
                                 if(_loc2_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc3_)
                                          {
                                             if(§]@§.parent == null)
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                break loop5;
                                             }
                                          }
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             §§push(§]@§.parent.mouseX >= §]@§.x);
                                             if(_loc2_)
                                             {
                                                break loop5;
                                             }
                                             break;
                                          }
                                          break loop4;
                                       }
                                       if(!§§pop())
                                       {
                                          break loop4;
                                       }
                                       if(!_loc2_)
                                       {
                                          break loop3;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break loop6;
                                 }
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    break loop2;
                                 }
                              }
                              §§push(§]@§.parent.mouseY >= §]@§.y);
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    §§push(§]@§.parent.mouseX <= §]@§.x + §]@§.width);
                                    if(_loc2_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    break loop2;
                                 }
                                 break loop0;
                              }
                           }
                           break loop2;
                        }
                        §§push(Boolean(§§pop()));
                        break loop4;
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §§pop();
                     §§push(§]@§.parent.mouseY <= §]@§.y + §]@§.height);
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
               if(§§pop())
               {
                  §<K§ = param1.stageX;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        §?T§ = param1.stageY;
                        §?h§ = 0;
                        if(!_loc2_)
                        {
                           break;
                        }
                        §><§ = 0;
                        if(_loc2_)
                        {
                           §!F§ = false;
                           if(!_loc2_)
                           {
                              break;
                           }
                        }
                     }
                     §%y§ = true;
                     break;
                  }
               }
            }
            return false;
         }
         return §§pop();
      }
      
      override public function §9!-§(param1:MouseEvent) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §%y§ = false;
         }
         return §!F§;
      }
   }
}

