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
   
   public class Wait extends §+Z§
   {
      
      public var duplicator:§^s§;
      
      public var child:§^s§;
      
      public function Wait()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§>!'§,-1,null,{"startTilesLength":3000});
               if(_loc1_)
               {
                  break;
               }
            }
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
            §§pop().frames = null;
            if(_loc2_)
            {
               name = "Wait";
            }
            break;
         }
      }
      
      override public function §1!F§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §'O§.§#!P§.§>t§.§?F§(§>K§.§"!R§.pathName);
               if(_loc1_)
               {
                  break;
               }
            }
            §'O§.§#!P§.§ j§.§?F§(0);
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr0058);
         }
         super.§1!F§();
         addr0058:
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
               if(!_loc1_)
               {
                  duplicator = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
               child = null;
               if(!_loc1_)
               {
                  sprites.length = 0;
               }
               break;
            }
         }
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
               duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,null);
               if(_loc6_)
               {
                  break;
               }
               duplicator.billboardMode = true;
               if(_loc6_)
               {
                  break;
               }
            }
            sprites.push(duplicator);
            break;
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         loop1:
         while(true)
         {
            if(_loc5_)
            {
               duplicator.goesTo = new § !N§(_loc2_,-1);
               while(true)
               {
                  if(!_loc6_)
                  {
                     child = new §^s§(§9_§,§'O§.child,false,null,false,null);
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  child.billboardMode = true;
                  if(_loc5_)
                  {
                     break;
                  }
                  break loop1;
               }
            }
            sprites.push(child);
            break;
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
            child.goesTo = new § !N§(_loc4_,-2);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         duplicator.§9E§(7.1,-1.3,true,-4);
         duplicator.spritesheet.§,=§(82);
         if(!_loc4_)
         {
            duplicator.spritesheet.§@S§(true);
            while(true)
            {
               if(!_loc4_)
               {
                  child.§9E§(6.7,-2.4,true,-6);
                  if(!_loc3_)
                  {
                     break;
                  }
                  child.spritesheet.§,=§(23);
               }
               child.spritesheet.§@S§(true);
               break;
            }
         }
         var _loc1_:* = §&!S§.width(460);
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Wait, when did you get your balloon back?",-300,90,null,_loc1_,null,_loc2_,null);
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
               duplicator.§9E§(7,-1.4,true,-2);
               duplicator.spritesheet.§,=§(46);
               duplicator.spritesheet.§@S§(true);
               child.§9E§(6.5,-3.1,true,15);
               child.spritesheet.§,=§(22);
               if(!_loc1_)
               {
                  break;
               }
            }
            child.spritesheet.§@S§(true);
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         duplicator.§9E§(6.4,-3,true,23);
         while(true)
         {
            if(!_loc2_)
            {
               duplicator.spritesheet.§,=§(20);
               duplicator.spritesheet.§@S§(true);
               if(_loc2_)
               {
                  break;
               }
               child.§9E§(5.4,-4,true,17);
               if(!_loc2_)
               {
                  child.spritesheet.§,=§(14);
               }
            }
            child.spritesheet.§@S§(true);
            duplicator.transform.§"I§(child.transform.§+n§());
            break;
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
            _loc1_.x = -209;
            while(true)
            {
               if(_loc8_)
               {
                  _loc1_.y = 8;
                  if(_loc7_)
                  {
                     break;
                  }
               }
               _loc1_.z = 3514;
               break;
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
         §§push(Number(Math.sin(0.5061454830783556)));
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
                  §§push(0.039);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().x = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(0.847);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(!_loc8_)
                  {
                     break loop2;
                  }
               }
               §§push(_loc2_);
               §§push(0.53);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(!_loc7_)
               {
                  break;
               }
               break loop2;
            }
            _loc2_.w = Number(Math.cos(0.5061454830783556));
            break;
         }
         loop4:
         while(true)
         {
            §§push(_loc2_.x);
            if(_loc8_)
            {
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     §§push(_loc2_.x);
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              §§push(_loc2_.y);
                              §§push(_loc2_.y);
                              if(!_loc8_)
                              {
                                 break loop6;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(Number(§§pop()));
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              break;
                           }
                           break loop5;
                        }
                     }
                     §§push(_loc2_.z);
                     if(_loc8_)
                     {
                        break;
                     }
                     addr012e:
                     §§push(§§pop() * §§pop());
                     break loop5;
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc8_)
                  {
                     break loop4;
                  }
                  §§push(_loc2_.w);
                  if(_loc7_)
                  {
                     break;
                  }
                  §§goto(addr012e);
                  §§push(_loc2_.w);
               }
               §§push(§§pop() + §§pop());
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     break;
                  }
               }
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
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         loop9:
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
                  §§push(_loc5_);
               }
               else
               {
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     §§push(-§§pop());
                  }
               }
            }
            §§push(§§pop() < 1e-10);
            if(_loc8_)
            {
               §§push(!§§pop());
            }
            loop10:
            while(true)
            {
               while(true)
               {
                  addr0217:
                  if(§§pop())
                  {
                     §§push(_loc4_);
                     §§push(0);
                     break loop9;
                  }
                  tunnel.§<!M§.reset();
                  tunnel.display(0);
                  if(_loc8_)
                  {
                     duplicator.§9E§(5.4,-4,true,25);
                     if(!_loc7_)
                     {
                        break loop10;
                     }
                     §§goto(addr0272);
                  }
                  break;
               }
               §§goto(addr025f);
            }
            duplicator.spritesheet.§,=§(14);
            if(_loc8_)
            {
               duplicator.spritesheet.§@S§(true);
            }
            break loop11;
         }
         while(true)
         {
            if(§§pop() == §§pop())
            {
               if(!_loc8_)
               {
                  break;
               }
               _loc2_.x = 0;
               _loc2_.y = 0;
               _loc2_.z = 0;
               if(!_loc8_)
               {
                  break loop10;
               }
               _loc2_.w = 1;
            }
            else
            {
               _loc4_ = 1 / Number(Math.sqrt(_loc4_));
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
               if(!_loc8_)
               {
                  break loop10;
               }
            }
            §§goto(addr0217);
         }
         addr025f:
         child.§9E§(5,-5,true);
         if(_loc8_)
         {
            addr0272:
            child.spritesheet.§,=§(75);
            child.spritesheet.§@S§(true);
            §§goto(addr0287);
         }
         addr0287:
         var _loc6_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("...and that\'s why we don\'t solve our problems with violence.",0,-200,null,null,null,_loc6_,null);
            if(!_loc7_)
            {
               duplicator.transform.§"I§(child.transform.§+n§());
            }
         }
      }
   }
}

