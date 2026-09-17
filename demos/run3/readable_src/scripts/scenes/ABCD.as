package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.Scene3D;
   import nme3D.model.Object3D;
   import nme3D.model.Model;
   
   public class ABCD extends §+Z§
   {
      
      public var duplicator:StageActor;
      
      public var §#!P§:StageActor;
      
      public function ABCD()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super(§>K§.§5+§,0,null,{"startTilesLength":-1});
               if(_loc2_)
               {
                  break;
               }
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc2_)
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
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame4);
               if(!_loc2_)
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
               §§push(frame8);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame9);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame10);
               if(_loc1_)
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
               §§push(frame13);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame14);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame15);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame16);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame17);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame18);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame19);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame20);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame21);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame22);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame23);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame24);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame25);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame26);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc2_)
               {
                  break;
               }
            }
            name = "ABCD";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               tunnel = null;
               if(_loc2_)
               {
                  break;
               }
            }
            §#!P§ = null;
            if(!_loc2_)
            {
               duplicator = null;
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr0052);
            }
            break;
         }
         sprites.length = 0;
         addr0052:
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
               if(!_loc5_)
               {
                  break;
               }
               §#!P§.billboardMode = true;
               if(_loc4_)
               {
                  break;
               }
            }
            sprites.push(§#!P§);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,0);
               if(_loc5_)
               {
                  duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
                  if(!_loc5_)
                  {
                     break;
                  }
                  duplicator.billboardMode = true;
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            sprites.push(duplicator);
            break;
         }
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get("homePlanC");
         if(_loc5_)
         {
            duplicator.goesTo = new § !N§(_loc3_,-1);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.placeAt(9,39.2);
               while(true)
               {
                  if(_loc2_)
                  {
                     §#!P§.spritesheet.§,=§(46);
                     if(!_loc3_)
                     {
                        §#!P§.spritesheet.§@S§(true);
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                  }
                  duplicator.placeAt(8.4,38.5);
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            duplicator.spritesheet.§,=§(64);
            if(!_loc3_)
            {
               break;
            }
            var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
            §§goto(addr0076);
         }
         duplicator.spritesheet.§@S§(false);
         addr0076:
         if(!_loc3_)
         {
            dialog.§";§("The only ones left are you and my son.",-160,-200,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               dialog.§";§("The Angel and the Child.",-280,220,null,null,null,_loc1_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("Plan A and Plan C.",140,320,null,null,-1,null,null);
            break;
         }
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §#!P§.placeAt(9,39.2);
         if(!_loc4_)
         {
            §#!P§.spritesheet.§,=§(46);
            §#!P§.spritesheet.§@S§(true);
            if(_loc3_)
            {
               duplicator.placeAt(8.4,38.5);
               duplicator.spritesheet.§,=§(71);
            }
            duplicator.spritesheet.§@S§(false);
            if(_loc3_)
            {
               dialog.§";§("You hate animals, so the Bunny is out.",-160,-300,null,null,null,null,null);
            }
         }
         var _loc1_:* = §&!S§.width(720);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("You hate common decency, so the Pastafarian is out.",160,-130,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("And you hate me for exposing your schemes.",-40,300,null,null,null,_loc2_,null);
         }
      }
      
      public function frame7() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §#!P§.placeAt(9,39.2);
         §#!P§.spritesheet.§,=§(47);
         §#!P§.spritesheet.§@S§(true);
         duplicator.placeAt(8.4,38.5);
         duplicator.spritesheet.§,=§(80);
         if(_loc3_)
         {
            duplicator.spritesheet.§@S§(false);
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Where do you get these ideas?",180,-140,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(!_loc2_)
         {
            dialog.§";§("It\'s obvious!",-340,20,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Not to anyone with a functioning brain.",200,320,null,null,null,_loc1_,null);
            if(!_loc2_)
            {
               dialog.§";§("Stop trying to deny it!",-200,-300,null,null,1,null,null);
            }
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §#!P§.placeAt(9,39.2);
         §#!P§.spritesheet.§,=§(85);
         while(true)
         {
            if(_loc3_)
            {
               §#!P§.spritesheet.§@S§(true);
               if(!_loc3_)
               {
                  break;
               }
            }
            duplicator.placeAt(8.3,38.2);
            duplicator.spritesheet.§,=§(80);
            duplicator.spritesheet.§@S§(false);
            break;
         }
         dialog.§";§("No, I will not just go away!",-280,-280,null,null,null,null,null);
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Not until you change your plans.",140,-180,null,null,-1,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(680);
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("You aren\'t taking my son anywhere if I can\'t come too!",-20,290,null,_loc2_,null,_loc1_,null);
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(!_loc9_)
         {
            _loc1_.x = -119;
            if(!_loc9_)
            {
               _loc1_.y = -45;
               if(!_loc9_)
               {
                  _loc1_.z = 3094;
               }
            }
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.53588974175501)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(0.7);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(-0.707);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            while(true)
            {
               if(_loc8_)
               {
                  break loop1;
               }
               addr00c2:
               _loc2_.w = Number(Math.cos(1.53588974175501));
               break;
            }
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc2_.x);
                     §§push(_loc2_.y);
                     §§push(_loc2_.y);
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc9_)
                     {
                        break loop3;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
                  break;
               }
               §§push(§§pop() * §§pop());
               break;
            }
            var _loc4_:* = §§pop() + §§pop();
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
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  while(true)
                  {
                     if(_loc8_)
                     {
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc8_)
                        {
                           break loop7;
                        }
                        §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop6;
                        }
                     }
                     §§push(_loc4_);
                     break;
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
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               _loc4_ = §§pop();
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().x = §§pop();
               if(_loc8_)
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
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               break;
            }
            tunnel.camera.reset();
            if(!_loc9_)
            {
               tunnel.display(0);
               §#!P§.placeAt(9,39.2);
               §#!P§.spritesheet.§,=§(71);
               if(!_loc9_)
               {
                  §#!P§.spritesheet.§@S§(true);
                  if(!_loc9_)
                  {
                     duplicator.placeAt(8.3,38.2);
                     while(true)
                     {
                        if(_loc8_)
                        {
                           duplicator.spritesheet.§,=§(80);
                           if(!_loc8_)
                           {
                              break;
                           }
                        }
                        duplicator.spritesheet.§@S§(false);
                        break;
                     }
                  }
               }
            }
            var _loc6_:§ 7§ = new § 6§(duplicator.§<!U§());
            if(!_loc9_)
            {
               dialog.§";§("You couldn\'t be any more obvious if you tried.",-80,-300,null,null,null,_loc6_,null);
            }
            var _loc7_:* = §&!S§.width(430);
            if(_loc8_)
            {
               dialog.§";§("I need some time to myself right now.",280,-150,null,_loc7_,null,null,null);
            }
            _loc7_ = §&!S§.width(430);
            _loc6_ = new § 6§(§#!P§.§<!U§());
            if(!_loc9_)
            {
               dialog.§";§("Without idiots like you bothering me.",380,90,null,_loc7_,-1,_loc6_,null);
            }
            _loc6_ = new § 6§(§#!P§.§<!U§());
            while(true)
            {
               if(_loc8_)
               {
                  dialog.§";§("Go.",-60,260,null,null,null,_loc6_,null);
                  if(_loc9_)
                  {
                     break;
                  }
               }
               dialog.§";§("Away.",100,360,null,null,-1,null,null);
               break;
            }
            return;
         }
         §§push(_loc2_);
         §§push(-0.103);
         if(_loc8_)
         {
            §§push(§§pop() * _loc3_);
         }
         §§pop().z = §§pop();
         if(_loc9_)
         {
            continue loop3;
         }
         §§goto(addr00c2);
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -69;
               if(!_loc8_)
               {
                  _loc1_.y = 3;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 2749;
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
         §§push(Number(Math.sin(0.32288591161895097)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            §§push(_loc2_);
            §§push(0.092);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.514);
                  if(!_loc8_)
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
               §§push(0.853);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc9_)
               {
                  break;
               }
            }
            _loc2_.w = Number(Math.cos(0.32288591161895097));
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.x);
            §§push(_loc2_.x);
            if(_loc9_)
            {
               §§push(§§pop() * §§pop());
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc9_)
               {
                  break;
               }
               §§push(§§pop() * §§pop());
            }
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(_loc2_.z);
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.w);
                        if(!_loc8_)
                        {
                           §§push(_loc2_.w);
                           break loop3;
                        }
                     }
                     addr011a:
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        break loop4;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     break loop4;
                  }
                  break;
               }
               var _loc4_:* = §§pop();
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
               loop6:
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
                           if(!_loc8_)
                           {
                              break loop6;
                           }
                           §§goto(addr0174);
                        }
                        else
                        {
                           §§push(_loc5_);
                        }
                     }
                     §§push(-§§pop());
                     break loop6;
                  }
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           _loc2_.x = 0;
                           if(_loc8_)
                           {
                              break;
                           }
                           _loc2_.y = 0;
                           if(_loc9_)
                           {
                              _loc2_.z = 0;
                              _loc2_.w = 1;
                              break;
                           }
                        }
                        else
                        {
                           addr01e1:
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().y = §§pop();
                           if(_loc8_)
                           {
                              break loop8;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        break;
                     }
                     §§goto(addr0214);
                  }
                  else
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        if(_loc8_)
                        {
                           break loop9;
                        }
                        §§goto(addr01e1);
                     }
                  }
                  §§goto(addr0268);
               }
               §§push(§§pop() < 1e-10);
               if(_loc9_)
               {
                  §§push(!§§pop());
               }
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        addr0214:
                        if(§§pop())
                        {
                           addr0174:
                           §§push(_loc4_);
                           §§push(0);
                           break loop7;
                        }
                        tunnel.camera.reset();
                        if(_loc9_)
                        {
                           tunnel.display(0);
                           if(!_loc8_)
                           {
                              §#!P§.placeAt(9,39);
                              if(_loc8_)
                              {
                                 break loop8;
                              }
                              §#!P§.spritesheet.§,=§(80);
                              if(_loc8_)
                              {
                                 break loop9;
                              }
                           }
                           §#!P§.spritesheet.§@S§(false);
                           if(!_loc8_)
                           {
                              break;
                           }
                           break loop8;
                        }
                        break;
                     }
                     addr0268:
                     duplicator.placeAt(8.3,38.2);
                     duplicator.spritesheet.§,=§(69);
                     break loop8;
                  }
                  var _loc6_:* = §&!S§.width(420);
                  var _loc7_:§ 7§ = new § 6§(duplicator.§<!U§());
                  if(_loc9_)
                  {
                     dialog.§";§("Hah! You aren\'t even trying to deny it!",-380,-110,null,_loc6_,null,_loc7_,250);
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           § !C§("trying");
                           if(!_loc9_)
                           {
                              break;
                           }
                        }
                        dialog.§";§("Oh, I deny it all right.",200,-80,null,null,null,null,null);
                        break;
                     }
                  }
                  _loc6_ = §&!S§.width(420);
                  _loc7_ = new § 6§(§#!P§.§<!U§());
                  if(_loc9_)
                  {
                     dialog.§";§("You\'re 100% wrong, just like always.",340,110,null,_loc6_,-1,_loc7_,null);
                     if(!_loc8_)
                     {
                        dialog.§";§("But seriously, could you just go away?",140,360,null,null,-1,null,null);
                     }
                  }
                  return;
               }
               duplicator.spritesheet.§@S§(true);
               break loop9;
            }
            §§push(Number(§§pop()));
            break loop5;
         }
         §§goto(addr011a);
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = -57;
               if(_loc8_)
               {
                  break;
               }
               _loc1_.y = -6;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 2737;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.32288591161895097)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            §§push(0.092);
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
                  §§push(-0.514);
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc7_)
                  {
                     §§push(_loc2_);
                     §§push(0.853);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
               }
               _loc2_.w = Number(Math.cos(0.32288591161895097));
               break;
            }
         }
         loop3:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc8_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(_loc2_.z);
                  }
                  §§push(_loc2_.z);
                  if(_loc8_)
                  {
                     break loop3;
                  }
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(_loc7_)
               {
                  break;
               }
               §§goto(addr0115);
            }
            §§push(_loc2_.w);
            if(_loc7_)
            {
               §§push(_loc2_.w);
               break;
            }
            §§goto(addr0114);
         }
         addr0115:
         addr0114:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
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
         loop6:
         while(true)
         {
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc7_)
                              {
                                 break loop8;
                              }
                              §§push(_loc5_);
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
                                 break loop9;
                              }
                           }
                           §§push(-§§pop());
                           break;
                        }
                        §§push(§§pop() < 1e-10);
                        if(!_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop7;
                        }
                        if(!_loc7_)
                        {
                           break loop6;
                        }
                        §§push(_loc4_);
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break;
                     }
                     _loc2_.x = 0;
                     if(!_loc8_)
                     {
                        _loc2_.y = 0;
                        if(!_loc8_)
                        {
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                           break loop7;
                        }
                        §§goto(addr029e);
                     }
                     §§goto(addr022f);
                  }
                  _loc4_ = §§pop();
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(_loc7_)
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
                  if(_loc7_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().z = §§pop();
                  break;
               }
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               if(_loc7_)
               {
                  break;
               }
               §§goto(addr029e);
            }
            tunnel.camera.reset();
            if(_loc7_)
            {
               tunnel.display(0);
               §#!P§.placeAt(9,39);
               §#!P§.spritesheet.§,=§(71);
            }
            addr022f:
            §#!P§.spritesheet.§@S§(false);
            duplicator.placeAt(8.3,38.2);
            if(!_loc8_)
            {
               duplicator.spritesheet.§,=§(46);
            }
            duplicator.spritesheet.§@S§(true);
            break;
         }
         dialog.§";§("What? How?",-340,-280,null,null,null,null,null);
         dialog.§";§("Actually, I don\'t care.",0,-140,null,null,-1,null,null);
         var _loc6_:§ 7§ = new § 6§(§#!P§.§<!U§());
         addr029e:
         if(_loc7_)
         {
            dialog.§";§("Please go away.",320,60,null,null,-1,_loc6_,null);
         }
      }
      
      public function frame26() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(9,39.4);
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.spritesheet.§,=§(80);
               if(_loc3_)
               {
                  break;
               }
               §#!P§.spritesheet.§@S§(true);
               duplicator.placeAt(8.5,36.5);
               duplicator.spritesheet.§,=§(78);
               if(!_loc4_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§@S§(false);
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr009b);
         }
         dialog.§";§("You know...",-320,-320,null,null,null,null,null);
         addr009b:
         var _loc1_:* = §&!S§.width(900);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("If we\'re really going home, why aren\'t we going the same way we came?",-40,-190,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("That\'s Plan E! Go away!",100,300,null,null,null,_loc2_,null);
         }
      }
      
      public function frame25() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §#!P§.placeAt(9,39.3);
            §#!P§.spritesheet.§,=§(80);
            §#!P§.spritesheet.§@S§(true);
            duplicator.placeAt(8.4,38.5);
            if(!_loc4_)
            {
               duplicator.spritesheet.§,=§(47);
               if(!_loc4_)
               {
                  duplicator.spritesheet.§@S§(true);
               }
            }
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("You know, I don\'t like your tone.",-220,-300,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(650);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("Then go away, and you won\'t have to listen to me.",220,-150,null,_loc2_,null,_loc1_,null);
               if(_loc4_)
               {
                  break;
               }
            }
            § !C§("go away");
            break;
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Fine!",-80,240,null,null,null,_loc1_,null);
         }
      }
      
      public function frame24() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(9,39.3);
         §#!P§.spritesheet.§,=§(67);
         §#!P§.spritesheet.§@S§(true);
         if(_loc4_)
         {
            duplicator.placeAt(8.4,38.5);
            duplicator.spritesheet.§,=§(87);
         }
         duplicator.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(670);
         if(_loc4_)
         {
            dialog.§";§("Now if you don\'t mind, I am going to continue preparing.",-120,-310,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(900);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("You are going to go away and stop trying to cast doubt on my competence.",80,-150,null,_loc1_,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(850);
         if(_loc4_)
         {
            dialog.§";§("Then in 2.5 months, we will all meet back up at Launch Site A, and you will not interfere while I take us home.",20,290,null,_loc1_,-1,null,null);
         }
      }
      
      public function frame23() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §#!P§.placeAt(9,39.2);
               if(_loc3_)
               {
                  §#!P§.spritesheet.§,=§(66);
               }
               §#!P§.spritesheet.§@S§(true);
               if(!_loc3_)
               {
                  break;
               }
               duplicator.placeAt(8.4,38.5);
               if(!_loc3_)
               {
                  break;
               }
               duplicator.spritesheet.§,=§(80);
            }
            duplicator.spritesheet.§@S§(false);
            dialog.§";§("How do you know?",-160,-300,null,null,null,null,null);
            break;
         }
         var _loc1_:* = §&!S§.width(900);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("You don\'t even know what ideas I may or may not have come up with!",-100,-150,null,_loc1_,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(900);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("How many tests have you done? How many trajectories have you plotted?",-40,250,null,_loc1_,null,_loc2_,null);
            while(true)
            {
               if(!_loc4_)
               {
                  dialog.§";§("None?",-60,360,null,null,-1,null,null);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               dialog.§";§("That\'s how I know.",320,380,null,null,-1,null,null);
               break;
            }
         }
      }
      
      public function frame22() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §#!P§.placeAt(9,39.2);
         §#!P§.spritesheet.§,=§(65);
         if(!_loc4_)
         {
            §#!P§.spritesheet.§@S§(true);
         }
         duplicator.placeAt(8.4,38.5);
         duplicator.spritesheet.§,=§(71);
         if(_loc3_)
         {
            duplicator.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(1000);
         if(!_loc4_)
         {
            dialog.§";§("You\'re trying to say that since I\'m not 100% certain, and you\'re not 100% certain either,",-90,-250,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("that your ideas are as good as mine.",200,-160,null,null,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Well, they aren\'t!",80,280,null,null,null,_loc2_,null);
         }
      }
      
      public function frame21() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(9,39.2);
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.spritesheet.§,=§(80);
               if(_loc3_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§@S§(false);
            break;
         }
         duplicator.placeAt(8.4,38.5);
         duplicator.spritesheet.§,=§(64);
         if(_loc4_)
         {
            duplicator.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(800);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("You can\'t have absolute certainty. That\'s not a thing you can have.",-120,-270,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               dialog.§";§("Oh shut up!",340,-60,null,null,null,_loc2_,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            § !C§("up");
            break;
         }
         _loc1_ = §&!S§.width(800);
         if(!_loc3_)
         {
            dialog.§";§("I\'ve heard this sad excuse for an argument a thousand times before!",40,270,null,_loc1_,-1,null,null);
         }
      }
      
      public function frame20() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(9,39.2);
         §#!P§.spritesheet.§,=§(77);
         §#!P§.spritesheet.§@S§(false);
         duplicator.placeAt(8.4,38.5);
         while(true)
         {
            if(!_loc3_)
            {
               duplicator.spritesheet.§,=§(64);
               if(!_loc4_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§@S§(false);
            if(_loc4_)
            {
               dialog.§";§("Of course I know that!",-260,-340,null,null,null,null,null);
            }
            break;
         }
         dialog.§";§("Four backup plans, remember?",200,-260,null,null,-1,null,null);
         var _loc1_:* = §&!S§.width(700);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("I\'m not taking any chances with something this important!",100,-110,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("But you said Plan A-",-300,260,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(630);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Because I\'m not taking any chances with Plan A either!",200,290,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = -36;
               if(_loc7_)
               {
                  break;
               }
               _loc1_.y = -7;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 2686;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.32288591161895097)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            §§push(0.092);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(-0.514);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     §§push(0.853);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  _loc2_.w = Number(Math.cos(0.32288591161895097));
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
               loop13:
               while(true)
               {
                  §§push(_loc2_.x);
                  if(_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc2_.x);
                        if(_loc8_)
                        {
                           §§push(§§pop() * §§pop());
                           §§push(_loc2_.y);
                           §§push(_loc2_.y);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 break loop4;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc8_)
                              {
                                 break loop3;
                              }
                              §§push(Number(§§pop()));
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(_loc2_.z);
                              §§push(_loc2_.z);
                              if(!_loc8_)
                              {
                                 break loop13;
                              }
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        break;
                     }
                  }
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
                  break;
               }
               §§push(§§pop() * §§pop());
               break;
            }
            §§push(§§pop() + §§pop());
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr0121);
         }
         addr0121:
         var _loc4_:* = Number(§§pop());
         while(true)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(_loc7_)
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
               loop8:
               while(true)
               {
                  while(true)
                  {
                     if(_loc8_)
                     {
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(0);
                        if(!_loc8_)
                        {
                           break loop8;
                        }
                        §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                        if(!_loc7_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop7;
                        }
                        if(_loc7_)
                        {
                           break loop6;
                        }
                     }
                     §§push(_loc4_);
                     §§push(0);
                     break loop8;
                  }
                  §§goto(addr01ce);
               }
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc8_)
                     {
                        _loc2_.x = 0;
                        if(_loc7_)
                        {
                           break;
                        }
                        _loc2_.y = 0;
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              _loc2_.z = 0;
                              if(_loc8_)
                              {
                                 _loc2_.w = 1;
                                 break loop7;
                              }
                              §§goto(addr0265);
                           }
                           §§goto(addr0244);
                        }
                        §§goto(addr0270);
                     }
                  }
                  else
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(!_loc7_)
                     {
                        break loop10;
                     }
                     addr01ce:
                     _loc4_ = §§pop();
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  break;
               }
               §§push(_loc2_);
               §§push(_loc2_.y);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().y = §§pop();
               if(!_loc7_)
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
                  if(_loc8_)
                  {
                     break;
                  }
                  §§goto(addr0232);
               }
               §§goto(addr0229);
            }
            tunnel.camera.reset();
            while(true)
            {
               if(_loc8_)
               {
                  addr0229:
                  tunnel.display(0);
                  addr0232:
                  §#!P§.placeAt(9,39);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §#!P§.spritesheet.§,=§(71);
                  §#!P§.spritesheet.§@S§(true);
                  duplicator.placeAt(8.2,38.1);
               }
               addr0265:
               duplicator.spritesheet.§,=§(47);
               break;
            }
            addr0270:
            duplicator.spritesheet.§@S§(true);
            break;
         }
         var _loc6_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("Is that all?",-240,-40,null,null,null,_loc6_,null);
         }
         _loc6_ = new § 6§(duplicator.§<!U§());
         if(!_loc7_)
         {
            dialog.§";§("Don\'t give me that!",300,80,null,null,null,_loc6_,null);
         }
         _loc6_ = new § 6§(duplicator.§<!U§());
         if(!_loc7_)
         {
            dialog.§";§("You\'re trying to take my son away from me!",20,360,null,null,null,_loc6_,null);
         }
      }
      
      public function frame19() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §#!P§.placeAt(9,39.2);
         while(true)
         {
            if(_loc2_)
            {
               §#!P§.spritesheet.§,=§(71);
               if(!_loc3_)
               {
                  §#!P§.spritesheet.§@S§(false);
                  duplicator.placeAt(8.4,38.5);
                  duplicator.spritesheet.§,=§(77);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               duplicator.spritesheet.§@S§(false);
            }
            dialog.§";§("Well... you claimed to know the future.",-160,-300,null,null,null,null,null);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("That\'s pretty arrogant.",100,-140,null,null,-1,_loc1_,null);
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("Don\'t you know you can\'t be 100% certain?",20,260,null,null,null,_loc1_,null);
         }
      }
      
      public function frame18() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §#!P§.placeAt(9,39.2);
         §#!P§.spritesheet.§,=§(65);
         if(_loc3_)
         {
            §#!P§.spritesheet.§@S§(true);
            duplicator.placeAt(8.4,38.5);
         }
         duplicator.spritesheet.§,=§(71);
         duplicator.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Well aren\'t you arrogant.",-310,-180,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Arrogant?",200,-140,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(660);
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("I made four backup plans that we won\'t even need.",80,250,null,_loc2_,-1,null,null);
               if(_loc4_)
               {
                  break;
               }
            }
            § !C§("four");
            if(_loc3_)
            {
               break;
            }
            §§goto(addr0143);
         }
         dialog.§";§("In what way am I arrogant?",-180,380,null,null,-1,null,null);
         addr0143:
      }
      
      public function frame17() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §#!P§.placeAt(9,39.2);
         while(true)
         {
            if(!_loc4_)
            {
               §#!P§.spritesheet.§,=§(69);
               §#!P§.spritesheet.§@S§(false);
               duplicator.placeAt(8.4,38.5);
               duplicator.spritesheet.§,=§(80);
               if(_loc4_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("How do you know Plan C won\'t fail?",-120,-160,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("It\'s my plan.",380,0,null,null,null,_loc1_,null);
            if(_loc3_)
            {
               § !C§("my");
            }
         }
         var _loc2_:* = §&!S§.width(770);
         if(!_loc4_)
         {
            dialog.§";§("Besides, Plan A will succeed, so we won\'t even get to Plan C.",20,310,null,_loc2_,-1,null,null);
         }
      }
      
      public function frame16() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §#!P§.placeAt(9,39.2);
            §#!P§.spritesheet.§,=§(66);
            §#!P§.spritesheet.§@S§(true);
            duplicator.placeAt(8.4,38.5);
            duplicator.spritesheet.§,=§(87);
            if(_loc3_)
            {
               duplicator.spritesheet.§@S§(false);
            }
         }
         var _loc1_:* = §&!S§.width(840);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Same with Plan D: we\'ll be trying it right here at Launch Site C, if Plan C fails.",20,-210,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.scale(0.9);
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Not that Plan C will fail.",-20,340,_loc1_,null,null,_loc2_,null);
         }
      }
      
      public function frame15() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(9,39.2);
         §#!P§.spritesheet.§,=§(66);
         §#!P§.spritesheet.§@S§(true);
         if(_loc4_)
         {
            duplicator.placeAt(8.4,38.5);
            duplicator.spritesheet.§,=§(71);
            duplicator.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(680);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("If you\'re using alphabetical order, why\'d you skip Plan B?",-40,-230,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("I didn\'t!",280,160,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(920);
         if(_loc4_)
         {
            dialog.§";§("But Plans A and B will be at the same place,\nso I just called it \"Launch Site A.\"",20,310,null,_loc1_,-1,null,null);
         }
      }
      
      public function frame14() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(!_loc9_)
         {
            _loc1_.x = -133;
            if(!_loc9_)
            {
               _loc1_.y = 70;
               if(!_loc9_)
               {
                  _loc1_.z = 3043;
               }
            }
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(1.2479104151759457)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(0.646);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  break;
               }
               §§push(_loc2_);
               §§push(-0.713);
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
            §§push(0.272);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc8_)
            {
               _loc2_.w = Number(Math.cos(1.2479104151759457));
            }
            break;
         }
         loop2:
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            §§push(_loc2_.y);
            §§push(_loc2_.y);
            if(!_loc9_)
            {
               while(true)
               {
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                  }
                  §§push(_loc2_.w);
                  §§push(_loc2_.w);
                  break;
               }
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
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
                  if(!_loc9_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc5_);
                        if(_loc9_)
                        {
                        }
                        addr015c:
                        §§push(§§pop() < 1e-10);
                        if(!_loc9_)
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
                           break loop5;
                        }
                     }
                     else
                     {
                        §§push(_loc5_);
                        if(!_loc9_)
                        {
                           §§goto(addr015c);
                           §§push(-§§pop());
                        }
                     }
                     §§push(0);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(1 / Number(Math.sqrt(_loc4_)));
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break loop5;
                  }
                  _loc2_.x = 0;
                  if(_loc8_)
                  {
                     _loc2_.y = 0;
                     _loc2_.z = 0;
                     _loc2_.w = 1;
                     if(_loc8_)
                     {
                        break loop6;
                     }
                     §§goto(addr0243);
                  }
                  else
                  {
                     §§goto(addr01ef);
                  }
               }
               §§goto(addr0227);
            }
            tunnel.camera.reset();
            §§goto(addr021e);
         }
         _loc4_ = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(_loc2_.x);
               if(!_loc9_)
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
                  addr01ef:
                  §§push(_loc2_);
                  §§push(_loc2_.z);
                  if(!_loc9_)
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
                  if(!_loc9_)
                  {
                     break loop6;
                  }
                  addr021e:
                  tunnel.display(0);
                  addr0227:
                  §#!P§.placeAt(9,39.2);
                  §#!P§.spritesheet.§,=§(69);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §#!P§.spritesheet.§@S§(false);
               }
               duplicator.placeAt(8.4,38.5);
            }
            duplicator.spritesheet.§,=§(87);
            if(_loc8_)
            {
               duplicator.spritesheet.§@S§(false);
               if(_loc8_)
               {
                  break;
               }
               §§goto(addr029b);
            }
            break;
         }
         dialog.§";§("This may blow your mind, but...",-280,-360,null,null,null,null,null);
         addr029b:
         var _loc6_:* = §&!S§.width(600);
         if(_loc8_)
         {
            dialog.§";§("Have you heard of something called \"the Alphabet\"?",-260,-250,null,_loc6_,-1,null,null);
         }
         _loc6_ = §&!S§.width(630);
         var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("Plan A is first, then Plan B, then Plan C, and so on.",200,-110,null,_loc6_,-1,_loc7_,null);
         }
         _loc6_ = §&!S§.width(570);
         if(_loc8_)
         {
            dialog.§";§("If you forget what comes after C, go ask your son.",180,290,null,_loc6_,-1,null,null);
         }
      }
      
      public function frame13() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(9,39.2);
         if(!_loc3_)
         {
            §#!P§.spritesheet.§,=§(46);
         }
         §#!P§.spritesheet.§@S§(true);
         duplicator.placeAt(8.4,38.5);
         duplicator.spritesheet.§,=§(80);
         duplicator.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Stop deflecting!",-240,-300,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Ok, ok.",180,-120,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(1040);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("You got a laugh out of me, so I\'ll take a moment to pretend you have something resembling a point.",0,350,null,_loc2_,null,_loc1_,null);
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §#!P§.placeAt(9,39.2);
         §#!P§.spritesheet.§,=§(46);
         §#!P§.spritesheet.§@S§(true);
         if(_loc2_)
         {
            duplicator.placeAt(8.4,38.5);
         }
         duplicator.spritesheet.§,=§(87);
         duplicator.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Heh, good one! I needed that.",200,-280,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("This isn\'t funny!",-400,20,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(_loc2_)
            {
               dialog.§";§("Plan C for Child!",80,320,null,null,null,_loc1_,null);
               if(!_loc2_)
               {
                  break;
               }
            }
            dialog.§";§("Heh.",320,380,null,null,-1,null,null);
            break;
         }
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.placeAt(9,39.2);
               if(_loc3_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(69);
            if(_loc2_)
            {
               §#!P§.spritesheet.§@S§(false);
               if(!_loc3_)
               {
                  duplicator.placeAt(8.4,38.5);
                  while(true)
                  {
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     addr007b:
                     duplicator.spritesheet.§@S§(false);
                     break;
                  }
               }
               §§goto(addr0085);
            }
            break;
         }
         duplicator.spritesheet.§,=§(87);
         if(!_loc3_)
         {
            §§goto(addr007b);
         }
         addr0085:
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Ha!",60,-240,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("Haha!",240,280,null,null,null,_loc1_,null);
         }
      }
      
      public function frame10() : void
      {
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = 7;
               if(!_loc8_)
               {
                  _loc1_.y = -26;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 2609;
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
         §§push(Number(Math.sin(0.32288591161895097)));
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
               §§push(0.092);
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
            §§push(-0.514);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(0.853);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc8_)
               {
                  _loc2_.w = Number(Math.cos(0.32288591161895097));
               }
            }
            break;
         }
         §§push(_loc2_.x);
         if(!_loc8_)
         {
            §§push(§§pop() * _loc2_.x);
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
                  if(_loc9_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        break loop4;
                     }
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc8_)
                  {
                     §§push(§§pop() + §§pop());
                     break;
                  }
                  §§goto(addr011d);
               }
               §§push(Number(§§pop()));
               §§push(_loc2_.w);
               if(!_loc8_)
               {
                  §§push(_loc2_.w);
                  break loop3;
               }
               §§goto(addr011d);
            }
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(_loc9_)
            {
               §§push(§§pop() - 1);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            loop6:
            while(true)
            {
               if(!_loc8_)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(0);
                     if(!_loc8_)
                     {
                        §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                        if(_loc9_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break loop6;
                        }
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                        break;
                     }
                     if(_loc9_)
                     {
                        _loc2_.x = 0;
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        if(_loc9_)
                        {
                           _loc2_.w = 1;
                           break loop6;
                        }
                        §§goto(addr0256);
                     }
                     §#!P§.placeAt(9,39);
                     if(_loc9_)
                     {
                        §#!P§.spritesheet.§,=§(70);
                        §#!P§.spritesheet.§@S§(false);
                        duplicator.placeAt(8.2,38.1);
                     }
                     duplicator.spritesheet.§,=§(47);
                     if(_loc9_)
                     {
                        duplicator.spritesheet.§@S§(true);
                     }
                     addr0256:
                     var _loc6_:* = §&!S§.width(1000);
                     if(_loc9_)
                     {
                        dialog.§";§("When you picked out names for these tunnels, you made some peculiar choices.",0,-310,null,_loc6_,null,null,null);
                        if(_loc9_)
                        {
                           dialog.§";§("Plan A.",-160,-120,null,null,-1,null,null);
                           if(_loc9_)
                           {
                              dialog.§";§("Plan C.",220,40,null,null,-1,null,null);
                           }
                        }
                     }
                     var _loc7_:§ 7§ = new § 6§(duplicator.§<!U§());
                     if(!_loc8_)
                     {
                        dialog.§";§("But no Plan B or D.",300,260,null,null,-1,_loc7_,null);
                     }
                     return;
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
               }
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
            tunnel.camera.reset();
            tunnel.display(0);
            §§goto(addr0208);
         }
         addr011d:
         §§push(§§pop() + §§pop() * §§pop());
         break loop4;
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(_loc8_)
            {
               _loc1_.x = 41;
               if(!_loc8_)
               {
                  break;
               }
               _loc1_.y = -36;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 2540;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.32288591161895097)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(0.092);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc7_)
               {
                  §§push(_loc2_);
                  §§push(-0.514);
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
            }
            §§push(_loc2_);
            §§push(0.853);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc8_)
            {
               _loc2_.w = Number(Math.cos(0.32288591161895097));
            }
            break;
         }
         while(true)
         {
            §§push(_loc2_.x * _loc2_.x);
            if(!_loc7_)
            {
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  break;
               }
               §§push(§§pop() + §§pop() * §§pop());
            }
            §§push(_loc2_.z);
            §§push(_loc2_.z);
            if(_loc8_)
            {
               break;
            }
            §§goto(addr0107);
         }
         §§push(§§pop() + §§pop() * §§pop());
         if(!_loc7_)
         {
            addr0107:
            addr0112:
            §§push(§§pop() + §§pop() * §§pop());
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
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
            var _loc5_:* = §§pop();
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           loop9:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    §§push(0);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          break loop6;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             break loop9;
                                          }
                                          §§goto(addr01ba);
                                       }
                                       §§goto(addr0201);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                          break loop9;
                                       }
                                    }
                                 }
                                 §§push(-§§pop());
                                 break loop9;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    break loop8;
                                 }
                                 _loc2_.x = 0;
                                 _loc2_.y = 0;
                                 if(!_loc8_)
                                 {
                                    break loop7;
                                 }
                                 _loc2_.z = 0;
                                 _loc2_.w = 1;
                                 §§goto(addr0201);
                              }
                              else
                              {
                                 §§goto(addr01ba);
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                              }
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr01ba:
                                 §§push(_loc4_);
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    break loop10;
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(_loc2_);
                                 §§push(_loc2_.x);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().x = §§pop();
                                 §§push(_loc2_);
                                 §§push(_loc2_.y);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().y = §§pop();
                                 §§push(_loc2_);
                                 §§push(_loc2_.z);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().z = §§pop();
                                 §§push(_loc2_);
                                 §§push(_loc2_.w);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().w = §§pop();
                              }
                              addr0201:
                              tunnel.camera.reset();
                              if(_loc8_)
                              {
                                 break;
                              }
                              break loop5;
                           }
                        }
                        tunnel.display(0);
                        if(_loc8_)
                        {
                           §#!P§.placeAt(9,39);
                           if(_loc8_)
                           {
                              §#!P§.spritesheet.§,=§(64);
                              break loop7;
                           }
                           §§goto(addr0247);
                        }
                        §§goto(addr0275);
                     }
                     §§goto(addr0296);
                  }
                  §#!P§.spritesheet.§@S§(true);
                  addr0247:
                  duplicator.placeAt(8,38);
                  if(!_loc7_)
                  {
                     break;
                  }
                  break loop5;
               }
               duplicator.spritesheet.§,=§(48);
               break;
            }
            duplicator.spritesheet.§@S§(true);
            if(_loc8_)
            {
               addr0275:
               dialog.§";§("You can\'t fool me!",-360,-160,null,null,null,null,null);
            }
            addr0296:
            var _loc6_:§ 7§ = new § 6§(duplicator.§<!U§());
            if(!_loc7_)
            {
               dialog.§";§("I cracked your code!",-360,40,null,null,-1,_loc6_,null);
            }
            _loc6_ = new § 6§(§#!P§.§<!U§());
            if(!_loc7_)
            {
               dialog.§";§("Oh great, what now?",260,-60,null,null,null,_loc6_,null);
            }
            return;
            §§push(Number(§§pop()));
            §§push(_loc2_.w);
            §§push(_loc2_.w);
         }
         §§goto(addr0112);
      }
   }
}

