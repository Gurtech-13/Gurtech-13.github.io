package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.save.§4!^§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class Cutscenes
   {
      
      public static var init__:Boolean;
      
      public static var §'&§:SelfAssembly;
      
      public static var §%&§:ComingThrough;
      
      public static var §`!0§:HeavySleeper;
      
      public static var §;+§:Revision;
      
      public static var §+!a§:GoldMedal;
      
      public static var §'_§:Insanity;
      
      public static var §^b§:Conspiracy;
      
      public static var §[!Q§:Naming;
      
      public static var §8v§:JoinUs;
      
      public static var §3d§:ChangeTheSubject;
      
      public static var §?9§:Boring;
      
      public static var §"y§:NiceToMeetYou;
      
      public static var §<V§:SocraticMethod;
      
      public static var §?s§:DontKnockIt;
      
      public static var §>!a§:Inflation;
      
      public static var §0,§:Teapot;
      
      public static var §'D§:StudentTeacher;
      
      public static var §!!Z§:GrandOpening;
      
      public static var §=!,§:ThanksForPlaytesting;
      
      public static var §?I§:Candy;
      
      public static var §&&§:PlanetMissing;
      
      public static var §;f§:PlanetStolen;
      
      public static var §![§:Orbits;
      
      public static var § K§:MyTurn;
      
      public static var §'"§:Discoveries;
      
      public static var §5!U§:YouThink;
      
      public static var §]%§:TheNextBigThing;
      
      public static var §+!A§:StandardsToUphold;
      
      public static var §>w§:FriendlyGreeting;
      
      public static var §^!-§:Indecision;
      
      public static var §#c§:ItsJustYou;
      
      public static var §`!D§:AngelVsBunny;
      
      public static var §?!U§:OfCourse;
      
      public static var §6!C§:Obvious;
      
      public static var §,5§:Sneaking;
      
      public static var §]!'§:BoatRide;
      
      public static var §`#§:FourthCondiment;
      
      public static var §!!a§:Wait;
      
      public static var §51§:StopSolvingProblems;
      
      public static var §1i§:CantWait;
      
      public static var §&Y§:Superpowers;
      
      public static var §3f§:ABCD;
      
      public static var §0!U§:TwoMonthWait;
      
      public static var twoMonthWait2:TwoMonthWait2;
      
      public static var twoMonthWait3:TwoMonthWait3;
      
      public static var §?[§:WormholeInSight;
      
      public static var §3!S§:TheGap;
      
      public static var §[Q§:SomethingWeird;
      
      public static var §]q§:TellAFriend;
      
      public static var §4!M§:LightningStrikesTwice;
      
      public static var §3@§:DontQuestionIt;
      
      public static var §0!8§:Affliction;
      
      public static var §!e§:LeaveItHere;
      
      public static var §]s§:Protip;
      
      public static var §8!;§:CrossingTheGap;
      
      public static var §@i§:Truancy;
      
      public static var §0Q§:Fame;
      
      public static var §[o§:MorningHypothesis;
      
      public static var morningHypothesis2:MorningHypothesis2;
      
      public static var morningHypothesis3:MorningHypothesis3;
      
      public static var morningHypothesis4:MorningHypothesis4;
      
      public static var morningHypothesis5:MorningHypothesis5;
      
      public static var batteries:Batteries;
      
      public static var §-!5§:Cheating;
      
      public static var §[3§:LizardFellAsleep;
      
      public static var §5Q§:§=!U§;
      
      public static var §;!U§:§4!^§;
      
      public static var §5!5§:Array = ["SelfAssembly","ComingThrough","HeavySleeper","Revision","GoldMedal","Insanity","Conspiracy","Naming","JoinUs","ChangeTheSubject","Boring","NiceToMeetYou","SocraticMethod","DontKnockIt","Inflation","Teapot","StudentTeacher","GrandOpening","ThanksForPlaytesting","Candy","PlanetMissing","PlanetStolen","Orbits","MyTurn","Discoveries","YouThink","TheNextBigThing","StandardsToUphold","FriendlyGreeting","Indecision","ItsJustYou","AngelVsBunny","OfCourse","Obvious","Sneaking","BoatRide","FourthCondiment","Wait","StopSolvingProblems","CantWait","Superpowers","ABCD","TwoMonthWait","TwoMonthWait2","TwoMonthWait3","WormholeInSight","TheGap","SomethingWeird","TellAFriend","LightningStrikesTwice","DontQuestionIt","Affliction","LeaveItHere","Protip","CrossingTheGap","Truancy","Fame","MorningHypothesis","MorningHypothesis2","MorningHypothesis3","MorningHypothesis4","MorningHypothesis5","Batteries","Cheating","LizardFellAsleep"];
      
      public function Cutscenes()
      {
      }
      
      public static function §3'§(param1:String) : §+Z§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = null as StringMap;
         var _loc2_:StringMap = Cutscenes.§5Q§;
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        loop22:
                        while(true)
                        {
                           loop23:
                           while(true)
                           {
                              while(true)
                              {
                                 loop25:
                                 while(true)
                                 {
                                    loop26:
                                    while(true)
                                    {
                                       loop27:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                loop30:
                                                while(true)
                                                {
                                                   loop31:
                                                   while(true)
                                                   {
                                                      loop32:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc5_)
                                                         {
                                                            loop33:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() in StringMap.§+!#§);
                                                               if(!_loc5_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc2_.existsReserved(param1));
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(param1 in _loc2_.h);
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  _loc3_ = Cutscenes.§5Q§;
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(param1 in StringMap.§+!#§))
                                                                     {
                                                                        return _loc3_.h[param1];
                                                                     }
                                                                  }
                                                                  return _loc3_.getReserved(param1);
                                                               }
                                                               §§push(param1);
                                                               §§push("SelfAssembly");
                                                               if(!_loc4_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  return Cutscenes.§>&§();
                                                               }
                                                               if(param1 == "ComingThrough")
                                                               {
                                                                  return Cutscenes.§@V§();
                                                               }
                                                               loop34:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     §§push("HeavySleeper");
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              return Cutscenes.§4B§();
                                                                           }
                                                                           §§goto(addr0767);
                                                                        }
                                                                        else
                                                                        {
                                                                           if(param1 == "Revision")
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 return Cutscenes.§>?§();
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(param1 == "GoldMedal")
                                                                           {
                                                                              break loop33;
                                                                           }
                                                                           §§push(param1);
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop() == "Insanity")
                                                                              {
                                                                                 return Cutscenes.§?2§();
                                                                              }
                                                                              §§push(param1);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              if(§§pop() == "Conspiracy")
                                                                              {
                                                                                 return Cutscenes.§>e§();
                                                                              }
                                                                              §§push(param1);
                                                                              §§push("Naming");
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr04e7);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           return Cutscenes.§'!!§();
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     if(param1 == "JoinUs")
                                                                     {
                                                                        return Cutscenes.§,!2§();
                                                                     }
                                                                     loop36:
                                                                     while(true)
                                                                     {
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(§§pop() == "ChangeTheSubject")
                                                                                 {
                                                                                    return Cutscenes.§ !O§();
                                                                                 }
                                                                                 §§push(param1);
                                                                                 §§push("Boring");
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    §§goto(addr0192);
                                                                                 }
                                                                                 §§push(param1);
                                                                                 §§push("NiceToMeetYou");
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    return Cutscenes.§5!3§();
                                                                                 }
                                                                                 §§push(param1);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break loop37;
                                                                                 }
                                                                                 §§push("SocraticMethod");
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break loop32;
                                                                                 }
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    return Cutscenes.§[!X§();
                                                                                 }
                                                                                 §§push(param1);
                                                                                 §§push("DontKnockIt");
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break loop31;
                                                                                 }
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    return Cutscenes.§=D§();
                                                                                 }
                                                                                 §§push(param1);
                                                                                 §§push("Inflation");
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break loop36;
                                                                                 }
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       return Cutscenes.§9s§();
                                                                                    }
                                                                                    §§goto(addr0650);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(param1);
                                                                                 }
                                                                              }
                                                                              §§push("Teapot");
                                                                              break loop36;
                                                                           }
                                                                           §§goto(addr02a6);
                                                                        }
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        return Cutscenes.§'!Z§();
                                                                     }
                                                                     §§push(param1);
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop30;
                                                                     }
                                                                     §§push("StudentTeacher");
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           return Cutscenes.§`!%§();
                                                                        }
                                                                        if(param1 == "GrandOpening")
                                                                        {
                                                                           return Cutscenes.§8p§();
                                                                        }
                                                                        if(param1 == "ThanksForPlaytesting")
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              return Cutscenes.§8!O§();
                                                                           }
                                                                           break loop27;
                                                                        }
                                                                        §§push(param1);
                                                                        §§push("Candy");
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              return Cutscenes.§=Y§();
                                                                           }
                                                                           §§push(param1);
                                                                           §§push("PlanetMissing");
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop26;
                                                                           }
                                                                        }
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           §§push(param1);
                                                                           §§push("PlanetStolen");
                                                                           if(_loc4_)
                                                                           {
                                                                              addr02a6:
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    return Cutscenes.§>D§();
                                                                                 }
                                                                                 break loop34;
                                                                              }
                                                                              §§push(param1);
                                                                              break loop37;
                                                                           }
                                                                           break loop25;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           return Cutscenes.§5!H§();
                                                                        }
                                                                        §§goto(addr03f2);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0487);
                                                                     }
                                                                  }
                                                                  §§goto(addr048b);
                                                               }
                                                               §§goto(addr0630);
                                                            }
                                                            return Cutscenes.§=P§();
                                                         }
                                                         break loop37;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         return Cutscenes.§"!I§();
                                                      }
                                                      §§push(param1);
                                                      §§push("ItsJustYou");
                                                      break loop26;
                                                   }
                                                   §§goto(addr067d);
                                                }
                                                §§goto(addr040f);
                                             }
                                             §§goto(addr0496);
                                          }
                                          §§goto(addr05f9);
                                       }
                                       return Cutscenes.§%=§();
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          return Cutscenes.§3y§();
                                       }
                                       break loop23;
                                    }
                                    if(param1 == "AngelVsBunny")
                                    {
                                       if(!_loc5_)
                                       {
                                          return Cutscenes.§7[§();
                                       }
                                       break loop22;
                                    }
                                    §§push(param1);
                                    §§push("OfCourse");
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr05b2);
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(param1 == "Obvious")
                                    {
                                       return Cutscenes.§ r§();
                                    }
                                    addr040f:
                                    §§push(param1);
                                    §§push("Sneaking");
                                    break loop0;
                                 }
                                 if(_loc4_)
                                 {
                                    addr03f2:
                                    return Cutscenes.§8<§();
                                 }
                                 §§goto(addr0434);
                              }
                              §§goto(addr0570);
                           }
                           §§goto(addr0693);
                        }
                        §§goto(addr0521);
                     }
                     §§goto(addr0617);
                  }
                  §§goto(addr06c8);
               }
               return Cutscenes.§8!B§();
            }
            if(§§pop() == §§pop())
            {
               return Cutscenes.§2[§();
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(param1);
                                 §§push("BoatRide");
                                 if(!_loc5_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          addr0434:
                                          return Cutscenes.§;A§();
                                       }
                                    }
                                    else
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc4_)
                                                   {
                                                      §§push("FourthCondiment");
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            return Cutscenes.§>!5§();
                                                         }
                                                         break loop13;
                                                      }
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         break loop10;
                                                      }
                                                      §§push("Wait");
                                                      if(_loc5_)
                                                      {
                                                         break loop9;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         return Cutscenes.§3B§();
                                                      }
                                                      §§push(param1);
                                                   }
                                                   addr0487:
                                                   if(§§pop() == "StopSolvingProblems")
                                                   {
                                                      addr048b:
                                                      return Cutscenes.§+!9§();
                                                   }
                                                   addr0496:
                                                   if(param1 == "CantWait")
                                                   {
                                                      return Cutscenes.§"!;§();
                                                   }
                                                   if(param1 == "Superpowers")
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         return Cutscenes.§+y§();
                                                      }
                                                      §§goto(addr05f9);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         break loop5;
                                                      }
                                                      if(§§pop() == "ABCD")
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            return Cutscenes.§48§();
                                                         }
                                                         break loop13;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(!_loc5_)
                                                               {
                                                                  addr04e7:
                                                                  §§push("TwoMonthWait");
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push("TwoMonthWait2");
                                                                           if(_loc5_)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr0521:
                                                                                 return Cutscenes.get_twoMonthWait2();
                                                                              }
                                                                              §§goto(addr0540);
                                                                           }
                                                                           §§push(param1);
                                                                        }
                                                                        §§push("TwoMonthWait3");
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop16;
                                                                        }
                                                                        break loop3;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        return Cutscenes.§8!N§();
                                                                     }
                                                                     §§goto(addr0540);
                                                                  }
                                                                  addr0593:
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        return Cutscenes.§,!9§();
                                                                     }
                                                                     break loop17;
                                                                  }
                                                                  §§push(param1);
                                                                  break loop10;
                                                               }
                                                               §§goto(addr0673);
                                                            }
                                                            §§goto(addr0693);
                                                         }
                                                         §§goto(addr06e4);
                                                      }
                                                   }
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr0540:
                                                      addr0540:
                                                      return Cutscenes.get_twoMonthWait3();
                                                   }
                                                   §§goto(addr0630);
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   if(_loc5_)
                                                   {
                                                      break loop2;
                                                   }
                                                   if(§§pop() == "WormholeInSight")
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         return Cutscenes.§[G§();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(!_loc4_)
                                                      {
                                                         break loop18;
                                                      }
                                                      §§push("TheGap");
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            return Cutscenes.§,!L§();
                                                         }
                                                         §§push(param1);
                                                         if(_loc5_)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§goto(addr0593);
                                                         §§push("SomethingWeird");
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr060d);
                                                      }
                                                   }
                                                   §§goto(addr0693);
                                                }
                                             }
                                             return Cutscenes.§ !6§();
                                          }
                                          §§push("TellAFriend");
                                          if(_loc5_)
                                          {
                                             break loop8;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop13;
                                             }
                                          }
                                          else
                                          {
                                             if(param1 == "LightningStrikesTwice")
                                             {
                                                return Cutscenes.§;"§();
                                             }
                                             §§push(param1);
                                             §§push("DontQuestionIt");
                                             if(!_loc4_)
                                             {
                                                break loop7;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                return Cutscenes.§&w§();
                                             }
                                             if(param1 == "Affliction")
                                             {
                                                addr05f9:
                                                return Cutscenes.§0F§();
                                             }
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   §§push("LeaveItHere");
                                                   if(!_loc5_)
                                                   {
                                                      addr060d:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr0617);
                                                         }
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      if(!_loc5_)
                                                      {
                                                         §§push("Protip");
                                                         break loop9;
                                                      }
                                                      §§goto(addr0642);
                                                   }
                                                   §§goto(addr0664);
                                                }
                                                return Cutscenes.get_morningHypothesis3();
                                             }
                                             §§goto(addr068c);
                                          }
                                          addr0617:
                                          return Cutscenes.§4,§();
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          addr0630:
                                          return Cutscenes.§ !1§();
                                       }
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          break loop5;
                                       }
                                       addr0642:
                                       §§push("CrossingTheGap");
                                       if(!_loc4_)
                                       {
                                          break loop4;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          addr0650:
                                          return Cutscenes.§->§();
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(_loc4_)
                                          {
                                             addr0664:
                                             if(§§pop() == "Truancy")
                                             {
                                                return Cutscenes.§8=§();
                                             }
                                             addr0673:
                                             §§push(param1);
                                             §§push("Fame");
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                return Cutscenes.§"z§();
                                             }
                                             §§push(param1);
                                          }
                                          addr068c:
                                          §§push("MorningHypothesis");
                                          break;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          addr0693:
                                          return Cutscenes.§',§();
                                       }
                                       §§push(param1);
                                       if(_loc5_)
                                       {
                                          break loop5;
                                       }
                                       if(§§pop() == "MorningHypothesis2")
                                       {
                                          if(!_loc5_)
                                          {
                                             return Cutscenes.get_morningHypothesis2();
                                          }
                                          §§goto(addr0755);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(!_loc4_)
                                          {
                                             break loop2;
                                          }
                                          if(§§pop() == "MorningHypothesis3")
                                          {
                                             if(_loc5_)
                                             {
                                                break loop6;
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(_loc5_)
                                             {
                                                break loop2;
                                             }
                                             addr06e4:
                                             addr06e7:
                                             if(§§pop() == "MorningHypothesis4")
                                             {
                                                return Cutscenes.get_morningHypothesis4();
                                             }
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(_loc4_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr0723);
                                             }
                                             §§goto(addr0760);
                                          }
                                       }
                                    }
                                    break loop17;
                                 }
                                 §§goto(addr06e7);
                              }
                              §§goto(addr072c);
                           }
                           §§goto(addr0706);
                        }
                        return Cutscenes.§?Q§();
                     }
                     §§push("MorningHypothesis5");
                     if(_loc5_)
                     {
                        break loop3;
                     }
                     addr0706:
                     if(§§pop() == §§pop())
                     {
                        if(!_loc5_)
                        {
                           return Cutscenes.get_morningHypothesis5();
                        }
                        break loop6;
                     }
                     §§push(param1);
                     if(!_loc5_)
                     {
                        addr0723:
                        §§push("Batteries");
                        if(_loc4_)
                        {
                           addr072c:
                           if(§§pop() == §§pop())
                           {
                              break loop6;
                           }
                           §§push(param1);
                           break loop2;
                        }
                        break loop3;
                     }
                     §§goto(addr0760);
                  }
                  §§goto(addr0763);
               }
               if(§§pop() == §§pop())
               {
                  addr0755:
                  return Cutscenes.§6!?§();
               }
               addr0760:
               §§push(param1);
               §§push("LizardFellAsleep");
               break loop4;
            }
            §§push("Cheating");
            if(_loc4_)
            {
               break loop3;
            }
            addr0763:
            if(§§pop() == §§pop())
            {
               addr0767:
               return Cutscenes.§61§();
            }
            return null;
         }
         addr0192:
         return Cutscenes.§;B§();
      }
      
      public static function §4!§(param1:String) : §]k§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(Cutscenes.§;!U§ == null)
         {
            if(!_loc3_)
            {
               Cutscenes.§;!U§ = new §4!^§("cutscenes");
            }
         }
         var _loc2_:§]k§ = new §]k§(param1);
         if(_loc4_)
         {
            Cutscenes.§;!U§.§4Z§(_loc2_);
         }
         return _loc2_;
      }
      
      public static function §>&§() : SelfAssembly
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§'&§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§'&§ = new SelfAssembly();
            }
         }
         return Cutscenes.§'&§;
      }
      
      public static function §@V§() : ComingThrough
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§%&§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§%&§ = new ComingThrough();
            }
         }
         return Cutscenes.§%&§;
      }
      
      public static function §4B§() : HeavySleeper
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§`!0§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§`!0§ = new HeavySleeper();
            }
         }
         return Cutscenes.§`!0§;
      }
      
      public static function §>?§() : Revision
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§;+§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§;+§ = new Revision();
            }
         }
         return Cutscenes.§;+§;
      }
      
      public static function §=P§() : GoldMedal
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§+!a§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§+!a§ = new GoldMedal();
            }
         }
         return Cutscenes.§+!a§;
      }
      
      public static function §?2§() : Insanity
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§'_§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§'_§ = new Insanity();
            }
         }
         return Cutscenes.§'_§;
      }
      
      public static function §>e§() : Conspiracy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§^b§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§^b§ = new Conspiracy();
            }
         }
         return Cutscenes.§^b§;
      }
      
      public static function §'!!§() : Naming
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§[!Q§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§[!Q§ = new Naming();
            }
         }
         return Cutscenes.§[!Q§;
      }
      
      public static function §,!2§() : JoinUs
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§8v§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§8v§ = new JoinUs();
            }
         }
         return Cutscenes.§8v§;
      }
      
      public static function § !O§() : ChangeTheSubject
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§3d§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§3d§ = new ChangeTheSubject();
            }
         }
         return Cutscenes.§3d§;
      }
      
      public static function §;B§() : Boring
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§?9§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§?9§ = new Boring();
            }
         }
         return Cutscenes.§?9§;
      }
      
      public static function §5!3§() : NiceToMeetYou
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§"y§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§"y§ = new NiceToMeetYou();
            }
         }
         return Cutscenes.§"y§;
      }
      
      public static function §[!X§() : SocraticMethod
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§<V§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§<V§ = new SocraticMethod();
            }
         }
         return Cutscenes.§<V§;
      }
      
      public static function §=D§() : DontKnockIt
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§?s§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§?s§ = new DontKnockIt();
            }
         }
         return Cutscenes.§?s§;
      }
      
      public static function §9s§() : Inflation
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§>!a§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§>!a§ = new Inflation();
            }
         }
         return Cutscenes.§>!a§;
      }
      
      public static function §'!Z§() : Teapot
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§0,§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§0,§ = new Teapot();
            }
         }
         return Cutscenes.§0,§;
      }
      
      public static function §`!%§() : StudentTeacher
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§'D§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§'D§ = new StudentTeacher();
            }
         }
         return Cutscenes.§'D§;
      }
      
      public static function §8p§() : GrandOpening
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§!!Z§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§!!Z§ = new GrandOpening();
            }
         }
         return Cutscenes.§!!Z§;
      }
      
      public static function §8!O§() : ThanksForPlaytesting
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§=!,§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§=!,§ = new ThanksForPlaytesting();
            }
         }
         return Cutscenes.§=!,§;
      }
      
      public static function §=Y§() : Candy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§?I§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§?I§ = new Candy();
            }
         }
         return Cutscenes.§?I§;
      }
      
      public static function §5!H§() : PlanetMissing
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§&&§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§&&§ = new PlanetMissing();
            }
         }
         return Cutscenes.§&&§;
      }
      
      public static function §>D§() : PlanetStolen
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§;f§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§;f§ = new PlanetStolen();
            }
         }
         return Cutscenes.§;f§;
      }
      
      public static function §%!N§() : Orbits
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§![§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§![§ = new Orbits();
            }
         }
         return Cutscenes.§![§;
      }
      
      public static function §=f§() : MyTurn
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§ K§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§ K§ = new MyTurn();
            }
         }
         return Cutscenes.§ K§;
      }
      
      public static function §%=§() : Discoveries
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§'"§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§'"§ = new Discoveries();
            }
         }
         return Cutscenes.§'"§;
      }
      
      public static function §'?§() : YouThink
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§5!U§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§5!U§ = new YouThink();
            }
         }
         return Cutscenes.§5!U§;
      }
      
      public static function §8!B§() : TheNextBigThing
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§]%§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§]%§ = new TheNextBigThing();
            }
         }
         return Cutscenes.§]%§;
      }
      
      public static function §0+§() : StandardsToUphold
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§+!A§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§+!A§ = new StandardsToUphold();
            }
         }
         return Cutscenes.§+!A§;
      }
      
      public static function §7-§() : FriendlyGreeting
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§>w§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§>w§ = new FriendlyGreeting();
            }
         }
         return Cutscenes.§>w§;
      }
      
      public static function §"!I§() : Indecision
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§^!-§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§^!-§ = new Indecision();
            }
         }
         return Cutscenes.§^!-§;
      }
      
      public static function §3y§() : ItsJustYou
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§#c§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§#c§ = new ItsJustYou();
            }
         }
         return Cutscenes.§#c§;
      }
      
      public static function §7[§() : AngelVsBunny
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§`!D§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§`!D§ = new AngelVsBunny();
            }
         }
         return Cutscenes.§`!D§;
      }
      
      public static function §8<§() : OfCourse
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§?!U§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§?!U§ = new OfCourse();
            }
         }
         return Cutscenes.§?!U§;
      }
      
      public static function § r§() : Obvious
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§6!C§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§6!C§ = new Obvious();
            }
         }
         return Cutscenes.§6!C§;
      }
      
      public static function §2[§() : Sneaking
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§,5§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§,5§ = new Sneaking();
            }
         }
         return Cutscenes.§,5§;
      }
      
      public static function §;A§() : BoatRide
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§]!'§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§]!'§ = new BoatRide();
            }
         }
         return Cutscenes.§]!'§;
      }
      
      public static function §>!5§() : FourthCondiment
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§`#§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§`#§ = new FourthCondiment();
            }
         }
         return Cutscenes.§`#§;
      }
      
      public static function §3B§() : Wait
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§!!a§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§!!a§ = new Wait();
            }
         }
         return Cutscenes.§!!a§;
      }
      
      public static function §+!9§() : StopSolvingProblems
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§51§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§51§ = new StopSolvingProblems();
            }
         }
         return Cutscenes.§51§;
      }
      
      public static function §"!;§() : CantWait
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§1i§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§1i§ = new CantWait();
            }
         }
         return Cutscenes.§1i§;
      }
      
      public static function §+y§() : Superpowers
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§&Y§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§&Y§ = new Superpowers();
            }
         }
         return Cutscenes.§&Y§;
      }
      
      public static function §48§() : ABCD
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§3f§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§3f§ = new ABCD();
            }
         }
         return Cutscenes.§3f§;
      }
      
      public static function §8!N§() : TwoMonthWait
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§0!U§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§0!U§ = new TwoMonthWait();
            }
         }
         return Cutscenes.§0!U§;
      }
      
      public static function get_twoMonthWait2() : TwoMonthWait2
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.twoMonthWait2 == null)
         {
            if(_loc2_)
            {
               Cutscenes.twoMonthWait2 = new TwoMonthWait2();
            }
         }
         return Cutscenes.twoMonthWait2;
      }
      
      public static function get_twoMonthWait3() : TwoMonthWait3
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.twoMonthWait3 == null)
         {
            if(!_loc1_)
            {
               Cutscenes.twoMonthWait3 = new TwoMonthWait3();
            }
         }
         return Cutscenes.twoMonthWait3;
      }
      
      public static function §[G§() : WormholeInSight
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§?[§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§?[§ = new WormholeInSight();
            }
         }
         return Cutscenes.§?[§;
      }
      
      public static function §,!L§() : TheGap
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§3!S§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§3!S§ = new TheGap();
            }
         }
         return Cutscenes.§3!S§;
      }
      
      public static function §,!9§() : SomethingWeird
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§[Q§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§[Q§ = new SomethingWeird();
            }
         }
         return Cutscenes.§[Q§;
      }
      
      public static function § !6§() : TellAFriend
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§]q§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§]q§ = new TellAFriend();
            }
         }
         return Cutscenes.§]q§;
      }
      
      public static function §;"§() : LightningStrikesTwice
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§4!M§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§4!M§ = new LightningStrikesTwice();
            }
         }
         return Cutscenes.§4!M§;
      }
      
      public static function §&w§() : DontQuestionIt
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§3@§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§3@§ = new DontQuestionIt();
            }
         }
         return Cutscenes.§3@§;
      }
      
      public static function §0F§() : Affliction
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§0!8§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§0!8§ = new Affliction();
            }
         }
         return Cutscenes.§0!8§;
      }
      
      public static function §4,§() : LeaveItHere
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§!e§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§!e§ = new LeaveItHere();
            }
         }
         return Cutscenes.§!e§;
      }
      
      public static function § !1§() : Protip
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§]s§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§]s§ = new Protip();
            }
         }
         return Cutscenes.§]s§;
      }
      
      public static function §->§() : CrossingTheGap
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§8!;§ == null)
         {
            if(_loc1_)
            {
               Cutscenes.§8!;§ = new CrossingTheGap();
            }
         }
         return Cutscenes.§8!;§;
      }
      
      public static function §8=§() : Truancy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§@i§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§@i§ = new Truancy();
            }
         }
         return Cutscenes.§@i§;
      }
      
      public static function §"z§() : Fame
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§0Q§ == null)
         {
            if(!_loc1_)
            {
               Cutscenes.§0Q§ = new Fame();
            }
         }
         return Cutscenes.§0Q§;
      }
      
      public static function §',§() : MorningHypothesis
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§[o§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§[o§ = new MorningHypothesis();
            }
         }
         return Cutscenes.§[o§;
      }
      
      public static function get_morningHypothesis2() : MorningHypothesis2
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.morningHypothesis2 == null)
         {
            if(!_loc1_)
            {
               Cutscenes.morningHypothesis2 = new MorningHypothesis2();
            }
         }
         return Cutscenes.morningHypothesis2;
      }
      
      public static function get_morningHypothesis3() : MorningHypothesis3
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.morningHypothesis3 == null)
         {
            if(!_loc1_)
            {
               Cutscenes.morningHypothesis3 = new MorningHypothesis3();
            }
         }
         return Cutscenes.morningHypothesis3;
      }
      
      public static function get_morningHypothesis4() : MorningHypothesis4
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.morningHypothesis4 == null)
         {
            if(!_loc2_)
            {
               Cutscenes.morningHypothesis4 = new MorningHypothesis4();
            }
         }
         return Cutscenes.morningHypothesis4;
      }
      
      public static function get_morningHypothesis5() : MorningHypothesis5
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.morningHypothesis5 == null)
         {
            if(_loc2_)
            {
               Cutscenes.morningHypothesis5 = new MorningHypothesis5();
            }
         }
         return Cutscenes.morningHypothesis5;
      }
      
      public static function §?Q§() : Batteries
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.batteries == null)
         {
            if(!_loc2_)
            {
               Cutscenes.batteries = new Batteries();
            }
         }
         return Cutscenes.batteries;
      }
      
      public static function §6!?§() : Cheating
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(Cutscenes.§-!5§ == null)
         {
            if(_loc2_)
            {
               Cutscenes.§-!5§ = new Cheating();
            }
         }
         return Cutscenes.§-!5§;
      }
      
      public static function §61§() : LizardFellAsleep
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(Cutscenes.§[3§ == null)
         {
            if(!_loc2_)
            {
               Cutscenes.§[3§ = new LizardFellAsleep();
            }
         }
         return Cutscenes.§[3§;
      }
   }
}

