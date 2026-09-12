package §>T§
{
   import §!9§.§'=§;
   import §"!M§.§!!P§;
   import §%!Q§.§ !>§;
   import §%!Q§.§+#§;
   import §3!b§.Cutscenes;
   import §3!b§.LizardFellAsleep;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.Lizard;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§0!#§;
   import com.player03.run3.save.§1!;§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import unitsystem.§7o§;
   
   public class §`H§ extends §!!P§
   {
      
      public static var §6o§:Point3D;
      
      public var § !&§:§'=§;
      
      public function §`H§(param1:§+#§)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  super();
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(param1 == null)
                  {
                     break loop0;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §-!9§ = true;
               if(_loc3_)
               {
                  break;
               }
               break loop0;
            }
            § !&§ = new §'=§(param1);
            break;
         }
      }
      
      public function §+!-§(param1:Object, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            § !&§.§^Z§ = param1;
            if(!_loc3_)
            {
               § !&§.§?x§ = param2;
            }
         }
      }
      
      override public function init(param1:§[C§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.§ !&§ = § !&§;
         }
      }
      
      override public function §9U§(param1:§6M§, param2:§[C§, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = null as Point3D;
         var _loc6_:* = null as Point3D;
         while(true)
         {
            if(!_loc7_)
            {
               §§push(§-!9§);
               if(_loc7_)
               {
                  break;
               }
               §§push(!§§pop());
               if(!_loc8_)
               {
                  break;
               }
               if(!§§pop())
               {
                  var _loc4_:§7![§ = param2.§;!C§;
                  if(_loc4_.§2w§ != _loc4_.§[v§)
                  {
                     _loc5_ = _loc4_.§ i§.normal;
                     if(_loc8_)
                     {
                        _loc5_.x = 0;
                        if(!_loc7_)
                        {
                           _loc5_.y = 0;
                           if(!_loc7_)
                           {
                              _loc5_.z = 1;
                           }
                        }
                     }
                  }
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc4_.§ i§.normal.z);
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              break;
                           }
                           if(§§pop() <= §§pop())
                           {
                              §§push(true);
                              if(_loc8_)
                              {
                                 return §§pop();
                              }
                              break loop1;
                           }
                           §§push(param2.§5!J§);
                        }
                        §§push(0);
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           if(_loc8_)
                           {
                              param2.§5!J§ = 0;
                              if(§`H§.§6o§ != null)
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           §`H§.§6o§ = new Point3D(0,0,0);
                           break;
                        }
                        _loc5_ = §`H§.§6o§;
                        _loc6_ = param1.§[!G§.§>l§;
                        _loc5_.x = _loc6_.x;
                        loop4:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              _loc5_.y = _loc6_.y;
                              _loc5_.z = _loc6_.z;
                              if(_loc8_)
                              {
                                 §4!R§.§@!M§(param1.transform.§=0§.§+n§(),§`H§.§6o§,§`H§.§6o§);
                                 loop5:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          § !&§.start(param2,param2.§;!C§.§ i§.normal,§`H§.§6o§);
                                          if(_loc4_.§2w§ != _loc4_.§[v§)
                                          {
                                             break;
                                          }
                                          if(!_loc8_)
                                          {
                                             break loop4;
                                          }
                                          §§push(§7o§.controlScheme.§,h§("jump"));
                                          if(_loc8_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                §§push(param1.§;H§());
                                                if(_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(§§pop() * 0.4);
                                                break;
                                             }
                                             §§pop().§'!K§(§§pop());
                                             break loop5;
                                          }
                                       }
                                       §§push(param1);
                                       §§push(param1.§;H§());
                                       if(!_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() * 0.5);
                                          }
                                       }
                                       §§pop().§'!K§(§§pop());
                                       if(_loc8_)
                                       {
                                          break loop5;
                                       }
                                       break loop4;
                                    }
                                 }
                                 param1.§;!C§.§ i§.§&!L§ = false;
                                 if(_loc8_)
                                 {
                                    break loop6;
                                 }
                                 break;
                              }
                           }
                           param1.§;!C§.§ i§.§]!1§ = false;
                           break;
                        }
                     }
                     return true;
                  }
                  return §§pop();
               }
            }
            return true;
         }
         return §§pop();
      }
   }
}

