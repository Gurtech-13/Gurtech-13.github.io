package §"!M§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §%!Z§.§`! §;
   import §1!I§.§ !=§;
   import §4n§.Achievements;
   import §<!&§.§%!§;
   import §>T§.§[C§;
   import §]!C§.§"V§;
   import §]N§.§?!H§;
   import §`!7§.§`!3§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§9t§;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   
   public class §9!5§ extends §!!P§
   {
      
      public static var init__:Boolean;
      
      public static var §%!0§:§9!5§;
      
      public static var §]!U§:§9!5§;
      
      public static var §0!T§:§9!5§;
      
      public static var §^!P§:§9!5§;
      
      public static var §5!2§:Array;
      
      public static var §6!+§:Array;
      
      public static var §%!4§:int = 700;
      
      public static var §7<§:Number = 0;
      
      public static var §]c§:int = -1;
      
      public var §+J§:Boolean;
      
      public function §9!5§()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §9t§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  §+J§ = true;
                  if(_loc2_)
                  {
                     super();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  if(§9!5§.§]c§ >= 0)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               _loc1_ = Save.tilesDislodged;
               if(_loc2_)
               {
                  §9!5§.§]c§ = int(Save.§@!A§().get(_loc1_.§=-§,int(_loc1_.§ -§)));
                  if(!_loc3_)
                  {
                     §§push(Save.§@!A§());
                     §§push(§9!5§.§0z§);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§7!H§(§§pop());
                  }
               }
               break;
            }
            §]!1§ = false;
            if(!_loc3_)
            {
               §-!9§ = true;
            }
            break;
         }
      }
      
      public static function §#T§() : §9!5§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(§9!5§.§%!0§ == null)
         {
            if(_loc2_)
            {
               §9!5§.§%!0§ = new §9!5§();
            }
         }
         return §9!5§.§%!0§;
      }
      
      public static function §!R§() : §9!5§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§9!5§.§]!U§ == null)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  §9!5§.§]!U§ = new §9!5§();
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §9!5§.§]!U§.§+J§ = false;
               break;
            }
         }
         return §9!5§.§]!U§;
      }
      
      public static function §3!%§() : §9!5§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§9!5§.§0!T§ == null)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  §9!5§.§0!T§ = new §9!5§();
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               §9!5§.§0!T§.§8g§ = false;
               break;
            }
         }
         return §9!5§.§0!T§;
      }
      
      public static function §4![§() : §9!5§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§9!5§.§^!P§ == null)
         {
            while(true)
            {
               if(_loc1_)
               {
                  §9!5§.§^!P§ = new §9!5§();
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §9!5§.§^!P§.§8g§ = false;
               if(!_loc2_)
               {
                  §9!5§.§^!P§.§+J§ = false;
               }
               break;
            }
         }
         return §9!5§.§^!P§;
      }
      
      public static function §1h§(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        §§push("low");
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == §§pop())
                        {
                           §9!5§.§7<§ = 0.03;
                           if(_loc3_)
                           {
                              §<!O§.§[!U§ = 5;
                              if(_loc3_)
                              {
                                 break loop0;
                              }
                              break loop1;
                           }
                           break loop0;
                        }
                        §§push(_loc2_);
                     }
                     §§push("medium");
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     §9!5§.§7<§ = 0;
                     break;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §9!5§.§7<§ = 0;
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §<!O§.§[!U§ = 10;
               break;
            }
            §<!O§.§[!U§ = 7.5;
            break;
         }
      }
      
      public static function §0z§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§9t§ = Save.tilesDislodged;
         if(_loc2_)
         {
            if(int(Save.§@!A§().get(_loc1_.§=-§,int(_loc1_.§ -§))) < §9!5§.§]c§)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     Save.tilesDislodged.§?F§(§9!5§.§]c§);
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  §<,§.§3l§();
                  break;
               }
            }
         }
      }
      
      public function §-C§(param1:§[C§, param2:Number) : void
      {
         var _temp_1:* = false;
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = _temp_1;
         var _loc11_:* = 0;
         var _loc12_:* = null as Array;
         var _loc13_:* = 0;
         var _loc14_:* = null as § !=§;
         var _loc15_:* = 0;
         var _loc16_:* = null as §[C§;
         var _loc3_:TunnelSection = param1.§!C§.§]!#§(param1.transform.position.z);
         §§push(param2);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(3600);
            if(_loc17_)
            {
               §§push(§§pop() - _loc4_);
               if(!_loc17_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            while(true)
            {
               if(_loc17_)
               {
                  §§push(true);
                  if(!_loc18_)
                  {
                     if(param1.§5!J§ >= _loc5_)
                     {
                        break;
                     }
                     if(!_loc17_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(_loc18_)
                  {
                     break loop5;
                  }
               }
               §§push(_loc3_ == null);
               if(_loc17_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            var _loc6_:Vector.<int> = new Vector.<int>(0,false);
            var _loc7_:Vector.<int> = _loc6_;
            if(_loc17_)
            {
               _loc7_.push(int(_loc3_.terrain.indexOf(param1,0)));
            }
            §§push(§9!5§.§]c§ >= 700);
            if(!_loc18_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(0);
            if(!_loc18_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            §§push(1);
            if(!_loc18_)
            {
               §§push(int(§§pop()));
            }
            var _loc10_:* = §§pop();
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  if(_loc17_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(_loc18_)
                        {
                           break;
                        }
                        §§push(_loc7_.length);
                        if(!_loc18_)
                        {
                           §§push(int(§§pop()));
                           if(!_loc18_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc17_)
                                    {
                                       §§push(false);
                                       if(!_loc18_)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc18_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                       }
                                       §§pop();
                                       if(_loc18_)
                                       {
                                          break loop7;
                                       }
                                    }
                                    §§push(§9!5§.§]c§);
                                    break loop0;
                                 }
                                 addr0490:
                                 if(§§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       addr049b:
                                       §9!5§.§0z§();
                                       if(!_loc18_)
                                       {
                                          break loop7;
                                       }
                                       break loop8;
                                    }
                                    break loop7;
                                 }
                                 break loop8;
                              }
                              loop10:
                              while(true)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       §§push(_loc10_);
                                       if(!_loc18_)
                                       {
                                          loop31:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(int(_loc7_.length));
                                                   if(!_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   _loc10_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      §§push(0.983);
                                                      if(!_loc18_)
                                                      {
                                                         param2 = §§pop() * §§pop();
                                                         §§push(_loc4_);
                                                         §§push(param2);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = §§pop();
                                                            §§push(3600);
                                                            §§push(_loc4_);
                                                         }
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      break;
                                                   }
                                                   _loc5_ = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      break loop31;
                                                   }
                                                }
                                                §§push(_loc7_[_loc9_]);
                                                if(!_loc18_)
                                                {
                                                   §§push(int(int(§§pop())));
                                                }
                                                break;
                                             }
                                             _loc11_ = §§pop();
                                             break;
                                          }
                                          § L§.low = 948729;
                                          §§push(false);
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          if(_loc11_ < 0)
                                          {
                                             break;
                                          }
                                          if(!_loc17_)
                                          {
                                             break loop11;
                                          }
                                          §§pop();
                                          if(!_loc17_)
                                          {
                                             break loop10;
                                          }
                                          §§push(_loc11_);
                                          §§push(int(_loc3_.terrain.length));
                                       }
                                       §§push(§§pop() < §§pop());
                                       if(!_loc18_)
                                       {
                                          break loop11;
                                       }
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       break loop10;
                                    }
                                    param1 = null;
                                    §§goto(addr01a7);
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop30;
                              }
                              param1 = _loc3_.terrain[_loc11_];
                              addr01a7:
                              param1.§ !&§ = §<!O§.§@!A§();
                              loop12:
                              while(true)
                              {
                                 if(!_loc18_)
                                 {
                                    param1.§5!J§ = _loc5_;
                                    loop13:
                                    while(true)
                                    {
                                       if(!_loc18_)
                                       {
                                          var _temp_2:* = §9!5§;
                                          §§push(_temp_2);
                                          §§push(_temp_2.§]c§);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§pop().§]c§ = §§pop();
                                          §§push(_loc3_);
                                          §§push(_loc3_.tilesDislodged);
                                          if(_loc17_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§pop().tilesDislodged = §§pop();
                                          if(_loc18_)
                                          {
                                             break;
                                          }
                                       }
                                       if(param1.§@!B§.§+J§)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc17_)
                                             {
                                                §§push(§9!5§.§6!+§);
                                                if(_loc17_)
                                                {
                                                }
                                                addr0221:
                                                §§push(§§pop());
                                                if(!_loc17_)
                                                {
                                                   break;
                                                }
                                                _loc12_ = §§pop();
                                                if(!_loc17_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             §§push(0);
                                             if(!_loc18_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc17_)
                                                {
                                                   _loc13_ = §§pop();
                                                   if(!_loc18_)
                                                   {
                                                      break loop13;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop() >= int(_loc12_.length))
                                                {
                                                   break loop12;
                                                }
                                                §§push(_loc12_);
                                                break loop14;
                                             }
                                             break loop12;
                                             addr0424:
                                          }
                                       }
                                       else
                                       {
                                          §§push(§9!5§.§5!2§);
                                          if(_loc17_)
                                          {
                                             §§goto(addr0221);
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc14_ = §§pop()[_loc13_];
                                          loop15:
                                          while(true)
                                          {
                                             if(!_loc18_)
                                             {
                                                _loc13_++;
                                                if(_loc17_)
                                                {
                                                   §§push(_loc3_.layout);
                                                   §§push(_loc7_[_loc9_]);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§6!,§(§§pop(),_loc14_.x,0,_loc14_.z));
                                                      if(!_loc18_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc18_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      _loc15_ = §§pop();
                                                      loop17:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               § L§.low = 948729;
                                                               if(!_loc17_)
                                                               {
                                                                  break loop17;
                                                               }
                                                               §§push(false);
                                                               if(_loc18_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc15_ < 0)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop();
                                                               if(!_loc17_)
                                                               {
                                                                  break loop17;
                                                               }
                                                            }
                                                            §§push(_loc15_);
                                                            break loop16;
                                                         }
                                                         addr02e6:
                                                         if(§§pop())
                                                         {
                                                            break;
                                                         }
                                                         §§push(null);
                                                         break loop15;
                                                      }
                                                   }
                                                   §§push(§§pop() < int(_loc3_.terrain.length));
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   §§goto(addr02e6);
                                                }
                                             }
                                             break loop17;
                                          }
                                          _loc16_ = §§pop();
                                          loop19:
                                          while(true)
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         §§push(false);
                                                         if(!_loc17_)
                                                         {
                                                            break loop21;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            §§push(false);
                                                            if(_loc17_)
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(false);
                                                                           if(_loc18_)
                                                                           {
                                                                              break loop25;
                                                                           }
                                                                           if(_loc16_ == null)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc17_)
                                                                           {
                                                                              break loop25;
                                                                           }
                                                                           §§pop();
                                                                           if(!_loc17_)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                        }
                                                                        §§push(_loc16_.§5!J§ < _loc5_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           break loop25;
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                           §§goto(addr0374);
                                                                        }
                                                                     }
                                                                     §§goto(addr0375);
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  break loop26;
                                                               }
                                                               §§pop();
                                                               if(_loc17_)
                                                               {
                                                                  addr0375:
                                                                  §§push(_loc16_.§@!B§ == null);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        addr0374:
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc17_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                            }
                                                            §§pop();
                                                            §§push(_loc16_.§@!B§.§-!9§);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            break;
                                                         }
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc18_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc16_.§@!B§ is §9!5§);
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop20;
                                                                  }
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(int(_loc7_.indexOf(_loc15_,_loc9_)) < 0);
                                                                  if(_loc17_)
                                                                  {
                                                                     break loop28;
                                                                  }
                                                               }
                                                               addr03db:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc17_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop19;
                                                               }
                                                               break loop13;
                                                            }
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr03db);
                                                      }
                                                      §§push(true);
                                                      if(_loc17_)
                                                      {
                                                         break loop21;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr0410);
                                                }
                                                §§push(!_loc14_.§%!0§);
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                if(_loc17_)
                                                {
                                                   break;
                                                }
                                                break loop13;
                                             }
                                             §§goto(addr0410);
                                          }
                                          §§push(_loc16_.§@!B§.§+J§);
                                          if(_loc17_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          addr0410:
                                          if(§§pop())
                                          {
                                             if(_loc17_)
                                             {
                                                _loc7_.push(_loc15_);
                                             }
                                          }
                                          break loop13;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr0424);
                                 }
                              }
                              if(!_loc18_)
                              {
                                 _loc9_++;
                              }
                              continue;
                           }
                        }
                        §§push(§§pop() >= §§pop());
                        if(_loc17_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr0490);
                     }
                     §§goto(addr0488);
                     §§push(700);
                  }
                  §§goto(addr049b);
               }
               return;
            }
            Achievements.§[!-§.§,Y§();
            break loop8;
         }
      }
      
      override public function §^!F§(param1:§[C§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §9U§(null,param1,null);
         }
      }
      
      override public function §9U§(param1:§6M§, param2:§[C§, param3:Point3D) : Boolean
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc4_:* = null as § !W§;
         var _loc5_:* = null as §=!U§;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc9_)
                  {
                     §§push(false);
                     if(_loc9_)
                     {
                        if(param2.§5!J§ >= 0)
                        {
                           break;
                        }
                        §§pop();
                        if(!_loc9_)
                        {
                           continue loop3;
                        }
                        §§push(true);
                        if(param1 == null)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(!_loc9_)
                     {
                        continue loop3;
                     }
                  }
                  §§push(!param1.§=^§);
                  break loop1;
               }
               if(§§pop())
               {
                  continue loop3;
               }
               §§goto(addr01e3);
            }
            §§push(Boolean(§§pop()));
            break loop10;
         }
         _loc4_ = param2.§!C§;
         _loc5_ = _loc4_.§]!#§(param2.transform.position.z,true).params;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        §§push("fallPropagate");
                        if(_loc9_)
                        {
                           §§push(§§pop() in StringMap.§+!#§);
                           if(_loc10_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              §§push(Boolean(_loc5_.existsReserved("fallPropagate")));
                              if(_loc10_)
                              {
                              }
                              break;
                           }
                           §§push("fallPropagate");
                        }
                        §§push(§§pop() in _loc5_.h);
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§`!3§);
                              if(!_loc10_)
                              {
                                 §§push("fallPropagate");
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 if(!(§§pop() in StringMap.§+!#§))
                                 {
                                    §§push(_loc5_.h["fallPropagate"]);
                                    break;
                                 }
                              }
                              §§push(_loc5_.getReserved("fallPropagate"));
                              break;
                           }
                           §§push(§§pop().§ M§(§§pop(),0.1));
                           if(!_loc9_)
                           {
                              break;
                           }
                           addr0129:
                           §§push(Number(§§pop()));
                        }
                        else
                        {
                           §§push(0.1);
                           if(!_loc10_)
                           {
                              §§goto(addr0129);
                           }
                        }
                        _loc6_ = §§pop();
                        if(param1 != null)
                        {
                           if(_loc9_)
                           {
                              §§push(param1.§;H§());
                              if(_loc9_)
                              {
                                 break;
                              }
                              break loop4;
                           }
                           break loop2;
                        }
                        §§push(300);
                        if(!_loc10_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc10_)
                           {
                              break;
                           }
                           addr0173:
                           §§push(Number(§§pop()));
                        }
                        _loc8_ = §§pop();
                        if(!_loc9_)
                        {
                           break loop2;
                        }
                     }
                     _loc7_ = §§pop();
                     if(!_loc9_)
                     {
                        break loop2;
                     }
                     §§push(_loc7_);
                     §§push(800);
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                     §§goto(addr0173);
                     §§push(§§pop() / §§pop());
                  }
                  §§push(_loc6_);
                  §§push(1);
                  if(_loc10_)
                  {
                     break loop3;
                  }
                  §§push(1);
                  if(_loc9_)
                  {
                     if(§§pop() < _loc8_)
                     {
                        break loop3;
                     }
                     §§push(_loc8_);
                     continue loop5;
                  }
                  §§goto(addr0198);
               }
               _loc6_ = §§pop();
               break loop2;
            }
            addr0198:
            §§push(1);
            if(_loc10_)
            {
            }
            loop5:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc9_)
                  {
                     §§push(0.9);
                     if(_loc10_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc9_)
                     {
                        break loop5;
                     }
                  }
                  §§push(0.1);
                  break;
               }
               §§push(§§pop() + §§pop());
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
            §§push(§§pop() * §§pop());
            break loop4;
         }
         §-C§(param2,_loc6_);
         addr01e3:
         return true;
      }
   }
}

