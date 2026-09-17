package §6!Q§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import scenes.Cutscenes;
   import scenes.JoinUs;
   import §=w§.§,D§;
   import §>T§.§"=§;
   import §>T§.§0!E§;
   import §>T§.§[C§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§4!^§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import openfl.Lib;
   
   public class §#W§ extends Shape implements §,D§
   {
      
      public var §9!C§:Function;
      
      public var §`"§:Number;
      
      public var §&p§:Number;
      
      public var §=![§:Number;
      
      public var §=+§:Number;
      
      public var §?!9§:Function;
      
      public var §[h§:Number;
      
      public var §%S§:Number;
      
      public function §#W§(param1:Number, param2:Object = undefined, param3:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               param2 = 0;
               break;
            }
            super();
            break;
         }
         graphics.beginFill(0);
         graphics.drawRect(0,0,Lib.get_current().stage.stageWidth,Lib.get_current().stage.stageHeight);
         if(_loc5_)
         {
            while(true)
            {
               if(param3 == null)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  param3 = param1;
               }
               §`"§ = param1;
               break;
            }
            §[h§ = param2;
         }
         §=![§ = param3;
      }
      
      public function update(param1:Number) : void
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
               while(true)
               {
                  §§push(§&p§);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        break;
                     }
                     if(§§pop() > §§pop())
                     {
                        §§push(§§findproperty(§&p§));
                        §§push(§&p§);
                        if(_loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§&p§ = §§pop();
                        alpha = 1 - §&p§ / §`"§;
                        while(true)
                        {
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       §§push(§&p§);
                                       if(!_loc2_)
                                       {
                                          §§push(0);
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                break loop9;
                                             }
                                             §§pop();
                                             if(!_loc2_)
                                             {
                                                §§push(§9!C§);
                                                if(_loc2_)
                                                {
                                                   break loop8;
                                                }
                                                §§push(§§pop());
                                                if(!_loc3_)
                                                {
                                                   break loop8;
                                                }
                                                §§push(null);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr00a0:
                                                      if(§§pop() != §§pop())
                                                      {
                                                         §9!C§();
                                                      }
                                                      break loop1;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr0168);
                                                }
                                                §§goto(addr016a);
                                             }
                                             else
                                             {
                                                §§goto(addr0135);
                                             }
                                          }
                                          §§goto(addr00a0);
                                       }
                                       §§goto(addr0141);
                                    }
                                    §§goto(addr0143);
                                 }
                                 §§goto(addr0159);
                              }
                              §§goto(addr0165);
                           }
                           §§goto(addr0167);
                        }
                        §§goto(addr016b);
                     }
                     else
                     {
                        §§push(§%S§);
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(0);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr00ff);
               }
               if(§§pop() > §§pop())
               {
                  §§push(§§findproperty(§%S§));
                  §§push(§%S§);
                  if(_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§%S§ = §§pop();
                  if(!_loc2_)
                  {
                     alpha = 1;
                  }
                  break;
               }
               §§push(§=+§);
               break loop0;
            }
            return;
         }
         addr00ff:
         if(§§pop() > 0)
         {
            §§push(§§findproperty(§=+§));
            §§push(§=+§);
            if(!_loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§=+§ = §§pop();
            if(!_loc2_)
            {
               alpha = §=+§ / §=![§;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           addr0135:
                           §§push(false);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§=+§ > 0)
                           {
                              break loop3;
                           }
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           §§pop();
                        }
                        addr0167:
                        addr0168:
                        addr016a:
                        §§push(§?!9§);
                        if(_loc3_)
                        {
                           addr0165:
                           §§push(§§pop());
                        }
                        §§push(§§pop() == null);
                        break;
                     }
                     addr016b:
                     §§push(!§§pop());
                     break loop2;
                  }
                  if(§§pop())
                  {
                     §?!9§();
                     if(_loc3_)
                     {
                     }
                  }
                  break loop1;
               }
               §§push(Boolean(§§pop()));
               break loop3;
            }
            break loop1;
         }
         visible = false;
         break loop1;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §&p§ = §`"§;
               if(_loc2_)
               {
                  break;
               }
               §%S§ = §[h§;
               if(!_loc2_)
               {
                  §=+§ = §=![§;
                  if(!_loc2_)
                  {
                     if(§`"§ <= 0)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            alpha = 0;
            break;
         }
      }
      
      public function §?!K§() : Boolean
      {
         return §&p§ <= 0;
      }
      
      public function §=!V§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 if(§&p§ > 0)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    break loop0;
                                 }
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    break loop4;
                                 }
                                 §§push(§%S§);
                                 if(_loc2_)
                                 {
                                    break loop3;
                                 }
                                 §§push(0);
                                 if(!_loc1_)
                                 {
                                    break loop2;
                                 }
                                 §§push(§§pop() <= §§pop());
                                 if(!_loc1_)
                                 {
                                    break loop1;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           §§push(false);
                           break loop0;
                        }
                     }
                     break loop4;
                  }
                  §§push(0);
                  break;
               }
               §§push(§§pop() <= §§pop());
               if(!_loc2_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
   }
}

