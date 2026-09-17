package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §6!Q§.§]u§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   
   public class Indecision extends §+Z§
   {
      
      public var §3![§:Function;
      
      public var pastafarian:StageActor;
      
      public var §#!P§:StageActor;
      
      public function Indecision()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               super(§>K§.§?t§,8,null,{"endTiles":false});
               if(_loc1_)
               {
                  break;
               }
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
            if(!_loc1_)
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
            if(!_loc1_)
            {
               §§push(§§pop());
            }
            §§push(frame6);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr00b9);
         }
         name = "Indecision";
         addr00b9:
      }
      
      override public function §1!F§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            CharacterRegistry.§7W§.§>t§.§?F§(§>K§.§<Y§.pathName);
            if(_loc1_)
            {
               CharacterRegistry.§7W§.§ j§.§?F§(1);
               if(_loc1_)
               {
                  super.§1!F§();
               }
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  tunnel = null;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §#!P§ = null;
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               pastafarian = null;
               if(!_loc1_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         sprites.length = 0;
         break loop1;
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(false);
                     if(_loc4_)
                     {
                        §§push(param2);
                        if(!_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    break loop1;
                                 }
                                 §§push(§3![§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() == null);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              break;
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§!!6§ == 4);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  break;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               if(_loc4_)
               {
                  §]u§.§@!A§().§5!@§ = false;
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            else
            {
               super.loadNext(param1,param2);
            }
            §§goto(addr00dd);
         }
         §3![§();
         if(_loc3_)
         {
         }
         addr00dd:
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
               if(_loc6_)
               {
                  break;
               }
            }
            sprites.push(§#!P§);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(_loc5_)
         {
            §#!P§.goesTo = new § !N§(_loc2_,8);
            while(true)
            {
               if(!_loc6_)
               {
                  pastafarian = new StageActor(section,CharacterRegistry.pastafarian,false,null,false,null);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               sprites.push(pastafarian);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc5_)
         {
            pastafarian.goesTo = new § !N§(_loc4_,10);
         }
      }
      
      public function frame6() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §#!P§.placeAt(5,25);
               if(!_loc2_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(75);
            if(_loc2_)
            {
               break;
            }
            var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
            §§goto(addr004f);
         }
         §#!P§.spritesheet.§@S§(false);
         addr004f:
         if(!_loc3_)
         {
            dialog.§";§("It\'s tempting, but it just wouldn\'t work.",0,360,null,null,null,_loc1_,null);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §#!P§.placeAt(4.9,25.25);
               if(!_loc3_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(71);
            if(_loc3_)
            {
               §#!P§.spritesheet.§@S§(false);
            }
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("Wait, no.",280,-80,null,null,null,_loc1_,null);
               if(_loc2_)
               {
                  break;
               }
            }
            dialog.§";§("I have to wait a couple months either way.",80,320,null,null,-1,null,null);
            break;
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dialog.§";§("I\'d never have to see the Pastafarian again!",20,-160,null,null,null,null,null);
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc2_)
         {
            dialog.§";§("It\'s not like I owe the other jerks anything...",-60,280,null,null,-1,_loc1_,null);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §#!P§.placeAt(4.9,25.3);
            while(true)
            {
               if(_loc2_)
               {
                  §#!P§.spritesheet.§,=§(46);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §#!P§.spritesheet.§@S§(true);
               break;
            }
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("And... she\'s gone!",-80,-240,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Now\'s my chance to head home without her.",0,360,null,null,null,_loc1_,null);
            if(_loc2_)
            {
               pastafarian.model.§#"§(false);
            }
         }
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §#!P§.placeAt(5,25.3,null,1);
               if(!_loc2_)
               {
                  §#!P§.spritesheet.§,=§(28);
                  if(!_loc2_)
                  {
                     pastafarian.placeAt(5,39,null,37);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            pastafarian.spritesheet.§,=§(4);
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §#!P§.placeAt(5,25.2,null,3);
         if(!_loc4_)
         {
            §#!P§.spritesheet.§,=§(38);
            §#!P§.spritesheet.§@S§(false);
            pastafarian.placeAt(5.5,28,null,-6);
            pastafarian.spritesheet.§,=§(86);
         }
         pastafarian.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Don\'t forget to practice being nice!",-120,-120,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.scale(0.6);
         while(true)
         {
            if(_loc3_)
            {
               dialog.§`!^§("Who does she think\nshe is, anyway?",160,220,_loc2_,null,0);
               if(_loc4_)
               {
                  break;
               }
            }
            pastafarian.alignWith(§#!P§);
            break;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         if(_loc9_)
         {
            _loc1_.x = 0;
            while(true)
            {
               if(_loc9_)
               {
                  _loc1_.y = 57;
                  if(_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 1730;
               break;
            }
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
         §§push(Number(Math.sin(0.11344640137963143)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc2_);
            §§push(-0.184);
            if(!_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.609);
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
               §§push(_loc2_);
               §§push(0.772);
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
            _loc2_.w = Number(Math.cos(0.11344640137963143));
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
                  if(_loc9_)
                  {
                     §§push(_loc2_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.z);
                           §§push(_loc2_.z);
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        break loop3;
                     }
                     §§push(Number(§§pop()));
                  }
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     §§push(_loc2_.w);
                     break loop4;
                  }
                  break;
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     break loop3;
                  }
               }
               §§goto(addr0135);
            }
            §§push(§§pop() * §§pop());
            break loop10;
         }
         addr0135:
         var _loc4_:* = Number(§§pop());
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
         loop5:
         while(true)
         {
            while(true)
            {
               loop8:
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
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                                 break;
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
                              break loop5;
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
                           _loc2_.y = 0;
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                           if(_loc9_)
                           {
                              break loop5;
                           }
                           break loop8;
                        }
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                        break;
                     }
                     _loc4_ = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                  }
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
                     if(_loc9_)
                     {
                        break loop5;
                     }
                     §§goto(addr0269);
                  }
                  §§goto(addr022b);
               }
               §§goto(addr0248);
            }
            pastafarian.spritesheet.§@S§(false);
            §§goto(addr0285);
         }
         tunnel.camera.reset();
         if(_loc9_)
         {
            tunnel.display(0);
         }
         addr022b:
         §#!P§.placeAt(5,25);
         §#!P§.spritesheet.§,=§(39);
         if(!_loc8_)
         {
            addr0248:
            §#!P§.spritesheet.§@S§(false);
            pastafarian.placeAt(6,24.9,null,1);
            if(!_loc8_)
            {
               addr0269:
               pastafarian.spritesheet.§,=§(43);
               if(!_loc8_)
               {
                  break loop6;
               }
            }
            addr0285:
            dialog.§";§("Time to split up.",0,-320,null,null,null,null,null);
            var _loc6_:* = §&!S§.width(680);
            var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(!_loc8_)
            {
               dialog.§";§("You go on ahead, and I\'ll head back. If you find anyone, tell them to meet us right here.",20,-100,null,_loc6_,-1,_loc7_,null);
            }
            _loc7_ = new § 6§(pastafarian.§<!U§());
            while(true)
            {
               if(!_loc8_)
               {
                  dialog.§";§("Understood.",-80,360,null,null,null,_loc7_,null);
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               pastafarian.alignWith(§#!P§);
               break;
            }
            return;
         }
         break loop6;
      }
   }
}

