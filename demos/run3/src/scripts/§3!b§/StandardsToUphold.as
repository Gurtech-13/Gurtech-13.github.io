package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   
   public class StandardsToUphold extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var gentleman:§^s§;
      
      public var §#!P§:§^s§;
      
      public function StandardsToUphold()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§^!+§,23,StandardsToUphold.§3S§);
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(§§findproperty(frames));
            §§push(frame0);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame1);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame2);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame3);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame4);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame5);
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(_loc2_)
            {
               name = "Standards to Uphold";
            }
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc1_)
            {
               tunnel = null;
               while(true)
               {
                  if(_loc1_)
                  {
                     §#!P§ = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  gentleman = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
               if(_loc6_)
               {
                  break;
               }
            }
            sprites.push(§#!P§);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(_loc5_)
         {
            §#!P§.goesTo = new § !N§(_loc2_,1);
            if(_loc5_)
            {
               gentleman = new §^s§(§9_§,§'O§.gentleman,false,null,false,null);
               if(!_loc6_)
               {
                  sprites.push(gentleman);
               }
            }
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc5_)
         {
            gentleman.goesTo = new § !N§(_loc4_,24);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               tunnel.§<!M§.translate(0,0,60);
               if(_loc1_)
               {
                  break;
               }
            }
            tunnel.display(0);
            if(_loc2_)
            {
               gentleman.§9E§(2,6,true);
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr0070);
            }
            break;
         }
         gentleman.spritesheet.§,=§(30);
         addr0070:
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               tunnel.§<!M§.translate(0,0,60);
               if(!_loc2_)
               {
                  tunnel.display(0);
                  if(_loc2_)
                  {
                     break;
                  }
                  gentleman.§9E§(2,5,true);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            gentleman.spritesheet.§,=§(44);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc3_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Have a nice day!");
                  §§push(40);
                  §§push(-240);
                  if(!_loc2_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     if(§§pop() == null)
                     {
                        if(!_loc2_)
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop1;
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop1;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop1;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               tunnel.§<!M§.translate(0,0,60);
               if(_loc3_)
               {
                  break;
               }
               tunnel.display(0);
               if(!_loc2_)
               {
                  break;
               }
            }
            gentleman.§9E§(2,4,true);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr005d);
         }
         gentleman.spritesheet.§,=§(35);
         addr005d:
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc2_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("And I certainly shall not do so in your company.");
                  §§push(0);
                  §§push(-160);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     if(§§pop() == null)
                     {
                        if(_loc2_)
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr00d2);
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop() >= 0)
                        {
                           §§push(null);
                           break loop1;
                        }
                     }
                  }
                  §§push(null);
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§goto(addr00d2);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00d2:
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(dialog);
                  §§push("I have standards to uphold.");
                  §§push(160);
                  §§push(280);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc2_)
                     {
                        break loop3;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              §§goto(addr0168);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop4;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop3;
                     }
                  }
                  §§push(null);
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop3;
               }
               §§goto(addr0168);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr0168:
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         tunnel.§<!M§.translate(0,0,60);
         tunnel.display(0);
         if(!_loc2_)
         {
            §#!P§.§9E§(3,1.4,true);
            while(true)
            {
               if(!_loc2_)
               {
                  §#!P§.spritesheet.§,=§(46);
                  §#!P§.spritesheet.§@S§(true);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               gentleman.§9E§(2,3,true);
               break;
            }
         }
         gentleman.spritesheet.§,=§(29);
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(!_loc2_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("...to go home?");
                     §§push(-200);
                     §§push(-240);
                     if(!_loc2_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           break loop2;
                        }
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc2_)
                              {
                                 §§goto(addr00df);
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop2;
                        }
                     }
                     §§push(null);
                     if(!_loc2_)
                     {
                        break;
                     }
                     break loop2;
                  }
                  §§goto(addr00df);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               addr00df:
               if(!_loc3_)
               {
                  break;
               }
            }
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Oh...");
                     §§push(80);
                     §§push(-160);
                     if(_loc3_)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           break loop6;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc2_)
                           {
                              §§push(null);
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop6;
                           }
                        }
                     }
                     §§push(-1);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop6;
                  }
                  §§push(§§pop());
                  break loop5;
               }
               §§push(§§pop() / 2.5);
               break;
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,null);
            break;
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Yes, I do wish to return to the Planet.");
               §§push(300);
               §§push(-40);
               if(!_loc2_)
               {
                  §§push(-1);
                  if(!_loc2_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc3_)
                        {
                           addr01c1:
                           §§push(null);
                           break;
                        }
                        addr01d5:
                        §§push(-1);
                        if(_loc2_)
                        {
                           addr01e3:
                           §§push(§§pop() / 2.5);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr01d5);
                           }
                           else
                           {
                              §§push(-1);
                           }
                           §§goto(addr01e3);
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr01e3);
               }
               §§goto(addr01c1);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1100 == null ? null : int(Math.round(1100 / 2.5)),1,_loc1_);
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(!_loc2_)
         {
            loop9:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Yet I shall not do so until my project is ready.");
                  §§push(40);
                  §§push(360);
                  if(!_loc2_)
                  {
                     §§push(null);
                     if(!_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc2_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr024e:
                              §§goto(addr027d);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop9;
                           }
                        }
                        addr0260:
                        §§push(null);
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop9;
                     }
                     §§goto(addr024e);
                  }
                  §§goto(addr0260);
               }
               §§goto(addr027d);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr027d:
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc7_)
            {
               tunnel.§<!M§.translate(0,0,60);
               while(true)
               {
                  if(_loc7_)
                  {
                     tunnel.display(0);
                     §#!P§.§9E§(3,0,true,25);
                     if(_loc8_)
                     {
                        break;
                     }
                     §#!P§.spritesheet.§,=§(8);
                     if(!_loc7_)
                     {
                        break loop0;
                     }
                  }
                  gentleman.§9E§(2,2,true);
                  break;
               }
            }
            gentleman.spritesheet.§,=§(40);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc7_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(dialog);
                  §§push("But don\'t you want to go");
                  §§push(-160);
                  §§push(-200);
                  if(!_loc8_)
                  {
                     §§push(null);
                     if(_loc7_)
                     {
                        while(true)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc7_)
                              {
                                 addr00bd:
                                 §§push(null);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    break loop3;
                                 }
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc8_)
                              {
                                 break loop2;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break;
                              }
                           }
                           §§push(null);
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                           break;
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr00bd);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop3;
         }
         var _loc2_:§'§ = dialog;
         loop5:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  if(int(_loc2_.§+j§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(_loc8_)
                  {
                     break loop5;
                  }
               }
               §§push(_loc2_.§+j§);
               §§push(int(_loc2_.§+j§.length));
               if(!_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§[!>§ = 13421772;
            break;
         }
         var _loc3_:§'§ = dialog;
         if(!_loc8_)
         {
            while(true)
            {
               if(int(_loc3_.§+j§.length) > 0)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(_loc3_.§+j§);
                  §§push(int(_loc3_.§+j§.length));
                  if(!_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().layout.apply();
               break;
            }
         }
         _loc3_ = dialog;
         loop8:
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  if(int(_loc3_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(_loc8_)
                  {
                     break loop8;
                  }
               }
               §§push(_loc3_.§@#§);
               §§push(int(_loc3_.§@#§.length));
               if(_loc7_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§[!>§ = 13421772;
            break;
         }
         var _loc4_:§'§ = dialog;
         if(!_loc8_)
         {
            while(true)
            {
               if(int(_loc4_.§@#§.length) > 0)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(_loc4_.§@#§);
                  §§push(int(_loc4_.§@#§.length));
                  if(!_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§6;§();
               break;
            }
         }
         var _loc5_:* = §&!S§.scale(1.2);
         var _loc6_:* = §&!S§.width(144);
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(_loc7_)
         {
            dialog.§";§("No.",52,-200,_loc5_,_loc6_,null,_loc1_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(_loc8_)
         {
            tunnel.§<M§(0);
            §§push(tunnel.§<!M§);
            §§push(33);
            §§push(50);
            §§push(§9_§.endZ);
            if(_loc8_)
            {
               §§push(§§pop() - 300);
            }
            §§pop().§6!&§(§§pop(),§§pop(),§§pop());
            if(!_loc7_)
            {
               tunnel.§<!M§.rotate(§4!R§.§1!A§(0,-0.5235987755982988,0));
            }
            tunnel.display(0);
            §#!P§.§9E§(3,-2.2,true,10);
            if(!_loc7_)
            {
               §#!P§.spritesheet.§,=§(0);
               gentleman.§9E§(2,1,true);
               if(_loc8_)
               {
                  gentleman.spritesheet.§,=§(33);
               }
            }
         }
         var _loc1_:* = §&!S§.scale(0.4);
         loop0:
         while(true)
         {
            if(!_loc7_)
            {
               dialog.§ q§("Of all the places you could have been...",-80,-320,_loc1_,null,16777215);
               if(!_loc8_)
               {
                  break;
               }
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Finally!");
                     §§push(-160);
                     §§push(-240);
                     if(!_loc7_)
                     {
                        §§push(null);
                        if(!_loc7_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc8_)
                                 {
                                    addr0106:
                                    §§push(null);
                                    if(!_loc7_)
                                    {
                                       break loop3;
                                    }
                                    break loop1;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc7_)
                                 {
                                    break loop1;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break;
                                 }
                              }
                              §§push(null);
                              if(_loc8_)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop2;
                        }
                        break;
                     }
                     §§goto(addr0106);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               break loop0;
            }
            §§push(§§pop());
            break loop2;
         }
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc8_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Come with me. We\'ve found a");
               §§push(-160);
               §§push(-120);
               if(!_loc7_)
               {
                  §§push(-1);
                  if(_loc8_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc7_)
                        {
                           addr0197:
                           §§push(null);
                           break;
                        }
                        addr01b8:
                        §§push(-1);
                        if(!_loc7_)
                        {
                           addr01c1:
                           §§push(§§pop());
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(!_loc7_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr01b8);
                           }
                           else
                           {
                              §§push(-1);
                           }
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr01c1);
               }
               §§goto(addr0197);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc2_);
         }
         var _loc3_:§'§ = dialog;
         if(_loc8_)
         {
            while(true)
            {
               if(int(_loc3_.§+j§.length) > 0)
               {
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc3_.§+j§);
                  §§push(int(_loc3_.§+j§.length));
                  if(_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§[!>§ = 13421772;
               break;
            }
         }
         var _loc4_:§'§ = dialog;
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  if(int(_loc4_.§+j§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(_loc7_)
                  {
                     continue loop9;
                  }
               }
               §§push(_loc4_.§+j§);
               §§push(int(_loc4_.§+j§.length));
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().layout.apply();
            continue loop9;
         }
         _loc4_ = dialog;
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  if(int(_loc4_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc8_)
                  {
                     continue loop11;
                  }
               }
               §§push(_loc4_.§@#§);
               §§push(int(_loc4_.§@#§.length));
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§[!>§ = 13421772;
            continue loop11;
         }
         var _loc5_:§'§ = dialog;
         loop11:
         while(true)
         {
            while(true)
            {
               if(!_loc7_)
               {
                  if(int(_loc5_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc8_)
                  {
                     break loop11;
                  }
               }
               §§push(_loc5_.§@#§);
               §§push(int(_loc5_.§@#§.length));
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§6;§();
            break;
         }
         _loc1_ = §&!S§.scale(1.2);
         var _loc6_:* = §&!S§.width(144);
         _loc2_ = new § 6§(gentleman.§<!U§());
         if(!_loc7_)
         {
            dialog.§";§("No.",64,-120,_loc1_,_loc6_,null,_loc2_,null);
         }
      }
   }
}

