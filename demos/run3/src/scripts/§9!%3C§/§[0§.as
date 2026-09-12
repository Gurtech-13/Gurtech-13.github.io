package §9!<§
{
   import §!!$§.§ 6§;
   import §-!!§.§2!B§;
   import §-d§.§!!-§;
   import §2!"§.§8f§;
   import §6!Q§.§]u§;
   import §<!&§.§%!§;
   import §>T§.§[C§;
   import §`_§.§7d§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§ !W§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import haxeutils.math.geom.§4!R§;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   import openfl.Lib;
   
   public class §[0§
   {
      
      public var tunnel:§ !W§;
      
      public var §"s§:Number;
      
      public var §^!2§:Number;
      
      public var §<1§:Number;
      
      public var student:§^s§;
      
      public var §>C§:§7d§;
      
      public var §[f§:§7d§;
      
      public var §&a§:§7d§;
      
      public var §1!G§:§7d§;
      
      public var §%c§:Number;
      
      public var §&X§:Number;
      
      public var box:§[C§;
      
      public var §3&§:Boolean;
      
      public function §[0§(param1:§ !W§, param2:§[C§, param3:§^s§)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §3&§ = false;
         if(!_loc5_)
         {
            §"s§ = -183.74;
            §&X§ = -1;
            tunnel = param1;
            while(true)
            {
               if(_loc4_)
               {
                  box = param2;
                  §%c§ = param2.transform.position.x;
                  if(!_loc4_)
                  {
                     break;
                  }
                  student = param3;
                  §<1§ = param3.transform.position.x;
               }
               §§push(§§findproperty(§^!2§));
               §§push(§<1§);
               if(_loc4_)
               {
                  §§push(§§pop() - §%c§);
               }
               §§pop().§^!2§ = §§pop();
               break;
            }
            §[f§ = new §7d§(param3,new §!!-§(14));
            §&a§ = new §7d§(param3,new §!!-§(15,8));
            §>C§ = new §7d§(param3,new §!!-§(23,2));
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:§7d§ = §1!G§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc5_)
               {
                  while(true)
                  {
                     §§push(§&X§);
                     if(_loc4_)
                     {
                        if(§§pop() < 0)
                        {
                           break loop1;
                        }
                        while(true)
                        {
                           §§push(§§findproperty(§&X§));
                           §§push(§&X§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + param1);
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().§&X§ = §§pop();
                        §§push(§&X§);
                        if(!_loc5_)
                        {
                           §§push(0.35);
                           if(_loc5_)
                           {
                              break;
                           }
                           if(§§pop() < §§pop())
                           {
                              §§push(§&X§);
                              if(_loc4_)
                              {
                                 §§push(0.2);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       addr00d9:
                                       §§push(box.transform);
                                       §§push(-66.66666666666667);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().translate(§§pop(),0,0);
                                    }
                                    break loop1;
                                 }
                                 §§push(§&X§);
                                 if(_loc5_)
                                 {
                                    continue loop3;
                                 }
                              }
                              addr0105:
                              §§push(0.15);
                              break;
                           }
                           if(!_loc5_)
                           {
                              §&X§ = -1;
                              box.transform.§6!&§(§%c§,box.transform.position.y,box.transform.position.z);
                              §"s§ = -183.74;
                              if(_loc5_)
                              {
                              }
                              break loop1;
                           }
                           §§goto(addr00d9);
                        }
                     }
                     §§goto(addr0105);
                  }
                  §§push(§§pop() >= §§pop());
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               §§push(box.transform);
               §§push(66.66666666666667);
               if(_loc4_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().translate(§§pop(),0,0);
               break;
            }
            while(true)
            {
               §§push(§§findproperty(§"s§));
               §§push(§"s§);
               if(_loc4_)
               {
                  §§push(422);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§"s§ = §§pop();
            break;
         }
         §§push(student.transform.position.x + §"s§ * param1);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() >= box.transform.position.x + §^!2§)
                     {
                        §§push(box.transform.position.x + §^!2§);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc5_)
                           {
                              _loc3_ = §§pop();
                              §"s§ = 0;
                              §1!G§ = §>C§;
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                              §§push(§&X§);
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§1!G§));
                           if(_loc4_)
                           {
                              if(§"s§ < -10)
                              {
                                 §§push(§[f§);
                                 break;
                              }
                           }
                           §§push(§&a§);
                           break;
                        }
                        §§pop().§1!G§ = §§pop();
                        if(_loc4_)
                        {
                           break loop3;
                        }
                        §§goto(addr025c);
                     }
                  }
                  if(§§pop() < 0)
                  {
                     if(!_loc5_)
                     {
                        §&X§ = 0;
                        break loop3;
                     }
                     break;
                  }
                  break loop3;
               }
               §§goto(addr029a);
            }
            student.transform.§6!&§(_loc3_,student.transform.position.y,student.transform.position.z);
            break;
         }
         while(true)
         {
            if(§1!G§ != _loc2_)
            {
               addr025c:
               if(§3&§)
               {
                  §+?§();
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §1!G§.reset();
            }
            §1!G§.update(param1);
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr02ab);
         }
         addr029a:
         student.§^0§();
         tunnel.display(0);
         addr02ab:
      }
      
      public function §+?§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §3&§ = false;
         }
         var _loc1_:§7d§ = §[f§;
         var _loc2_:§7d§ = §&a§;
         var _loc3_:§7d§ = §>C§;
         if(_loc5_)
         {
            §[f§ = new §7d§(student,new §!!-§(0));
            while(true)
            {
               if(_loc5_)
               {
                  §&a§ = new §7d§(student,new §!!-§(1,8));
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               §>C§ = new §7d§(student,new §!!-§(9,2));
               if(§1!G§ == _loc1_)
               {
                  §1!G§ = §[f§;
               }
               else if(§1!G§ == _loc2_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  §1!G§ = §>C§;
               }
            }
            §1!G§ = §&a§;
         }
      }
      
      public function §^!^§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            box.reset();
         }
      }
      
      public function §#!X§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §3&§ = true;
         }
      }
   }
}

