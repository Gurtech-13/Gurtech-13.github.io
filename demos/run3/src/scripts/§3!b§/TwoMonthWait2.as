package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class TwoMonthWait2 extends §+Z§
   {
      
      public var child:§^s§;
      
      public var §#!P§:§^s§;
      
      public function TwoMonthWait2()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super(§>K§.§&!H§,3);
            if(_loc2_)
            {
               followingCutscene = "TwoMonthWait3";
               while(true)
               {
                  if(_loc2_)
                  {
                     §3!<§(new § !N§(§>K§.§&!H§,4));
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(§§findproperty(frames));
                     §§push(frame0);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame1);
                     if(!_loc1_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame2);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame3);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame4);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§push(frame5);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().frames = null;
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  name = "Two Month Wait 2";
                  break;
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
                  child = null;
                  if(_loc2_)
                  {
                     break;
                  }
                  §#!P§ = null;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         child = new §^s§(§9_§,§'O§.child,false,null,false,null);
         child.billboardMode = true;
         while(true)
         {
            if(_loc1_)
            {
               sprites.push(child);
               if(!_loc2_)
               {
                  §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
            }
            §#!P§.billboardMode = true;
            sprites.push(§#!P§);
            break;
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               child.spritesheet.§,=§(97);
               if(_loc3_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(85);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("But why do we have to wait?",-180,-100,null,null,null,_loc1_,null);
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §#!P§.spritesheet.§,=§(87);
               if(_loc4_)
               {
                  break;
               }
            }
            dialog.§";§("Listen, this isn\'t complicated.",-220,-240,null,null,null,null,null);
            break;
         }
         var _loc1_:* = §&!S§.width(650);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("The Planet is about a hundred million kilometers away.",140,-70,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("It\'ll catch up in about two months.",-120,300,null,null,null,_loc2_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("Don\'t go blaming me for that.",180,380,null,null,-1,null,null);
            break;
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               child.§9E§(6.1,19.9);
               if(_loc4_)
               {
                  child.spritesheet.§,=§(103);
                  if(!_loc3_)
                  {
                     §#!P§.spritesheet.§,=§(88);
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
               }
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.width(800);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("The Planet and Tunnels\' different orbital speeds are what\'s making you wait.",20,-230,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("...uh...",-240,20,null,null,null,_loc2_,null);
         }
         _loc2_ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("What?",-200,360,null,null,null,_loc2_,null);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 12;
               if(_loc8_)
               {
                  break;
               }
               _loc1_.y = -9;
               if(!_loc7_)
               {
                  break;
               }
            }
            _loc1_.z = 1681;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.5533430342749535)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               _loc2_.x = _loc3_;
               if(!_loc7_)
               {
                  break;
               }
               §§push(_loc2_);
               §§push(-0.005);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(-0.022);
            if(_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(!_loc8_)
            {
               break;
            }
            addr00c3:
            loop3:
            while(true)
            {
               §§push(_loc2_.x);
               §§push(_loc2_.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
               }
               loop4:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc8_)
                     {
                        break loop4;
                     }
                     addr0125:
                     var _loc4_:* = Number(§§pop());
                     addr0123:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc8_)
                        {
                           §§push(§§pop() - 1);
                           if(!_loc7_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     var _loc5_:* = §§pop();
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc7_)
                           {
                              loop9:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!_loc8_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                addr016f:
                                                §§push(_loc5_ < 1e-10);
                                                if(_loc7_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(!§§pop())
                                                {
                                                   break loop10;
                                                }
                                                §§push(_loc4_);
                                             }
                                             else
                                             {
                                                §§push(_loc5_);
                                                if(!_loc8_)
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr016f);
                                                }
                                             }
                                             §§push(0);
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(1 / Number(Math.sqrt(_loc4_)));
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             break loop9;
                                          }
                                          _loc2_.x = 0;
                                          _loc2_.y = 0;
                                          if(!_loc8_)
                                          {
                                             _loc2_.z = 0;
                                             _loc2_.w = 1;
                                             break loop10;
                                          }
                                          §§goto(addr01d4);
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    break loop9;
                                 }
                                 tunnel.§<!M§.reset();
                                 tunnel.display(0);
                                 child.§9E§(6.2,18.4,null,20);
                                 child.spritesheet.§,=§(100);
                              }
                              _loc4_ = §§pop();
                              §§push(_loc2_);
                              §§push(_loc2_.x);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().x = §§pop();
                              addr01d4:
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().y = §§pop();
                              §§push(_loc2_);
                              §§push(_loc2_.z);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              if(_loc7_)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc2_.w);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().w = §§pop();
                                 if(_loc7_)
                                 {
                                    break loop10;
                                 }
                                 break loop7;
                              }
                              break;
                           }
                           §#!P§.§9E§(7,20,null,1);
                           break loop7;
                        }
                        §#!P§.spritesheet.§@S§(true);
                        var _loc6_:§ 7§ = new § 6§(child.§<!U§());
                        if(_loc7_)
                        {
                           dialog.§";§("Yay! So how soon do we get home?",-140,-180,null,null,null,_loc6_,null);
                        }
                        _loc6_ = new § 6§(§#!P§.§<!U§());
                        if(_loc7_)
                        {
                           dialog.§";§("In two months.",200,0,null,null,null,_loc6_,null);
                        }
                        _loc6_ = new § 6§(child.§<!U§());
                        if(_loc7_)
                        {
                           dialog.§";§("But you said-",-320,300,null,null,null,_loc6_,null);
                        }
                        _loc6_ = new § 6§(§#!P§.§<!U§());
                        if(_loc7_)
                        {
                           dialog.§";§("I said that I\'m not making you wait.",80,320,null,null,null,_loc6_,null);
                           if(!_loc8_)
                           {
                              § !C§("I\'m");
                           }
                        }
                        return;
                     }
                     §#!P§.spritesheet.§,=§(64);
                     break loop8;
                  }
                  addr0117:
                  §§push(_loc2_.w);
                  break loop3;
               }
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§goto(addr0117);
                  §§push(_loc2_.w);
               }
               §§goto(addr0123);
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc8_)
            {
               §§goto(addr0123);
            }
            §§goto(addr0125);
         }
         _loc2_.w = Number(Math.cos(1.5533430342749535));
         §§goto(addr00c3);
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               child.§9E§(6,16.5,null,10);
               if(!_loc4_)
               {
                  child.spritesheet.§,=§(14);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §#!P§.spritesheet.§,=§(65);
            break;
         }
         var _loc1_:* = §&!S§.width(520);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Are you really gonna make us wait two months?",200,-130,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(470);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Don\'t be ridiculous. Of course not!",-140,270,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc7_)
            {
               _loc1_.x = 57;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc1_.y = 14;
            if(!_loc7_)
            {
               break;
            }
            addr0048:
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
            §§push(Number(Math.sin(1.5707963267948966)));
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop2:
            while(true)
            {
               while(true)
               {
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(-0.15);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().x = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     §§push(-0.079);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().y = §§pop();
                     if(_loc7_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc2_);
                  §§push(0.985);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().z = §§pop();
                  if(_loc8_)
                  {
                     break loop2;
                  }
                  break;
               }
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.x);
                        if(_loc8_)
                        {
                           §§push(_loc2_.x);
                           if(_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(_loc2_.y);
                           }
                           §§push(_loc2_.y);
                           if(!_loc8_)
                           {
                              break loop5;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!_loc8_)
                           {
                              break loop4;
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.z);
                        if(!_loc7_)
                        {
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break loop5;
                           }
                           §§goto(addr0121);
                        }
                        §§goto(addr0122);
                     }
                     §§goto(addr0125);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  break;
               }
               addr0125:
               var _loc4_:* = Number(§§pop()) + _loc2_.w * _loc2_.w;
               addr0121:
               addr0122:
               §§push(_loc4_);
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(_loc8_)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       addr017d:
                                       §§push(_loc5_ < 1e-10);
                                       if(_loc8_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(!§§pop())
                                       {
                                          break loop6;
                                       }
                                       §§push(_loc4_);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc7_)
                                          {
                                             break loop8;
                                          }
                                          §§goto(addr017d);
                                       }
                                    }
                                    §§push(0);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    _loc2_.x = 0;
                                    if(_loc8_)
                                    {
                                       _loc2_.y = 0;
                                       _loc2_.z = 0;
                                       _loc2_.w = 1;
                                       break loop6;
                                    }
                                    addr01f3:
                                    addr0202:
                                    §§push(_loc2_);
                                    §§push(_loc2_.z);
                                    if(_loc8_)
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
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        _loc4_ = §§pop();
                        if(!_loc8_)
                        {
                           break loop6;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        §§goto(addr01f3);
                     }
                     §§goto(addr0202);
                  }
                  child.spritesheet.§@S§(true);
                  §#!P§.§9E§(7,20,null,1);
                  §#!P§.spritesheet.§,=§(64);
                  §§goto(addr0269);
               }
               tunnel.§<!M§.reset();
               if(!_loc7_)
               {
                  tunnel.display(0);
                  child.§9E§(6,16);
                  if(_loc8_)
                  {
                     child.spritesheet.§,=§(67);
                     break loop7;
                  }
               }
               addr0269:
               §#!P§.spritesheet.§@S§(false);
               var _loc6_:§ 7§ = new § 6§(child.§<!U§());
               if(_loc8_)
               {
                  dialog.§";§("I can\'t believe you!",200,-130,null,null,null,_loc6_,null);
               }
               _loc6_ = new § 6§(§#!P§.§<!U§());
               if(_loc8_)
               {
                  dialog.§";§("Hmm?",-170,260,null,null,null,_loc6_,null);
               }
               return;
            }
            _loc2_.w = Number(Math.cos(1.5707963267948966));
            break loop3;
         }
         _loc1_.z = 1103;
         §§goto(addr0048);
      }
   }
}

