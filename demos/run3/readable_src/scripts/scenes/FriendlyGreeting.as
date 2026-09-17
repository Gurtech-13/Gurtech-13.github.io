package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§'§;
   import §%!Z§.§`! §;
   import §-!!§.§&!;§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class FriendlyGreeting extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var pastafarian:StageActor;
      
      public var duplicator:StageActor;
      
      public var child:StageActor;
      
      public var §#!P§:StageActor;
      
      public function FriendlyGreeting()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§0x§,46,FriendlyGreeting.§3S§,{"noCrumblingTiles":true});
               if(_loc2_)
               {
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
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame3);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame4);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame5);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().frames = null;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            name = "Friendly Greeting";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            tunnel = null;
            §#!P§ = null;
         }
         pastafarian = null;
         duplicator = null;
         child = null;
         sprites.length = 0;
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(_loc10_)
         {
            §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
            if(_loc10_)
            {
               sprites.push(§#!P§);
            }
         }
         §§push(§!^§.pathName);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc9_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,32);
               if(_loc9_)
               {
                  break;
               }
            }
            pastafarian = new StageActor(section,CharacterRegistry.pastafarian,false,null,false,null);
            if(!_loc9_)
            {
               break;
            }
            §§goto(addr00b4);
         }
         sprites.push(pastafarian);
         addr00b4:
         §§push(§!^§.pathName);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         while(true)
         {
            if(_loc10_)
            {
               pastafarian.goesTo = new § !N§(_loc4_,33);
               if(!_loc9_)
               {
                  duplicator = new StageActor(section,CharacterRegistry.duplicator,true,null,false,null);
                  if(!_loc10_)
                  {
                     break;
                  }
               }
            }
            sprites.push(duplicator);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc5_);
         if(_loc10_)
         {
            duplicator.goesTo = new § !N§(_loc6_,45);
            if(_loc10_)
            {
               child = new StageActor(section,CharacterRegistry.child,true,null,false,null);
               if(!_loc9_)
               {
                  sprites.push(child);
               }
            }
         }
         §§push(§!^§.pathName);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         var _loc8_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc7_);
         if(!_loc9_)
         {
            child.goesTo = new § !N§(_loc8_,45);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §#!P§.placeAt(5,0.5);
         §#!P§.spritesheet.§@S§(true);
         pastafarian.placeAt(4.3,1.2);
         if(_loc3_)
         {
            pastafarian.spritesheet.§,=§(101);
         }
         duplicator.placeAt(14.7,31.5,null,1);
         duplicator.spritesheet.§,=§(77);
         if(_loc3_)
         {
            duplicator.spritesheet.§@S§(false);
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(dialog);
               §§push("Perfect example right here: you look stupid when you run like that.");
               §§push(0);
               §§push(-140);
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr00bd:
                                 §§push(null);
                                 break loop0;
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
                        addr00e0:
                        §§push(-1 / 2.5);
                        break loop0;
                     }
                     §§push(-1);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr00e0);
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr00bd);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1800 == null ? null : int(Math.round(1800 / 2.5)),null,_loc1_);
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §#!P§.placeAt(5,1.8);
         while(true)
         {
            if(_loc3_)
            {
               §#!P§.spritesheet.§,=§(75);
               if(!_loc2_)
               {
                  pastafarian.spritesheet.§,=§(96);
                  duplicator.placeAt(14.7,31.6,null,1);
               }
               duplicator.spritesheet.§,=§(81);
               if(!_loc3_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§@S§(true);
            if(_loc3_)
            {
               break;
            }
            §§goto(addr008c);
         }
         child.spritesheet.§,=§(103);
         addr008c:
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            loop1:
            while(true)
            {
               §§push(dialog);
               §§push("But for the record, I\'m only rude to people who deserve it.");
               §§push(0);
               §§push(-140);
               if(_loc3_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(-1);
                        if(!_loc2_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc2_)
                              {
                                 addr00c8:
                                 §§push(null);
                                 break loop1;
                              }
                              break;
                           }
                           §§push(-1);
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(-1);
                        break loop2;
                     }
                     §§push(-1);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        break loop1;
                     }
                     break;
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr00c8);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1600 == null ? null : int(Math.round(1600 / 2.5)),null,_loc1_);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §#!P§.spritesheet.§,=§(71);
         }
         var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               §§push(dialog);
               §§push("I shall take it upon myself to teach you politeness.");
               §§push(160);
               §§push(-240);
               if(_loc2_)
               {
                  loop1:
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
                                 addr0064:
                                 §§push(null);
                                 break loop0;
                              }
                              break;
                           }
                           §§push(-1);
                           if(_loc3_)
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
                     §§push(-1);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        break loop0;
                     }
                     break;
                  }
                  §§push(§§pop() / 2.5);
                  break;
               }
               §§goto(addr0064);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),1650 == null ? null : int(Math.round(1650 / 2.5)),null,_loc1_);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         loop3:
         while(true)
         {
            if(!_loc3_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("What? No.");
                     §§push(-240);
                     §§push(-80);
                     if(_loc2_)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           break loop4;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop4;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop4;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop4;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
                  if(_loc3_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop5;
            }
            § !C§("again");
            break;
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc2_)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Ok, whatever. Just follow me.");
                     §§push(-80);
                     §§push(320);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 break loop7;
                              }
                              break loop6;
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
                              break loop6;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop6;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop7;
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Very well.");
                     §§push(80);
                     §§push(-180);
                     if(!_loc3_)
                     {
                        §§push(null);
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc2_)
                                 {
                                    addr0056:
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       break loop2;
                                    }
                                    break loop0;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc2_)
                                 {
                                    break loop0;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break;
                                 }
                              }
                              §§push(null);
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break loop1;
                        }
                        break;
                     }
                     §§goto(addr0056);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop());
            break loop1;
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc2_)
         {
            loop4:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(dialog);
                  §§push("Great!");
                  §§push(-200);
                  §§push(-20);
                  if(!_loc3_)
                  {
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(_loc2_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00dd:
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       break loop5;
                                    }
                                    break loop4;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop6;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop4;
                        }
                        §§push(null);
                        if(_loc2_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr00dd);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop5;
         }
         _loc1_ = new § 6§(pastafarian.§<!U§());
         if(!_loc3_)
         {
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I suppose someone must do it.");
                  §§push(160);
                  §§push(320);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc2_)
                           {
                              addr016e:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc3_)
                           {
                              break loop8;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop8;
                           }
                        }
                        §§push(null);
                        if(_loc2_)
                        {
                           §§push(§§pop());
                           break;
                        }
                     }
                     break loop8;
                  }
                  §§goto(addr016e);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop9;
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            loop10:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Hmm?");
                  §§push(-320);
                  §§push(360);
                  if(_loc2_)
                  {
                     §§push(null);
                     if(_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc3_)
                           {
                              addr01f5:
                              §§push(null);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 break;
                              }
                              break loop10;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc2_)
                           {
                              break loop10;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop10;
                           }
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           break loop10;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr01f5);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop11;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §#!P§.spritesheet.§,=§(69);
         }
         var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Are these questions leading up to anything, or is this what you consider a friendly greeting?");
                     §§push(0);
                     §§push(-140);
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §§push(-1);
                           if(!_loc2_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(null);
                                    break loop1;
                                 }
                                 break;
                              }
                              §§push(-1);
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(-1);
                           break loop0;
                        }
                     }
                     §§push(-1);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),2300 == null ? null : int(Math.round(2300 / 2.5)),null,_loc1_);
            }
            §§push(§§pop() / 2.5);
            break loop1;
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("I found a way home!");
                  §§push(-240);
                  §§push(240);
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!_loc2_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr0100:
                              §§goto(addr0124);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop4;
                           }
                        }
                        addr0113:
                        §§push(null);
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop4;
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr0113);
               }
               §§goto(addr0124);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr0124:
            if(_loc3_)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Everyone\'s welcome to come. Even you!");
                        §§push(160);
                        §§push(360);
                        if(!_loc2_)
                        {
                           §§push(-1);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc3_)
                              {
                                 §§push(null);
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(-1);
                              if(_loc2_)
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
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop6;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),1,null);
               }
               §§push(§§pop() / 2.5);
               break loop7;
            }
         }
      }
      
      public function frame0() : void
      {
         var waitBadExample:TextField;
         var _gthis:FriendlyGreeting;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         _gthis = this;
         tunnel.camera.§6!&§(0,70,-100);
         tunnel.display(0);
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               §#!P§.placeAt(5,3);
               §#!P§.spritesheet.§,=§(72);
               pastafarian.placeAt(4.3,2);
               while(true)
               {
                  if(!_loc5_)
                  {
                     pastafarian.spritesheet.§,=§(100);
                     if(!_loc5_)
                     {
                        duplicator.placeAt(14.7,31.8,null,1);
                        duplicator.spritesheet.§,=§(71);
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     child.placeAt(15,31.4,null,1);
                  }
                  child.spritesheet.§,=§(96);
                  if(!_loc5_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Oh, hey!");
                        §§push(-40);
                        §§push(-320);
                        if(!_loc5_)
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc5_)
                              {
                                 break loop3;
                              }
                              §§goto(addr0104);
                           }
                        }
                        §§push(null);
                        if(!_loc5_)
                        {
                           break;
                        }
                        break loop3;
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr010f);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr010a);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc5_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr010f:
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc5_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("Don\'t you miss your friends? Wait, bad example.\nDon\'t you miss your weird cult?");
               §§push(-80);
               §§push(-140);
               if(!_loc5_)
               {
                  §§push(-1);
                  if(_loc4_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc5_)
                        {
                           addr0172:
                           §§push(null);
                           break;
                        }
                        addr0193:
                        §§push(-1);
                        if(_loc5_)
                        {
                           addr01a2:
                           §§push(§§pop() / 2.5);
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(_loc4_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr0193);
                           }
                           else
                           {
                              §§push(-1);
                           }
                           §§goto(addr01a2);
                        }
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§goto(addr0172);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),-1 == null ? null : int(Math.round(-1 / 2.5)),0,_loc1_);
         }
         var _loc2_:§'§ = dialog;
         if(!_loc5_)
         {
            while(true)
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  if(int(_loc2_.§+j§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
               }
               §§push(_loc2_.§+j§);
               §§push(int(_loc2_.§+j§.length));
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§§slot[2] = §§pop().§-7§;
            if(!_loc5_)
            {
               dialog.layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
               {
                  var _temp_1:* = true;
                  var _loc2_:Boolean = false;
                  var _loc3_:Boolean = _temp_1;
                  §§push(_gthis.dialog.§[Y§);
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(0.6);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(_gthis.dialog.layout.scale.y);
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  if(!_loc2_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  if(!_loc2_)
                  {
                     §&!;§.setTextFormat(waitBadExample,"Wait, bad example.",new TextFormat(null,_loc1_));
                  }
               })));
            }
         }
         loop8:
         while(true)
         {
            while(true)
            {
               §§push(_gthis.dialog.§[Y§);
               if(!_loc5_)
               {
                  §§push(0.6);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     break loop8;
                  }
               }
               §§push(_gthis.dialog.layout.scale.y);
               break;
            }
            §§push(§§pop() * §§pop());
            break;
         }
         §§push(int(§§pop()));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §&!;§.setTextFormat(waitBadExample,"Wait, bad example.",new TextFormat(null,_loc3_));
         }
         _loc1_ = new § 6§(pastafarian.§<!U§());
         if(!_loc5_)
         {
            while(true)
            {
               §§push(dialog);
               §§push("...");
               §§push(200);
               §§push(120);
               if(_loc4_)
               {
                  §§push(-1);
                  if(!_loc5_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc5_)
                        {
                           addr02d4:
                           §§push(null);
                           break;
                        }
                        addr02ea:
                        §§push(-1);
                        if(!_loc5_)
                        {
                           addr02f3:
                           §§push(§§pop());
                           break;
                        }
                     }
                     else
                     {
                        §§push(-1);
                        if(!_loc5_)
                        {
                           if(§§pop() < 0)
                           {
                              §§goto(addr02ea);
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
                  §§goto(addr02f3);
               }
               §§goto(addr02d4);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),300 == null ? null : int(Math.round(300 / 2.5)),null,_loc1_);
         }
      }
   }
}

