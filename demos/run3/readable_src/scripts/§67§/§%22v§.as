package §67§
{
   import §!!$§.§ 6§;
   import §%!Q§.§&r§;
   import §%!Q§.§'!]§;
   import scenes.§+Z§;
   import scenes.MyTurn;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterDef;
   import flash.geom.Rectangle;
   
   public class §"v§
   {
      
      public var §<! §:§'!]§;
      
      public var §5-§:String;
      
      public var §+!=§:int;
      
      public var §+!+§:§+Z§;
      
      public var §'r§:CharacterDef;
      
      public var §=!§:§'!]§;
      
      public function §"v§(param1:CharacterDef, param2:String, param3:§'!]§ = undefined, param4:§"v§ = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §+!=§ = -1;
         §'r§ = param1;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               §5-§ = param2;
               if(!_loc6_)
               {
                  if(param4 == null)
                  {
                     loop1:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           loop2:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc5_)
                                 {
                                    if(param3 == null)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          addr00e0:
                                          §=!§ = param4.§=!§;
                                          break loop0;
                                       }
                                       §§push(param3.§2!&§ == null);
                                       if(!_loc5_)
                                       {
                                          break loop2;
                                       }
                                    }
                                 }
                                 §§push(!§§pop());
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                                 break;
                              }
                              if(!§§pop())
                              {
                                 break loop1;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           break loop3;
                        }
                        §+!+§ = param3.§2!&§;
                        break;
                     }
                     addr009e:
                     §=!§ = param3;
                     param3.§3[§.victoryCallback = §4Q§;
                     addr00c1:
                     param3.§3[§.fadeOutOnVictory = null;
                     break;
                  }
                  §+!+§ = param4.§+!+§;
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr009e);
            }
            §§goto(addr00c1);
         }
         §<! § = §=!§;
      }
      
      public function §4Q§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §&r§.§@!A§().§%'§(§=!§,false);
               if(_loc1_)
               {
                  break;
               }
            }
            §+!+§.display(1);
            break;
         }
      }
      
      public function §!2§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(§<! § != null)
            {
               if(_loc2_)
               {
                  §<! §.§ !7§();
                  if(_loc2_)
                  {
                  }
               }
            }
            else if(§=!§ != null)
            {
               if(!_loc1_)
               {
                  §=!§.§ !7§();
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               §+!+§.display(1);
            }
         }
      }
   }
}

