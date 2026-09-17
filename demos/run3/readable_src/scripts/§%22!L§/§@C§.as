package §"!L§
{
   import § 0§.§-!N§;
   import §!]§.§4N§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import layout3d.§>N§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.menu.§<!J§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!?§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§9t§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import unitsystem.§7o§;
   
   public final class §@C§
   {
      
      public static var init__:Boolean;
      
      public static var §0<§:§%z§;
      
      public static var §'!M§:§%z§;
      
      public function §@C§()
      {
      }
      
      public static function §4g§(param1:§%z§, param2:* = undefined) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc3_:* = null as § !N§;
         var _loc4_:* = null as CharacterDef;
         var _loc5_:* = null as §2o§;
         var _loc6_:* = null as Main;
         var _loc7_:* = null as § !>§;
         var _loc8_:* = null as §-Q§;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null as §0!?§;
         var _loc12_:* = null as String;
         var _loc13_:* = null as §9t§;
         var _loc14_:* = null as §,a§;
         var _loc15_:* = null as Sprite;
         if(!_loc16_)
         {
            loop0:
            while(true)
            {
               §§push(param1.index);
               if(!_loc16_)
               {
                  switch(§§pop())
                  {
                     case 0:
                        §§push(param1.params);
                        if(!_loc17_)
                        {
                           addr00e1:
                           §§push(1);
                           if(_loc17_)
                           {
                              _loc4_ = §§pop()[§§pop()];
                              _loc3_ = param1.params[0];
                              if(!_loc16_)
                              {
                                 CharacterRegistry.§3§(_loc4_);
                                 if(_loc17_)
                                 {
                                    §@C§.§4g§(§%z§.LEVEL(_loc3_));
                                 }
                              }
                              break loop0;
                           }
                           addr0345:
                           _loc4_ = §§pop()[§§pop()];
                           _loc14_ = param1.params[0];
                           if(_loc17_)
                           {
                              CharacterRegistry.§3§(_loc4_);
                              if(!_loc16_)
                              {
                                 §@C§.§4g§(§%z§.MODE(_loc14_));
                              }
                           }
                           break loop0;
                        }
                        §§push(0);
                        if(_loc17_)
                        {
                           _loc3_ = §§pop()[§§pop()];
                           if(!_loc16_)
                           {
                              §§push(_loc3_.§1!R§.§<o§());
                              if(_loc17_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(_loc17_)
                                 {
                                    Main.instance.§#f§(_loc3_.§+!=§,_loc3_.§1!R§);
                                 }
                              }
                           }
                           break loop0;
                        }
                        addr013b:
                        §§push(§§pop()[§§pop()].index);
                        break;
                     case 1:
                        §§push(param1.params);
                        if(_loc17_)
                        {
                           §§goto(addr00e1);
                        }
                        else
                        {
                           addr0133:
                           §§push(0);
                           if(!_loc17_)
                           {
                              break;
                           }
                           §§goto(addr013b);
                        }
                     case 2:
                        §§push(param1.params);
                        if(!_loc17_)
                        {
                           addr038d:
                           §§push(0);
                           break;
                        }
                        §§goto(addr0133);
                        break;
                     case 3:
                        §§push(param1.params);
                        if(_loc17_)
                        {
                           §§push(1);
                           if(!_loc17_)
                           {
                              break;
                           }
                           §§goto(addr0345);
                        }
                        else
                        {
                           §§goto(addr038d);
                        }
                     case 4:
                        §§goto(addr038d);
                        §§push(param1.params);
                     default:
                        break loop0;
                  }
                  _loc15_ = §§pop()[§§pop()];
                  if(_loc17_)
                  {
                     §[!<§.§@!A§().§4X§(_loc15_);
                     if(_loc17_)
                     {
                        if(Main.instance.level == null)
                        {
                           break;
                        }
                        if(_loc16_)
                        {
                           break;
                        }
                     }
                  }
                  Main.instance.§,Z§(null);
                  break;
               }
               switch(§§pop())
               {
                  case 0:
                     _loc5_ = Save.forceVisitMap;
                     while(true)
                     {
                        if(!_loc16_)
                        {
                           if(!Boolean(Save.§@!A§().get(_loc5_.§=-§,Boolean(_loc5_.§ -§))))
                           {
                              break;
                           }
                        }
                        _loc6_ = Main.instance;
                        _loc7_ = §>K§.§0x§;
                        _loc8_ = _loc7_.§0!R§;
                        if(_loc17_)
                        {
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(int(Save.§@!A§().get(_loc8_.§=-§,int(_loc8_.§ -§))));
                                 if(!_loc16_)
                                 {
                                    _loc9_ = §§pop();
                                    if(_loc16_)
                                    {
                                       break;
                                    }
                                    §§push(_loc7_.levelCount);
                                    if(!_loc17_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 _loc10_ = §§pop();
                                 §§push(_loc9_);
                                 if(!_loc17_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc10_);
                                 if(!_loc16_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc17_)
                                       {
                                          §§push(_loc9_);
                                          if(_loc17_)
                                          {
                                          }
                                          break loop4;
                                       }
                                       break;
                                    }
                                    §§push(_loc10_);
                                    break loop4;
                                 }
                                 §§goto(addr020a);
                              }
                              §@C§.§4g§(§4N§.§%`§());
                              return;
                           }
                           addr020a:
                           if(§§pop() >= 3)
                           {
                              break loop5;
                           }
                           Save.forceVisitMap.§?F§(false);
                        }
                        break;
                     }
                     _loc11_ = Save.currentPath;
                     if(!_loc16_)
                     {
                        §§push(Save.§@!A§().get(_loc11_.§=-§,_loc11_.§ -§));
                        if(_loc17_)
                        {
                           §§push(§§pop());
                        }
                        _loc12_ = §§pop();
                        if(!_loc16_)
                        {
                           if(§>K§.§@!A§().§2! §.get(_loc12_) != null)
                           {
                              _loc6_ = Main.instance;
                              _loc13_ = §>K§.§@!A§().§2! §.get(_loc12_).§^J§;
                              if(!_loc16_)
                              {
                                 _loc6_.§#f§(int(Save.§@!A§().get(_loc13_.§=-§,int(_loc13_.§ -§))),§>K§.§@!A§().§2! §.get(_loc12_));
                                 if(!_loc17_)
                                 {
                                    break loop0;
                                 }
                                 if(Main.instance.level != null)
                                 {
                                    break loop0;
                                 }
                                 if(_loc16_)
                                 {
                                    break loop0;
                                 }
                              }
                              Main.instance.§#f§(0,§>K§.§0x§);
                              break loop0;
                           }
                           if(!_loc17_)
                           {
                              break loop0;
                           }
                        }
                     }
                     Main.instance.§#f§(0,§>K§.§0x§);
                     break loop0;
                  case 1:
                     Main.instance.§,Z§(new §-!N§());
                     break loop0;
                  default:
                     break loop0;
               }
            }
         }
      }
   }
}

