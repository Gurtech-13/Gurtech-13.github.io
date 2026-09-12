package com.player03.run3.character
{
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §-d§.§-!4§;
   import §-d§.§5w§;
   import §-d§.§7!5§;
   import §-d§.§7!]§;
   import §-d§.§=!-§;
   import §3!b§.AngelVsBunny;
   import §3!b§.Cutscenes;
   import §4n§.Achievements;
   import §@!^§.§2+§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§9t§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Point;
   
   public class §'O§
   {
      
      public static var §&!#§:Vector.<§6O§>;
      
      public static var available:Vector.<§6O§>;
      
      public static var random:§2+§;
      
      public static var §-P§:§6O§;
      
      public static var skater:§6O§;
      
      public static var student:§6O§;
      
      public static var §#!P§:§6O§;
      
      public static var lizard:§6O§;
      
      public static var gentleman:§6O§;
      
      public static var §!!§:§6O§;
      
      public static var duplicator:§6O§;
      
      public static var §4s§:§6O§;
      
      public static var §7W§:§6O§;
      
      public static var child:§6O§;
      
      public static var pastafarian:§6O§;
      
      public static var §]![§:§6O§;
      
      public static var §<!D§:§6O§;
      
      public static var §52§:§6O§;
      
      public static var §5D§:§6O§;
      
      public static var §=!O§:§6O§;
      
      public static var §?g§:§6O§;
      
      public static var §;<§:§6O§;
      
      public function §'O§()
      {
      }
      
      public static function init() : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = null as Vector.<§6O§>;
         var _loc15_:* = null as §6O§;
         var _loc1_:Vector.<§6O§> = new Vector.<§6O§>(0,false);
         var _loc2_:Vector.<§6O§> = _loc1_;
         if(_loc17_)
         {
            §'O§.§&!#§ = _loc2_;
         }
         var _loc3_:Vector.<§6O§> = new Vector.<§6O§>(0,false);
         var _loc4_:Vector.<§6O§> = _loc3_;
         §'O§.available = _loc4_;
         § L§.mid = 862130;
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  if(_loc17_)
                  {
                     §'O§.§-P§ = new §6O§(0,"Runner",2,function(param1:§ !W§, param2:§6O§):Runner
                     {
                        return new Runner(param1,param2);
                     });
                     if(!_loc18_)
                     {
                        §'O§.skater = new §6O§(1,"Skater",125,function(param1:§ !W§, param2:§6O§):Skater
                        {
                           return new Skater(param1,param2);
                        },null,"d521995bd2b4672c931246992e7377108ea1e601");
                        §'O§.student = new §6O§(2,"Student",109,function(param1:§ !W§, param2:§6O§):Student
                        {
                           return new Student(param1,param2);
                        },null,"9e1c525d12a466e7fcb5a7b110fb4c6139241247");
                        §'O§.§#!P§ = new §6O§(3,"Angel",19,function(param1:§ !W§, param2:§6O§):Angel
                        {
                           return new Angel(param1,param2);
                        },null,"c6cd4faaee1e0ca636d0025a20ee64e41197a234");
                        §'O§.lizard = new §6O§(4,"Lizard",-1,function(param1:§ !W§, param2:§6O§):Lizard
                        {
                           return new Lizard(param1,param2);
                        },null,"a9931021863aa9e786a5d22303e73ea331907079");
                        if(!_loc18_)
                        {
                           §'O§.gentleman = new §6O§(5,"Gentleman",58,function(param1:§ !W§, param2:§6O§):Gentleman
                           {
                              return new Gentleman(param1,param2);
                           },null,"60ab62514b909a79cceb699dd6d3b83151db88ad");
                           §'O§.random = new §2+§(6);
                           if(!_loc17_)
                           {
                              break;
                           }
                           §'O§.§!!§ = new §6O§(7,"Zombie",-1,null,false);
                           §'O§.duplicator = new §6O§(8,"Duplicator",43,function(param1:§ !W§, param2:§6O§):Duplicator
                           {
                              return new Duplicator(param1,param2);
                           },true,"c38365b62c77aff67f4a85e775a7e3407b957758");
                        }
                        §'O§.§4s§ = new §6O§(9,"Skier",§'O§.§-P§.§#!H§,function(param1:§ !W§, param2:§6O§):Skier
                        {
                           return new Skier(param1,param2);
                        },null,"add17b1bf22fcb2d5a791bb7469bb0cf48685dad");
                        §'O§.§7W§ = new §6O§(10,"Bunny",-1,function(param1:§ !W§, param2:§6O§):Bunny
                        {
                           return new Bunny(param1,param2);
                        },null,"730b3ad80ade1bc4d2b36252432347233e030f0b");
                        if(_loc18_)
                        {
                           break loop6;
                        }
                     }
                     §'O§.child = new §6O§(11,"Child",191,function(param1:§ !W§, param2:§6O§):Child
                     {
                        return new Child(param1,param2);
                     },false,"1e5765b9cd25115790ad0357c44fc402bdd0f895");
                     if(_loc18_)
                     {
                        break loop5;
                     }
                  }
                  §'O§.pastafarian = new §6O§(12,"Pastafarian",60,function(param1:§ !W§, param2:§6O§):Pastafarian
                  {
                     return new Pastafarian(param1,param2);
                  },false,"d38c92fa6cb455df8eabc437bf56b23e0cb4d5fc");
                  if(_loc17_)
                  {
                     break loop5;
                  }
                  break;
               }
               §§goto(addr0260);
            }
            §'O§.§<!D§ = new §6O§(14,"Climber",-1,function(param1:§ !W§, param2:§6O§):Climber
            {
               return new Climber(param1,param2);
            },null,"c2fd471cc77645ec0b5915abb6d7eac52dfad6fa");
            if(!_loc18_)
            {
               §'O§.§52§ = new §6O§(15,"Ghost",§'O§.child.§#!H§,function(param1:§ !W§, param2:§6O§):Child
               {
                  return new Child(param1,param2);
               },false,"78fe2ebedc3b0a9b86d0f0cc362d6e507d761da4");
               §'O§.§5D§ = new §6O§(16,"IceSkater",§'O§.skater.§#!H§,function(param1:§ !W§, param2:§6O§):IceSkater
               {
                  return new IceSkater(param1,param2);
               },null,"add17b1bf22fcb2d5a791bb7469bb0cf48685dad");
            }
            §§goto(addr0243);
         }
         §'O§.§]![§ = new §6O§(13,"JackOLantern",§'O§.§-P§.§#!H§,function(param1:§ !W§, param2:§6O§):JackOLantern
         {
            return new JackOLantern(param1,param2);
         },null,"78fe2ebedc3b0a9b86d0f0cc362d6e507d761da4");
         if(!_loc18_)
         {
            break loop6;
         }
         addr0243:
         §'O§.§=!O§ = new §6O§(17,"Pirate",§'O§.pastafarian.§#!H§,function(param1:§ !W§, param2:§6O§):Pastafarian
         {
            return new Pastafarian(param1,param2);
         },false,"8e167d932bfa615b882182d7513fa968cb0eb1ea");
         addr0260:
         §'O§.§?g§ = new §6O§(18,"Ninja",§'O§.child.§#!H§,function(param1:§ !W§, param2:§6O§):Ninja
         {
            return new Ninja(param1,param2);
         },false,"db5c146c43e6e3474083895d2627d0ae28fb746f");
         §§push([§'O§.§-P§,§'O§.§4s§,§'O§.§]![§]);
         if(_loc17_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(!_loc18_)
         {
            §]!W§.create(Vector.<§6O§>(_loc5_));
         }
         §§push([§'O§.skater,§'O§.§5D§]);
         if(!_loc18_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(!_loc18_)
         {
            §]!W§.create(Vector.<§6O§>(_loc6_));
         }
         §§push([§'O§.child,§'O§.§52§]);
         if(!_loc18_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         if(_loc17_)
         {
            §]!W§.create(Vector.<§6O§>(_loc7_));
         }
         §§push([§'O§.pastafarian,§'O§.§=!O§]);
         if(_loc17_)
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            loop8:
            while(true)
            {
               loop11:
               while(true)
               {
                  loop39:
                  while(true)
                  {
                     loop43:
                     while(true)
                     {
                        while(true)
                        {
                           loop47:
                           while(true)
                           {
                              loop51:
                              while(true)
                              {
                                 loop52:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc18_)
                                       {
                                          §]!W§.create(Vector.<§6O§>(_loc8_));
                                          §'O§.§5D§.§]w§ = "Ice Skater";
                                          §'O§.§]![§.§]w§ = "Jack-o-Lantern";
                                          if(_loc17_)
                                          {
                                             §'O§.§4s§.§6<§ = "Runner";
                                             if(_loc18_)
                                             {
                                                continue loop9;
                                             }
                                             §'O§.§]![§.§6<§ = "Lizard";
                                             §'O§.§5D§.§6<§ = "Skater";
                                             while(true)
                                             {
                                                if(!_loc18_)
                                                {
                                                   §'O§.§52§.§6<§ = "Child";
                                                   §'O§.§=!O§.§6<§ = "Pastafarian";
                                                   §'O§.skater.frames = new §7!]§();
                                                   §'O§.lizard.frames = new §5w§();
                                                   §'O§.gentleman.frames = new §-!4§();
                                                   if(_loc18_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §'O§.§7W§.frames = new §7!5§();
                                                   §'O§.§4s§.frames = new §=!-§();
                                                   if(_loc18_)
                                                   {
                                                      break;
                                                   }
                                                   §'O§.lizard.§?$§ = "It\'s fast asleep.";
                                                   §'O§.lizard.§[t§ = "menu/characterselection/SleepingCharacterOverlay.png";
                                                   §'O§.lizard.color = 39168;
                                                   if(_loc18_)
                                                   {
                                                      break loop52;
                                                   }
                                                   §'O§.student.color = 10223873;
                                                   §'O§.§#!P§.color = 15765504;
                                                   §'O§.gentleman.color = 2236962;
                                                   if(_loc18_)
                                                   {
                                                      break loop51;
                                                   }
                                                }
                                                §'O§.duplicator.color = 3965056;
                                                if(_loc18_)
                                                {
                                                   break loop47;
                                                }
                                                §'O§.§7W§.color = 14000235;
                                                if(_loc18_)
                                                {
                                                   break loop9;
                                                }
                                                §'O§.child.color = 65331;
                                                §'O§.pastafarian.color = 6710886;
                                                if(!_loc17_)
                                                {
                                                   continue loop48;
                                                }
                                                §'O§.§-P§.§=!B§ = 2;
                                                §'O§.§4s§.§=!B§ = 2;
                                                if(!_loc18_)
                                                {
                                                   §'O§.§]![§.§=!B§ = 2;
                                                   if(!_loc17_)
                                                   {
                                                      break loop43;
                                                   }
                                                   §'O§.skater.§=!B§ = 1;
                                                   if(!_loc18_)
                                                   {
                                                      §'O§.lizard.§=!B§ = 0;
                                                      §'O§.student.§=!B§ = 2;
                                                      §'O§.§#!P§.§=!B§ = 1;
                                                      §'O§.gentleman.§=!B§ = 1;
                                                      §'O§.duplicator.§=!B§ = 1;
                                                   }
                                                   §'O§.§!!§.§=!B§ = 0;
                                                   §'O§.§7W§.§=!B§ = 0;
                                                   §'O§.child.§=!B§ = 1;
                                                   §'O§.§52§.§=!B§ = 1;
                                                   §'O§.pastafarian.§=!B§ = 2;
                                                   if(_loc18_)
                                                   {
                                                      break loop39;
                                                   }
                                                   §'O§.§<!D§.§=!B§ = 2;
                                                   if(!_loc17_)
                                                   {
                                                      break loop11;
                                                   }
                                                   §'O§.§5D§.§=!B§ = 1;
                                                   §'O§.lizard.§+! § = false;
                                                   §'O§.§7W§.§+! § = false;
                                                   §'O§.skater.§,#§ = 0.9;
                                                   if(_loc18_)
                                                   {
                                                      break loop8;
                                                   }
                                                }
                                                §'O§.§5D§.§,#§ = 0.9;
                                                if(_loc18_)
                                                {
                                                   continue loop9;
                                                }
                                                §'O§.student.§,#§ = 0.9;
                                                §'O§.child.§2t§ = 0.75;
                                                if(!_loc18_)
                                                {
                                                   §'O§.§52§.§2t§ = 0.75;
                                                   if(_loc17_)
                                                   {
                                                      continue loop48;
                                                   }
                                                   §§goto(addr0747);
                                                }
                                                else
                                                {
                                                   §§goto(addr0714);
                                                }
                                             }
                                             §§goto(addr0675);
                                          }
                                          §§goto(addr066b);
                                       }
                                       §§goto(addr0555);
                                    }
                                    §§goto(addr07d4);
                                 }
                                 §§goto(addr077b);
                              }
                              §§goto(addr071b);
                           }
                           §§goto(addr0625);
                        }
                        §'O§.§?g§.§2t§ = 0.75;
                        §'O§.skater.§;G§ = "Finish level 10 in Explore Mode to unlock this speedster. Or...";
                        §'O§.lizard.§;G§ = "Finish level 40 in Explore Mode to unlock this high-jumper. Or...";
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc17_)
                              {
                                 §'O§.student.§;G§ = "Collect power cells to find out what\'s in the backpack.";
                                 while(true)
                                 {
                                    if(!_loc18_)
                                    {
                                       break loop39;
                                    }
                                    §§goto(addr0747);
                                 }
                                 §§goto(addr079f);
                              }
                              §§goto(addr0736);
                           }
                           §§goto(addr077b);
                        }
                        §§goto(addr07b0);
                     }
                     §§goto(addr069b);
                  }
                  §'O§.§#!P§.§;G§ = "Collect power cells to unlock this self-proclaimed hero.";
                  while(true)
                  {
                     if(!_loc18_)
                     {
                        §'O§.duplicator.§;G§ = "Collect power cells to unlock this self-replicator.";
                        while(true)
                        {
                           if(!_loc18_)
                           {
                              §'O§.§7W§.§;G§ = "Earn any 8 achievements to unlock this bundle of energy.";
                              §'O§.child.§;G§ = "Complete the low-power area to unlock this light-weight youngster. Or...";
                              §'O§.gentleman.§;G§ = "Earn power cells to unlock this eccentric power cell collector.";
                              §'O§.pastafarian.§;G§ = "Earn power cells to unlock this pastafarian bridge builder.";
                              if(_loc18_)
                              {
                                 break;
                              }
                           }
                           §'O§.§<!D§.§;G§ = "Earn power cells to unlock this outside-the-box thinker.";
                           if(_loc17_)
                           {
                              §'O§.§-P§.§7!9§ = "Wants to see everything at least once, and she does mean everything.";
                              if(!_loc18_)
                              {
                                 addr0625:
                                 §'O§.§4s§.§7!9§ = "Listen, ANYONE would have trouble staying in control on frictionless skis.";
                                 if(_loc17_)
                                 {
                                    §'O§.§]![§.§7!9§ = "Well, I guess that\'s one idea for a costume. Isn\'t it heavy, though?";
                                    §'O§.skater.§7!9§ = "Enjoys challenging himself almost as much as he enjoys going fast.";
                                    §'O§.§5D§.§7!9§ = "Everyone tries new things sometimes.";
                                    §'O§.student.§7!9§ = "Once you figure out how something works, it\'s yours to use. This includes gravity.";
                                    break loop11;
                                 }
                              }
                              break loop8;
                           }
                           §§goto(addr06d4);
                        }
                        §§goto(addr06bf);
                     }
                     §§goto(addr0685);
                  }
                  §§goto(addr07b0);
               }
               §'O§.§#!P§.§7!9§ = "He solves practical problems, and creates personal problems.";
               addr066b:
               §'O§.lizard.§7!9§ = "Lizards are known for being green and jumping really high.";
               addr0675:
               §'O§.duplicator.§7!9§ = "Suspicious of others, but he trusts alien technology that\'s been lying around for ages. Go figure.";
               while(true)
               {
                  if(!_loc18_)
                  {
                     addr0685:
                     §'O§.§7W§.§7!9§ = "It doesn\'t care if you call it the \"Rabbit\" or the \"Bunny.\" All it cares about is bouncing.";
                     addr069b:
                     while(true)
                     {
                        §§push(§'O§.child);
                        §§push("Sometimes clever, sometimes immature. For example: he carries a balloon to help him jump farther, but it\'s filled ");
                        if(_loc17_)
                        {
                           §§push(§§pop() + "with water so he can splash people.");
                           if(!_loc17_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§7!9§ = §§pop();
                     if(_loc17_)
                     {
                        addr06bf:
                        §'O§.§52§.§7!9§ = "He worked very hard on this costume. Pretend to be scared, ok?";
                        §'O§.gentleman.§7!9§ = "Employs magnets for rapid procurement of power cells.";
                        addr06d4:
                        while(true)
                        {
                           §§push(§'O§.pastafarian);
                           §§push("Her faith in the Flying Spaghetti Monster allows her to run across empty space. Her faith also allows her ");
                           if(_loc17_)
                           {
                              §§push(§§pop() + "to ignore the Student\'s alternate explanation.");
                              if(_loc18_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§pop().§7!9§ = §§pop();
                        if(_loc17_)
                        {
                           §'O§.§=!O§.§7!9§ = "Yarr!";
                           if(!_loc18_)
                           {
                              §'O§.§<!D§.§7!9§ = "She helped build the Tunnels, but sadly she can\'t seem to explain the details.";
                              addr0714:
                              §!>§.init();
                              addr071b:
                              §'O§.skater.§=!!§ = "skated";
                              if(!_loc18_)
                              {
                                 §'O§.§7W§.§=!!§ = "bounced";
                                 addr0736:
                                 §'O§.lizard.§=!!§ = "walked";
                                 if(!_loc18_)
                                 {
                                    addr0747:
                                    §'O§.§4s§.§=!!§ = "skied";
                                    if(_loc17_)
                                    {
                                       §'O§.skater.§1V§ = 300;
                                       if(_loc17_)
                                       {
                                          §'O§.lizard.§1V§ = 600;
                                          if(_loc18_)
                                          {
                                             break loop9;
                                          }
                                       }
                                       addr077b:
                                       §'O§.student.§1V§ = 10000;
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr079f);
                              }
                              §§goto(addr07b0);
                           }
                        }
                     }
                     §§goto(addr077b);
                  }
                  §§goto(addr07b0);
               }
               §§goto(addr07d4);
            }
            §§push(§'O§.§5D§);
            §§push(§'O§.§4s§);
            §§push(500);
            if(_loc17_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:*;
            §§pop().§1V§ = _loc9_ = §§pop();
            §§pop().§1V§ = _loc9_;
            §§push(§'O§.§]![§);
            if(!_loc18_)
            {
               while(true)
               {
                  §§push(§'O§.§52§);
                  §§push(750);
                  if(_loc17_)
                  {
                     §§push(int(§§pop()));
                     if(_loc18_)
                     {
                        break;
                     }
                  }
                  _loc9_ = §§pop();
                  §§push(_loc9_);
                  break;
               }
               §§pop().§1V§ = §§pop();
            }
            §§pop().§1V§ = _loc9_;
            §'O§.§=!O§.§1V§ = 1000;
            loop13:
            while(true)
            {
               loop14:
               while(true)
               {
                  loop16:
                  while(true)
                  {
                     loop33:
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           §'O§.§-P§.§+Q§ = true;
                           §'O§.skater.§+Q§ = true;
                           loop34:
                           while(true)
                           {
                              if(_loc17_)
                              {
                                 §'O§.lizard.§+Q§ = true;
                                 §'O§.student.§+Q§ = true;
                                 §'O§.§#!P§.§%!+§ = true;
                                 §'O§.duplicator.§%!+§ = true;
                                 §'O§.§7W§.§%!+§ = true;
                                 §'O§.child.§%!+§ = true;
                                 if(_loc18_)
                                 {
                                    break;
                                 }
                              }
                              §'O§.pastafarian.§%!+§ = true;
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    §'O§.pastafarian.§+Q§ = true;
                                    §'O§.§-P§.§3>§ = true;
                                    break loop34;
                                 }
                                 addr0983:
                                 _loc2_.push(§'O§.§4s§);
                                 break;
                              }
                           }
                           §'O§.§#!P§.§3>§ = true;
                           if(!_loc17_)
                           {
                              break;
                           }
                           §'O§.student.§3>§ = Boolean(Save.§@!A§().get("7bf98d4de1cd6bc9e70cc048a4920d09dc1b308e",false));
                           loop36:
                           while(true)
                           {
                              if(!_loc18_)
                              {
                                 §'O§.§<!D§.§"!X§ = function():Boolean
                                 {
                                    var _loc1_:§]k§ = Achievements.§8!@§.§3!X§;
                                    return Boolean(Save.§@!A§().get(_loc1_.§=-§,Boolean(_loc1_.§ -§)));
                                 };
                                 §§push(§'O§.§<!D§.§1V§);
                                 if(_loc18_)
                                 {
                                    break loop16;
                                 }
                                 §§push(int(§§pop() * 0.8));
                                 if(!_loc17_)
                                 {
                                    break loop16;
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc18_)
                                 {
                                    break loop16;
                                 }
                                 _loc9_ = §§pop();
                                 §'O§.§<!D§.§6$§ = _loc9_;
                                 § L§.mid = 528065;
                                 _loc2_.push(§'O§.§-P§);
                                 _loc2_.push(§'O§.skater);
                                 _loc2_.push(§'O§.student);
                                 while(true)
                                 {
                                    if(_loc17_)
                                    {
                                       _loc2_.push(§'O§.§#!P§);
                                       _loc2_.push(§'O§.lizard);
                                       if(!_loc17_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc2_.push(§'O§.gentleman);
                                    _loc2_.push(§'O§.random);
                                    if(_loc17_)
                                    {
                                       _loc2_.push(§'O§.§!!§);
                                       if(!_loc18_)
                                       {
                                          _loc2_.push(§'O§.duplicator);
                                          if(!_loc18_)
                                          {
                                             break;
                                          }
                                          break loop36;
                                       }
                                       break loop13;
                                    }
                                    break loop14;
                                 }
                              }
                              §§goto(addr0983);
                           }
                        }
                        _loc2_.push(§'O§.§7W§);
                        while(true)
                        {
                           if(!_loc18_)
                           {
                              break loop33;
                           }
                           addr09b8:
                           _loc2_.push(§'O§.§]![§);
                           break;
                        }
                        addr09c1:
                        _loc2_.push(§'O§.§<!D§);
                        if(_loc17_)
                        {
                           break loop13;
                        }
                        break loop14;
                     }
                     _loc2_.push(§'O§.child);
                     if(!_loc18_)
                     {
                        _loc2_.push(§'O§.pastafarian);
                        if(_loc17_)
                        {
                           §§goto(addr09b8);
                        }
                        §§goto(addr09c1);
                     }
                     §§goto(addr09f8);
                  }
                  §§goto(addr0a0b);
               }
               §§push(0);
               if(_loc17_)
               {
                  break loop16;
               }
               addr0a0b:
               var _loc10_:* = §§pop();
               §§push(int(_loc2_.length));
               if(!_loc18_)
               {
                  §§push(int(§§pop()));
               }
               var _loc11_:* = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc10_);
                  if(_loc18_)
                  {
                     break;
                  }
                  §§push(_loc11_);
                  if(!_loc18_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        while(true)
                        {
                           if(_loc17_)
                           {
                              _loc4_.push(§'O§.§-P§);
                              _loc4_.push(§'O§.skater);
                              _loc4_.push(§'O§.lizard);
                              if(_loc17_)
                              {
                                 _loc4_.push(§'O§.§7W§);
                                 if(_loc17_)
                                 {
                                    _loc4_.push(§'O§.gentleman);
                                 }
                                 _loc4_.push(§'O§.duplicator);
                                 _loc4_.push(§'O§.child);
                                 _loc4_.push(§'O§.pastafarian);
                                 if(_loc18_)
                                 {
                                    break;
                                 }
                              }
                              _loc4_.push(§'O§.student);
                              _loc4_.push(§'O§.§#!P§);
                              _loc4_.push(§'O§.random);
                              if(_loc18_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§push(0);
                              if(!_loc18_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc17_)
                                 {
                                    break loop0;
                                 }
                                 break;
                              }
                              addr0b53:
                              §§push(int(§§pop()));
                              if(!_loc18_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc11_);
                              }
                              addr0c7f:
                              var _loc16_:§9t§ = Save.currentCharacter;
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    §'O§.§3§(_loc2_[int(Save.§@!A§().get(_loc16_.§=-§,int(_loc16_.§ -§)))]);
                                    if(!_loc18_)
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          loop21:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                if(!_loc18_)
                                                {
                                                   if(§'O§.§;<§ == null)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc17_)
                                                   {
                                                      §§pop();
                                                      if(!_loc17_)
                                                      {
                                                         break loop21;
                                                      }
                                                      §§push(§'O§.§;<§.§<!,§());
                                                      if(!_loc17_)
                                                      {
                                                         break loop20;
                                                      }
                                                   }
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!_loc18_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc18_)
                                                   {
                                                      break loop20;
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr0d04);
                                          }
                                       }
                                       addr0d04:
                                       if(Boolean(§§pop()))
                                       {
                                          if(!_loc18_)
                                          {
                                             break loop21;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 break loop21;
                              }
                              return;
                              addr0c79:
                           }
                           addr0b5b:
                           _loc11_ = §§pop();
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr0c79);
                        }
                        §§goto(addr0c7f);
                        addr0c77:
                     }
                     else
                     {
                        loop23:
                        while(true)
                        {
                           §§push(_loc10_);
                           if(!_loc18_)
                           {
                              _loc10_++;
                              if(!_loc17_)
                              {
                                 break;
                              }
                           }
                           loop24:
                           while(true)
                           {
                              loop25:
                              while(true)
                              {
                                 loop26:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc17_)
                                       {
                                          break loop23;
                                       }
                                       addr0a6e:
                                       §§push(§§pop() == _loc12_);
                                       if(!_loc18_)
                                       {
                                          break;
                                       }
                                       break loop26;
                                    }
                                    addr0a78:
                                    §§push(!§§pop());
                                    if(!_loc18_)
                                    {
                                       break loop25;
                                    }
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc17_)
                                    {
                                       break loop24;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                              break loop26;
                           }
                           § L§.warning = 830592;
                           continue loop0;
                        }
                        _loc12_ = §§pop();
                        if(!_loc17_)
                        {
                           break loop24;
                        }
                        §§push(true);
                        if(_loc17_)
                        {
                           if(_loc2_[_loc12_] == null)
                           {
                              break loop26;
                           }
                           if(_loc18_)
                           {
                              break loop25;
                           }
                           §§pop();
                           if(_loc18_)
                           {
                              break loop24;
                           }
                           §§goto(addr0a6e);
                           §§push(_loc2_[_loc12_].id);
                        }
                        §§goto(addr0a78);
                     }
                  }
                  while(§§pop() < §§pop())
                  {
                     loop28:
                     while(true)
                     {
                        loop29:
                        while(true)
                        {
                           loop30:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(_loc17_)
                                 {
                                    _loc10_++;
                                    if(_loc18_)
                                    {
                                       break loop28;
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc18_)
                                    {
                                       break loop28;
                                    }
                                    _loc12_ = §§pop();
                                    if(_loc18_)
                                    {
                                       break;
                                    }
                                    _loc4_[_loc12_].available = true;
                                    if(!_loc18_)
                                    {
                                       _loc4_[_loc12_].§?@§ = _loc12_;
                                       if(!_loc17_)
                                       {
                                          break loop30;
                                       }
                                       if(_loc4_[_loc12_].§[P§ == null)
                                       {
                                          break loop29;
                                       }
                                    }
                                    §§push(0);
                                    if(!_loc17_)
                                    {
                                       break loop28;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 break loop28;
                              }
                              §§goto(addr0c77);
                           }
                           §§push(_loc4_[_loc12_]);
                           §§push(§§findproperty(§9t§));
                           §§push(_loc4_[_loc12_].name + "Level");
                           if(!_loc18_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§ j§ = new §§pop().§9t§(§§pop());
                           break loop31;
                        }
                        §§push(_loc4_[_loc12_]);
                        §§push(§§findproperty(§0!?§));
                        §§push(_loc4_[_loc12_].name + "Path");
                        if(!_loc18_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§>t§ = new §§pop().§0!?§(§§pop());
                        break loop30;
                     }
                     _loc13_ = §§pop();
                     if(_loc17_)
                     {
                        _loc14_ = _loc4_[_loc12_].§[P§.§@D§;
                        if(_loc17_)
                        {
                           while(true)
                           {
                              if(_loc13_ >= int(_loc14_.length))
                              {
                                 break loop29;
                              }
                              _loc15_ = _loc14_[_loc13_];
                              if(!_loc18_)
                              {
                                 _loc13_++;
                                 if(!_loc17_)
                                 {
                                    continue;
                                 }
                                 _loc15_.available = true;
                                 if(!_loc17_)
                                 {
                                    continue;
                                 }
                              }
                              _loc15_.§?@§ = _loc12_;
                           }
                        }
                        break loop29;
                     }
                     §§goto(addr0c77);
                  }
                  §§goto(addr0c7f);
               }
               _loc10_ = §§pop();
               while(true)
               {
                  if(_loc17_)
                  {
                     §§push(int(_loc4_.length));
                     if(_loc17_)
                     {
                        §§goto(addr0b53);
                     }
                     §§goto(addr0b5b);
                  }
                  §§goto(addr0c77);
               }
               §§goto(addr0c79);
            }
            _loc2_.push(§'O§.§52§);
            while(true)
            {
               if(_loc17_)
               {
                  _loc2_.push(§'O§.§5D§);
                  if(_loc18_)
                  {
                     break;
                  }
               }
               _loc2_.push(§'O§.§=!O§);
               break;
            }
            addr09f8:
            _loc2_.push(§'O§.§?g§);
            break loop14;
         }
         §'O§.§#!P§.§1V§ = 12000;
         §'O§.duplicator.§1V§ = 6000;
         loop9:
         while(true)
         {
            while(true)
            {
               if(_loc17_)
               {
                  addr079f:
                  §'O§.§7W§.§1V§ = 2000;
                  if(_loc18_)
                  {
                     break;
                  }
                  §'O§.child.§1V§ = 2000;
                  if(_loc18_)
                  {
                     break loop9;
                  }
               }
               §'O§.gentleman.§1V§ = 2000;
               break loop9;
            }
            addr07d4:
            §'O§.§<!D§.§1V§ = 8000;
            break loop8;
         }
         §'O§.pastafarian.§1V§ = 6000;
         break loop10;
      }
      
      public static function §3§(param1:§6O§) : §6O§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            §§push(true);
            if(!_loc2_)
            {
               if(param1 != null)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        §§push(param1.§<!,§());
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                  }
               }
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §'O§.§;<§ = param1;
                     if(!_loc2_)
                     {
                        if(Main.instance.tunnel == null)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           break loop2;
                        }
                     }
                  }
                  Main.instance.tunnel.§2d§();
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop2;
               }
               Save.currentCharacter.§?F§(§'O§.§;<§.id);
               break;
            }
            return §'O§.§;<§;
         }
         return §'O§.§;<§;
      }
      
      public static function §3'§(param1:String) : §6O§
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §6O§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§6O§> = §'O§.available;
         if(!_loc5_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(_loc6_)
               {
                  _loc2_++;
                  if(!_loc5_)
                  {
                     if(_loc4_.name != param1)
                     {
                        continue;
                     }
                  }
               }
               return _loc4_;
            }
         }
         return null;
      }
   }
}

