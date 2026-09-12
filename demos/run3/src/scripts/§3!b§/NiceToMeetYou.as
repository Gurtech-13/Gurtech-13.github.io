package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class NiceToMeetYou extends §+Z§
   {
      
      public static var §2#§:* = {
         "obj":{"billboardMode":null},
         "fields":{"child":{"fade":null}}
      };
      
      public var §-P§:§^s§;
      
      public var child:§^s§;
      
      public var §#!P§:§^s§;
      
      public function NiceToMeetYou()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super(§>K§.§<Y§,-1,null,{"endTiles":false});
            if(_loc1_)
            {
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame1);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame2);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame3);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame4);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame5);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame6);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame7);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc1_)
               {
                  name = "Nice to Meet You";
               }
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               tunnel = null;
               if(!_loc2_)
               {
                  §-P§ = null;
                  if(!_loc2_)
                  {
                     §#!P§ = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            child = null;
            if(!_loc2_)
            {
               sprites.length = 0;
            }
            break;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(_loc8_)
         {
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            if(_loc8_)
            {
               §-P§.billboardMode = true;
               if(_loc8_)
               {
                  sprites.push(§-P§);
               }
            }
         }
         §§push(§!^§.pathName);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(!_loc7_)
         {
            §-P§.goesTo = new § !N§(_loc2_,-2);
            while(true)
            {
               if(!_loc7_)
               {
                  §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §#!P§.billboardMode = true;
               if(!_loc7_)
               {
                  sprites.push(§#!P§);
               }
               break;
            }
         }
         §§push(§!^§.pathName);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         while(true)
         {
            if(!_loc7_)
            {
               §#!P§.goesTo = new § !N§(_loc4_,-1);
               if(_loc7_)
               {
                  break;
               }
            }
            child = new §^s§(§9_§,§'O§.child,true,null,false,null);
            if(!_loc7_)
            {
               child.billboardMode = true;
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr0156);
            }
            break;
         }
         sprites.push(child);
         addr0156:
         §§push(§!^§.pathName);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc5_);
         if(_loc8_)
         {
            child.goesTo = new § !N§(_loc6_,-1);
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §-P§.§9E§(1.8,33.1,null,-5);
         while(true)
         {
            if(_loc3_)
            {
               §-P§.spritesheet.§,=§(49);
               if(_loc3_)
               {
                  §-P§.spritesheet.§@S§(true);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §#!P§.§9E§(2.4,35,null,1);
                  §#!P§.spritesheet.§,=§(72);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
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
                        §§push(dialog);
                        §§push("You\'re passing up a great opportunity here!");
                        §§push(20);
                        §§push(-160);
                        if(!_loc2_)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() == null)
                           {
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 break loop2;
                              }
                              §§goto(addr00e3);
                           }
                        }
                        §§push(null);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           break loop3;
                        }
                        break loop2;
                     }
                     §§goto(addr00dd);
                  }
                  §§goto(addr00f2);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr00e3);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,_loc3_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc1_);
            addr00f2:
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc9_)
         {
            _loc1_.x = 153;
            while(true)
            {
               if(_loc8_)
               {
                  _loc1_.y = 41;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 2693;
               break;
            }
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(2.155481626212997)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            §§push(_loc2_);
            §§push(0.255);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(0.95);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(0.183);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  _loc2_.w = Number(Math.cos(2.155481626212997));
                  break;
               }
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x);
                  §§push(_loc2_.x);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        break loop3;
                     }
                  }
                  §§push(_loc2_.z);
                  if(!_loc9_)
                  {
                     break loop4;
                  }
                  §§goto(addr011e);
               }
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  §§push(_loc2_.w);
                  break loop3;
               }
               §§goto(addr0120);
            }
            while(true)
            {
               §§push(§§pop() + §§pop() * §§pop());
               if(_loc8_)
               {
                  break loop18;
               }
               §§goto(addr0127);
            }
            §§goto(addr0128);
         }
         addr0128:
         addr011e:
         addr0120:
         §§push(§§pop() + §§pop() * _loc2_.w);
         if(!_loc9_)
         {
            addr0127:
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc9_)
            {
               §§push(§§pop() - 1);
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     §§push(0);
                     if(_loc9_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           break loop6;
                        }
                     }
                     else
                     {
                        §§push(-_loc5_);
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc9_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break loop7;
                     }
                     §§push(_loc4_);
                     if(!_loc8_)
                     {
                        break loop6;
                     }
                  }
                  §§push(0);
                  break;
               }
               if(§§pop() == §§pop())
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  break;
               }
               §§push(1 / Number(Math.sqrt(_loc4_)));
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               break loop6;
            }
            tunnel.§<!M§.reset();
            tunnel.display(0);
            loop16:
            while(true)
            {
               while(true)
               {
                  if(!_loc9_)
                  {
                     §-P§.§9E§(2,34.4);
                     §-P§.spritesheet.§,=§(55);
                     if(_loc9_)
                     {
                        break;
                     }
                     §-P§.spritesheet.§@S§(false);
                     if(!_loc8_)
                     {
                        break loop16;
                     }
                  }
                  §#!P§.§9E§(2.5,35,null,1);
                  if(!_loc9_)
                  {
                     §#!P§.spritesheet.§,=§(69);
                     §#!P§.spritesheet.§@S§(false);
                     break loop16;
                  }
                  addr0288:
                  child.spritesheet.§@S§(true);
                  §§goto(addr0292);
               }
               child.spritesheet.§,=§(120);
               if(!_loc9_)
               {
                  §§goto(addr0288);
               }
               §§goto(addr0292);
            }
            child.§9E§(1.3,3.5);
            break loop17;
         }
         _loc4_ = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.x);
         if(_loc8_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().x = §§pop();
         if(!_loc9_)
         {
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().y = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.z);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().z = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.w);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().w = §§pop();
            break loop7;
         }
         addr0292:
         var _loc6_:* = §&!S§.width(1500);
         var _loc7_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc8_)
         {
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(dialog);
                  §§push("Why should I quit working with the Skater and the Student?");
                  §§push(-220);
                  §§push(-292);
                  if(!_loc9_)
                  {
                     §§push(null);
                     if(!_loc9_)
                     {
                        if(§§pop() == null)
                        {
                           if(!_loc9_)
                           {
                              §§push(null);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              addr02e9:
                              §§goto(addr0310);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc9_)
                           {
                              break loop8;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop8;
                           }
                        }
                        addr02fd:
                        §§push(null);
                        if(!_loc9_)
                        {
                           break;
                        }
                        break loop8;
                     }
                     §§goto(addr02e9);
                  }
                  §§goto(addr02fd);
               }
               §§goto(addr0310);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,_loc7_);
            addr0310:
         }
         _loc6_ = §&!S§.width(1490);
         _loc7_ = new § 6§(§#!P§.§<!U§());
         if(!_loc9_)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  §§push(dialog);
                  §§push("Why not? I\'d be way more helpful than either of them.");
                  §§push(240);
                  §§push(-92);
                  if(_loc8_)
                  {
                     loop12:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(!_loc9_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc8_)
                                 {
                                    addr037e:
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop());
                                       break loop11;
                                    }
                                    break loop10;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(!_loc8_)
                              {
                                 break loop12;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop12;
                        }
                        §§push(null);
                        if(!_loc9_)
                        {
                           break loop10;
                        }
                        break;
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr037e);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,_loc7_);
            }
            §§push(§§pop());
            break loop11;
         }
         _loc6_ = §&!S§.scale(0.4);
         while(true)
         {
            if(!_loc9_)
            {
               dialog.§ q§("Not that I\'ve met the Student, but come on.\nHe\'s still in school, and I\'m an industry veteran!",750,10,_loc6_,null,16777215);
               if(_loc9_)
               {
                  break;
               }
            }
            §#!P§.transform.§"I§(§-P§.transform.§+n§());
            break;
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 143;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 47;
            if(_loc9_)
            {
               _loc1_.z = 2724;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(2.0245819323134224)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc2_);
            §§push(0.254);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.958);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.132);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(2.0245819323134224));
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc9_)
                        {
                           break loop4;
                        }
                        §§push(Number(§§pop()));
                     }
                     §§push(_loc2_.w);
                     §§push(_loc2_.w);
                     break;
                  }
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     break;
                  }
               }
               break loop3;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(_loc9_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(!_loc8_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(_loc5_);
                           if(!_loc9_)
                           {
                              addr0163:
                              §§push(-§§pop());
                              if(_loc8_)
                              {
                                 break loop7;
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(_loc9_)
                           {
                              §§goto(addr0163);
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc9_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           continue loop8;
                        }
                        §§push(_loc4_);
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break loop7;
                     }
                     _loc2_.x = 0;
                     if(_loc8_)
                     {
                        continue loop8;
                     }
                     _loc2_.y = 0;
                     if(!_loc8_)
                     {
                        _loc2_.z = 0;
                        if(_loc9_)
                        {
                           _loc2_.w = 1;
                           continue loop8;
                        }
                        §§goto(addr01f6);
                     }
                     else
                     {
                        §§goto(addr0274);
                     }
                  }
                  §§goto(addr01c9);
               }
               §§push(Number(§§pop()));
               break loop5;
            }
            tunnel.§<!M§.reset();
            loop8:
            while(true)
            {
               while(true)
               {
                  if(_loc9_)
                  {
                     tunnel.display(0);
                     §-P§.§9E§(2,34.5);
                     §-P§.spritesheet.§,=§(76);
                     §-P§.spritesheet.§@S§(true);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §#!P§.§9E§(2.6,35,null,1);
                     if(_loc8_)
                     {
                        break loop8;
                     }
                     §#!P§.spritesheet.§,=§(78);
                  }
                  addr0274:
                  §#!P§.spritesheet.§@S§(false);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§goto(addr02b4);
               }
               child.§9E§(1.9,11.3);
               if(_loc9_)
               {
                  child.spritesheet.§,=§(120);
                  if(_loc9_)
                  {
                     break;
                  }
               }
               §§goto(addr02b4);
            }
            child.spritesheet.§@S§(true);
            addr02b4:
            var _loc6_:* = §&!S§.width(1550);
            var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(!_loc8_)
            {
               loop10:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Hey, we should work together to find a way home!");
                     §§push(220);
                     §§push(-252);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc9_)
                              {
                                 addr0300:
                                 §§push(null);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop());
                                    break;
                                 }
                                 break loop10;
                              }
                              addr031b:
                              §§push(null);
                              if(!_loc8_)
                              {
                                 break loop10;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc9_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr031b);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                        }
                        §§push(§§pop() / 2.5);
                        break;
                     }
                     §§goto(addr0300);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,_loc7_);
               }
               §§push(§§pop());
               break loop11;
            }
            _loc6_ = §&!S§.width(1500);
            _loc7_ = new § 6§(§-P§.§<!U§());
            while(true)
            {
               if(_loc9_)
               {
                  loop13:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(dialog);
                           §§push("That sounds good. We can always use more volunteers.");
                           §§push(-260);
                           §§push(-72);
                           if(!_loc8_)
                           {
                              §§push(null);
                              if(!_loc9_)
                              {
                                 break loop14;
                              }
                              if(§§pop() == null)
                              {
                                 if(_loc8_)
                                 {
                                    break loop13;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc8_)
                                 {
                                    break loop14;
                                 }
                                 §§goto(addr03be);
                              }
                           }
                           §§push(null);
                           if(!_loc8_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           break loop14;
                        }
                        §§goto(addr03c9);
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     §§goto(addr03c4);
                     §§push(null);
                  }
                  §§pop().§";§(§§pop(),§§pop(),null,_loc9_ ? §§pop() : §§pop() / 2.5,_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,_loc7_);
                  addr03c9:
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               § !C§("always");
               break;
            }
            _loc6_ = §&!S§.width(1680);
            _loc7_ = new § 6§(§#!P§.§<!U§());
            loop16:
            while(true)
            {
               if(!_loc8_)
               {
                  loop17:
                  while(true)
                  {
                     loop18:
                     while(true)
                     {
                        loop19:
                        while(true)
                        {
                           §§push(dialog);
                           §§push("How about just you and me? Doesn\'t that sound even better?");
                           §§push(140);
                           §§push(328);
                           if(!_loc8_)
                           {
                              §§push(null);
                              if(!_loc8_)
                              {
                                 while(true)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr0448:
                                          §§push(null);
                                          if(_loc9_)
                                          {
                                             break loop19;
                                          }
                                          break loop17;
                                       }
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(!_loc9_)
                                       {
                                          break loop17;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(null);
                                          break;
                                       }
                                    }
                                    §§push(null);
                                    if(!_loc8_)
                                    {
                                       break loop17;
                                    }
                                    break;
                                 }
                                 §§push(§§pop() / 2.5);
                                 break loop18;
                              }
                              break;
                           }
                           §§goto(addr0448);
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,_loc7_);
                     if(!_loc9_)
                     {
                        break loop16;
                     }
                  }
                  §§push(§§pop());
                  break loop18;
               }
               §#!P§.transform.§"I§(§-P§.transform.§+n§());
               break;
            }
            return;
         }
         _loc4_ = §§pop();
         if(!_loc8_)
         {
            addr01c9:
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().y = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.z);
            if(_loc9_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().z = §§pop();
         }
         addr01f6:
         §§push(_loc2_);
         §§push(_loc2_.w);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().w = §§pop();
         break loop6;
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 130;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 64;
            if(!_loc8_)
            {
               _loc1_.z = 2755;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.9984019935335071)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(0.231);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(0.971);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(0.061);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc9_)
               {
                  _loc2_.w = Number(Math.cos(1.9984019935335071));
               }
            }
            break;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc2_.x);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                  }
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     if(_loc9_)
                     {
                        break loop3;
                     }
                     §§goto(addr0129);
                  }
                  §§goto(addr012a);
               }
               §§goto(addr012b);
            }
            §§goto(addr0122);
         }
         addr0122:
         addr012a:
         addr012b:
         §§push(_loc2_.w);
         if(_loc9_)
         {
            §§push(_loc2_.w);
            break loop4;
         }
         §§push(§§pop() + §§pop());
         if(!_loc8_)
         {
            addr0129:
            §§push(Number(§§pop()));
         }
         var _loc4_:* = Number(§§pop());
         §§push(_loc4_);
         if(!_loc8_)
         {
            §§push(§§pop() - 1);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(!_loc8_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           break loop5;
                        }
                     }
                     else
                     {
                        §§push(_loc5_);
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        §§push(-§§pop());
                     }
                     §§push(§§pop() < 1e-10);
                     if(!_loc8_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break loop6;
                     }
                     §§push(_loc4_);
                     if(!_loc9_)
                     {
                        break loop5;
                     }
                     §§push(0);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     break loop5;
                  }
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  if(!_loc8_)
                  {
                     _loc2_.w = 1;
                     if(_loc9_)
                     {
                        break;
                     }
                     §§goto(addr023d);
                  }
                  else
                  {
                     §§goto(addr01fc);
                  }
               }
               §§goto(addr020c);
            }
            tunnel.display(0);
            §-P§.§9E§(2.1,34.6);
            if(!_loc9_)
            {
               break loop7;
            }
            addr023d:
            §-P§.spritesheet.§,=§(75);
            §-P§.spritesheet.§@S§(false);
            if(_loc8_)
            {
               continue loop16;
            }
            §#!P§.§9E§(2.7,35.2,null,2);
            if(!_loc8_)
            {
               §#!P§.spritesheet.§,=§(69);
               if(!_loc9_)
               {
                  continue loop16;
               }
               §#!P§.spritesheet.§@S§(false);
               child.§9E§(2.1,17.2);
            }
            child.spritesheet.§,=§(120);
            if(_loc8_)
            {
               break loop7;
            }
            §§goto(addr02a8);
         }
         _loc4_ = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.x);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc4_);
         }
         §§pop().x = §§pop();
         while(true)
         {
            while(true)
            {
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.y);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().y = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     addr01fc:
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     addr020c:
                     tunnel.§<!M§.reset();
                  }
                  break loop6;
               }
               addr02a8:
               child.spritesheet.§@S§(false);
               break;
            }
            loop15:
            while(true)
            {
               loop16:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Let me suggest something:");
                     §§push(-280);
                     §§push(-320);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(_loc8_)
                        {
                           break loop16;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc8_)
                           {
                              break loop15;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc8_)
                           {
                              break loop16;
                           }
                           §§goto(addr0301);
                        }
                     }
                     §§push(null);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break loop16;
                  }
                  §§goto(addr0306);
               }
               if(§§pop() < 0)
               {
                  break;
               }
               §§goto(addr0301);
               §§push(null);
            }
            §§pop().§";§(§§pop(),§§pop(),null,!_loc8_ ? §§pop() : §§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
            addr0306:
            break;
         }
         var _loc6_:* = §&!S§.width(1400);
         var _loc7_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc9_)
         {
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Next time, tell the woman you like her personality.");
                     §§push(-120);
                     §§push(-92);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(_loc8_)
                        {
                           break loop9;
                        }
                        if(§§pop() == null)
                        {
                           if(_loc9_)
                           {
                              §§push(null);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                                 break loop10;
                              }
                              break loop9;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc9_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop9;
                           }
                        }
                     }
                     §§push(null);
                     if(_loc9_)
                     {
                        break;
                     }
                     break loop9;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,_loc7_);
            }
            §§push(§§pop() / 2.5);
            break loop10;
         }
         _loc7_ = new § 6§(§#!P§.§<!U§());
         if(!_loc8_)
         {
            loop12:
            while(true)
            {
               loop13:
               while(true)
               {
                  §§push(dialog);
                  §§push("Well yes, that\'s what I meant.");
                  §§push(300);
                  §§push(340);
                  if(!_loc8_)
                  {
                     §§push(null);
                     if(_loc8_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc9_)
                           {
                              §§goto(addr0436);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc8_)
                           {
                              break loop13;
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop12;
                     }
                  }
                  §§push(null);
                  if(!_loc8_)
                  {
                     break;
                  }
                  break loop12;
               }
               §§goto(addr0436);
            }
            §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc7_);
            addr0436:
            if(!_loc8_)
            {
               §#!P§.transform.§"I§(§-P§.transform.§+n§());
            }
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = 83;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = 53;
            if(_loc9_)
            {
               _loc1_.z = 2808;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.7453292519943295)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.401);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(0.912);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(0.084);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
               }
            }
            _loc2_.w = Number(Math.cos(1.7453292519943295));
            break;
         }
         §§push(_loc2_.x * _loc2_.x);
         §§push(_loc2_.y);
         §§push(_loc2_.y);
         if(_loc9_)
         {
            loop3:
            while(true)
            {
               §§push(§§pop() * §§pop());
               if(!_loc8_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                        }
                        §§push(Number(§§pop()));
                        break loop4;
                     }
                  }
                  §§push(_loc2_.w);
                  break loop5;
               }
               §§push(_loc2_.w);
               break;
            }
         }
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = Number(§§pop());
         while(true)
         {
            §§push(_loc4_);
            if(_loc9_)
            {
               §§push(§§pop() - 1);
               if(!_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         if(!_loc8_)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(_loc9_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc5_);
                              if(!_loc9_)
                              {
                                 break loop7;
                              }
                           }
                           else
                           {
                              §§push(-_loc5_);
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc9_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop8;
                           }
                           §§push(_loc4_);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(0);
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc2_.x = 0;
                           if(_loc9_)
                           {
                              _loc2_.y = 0;
                              if(!_loc8_)
                              {
                                 _loc2_.z = 0;
                                 _loc2_.w = 1;
                              }
                              break loop8;
                           }
                           §§goto(addr020f);
                        }
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(!_loc8_)
                        {
                           break;
                        }
                        break loop7;
                     }
                  }
                  §§push(Number(§§pop()));
                  break loop7;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
            }
            _loc4_ = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
            }
            break loop8;
         }
         addr020f:
         §-P§.§9E§(2.1,34.6);
         if(_loc9_)
         {
            §-P§.spritesheet.§,=§(65);
            §-P§.spritesheet.§@S§(false);
         }
         §#!P§.§9E§(2.7,35.2);
         §#!P§.spritesheet.§,=§(46);
         §#!P§.spritesheet.§@S§(true);
         if(_loc9_)
         {
            child.§9E§(2.9,17.8);
            while(true)
            {
               if(!_loc8_)
               {
                  child.spritesheet.§,=§(119);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               child.spritesheet.§@S§(false);
               break;
            }
         }
         var _loc6_:* = §&!S§.width(1190);
         if(!_loc8_)
         {
            loop11:
            while(true)
            {
               loop12:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I look exactly the same as anyone you\'d meet on the Planet.");
                     §§push(-60);
                     §§push(-280);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 addr02d2:
                                 §§push(null);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 break loop11;
                              }
                              addr02ec:
                              §§push(null);
                              if(_loc9_)
                              {
                                 break loop11;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc8_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr02ec);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                           §§push(§§pop() / 2.5);
                           break loop12;
                        }
                        break;
                     }
                     §§goto(addr02d2);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,null);
            }
            §§push(§§pop());
            break loop12;
         }
         _loc6_ = §&!S§.width(1060);
         var _loc7_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc8_)
         {
            loop14:
            while(true)
            {
               loop15:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("What exactly makes me \"gorgeous\"?");
                     §§push(-260);
                     §§push(-32);
                     if(!_loc8_)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc8_)
                              {
                                 addr036f:
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 break loop14;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc8_)
                              {
                                 break loop14;
                              }
                              if(§§pop() >= 0)
                              {
                                 §§push(null);
                                 break loop14;
                              }
                           }
                           §§push(null);
                           if(_loc9_)
                           {
                              §§push(§§pop());
                              break loop15;
                           }
                           break loop14;
                        }
                        break;
                     }
                     §§goto(addr036f);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,_loc7_);
               if(!_loc8_)
               {
                  loop17:
                  while(true)
                  {
                     loop18:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Well...");
                        §§push(400);
                        §§push(20);
                        if(_loc9_)
                        {
                           loop19:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(null);
                                 if(!_loc8_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr03ec:
                                          §§push(null);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop());
                                             break loop18;
                                          }
                                          break loop17;
                                       }
                                       break;
                                    }
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       break loop19;
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 break loop17;
                              }
                              §§push(null);
                              if(_loc9_)
                              {
                                 break;
                              }
                              break loop17;
                           }
                           §§push(§§pop());
                           break;
                        }
                        §§goto(addr03ec);
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
                  }
                  §§push(§§pop() / 2.5);
                  break loop18;
               }
            }
            §§push(§§pop() / 2.5);
            break loop15;
         }
         _loc6_ = §&!S§.width(870);
         _loc7_ = new § 6§(§#!P§.§<!U§());
         loop21:
         while(true)
         {
            if(_loc9_)
            {
               loop22:
               while(true)
               {
                  loop23:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("I appreciate the natural look.");
                     §§push(360);
                     §§push(308);
                     if(_loc9_)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc8_)
                                 {
                                    addr048c:
                                    §§push(null);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop());
                                       break loop23;
                                    }
                                    break loop22;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    break loop22;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break;
                                 }
                              }
                              §§push(null);
                              if(_loc9_)
                              {
                                 break loop22;
                              }
                              break;
                           }
                           §§push(§§pop() / 2.5);
                           break;
                        }
                        break loop22;
                     }
                     §§goto(addr048c);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,_loc7_);
                  if(_loc8_)
                  {
                     break loop21;
                  }
               }
               §§push(§§pop());
               break loop23;
            }
            §#!P§.transform.§"I§(§-P§.transform.§+n§());
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc8_)
         {
            _loc1_.x = 68;
            while(true)
            {
               if(!_loc8_)
               {
                  _loc1_.y = 56;
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 2824;
               break;
            }
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.684242728174528)));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.403);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(0.913);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.062);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(1.684242728174528));
            break;
         }
         §§push(_loc2_.x);
         if(!_loc8_)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           §§push(_loc2_.z);
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break loop4;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     §§push(_loc2_.w);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                     §§goto(addr011c);
                  }
               }
               addr011c:
               §§push(§§pop() + §§pop() * §§pop());
               break loop5;
            }
            §§push(_loc2_.w);
            break loop4;
         }
         var _loc4_:Number = §§pop();
         §§push(_loc4_);
         if(!_loc8_)
         {
            §§push(§§pop() - 1);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc8_)
         {
            loop6:
            while(true)
            {
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(_loc9_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc8_)
                        {
                           addr0166:
                           §§push(_loc5_ < 1e-10);
                           if(_loc9_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop6;
                           }
                        }
                        §§push(_loc4_);
                     }
                     else
                     {
                        §§push(_loc5_);
                        if(_loc9_)
                        {
                           §§push(-§§pop());
                           if(_loc8_)
                           {
                              break;
                           }
                           §§goto(addr0166);
                        }
                     }
                     §§push(0);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     break;
                  }
                  if(!_loc8_)
                  {
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                     if(_loc9_)
                     {
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                        break loop6;
                     }
                     §§goto(addr0272);
                  }
                  §§goto(addr022a);
               }
               _loc4_ = §§pop();
               while(true)
               {
                  if(_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     if(!_loc8_)
                     {
                        break loop6;
                     }
                     §§goto(addr024b);
                  }
                  §§goto(addr022a);
               }
               §§goto(addr0268);
            }
            tunnel.§<!M§.reset();
            tunnel.display(0);
            if(!_loc8_)
            {
               addr022a:
               §-P§.§9E§(2.1,34.6);
               §-P§.spritesheet.§,=§(75);
            }
            §-P§.spritesheet.§@S§(false);
            addr024b:
            §#!P§.§9E§(2.7,35.2);
            §#!P§.spritesheet.§,=§(46);
            if(!_loc8_)
            {
               addr0268:
               §#!P§.spritesheet.§@S§(true);
            }
         }
         addr0272:
         var _loc6_:* = §&!S§.width(1350);
         if(!_loc8_)
         {
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("But enough about me. Look at that gorgeous view!");
                     §§push(-200);
                     §§push(-272);
                     if(!_loc8_)
                     {
                        §§push(null);
                        if(!_loc9_)
                        {
                           break;
                        }
                        if(§§pop() == null)
                        {
                           if(!_loc8_)
                           {
                              §§push(null);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                                 break loop9;
                              }
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(!_loc9_)
                           {
                              break;
                           }
                           if(§§pop() >= 0)
                           {
                              §§push(null);
                              break loop8;
                           }
                        }
                     }
                     §§push(null);
                     if(!_loc8_)
                     {
                        break;
                     }
                     break loop8;
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),null,null);
            }
            §§push(§§pop() / 2.5);
            break loop9;
         }
         var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
         loop11:
         while(true)
         {
            if(_loc9_)
            {
               loop12:
               while(true)
               {
                  loop13:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("The stars are pretty, too.");
                     §§push(220);
                     §§push(-80);
                     if(_loc9_)
                     {
                        loop14:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(null);
                              if(_loc9_)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(!_loc8_)
                                    {
                                       addr033a:
                                       §§push(null);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop());
                                          break loop13;
                                       }
                                       break loop12;
                                    }
                                    break;
                                 }
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    break loop14;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop12;
                           }
                           §§push(null);
                           if(_loc9_)
                           {
                              break;
                           }
                           break loop12;
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§goto(addr033a);
                  }
                  §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc7_);
                  if(_loc8_)
                  {
                     break loop11;
                  }
               }
               §§push(§§pop() / 2.5);
               break loop13;
            }
            §#!P§.transform.§"I§(§-P§.transform.§+n§());
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = -19;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = 95;
            if(!_loc9_)
            {
               _loc1_.z = 2846;
            }
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.5009831567151233)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc2_);
            §§push(0.509);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.858);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(0.068);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
               }
               _loc2_.w = Number(Math.cos(1.5009831567151233));
               break;
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(_loc2_.x);
               §§push(_loc2_.x);
               if(_loc8_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     break loop3;
                  }
                  loop26:
                  while(true)
                  {
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc9_)
                        {
                           break loop4;
                        }
                        while(true)
                        {
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              §§push(_loc2_.z);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 break loop26;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc9_)
                              {
                                 break loop3;
                              }
                              §§push(Number(§§pop()));
                              §§push(_loc2_.w);
                              if(_loc9_)
                              {
                                 break loop26;
                              }
                           }
                           §§push(_loc2_.w);
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
               break;
            }
            §§push(Number(§§pop()));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(§§pop() - 1);
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            loop7:
            while(true)
            {
               loop22:
               while(true)
               {
                  if(!_loc9_)
                  {
                     loop23:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(§§pop() >= §§pop() ? _loc5_ : -_loc5_);
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              break loop7;
                           }
                           while(true)
                           {
                              addr01cb:
                              §§push(_loc4_);
                              if(_loc8_)
                              {
                                 §§push(0);
                                 break loop23;
                              }
                              §§push(Number(§§pop()));
                              break;
                           }
                           _loc4_ = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
                           if(_loc9_)
                           {
                              break loop22;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().y = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!_loc8_)
                        {
                           continue loop8;
                        }
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        if(!_loc8_)
                        {
                           continue loop8;
                        }
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                     }
                     else
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(!_loc9_)
                        {
                           §§goto(addr01cb);
                        }
                        §§goto(addr01cc);
                     }
                  }
                  tunnel.§<!M§.reset();
                  tunnel.display(0);
                  if(_loc8_)
                  {
                     break loop7;
                  }
                  §§goto(addr0308);
               }
               §-P§.spritesheet.§@S§(false);
               if(_loc9_)
               {
                  continue loop8;
               }
               §#!P§.§9E§(3.2,35.4);
               while(true)
               {
                  if(_loc8_)
                  {
                     §#!P§.spritesheet.§,=§(46);
                     if(_loc9_)
                     {
                        break;
                     }
                  }
                  §#!P§.spritesheet.§@S§(true);
                  if(_loc9_)
                  {
                     break;
                  }
                  continue loop8;
               }
               §§goto(addr0308);
            }
            §-P§.§9E§(2.1,34.6);
            §-P§.spritesheet.§,=§(78);
            break loop22;
         }
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               §§push(dialog);
               §§push("I\'m the Runner.");
               §§push(20);
               §§push(-260);
               if(!_loc9_)
               {
                  while(true)
                  {
                     §§push(null);
                     if(!_loc9_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc9_)
                           {
                              §§goto(addr02e6);
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(null);
                           if(_loc9_)
                           {
                              break loop9;
                           }
                        }
                     }
                     if(§§pop() < 0)
                     {
                        break;
                     }
                     §§push(null);
                     break loop8;
                  }
               }
               §§push(null);
               if(_loc8_)
               {
                  break;
               }
               break loop8;
            }
            §§goto(addr02e6);
         }
         §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,null);
         addr0308:
         var _loc6_:* = §&!S§.width(1020);
         var _loc7_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc9_)
         {
            loop10:
            while(true)
            {
               loop11:
               while(true)
               {
                  loop12:
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Also known as the Cartographer.");
                     §§push(-220);
                     §§push(-92);
                     if(!_loc9_)
                     {
                        §§push(null);
                        if(_loc8_)
                        {
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 if(!_loc9_)
                                 {
                                    addr035d:
                                    §§push(§§pop());
                                    break loop11;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(!_loc8_)
                                 {
                                    break loop12;
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 break;
                              }
                              §§push(null);
                              break loop10;
                           }
                           addr0371:
                           §§push(null);
                           if(!_loc9_)
                           {
                              break;
                           }
                           break loop10;
                        }
                        §§goto(addr035d);
                     }
                     §§goto(addr0371);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,_loc7_);
            }
            §§push(§§pop() / 2.5);
            break loop11;
         }
         _loc7_ = new § 6§(§#!P§.§<!U§());
         if(!_loc9_)
         {
            loop14:
            while(true)
            {
               loop15:
               while(true)
               {
                  §§push(dialog);
                  §§push("I\'m the Angel.");
                  §§push(380);
                  §§push(-60);
                  if(_loc8_)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(null);
                           if(!_loc9_)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc9_)
                                 {
                                    addr03e6:
                                    §§push(null);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop());
                                       break loop15;
                                    }
                                    break loop14;
                                 }
                                 break;
                              }
                              §§push(null);
                              if(!_loc8_)
                              {
                                 break loop16;
                              }
                           }
                           if(§§pop() < 0)
                           {
                              break;
                           }
                           §§push(null);
                           break loop16;
                        }
                        §§push(null);
                        if(_loc8_)
                        {
                           break loop14;
                        }
                        break;
                     }
                     §§push(§§pop() / 2.5);
                     break;
                  }
                  §§goto(addr03e6);
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc7_);
            }
            §§push(§§pop());
            break loop15;
         }
         _loc6_ = §&!S§.width(1700);
         if(_loc8_)
         {
            loop18:
            while(true)
            {
               loop19:
               while(true)
               {
                  while(true)
                  {
                     §§push(dialog);
                     §§push("Also known as the highest-paid engineer on the Planet.");
                     §§push(100);
                     §§push(288);
                     if(!_loc9_)
                     {
                        §§push(null);
                        if(_loc8_)
                        {
                           if(§§pop() == null)
                           {
                              if(_loc8_)
                              {
                                 addr046c:
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 break loop18;
                              }
                              addr0488:
                              §§push(null);
                              if(!_loc9_)
                              {
                                 break loop18;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc9_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr0488);
                                 }
                                 else
                                 {
                                    §§push(null);
                                 }
                              }
                           }
                           §§push(§§pop() / 2.5);
                           break loop19;
                        }
                        break;
                     }
                     §§goto(addr046c);
                  }
                  §§push(§§pop());
                  break;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),_loc6_ == null ? null : int(Math.round(_loc6_ / 2.5)),-1,null);
               if(!_loc9_)
               {
                  §#!P§.transform.§"I§(§-P§.transform.§+n§());
               }
            }
            §§push(§§pop());
            break loop19;
         }
         return;
         addr02e6:
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc7_)
         {
            _loc1_.x = -12;
            if(!_loc7_)
            {
               _loc1_.y = 81;
               if(!_loc7_)
               {
                  _loc1_.z = 2796;
               }
            }
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.5009831567151233)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc2_);
            §§push(0.509);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc7_)
               {
                  §§push(_loc2_);
                  §§push(0.858);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(0.068);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  _loc2_.w = Number(Math.cos(1.5009831567151233));
               }
               break;
            }
         }
         while(true)
         {
            §§push(_loc2_.x);
            if(_loc8_)
            {
               §§push(§§pop() * _loc2_.x);
               if(!_loc8_)
               {
                  break;
               }
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           break loop4;
                        }
                        §§push(Number(§§pop()));
                        §§push(_loc2_.z);
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           break loop3;
                        }
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        §§push(_loc2_.w);
                        break;
                     }
                     break loop4;
                  }
                  §§push(_loc2_.w);
                  break loop3;
               }
               var _loc4_:* = §§pop();
               §§push(_loc4_);
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               loop6:
               while(true)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(_loc8_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        addr0156:
                        §§push(_loc5_ < 1e-10);
                        if(!_loc7_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        §§push(_loc4_);
                     }
                     else
                     {
                        §§push(-_loc5_);
                        if(_loc8_)
                        {
                           §§goto(addr0156);
                        }
                     }
                     §§push(0);
                  }
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                        if(!_loc7_)
                        {
                           break loop6;
                        }
                        §-P§.spritesheet.§,=§(67);
                        addr0209:
                        if(!_loc7_)
                        {
                           §-P§.spritesheet.§@S§(true);
                        }
                        §#!P§.§9E§(3.2,36.4);
                        if(_loc8_)
                        {
                           §#!P§.spritesheet.§,=§(33);
                           §#!P§.spritesheet.§@S§(false);
                           if(!_loc8_)
                           {
                              break;
                           }
                           child.§9E§(3,17.4,null,-20);
                           child.spritesheet.§,=§(111);
                        }
                     }
                     else
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc4_ = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(_loc8_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           break loop6;
                        }
                     }
                     child.spritesheet.§@S§(false);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§goto(addr0301);
                  }
                  loop15:
                  while(true)
                  {
                     loop16:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Hi there!");
                           §§push(-240);
                           §§push(-300);
                           if(_loc8_)
                           {
                              §§push(null);
                              if(_loc7_)
                              {
                                 break loop15;
                              }
                              if(§§pop() == null)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(null);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop());
                                       break loop16;
                                    }
                                    break loop15;
                                 }
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= 0)
                                 {
                                    §§push(null);
                                    break loop15;
                                 }
                              }
                           }
                           §§push(null);
                           if(_loc8_)
                           {
                              break;
                           }
                           break loop15;
                        }
                        §§push(§§pop());
                        break;
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,null);
                     §§goto(addr0301);
                  }
                  §§push(§§pop() / 2.5);
                  break loop16;
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               if(_loc8_)
               {
                  §-P§.§9E§(2.1,33.6);
                  §§goto(addr0209);
               }
               addr0301:
               var _loc6_:§ 7§ = new § 6§(§-P§.§<!U§());
               if(_loc8_)
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        §§push(dialog);
                        §§push("Nice to meet you.");
                        §§push(160);
                        §§push(-180);
                        if(!_loc7_)
                        {
                           §§push(null);
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 if(§§pop() == null)
                                 {
                                    if(!_loc7_)
                                    {
                                       addr0341:
                                       §§push(null);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop());
                                          break loop9;
                                       }
                                       break loop8;
                                    }
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc7_)
                                    {
                                       break loop8;
                                    }
                                    if(§§pop() >= 0)
                                    {
                                       §§push(null);
                                       break;
                                    }
                                 }
                                 §§push(null);
                                 if(!_loc7_)
                                 {
                                    break loop8;
                                 }
                                 break;
                              }
                              §§push(§§pop() / 2.5);
                              break;
                           }
                           break loop8;
                        }
                        §§goto(addr0341);
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),-1,_loc6_);
                  }
                  §§push(§§pop());
                  break loop9;
               }
               _loc6_ = new § 6§(§#!P§.§<!U§());
               while(true)
               {
                  if(!_loc7_)
                  {
                     loop12:
                     while(true)
                     {
                        loop13:
                        while(true)
                        {
                           §§push(dialog);
                           §§push("Likewise.");
                           §§push(-80);
                           §§push(240);
                           if(_loc8_)
                           {
                              while(true)
                              {
                                 §§push(null);
                                 if(_loc8_)
                                 {
                                    if(§§pop() == null)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(null);
                                       if(_loc7_)
                                       {
                                          break loop13;
                                       }
                                       §§goto(addr03fd);
                                       §§push(§§pop());
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(!_loc8_)
                                       {
                                          break loop12;
                                       }
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    break;
                                 }
                                 §§push(null);
                                 break loop12;
                              }
                           }
                           §§push(null);
                           if(_loc8_)
                           {
                              break;
                           }
                           break loop12;
                        }
                        §§goto(addr03fd);
                     }
                     §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop() / 2.5,null == null ? null : int(Math.round(null / 2.5)),null,_loc6_);
                     addr03fd:
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  §#!P§.transform.§"I§(§-P§.transform.§+n§());
                  break;
               }
               return;
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            break;
         }
         §§push(Number(§§pop()));
         break loop4;
      }
   }
}

