package §-v§
{
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §4!8§.§1!3§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.menu.§ L§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class §?P§ extends §,C§
   {
      
      public var §;P§:Bitmap;
      
      public var lock:Bitmap;
      
      public var character:CharacterDef;
      
      public var §<t§:Bitmap;
      
      public function §?P§(param1:CharacterDef, param2:Function, param3:Boolean = true)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop3:
               while(true)
               {
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        if(param1 == CharacterRegistry.random)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           param1.name = "Random";
                           if(_loc5_)
                           {
                              break loop3;
                           }
                        }
                        §§push(this);
                        §§push(param1.§,!-§());
                        if(_loc4_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().super(§§pop(),param2);
                        if(!_loc5_)
                        {
                           §§push(§§findproperty(§<t§));
                           §§push(§2!B§);
                           §§push(param1.§@>§());
                           if(_loc4_)
                           {
                              §§push(§§pop());
                           }
                           §§pop().§<t§ = §§pop().§83§(§§pop(),true,true);
                           break;
                        }
                        break loop1;
                     }
                     addChild(§<t§);
                     §;!+§(false);
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           if(param1 != CharacterRegistry.random)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              §§pop();
                              §§push(CharacterRegistry.random.character == null);
                              if(_loc5_)
                              {
                                 break loop5;
                              }
                           }
                        }
                        §§push(!§§pop());
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc5_)
                           {
                              break;
                           }
                           break loop5;
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        param1.name = CharacterRegistry.random.character.name;
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        break loop0;
                     }
                     break loop1;
                  }
                  §§goto(addr0148);
               }
               §§goto(addr0147);
            }
            this["character"] = param1;
            if(_loc4_)
            {
               break;
            }
            §§goto(addr015d);
         }
         lock = §2!B§.§83§("menu/characterselection/LockedCharacterOverlay.png");
         §'Y§(lock);
         while(true)
         {
            if(!_loc5_)
            {
               §§push(§§findproperty(§=,§));
               §§push(param1.§<!,§());
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                  }
               }
               §§pop().§=,§(§§pop());
               if(_loc4_)
               {
                  addr0148:
                  addr0147:
                  if(!param3)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            visible = param1.§<!,§();
            break;
         }
         addr015d:
      }
      
      public function §=,§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            if(param1)
            {
               if(_loc3_)
               {
                  §;^§(false);
                  if(_loc3_)
                  {
                  }
               }
            }
            else
            {
               §;^§(character.§#U§);
            }
         }
         return lock.visible = param1;
      }
      
      public function §;!+§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §6!B§.visible = param1;
            if(_loc2_)
            {
               §<t§.visible = !param1;
            }
         }
         return param1;
      }
      
      public function §[!`§(param1:CharacterDef) : CharacterDef
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1.§,!-§());
         if(!_loc6_)
         {
            §§push(§§pop());
            if(_loc5_)
            {
               §§push(§§pop());
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc6_)
         {
            §6!B§.bitmapData = §2!B§.getBitmapData(_loc2_);
         }
         while(true)
         {
            §§push(param1.§@>§());
            if(!_loc6_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §<t§.bitmapData = §2!B§.getBitmapData(_loc3_);
         }
         return character = param1;
      }
      
      public function §;^§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        §§push(false);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!param1)
                        {
                           break loop2;
                        }
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                     }
                     §§push(character.§[t§ == null);
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  §§pop();
                  §§push(!lock.visible);
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(§;P§ == null)
                        {
                           if(!_loc2_)
                           {
                              addr00f4:
                              §;P§.visible = false;
                              break;
                           }
                           §;P§ = §2!B§.§83§(character.§[t§);
                           §'Y§(§;P§);
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                        §;P§.visible = true;
                        break;
                     }
                     §§goto(addr00f4);
                  }
               }
               else if(§;P§ != null)
               {
                  if(_loc2_)
                  {
                     §§goto(addr00f4);
                  }
               }
               §§push(param1);
               break loop0;
            }
            return Boolean(§§pop());
         }
         return §§pop();
      }
      
      public function §];§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            while(true)
            {
               §§push(§§findproperty(§=,§));
               §§push(character.§<!,§());
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc1_)
                  {
                     break;
                  }
               }
               §§push(!§§pop());
               break;
            }
            §§pop().§=,§(§§pop());
         }
      }
   }
}

