package §,!W§
{
   import §!!$§.§ 6§;
   import §-!!§.§2!B§;
   import §-!!§.§`h§;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import §=w§.§,D§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Music;
   import com.player03.run3.Save;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import haxeutils.sound.§5! §;
   import haxeutils.sound.AdvancedSound;
   
   public class §`'§ implements §,D§, §+<§
   {
      
      public static var instance:§`'§;
      
      public var §"k§:Boolean;
      
      public var §,k§:Number;
      
      public function §`'§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §"k§ = false;
            if(!_loc1_)
            {
               §,k§ = 0;
            }
         }
      }
      
      public static function §@!A§() : §`'§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §`'§;
         if(!_loc3_)
         {
            if(§`'§.instance != null)
            {
               return §`'§.instance;
            }
         }
         return §`'§.instance = new §`'§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            §§push(false);
            if(!_loc2_)
            {
               if(!§5! §.§@!A§().soundMuted)
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
            }
            §§pop();
            §§push(§5! §.§@!A§().§[!2§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            break;
         }
         if(§§pop())
         {
            if(_loc3_)
            {
               §§push(§§findproperty(§,k§));
               §§push(§,k§);
               if(!_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§,k§ = §§pop();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(§,k§ > 0)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                     }
                     §'!E§.§@!A§().§1&§();
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§goto(addr00b5);
                  }
               }
               §'!E§.§@!A§().§>!W§("beeep");
               addr00b5:
               §,k§ = 2;
               break loop2;
            }
         }
      }
      
      public function §`%§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc1_)
            {
               while(true)
               {
                  §§push(§5! §.§@!A§().§@!W§);
                  if(!_loc1_)
                  {
                     §§push(Music.§-!V§("Tone"));
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc1_)
                        {
                           break;
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        §5! §.§@!A§().§96§(null);
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                     }
                     §§push(§5! §.§@!A§().§33§);
                  }
                  §§push(Music.§-!V§("Tone"));
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  break;
               }
               if(§§pop() != §§pop())
               {
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            §5! §.§@!A§().§<!Z§(null);
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr00bb);
         }
         §"k§ = false;
         addr00bb:
      }
      
      public function §4§(param1:§ !W§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(false);
         if(!_loc3_)
         {
            if(§5! §.§@!A§().soundMuted)
            {
               if(!_loc3_)
               {
                  §§pop();
                  §§push(§5! §.§@!A§().§[!2§);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(§§pop())
            {
               §5! §.§@!A§().§96§(null);
               §5! §.§@!A§().§'J§(1);
               if(!_loc2_)
               {
                  break;
               }
               §§push(§5! §.§@!A§());
               §§push(Music.§-!V§("Tone"));
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().§#v§(§§pop());
            }
            else
            {
               §5! §.§@!A§().§'J§(0.5);
               §5! §.§@!A§().§3!K§(1);
               §§push(§5! §.§@!A§());
               §§push(Music.§-!V§("Tone"));
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().§<!Z§(§§pop());
            }
            param1.registerAnimation(this);
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr00ff);
         }
         §"k§ = true;
         addr00ff:
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §,k§ = 0;
         }
      }
      
      public function §=!V§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§"k§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}

