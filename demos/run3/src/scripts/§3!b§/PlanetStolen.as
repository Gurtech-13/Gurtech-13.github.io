package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   
   public class PlanetStolen extends §+Z§
   {
      
      public static var §2#§:* = {"fields":{"child":{"fade":null}}};
      
      public var §-P§:§^s§;
      
      public var duplicator:§^s§;
      
      public var child:§^s§;
      
      public function PlanetStolen()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super(§>K§.§0x§,36,null,null,null,§+!"§.IF_FOLLOWING_LEVEL_REACHED);
            while(true)
            {
               if(_loc1_)
               {
                  §3!<§(new § !N§(§>K§.§>y§,0));
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame1);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame2);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc1_)
               {
                  name = "Planet Stolen";
               }
               break;
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               tunnel = null;
               if(!_loc2_)
               {
                  break;
               }
               §-P§ = null;
               if(_loc2_)
               {
                  duplicator = null;
                  if(!_loc1_)
                  {
                     child = null;
                     if(_loc1_)
                     {
                        break;
                     }
                  }
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(_loc6_)
            {
               §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
               if(_loc7_)
               {
                  break;
               }
            }
            sprites.push(§-P§);
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("sidePathU");
         while(true)
         {
            if(!_loc7_)
            {
               §-P§.goesTo = new § !N§(_loc1_,0);
               if(_loc7_)
               {
                  break;
               }
            }
            duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,null);
            if(_loc6_)
            {
               sprites.push(duplicator);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc2_);
         while(true)
         {
            if(_loc6_)
            {
               duplicator.goesTo = new § !N§(_loc3_,36);
               if(!_loc7_)
               {
                  child = new §^s§(§9_§,§'O§.child,true,null,false,null);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            sprites.push(child);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc4_);
         if(!_loc7_)
         {
            child.goesTo = new § !N§(_loc5_,35);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §-P§.§9E§(3,31.7);
            loop0:
            while(true)
            {
               if(!_loc2_)
               {
                  §-P§.spritesheet.§,=§(68);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §-P§.spritesheet.§@S§(true);
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     duplicator.§9E§(2,32);
                     if(!_loc2_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               duplicator.spritesheet.§,=§(64);
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
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
                     §§push(dialog);
                     §§push("I think I\'ll ignore that entirely.\nNow help me map out this next area.");
                     §§push(120);
                     §§push(-120);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc3_)
                                 {
                                    addr00b1:
                                    §§push(null);
                                    if(!_loc2_)
                                    {
                                       break loop4;
                                    }
                                    break loop2;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc2_)
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
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop3;
                        }
                        break;
                     }
                     §§goto(addr00b1);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop3;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §-P§.§9E§(4,29.5,null,3);
            if(!_loc3_)
            {
               §-P§.spritesheet.§,=§(65);
               §-P§.spritesheet.§@S§(true);
               duplicator.§9E§(2.5,31.5);
               duplicator.spritesheet.§,=§(69);
               §-P§.transform.§"I§(duplicator.transform.§+n§());
               if(_loc2_)
               {
                  dialog.§ q§("*gasp*",-440,-750,60);
               }
               loop0:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("It was you!");
                     §§push(-176);
                     §§push(-240);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 addr00b6:
                                 §§push(null);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop0;
                              }
                              addr00d0:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr00d0);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                        }
                        §§push(§§pop() / 2.5);
                        break;
                     }
                     §§goto(addr00b6);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
               }
               §§push(§§pop());
               break loop1;
            }
            while(true)
            {
               §§push(dialog);
               §§push("You stole the Planet!");
               §§push(-220);
               §§push(-160);
               if(_loc2_)
               {
                  §§push(-1);
                  if(_loc2_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           addr0128:
                           §§push(null);
                           break;
                        }
                        addr013d:
                        §§push(-1);
                        if(_loc3_)
                        {
                           addr0157:
                           §§push(§§pop() / 2.5);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc2_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr013d);
                           }
                           else
                           {
                              §§push(-1);
                           }
                           §§goto(addr0157);
                        }
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr0128);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,null);
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc2_)
         {
            loop3:
            while(true)
            {
               §§push(dialog);
               §§push("That\'s how you know!");
               §§push(-165.2);
               §§push(-20);
               if(!_loc3_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc3_)
                              {
                                 addr01bf:
                                 §§push(null);
                                 break loop3;
                              }
                              break;
                           }
                           §§push(-1);
                           if(_loc3_)
                           {
                              break loop4;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(-1);
                        break loop4;
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        break loop3;
                     }
                     break;
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr01bf);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,_loc1_);
         }
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               §§push(dialog);
               §§push("...");
               §§push(240);
               §§push(0);
               if(_loc2_)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc3_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 addr0245:
                                 §§push(null);
                                 break loop6;
                              }
                              break;
                           }
                           §§push(-1);
                           if(!_loc2_)
                           {
                              break loop7;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        addr0269:
                        §§push(-1 / 2.5);
                        break loop6;
                     }
                     §§push(-1);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr0269);
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr0245);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc1_);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §4!R§.§1!A§(3.141592653589793,0.7853981633974483,0,tunnel.§<!M§.§,t§);
         tunnel.§<!M§.§%!7§.x = 60;
         tunnel.§<!M§.§%!7§.y = 60;
         tunnel.§<!M§.§%!7§.z = 2600;
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  tunnel.§<!M§.reset();
                  tunnel.display(0);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §-P§.§9E§(5,28);
                  §-P§.spritesheet.§,=§(67);
                  duplicator.§9E§(4,29.5);
                  duplicator.spritesheet.§,=§(66);
                  if(!_loc2_)
                  {
                     continue loop2;
                  }
               }
               child.§9E§(1.3,12.5,null,-26);
               child.spritesheet.§,=§(111);
               child.spritesheet.§@S§(false);
               continue loop2;
            }
            var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
            if(_loc2_)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("So? It\'ll come back.");
                     §§push(240);
                     §§push(-220);
                     if(_loc2_)
                     {
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(null);
                              if(!_loc3_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc2_)
                                    {
                                       addr017a:
                                       §§push(null);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop());
                                          break loop5;
                                       }
                                       break loop4;
                                    }
                                    break;
                                 }
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    break loop6;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop6;
                           }
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                           break;
                        }
                        §§push(§§pop() / 2.5);
                        break;
                     }
                     §§goto(addr017a);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
               }
               §§push(§§pop());
               break loop5;
            }
            _loc1_ = new § 6§(duplicator.§<!U§());
            if(_loc2_)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("How do you know?");
                  §§push(-176);
                  §§push(-140);
                  if(_loc2_)
                  {
                     §§push(-1);
                     if(!_loc3_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              addr0204:
                              §§push(null);
                              break;
                           }
                           addr0218:
                           §§push(-1);
                           if(_loc3_)
                           {
                              addr0232:
                              §§push(§§pop() / 2.5);
                              break;
                           }
                        }
                        else
                        {
                           §§push(-1);
                           if(!_loc3_)
                           {
                              if(§§pop() < 0)
                              {
                                 §§goto(addr0218);
                              }
                              else
                              {
                                 §§push(-1);
                              }
                              §§goto(addr0232);
                           }
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr0204);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc1_);
            }
            return;
         }
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(dialog);
               §§push("The Planet is gone!");
               §§push(-176);
               §§push(-320);
               if(_loc2_)
               {
                  §§push(null);
                  if(_loc2_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           addr00e9:
                           §§push(null);
                           if(_loc2_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop2;
                        }
                        addr0103:
                        §§push(null);
                        if(!_loc3_)
                        {
                           break loop2;
                        }
                     }
                     else
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr0103);
                           }
                           else
                           {
                              §§push(null);
                           }
                        }
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  break loop2;
               }
               §§goto(addr00e9);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
            break loop1;
         }
         §§push(§§pop());
         break loop3;
      }
   }
}

