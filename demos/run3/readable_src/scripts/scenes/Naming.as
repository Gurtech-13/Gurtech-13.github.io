package scenes
{
   import §!!$§.§ 6§;
   import map.Map;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §6!Q§.§'[§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class Naming extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var §-P§:StageActor;
      
      public var gentleman:StageActor;
      
      public function Naming()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super(§>K§.§`!5§,-3,Naming.§3S§);
               if(!_loc2_)
               {
                  §§push(§§findproperty(frames));
                  §§push(frame0);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame1);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame2);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame3);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().frames = null;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            name = "Naming";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            tunnel = null;
            while(true)
            {
               if(_loc2_)
               {
                  gentleman = null;
                  if(_loc1_)
                  {
                     break;
                  }
                  §-P§ = null;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               sprites.length = 0;
               break;
            }
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
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
                     if(!_loc3_)
                     {
                        §§push(false);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(false);
                        if(_loc4_)
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    break loop2;
                                 }
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc4_)
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
                        if(!§§pop())
                        {
                           break loop2;
                        }
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§!!6§ == 4);
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     break loop2;
                  }
                  §§goto(addr0088);
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  §[!<§.§@!A§().§4X§(Map.§@!A§());
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr00d5);
            }
            §§push(!§§pop());
            if(!_loc3_)
            {
               addr0088:
               §§push(Boolean(§§pop()));
            }
            break loop2;
         }
         §'[§.§7!@§(CharacterRegistry.§-P§,["Note to self...","Don\'t let the Gentleman name any more tunnels."]);
         if(!_loc3_)
         {
            addr00d5:
            super.loadNext(param1,param2);
         }
         addr00e0:
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(_loc6_)
            {
               gentleman = new StageActor(section,CharacterRegistry.gentleman,false,null,false,null);
               if(_loc5_)
               {
                  break;
               }
            }
            sprites.push(gentleman);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc6_)
            {
               gentleman.goesTo = new § !N§(_loc2_,-4);
               if(_loc5_)
               {
                  break;
               }
            }
            §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr00c2);
         }
         sprites.push(§-P§);
         addr00c2:
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(!_loc5_)
         {
            §-P§.goesTo = new § !N§(_loc4_,-3);
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §-P§.spritesheet.§,=§(24);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc4_)
               {
                  §-P§.placeAt(0,5,null,3);
                  if(_loc4_)
                  {
                     break;
                  }
                  gentleman.placeAt(1,-1);
                  gentleman.spritesheet.§,=§(65);
                  gentleman.alignWith(§-P§);
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Hmm... what would be a good name?");
                        §§push(-80);
                        §§push(-360);
                        if(_loc5_)
                        {
                           §§push(-1);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc5_)
                              {
                                 §§push(null);
                                 break loop9;
                              }
                           }
                           else
                           {
                              §§push(-1);
                              if(_loc4_)
                              {
                                 break;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(-1);
                                 break loop8;
                              }
                           }
                        }
                        §§push(-1);
                        if(_loc5_)
                        {
                           break;
                        }
                        break loop8;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1200 == null ? null : int(Math.round(1200 / 2.5)),null,null);
                  if(_loc5_)
                  {
                     break loop1;
                  }
                  break loop0;
               }
               §§push(§§pop() / 2.5);
               break loop9;
            }
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  §§push(dialog);
                  §§push("It has to appeal to the right sort of people...");
                  §§push(120);
                  §§push(-140);
                  if(_loc5_)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc5_)
                              {
                                 §§push(null);
                                 break loop12;
                              }
                              break;
                           }
                           §§push(-1);
                           if(!_loc5_)
                           {
                              break loop11;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(-1);
                        break loop11;
                     }
                  }
                  §§push(-1);
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop11;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1500 == null ? null : int(Math.round(1500 / 2.5)),0,null);
               break loop0;
            }
            §§push(§§pop() / 2.5);
            break loop12;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc5_)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("And it certainly ought to reflect the bright colors and patterns in the tunnel.");
                     §§push(-240);
                     §§push(120);
                     if(!_loc4_)
                     {
                        §§push(-1);
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc5_)
                           {
                              §§push(null);
                              break loop3;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop2;
                           }
                        }
                     }
                     §§push(-1);
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop2;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1400 == null ? null : int(Math.round(1400 / 2.5)),1,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop3;
         }
         var _loc2_:§'§ = dialog;
         loop5:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(int(_loc2_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc5_)
                  {
                     break loop5;
                  }
               }
               §§push(_loc2_.§@#§);
               §§push(int(_loc2_.§@#§.length));
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§7s§ = 300;
            break;
         }
         var _loc3_:§'§ = dialog;
         if(!_loc4_)
         {
            while(true)
            {
               if(int(_loc3_.§@#§.length) > 0)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(_loc3_.§@#§);
                  §§push(int(_loc3_.§@#§.length));
                  if(_loc5_)
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
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §-P§.transform.translate(0,0,30);
            loop0:
            while(true)
            {
               if(!_loc2_)
               {
                  §-P§.spritesheet.§,=§(39);
                  if(_loc3_)
                  {
                     gentleman.transform.translate(0,0,-10);
                     if(_loc2_)
                     {
                        break;
                     }
                     gentleman.spritesheet.§,=§(64);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("...");
                     §§push(-80);
                     §§push(-280);
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(-1);
                           if(_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(null);
                                    break loop2;
                                 }
                                 break;
                              }
                              §§push(-1);
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(-1);
                           break loop1;
                        }
                     }
                     §§push(-1);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop1;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,null);
                  break loop0;
               }
               §§push(§§pop() / 2.5);
               break loop2;
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Oh, alright. If you really want to, you can name a tunnel or two.");
               §§push(-120);
               §§push(-120);
               if(_loc3_)
               {
                  §§push(-1);
                  if(_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc2_)
                        {
                           addr0123:
                           §§push(null);
                           break;
                        }
                        addr0137:
                        §§push(-1);
                        if(!_loc3_)
                        {
                           addr0146:
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
                              §§goto(addr0137);
                           }
                           else
                           {
                              §§push(-1);
                           }
                           §§goto(addr0146);
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0146);
               }
               §§goto(addr0123);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1700 == null ? null : int(Math.round(1700 / 2.5)),0,_loc1_);
         }
         _loc1_ = new § 6§(gentleman.§<!U§());
         if(!_loc2_)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Much obliged.");
                     §§push(40);
                     §§push(360);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr01ac:
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop5;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop5;
                              }
                           }
                           §§push(null);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              break loop6;
                           }
                           break loop5;
                        }
                        break;
                     }
                     §§goto(addr01ac);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop6;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §-P§.spritesheet.§,=§(65);
         }
         var _loc1_:* = §&!S§.scale(0.65);
         var _loc2_:* = §&!S§.width(1000);
         var _loc3_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc5_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("I worry that it will reflect poorly on us upon our return, if each tunnel is assigned nothing but a letter. ");
               if(!_loc5_)
               {
                  §§push(§§pop() + "By way of example, the letter \"D\" is a fantastically dull appellation for this tunnel, especially when compared with the numerous other possibilities.");
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            §§pop().§";§(§§pop(),40,-160,_loc1_,_loc2_,null,_loc3_,null);
            if(_loc4_)
            {
               dialog.§ q§("Does it even\nmatter that much?",-500,400,§&!S§.scale(0.5)).setTextFormat(new TextFormat(null,null,null,null,null,null,null,null,"center"));
            }
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         QuaternionUtils.setFromEuler(0,-0.5235987755982988,0,tunnel.camera.§,t§);
         tunnel.camera.reset();
         tunnel.camera.§6!&§(50,80,-100);
         tunnel.camera.§3;§();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               tunnel.display(0);
               if(_loc3_)
               {
                  break;
               }
               gentleman.placeAt(1.8,0.5);
               gentleman.spritesheet.§,=§(46);
               §-P§.placeAt(2.2,1);
               §-P§.spritesheet.§,=§(75);
               §-P§.spritesheet.§@S§(true);
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I\'m concerned about your naming convention.");
                     §§push(160);
                     §§push(-320);
                     if(!_loc3_)
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop1;
                           }
                        }
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1500 == null ? null : int(Math.round(1500 / 2.5)),null,null);
               break loop0;
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc2_)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("The labels you choose strike me as entirely arbitrary, and worse, uninformative.");
                     §§push(80);
                     §§push(-120);
                     if(_loc2_)
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              §§push(null);
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc2_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(-1);
                              break loop4;
                           }
                        }
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),2000 == null ? null : int(Math.round(2000 / 2.5)),0,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
      }
   }
}

