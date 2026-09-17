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
   import nme3D.Context3DUtils;
   import nme3D.shader.§<!9§;
   
   public class OfCourse extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var duplicator:StageActor;
      
      public var child:StageActor;
      
      public function OfCourse()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super(§>K§.home0,-1,null,{"endTiles":false});
            if(_loc1_)
            {
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame1);
               if(!_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame2);
               if(_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc2_)
               {
                  name = "Of Course";
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
               Context3DUtils.§7"§ = 3000;
               Context3DUtils.§37§(Context3DUtils.§&#§);
               if(_loc1_)
               {
                  §<!9§.§%!1§();
                  if(_loc1_)
                  {
                     tunnel = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  child = null;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               duplicator = null;
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
         while(true)
         {
            if(!_loc5_)
            {
               child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
               if(!_loc6_)
               {
                  break;
               }
               child.billboardMode = true;
               if(_loc5_)
               {
                  break;
               }
            }
            sprites.push(child);
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
            if(!_loc5_)
            {
               child.goesTo = new § !N§(_loc2_,6);
               if(_loc5_)
               {
                  break;
               }
            }
            duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
            if(!_loc5_)
            {
               duplicator.billboardMode = true;
               if(_loc6_)
               {
                  break;
               }
            }
            §§goto(addr00dc);
         }
         sprites.push(duplicator);
         addr00dc:
         §§push(§!^§.pathName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc6_)
         {
            duplicator.goesTo = new § !N§(_loc4_,6);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         _loc1_.x = -57;
         _loc1_.y = -68;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc5_)
               {
                  _loc1_.z = 9432;
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  tunnel.camera.reset();
                  tunnel.display(0);
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        child.placeAt(7.7,-2.7,true);
                        if(!_loc5_)
                        {
                           break;
                        }
                        child.spritesheet.§,=§(42);
                        child.spritesheet.§@S§(true);
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                     }
                     duplicator.placeAt(8,-5,true);
                     break;
                  }
               }
               duplicator.spritesheet.§,=§(46);
               if(!_loc4_)
               {
                  break loop0;
               }
               break;
            }
            var _loc2_:§ 7§ = new § 6§(child.§<!U§());
            if(!_loc4_)
            {
               dialog.§";§("I\'m gonna try and jump this!",-160,-180,null,null,null,_loc2_,null);
            }
            _loc2_ = new § 6§(duplicator.§<!U§());
            if(_loc5_)
            {
               dialog.§";§("Go for it!",-20,140,null,null,null,_loc2_,null);
            }
            var _loc3_:* = §&!S§.width(600);
            if(_loc5_)
            {
               dialog.§";§("If the Angel tried to stop us, we must be on the right track!",80,290,null,_loc3_,-1,null,null);
            }
            return;
         }
         duplicator.spritesheet.§@S§(false);
         break loop1;
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
               child.placeAt(7.9,-3,true);
               child.spritesheet.§,=§(60);
               if(_loc3_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(true);
            duplicator.placeAt(8,-5,true);
            break;
         }
         duplicator.spritesheet.§,=§(78);
         duplicator.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(490);
         if(!_loc3_)
         {
            dialog.§";§("The Tunnels are supposed to be secret.",-200,-300,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("That\'s why the Government tried to stop us getting here in the first place.",100,-150,null,null,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(700);
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("The Angel must have cut this tunnel to keep us from getting home and spreading the news.",60,250,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_)
         {
            Context3DUtils.§7"§ = 5000;
            while(true)
            {
               if(!_loc8_)
               {
                  Context3DUtils.§37§(Context3DUtils.§&#§);
                  if(_loc8_)
                  {
                     break;
                  }
               }
               §<!9§.§%!1§();
               break;
            }
         }
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -61;
               if(_loc7_)
               {
                  _loc1_.y = -74;
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 9364;
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
         §§push(Number(Math.sin(0.6632251157578452)));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc8_)
            {
               §§push(_loc2_);
               §§push(0.042);
               if(_loc7_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc7_)
               {
                  §§push(_loc2_);
                  §§push(-0.104);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(-0.994);
                  if(_loc7_)
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
            _loc2_.w = Number(Math.cos(0.6632251157578452));
            break;
         }
         loop4:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  §§push(_loc2_.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(_loc2_.z);
                     if(!_loc7_)
                     {
                        break loop4;
                     }
                  }
                  §§push(§§pop() * §§pop());
               }
               §§push(§§pop() + §§pop());
               if(_loc7_)
               {
                  §§push(_loc2_.w);
                  if(!_loc8_)
                  {
                     §§push(_loc2_.w);
                     break loop4;
                  }
                  break;
               }
               addr0157:
               var _loc4_:* = §§pop();
               §§push(_loc4_);
               if(!_loc8_)
               {
                  §§push(§§pop() - 1);
                  if(_loc7_)
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
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc5_);
                              §§push(0);
                              if(_loc7_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(_loc5_);
                                 }
                                 else
                                 {
                                    §§push(_loc5_);
                                    if(!_loc7_)
                                    {
                                       break;
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
                                    break loop6;
                                 }
                                 if(!_loc7_)
                                 {
                                    break loop8;
                                 }
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    break loop7;
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
                                 break loop7;
                              }
                              _loc2_.x = 0;
                              if(!_loc7_)
                              {
                                 break loop8;
                              }
                              _loc2_.y = 0;
                              _loc2_.z = 0;
                           }
                           §§push(Number(§§pop()));
                           break loop7;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              §§push(_loc2_);
                              §§push(_loc2_.z);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().z = §§pop();
                              if(!_loc7_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 break loop6;
                              }
                              addr0294:
                              duplicator.placeAt(8,-5,true);
                              break;
                           }
                           §§goto(addr02a0);
                        }
                        §§goto(addr0255);
                     }
                     _loc4_ = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc7_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     break loop8;
                  }
                  _loc2_.w = 1;
                  break;
               }
               tunnel.camera.reset();
               while(true)
               {
                  if(!_loc8_)
                  {
                     addr0255:
                     tunnel.display(0);
                     child.placeAt(7.3,-4.5,true);
                     while(true)
                     {
                        if(_loc7_)
                        {
                           child.spritesheet.§,=§(44);
                           if(_loc7_)
                           {
                              child.spritesheet.§@S§(true);
                              if(!_loc8_)
                              {
                                 §§goto(addr0294);
                              }
                           }
                           addr02a0:
                           duplicator.spritesheet.§,=§(67);
                           if(_loc7_)
                           {
                              addr02b2:
                              duplicator.spritesheet.§@S§(true);
                           }
                           §§goto(addr02bc);
                        }
                        §§goto(addr02b2);
                     }
                     addr02bc:
                     var _loc6_:§ 7§ = new § 6§(child.§<!U§());
                     if(_loc7_)
                     {
                        dialog.§";§("Wow, that\'s a far distance!",-300,-280,null,null,null,_loc6_,null);
                     }
                     _loc6_ = new § 6§(duplicator.§<!U§());
                     if(_loc7_)
                     {
                        dialog.§";§("I should have known.",80,240,null,null,null,_loc6_,null);
                     }
                     return;
                  }
                  §§goto(addr02a0);
               }
               §§goto(addr02b2);
            }
            §§push(§§pop() + §§pop());
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr0157);
         }
         §§push(§§pop() * §§pop());
         break loop5;
      }
   }
}

