package §3!b§
{
   import §!!$§.§ 6§;
   import §!]§.§4N§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §2X§.§>N§;
   import §6!Q§.§]u§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§[!<§;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class TheGap extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public var student:§^s§;
      
      public var §-P§:§^s§;
      
      public function TheGap()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §§push(this);
               §§push(§>K§.§>=§);
               §§push(-1);
               §§push(TheGap.§3S§);
               §§push("noCrumblingTiles");
               §§push(true);
               §§push("endTiles");
               §§push(false);
               §§push("customDate");
               §§push(§+#§.§!B§(-0.01));
               if(!_loc2_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),null);
               if(_loc2_)
               {
                  break;
               }
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
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame3);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc2_)
               {
                  break;
               }
            }
            name = "The Gap";
            break;
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
            if(!_loc1_)
            {
               student = null;
               while(true)
               {
                  if(!_loc1_)
                  {
                     §-P§ = null;
                     if(_loc1_)
                     {
                        break;
                     }
                  }
                  sprites.length = 0;
                  break;
               }
            }
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = null as §+#§;
         var _loc4_:* = null as §2!;§;
         loop0:
         while(true)
         {
            if(!_loc5_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(true);
                     if(_loc6_)
                     {
                        if(param2)
                        {
                           break loop1;
                        }
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(§!!6§ == 4);
                           if(_loc5_)
                           {
                              break loop1;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop1;
                  }
                  super.loadNext(param1,param2);
                  if(!_loc5_)
                  {
                     break loop0;
                  }
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     break loop2;
                  }
               }
               else
               {
                  §]u§.§@!A§().§5!@§ = false;
               }
            }
            _loc3_ = §+#§.§,!B§()[0];
            _loc4_ = _loc3_.§,U§;
            if(_loc6_)
            {
               §§push(int(Save.§@!A§().get(_loc4_.§=-§,int(_loc4_.§ -§))));
               §§push(int(_loc3_.§ b§.length));
               if(!_loc5_)
               {
                  §§push(§§pop() + int(_loc3_.§-!>§.length));
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     _loc3_.§+!=§ = int(_loc3_.§ b§.length);
                     _loc3_.§?D§.§3X§();
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(_loc3_.§>c§());
                     if(!_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     §§push(!§§pop());
                     break;
                  }
                  if(§§pop())
                  {
                     §[!<§.§@!A§().§4X§(§4N§.§@!A§());
                     Main.instance.§,Z§(null);
                     §4N§.§@!A§().§0H§.visible = true;
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  break loop0;
               }
               §4N§.§@!A§().§0H§.reset();
            }
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               student = new §^s§(§9_§,§'O§.student,false,null,false,null);
               if(_loc6_)
               {
                  break;
               }
            }
            sprites.push(student);
            break;
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(!_loc6_)
            {
               student.goesTo = new § !N§(_loc2_,5);
               if(_loc6_)
               {
                  break;
               }
            }
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            if(_loc5_)
            {
               break;
            }
            §§goto(addr00c0);
         }
         sprites.push(§-P§);
         addr00c0:
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc5_)
         {
            §-P§.goesTo = new § !N§(_loc4_,-2);
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = §&!S§.width(600);
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("Maybe next time you\'ll think twice before helping out!",20,-120,null,_loc1_,null,null,null);
               if(_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("Haha, yeah right!",260,40,null,null,null,null,null);
            break;
         }
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("So, are you in?",-140,160,null,null,0,_loc2_,null);
         }
         _loc2_ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Of course!",300,240,null,null,1,_loc2_,null);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            student.spritesheet.§,=§(46);
            if(!_loc4_)
            {
               §-P§.spritesheet.§,=§(46);
            }
         }
         var _loc1_:* = §&!S§.width(680);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("How did I become the go-to person for everyone\'s problems?",180,-30,null,_loc1_,null,_loc2_,null);
            if(!_loc4_)
            {
               § !C§("I");
            }
         }
         _loc1_ = §&!S§.width(380);
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Because you keep solving them!",-220,230,null,_loc1_,null,_loc2_,null);
            if(!_loc4_)
            {
               §-P§.§2e§(student);
            }
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               student.spritesheet.§,=§(38);
               if(!_loc4_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§,=§(46);
            break;
         }
         var _loc1_:* = §&!S§.width(450);
         if(_loc4_)
         {
            dialog.§";§("Even the Skater can\'t make the jump.",-140,-230,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(510);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("...and you want me to figure out a way across?",240,10,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(120);
         if(!_loc3_)
         {
            dialog.§";§("No.",-200,200,null,_loc1_,0,null,null);
         }
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("...Yes.",-100,320,null,null,-1,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 24;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 4;
            if(_loc9_)
            {
               break;
            }
            addr0048:
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
            §§push(Number(Math.sin(0.5497787143782138)));
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  _loc2_.x = 0 * _loc3_;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc2_.y = 0 * _loc3_;
               if(_loc9_)
               {
                  break;
               }
               addr00b9:
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
                  }
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() + §§pop() * §§pop());
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                        }
                        §§push(§§pop() * §§pop());
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                        §§push(_loc2_.w);
                        §§push(_loc2_.w);
                        break;
                     }
                     §§goto(addr010f);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc8_)
                  {
                     break;
                  }
                  addr0110:
                  var _loc4_:Number = §§pop();
                  addr010f:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc8_)
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
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc9_)
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(_loc9_)
                              {
                                 §§push(-§§pop());
                                 if(_loc8_)
                                 {
                                    break loop7;
                                 }
                              }
                           }
                        }
                        §§push(§§pop() < 1e-10);
                        if(!_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        loop9:
                        while(true)
                        {
                           while(true)
                           {
                              addr01f0:
                              if(§§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(_loc4_);
                                    break loop7;
                                 }
                              }
                              tunnel.§<!M§.reset();
                              tunnel.display(0);
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    student.§9E§(0.1,-0.6,true,-2);
                                    if(!_loc8_)
                                    {
                                       break loop9;
                                    }
                                    §§goto(addr0229);
                                 }
                                 §§goto(addr0249);
                              }
                              §§goto(addr0288);
                           }
                           addr026b:
                           dialog.§";§("There\'s a tunnel here?",100,-240,null,null,null,null,null);
                           §§goto(addr0288);
                        }
                        student.spritesheet.§,=§(38);
                        addr0229:
                        student.spritesheet.§@S§(false);
                        if(_loc9_)
                        {
                           §-P§.§9E§(0.9,-0.6,true,-2);
                           addr0249:
                           §-P§.spritesheet.§,=§(30);
                           if(_loc8_)
                           {
                              break loop10;
                           }
                           §-P§.spritesheet.§@S§(true);
                           if(!_loc8_)
                           {
                              break loop10;
                           }
                        }
                        addr0288:
                        var _loc6_:§ 7§ = new § 6§(§-P§.§<!U§());
                        if(!_loc8_)
                        {
                           dialog.§";§("The Skater says so.",-260,-40,null,null,null,_loc6_,null);
                        }
                        var _loc7_:* = §&!S§.width(340);
                        _loc6_ = new § 6§(student.§<!U§());
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              dialog.§";§("Must be pretty far away.",280,170,null,_loc7_,0,_loc6_,null);
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           §-P§.§2e§(student);
                           break;
                        }
                        return;
                     }
                     loop13:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              _loc2_.x = 0;
                              if(!_loc8_)
                              {
                                 _loc2_.y = 0;
                                 if(_loc9_)
                                 {
                                    _loc2_.z = 0;
                                    _loc2_.w = 1;
                                    break;
                                 }
                                 break loop9;
                              }
                           }
                           else
                           {
                              _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                           }
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
                           if(!_loc8_)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.z);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              §§push(_loc2_);
                              §§push(_loc2_.w);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().w = §§pop();
                              break;
                           }
                           break loop13;
                        }
                        §§goto(addr01f0);
                     }
                     §§goto(addr026b);
                  }
                  §§push(0);
                  break loop8;
               }
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§goto(addr010f);
               }
               §§goto(addr0110);
            }
            _loc2_.z = -1 * _loc3_;
            if(_loc9_)
            {
               _loc2_.w = Number(Math.cos(0.5497787143782138));
            }
            §§goto(addr00b9);
         }
         _loc1_.z = 9900;
         §§goto(addr0048);
      }
   }
}

