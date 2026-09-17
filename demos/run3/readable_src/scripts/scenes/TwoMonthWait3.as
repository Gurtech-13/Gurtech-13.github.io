package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-d§.§4?§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class TwoMonthWait3 extends §+Z§
   {
      
      public var §&V§:§7d§;
      
      public var child:StageActor;
      
      public var §#!P§:StageActor;
      
      public function TwoMonthWait3()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super(§>K§.§&!H§,5);
            while(true)
            {
               if(_loc1_)
               {
                  followingCutscene = "TwoMonthWait4";
                  if(!_loc2_)
                  {
                     §3!<§(new § !N§(§>K§.§&!H§,6));
                     if(!_loc2_)
                     {
                        §§push(§§findproperty(frames));
                        §§push(frame0);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame1);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame2);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame3);
                        if(_loc1_)
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
                        if(_loc1_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame7);
                        if(_loc1_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame8);
                        if(_loc1_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame9);
                        if(_loc1_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame10);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame11);
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                        }
                        §§push(frame12);
                        if(_loc1_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().frames = null;
                        if(!_loc1_)
                        {
                           break;
                        }
                     }
                  }
               }
               name = "Two Month Wait 3";
               break;
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §7d§;
         super.unloadLevel();
         if(§&V§ != null)
         {
            _loc1_ = §&V§;
            if(_loc3_)
            {
               _loc1_.sprite.world.§5!F§(_loc1_);
               if(_loc3_)
               {
                  §&V§ = null;
               }
            }
         }
         tunnel = null;
         child = null;
         if(!_loc2_)
         {
            §#!P§ = null;
            sprites.length = 0;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
            while(true)
            {
               if(_loc2_)
               {
                  child.billboardMode = true;
                  sprites.push(child);
                  if(_loc1_)
                  {
                     break;
                  }
                  §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
               }
               §#!P§.billboardMode = true;
               if(_loc2_)
               {
                  sprites.push(§#!P§);
               }
               break;
            }
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         _loc1_.x = -29;
         _loc1_.y = -9;
         _loc1_.z = 2316;
         tunnel.camera.reset();
         tunnel.display(0);
         child.spritesheet.§,=§(118);
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("I know!",-80,-80,null,null,null,_loc2_,null);
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §,!J§ = 10;
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §,!J§ = 1;
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            child.placeAt(3.25,29.75);
            if(_loc1_)
            {
               §,!J§ = 1;
            }
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            child.placeAt(3.2,29.8);
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:§7d§ = §&V§;
         if(!_loc4_)
         {
            _loc1_.sprite.world.§5!F§(_loc1_);
            while(true)
            {
               if(_loc3_)
               {
                  §&V§ = null;
                  if(_loc4_)
                  {
                     break;
                  }
               }
               child.spritesheet.§,=§(128);
               if(!_loc4_)
               {
                  child.placeAt(3.1,29.9);
               }
               break;
            }
         }
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("bored!",140,280,null,null,null,_loc2_,null);
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:§7d§ = §&V§;
         while(true)
         {
            if(!_loc3_)
            {
               _loc1_.sprite.world.§5!F§(_loc1_);
               if(_loc3_)
               {
                  break;
               }
            }
            §&V§ = new §7d§(child,new §4?§(Vector.<int>([42,60,102,113,103,98,78,126]),true),10);
            break;
         }
         _loc1_ = §&V§;
         while(true)
         {
            if(!_loc3_)
            {
               _loc1_.reset();
               if(_loc3_)
               {
                  break;
               }
            }
            _loc1_.sprite.world.registerAnimation(_loc1_);
            if(_loc4_)
            {
               break;
            }
            var _loc2_:§ 7§ = new § 6§(child.§<!U§());
            §§goto(addr00bc);
         }
         §§push(dialog);
         §§push(tunnel.display);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         §§pop().§+!P§ = §§pop();
         addr00bc:
         if(_loc4_)
         {
            dialog.§";§("so...",-60,300,null,null,null,_loc2_,null);
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §&V§ = new §7d§(child,new §4?§(Vector.<int>([42,60,102,113,103,98,78]),true),5);
         }
         var _loc1_:§7d§ = §&V§;
         while(true)
         {
            if(!_loc4_)
            {
               _loc1_.reset();
               if(!_loc3_)
               {
                  break;
               }
               _loc1_.sprite.world.registerAnimation(_loc1_);
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(dialog);
            §§push(tunnel.display);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
            break;
         }
         var _loc2_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("am...",-200,100,null,null,null,_loc2_,null);
         }
      }
      
      public function frame12() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               child.spritesheet.§,=§(98);
               if(!_loc4_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(88);
            if(_loc4_)
            {
               dialog.§";§("But hey, it\'s worth a try.",20,-280,null,null,null,null,null);
            }
            break;
         }
         var _loc1_:* = §&!S§.width(500);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("It\'ll be a good learning experience.",120,-90,null,_loc1_,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(530);
         _loc2_ = new § 6§(child.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("But I don\'t want a learning experience. I just want to get home!",-160,270,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(380);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Too late. We\'re doing this.",360,360,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(!_loc8_)
         {
            §+_§(§>K§.§&!H§,0);
         }
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 349;
               if(_loc9_)
               {
                  _loc1_.y = 3;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 3059;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.4573499254152653)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(0.71);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.12);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc9_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc2_);
            §§push(-0.694);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr00e1);
         }
         _loc2_.w = Number(Math.cos(1.4573499254152653));
         addr00e1:
         §§push(_loc2_.x);
         if(_loc9_)
         {
            §§push(§§pop() * _loc2_.x);
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.y);
            if(!_loc8_)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.y);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break loop4;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc9_)
                  {
                     break loop3;
                  }
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     §§push(_loc2_.w);
                     break;
                  }
               }
            }
            §§push(§§pop() + §§pop());
            break;
         }
         var _loc4_:* = Number(§§pop());
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
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
            loop8:
            while(true)
            {
               while(true)
               {
                  if(_loc9_)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(!_loc8_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc9_)
                           {
                              break loop7;
                           }
                           §§push(_loc5_);
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
                           break;
                        }
                        §§push(_loc4_);
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc4_ = §§pop();
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc8_)
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
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        break;
                     }
                     _loc2_.x = 0;
                     _loc2_.y = 0;
                  }
                  _loc2_.z = 0;
                  if(_loc9_)
                  {
                     _loc2_.w = 1;
                     if(_loc9_)
                     {
                        break;
                     }
                     break loop8;
                  }
                  break loop7;
               }
               tunnel.camera.reset();
               if(!_loc9_)
               {
                  break loop7;
               }
               tunnel.display(0);
               if(_loc9_)
               {
                  break;
               }
               §§goto(addr023c);
            }
            child.placeAt(18.1,46.9);
            addr023c:
            child.spritesheet.§,=§(125);
            if(_loc9_)
            {
               child.spritesheet.§@S§(true);
               §#!P§.model.§#"§(true);
            }
            §#!P§.placeAt(18,44);
            if(_loc9_)
            {
               §#!P§.spritesheet.§,=§(87);
            }
            break;
         }
         §#!P§.spritesheet.§@S§(false);
         var _loc6_:* = §&!S§.width(420);
         if(!_loc8_)
         {
            dialog.§";§("You\'re going to build a spaceship?",220,-250,null,_loc6_,null,null,null);
            if(!_loc8_)
            {
               dialog.§";§("Yeah!",-120,-140,null,null,null,null,null);
            }
         }
         var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("In two months?",240,-60,null,null,0,_loc7_,null);
         }
         _loc7_ = new § 6§(child.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Yeah!",20,40,null,null,1,_loc7_,null);
         }
         _loc7_ = new § 6§(§#!P§.§<!U§());
         if(_loc9_)
         {
            dialog.§";§("No you won\'t.",200,300,null,null,null,_loc7_,null);
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               child.placeAt(3.85,27.35,null,53);
               if(!_loc2_)
               {
                  break;
               }
            }
            child.spritesheet.§,=§(100);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("I\'ll build a spaceship!",-40,-60,null,null,null,_loc1_,null);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            child.spritesheet.§,=§(78);
         }
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("I...",-140,-60,null,null,null,_loc1_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(_loc6_)
         {
            _loc1_.x = 19;
            while(true)
            {
               if(_loc6_)
               {
                  _loc1_.y = 21;
                  if(_loc7_)
                  {
                     break;
                  }
               }
               _loc1_.z = 2458;
               break;
            }
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc6_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.19198621771937624)));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.518);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(0.851);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc6_)
            {
               §§push(_loc2_);
               §§push(0.082);
               if(_loc6_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc6_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(0.19198621771937624));
            break;
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  §§push(_loc2_.z);
                  if(_loc7_)
                  {
                     break;
                  }
                  §§push(_loc2_.z);
                  if(_loc7_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
                  if(_loc6_)
                  {
                     §§push(_loc2_.w);
                     break;
                  }
                  §§goto(addr012e);
               }
               §§goto(addr012f);
            }
            §§push(_loc2_.w);
            break;
         }
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc6_)
         {
            addr012e:
            addr012f:
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc7_)
         {
            §§push(§§pop() - 1);
            if(_loc6_)
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
                  if(!_loc7_)
                  {
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(_loc5_);
                                          break loop10;
                                       }
                                       break loop6;
                                    }
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       break loop8;
                                    }
                                 }
                                 §§push(-§§pop());
                                 if(!_loc7_)
                                 {
                                    break loop10;
                                 }
                                 break loop9;
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 break loop9;
                              }
                              _loc2_.x = 0;
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                              §§goto(addr0205);
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc6_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§push(_loc4_);
                              §§push(0);
                              break loop11;
                           }
                           §§goto(addr0205);
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     _loc4_ = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     if(_loc7_)
                     {
                        break loop6;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc6_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                     addr0205:
                     tunnel.camera.reset();
                     if(!_loc6_)
                     {
                        break loop5;
                     }
                  }
                  tunnel.display(0);
                  child.placeAt(3,30);
                  if(_loc6_)
                  {
                     break loop5;
                  }
                  §§goto(addr0251);
               }
               return;
            }
            child.spritesheet.§@S§(true);
            addr0251:
            §#!P§.model.§#"§(false);
            break loop7;
         }
         child.spritesheet.§,=§(98);
         break loop6;
      }
   }
}

