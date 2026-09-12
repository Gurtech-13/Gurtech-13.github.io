package §3!b§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§6!a§;
   import §%!Q§.§>K§;
   import §6!Q§.§'!E§;
   import §=b§.§,0§;
   import §`_§.§^s§;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class ThanksForPlaytesting extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var pastafarian:§^s§;
      
      public var gentleman:§^s§;
      
      public var firstTime:Boolean;
      
      public function ThanksForPlaytesting()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            firstTime = false;
            while(true)
            {
               if(_loc1_)
               {
                  super(§>K§.§4>§,-1,ThanksForPlaytesting.§3S§);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc1_)
               {
                  break;
               }
            }
            name = "Thanks for Playtesting";
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            tunnel = null;
            while(true)
            {
               if(_loc2_)
               {
                  pastafarian = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
               gentleman = null;
               if(!_loc1_)
               {
                  sprites.length = 0;
               }
               break;
            }
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §'!E§.§@!A§().§;!A§();
            super.loadNext(param1,param2);
            if(_loc3_)
            {
               §6!a§.§@!A§().§[!"§.get("Thanks for Playtesting").achievement.§@!S§();
               if(firstTime)
               {
                  firstTime = false;
                  §'!E§.§@!A§().§>!W§("New hints unlocked! Replay the Coordination Challenges to view them.");
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(_loc6_)
            {
               pastafarian = new §^s§(§9_§,§'O§.pastafarian,false,null,false,null);
               if(!_loc5_)
               {
                  pastafarian.billboardMode = true;
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            sprites.push(pastafarian);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc6_)
            {
               pastafarian.goesTo = new § !N§(_loc2_,0);
               if(_loc5_)
               {
                  break;
               }
               gentleman = new §^s§(§9_§,§'O§.gentleman,false,null,false,null);
               if(!_loc6_)
               {
                  break;
               }
            }
            gentleman.billboardMode = true;
            if(!_loc5_)
            {
               sprites.push(gentleman);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc6_)
         {
            gentleman.goesTo = new § !N§(_loc4_,-1);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:* = false;
         var _loc2_:* = null as §]k§;
         while(true)
         {
            if(_loc8_)
            {
               if(§?^§ == null)
               {
                  §§push(false);
                  if(!_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  _loc1_ = §§pop();
                  break;
               }
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc2_ = §?^§;
            if(_loc8_)
            {
               §§push(Boolean(Save.§@!A§().get(_loc2_.§=-§,Boolean(_loc2_.§ -§))));
               if(_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc1_ = §§pop();
               if(!_loc9_)
               {
                  break;
               }
            }
            addr0085:
            var _loc3_:Point3D = tunnel.§<!M§.§%!7§;
            if(_loc8_)
            {
               _loc3_.x = -243;
               while(true)
               {
                  if(_loc8_)
                  {
                     _loc3_.y = 52;
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  _loc3_.z = 8506;
                  break;
               }
            }
            var _loc4_:§"B§ = tunnel.§<!M§.§,t§;
            while(true)
            {
               if(!_loc9_)
               {
                  if(_loc4_ != null)
                  {
                     break;
                  }
               }
               _loc4_ = new §"B§();
               break;
            }
            §§push(Number(Math.sin(1.4835298641951802)));
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc4_);
                  §§push(0.705);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().x = §§pop();
                  if(_loc8_)
                  {
                     §§push(_loc4_);
                     §§push(-0.703);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc5_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
               }
               §§push(_loc4_);
               §§push(0.087);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  _loc4_.w = Number(Math.cos(1.4835298641951802));
               }
               break;
            }
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc4_.x * _loc4_.x);
                  §§push(_loc4_.y);
                  if(_loc8_)
                  {
                     §§push(_loc4_.y);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc9_)
                     {
                        break loop4;
                     }
                     §§push(_loc4_.z);
                  }
                  §§push(_loc4_.z);
                  if(!_loc9_)
                  {
                     addr019e:
                     §§push(§§pop() * §§pop());
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(_loc4_.w);
                        §§push(_loc4_.w);
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     break loop4;
                  }
                  break;
               }
               §§goto(addr019e);
            }
            var _loc6_:* = §§pop();
            while(true)
            {
               §§push(_loc6_);
               if(!_loc9_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc7_:* = §§pop();
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              loop12:
                              while(true)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc9_)
                                       {
                                          §§push(0);
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(_loc7_);
                                             break loop13;
                                          }
                                          §§push(_loc7_);
                                       }
                                       §§push(-§§pop());
                                       if(!_loc9_)
                                       {
                                          break loop13;
                                       }
                                       break loop12;
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(1);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() / Number(Math.sqrt(_loc6_)));
                                          break loop12;
                                       }
                                       break loop11;
                                    }
                                    if(!_loc8_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 §§push(§§pop() < 1e-10);
                                 if(_loc8_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    §§push(_loc6_);
                                    §§push(0);
                                    break loop14;
                                 }
                                 break loop8;
                              }
                              _loc6_ = Number(§§pop());
                              if(!_loc9_)
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.x);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().x = §§pop();
                                 §§push(_loc4_);
                                 §§push(_loc4_.y);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().y = §§pop();
                                 §§push(_loc4_);
                                 §§push(_loc4_.z);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().z = §§pop();
                                 §§push(_loc4_);
                                 §§push(_loc4_.w);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().w = §§pop();
                              }
                              break loop8;
                           }
                           _loc4_.x = 0;
                           if(_loc9_)
                           {
                              break loop8;
                           }
                           _loc4_.y = 0;
                           _loc4_.z = 0;
                           if(!_loc9_)
                           {
                              break loop7;
                           }
                           §§goto(addr029f);
                        }
                        §§goto(addr0312);
                     }
                     §§goto(addr0328);
                  }
                  §,!J§ = 0.00001;
                  break loop10;
               }
               tunnel.§<!M§.reset();
               if(!_loc9_)
               {
                  tunnel.display(0);
                  addr029f:
                  pastafarian.§9E§(13.2,111.8,null,-1);
                  pastafarian.spritesheet.§,=§(116);
                  if(_loc9_)
                  {
                     break loop9;
                  }
                  pastafarian.spritesheet.§@S§(true);
                  gentleman.§9E§(12.72,111.8,null,-1);
               }
               gentleman.spritesheet.§,=§(88);
               if(!_loc9_)
               {
                  gentleman.spritesheet.§@S§(true);
                  if(_loc9_)
                  {
                     break loop9;
                  }
                  addr0312:
                  if(§!!6§ != 4)
                  {
                     if(_loc8_)
                     {
                        break loop9;
                     }
                  }
               }
               addr0328:
               return;
            }
            _loc4_.w = 1;
            break loop8;
         }
         §§push(§§findproperty(firstTime));
         §§push(_loc1_);
         if(!_loc9_)
         {
            §§push(!§§pop());
         }
         §§pop().firstTime = §§pop();
         §§goto(addr0085);
      }
   }
}

