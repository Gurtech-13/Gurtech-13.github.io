package §3!b§
{
   import §!!$§.§ 6§;
   import §!!X§.§!_§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§-p§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.save.§]k§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class WormholeInSight extends §+Z§
   {
      
      public var skater:§^s§;
      
      public var §-P§:§^s§;
      
      public function WormholeInSight()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super(§>K§.§`S§,-1,null,{"endTiles":false});
            if(!_loc1_)
            {
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame1);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame2);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame3);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame4);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc2_)
               {
                  name = "Wormhole in Sight";
               }
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               tunnel = null;
               if(_loc2_)
               {
                  §-P§ = null;
                  if(!_loc1_)
                  {
                     skater = null;
                     if(_loc1_)
                     {
                        break;
                     }
                  }
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            if(_loc6_)
            {
               sprites.push(§-P§);
            }
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
               §-P§.goesTo = new § !N§(_loc2_,-1);
               if(!_loc6_)
               {
                  break;
               }
            }
            skater = new §^s§(§9_§,§'O§.skater,false,null,false,null);
            if(_loc6_)
            {
               sprites.push(skater);
            }
            break;
         }
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc6_)
         {
            skater.goesTo = new § !N§(_loc4_,-2);
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §-P§.§9E§(12.5,-1.7,true,2);
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.spritesheet.§,=§(75);
               if(!_loc4_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§@S§(false);
            skater.§9E§(14.5,-7,true);
            skater.spritesheet.§,=§(77);
            if(!_loc3_)
            {
               skater.spritesheet.§@S§(false);
               if(_loc4_)
               {
                  dialog.§";§("First, let\'s try the easy way:",-80,-240,null,null,null,null,null);
               }
            }
            break;
         }
         var _loc1_:* = §&!S§.width(420);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Check for any tunnels we missed.",140,-50,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("On it!",-120,240,null,null,null,_loc2_,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            §-P§.§2e§(skater);
            break;
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               §-P§.§9E§(12.5,-1.7,true,2);
               §-P§.spritesheet.§,=§(75);
               loop1:
               while(true)
               {
                  if(_loc3_)
                  {
                     §-P§.spritesheet.§@S§(false);
                     while(true)
                     {
                        if(_loc3_)
                        {
                           skater.§9E§(14.5,-2,true);
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        skater.spritesheet.§,=§(83);
                        if(_loc3_)
                        {
                           skater.spritesheet.§@S§(false);
                           if(!_loc4_)
                           {
                              break;
                           }
                           break loop0;
                        }
                        break loop1;
                     }
                  }
                  dialog.§";§("So how do we get there from here?",-220,-260,null,null,null,null,null);
                  break;
               }
            }
            dialog.§";§("From here?",260,-200,null,null,null,null,null);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("You have a plan, don\'t deny it.",-160,-80,null,null,0,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(70);
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("...",280,20,null,_loc2_,1,_loc1_,null);
            if(_loc3_)
            {
               §-P§.§2e§(skater);
            }
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §-P§.§9E§(12.5,-1.7,true,2);
         §-P§.spritesheet.§,=§(78);
         §-P§.spritesheet.§@S§(false);
         skater.§9E§(14.5,-2,true,2);
         skater.spritesheet.§,=§(72);
         skater.spritesheet.§@S§(false);
         dialog.§";§("The Student identified it as a wormhole.",0,-280,null,null,null,null,null);
         var _loc1_:* = §&!S§.width(700);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("It connects our solar system to some other point in the Universe.",120,-70,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("Cool!",-100,280,null,null,null,_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            §-P§.§2e§(skater);
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §-P§.§9E§(12.5,-1.7,true,2);
         §-P§.spritesheet.§,=§(78);
         §-P§.spritesheet.§@S§(false);
         while(true)
         {
            if(_loc3_)
            {
               skater.§9E§(14.5,-2,true);
               skater.spritesheet.§,=§(50);
               if(_loc4_)
               {
                  break;
               }
               skater.spritesheet.§@S§(true);
            }
            dialog.§";§("No worries. We\'ll just-",60,-260,null,null,null,null,null);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("What is that thing, anyway?",-140,-140,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Huh?",220,0,null,null,0,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(530);
         _loc1_ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("What is it? All I know is we\'re trying to get there.",60,330,null,_loc2_,null,_loc1_,null);
            if(!_loc4_)
            {
               §-P§.§2e§(skater);
            }
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(_loc8_)
         {
            _loc1_.x = -22;
            if(!_loc7_)
            {
               _loc1_.y = -33;
               if(_loc8_)
               {
                  _loc1_.z = 4868;
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
         §§push(Number(Math.sin(1.2566370614359172)));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(0.01);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc7_)
               {
                  break;
               }
               §§push(_loc2_);
               §§push(0.031);
               if(!_loc7_)
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
            §§push(0.999);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(!_loc7_)
            {
               break;
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc2_.x);
                     §§push(_loc2_.x);
                     if(_loc8_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.y);
                        §§push(_loc2_.y);
                        if(_loc7_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc7_)
                        {
                           break loop2;
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                           §§push(_loc2_.z);
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break loop3;
                           }
                           §§goto(addr0123);
                        }
                        §§goto(addr011c);
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr0135);
               }
               §§push(§§pop() * §§pop());
               if(_loc7_)
               {
                  break;
               }
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc8_)
                  {
                     addr011c:
                     §§push(Number(§§pop()));
                     §§push(_loc2_.w);
                     break loop2;
                  }
                  §§goto(addr012c);
               }
               §§goto(addr0134);
            }
            addr0123:
            while(true)
            {
               §§push(§§pop() + §§pop() * _loc2_.w);
               if(!_loc7_)
               {
                  addr012c:
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               addr0134:
               §§push(Number(§§pop()));
               break;
            }
            addr0135:
            var _loc4_:* = §§pop();
            while(true)
            {
               §§push(_loc4_);
               if(_loc8_)
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
                        §§push(_loc5_);
                        if(_loc8_)
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
                                 break loop8;
                              }
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 §§push(-§§pop());
                              }
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop7;
                           }
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              break loop6;
                           }
                        }
                        §§push(0);
                        break;
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break loop6;
                     }
                     _loc2_.x = 0;
                     if(!_loc7_)
                     {
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                        if(_loc8_)
                        {
                           break loop7;
                        }
                        §§goto(addr01e1);
                     }
                     §§goto(addr0206);
                  }
                  §-P§.spritesheet.§@S§(false);
                  if(!_loc7_)
                  {
                     §§goto(addr0258);
                  }
                  §§goto(addr0268);
               }
               tunnel.§<!M§.reset();
               tunnel.display(0);
               §-P§.§9E§(12.5,-2,true,2);
               if(!_loc7_)
               {
                  §-P§.spritesheet.§,=§(46);
                  break loop8;
               }
               addr0258:
               skater.§9E§(14.5,-3.7,true,16);
               addr0268:
               skater.spritesheet.§,=§(8);
               skater.spritesheet.§@S§(true);
               var _loc6_:§ 7§ = new § 6§(skater.§<!U§());
               if(_loc8_)
               {
                  dialog.§";§("Oh come on!",-280,-180,null,null,null,_loc6_,null);
               }
               _loc6_ = new § 6§(skater.§<!U§());
               if(!_loc7_)
               {
                  dialog.§";§("We were almost there!",-40,320,null,null,null,_loc6_,null);
                  if(_loc8_)
                  {
                     §-P§.§2e§(skater);
                  }
               }
               return;
            }
            _loc4_ = §§pop();
            §§push(_loc2_);
            §§push(_loc2_.x);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().x = §§pop();
            addr01e1:
            §§push(_loc2_);
            §§push(_loc2_.y);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc4_);
            }
            §§pop().y = §§pop();
            if(!_loc7_)
            {
               §§push(_loc2_);
               §§push(_loc2_.z);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().z = §§pop();
               addr0206:
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc7_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
            }
            break loop7;
         }
         _loc2_.w = Number(Math.cos(1.2566370614359172));
         continue loop3;
      }
      
      override public function §3! §() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            super.§3! §();
         }
         var _loc1_:TunnelSection = tunnel.§1W§;
         var _loc2_:Point = _loc1_.§#5§;
         §§push(0.4);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Number(_loc2_.x);
         if(_loc6_)
         {
            _loc2_.x = _loc4_ + _loc3_ * (§!_§.§,K§ - _loc4_);
         }
         var _loc5_:Number = Number(_loc2_.y);
         while(true)
         {
            if(!_loc7_)
            {
               _loc2_.y = _loc5_ + _loc3_ * (§!_§.§#!4§ - _loc5_);
               if(!_loc6_)
               {
                  break;
               }
            }
            tunnel.§<!Y§.§"!b§(0).§6s§.§8b§(_loc2_.x,_loc2_.y);
            break;
         }
      }
   }
}

