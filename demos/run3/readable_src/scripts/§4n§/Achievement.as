package §4n§
{
   import §"!L§.§%z§;
   import §6!Q§.§'!E§;
   import stage.StageActor;
   import com.player03.run3.Currency;
   import com.player03.run3.Save;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.api.§@!<§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§]k§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import openfl.Lib;
   
   public class Achievement
   {
      
      public var §='§:int;
      
      public var §`p§:§%z§;
      
      public var § N§:int;
      
      public var payout:int;
      
      public var name:String;
      
      public var §`T§:String;
      
      public var id:int;
      
      public var §3!X§:§]k§;
      
      public var description:String;
      
      public var character:CharacterDef;
      
      public var §>i§:Function;
      
      public function Achievement(param1:int, param2:String, param3:String, param4:int, param5:String, param6:CharacterDef, param7:Object = undefined, param8:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         while(true)
         {
            if(_loc10_)
            {
               if(param8 == null)
               {
                  param8 = 0;
               }
               if(!§>i§)
               {
                  §>i§ = function():Boolean
                  {
                     return true;
                  };
               }
               §`p§ = null;
               § N§ = 0;
               if(_loc9_)
               {
                  break;
               }
               id = param1;
               if(_loc9_)
               {
                  break;
               }
               while(true)
               {
                  §§push(§§findproperty(§3!X§));
                  §§push(§§findproperty(§]k§));
                  §§push("achievement");
                  if(!_loc9_)
                  {
                     §§push(§§pop() + param1);
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§3!X§ = new §§pop().§]k§(§§pop());
            }
            name = param2;
            description = param3;
            payout = param4;
            §`T§ = param5;
            if(!_loc9_)
            {
               character = param6;
               if(_loc10_)
               {
                  break;
               }
            }
            §§goto(addr00f9);
         }
         §='§ = param8;
         while(true)
         {
            if(_loc10_)
            {
               if(param7 == null)
               {
                  break;
               }
               if(!_loc10_)
               {
                  break;
               }
            }
            §>i§ = param7;
            break;
         }
         addr00f9:
      }
      
      public function §!O§() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§]k§ = §3!X§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§push(!Boolean(Save.§@!A§().get(_loc1_.§=-§,Boolean(_loc1_.§ -§))));
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              §§push(true);
                              break loop3;
                           }
                           if(!_loc2_)
                           {
                              §§push(false);
                              if(_loc3_)
                              {
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    if(payout != 0)
                                    {
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§pop();
                                             §§push(§='§ == 2);
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(!§§pop());
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    break loop0;
                                 }
                                 §§push(true);
                                 if(!_loc3_)
                                 {
                                    break loop3;
                                 }
                              }
                              if(character == null)
                              {
                                 break loop2;
                              }
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              §§pop();
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        §§push(character.§<!,§());
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        break loop1;
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr00f6);
               }
               addr00d4:
               if(Boolean(§§pop()))
               {
                  break loop0;
               }
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
               break loop3;
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         §§push(Boolean(§>i§()));
         if(!_loc2_)
         {
            return §§pop();
         }
         addr00f6:
         return §§pop();
      }
      
      public function §,Y§() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = null as §]k§;
         var _loc6_:Number = NaN;
         var _loc7_:* = null as §7!T§;
         var _loc8_:int = 0;
         if(_loc9_)
         {
            if(this == §3!G§.§07§)
            {
               if(!_loc10_)
               {
                  §3!G§.§07§ = null;
               }
            }
         }
         var _loc3_:§]k§ = §3!X§;
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc10_)
                  {
                     §§push(!Boolean(Save.§@!A§().get(_loc3_.§=-§,Boolean(_loc3_.§ -§))));
                     if(!_loc9_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc10_)
                           {
                              break loop1;
                           }
                           §§push(§ N§ > 0);
                           if(!_loc9_)
                           {
                              break;
                           }
                           _loc2_ = §§pop();
                        }
                        else
                        {
                           _loc2_ = true;
                           if(!_loc9_)
                           {
                              break loop1;
                           }
                        }
                        §§push(_loc2_);
                        break;
                     }
                     if(!§§pop())
                     {
                        _loc1_ = false;
                        break loop1;
                     }
                  }
                  §§push(Boolean(§>i§()));
                  if(!_loc10_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc1_ = §§pop();
                  if(!_loc10_)
                  {
                     break loop1;
                  }
                  continue loop3;
               }
               if(§§pop())
               {
                  continue loop3;
               }
               §§goto(addr024b);
            }
            §§push(_loc1_);
            break loop7;
         }
         _loc5_ = §3!X§;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(_loc9_)
                  {
                     §§push(Boolean(Save.§@!A§().get(_loc5_.§=-§,Boolean(_loc5_.§ -§))));
                     if(!_loc10_)
                     {
                        §§push(!§§pop());
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              break loop3;
                           }
                           §§push(payout);
                           if(_loc9_)
                           {
                              §§push(int(§§pop()));
                              if(_loc9_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                           }
                           addr0142:
                           §§push(int(§§pop()));
                           if(!_loc9_)
                           {
                              break loop5;
                           }
                        }
                        else
                        {
                           §§push(§ N§);
                           if(_loc9_)
                           {
                              §§goto(addr0142);
                           }
                        }
                        _loc4_ = §§pop();
                        break;
                     }
                  }
                  §3!X§.§?F§(true);
                  if(_loc9_)
                  {
                     Currency.§@!A§().recordSoftEarned(_loc4_,"Achievement");
                     break loop3;
                  }
                  §§goto(addr01b4);
               }
               §§goto(addr01b6);
            }
            §0!#§.§@!A§().§,?§();
            if(!_loc10_)
            {
               §<,§.§8!U§(id,"Achievement",description,_loc4_);
               §<,§.§1,§();
               if(!_loc10_)
               {
                  break;
               }
               §§goto(addr01b9);
            }
            §§goto(addr01b4);
         }
         §@!<§.§-"§(id);
         addr01b6:
         _loc6_ = 24;
         addr01b9:
         _loc7_ = new §7!T§(this,false,14540253,_loc4_);
         _loc8_ = int(Lib.get_current().stage.stageWidth);
         §§push(_loc7_.§6!]§);
         if(_loc9_)
         {
            §§push(!§§pop());
         }
         while(true)
         {
            if(§§pop())
            {
               _loc7_.§^,§(null);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(_loc7_);
            §§push(_loc8_ - (_loc7_.text.x + _loc7_.text.width));
            if(_loc9_)
            {
               §§push(§§pop() - _loc6_);
            }
            §§pop().x = §§pop();
            break;
         }
         _loc7_.y = _loc6_;
         §'!E§.§@!A§().§[b§(_loc7_,2.5,null,-_loc7_.height - _loc6_);
         addr024b:
         return;
         addr01b4:
      }
   }
}

