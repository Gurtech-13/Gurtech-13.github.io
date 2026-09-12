package §"!M§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §,!G§.§%M§;
   import §,!G§.§6!7§;
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §-!!§.§8!8§;
   import §6[§.§#a§;
   import §6[§.§`f§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §>T§.Bridge;
   import §>T§.§[C§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.Bunny;
   import com.player03.run3.level.§ !W§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class §;!7§ extends §!!P§
   {
      
      public static var init__:Boolean;
      
      public static var §&!O§:§;!7§;
      
      public static var §@9§:Number = 1.5;
      
      public static var §@!7§:Number = 1.6;
      
      public var §%O§:Number;
      
      public var § !&§:§[0§;
      
      public function §;!7§(param1:Number)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               super();
               if(_loc3_)
               {
                  break;
               }
            }
            §%O§ = param1;
            if(_loc2_)
            {
               §8g§ = false;
               if(_loc3_)
               {
                  break;
               }
            }
            §-!9§ = true;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0062);
         }
         § !&§ = new §[0§();
         addr0062:
      }
      
      override public function §^!F§(param1:§[C§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               param1.§ !&§ = § !&§;
               if(_loc2_)
               {
                  break;
               }
            }
            param1.§5!J§ = 0;
            break;
         }
      }
      
      override public function §9U§(param1:§6M§, param2:§[C§, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop25:
               while(true)
               {
                  loop32:
                  while(true)
                  {
                     loop33:
                     while(true)
                     {
                        loop34:
                        while(true)
                        {
                           §§push(param2.§5!J§);
                           if(!_loc13_)
                           {
                              §§push(0);
                              if(_loc13_)
                              {
                                 break loop33;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc14_)
                                 {
                                    return false;
                                 }
                                 break loop26;
                              }
                              while(true)
                              {
                                 if(param1 is Bunny)
                                 {
                                    if(!_loc14_)
                                    {
                                       break;
                                    }
                                    param1.§5!>§();
                                 }
                                 §§push(param1.level.unpausedTime - param1.physicsData.§'![§);
                                 if(_loc14_)
                                 {
                                    §§push(0.2);
                                    if(_loc13_)
                                    {
                                       break loop34;
                                    }
                                    §§push(§§pop() > §§pop());
                                    if(_loc13_)
                                    {
                                       continue loop27;
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0122);
                                    }
                                    else
                                    {
                                       §§push(true);
                                       if(!_loc13_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc13_)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc14_)
                                             {
                                                continue loop29;
                                             }
                                             §§goto(addr01a5);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr018a);
                                       }
                                    }
                                    §§goto(addr01b3);
                                 }
                                 §§goto(addr0136);
                              }
                              §§push(param1.§<!B§());
                              if(!_loc14_)
                              {
                                 continue loop2;
                              }
                              §§push(Number(§§pop()));
                              if(!_loc14_)
                              {
                                 break loop32;
                              }
                              _loc6_ = §§pop();
                              if(_loc14_)
                              {
                                 §§push(_loc6_);
                                 if(_loc13_)
                                 {
                                    break loop1;
                                 }
                                 §§push(0);
                                 if(_loc13_)
                                 {
                                    break loop25;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc14_)
                                    {
                                       §§push(_loc6_);
                                       break loop1;
                                    }
                                    continue loop29;
                                 }
                                 §§push(_loc6_);
                                 if(_loc13_)
                                 {
                                    break loop0;
                                 }
                              }
                              else
                              {
                                 §§goto(addr0132);
                              }
                           }
                           §§push(-§§pop());
                           break loop1;
                        }
                        §§goto(addr015e);
                     }
                     §§goto(addr00e3);
                  }
                  §§push(1e-10);
                  if(!_loc14_)
                  {
                     break loop27;
                  }
                  addr015e:
                  §§push(§§pop() < §§pop());
                  if(_loc14_)
                  {
                     §§goto(addr0167);
                  }
                  else
                  {
                     §§goto(addr018a);
                  }
               }
               if(§§pop() >= §§pop())
               {
                  §§push(_loc6_);
                  break loop32;
               }
               §§push(_loc6_);
               if(_loc14_)
               {
                  §§push(-§§pop());
                  break loop32;
               }
               §§goto(addr01da);
            }
            §§push(10);
            if(!_loc13_)
            {
               addr00e3:
               loop26:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        if(!_loc13_)
                        {
                           _loc5_ = §§pop();
                           if(_loc14_)
                           {
                           }
                           loop29:
                           while(true)
                           {
                              loop30:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc14_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc13_)
                                       {
                                          break loop26;
                                       }
                                       if(param1.§;!C§.§ i§.§]!1§)
                                       {
                                          addr0136:
                                          _loc6_ = Number(param3.x);
                                          addr0132:
                                          §§push(_loc6_);
                                          if(_loc14_)
                                          {
                                             §§push(0);
                                             break loop25;
                                          }
                                          break loop29;
                                       }
                                       §§push(true);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc14_)
                                          {
                                             addr018a:
                                             §§push(Boolean(§§pop()));
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc4_ = §§pop();
                                          if(!_loc13_)
                                          {
                                             break loop26;
                                          }
                                          break loop30;
                                       }
                                       §§goto(addr01b3);
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc13_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc14_)
                                    {
                                       break loop26;
                                    }
                                    break;
                                 }
                                 §§goto(addr01a1);
                              }
                              §§goto(addr01a5);
                           }
                           §§goto(addr01ba);
                        }
                        addr0167:
                        _loc4_ = §§pop();
                        break loop26;
                     }
                     §§goto(addr01da);
                  }
                  §§goto(addr01d9);
               }
               §§push(_loc4_);
               if(!_loc13_)
               {
                  addr01a1:
                  if(!§§pop())
                  {
                     addr01ba:
                     §§push(§%O§);
                     if(!_loc13_)
                     {
                        _loc6_ = §§pop();
                        §§push(param1.§?`§.strength);
                        break;
                     }
                     continue loop2;
                  }
                  addr01a5:
                  param1.§?`§.§@4§ = §;!7§.§@!7§;
                  §§push(true);
               }
               addr01b3:
               return §§pop();
            }
            break loop25;
         }
         §§push(param1.physicsData.§?U§);
         if(_loc14_)
         {
            addr01d9:
            addr01da:
            §§push(§§pop() * §§pop());
            §§push(§;!7§.§@9§);
         }
         §§push(§§pop() * §§pop());
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            while(true)
            {
               if(_loc14_)
               {
                  §§push(_loc6_);
                  if(!_loc14_)
                  {
                     break;
                  }
                  if(§§pop() <= _loc7_)
                  {
                     §§push(_loc7_);
                     if(!_loc13_)
                     {
                        break;
                     }
                     continue loop5;
                  }
               }
               §§push(_loc6_);
               if(_loc14_)
               {
                  break;
               }
               continue loop5;
            }
            §§push(Number(§§pop()));
            continue loop5;
         }
         var _loc8_:* = §§pop();
         var _loc9_:Number = Number(param3.x);
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               while(true)
               {
                  if(!_loc13_)
                  {
                     §§push(_loc9_);
                     if(_loc13_)
                     {
                        break;
                     }
                     if(§§pop() < 0)
                     {
                        §§push(_loc9_);
                        if(!_loc13_)
                        {
                           break loop5;
                        }
                        break;
                     }
                     if(!_loc14_)
                     {
                        break loop4;
                     }
                  }
                  §§push(_loc9_);
                  if(!_loc13_)
                  {
                     break;
                  }
                  break loop5;
               }
               §§push(§§pop() < 1e-10);
               if(!_loc13_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(_loc14_)
                  {
                     param1.§4!A§(param3.x * _loc8_);
                  }
               }
               break loop4;
            }
            §§push(-§§pop());
            if(!_loc13_)
            {
               break loop24;
            }
            continue loop18;
         }
         var _loc10_:Number = Number(param3.y);
         while(true)
         {
            loop7:
            while(true)
            {
               loop13:
               while(true)
               {
                  loop14:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc13_)
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             if(!_loc13_)
                                             {
                                                §§push(0);
                                                if(_loc13_)
                                                {
                                                   break loop16;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         break loop14;
                                                      }
                                                      §§push(_loc10_);
                                                      if(_loc13_)
                                                      {
                                                         break loop13;
                                                      }
                                                      addr02bf:
                                                      §§push(1e-10);
                                                      if(!_loc14_)
                                                      {
                                                         break loop22;
                                                      }
                                                      if(§§pop() < §§pop())
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc13_)
                                                      {
                                                         break loop21;
                                                      }
                                                      if(param3.y >= 0)
                                                      {
                                                         break loop20;
                                                      }
                                                      §§push(param1.physicsData.§"![§);
                                                      if(_loc14_)
                                                      {
                                                         addr02ec:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc13_)
                                                         {
                                                            _loc11_ = §§pop();
                                                            break loop21;
                                                         }
                                                         addr030e:
                                                         _loc8_ = §§pop();
                                                         if(_loc13_)
                                                         {
                                                         }
                                                         break loop20;
                                                      }
                                                      §§goto(addr03ac);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr02bf);
                                                         §§push(-§§pop());
                                                      }
                                                   }
                                                   §§goto(addr03c6);
                                                }
                                                §§goto(addr03c7);
                                             }
                                             §§goto(addr02ec);
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             _loc8_ = Number(_loc11_);
                                             break loop20;
                                          }
                                          if(_loc13_)
                                          {
                                             continue loop9;
                                          }
                                          §§goto(addr030e);
                                          §§push(Number(_loc8_));
                                       }
                                       §§push(_loc8_);
                                       §§push(_loc11_);
                                       if(!_loc13_)
                                       {
                                          break loop22;
                                       }
                                       break loop7;
                                    }
                                 }
                                 break loop20;
                              }
                              §§goto(addr0415);
                           }
                           §§goto(addr0416);
                        }
                        §§goto(addr0418);
                     }
                     §§goto(addr0348);
                  }
                  §§goto(addr0475);
               }
               §§push(Number(§§pop()));
               §§push(0);
               if(_loc13_)
               {
                  break loop8;
               }
               addr0348:
               §§push(!(§§pop() < §§pop()));
               if(_loc14_)
               {
                  if(!§§pop())
                  {
                     continue loop9;
                  }
                  while(true)
                  {
                     if(!_loc13_)
                     {
                        if(param3.y >= 0)
                        {
                           break;
                        }
                        if(!_loc14_)
                        {
                           break;
                        }
                     }
                     param1.§?`§.§<i§();
                     if(_loc14_)
                     {
                        break;
                     }
                     addr0384:
                     param1.§;!C§.§ i§.§3q§ = false;
                     if(!_loc13_)
                     {
                        continue loop9;
                     }
                  }
                  param1.§%8§(param3.y * _loc8_);
                  §§goto(addr0384);
               }
               else
               {
                  §§goto(addr03d7);
               }
               §§goto(addr0423);
            }
            §§push(§§pop() < §§pop());
            if(_loc14_)
            {
               addr03d7:
               if(!§§pop())
               {
                  §§push(param3.z);
                  §§push(-1);
                  if(_loc14_)
                  {
                     break loop8;
                  }
                  §§goto(addr03fc);
               }
               §§goto(addr0475);
            }
            §§goto(addr047e);
         }
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(param3.z);
                  if(_loc14_)
                  {
                     _loc11_ = Number(§§pop());
                     §§push(_loc11_);
                     if(!_loc14_)
                     {
                        break loop9;
                     }
                     §§push(0);
                     if(!_loc14_)
                     {
                        break loop8;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc11_);
                     }
                     else
                     {
                        §§push(_loc11_);
                        if(_loc13_)
                        {
                           break;
                        }
                        §§push(-§§pop());
                     }
                  }
                  addr03c7:
                  while(true)
                  {
                     §§push(1e-10);
                     if(_loc14_)
                     {
                        break loop7;
                     }
                     §§goto(addr0418);
                  }
                  §§goto(addr0475);
               }
               addr0415:
               §§goto(addr0416);
            }
            addr03fc:
            if(§§pop() >= 0)
            {
               §§push(_loc12_);
               if(_loc13_)
               {
               }
            }
            else
            {
               §§push(_loc12_);
               if(!_loc13_)
               {
                  break loop11;
               }
            }
            §§goto(addr0416);
         }
         §§push(§§pop() - §§pop());
         if(_loc14_)
         {
            _loc12_ = §§pop();
            §§goto(addr047d);
         }
         addr0416:
         addr0418:
         if(§§pop() < 1e-10)
         {
            if(_loc14_)
            {
               addr0423:
               §§push(param1);
               §§push(param3.z);
               if(!_loc13_)
               {
                  §§push(§§pop() * _loc8_);
               }
               §§pop().§'!K§(§§pop());
            }
         }
         else
         {
            §§push(param1);
            §§push(param1.§;H§());
            if(_loc14_)
            {
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(_loc14_)
                  {
                     §§push(param3.z);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc13_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
            }
            §§pop().§'!K§(§§pop());
         }
         addr0475:
         §^!F§(param2);
         addr047d:
         addr047e:
         if(_loc14_)
         {
            §§push(_loc12_);
            break loop9;
         }
         return true;
      }
   }
}

