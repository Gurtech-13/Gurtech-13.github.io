package §4n§
{
   import §!!$§.§ 6§;
   import §"!L§.§%z§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §?!6§.§-!H§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§4!^§;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   
   public class Achievements
   {
      
      public static var §&!#§:§=!U§;
      
      public static var §5!5§:§=!U§;
      
      public static var § !J§:Vector.<int>;
      
      public static var §;!U§:§4!^§;
      
      public static var §[!-§:Achievement;
      
      public static var §`!U§:Achievement;
      
      public static var §3$§:Achievement;
      
      public static var §@!F§:Achievement;
      
      public static var §9!2§:Achievement;
      
      public static var §8!@§:Achievement;
      
      public static var §7V§:Achievement;
      
      public static var §]!@§:Achievement;
      
      public static var §7N§:Achievement;
      
      public static var §3!-§:Achievement;
      
      public static var §=!_§:Achievement;
      
      public static var §;!W§:Achievement;
      
      public static var § "§:Achievement;
      
      public function Achievements()
      {
      }
      
      public static function init() : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:* = null as Achievement;
         var _loc11_:* = null as String;
         var _loc12_:* = 0;
         var _loc13_:* = null as StringMap;
         while(true)
         {
            if(!_loc14_)
            {
               § L§.high = 980997;
               if(!_loc15_)
               {
                  break;
               }
            }
            Achievements.§&!#§ = new IntMap();
            if(_loc15_)
            {
               Achievements.§[!-§ = new Achievement(0,"Galactic Vandalism","Dislodge 700 tiles.",50,"achievement/GalacticVandalism.png",null,null,0);
            }
            break;
         }
         var _loc1_:§ !N§ = §>K§.§&i§(11);
         if(!_loc14_)
         {
            Achievements.§[!-§.§`p§ = §%z§.LEVEL(_loc1_);
         }
         _loc2_ = Achievements.§[!-§;
         while(true)
         {
            if(_loc15_)
            {
               Achievements.§&!#§.h[0] = _loc2_;
               if(_loc14_)
               {
                  break;
               }
            }
            Achievements.§`!U§ = new Achievement(2,"Slipping and Sliding to Victory","Complete the Winter Games.",100,"achievement/SlippingAndSlidingToVictory.png",null,null,0);
            break;
         }
         var _loc3_:§ !N§ = §>K§.§&i§(119);
         if(_loc15_)
         {
            Achievements.§`!U§.§`p§ = §%z§.LEVEL(_loc3_);
         }
         _loc2_ = Achievements.§`!U§;
         while(true)
         {
            if(_loc15_)
            {
               Achievements.§&!#§.h[2] = _loc2_;
               if(!_loc14_)
               {
                  Achievements.§3$§ = new Achievement(3,"Thoroughly Lost","Complete four different paths in Explore Mode.",100,"achievement/ThoroughlyLost.png",null,null,0);
                  if(!_loc15_)
                  {
                     break;
                  }
               }
            }
            Achievements.§3$§.§`p§ = §%z§.MODE(§,a§.EXPLORE);
            break;
         }
         _loc2_ = Achievements.§3$§;
         while(true)
         {
            if(_loc15_)
            {
               Achievements.§&!#§.h[3] = _loc2_;
               if(!_loc15_)
               {
                  break;
               }
            }
            Achievements.§@!F§ = new Achievement(4,"A Journey of 1000 Light-Years","Run 800 meters in Infinite Mode.",100,"achievement/AJourneyOf1000LightYears.png",null,null,0);
            if(_loc15_)
            {
               Achievements.§@!F§.§`p§ = §%z§.MODE(§,a§.INFINITE);
            }
            break;
         }
         _loc2_ = Achievements.§@!F§;
         if(!_loc14_)
         {
            Achievements.§&!#§.h[4] = _loc2_;
            while(true)
            {
               if(!_loc14_)
               {
                  Achievements.§9!2§ = new Achievement(5,"Tetrahedron Enthusiast","Collect 40 power cells in one run. Buying a respawn won\'t count against you.",150,"achievement/TetrahedronEnthusiast.png",null,null,0);
                  if(_loc14_)
                  {
                     break;
                  }
               }
               Achievements.§9!2§.§`p§ = §%z§.MODE(§,a§.INFINITE);
               break;
            }
         }
         _loc2_ = Achievements.§9!2§;
         while(true)
         {
            if(_loc15_)
            {
               Achievements.§&!#§.h[5] = _loc2_;
               if(_loc14_)
               {
                  break;
               }
            }
            Achievements.§8!@§ = new Achievement(6,"A Breath of Fresh Nothing","Float outside the tunnel long enough to flip upside-down, then land safely.",100,"achievement/ABreathOfFreshNothing.png",null,null,0);
            break;
         }
         var _loc4_:§ !N§ = §>K§.§&i§(18);
         if(_loc15_)
         {
            Achievements.§8!@§.§`p§ = §%z§.LEVEL(_loc4_);
         }
         _loc2_ = Achievements.§8!@§;
         while(true)
         {
            if(!_loc14_)
            {
               Achievements.§&!#§.h[6] = _loc2_;
               if(!_loc15_)
               {
                  break;
               }
            }
            Achievements.§7V§ = new Achievement(7,"A Glimpse of New Places","Locate the Wormhole.",300,"achievement/AGlimpseOfNewPlaces.png",null,null,0);
            break;
         }
         var _loc5_:§ !N§ = §>K§.§&i§(163);
         if(_loc15_)
         {
            Achievements.§7V§.§`p§ = §%z§.LEVEL(_loc5_);
         }
         _loc2_ = Achievements.§7V§;
         if(!_loc14_)
         {
            Achievements.§&!#§.h[7] = _loc2_;
            if(_loc15_)
            {
               Achievements.§]!@§ = new Achievement(8,"Wind Sailor","Go 10 seconds without touching the ground.",200,"achievement/WindSailor.png",null,null,0);
            }
         }
         var _loc6_:CharacterDef = CharacterRegistry.child;
         while(true)
         {
            if(!_loc14_)
            {
               if(_loc6_ == null)
               {
                  §§push(§%z§.LEVEL(§>K§.§&i§(232)));
                  break;
               }
            }
            §§push(§%z§.LEVEL_WITH_CHARACTER(§>K§.§&i§(232),_loc6_));
            break;
         }
         var _loc7_:§%z§ = §§pop();
         if(!_loc14_)
         {
            Achievements.§]!@§.§`p§ = _loc7_;
         }
         _loc2_ = Achievements.§]!@§;
         if(!_loc14_)
         {
            Achievements.§&!#§.h[8] = _loc2_;
            if(_loc15_)
            {
               Achievements.§7N§ = new Achievement(22,"I Would Bounce 500 More","Starting at any point after the 500m mark, travel 500 meters in a row with the jump button held.",250,"achievement/IWouldBounce500More.png",CharacterRegistry.§7W§,null,0);
            }
         }
         _loc2_ = Achievements.§7N§;
         while(true)
         {
            if(_loc15_)
            {
               Achievements.§&!#§.h[22] = _loc2_;
               if(_loc15_)
               {
                  Achievements.§3!-§ = new Achievement(23,"Falling to Pieces","Let 50 duplicates fall into space in one Infinite Mode run.",500,"achievement/FallingToPieces.png",CharacterRegistry.duplicator,null,0);
                  if(_loc14_)
                  {
                     break;
                  }
               }
            }
            Achievements.§3!-§.§`p§ = §%z§.MODE_WITH_CHARACTER(§,a§.INFINITE,CharacterRegistry.duplicator);
            break;
         }
         _loc2_ = Achievements.§3!-§;
         while(true)
         {
            if(!_loc14_)
            {
               Achievements.§&!#§.h[23] = _loc2_;
               if(!_loc15_)
               {
                  break;
               }
            }
            Achievements.§=!_§ = new Achievement(9,"Where the Power Cells Are","Reach 2000 meters in Infinite Mode without respawning.",500,"achievement/WhereThePowerCellsAre.png",null,null,0);
            if(!_loc14_)
            {
               Achievements.§=!_§.§`p§ = §%z§.MODE(§,a§.INFINITE);
            }
            break;
         }
         _loc2_ = Achievements.§=!_§;
         while(true)
         {
            if(!_loc14_)
            {
               Achievements.§&!#§.h[9] = _loc2_;
               if(_loc14_)
               {
                  break;
               }
               Achievements.§;!W§ = new Achievement(10,"Unlimited Endurance","Reach 5000 meters in Infinite Mode without buying a respawn.",1000,"achievement/UnlimitedEndurance.png",null,null,0);
               if(!_loc15_)
               {
                  break;
               }
            }
            Achievements.§;!W§.§`p§ = §%z§.MODE(§,a§.INFINITE);
            break;
         }
         _loc2_ = Achievements.§;!W§;
         while(true)
         {
            if(_loc15_)
            {
               Achievements.§&!#§.h[10] = _loc2_;
               if(!_loc15_)
               {
                  break;
               }
            }
            Achievements.§ "§ = new Achievement(1,"Boldly Gone","Complete Level 65 in Explore Mode.",250,"achievement/BoldlyGone.png",null,null,0);
            break;
         }
         var _loc8_:§ !N§ = §>K§.§&i§(48);
         if(_loc15_)
         {
            Achievements.§ "§.§`p§ = §%z§.LEVEL(_loc8_);
         }
         _loc2_ = Achievements.§ "§;
         while(true)
         {
            if(!_loc14_)
            {
               Achievements.§&!#§.h[1] = _loc2_;
               if(!_loc14_)
               {
                  § L§.high = 218264;
                  if(_loc14_)
                  {
                     break;
                  }
               }
               Achievements.§;!U§ = new §4!^§("achievements");
               if(!_loc15_)
               {
                  break;
               }
            }
            Achievements.§5!5§ = new StringMap();
            break;
         }
         var _loc9_:Vector.<int> = new Vector.<int>(0,false);
         if(_loc15_)
         {
            Achievements.§ !J§ = _loc9_;
         }
         var _loc10_:* = new §-!H§(Achievements.§&!#§.h);
         if(!_loc14_)
         {
            while(Boolean(_loc10_.hasNext()))
            {
               _loc2_ = _loc10_.next();
               while(true)
               {
                  if(_loc15_)
                  {
                     Achievements.§ !J§.push(_loc2_.id);
                     if(!_loc15_)
                     {
                        break;
                     }
                     §3!G§.§@!A§().§=! §(_loc2_);
                     if(_loc14_)
                     {
                        break;
                     }
                     §§push(_loc2_.name);
                     if(_loc15_)
                     {
                        §§push(§§pop());
                     }
                     _loc11_ = §§pop();
                     if(_loc14_)
                     {
                        break;
                     }
                  }
                  §§push(_loc2_.id);
                  if(_loc15_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc12_ = §§pop();
                  break;
               }
               _loc13_ = Achievements.§5!5§;
               if(_loc15_)
               {
                  if(_loc11_ in StringMap.§+!#§)
                  {
                     if(!_loc14_)
                     {
                        _loc13_.setReserved(_loc11_,_loc12_);
                        if(!_loc15_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     _loc13_.h[_loc11_] = _loc12_;
                     if(_loc14_)
                     {
                        continue;
                     }
                  }
                  Achievements.§;!U§.§4Z§(_loc2_.§3!X§);
               }
            }
         }
      }
      
      public static function §=! §(param1:Achievement) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:* = null as String;
         var _loc5_:* = 0;
         var _loc6_:* = null as StringMap;
         var _loc7_:* = null as Achievement;
         if(!_loc8_)
         {
            § L§.mid = 126102;
         }
         §§push(param1.id);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:§=!U§ = Achievements.§&!#§;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc8_)
            {
               loop1:
               while(true)
               {
                  if(§§pop() in _loc3_.h)
                  {
                     Achievements.§5!5§.remove(Achievements.§&!#§.h[_loc2_].name);
                     §§push(param1.name);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(_loc8_)
                        {
                           addr0165:
                           _loc4_ = §§pop();
                           break;
                        }
                     }
                     _loc4_ = §§pop();
                     if(_loc9_)
                     {
                        while(true)
                        {
                           §§push(param1.id);
                           if(_loc9_)
                           {
                              §§push(int(§§pop()));
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           _loc5_ = §§pop();
                           if(_loc9_)
                           {
                              _loc6_ = Achievements.§5!5§;
                              if(_loc9_)
                              {
                                 if(_loc4_ in StringMap.§+!#§)
                                 {
                                    if(!_loc8_)
                                    {
                                       _loc6_.setReserved(_loc4_,_loc5_);
                                       if(_loc9_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc6_.h[_loc4_] = _loc5_;
                                 }
                              }
                              _loc7_ = Achievements.§&!#§.h[_loc2_];
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    §3!G§.§@!A§().§-5§(_loc7_,param1);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 Achievements.§&!#§.h[_loc2_] = param1;
                                 break;
                              }
                              return;
                           }
                           break loop1;
                        }
                        addr0172:
                        _loc5_ = int(§§pop());
                        addr0171:
                     }
                     break loop0;
                  }
                  Achievements.§&!#§.h[_loc2_] = param1;
                  §§push(param1.name);
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr0165);
               }
               §§push(param1.id);
               if(!_loc8_)
               {
                  §§goto(addr0171);
               }
            }
            §§goto(addr0172);
         }
         _loc6_ = Achievements.§5!5§;
         if(_loc4_ in StringMap.§+!#§)
         {
            _loc6_.setReserved(_loc4_,_loc5_);
         }
         else
         {
            _loc6_.h[_loc4_] = _loc5_;
         }
         Achievements.§ !J§.push(_loc2_);
         if(_loc9_)
         {
            §3!G§.§@!A§().§=! §(param1);
         }
         Achievements.§;!U§.§4Z§(param1.§3!X§);
      }
      
      public static function § ![§() : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<int> = Achievements.§ !J§;
         loop1:
         while(true)
         {
            if(!_loc6_)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     break loop1;
                  }
                  §§push(_loc3_.length);
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(_loc3_[_loc2_]);
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc4_ = §§pop();
                     if(_loc5_)
                     {
                        _loc2_++;
                        if(!_loc6_)
                        {
                           while(true)
                           {
                              §§push(Save.§@!A§());
                              §§push("achievement");
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + _loc4_);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                           if(!Boolean(§§pop().get(§§pop(),false)))
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              continue;
                           }
                        }
                     }
                     _loc1_++;
                     continue;
                  }
               }
            }
            return _loc1_;
         }
         return §§pop();
      }
   }
}

