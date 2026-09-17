package §%!Q§
{
   import §!!$§.§ 6§;
   import §"!L§.§%z§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import scenes.§+Z§;
   import scenes.Cheating;
   import scenes.Cutscenes;
   import scenes.MorningHypothesis;
   import scenes.MorningHypothesis2;
   import scenes.MorningHypothesis3;
   import scenes.MorningHypothesis4;
   import scenes.MorningHypothesis5;
   import scenes.Revision;
   import scenes.TwoMonthWait;
   import scenes.TwoMonthWait2;
   import scenes.TwoMonthWait3;
   import §4n§.§>!,§;
   import §4n§.Achievement;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.BeatLevelAndSave;
   import com.player03.run3.level.trigger.specific.JumpInstructionsTrigger;
   import com.player03.run3.level.trigger.specific.ModulateSound;
   import com.player03.run3.level.trigger.specific.NoJumpingOrAbilities;
   import com.player03.run3.level.trigger.specific.WormholeBehavior;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   
   public class §6!a§ extends §>!,§ implements §+<§
   {
      
      public static var §?Y§:§6!a§;
      
      public function §6!a§()
      {
         var f9:Function;
         var f8:Function;
         var f7:Function;
         var f6:Function;
         var f5:Function;
         var f4:Function;
         var f3:Function;
         var f2:Function;
         var f1:Function;
         var f:Function;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super();
               if(_loc2_)
               {
                  break;
               }
            }
            §=! §(0,function(param1:§<!§, param2:Level, param3:int):JumpInstructionsTrigger
            {
               return new JumpInstructionsTrigger(param1,param2,param3);
            },null);
            break;
         }
         var _loc1_:§+Z§ = Cutscenes.§>?§();
         while(true)
         {
            if(!_loc2_)
            {
               §§push(§§newactivation());
               §§push(_loc1_.display);
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  break;
               }
            }
            §=! §(357,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
            {
               return new BeatLevelAndSave(param1,param2,param3);
            },new §<!§(function():void
            {
               f(1);
            },null,_loc1_));
            break;
         }
         _loc1_ = Cutscenes.§8!N§();
         if(_loc3_)
         {
            §§push(§§newactivation());
            §§push(_loc1_.display);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[2] = §§pop();
            if(_loc3_)
            {
               §=! §(174,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
               {
                  return new BeatLevelAndSave(param1,param2,param3);
               },new §<!§(function():void
               {
                  f1(1);
               },null,_loc1_));
            }
         }
         _loc1_ = Cutscenes.get_twoMonthWait2();
         if(_loc3_)
         {
            §§push(§§newactivation());
            §§push(_loc1_.display);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[3] = §§pop();
            if(_loc3_)
            {
               §=! §(321,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
               {
                  return new BeatLevelAndSave(param1,param2,param3);
               },new §<!§(function():void
               {
                  f2(1);
               },null,_loc1_));
            }
         }
         _loc1_ = Cutscenes.get_twoMonthWait3();
         while(true)
         {
            if(_loc3_)
            {
               §§push(§§newactivation());
               §§push(_loc1_.display);
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[4] = §§pop();
               if(!_loc3_)
               {
                  break;
               }
            }
            §=! §(405,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
            {
               return new BeatLevelAndSave(param1,param2,param3);
            },new §<!§(function():void
            {
               f3(1);
            },null,_loc1_));
            break;
         }
         _loc1_ = Cutscenes.§',§();
         while(true)
         {
            if(!_loc2_)
            {
               §§push(§§newactivation());
               §§push(_loc1_.display);
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[5] = §§pop();
               if(!_loc3_)
               {
                  break;
               }
            }
            §=! §(344,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
            {
               return new BeatLevelAndSave(param1,param2,param3);
            },new §<!§(function():void
            {
               f4(1);
            },null,_loc1_));
            break;
         }
         _loc1_ = Cutscenes.get_morningHypothesis2();
         while(true)
         {
            if(_loc3_)
            {
               §§push(§§newactivation());
               §§push(_loc1_.display);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[6] = §§pop();
               if(!_loc3_)
               {
                  break;
               }
            }
            §=! §(338,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
            {
               return new BeatLevelAndSave(param1,param2,param3);
            },new §<!§(function():void
            {
               f5(1);
            },null,_loc1_));
            break;
         }
         _loc1_ = Cutscenes.get_morningHypothesis3();
         if(_loc3_)
         {
            §§push(§§newactivation());
            §§push(_loc1_.display);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[7] = §§pop();
            if(!_loc2_)
            {
               §=! §(269,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
               {
                  return new BeatLevelAndSave(param1,param2,param3);
               },new §<!§(function():void
               {
                  f6(1);
               },null,_loc1_));
            }
         }
         _loc1_ = Cutscenes.get_morningHypothesis4();
         if(_loc3_)
         {
            §§push(§§newactivation());
            §§push(_loc1_.display);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[8] = §§pop();
            if(!_loc2_)
            {
               §=! §(340,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
               {
                  return new BeatLevelAndSave(param1,param2,param3);
               },new §<!§(function():void
               {
                  f7(1);
               },null,_loc1_));
            }
         }
         _loc1_ = Cutscenes.get_morningHypothesis5();
         if(!_loc2_)
         {
            §§push(§§newactivation());
            §§push(_loc1_.display);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[9] = §§pop();
            if(!_loc2_)
            {
               §=! §(346,function(param1:§<!§, param2:Level, param3:int):BeatLevelAndSave
               {
                  return new BeatLevelAndSave(param1,param2,param3);
               },new §<!§(function():void
               {
                  f8(1);
               },null,_loc1_));
            }
         }
         _loc1_ = Cutscenes.§6!?§();
         while(true)
         {
            if(!_loc2_)
            {
               §§push(§§newactivation());
               §§push(_loc1_.display);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[10] = §§pop();
               if(!_loc2_)
               {
                  §=! §(131,function(param1:§<!§, param2:Level, param3:int):NoJumpingOrAbilities
                  {
                     return new NoJumpingOrAbilities(param1,param2,param3);
                  },new §<!§(function():void
                  {
                     f9(1);
                  },null,_loc1_));
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §=! §(269,function(param1:§<!§, param2:Level, param3:int):ModulateSound
               {
                  return new ModulateSound(param1,param2,param3);
               },§<!§.§0![§);
               if(_loc2_)
               {
                  break;
               }
            }
            §=! §(188,function(param1:§<!§, param2:Level, param3:int):WormholeBehavior
            {
               return new WormholeBehavior(param1,param2,param3);
            },§<!§.§0![§);
            break;
         }
      }
      
      public static function §@!A§() : §6!a§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §6!a§;
         if(!_loc3_)
         {
            if(§6!a§.§?Y§ != null)
            {
               return §6!a§.§?Y§;
            }
         }
         return §6!a§.§?Y§ = new §6!a§();
      }
      
      override public function §-@§(param1:Achievement, param2:Object = undefined, param3:CharacterDef = undefined) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:int = 0;
         while(true)
         {
            if(!_loc6_)
            {
               if(param2 != null)
               {
                  if(!_loc6_)
                  {
                     _loc4_ = int(param2);
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(_loc5_)
                     {
                        if(param3 == null)
                        {
                           §§push(§%z§.LEVEL(§>K§.§&i§(_loc4_)));
                           break;
                        }
                     }
                     §§push(§%z§.LEVEL_WITH_CHARACTER(§>K§.§&i§(_loc4_),param3));
                     break;
                  }
                  §§pop().§`p§ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               else
               {
                  if(param3 == null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            param1.§`p§ = §%z§.MODE_WITH_CHARACTER(§,a§.EXPLORE,param3);
            break;
         }
      }
   }
}

