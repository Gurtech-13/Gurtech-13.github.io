package §=L§
{
   import §!!$§.§?y§;
   import §!]§.§4N§;
   import §!]§.Path;
   import §#3§.§1M§;
   import §%!Q§.§ !>§;
   import §%!Q§.§6!a§;
   import §%!Q§.§>K§;
   import §%!Z§.§3`§;
   import §2X§.§"S§;
   import §2X§.§>N§;
   import §3!b§.§+Z§;
   import §3!b§.Conspiracy;
   import §4n§.Achievement;
   import §<?§.§#!7§;
   import §=w§.§,D§;
   import §>!O§.§#!6§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§2N§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.BeatLevelAndSave;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.AngleMath;
   import haxeutils.math.geom.Point3D;
   
   public class §0!I§ implements §,D§
   {
      
      public var §8!A§:Boolean;
      
      public var §@P§:Function;
      
      public var §"!#§:§1M§;
      
      public var §%n§:Boolean;
      
      public var frameRate:Number;
      
      public var §45§:Number;
      
      public function §0!I§(param1:Number, param2:§1M§, param3:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               §[!D§(param1);
               if(_loc4_)
               {
                  break;
               }
               §"!#§ = param2;
            }
            §@P§ = param3;
            §%n§ = true;
            §8!A§ = false;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr0065);
         }
         §,=§(0);
         addr0065:
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(§§findproperty(§,=§));
            §§push(§45§);
            if(!_loc3_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() * frameRate);
               }
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop().§,=§(§§pop());
         }
      }
      
      public function §[!D§(param1:Number) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§findproperty(frameRate));
         §§push(param1);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         return §§pop().frameRate = §§pop();
      }
      
      public function §,=§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc2_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           loop13:
                           while(true)
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    §§push(§"!#§.§&!W§);
                                    if(!_loc2_)
                                    {
                                       break loop3;
                                    }
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!§%n§)
                                                {
                                                   §§push(§45§);
                                                   if(_loc2_)
                                                   {
                                                      addr00db:
                                                      §§push(§"!#§.§&!W§);
                                                      if(_loc2_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            §45§ = §"!#§.§&!W§;
                                                            if(_loc2_)
                                                            {
                                                               break loop14;
                                                            }
                                                            break loop13;
                                                         }
                                                         break loop5;
                                                      }
                                                      break loop3;
                                                   }
                                                   break loop2;
                                                }
                                                if(!_loc3_)
                                                {
                                                   §§push(§§findproperty(§45§));
                                                   §§push(param1);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() % §"!#§.§&!W§);
                                                   }
                                                   §§pop().§45§ = §§pop();
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§@P§);
                                                         §§push(null);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               break loop9;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §@P§(this);
                                                               if(_loc3_)
                                                               {
                                                                  break loop14;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(!_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§8!A§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§"!#§.parent != null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr01a1);
                                                                           }
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           §"!#§.parent.removeChild(§"!#§);
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     §§goto(addr0141);
                                                                     §§goto(addr01a1);
                                                                  }
                                                                  §§goto(addr01c1);
                                                               }
                                                               §§goto(addr015b);
                                                            }
                                                            §§goto(addr015c);
                                                         }
                                                         §§goto(addr020c);
                                                      }
                                                      §§goto(addr0214);
                                                   }
                                                   §§goto(addr02aa);
                                                }
                                                §§goto(addr0260);
                                             }
                                             else
                                             {
                                                §§push(param1);
                                                if(!_loc3_)
                                                {
                                                   §§push(0);
                                                   if(_loc3_)
                                                   {
                                                      break loop3;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §45§ = param1;
                                                      if(_loc2_)
                                                      {
                                                         break loop5;
                                                      }
                                                      break loop0;
                                                   }
                                                   §§push(§%n§);
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr01a1);
                                                }
                                             }
                                             §§goto(addr01cc);
                                          }
                                          §§goto(addr02be);
                                       }
                                       §§goto(addr0294);
                                    }
                                    §§goto(addr02e2);
                                 }
                                 §§goto(addr00db);
                              }
                              §§push(§@P§);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(null);
                                    if(!_loc2_)
                                    {
                                       break loop18;
                                    }
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             §@P§(this);
                                             break;
                                          }
                                          break loop7;
                                       }
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0205);
                                 }
                                 §§goto(addr0214);
                              }
                              §§goto(addr02a7);
                           }
                           §§push(false);
                           §§push(§8!A§);
                           if(!_loc3_)
                           {
                              addr0141:
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    addr015b:
                                    §§push(§"!#§.parent != null);
                                 }
                                 else
                                 {
                                    addr01a1:
                                    if(!§§pop())
                                    {
                                       §§push(§45§);
                                       if(!_loc3_)
                                       {
                                          break loop2;
                                       }
                                       break loop1;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop9;
                                    }
                                    §§push(§§findproperty(§45§));
                                    §§push(param1);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() % §"!#§.§&!W§);
                                    }
                                    §§pop().§45§ = §§pop();
                                    addr01c1:
                                    §§push(§45§);
                                    if(!_loc2_)
                                    {
                                       break loop2;
                                    }
                                    addr01cc:
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr028b);
                                 }
                              }
                              addr015c:
                              if(§§pop())
                              {
                                 §"!#§.parent.removeChild(§"!#§);
                              }
                              break;
                           }
                           §§goto(addr02c4);
                        }
                     }
                     if(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           §§push(§§findproperty(§45§));
                           §§push(§45§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + §"!#§.§&!W§);
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().§45§ = §§pop();
                     }
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
                                 §§push(§@P§);
                                 if(!_loc3_)
                                 {
                                    addr0205:
                                    §§push(null);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(!_loc2_)
                                    {
                                       break loop9;
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             §@P§(this);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0294);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc3_)
                                          {
                                             §§push(§8!A§);
                                             if(!_loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§pop();
                                                      if(_loc2_)
                                                      {
                                                         break loop11;
                                                      }
                                                      break loop8;
                                                   }
                                                   addr025b:
                                                   §§push(Boolean(§§pop()));
                                                }
                                                break;
                                             }
                                             §§goto(addr02c4);
                                          }
                                          §§goto(addr025b);
                                       }
                                       if(§§pop())
                                       {
                                          addr0260:
                                          §"!#§.parent.removeChild(§"!#§);
                                          if(_loc2_)
                                          {
                                          }
                                       }
                                       break loop5;
                                    }
                                    §§goto(addr025b);
                                 }
                                 §§goto(addr02a9);
                              }
                              §§goto(addr02aa);
                           }
                           §§goto(addr02ac);
                        }
                        §§goto(addr02b0);
                     }
                     §§goto(addr02b8);
                  }
                  addr028b:
                  if(§§pop() != 0)
                  {
                     while(true)
                     {
                        if(_loc2_)
                        {
                           addr0294:
                           §45§ = 0;
                           addr02ac:
                           addr02a9:
                           addr02aa:
                           §§push(§@P§);
                           if(!_loc3_)
                           {
                              addr02a7:
                              §§push(§§pop());
                           }
                           if(§§pop() != null)
                           {
                              addr02b0:
                              §@P§(this);
                           }
                           addr02b8:
                           §§push(false);
                           if(_loc2_)
                           {
                              addr02c4:
                              addr02be:
                              if(§8!A§)
                              {
                                 §§pop();
                                 §§push(§"!#§.parent != null);
                              }
                           }
                           if(!§§pop())
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        §"!#§.parent.removeChild(§"!#§);
                        addr02e2:
                        break;
                     }
                  }
               }
               break loop5;
            }
            return §§pop();
         }
         §§push(§45§);
         break loop1;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §,=§(0);
         §§push(§@P§);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         loop0:
         while(true)
         {
            while(true)
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  §@P§(this);
                  if(!_loc1_)
                  {
                     break loop0;
                  }
               }
               §§push(false);
               if(_loc1_)
               {
                  if(§8!A§)
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        if(!_loc1_)
                        {
                           break loop0;
                        }
                        while(true)
                        {
                           §§push(§"!#§.parent == null);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                              if(!_loc1_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               break loop0;
            }
            §"!#§.parent.removeChild(§"!#§);
            break;
         }
      }
      
      public function §=!V§() : Boolean
      {
         return §"!#§.parent == null;
      }
   }
}

