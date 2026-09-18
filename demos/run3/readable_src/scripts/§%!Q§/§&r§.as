package §%!Q§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import map.Map;
   import §"§.§5O§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §-!!§.§8!8§;
   import §-d§.§!!-§;
   import §-d§.§-!'§;
   import §-v§.§?P§;
   import layout3d.§>N§;
   import scenes.§+!"§;
   import scenes.§+Z§;
   import scenes.Cutscenes;
   import scenes.Discoveries;
   import scenes.FriendlyGreeting;
   import scenes.Indecision;
   import scenes.ItsJustYou;
   import scenes.MyTurn;
   import scenes.StandardsToUphold;
   import scenes.TheNextBigThing;
   import scenes.YouThink;
   import §4n§.§>!,§;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§]u§;
   import §6!Q§.§^F§;
   import §67§.§"v§;
   import §67§.§,7§;
   import game.§&!K§;
   import game.§>3§;
   import game.§>f§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§[C§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Currency;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.PlayFabAPI;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.menu.§#C§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.§=!U§;
   import haxe.ds.§,!C§;
   import haxe.ds.ObjectMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.§>!9§;
   import motion.easing.IEasing;
   import openfl.Lib;
   
   public class §&r§ extends §'!O§ implements §+<§
   {
      
      public static var §-6§:Boolean;
      
      public static var §#!8§:Number;
      
      public static var §,U§:§2!;§;
      
      public static var §?Y§:§&r§;
      
      public var §1!%§:Shape;
      
      public var §[!O§:Point;
      
      public var §5I§:Point;
      
      public var §'R§:§+"§;
      
      public var §6"§:Vector.<§,7§>;
      
      public var §&W§:Boolean;
      
      public var §+!@§:Vector.<§"v§>;
      
      public var §>[§:TextField;
      
      public var §,!<§:Point;
      
      public var §?!_§:Sprite;
      
      public var §;I§:Vector.<§'!]§>;
      
      public function §&r§()
      {
         var a11:§'!]§;
         var f2:Function;
         var a1:§'!]§;
         var f1:Function;
         var f:Function;
         §§push(false);
         var _loc51_:Boolean = true;
         var _loc52_:* = §§pop();
         var _loc35_:* = 0;
         var _loc36_:* = NaN;
         var _loc37_:* = null as §+Z§;
         var _loc39_:* = null as Vector.<§"v§>;
         var _loc45_:* = 0;
         var _loc46_:* = null as §'!]§;
         var _loc47_:* = null as Function;
         var _loc48_:* = false;
         var _loc49_:* = 0;
         var _loc50_:* = null as §"v§;
         while(true)
         {
            if(!_loc52_)
            {
               §&W§ = false;
               if(!_loc51_)
               {
                  break;
               }
            }
            § L§.mid = 960413;
            break;
         }
         var _loc1_:Vector.<§'!]§> = new Vector.<§'!]§>(0,false);
         if(!_loc52_)
         {
            §;I§ = _loc1_;
            while(true)
            {
               if(_loc51_)
               {
                  §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§>-§,3,1,-2200,null,{
                     "backwards":true,
                     "beginMessage":"Step 1: get answers from the Runner.\nDone!"
                  }));
                  if(!_loc51_)
                  {
                     break;
                  }
               }
               §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§0x§,34,null,null,null,{"beginMessage":"Step 2: gather the others.\nStep 3: FINALLY go home."}));
               if(_loc51_)
               {
                  break;
               }
            }
            §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§>=§,6,null,null,null,{"beginMessage":"Missing tiles. Someone was here recently!"}));
         }
         var _loc2_:CharacterDef = CharacterRegistry.§#!P§;
         var _loc3_:§ !>§ = §>K§.§2s§;
         var _loc4_:TheNextBigThing = Cutscenes.§8!B§();
         var _loc5_:§'!]§ = new §'!]§(_loc2_,_loc3_,4,3,-4800,"|characterSprite-name-Skater~xIndex-14~zIndex-15~frame-28",{"beginMessage":"I\'m getting close. I hope.\nI\'d BETTER be getting close."},null,_loc4_);
         while(true)
         {
            if(!_loc52_)
            {
               §;I§.push(_loc5_);
               if(_loc52_)
               {
                  break;
               }
            }
            §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§,[§,7,null,null,null,{"beginMessage":"Does he WANT to stay out here?\nBut there\'s nothing here! I don\'t get it..."}));
            if(_loc51_)
            {
               break;
            }
            addr01d8:
            var _loc6_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc7_:§ !>§ = §>K§.§,[§;
            var _loc8_:YouThink = Cutscenes.§'?§();
            while(true)
            {
               §§push(§§findproperty(§'!]§));
               §§push(_loc6_);
               §§push(_loc7_);
               §§push(4);
               §§push(1);
               §§push(-500);
               §§push("|characterSprite-name-Child~xIndex-1.9~zIndex--1.2~countFromEnd~frame-97");
               if(_loc51_)
               {
                  §§push("|characterSprite-name-Duplicator~xIndex-2.1~zIndex--1.5~countFromEnd~frame-65");
                  if(_loc52_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc52_)
                  {
                     §§push(§§pop());
                  }
               }
               §§push("backwards");
               break;
            }
            var _loc9_:§'!]§ = new §§pop().§'!]§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),{
               (§§pop()):true,
               "beginMessage":"I usually can\'t go five minutes without crashing into one of those pests."
            },null,_loc8_);
            if(!_loc52_)
            {
               §;I§.push(_loc9_);
            }
            var _loc10_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc11_:§ !>§ = §>K§.§0x§;
            var _loc12_:FriendlyGreeting = Cutscenes.§7-§();
            while(true)
            {
               §§push(§§findproperty(§'!]§));
               §§push(_loc10_);
               §§push(_loc11_);
               §§push(47);
               §§push(2);
               §§push(-500);
               §§push("|characterSprite-name-Pastafarian~xIndex-4.3~zIndex--3~countFromEnd~frame-96");
               §§push("backwards");
               §§push(true);
               §§push("beginMessage");
               §§push("For once I\'m glad I\'m single. I won\'t have a spouse trying to rip out MY antennae when I get back.");
               if(_loc51_)
               {
                  §§push(§§pop() + "\nAlthough, hmm...\nIf my friends miss me as much as I miss them...");
                  if(_loc52_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            var _loc13_:§'!]§ = new §§pop().§'!]§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null,null,_loc12_);
            while(true)
            {
               if(_loc51_)
               {
                  §;I§.push(_loc13_);
                  if(!_loc51_)
                  {
                     break;
                  }
               }
               §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§0x§,32,null,null,null,{
                  "backwards":true,
                  "startTilesLength":§&r§.§#!8§,
                  "beginMessage":"That went well!\nExcept for the part where she wants me to change.\n" + "Oh well. I\'ll just have to ignore her."
               }));
               break;
            }
            var _loc14_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc15_:§ !>§ = §>K§.§0x§;
            §§push(§&r§.§#!8§);
            if(_loc51_)
            {
               §§push(Number(§§pop()));
            }
            var _loc16_:* = §§pop();
            if(_loc51_)
            {
               §§push(§§newactivation());
               §§push(Cutscenes.§"!I§().display);
               if(_loc51_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[1] = §§pop();
            }
            var _loc17_:Indecision = Cutscenes.§"!I§();
            var _loc18_:§'!]§ = new §'!]§(_loc14_,_loc15_,15,null,-40,null,{
               "backwards":true,
               "startTilesLength":_loc16_,
               "victoryCallback":function():void
               {
                  f(1);
               }
            },null,_loc17_);
            while(true)
            {
               if(!_loc52_)
               {
                  §;I§.push(_loc18_);
                  if(_loc52_)
                  {
                     break;
                  }
                  §§push(§§newactivation());
                  §§push(§%'§);
                  if(_loc51_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
                  if(!_loc51_)
                  {
                     break;
                  }
               }
               a1 = _loc18_;
               break;
            }
            if(!_loc52_)
            {
               §§push(§§pop());
            }
            var _loc19_:* = §§pop();
            while(true)
            {
               if(_loc51_)
               {
                  Cutscenes.§"!I§().§3![§ = _loc19_;
                  if(_loc51_)
                  {
                     §;I§.push(null);
                     §;I§.push(null);
                     §;I§.push(null);
                     if(_loc52_)
                     {
                        break;
                     }
                  }
               }
               §;I§.push(null);
               §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§0x§,25,2,null,null,{
                  "noCrumblingTiles":true,
                  "beginMessage":"Plus, I\'m too nice to leave like that.\nThey NEED my help. Leaving would be unheroic of me."
               }));
               break;
            }
            §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§^!+§,10,null,null,null,{"beginMessage":"I remember this tunnel...\nI hate it even more than the others."}));
            var _loc20_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc21_:§ !>§ = §>K§.§^!+§;
            var _loc22_:StandardsToUphold = Cutscenes.§0+§();
            var _loc23_:§'!]§ = new §'!]§(_loc20_,_loc21_,21,2,null,"|characterSprite-name-Gentleman~xIndex-2~zIndex-0~countFromEnd~frame-28",{"beginMessage":"I don\'t know if it\'s my imagination, but it feels like I just can\'t fly as well here."},null,_loc22_);
            while(true)
            {
               if(!_loc52_)
               {
                  §;I§.push(_loc23_);
                  if(!_loc51_)
                  {
                     break;
                  }
               }
               §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§7&§,1,null,null,null,{
                  "noCrumblingTiles":true,
                  "beginMessage":"Good riddance.\nHe\'s going to be stuck here for another couple years, but that\'s not my problem."
               }));
               break;
            }
            var _loc24_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc25_:§ !>§ = §>K§.§7&§;
            var _loc26_:ItsJustYou = Cutscenes.§3y§();
            var _loc27_:§'!]§ = new §'!]§(_loc24_,_loc25_,3,null,-2000,"|characterSprite-name-Lizard~xIndex-4~zIndex--18.4~countFromEnd~frame-28",{
               "noCrumblingTiles":true,
               "beginMessage":"Hey, knocked-out tiles. I\'m in luck!"
            },null,_loc26_);
            if(!_loc52_)
            {
               §;I§.push(_loc27_);
               if(!_loc52_)
               {
                  new §"v§(CharacterRegistry.lizard,"The Lizard",_loc27_);
                  while(true)
                  {
                     if(!_loc52_)
                     {
                        §§push(§§newactivation());
                        §§push(§%'§);
                        if(!_loc52_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().§§slot[4] = §§pop();
                        if(_loc52_)
                        {
                           break;
                        }
                     }
                     a11 = _loc27_;
                     break;
                  }
               }
            }
            if(_loc51_)
            {
               §§push(§§pop());
            }
            var _loc28_:* = §§pop();
            Cutscenes.§3y§().§3![§ = _loc28_;
            §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§>y§,6,null,null,null,{"beginMessage":"Just a few more places left to check."}));
            §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§`!5§,7));
            §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§`!5§,0,null,null,null,{
               "backwards":true,
               "startTilesLength":§&r§.§#!8§,
               "beginMessage":"I guess that\'s it then."
            }));
            if(!_loc52_)
            {
               §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§>y§,9,1,-2000,null,{"beginMessage":"Gotta check here just to be sure..."}));
               §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§>y§,9,2,null,null,{
                  "backwards":true,
                  "startTilesLength":-1,
                  "modifyData":function(param1:int, param2:String):String
                  {
                     var _temp_1:* = false;
                     var _loc3_:Boolean = true;
                     var _loc4_:Boolean = _temp_1;
                     if(param1 == 9)
                     {
                        §§push(param2);
                        if(_loc3_)
                        {
                           §§push(§§pop() + "|spawnZ-3120");
                           if(!_loc4_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        return param2;
                     }
                     return §§pop();
                  },
                  "beginMessage":"As I thought. We must have passed each other at some point.\nHer loss.\n" + "Maybe the Pastafarian will find her, but I\'m not going to spend another two weeks searching."
               }));
            }
            var _loc29_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc30_:§ !>§ = §>K§.§>y§;
            var _loc31_:Discoveries = Cutscenes.§%=§();
            var _loc32_:§'!]§ = new §'!]§(_loc29_,_loc30_,4,1,-500,"|characterSprite-name-Student~xIndex-22~zIndex--4~countFromEnd~frame-71~xInverted",{
               "backwards":true,
               "noCrumblingTiles":true,
               "beginMessage":"I\'ve done my duty. Time to head home!"
            },null,_loc31_);
            if(!_loc52_)
            {
               §;I§.push(_loc32_);
            }
            §§push(0);
            if(!_loc52_)
            {
               §§push(int(§§pop()));
            }
            var _loc33_:* = §§pop();
            §§push(int(§;I§.length));
            if(!_loc52_)
            {
               §§push(int(§§pop()));
            }
            var _loc34_:* = §§pop();
            if(_loc51_)
            {
               loop0:
               while(_loc33_ < _loc34_)
               {
                  while(true)
                  {
                     §§push(_loc33_);
                     if(!_loc52_)
                     {
                        _loc33_++;
                        if(!_loc51_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc35_ = §§pop();
                  while(true)
                  {
                     if(_loc51_)
                     {
                        if(§;I§[_loc35_] == null)
                        {
                           continue loop0;
                        }
                        if(_loc52_)
                        {
                           break;
                        }
                        §§push(1.0222);
                        if(!_loc52_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc36_ = §§pop();
                        if(_loc52_)
                        {
                           break;
                        }
                     }
                     §;I§[_loc35_].§3[§.customDate = _loc36_ + _loc35_ / int(§;I§.length) * (1.0222 + 0.09375 - _loc36_);
                     break;
                  }
                  _loc37_ = §;I§[_loc35_].§2!&§;
                  while(true)
                  {
                     if(_loc51_)
                     {
                        if(_loc37_ == null)
                        {
                           continue loop0;
                        }
                        if(!_loc51_)
                        {
                           continue loop0;
                        }
                        _loc37_.tunnelParams.customDate = Number(§;I§[_loc35_].§3[§.customDate);
                        if(!_loc51_)
                        {
                           break;
                        }
                     }
                     if(_loc37_.§4b§ == §+Z§.§&L§)
                     {
                        if(_loc51_)
                        {
                           break;
                        }
                     }
                     continue loop0;
                  }
                  §§push(_loc37_);
                  §§push(§+!"§);
                  §§push(global);
                  §§push([_loc35_]);
                  §§push(§-R§);
                  if(_loc51_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§4b§ = §§pop().CUSTOM(§§pop()(§§pop(),null));
               }
            }
            var _loc38_:Vector.<§"v§> = new Vector.<§"v§>(0,false);
            if(_loc51_)
            {
               §+!@§ = _loc38_;
            }
            _loc39_ = §+!@§;
            var _loc40_:CharacterDef = CharacterRegistry.§-P§;
            var _loc41_:CharacterDef = CharacterRegistry.§#!P§;
            var _loc42_:§ !>§ = §>K§.§>-§;
            var _loc43_:MyTurn = Cutscenes.§=f§();
            while(true)
            {
               while(true)
               {
                  if(!_loc52_)
                  {
                     _loc39_.push(new §"v§(_loc40_,"The Know-it-all",new §'!]§(_loc41_,_loc42_,-1,null,null,null,{"customDate":1.0222},null,_loc43_)));
                     §+!@§[0].§+!=§ = 0;
                     if(!_loc51_)
                     {
                        break;
                     }
                     §+!@§.push(new §"v§(CharacterRegistry.skater,"The Show-off",_loc5_));
                     if(_loc51_)
                     {
                        §+!@§.push(new §"v§(CharacterRegistry.duplicator,"The Crackpot",_loc9_));
                        §+!@§.push(new §"v§(CharacterRegistry.student,"The Nerd",_loc32_));
                        if(_loc52_)
                        {
                           continue loop18;
                        }
                     }
                  }
                  §+!@§.push(new §"v§(CharacterRegistry.child,"The Sneak",null,§^!I§(CharacterRegistry.duplicator)));
                  continue loop18;
               }
               §§push(0);
               if(!_loc52_)
               {
                  break loop18;
               }
               §§goto(addr09da);
            }
            §+!@§.push(new §"v§(CharacterRegistry.pastafarian,"The Meddler",_loc13_));
            §+!@§.push(new §"v§(CharacterRegistry.gentleman,"The Snob",_loc23_));
            loop18:
            while(true)
            {
               while(true)
               {
                  §§push(0);
                  if(!_loc52_)
                  {
                     _loc33_ = int(§§pop());
                     if(_loc52_)
                     {
                        break;
                     }
                     §§push(1);
                     if(_loc51_)
                     {
                        §§push(int(§§pop()));
                        if(_loc52_)
                        {
                           break loop18;
                        }
                     }
                  }
                  _loc34_ = §§pop();
                  if(!_loc52_)
                  {
                     break loop17;
                  }
                  break;
               }
               addr09da:
               §§push(int(§;I§.length));
               if(!_loc52_)
               {
                  §§push(int(§§pop()));
               }
               var _loc44_:* = §§pop();
               if(_loc51_)
               {
                  loop1:
                  while(_loc35_ < _loc44_)
                  {
                     loop20:
                     while(true)
                     {
                        §§push(_loc35_);
                        if(!_loc52_)
                        {
                           _loc35_++;
                           while(true)
                           {
                              if(_loc51_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc51_)
                                 {
                                    _loc45_ = §§pop();
                                    if(_loc52_)
                                    {
                                       break loop20;
                                    }
                                    if(§;I§[_loc45_] == null)
                                    {
                                       if(!_loc51_)
                                       {
                                          break loop20;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       if(§;I§[_loc45_].§3[§.victoryCallback == null)
                                       {
                                          if(_loc52_)
                                          {
                                             break;
                                          }
                                          _loc46_ = §;I§[_loc45_];
                                          if(_loc51_)
                                          {
                                             §§push(global);
                                             §§push([§;I§[_loc45_]]);
                                             §§push(§%'§);
                                             if(_loc51_)
                                             {
                                                §§push(§§pop());
                                             }
                                             §§push(§§pop()(§§pop(),null));
                                             if(_loc51_)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc47_ = §§pop();
                                             if(!_loc52_)
                                             {
                                                _loc46_.§3[§.victoryCallback = _loc47_;
                                             }
                                          }
                                       }
                                       §§push(false);
                                       if(_loc51_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc48_ = §§pop();
                                       if(_loc51_)
                                       {
                                          break;
                                       }
                                       break loop20;
                                    }
                                    §§push(0);
                                    if(!_loc51_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§push(int(§§pop()));
                              break;
                           }
                        }
                        _loc49_ = §§pop();
                        break;
                     }
                     _loc39_ = §+!@§;
                     loop23:
                     while(true)
                     {
                        loop24:
                        while(true)
                        {
                           loop25:
                           while(true)
                           {
                              if(!_loc52_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc49_);
                                    if(_loc52_)
                                    {
                                       break loop25;
                                    }
                                    §§push(int(_loc39_.length));
                                    if(_loc52_)
                                    {
                                       break loop24;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc52_)
                                       {
                                          break loop23;
                                       }
                                    }
                                    else
                                    {
                                       _loc50_ = _loc39_[_loc49_];
                                       while(true)
                                       {
                                          if(_loc51_)
                                          {
                                             _loc49_++;
                                             if(!_loc51_)
                                             {
                                                break;
                                             }
                                          }
                                          if(_loc50_.§=!§ == §;I§[_loc45_])
                                          {
                                             if(!_loc52_)
                                             {
                                                _loc50_.§<! § = §;I§[_loc33_];
                                                if(!_loc52_)
                                                {
                                                   break;
                                                }
                                             }
                                             addr0b34:
                                             §§push(true);
                                             if(!_loc52_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             _loc48_ = §§pop();
                                          }
                                          continue loop2;
                                       }
                                       _loc50_.§+!=§ = _loc34_;
                                       if(!_loc51_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr0b34);
                                    }
                                 }
                                 break;
                              }
                              if(!_loc48_)
                              {
                                 continue loop1;
                              }
                              if(!_loc51_)
                              {
                                 continue loop1;
                              }
                              §§push(_loc45_);
                              if(_loc51_)
                              {
                                 §§push(1);
                                 break loop24;
                              }
                              §§goto(addr0b7e);
                           }
                           §§goto(addr0b7e);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc52_)
                        {
                           break loop25;
                        }
                        addr0b7e:
                        _loc33_ = §§pop();
                        if(!_loc52_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     _loc34_++;
                  }
                  if(_loc51_)
                  {
                     Cutscenes.§=f§().tunnelParams.customDate = 1.0222;
                     if(!_loc52_)
                     {
                        super(null,null,§&d§.§1$§());
                        if(_loc51_)
                        {
                           addEventListener(MouseEvent.CLICK,§9!9§);
                           if(_loc51_)
                           {
                              addEventListener(MouseEvent.CLICK,§8r§);
                           }
                        }
                     }
                  }
               }
               return;
            }
            _loc35_ = int(§§pop());
            break loop19;
         }
         §;I§.push(new §'!]§(CharacterRegistry.§#!P§,§>K§.§,[§,9,1,-2500,null,{
            "beginMessage":"The boredom must have driven him crazy.\nWait no, then he\'d be desperate to leave.\nMaybe he started out crazy.",
            "victoryMessage":"No one there. Where is everyone?"
         }));
         §§goto(addr01d8);
      }
      
      public static function §@!A§() : §&r§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §&r§;
         if(!_loc2_)
         {
            if(§&r§.§?Y§ != null)
            {
               return §&r§.§?Y§;
            }
         }
         return §&r§.§?Y§ = new §&r§();
      }
      
      public function §8r§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(§&W§);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     §@!?§();
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  param1.stopImmediatePropagation();
                  break;
               }
            }
         }
      }
      
      public function §@!?§(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(Actuate);
                  §§push(this);
                  if(_loc2_)
                  {
                     if(!param1)
                     {
                        §§push(0.4);
                        break;
                     }
                  }
                  §§push(0);
                  if(_loc2_)
                  {
                  }
                  break;
               }
               §§pop().tween(§§pop(),§§pop(),{
                  "x":§[!O§.x,
                  "y":§[!O§.y
               }).ease(§>!9§.get_easeOut());
               if(!_loc3_)
               {
                  §1!%§.scaleY = -1;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            §&W§ = true;
            break;
         }
      }
      
      public function §5@§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _temp_3:* = §[!O§;
         var _loc1_:*;
         §5I§.x = _loc1_ = Number(§,!<§.x = Lib.get_current().stage.stageWidth * 0.05);
         _temp_3.x = _loc1_;
         while(true)
         {
            if(!_loc4_)
            {
               §§push(Lib.get_current().stage.stageHeight - height);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               _loc1_ = §§pop();
               if(_loc4_)
               {
                  break;
               }
            }
            §[!O§.y = _loc1_ + 12 * layout.scale.y;
            if(_loc3_)
            {
               §5I§.y = Lib.get_current().stage.stageHeight - §>[§.height;
            }
            break;
         }
         var _loc2_:int = int(Lib.get_current().stage.stageHeight);
         if(!_loc4_)
         {
            §,!<§.y = _loc2_ - 28 * layout.scale.y;
         }
      }
      
      public function §?!!§() : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = null as § !>§;
         var _loc4_:* = null as §-Q§;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc8_:* = null as String;
         var _loc9_:* = null as §2!;§;
         var _loc10_:* = 0;
         var _loc11_:* = null as §,7§;
         var _loc12_:* = null as §+Z§;
         var _loc13_:* = null as §]k§;
         loop3:
         while(true)
         {
            if(!_loc15_)
            {
               while(true)
               {
                  §§push(§6!]§);
                  if(!_loc15_)
                  {
                     §§push(!§§pop());
                     if(_loc14_)
                     {
                        §§push(!§§pop());
                        if(_loc14_)
                        {
                           if(§§pop())
                           {
                              if(!_loc15_)
                              {
                                 _loc3_ = §>K§.§>-§;
                                 _loc4_ = _loc3_.§0!R§;
                                 _loc5_ = int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§)));
                                 while(true)
                                 {
                                    §§push(_loc3_.levelCount);
                                    if(_loc14_)
                                    {
                                       _loc6_ = int(§§pop());
                                       §§push(_loc5_);
                                       §§push(_loc6_);
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() < §§pop() ? _loc5_ : _loc6_);
                                    }
                                    §§push(_loc3_.levelCount);
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(§>K§.§?t§.§'m§(9));
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    else
                                    {
                                       §§push(false);
                                       if(_loc15_)
                                       {
                                          break loop3;
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    §§push(_loc2_);
                                    break;
                                 }
                                 _loc1_ = !§§pop();
                              }
                              addr00ff:
                              §§push(_loc1_);
                              break loop3;
                           }
                           §§push(true);
                           if(!_loc14_)
                           {
                              break;
                           }
                        }
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break;
               }
               _loc1_ = §§pop();
            }
            §§goto(addr00ff);
         }
         if(§§pop())
         {
            visible = false;
            if(_loc14_)
            {
               return;
            }
         }
         else
         {
            visible = true;
         }
         var _loc7_:§2!;§ = §&r§.§,U§;
         if(_loc14_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))));
                        if(_loc14_)
                        {
                           §§push(int(§;I§.length));
                           if(!_loc14_)
                           {
                              break loop9;
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc15_)
                                 {
                                    break loop8;
                                 }
                                 §'R§.visible = false;
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 _loc9_ = §&r§.§,U§;
                                 loop13:
                                 while(true)
                                 {
                                    if(_loc14_)
                                    {
                                       while(true)
                                       {
                                          if(int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§))) > 0)
                                          {
                                             if(!_loc14_)
                                             {
                                                break;
                                             }
                                             §§push("Keep searching...");
                                             if(_loc14_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc15_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                   }
                                                   break loop13;
                                                }
                                             }
                                             else
                                             {
                                                addr01d8:
                                                §§push(§§pop());
                                             }
                                          }
                                          else
                                          {
                                             §§push("Start searching...");
                                             if(!_loc15_)
                                             {
                                                §§goto(addr01d8);
                                             }
                                          }
                                          _loc8_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             break;
                                          }
                                          break loop13;
                                       }
                                    }
                                    §'R§.§-7§.text = _loc8_;
                                    break;
                                 }
                              }
                              §§push(0);
                              if(!_loc14_)
                              {
                                 break loop10;
                              }
                              §§push(int(§§pop()));
                              if(_loc14_)
                              {
                                 _loc5_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    break;
                                 }
                                 break loop8;
                              }
                           }
                           §§push(int(§+!@§.length));
                           if(_loc15_)
                           {
                              break loop7;
                           }
                        }
                        §§push(int(§§pop()));
                        if(_loc14_)
                        {
                           break loop7;
                        }
                        break;
                     }
                     §§goto(addr02d3);
                  }
                  while(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc14_)
                        {
                           _loc5_++;
                           if(_loc15_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     _loc10_ = §§pop();
                     _loc11_ = §6"§[_loc10_];
                     _loc12_ = §+!@§[_loc10_].§+!+§;
                     if(!_loc15_)
                     {
                        if(_loc12_.§?^§ != null)
                        {
                           if(_loc14_)
                           {
                              _loc13_ = _loc12_.§?^§;
                              if(!_loc15_)
                              {
                                 §§push(Boolean(Save.§@!A§().get(_loc13_.§=-§,Boolean(_loc13_.§ -§))));
                                 if(_loc14_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc14_)
                                 {
                                    break loop8;
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(false);
                           if(_loc14_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc2_ = §§pop();
                        }
                     }
                     _loc11_.§+s§(_loc2_);
                     break loop8;
                  }
               }
               while(true)
               {
                  §§push(_loc5_);
                  addr02d3:
                  while(true)
                  {
                     §§push(_loc6_);
                     break loop9;
                  }
               }
            }
            _loc6_ = §§pop();
            if(_loc14_)
            {
               break loop8;
            }
         }
      }
      
      public function §%'§(param1:§'!]§, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            §§push(int(§;I§.indexOf(param1,0)));
            if(_loc6_)
            {
               §§push(§§pop() + 1);
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc3_:* = §§pop();
         loop5:
         while(true)
         {
            if(_loc6_)
            {
               loop0:
               while(true)
               {
                  §§push(false);
                  if(_loc6_)
                  {
                     if(_loc3_ < int(§;I§.length))
                     {
                        loop6:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              §§pop();
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(§;I§[_loc3_] == null);
                                    if(!_loc6_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 addr006a:
                              }
                              break loop5;
                           }
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              break loop6;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        break loop5;
                     }
                     _loc3_++;
                     continue loop0;
                  }
                  break loop5;
               }
               break;
            }
            §§goto(addr006a);
         }
         var _loc4_:§2!;§ = §&r§.§,U§;
         loop7:
         while(true)
         {
            while(true)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(§§pop() > §§pop())
                  {
                     §&r§.§,U§.§?F§(_loc3_);
                  }
                  if(!param2)
                  {
                     break loop7;
                  }
                  if(!_loc6_)
                  {
                     break loop7;
                  }
                  §§push(_loc3_);
               }
               §§push(int(§;I§.length));
               break;
            }
            if(§§pop() < §§pop())
            {
               if(_loc6_)
               {
                  §;I§[_loc3_].§ !7§();
               }
               break;
            }
            Main.instance.§,Z§(null);
            break;
         }
      }
      
      public function §%N§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
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
                        while(true)
                        {
                           §§push(false);
                           §§push(false);
                           if(!_loc1_)
                           {
                              §§push(false);
                              if(!_loc1_)
                              {
                                 if(mouseX < 0)
                                 {
                                    break;
                                 }
                                 if(_loc1_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§pop();
                              if(!_loc2_)
                              {
                                 break loop2;
                              }
                           }
                           §§push(mouseX <= width);
                           if(_loc2_)
                           {
                              break loop3;
                           }
                           break;
                        }
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                              §§push(mouseY >= 0);
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                           }
                        }
                        §§goto(addr007a);
                     }
                     §§push(Boolean(§§pop()));
                     break loop4;
                  }
                  addr007a:
                  if(!Boolean(§§pop()))
                  {
                     break;
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push(mouseY <= height);
               if(!_loc1_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(!§§pop())
            {
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr00ad);
            }
            else
            {
               §§push(true);
            }
            §§goto(addr00f6);
         }
         if(§'R§.visible)
         {
            addr00ad:
            §§push(Boolean(§'R§.getBounds(§'R§).contains(§'R§.mouseX,§'R§.mouseY)));
            if(!_loc1_)
            {
               return §§pop();
            }
         }
         else
         {
            §§push(false);
            if(!_loc1_)
            {
               return §§pop();
            }
         }
         addr00f6:
         return §§pop();
      }
      
      public function §5s§(param1:Event) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc2_:* = false;
         var _loc8_:* = null as §2!;§;
         var _loc9_:* = null as §2!;§;
         var _loc10_:* = null as §&r§;
         var _loc11_:* = null as §2!;§;
         var _loc12_:* = 0;
         var _loc3_:§ !>§ = §>K§.§>-§;
         var _loc4_:§-Q§ = _loc3_.§0!R§;
         §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
         if(!_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.levelCount);
         if(!_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!_loc14_)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc14_)
                  {
                     §§push(_loc6_);
                     if(!_loc13_)
                     {
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        if(_loc14_)
                        {
                           break loop1;
                        }
                        §§push(_loc5_);
                        if(_loc14_)
                        {
                        }
                     }
                     else
                     {
                        §§push(_loc6_);
                     }
                  }
                  §§push(_loc3_.levelCount);
                  break;
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc13_)
                     {
                        break loop1;
                     }
                     §§push(§>K§.§?t§.§'m§(9));
                     if(_loc13_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc14_)
                        {
                           _loc2_ = §§pop();
                           if(_loc14_)
                           {
                           }
                           break;
                        }
                        §§goto(addr00e4);
                     }
                  }
                  else
                  {
                     §§push(false);
                  }
                  _loc2_ = Boolean(§§pop());
                  if(!_loc14_)
                  {
                     break;
                  }
                  break loop1;
               }
               addr00e4:
               if(!§§pop())
               {
                  break;
               }
               var _loc7_:§2!;§ = §&r§.§,U§;
               loop4:
               while(true)
               {
                  if(!_loc14_)
                  {
                     if(int(Save.§@!A§().get(_loc7_.§=-§,int(_loc7_.§ -§))) < int(§;I§.length))
                     {
                        if(!_loc13_)
                        {
                           break;
                        }
                        _loc8_ = §&r§.§,U§;
                        loop5:
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              if(§;I§[int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§)))] != null)
                              {
                                 _loc9_ = §&r§.§,U§;
                                 if(_loc13_)
                                 {
                                    §;I§[int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§)))].§ !7§();
                                 }
                                 addr028f:
                                 param1.stopImmediatePropagation();
                                 break loop4;
                              }
                              if(!_loc13_)
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 break loop5;
                              }
                              _loc9_ = §&r§.§,U§;
                              if(!_loc13_)
                              {
                                 break loop5;
                              }
                              §§push(§;I§[int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§)))] == null);
                              if(_loc13_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 break loop5;
                              }
                              _loc10_ = this;
                              _loc11_ = §&r§.§,U§;
                              if(_loc13_)
                              {
                                 §§push(int(Save.§@!A§().get(_loc11_.§=-§,int(_loc11_.§ -§))));
                                 if(!_loc14_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc12_ = §§pop();
                                 if(_loc14_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(§&r§.§,U§);
                              §§push(_loc12_);
                              if(_loc13_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              §§pop().§?F§(§§pop());
                           }
                           break;
                        }
                        _loc9_ = §&r§.§,U§;
                        if(!_loc14_)
                        {
                           §;I§[int(Save.§@!A§().get(_loc9_.§=-§,int(_loc9_.§ -§)))].§3[§.victoryCallback();
                           if(_loc14_)
                           {
                              break;
                           }
                        }
                        §§goto(addr028f);
                     }
                     else
                     {
                        §[!<§.§@!A§().§4X§(Map.§@!A§());
                        if(!_loc13_)
                        {
                           break;
                        }
                     }
                  }
                  Main.instance.§,Z§(null);
                  break;
               }
               return;
            }
         }
         break loop1;
      }
      
      public function §9!9§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(§&W§);
            if(!_loc5_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               var _loc2_:Number = Number(mouseX);
               var _loc3_:Number = Number(mouseY);
               loop0:
               while(true)
               {
                  if(_loc4_)
                  {
                     §§push(true);
                     if(!_loc5_)
                     {
                        loop1:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(true);
                              if(!_loc5_)
                              {
                                 §§push(true);
                                 if(_loc4_)
                                 {
                                    if(_loc2_ >= 0)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             §§pop();
                                             if(!_loc4_)
                                             {
                                                break loop2;
                                             }
                                             §§push(_loc3_ < 0);
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
                                 if(§§pop())
                                 {
                                    break loop1;
                                 }
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                              }
                              §§pop();
                              if(_loc4_)
                              {
                                 §§push(_loc2_ > width);
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break;
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    break loop0;
                                 }
                                 §§push(_loc3_);
                                 §§push(§>[§.y + §>[§.height);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + 12 * layout.scale.y);
                                    if(_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§push(§§pop() > §§pop());
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        §6V§();
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                  }
                  param1.stopImmediatePropagation();
                  break;
               }
               return;
            }
         }
      }
      
      public function §6V§(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:§2!;§ = §&r§.§,U§;
         while(true)
         {
            if(_loc5_)
            {
               if(int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))) < int(§;I§.length))
               {
                  §§push("x");
                  break;
               }
            }
            §§push("x");
            if(_loc4_)
            {
               break;
            }
            while(true)
            {
               §§push({
                  (§§pop()):§,!<§.x,
                  "y":§,!<§.y
               });
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  addr009d:
                  _loc2_ = §§pop();
               }
               while(true)
               {
                  §§push(Actuate);
                  §§push(this);
                  if(_loc5_)
                  {
                     if(!param1)
                     {
                        §§push(0.4);
                        break;
                     }
                  }
                  §§push(0);
                  if(_loc4_)
                  {
                  }
                  break;
               }
               §§pop().tween(§§pop(),§§pop(),_loc2_).ease(§>!9§.get_easeOut());
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr00fe);
            }
            §1!%§.scaleY = 1;
            if(_loc5_)
            {
               §&W§ = false;
            }
            addr00fe:
            return;
         }
         §§goto(addr009d);
      }
      
      public function §^!I§(param1:CharacterDef) : §"v§
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as §"v§;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§"v§> = §+!@§;
         if(!_loc6_)
         {
            loop0:
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               while(true)
               {
                  if(!_loc6_)
                  {
                     _loc2_++;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  if(_loc4_.§'r§ == param1)
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc4_;
            }
         }
         return null;
      }
      
      override public function §^g§() : void
      {
         var f:Function;
         §§push(false);
         var _loc21_:Boolean = true;
         var _loc22_:* = §§pop();
         var _loc3_:* = null as § 7§;
         var _loc5_:* = null as §,7§;
         var _loc9_:* = null as §"v§;
         var _loc10_:* = null as § 7§;
         while(true)
         {
            if(!_loc22_)
            {
               §?!_§ = new Sprite();
               if(_loc22_)
               {
                  break;
               }
            }
            addChild(§?!_§);
            if(!_loc22_)
            {
               break;
            }
            var _loc1_:TextField = §>[§;
            var _loc2_:* = null;
            loop2:
            while(true)
            {
               while(true)
               {
                  if(_loc21_)
                  {
                     if(_loc2_ != null)
                     {
                        break;
                     }
                     if(!_loc21_)
                     {
                        break loop2;
                     }
                  }
                  _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
                  break;
               }
               §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
               break;
            }
            _loc3_ = new §?y§(§>[§);
            if(!_loc22_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(12,§2u§.LEFT));
            }
            _loc3_ = new §?y§(§>[§);
            if(_loc21_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(12,§2u§.TOP));
               if(!_loc22_)
               {
                  §?!_§.addChild(§>[§);
               }
            }
            var _loc4_:Vector.<§,7§> = new Vector.<§,7§>(0,false);
            if(_loc21_)
            {
               §6"§ = _loc4_;
            }
            var _loc6_:DisplayObject = §>[§;
            §§push(0);
            if(_loc21_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<§"v§> = §+!@§;
            if(!_loc22_)
            {
               while(_loc7_ < int(_loc8_.length))
               {
                  _loc9_ = _loc8_[_loc7_];
                  if(!_loc22_)
                  {
                     _loc7_++;
                  }
                  _loc5_ = new §,7§(_loc9_);
                  _loc3_ = new §?y§(_loc5_);
                  if(!_loc22_)
                  {
                     §&d§.§1$§().add(_loc3_,new §;!!§(12,§2u§.LEFT));
                  }
                  _loc3_ = new §?y§(_loc5_);
                  _loc10_ = new §?y§(_loc6_);
                  if(!_loc22_)
                  {
                     §&d§.§1$§().add(_loc3_,new §+X§(0,§2u§.BOTTOM),_loc10_);
                     if(!_loc22_)
                     {
                        §?!_§.addChild(_loc5_);
                        if(!_loc22_)
                        {
                           §6"§.push(_loc5_);
                        }
                     }
                  }
                  _loc6_ = _loc5_;
               }
               if(_loc21_)
               {
                  §!1§(new §?y§(§?!_§),new §?y§(§?!_§),12);
               }
            }
            var _loc11_:Shape = new Shape();
            while(true)
            {
               if(!_loc22_)
               {
                  §<!T§.fillRect(_loc11_,§^F§.SOLID(16777215));
                  if(_loc22_)
                  {
                     break;
                  }
               }
               addChildAt(_loc11_,0);
               break;
            }
            var _loc12_:Rectangle = new Rectangle(-10,-7,20,14);
            _loc3_ = new § 6§(_loc12_);
            if(_loc21_)
            {
               §&d§.§1$§().add(_loc3_,new §;R§(true));
               if(!_loc22_)
               {
                  §&d§.§1$§().add(_loc3_,new §;R§(false));
               }
            }
            _loc3_ = new § 6§(_loc12_);
            var _loc13_:* = Number(_loc12_.x);
            if(!_loc22_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(_loc13_,§2u§.LEFT));
            }
            _loc3_ = new § 6§(_loc12_);
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(_loc21_)
                  {
                     while(true)
                     {
                        §§push(Number(_loc12_.y));
                        if(_loc21_)
                        {
                           _loc13_ = §§pop();
                           if(_loc21_)
                           {
                              §&d§.§1$§().add(_loc3_,new §;!!§(_loc13_,§2u§.TOP));
                              if(!_loc21_)
                              {
                                 break;
                              }
                           }
                           §§push(20);
                           if(!_loc21_)
                           {
                              break loop6;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc21_)
                           {
                              break loop5;
                           }
                        }
                        _loc13_ = §§pop();
                        break;
                     }
                  }
                  §§push(14);
                  break;
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc14_:* = §§pop();
            if(!_loc22_)
            {
               §1!%§ = new Shape();
            }
            var _loc15_:Shape = §1!%§;
            §§push([new Point(0.5,0),new Point(0,1),new Point(1,1),new Point(0.5,0)]);
            if(_loc21_)
            {
               §§push(§§pop());
            }
            var _loc16_:* = §§pop();
            var _loc17_:Vector.<Point> = Vector.<Point>(_loc16_);
            _loc3_ = new § 6§(_loc12_);
            var _loc18_:§<!T§ = new §<!T§(_loc17_);
            if(_loc21_)
            {
               _loc18_.fill = §^F§.SOLID(0);
               if(!_loc22_)
               {
                  §&d§.§1$§().add(new §?y§(_loc15_),_loc18_,_loc3_);
               }
            }
            _loc3_ = new §?y§(§1!%§);
            if(!_loc22_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(-10,§2u§.RIGHT));
            }
            _loc3_ = new §?y§(§1!%§);
            if(_loc21_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(9,§2u§.TOP));
               if(_loc21_)
               {
                  addChild(§1!%§);
                  if(_loc21_)
                  {
                     §§push(§§findproperty(§'R§));
                     §§push(§§findproperty(§+"§));
                     §§push(§5s§);
                     if(_loc21_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§'R§ = new §§pop().§+"§(§§pop(),0,40,"Start searching...",null,null,null,Main.§%p§);
                  }
               }
            }
            var _loc19_:§8!8§ = §'R§;
            if(!_loc22_)
            {
               §&d§.§1$§().add(new §?y§(_loc19_),new §"q§(11184810,6710886,3.6));
            }
            _loc3_ = new §?y§(§'R§);
            _loc10_ = new §?y§(§?!_§);
            if(!_loc22_)
            {
               §&d§.§1$§().add(_loc3_,new §+X§(24,§2u§.RIGHT),_loc10_);
            }
            _loc3_ = new §?y§(§'R§);
            while(true)
            {
               if(_loc21_)
               {
                  §&d§.§1$§().add(_loc3_,new §;!!§(4,§2u§.BOTTOM));
                  if(!_loc21_)
                  {
                     break;
                  }
               }
               addChild(§'R§);
               if(!_loc22_)
               {
                  §[!O§ = new Point(0,0);
                  if(!_loc22_)
                  {
                     break;
                  }
                  §§goto(addr05ea);
               }
               §§goto(addr05db);
            }
            §5I§ = new Point(0,0);
            if(_loc21_)
            {
               addr05db:
               §,!<§ = new Point(0,0);
               §§goto(addr05ea);
            }
            addr05ea:
            while(true)
            {
               §§push(§5@§);
               if(!_loc22_)
               {
                  §§push(§§pop());
                  if(!_loc21_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            var _loc20_:* = §§pop();
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc20_)));
            §§push(_loc20_);
            if(_loc21_)
            {
               §§pop()();
               §§push(§§newactivation());
               §§push(§6V§);
               if(!_loc22_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc22_)
               {
                  if(_loc21_)
                  {
                     §§push(§§pop());
                  }
                  _loc20_ = §§pop();
                  if(!_loc22_)
                  {
                     layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc20_)));
                  }
               }
               §§push(_loc20_);
            }
            §§pop()();
            return;
         }
         §>[§ = §&!;§.§9Q§(0,48,Main.§%p§,"Going home checklist");
         continue loop2;
      }
      
      public function §-R§(param1:int) : Boolean
      {
         var _loc2_:§&r§ = §&r§.§@!A§();
         var _loc3_:§2!;§ = §&r§.§,U§;
         return int(Save.§@!A§().get(_loc3_.§=-§,int(_loc3_.§ -§))) > param1;
      }
   }
}

