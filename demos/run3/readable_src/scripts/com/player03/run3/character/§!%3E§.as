package com.player03.run3.character
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import scenes.Batteries;
   import scenes.Cutscenes;
   import scenes.Truancy;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.level.§1G§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§0d§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import openfl.Lib;
   
   public class §!>§
   {
      
      public static var §`q§:Vector.<§0v§>;
      
      public function §!>§()
      {
      }
      
      public static function init() : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         § L§.low = 345702;
         var _loc1_:Vector.<§0v§> = new Vector.<§0v§>(0,false);
         §!>§.§`q§ = _loc1_;
         §!>§.§`q§.push(new §0v§("Power cells get more valuable the farther you go, reaching their maximum value at 2000m.",null,function(param1:§1G§):Boolean
         {
            var _temp_1:* = false;
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = _temp_1;
            §§push(§!>§.§0C§(2000,param1));
            if(!_loc3_)
            {
               return Boolean(§§pop());
            }
         }));
         while(true)
         {
            if(!_loc14_)
            {
               §!>§.§`q§.push(new §0v§("The Planet isn\'t the only planet in the Solar System. It gets the name \"Planet\" because it\'s the important one.",function():Boolean
               {
                  var _temp_1:* = false;
                  var _loc1_:Boolean = true;
                  var _loc2_:Boolean = _temp_1;
                  §§push(§!>§.§1[§(3000));
                  if(_loc1_)
                  {
                     return Boolean(§§pop());
                  }
               },null));
               §!>§.§`q§.push(new §0v§("The more boxes you buy, the more likely a box is to show up where you need it.",function():Boolean
               {
                  var _temp_1:* = false;
                  var _loc1_:Boolean = true;
                  var _loc2_:Boolean = _temp_1;
                  §§push(§!>§.§1[§(1000));
                  if(_loc1_)
                  {
                     return Boolean(§§pop());
                  }
               },null));
               if(!_loc15_)
               {
                  break;
               }
            }
            §!>§.§`q§.push(new §0v§("Everyone has strengths and weaknesses. If you\'re ever stuck, try using a different character.",null,null));
            if(_loc15_)
            {
               break;
            }
            §!>§.§`q§.push(new §0v§("Game running slow? Try lowering the quality in the pause menu.",function():Boolean
            {
               var _temp_1:* = false;
               var _loc1_:Boolean = true;
               var _loc2_:Boolean = _temp_1;
               if(Lib.get_current().stage.quality == "high")
               {
                  §§push(§!>§.§[d§(500));
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
               }
               else
               {
                  return false;
               }
               return §§pop();
            },null));
            var _loc2_:CharacterDef = CharacterRegistry.§-P§;
            var _loc3_:CharacterDef = CharacterRegistry.skater;
            var _loc4_:CharacterDef = CharacterRegistry.student;
            var _loc5_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc6_:CharacterDef = CharacterRegistry.lizard;
            var _loc7_:CharacterDef = CharacterRegistry.duplicator;
            var _loc8_:CharacterDef = CharacterRegistry.§7W§;
            var _loc9_:CharacterDef = CharacterRegistry.child;
            var _loc10_:CharacterDef = CharacterRegistry.gentleman;
            var _loc11_:CharacterDef = CharacterRegistry.pastafarian;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(!_loc14_)
                  {
                     _loc2_.§12§("Quickly release the jump button for a low jump. The sooner you land, the more time you have to prepare your next jump!");
                     _loc2_.§12§("Who needs flashy special abilities when you have precision and agility?",function():Boolean
                     {
                        var _temp_1:* = true;
                        var _loc1_:Boolean = false;
                        var _loc2_:Boolean = _temp_1;
                        §§push(§!>§.§1[§(500));
                        if(!_loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     });
                     if(_loc14_)
                     {
                        break;
                     }
                     _loc2_.§12§("True to her name, the Runner performs best on the ground. She runs faster and maneuvers better.");
                     _loc2_.§12§("Both the Runner and the Angel have leadership skills, but you wouldn\'t know it from listening to the Angel.",function():Boolean
                     {
                        var _temp_1:* = true;
                        var _loc1_:Boolean = false;
                        var _loc2_:Boolean = _temp_1;
                        §§push(§!>§.§1[§(1500));
                        if(!_loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     });
                     if(!_loc15_)
                     {
                        break loop1;
                     }
                     _loc2_.§12§("The Runner\'s philosophy: you can\'t plan for everything. Instead, plan for the fact that you can\'t plan for everything.");
                  }
                  _loc2_.§12§("The Runner may not like people doodling on her map, but she doesn\'t want to offend them by erasing their work.",null,null,§>K§.§7&§);
                  while(true)
                  {
                     if(!_loc14_)
                     {
                        _loc2_.§12§("The Runner supervised the construction of the City, and several smaller cities.",null,null,§>K§.§<Y§);
                        _loc2_.§12§("Her map only stores 1GB, but the Runner has never even come close to running out. She doesn\'t see what the fuss is over 8GB paper.",null,null,§>K§.§;!4§);
                        _loc2_.§12§("As the oldest one here, the Runner naturally has the best strength and agility.",function():Boolean
                        {
                           var _temp_1:* = false;
                           var _loc1_:Boolean = true;
                           var _loc2_:Boolean = _temp_1;
                           §§push(§!>§.§1[§(1000));
                           if(_loc1_)
                           {
                              return Boolean(§§pop());
                           }
                        });
                        _loc2_.§12§("True to her name, the Runner performs best on the ground, where she can move and change directions faster.");
                        if(_loc14_)
                        {
                           break loop1;
                        }
                        _loc3_.§12§("The Skater is faster than anyone else here. Well, maybe not that rabbit, but animals don\'t count.");
                        _loc3_.§12§("Ramps convert speed into jump height. Guess who benefits most?");
                        _loc3_.§12§("The Skater likes to travel, but mostly he hates staying still.",function():Boolean
                        {
                           var _temp_1:* = true;
                           var _loc1_:Boolean = false;
                           var _loc2_:Boolean = _temp_1;
                           §§push(§!>§.§1[§(1000));
                           if(_loc2_)
                           {
                              return Boolean(§§pop());
                           }
                        });
                        _loc3_.§12§("Since he wanders so much, there was a brief time when the Skater had met everyone on the Planet.");
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc14_)
                              {
                                 _loc3_.§12§("The Skater\'s philosophy: challenging yourself helps you improve. Once you improve, you can challenge yourself even more!");
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 _loc3_.§12§("Tunnel running could be the next big sport, and the Skater intends to get a head start.",function():Boolean
                                 {
                                    var _temp_1:* = true;
                                    var _loc1_:Boolean = false;
                                    var _loc2_:Boolean = _temp_1;
                                    §§push(§!>§.§1[§(1800));
                                    if(!_loc1_)
                                    {
                                       return Boolean(§§pop());
                                    }
                                 });
                                 _loc3_.§12§("The Skater takes a few minutes each day to maintain his skates. His last pair wore out at a bad time, and he can\'t afford to lose this pair.",null,null,null,Cutscenes.§8=§());
                                 _loc4_.§12§("The Student may be the least athletic person here, but she makes up for it by finding easier ways to get around.");
                                 _loc4_.§12§("What\'s the point of taking finals? The Student is learning just fine on her own, thank you very much.",function():Boolean
                                 {
                                    var _temp_1:* = false;
                                    var _loc1_:Boolean = true;
                                    var _loc2_:Boolean = _temp_1;
                                    §§push(§!>§.§1[§(2000));
                                    if(_loc1_)
                                    {
                                       return Boolean(§§pop());
                                    }
                                 });
                                 _loc4_.§12§("The Student\'s philosophy: always try to think of other explanations. If you already know the answer, do it anyway for practice.");
                                 if(!_loc15_)
                                 {
                                    break loop7;
                                 }
                              }
                              _loc4_.§12§("The Student loves sci-fi stories, but she\'s annoyed by the usual portrayal of aliens as tall red men.");
                              if(_loc15_)
                              {
                                 _loc4_.§12§("Whoever made the Tunnels was clever. Since tiles attract each other, tunnels can repair themselves automatically. It also means assembling a tunnel is as easy as tossing a stack of tiles into space.",null,null,§>K§.§^!T§);
                                 break loop7;
                              }
                              addr02c7:
                              _loc5_.§12§("Know when to slow down! Going slower gives you time to react. After dashing, press the jump button to slow down.");
                              if(_loc15_)
                              {
                                 _loc5_.§12§("Dashing into a ramp gives the Angel a huge boost and restores the dash at the same time.",function():Boolean
                                 {
                                    var _temp_1:* = true;
                                    var _loc1_:Boolean = false;
                                    var _loc2_:Boolean = _temp_1;
                                    §§push(§!>§.§1[§(1500));
                                    if(!_loc1_)
                                    {
                                       return Boolean(§§pop());
                                    }
                                 });
                                 break loop2;
                              }
                              §§goto(addr037c);
                           }
                           _loc4_.§12§("The Student knows she promised to explain how she controls gravity, but the device is so poorly built that she\'d be embarassed to let anyone see. Maybe once she has time to make a better one.",function():Boolean
                           {
                              var _temp_1:* = true;
                              var _loc1_:Boolean = false;
                              var _loc2_:Boolean = _temp_1;
                              §§push(§!>§.§1[§(3000));
                              if(!_loc1_)
                              {
                                 return Boolean(§§pop());
                              }
                           });
                           _loc5_.§12§("The Angel can jump farther than almost everyone else, but it requires planning.");
                           if(!_loc14_)
                           {
                              _loc5_.§12§("Gravity is different outside the tunnel, so dashing gives the Angel more lift.",function():Boolean
                              {
                                 var _temp_1:* = false;
                                 var _loc1_:Boolean = true;
                                 var _loc2_:Boolean = _temp_1;
                                 §§push(§!>§.§1[§(500));
                                 if(_loc1_)
                                 {
                                    return Boolean(§§pop());
                                 }
                              });
                              §§goto(addr02c7);
                           }
                           addr02ee:
                           _loc5_.§12§("The Angel\'s philosophy: people are stupid, but that\'s no reason not to help them.");
                           if(!_loc15_)
                           {
                              break loop1;
                           }
                           _loc5_.§12§("He\'s probably lost the position by now, but the Angel used to have an important job at the Factory.",null,null,§>K§.§>-§);
                           if(!_loc14_)
                           {
                              break loop1;
                           }
                           §§goto(addr0329);
                        }
                        _loc4_.§12§("The Student does her best to describe things as simply as possible. She figures the Universe is complicated enough as-is.",null,null,null,Cutscenes.§?Q§());
                        if(!_loc14_)
                        {
                           _loc4_.§12§("A good way to learn how something works is to pay attention to when it breaks. For instance, Gravity gets weaker when the power goes out.",function():Boolean
                           {
                              var _temp_1:* = false;
                              var _loc1_:Boolean = true;
                              var _loc2_:Boolean = _temp_1;
                              §§push(§!>§.§1[§(4000));
                              if(!_loc2_)
                              {
                                 return Boolean(§§pop());
                              }
                           });
                           break loop8;
                        }
                        §§goto(addr033b);
                     }
                     §§goto(addr0357);
                  }
                  §§goto(addr0370);
               }
               _loc5_.§12§("The Angel tells people his wings are real. If someone happens to miss the sarcasm, that\'s their problem.",function():Boolean
               {
                  var _temp_1:* = true;
                  var _loc1_:Boolean = false;
                  var _loc2_:Boolean = _temp_1;
                  §§push(§!>§.§1[§(2500));
                  if(_loc2_)
                  {
                     return Boolean(§§pop());
                  }
               });
               §§goto(addr02ee);
            }
            _loc5_.§12§("The Angel could \"cut\" a tunnel if he wanted, but why would he? It would be a waste of time and a huge inconvenience.",null,null,§>K§.home0);
            addr0329:
            _loc5_.§12§("Whoever built the Tunnels was an idiot. Space is naturally frictionless, but they added air - and therefore air friction - intentionally.",null,null,§>K§.home1);
            addr033b:
            _loc6_.§12§("The Lizard does not, and perhaps cannot, understand the concept of jumping low.");
            _loc6_.§12§("No one\'s claiming the Lizard as their pet. It seems to have wandered out here on its own.",function():Boolean
            {
               var _temp_1:* = true;
               var _loc1_:Boolean = false;
               var _loc2_:Boolean = _temp_1;
               §§push(§!>§.§1[§(750));
               if(!_loc1_)
               {
                  return Boolean(§§pop());
               }
            });
            while(true)
            {
               if(!_loc14_)
               {
                  addr0357:
                  _loc6_.§12§("The Lizard\'s philosophy: find somewhere bright and sit there for hours.");
                  _loc6_.§12§("If you stay near a wall when you jump, you can choose when you land.");
                  if(_loc14_)
                  {
                     break;
                  }
               }
               addr0370:
               _loc6_.§12§("Like many animals, lizards have personalities. This one just happens to be boring.",function():Boolean
               {
                  var _temp_1:* = false;
                  var _loc1_:Boolean = true;
                  var _loc2_:Boolean = _temp_1;
                  §§push(§!>§.§1[§(1500));
                  if(!_loc2_)
                  {
                     return Boolean(§§pop());
                  }
               });
               break;
            }
            addr037c:
            §§push("The Bunny and the Lizard can jump so high as a result of their strength and weight.");
            if(_loc15_)
            {
               §§push(§§pop());
            }
            var _loc12_:* = §§pop();
            if(_loc15_)
            {
               _loc6_.§12§(_loc12_);
               _loc7_.§12§("Try to keep a duplicate alive at all times. They jump higher than you do.");
               _loc7_.§12§("Did you know?\nDuplicates can jump off of one another in midair.",function():Boolean
               {
                  var _temp_1:* = false;
                  var _loc1_:Boolean = true;
                  var _loc2_:Boolean = _temp_1;
                  §§push(§!>§.§1[§(750));
                  if(_loc1_)
                  {
                     return Boolean(§§pop());
                  }
               });
            }
            _loc7_.§12§("The Duplicator can instantly swap places with any duplicate. He doesn\'t know how, and unlike the Student, he doesn\'t care.");
            _loc7_.§12§("The Duplicator trusts himself, his son, and the animals.\nEveryone else keeps telling him he\'s wrong.",function():Boolean
            {
               var _temp_1:* = false;
               var _loc1_:Boolean = true;
               var _loc2_:Boolean = _temp_1;
               §§push(§!>§.§1[§(1500));
               if(_loc1_)
               {
                  return Boolean(§§pop());
               }
            });
            while(true)
            {
               if(_loc15_)
               {
                  _loc7_.§12§("The Duplicator\'s philosophy: if someone gives you parenting advice, say thanks and then ignore them.");
                  if(!_loc14_)
                  {
                     _loc7_.§12§("His duplicates are like solid mirror images... that aren\'t mirrored. (The Duplicator isn\'t much good at similies.)",function():Boolean
                     {
                        var _temp_1:* = false;
                        var _loc1_:Boolean = true;
                        var _loc2_:Boolean = _temp_1;
                        §§push(§!>§.§1[§(2500));
                        if(!_loc2_)
                        {
                           return Boolean(§§pop());
                        }
                     });
                  }
                  _loc7_.§12§("All solid objects - including duplicates - can change the tunnel\'s gravity.",function():Boolean
                  {
                     var _temp_1:* = true;
                     var _loc1_:Boolean = false;
                     var _loc2_:Boolean = _temp_1;
                     §§push(§!>§.§1[§(750));
                     if(!_loc1_)
                     {
                        return Boolean(§§pop());
                     }
                  });
                  if(_loc15_)
                  {
                     _loc7_.§12§("For some reason, it\'s hard to make new duplicates when the power is out. At least the existing ones stay around.");
                     if(_loc15_)
                     {
                        _loc8_.§12§("Each bounce speeds you up a little.\nUse small bounces to gain lots of speed!");
                     }
                  }
                  _loc8_.§12§("Aim for the corners of the tunnel to bounce twice in a row.",function():Boolean
                  {
                     var _temp_1:* = false;
                     var _loc1_:Boolean = true;
                     var _loc2_:Boolean = _temp_1;
                     §§push(§!>§.§1[§(1000));
                     if(!_loc2_)
                     {
                        return Boolean(§§pop());
                     }
                  });
                  _loc8_.§12§("Don\'t call it \"the Rabbit\" or the Child will hate you forever.");
                  _loc8_.§12§("The Bunny\'s philosophy: standing is bad, bouncing is good.");
                  if(!_loc15_)
                  {
                     break;
                  }
               }
               _loc8_.§12§("Use high jumps if you want to slow down, but be sure not to slow down too much.",function():Boolean
               {
                  var _temp_1:* = false;
                  var _loc1_:Boolean = true;
                  var _loc2_:Boolean = _temp_1;
                  §§push(§!>§.§1[§(500));
                  if(!_loc2_)
                  {
                     return Boolean(§§pop());
                  }
               });
               break;
            }
            _loc8_.§12§(_loc12_);
            if(_loc15_)
            {
               _loc9_.§12§("The Child loves jumping off ramps and boxes and floating down.");
            }
            §§push("Jump lots of times in a row to be like the Bunny");
            if(_loc15_)
            {
               §§push(§§pop());
            }
            var _loc13_:* = §§pop();
            §§push(_loc9_);
            §§push(_loc13_ + "!");
            if(!_loc14_)
            {
               §§push(§§pop());
            }
            §§pop().§12§(§§pop(),null,function(param1:§1G§):Boolean
            {
               var _temp_1:* = true;
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = _temp_1;
               §§push(§!>§.§0C§(1500,param1));
               if(_loc3_)
               {
                  return Boolean(§§pop());
               }
            });
            §§push(_loc9_);
            §§push(_loc13_ + ". The Child is practicing until he can jump as high as his favorite pet!");
            if(!_loc14_)
            {
               §§push(§§pop());
            }
            §§pop().§12§(§§pop(),null,function(param1:§1G§):Boolean
            {
               var _temp_1:* = false;
               var _loc2_:Boolean = true;
               var _loc3_:Boolean = _temp_1;
               §§push(§!>§.§6H§(1500,param1));
               if(_loc2_)
               {
                  return Boolean(§§pop());
               }
            });
            while(true)
            {
               if(!_loc14_)
               {
                  _loc9_.§12§("The Child asked the Student why the gray squares sometimes fall but she went and talked about the Re Action Force and never answered his question.");
                  if(!_loc14_)
                  {
                     _loc9_.§12§("The Child says thanks to whoever left water bottles in all the boxes. He needed water to fill his balloons with.",function():Boolean
                     {
                        var _temp_1:* = true;
                        var _loc1_:Boolean = false;
                        var _loc2_:Boolean = _temp_1;
                        §§push(§!>§.§1[§(500));
                        if(_loc2_)
                        {
                           return Boolean(§§pop());
                        }
                     });
                     if(_loc15_)
                     {
                        _loc9_.§12§("Sometimes he leaves his balloon behind and hides. The adults never notice because he\'s so clever.",function():Boolean
                        {
                           var _temp_1:* = false;
                           var _loc1_:Boolean = true;
                           var _loc2_:Boolean = _temp_1;
                           §§push(§!>§.§1[§(1000));
                           if(_loc1_)
                           {
                              return Boolean(§§pop());
                           }
                        });
                        _loc9_.§12§("The candy tasted bad but it burned ok. The Child likes watching things burn.",null,null,§>K§.§^!+§);
                        _loc9_.§12§("The Child\'s philosophy: books are boring and stupid unless they have pictures, then they\'re fun!");
                        _loc10_.§12§("If a power cell is stationed inconveniently, such that it will fling you into the void, do not hesitate to disable your electromagnet early.");
                        if(_loc15_)
                        {
                           _loc10_.§12§("The Gentleman will not abandon a power cell he has already claimed, but he exercises discretion in claiming the cells in the first place.");
                           _loc10_.§12§("Wait until the Gentleman falls below the level of the proximal power cell before energizing his electromagnet to ensure he is propelled upwards.",function():Boolean
                           {
                              var _temp_1:* = false;
                              var _loc1_:Boolean = true;
                              var _loc2_:Boolean = _temp_1;
                              §§push(§!>§.§1[§(750));
                              if(!_loc2_)
                              {
                                 return Boolean(§§pop());
                              }
                           });
                        }
                     }
                     _loc10_.§12§("In what he considers to be a mildly amusing symmetry, the Gentleman\'s electromagnet is activated by electromagnetic waves.",function():Boolean
                     {
                        var _temp_1:* = true;
                        var _loc1_:Boolean = false;
                        var _loc2_:Boolean = _temp_1;
                        §§push(§!>§.§1[§(5000));
                        if(!_loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     });
                     if(!_loc14_)
                     {
                        _loc10_.§12§("The lower classes have their uses. Employ one of them to reach 2000 meters, then switch to the Gentleman.",null,function(param1:§1G§):Boolean
                        {
                           var _temp_1:* = false;
                           var _loc2_:Boolean = true;
                           var _loc3_:Boolean = _temp_1;
                           §§push(§!>§.§0C§(1900,param1));
                           if(_loc2_)
                           {
                              return Boolean(§§pop());
                           }
                        });
                        _loc10_.§12§("The Gentleman retains partial maneuverability with his electromagnet engaged. By maneuvering left or right, he can influence his eventual motion upon reaching the power cell.",function():Boolean
                        {
                           var _temp_1:* = true;
                           var _loc1_:Boolean = false;
                           var _loc2_:Boolean = _temp_1;
                           §§push(§!>§.§1[§(200));
                           if(!_loc1_)
                           {
                              return Boolean(§§pop());
                           }
                        });
                        _loc10_.§12§("The Gentleman sees fit to contribute a generous ten percent of his power cells to the group. He reserves the remainder for his own use.");
                        _loc10_.§12§("The Gentleman\'s philosophy: the correlation between vocabulary and social standing is not coincidental.");
                        _loc11_.§12§("The Flying Spaghetti Monster makes this bridge. It is NOT merely a \"feature of the Tunnels.\"",function():Boolean
                        {
                           var _temp_1:* = false;
                           var _loc1_:Boolean = true;
                           var _loc2_:Boolean = _temp_1;
                           §§push(§!>§.§1[§(2000));
                           if(!_loc2_)
                           {
                              return Boolean(§§pop());
                           }
                        });
                        _loc11_.§12§("Applying excessive pressure to the Flying Spaghetti Monster\'s bridge offends Him. To show your devotion, refrain from jumping from it or onto it.");
                     }
                     _loc11_.§12§("The Pastafarian\'s philosophy: the Flying Spaghetti Monster created a flawed world. It\'s up to us to make it better.");
                     if(_loc14_)
                     {
                        break;
                     }
                  }
               }
               _loc11_.§12§("Back home, the Pastafarian lead a small congregation. When she saw the first tunnel, she took it as a sign, and immediately left to explore space.",function():Boolean
               {
                  var _temp_1:* = false;
                  var _loc1_:Boolean = true;
                  var _loc2_:Boolean = _temp_1;
                  §§push(§!>§.§1[§(3000));
                  if(!_loc2_)
                  {
                     return Boolean(§§pop());
                  }
               });
               break;
            }
            _loc11_.§12§("The branching and twisting tunnels vaguely resemble the Flying Spaghetti Monster. Coincidence?",function():Boolean
            {
               var _temp_1:* = false;
               var _loc1_:Boolean = true;
               var _loc2_:Boolean = _temp_1;
               §§push(§!>§.§1[§(500));
               if(!_loc2_)
               {
                  return Boolean(§§pop());
               }
            });
            return;
         }
         §§push(§!>§.§`q§);
         §§push(§§findproperty(§0v§));
         §§push("The people here in the Tunnels are more impulsive than average. This is not a coincidence.");
         §§push(§!>§.§=!G§);
         if(!_loc14_)
         {
            §§push(§§pop());
         }
         §§pop().push(new §§pop().§0v§(§§pop(),§§pop(),function(param1:§1G§):Boolean
         {
            var _temp_1:* = true;
            var _loc2_:Boolean = false;
            var _loc3_:Boolean = _temp_1;
            §§push(§!>§.§6H§(3000,param1));
            if(_loc3_)
            {
               return Boolean(§§pop());
            }
         }));
         continue loop1;
      }
      
      public static function §=!G§() : Boolean
      {
         return Number(Math.random()) < 0.5;
      }
      
      public static function §0C§(param1:int, param2:§1G§) : Boolean
      {
         return int(Math.round(param2.§&5§.z * 0.03333333333333333)) < param1;
      }
      
      public static function §6H§(param1:int, param2:§1G§) : Boolean
      {
         return int(Math.round(param2.§&5§.z * 0.03333333333333333)) >= param1;
      }
      
      public static function §[d§(param1:int) : Boolean
      {
         var _loc2_:§0d§ = Save.§,>§;
         return int(Math.round(Number(Save.§@!A§().get(_loc2_.§=-§,Number(_loc2_.§ -§))) * 0.03333333333333333)) < param1;
      }
      
      public static function §1[§(param1:int) : Boolean
      {
         var _loc2_:§0d§ = Save.§,>§;
         return int(Math.round(Number(Save.§@!A§().get(_loc2_.§=-§,Number(_loc2_.§ -§))) * 0.03333333333333333)) >= param1;
      }
   }
}

