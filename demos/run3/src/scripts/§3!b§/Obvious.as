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
   
   public class Obvious extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var pastafarian:§^s§;
      
      public var §#!P§:§^s§;
      
      public function Obvious()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super(§>K§.home1,-1,null,{"endTiles":false});
            if(_loc2_)
            {
               §§push(§§findproperty(frames));
               §§push(frame0);
               if(!_loc1_)
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
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame7);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(_loc2_)
               {
                  name = "Obvious";
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
            if(_loc2_)
            {
               tunnel = null;
               if(_loc1_)
               {
                  break;
               }
               pastafarian = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            §#!P§ = null;
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr0051);
         }
         sprites.length = 0;
         addr0051:
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               pastafarian = new §^s§(§9_§,§'O§.pastafarian,false,null,false,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            pastafarian.billboardMode = true;
            if(!_loc4_)
            {
               sprites.push(pastafarian);
            }
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("home0");
         while(true)
         {
            if(_loc3_)
            {
               pastafarian.goesTo = new § !N§(_loc1_,4);
               if(_loc4_)
               {
                  break;
               }
            }
            §#!P§ = new §^s§(§9_§,§'O§.§#!P§,false,null,false,null);
            if(!_loc4_)
            {
               break;
            }
            sprites.push(§#!P§);
            addr00d2:
            var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("home0");
            if(!_loc4_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,4);
            }
            return;
            addr00bc:
         }
         §#!P§.billboardMode = true;
         if(_loc3_)
         {
            §§goto(addr00bc);
         }
         §§goto(addr00d2);
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc9_)
         {
            _loc1_.x = -259;
            if(!_loc9_)
            {
               _loc1_.y = 116;
               if(!_loc9_)
               {
                  _loc1_.z = 11298;
               }
            }
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(2.38237442897226)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            §§push(_loc2_);
            §§push(0.189);
            if(!_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            if(_loc8_)
            {
               §§push(_loc2_);
               §§push(-0.97);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     §§push(-0.154);
                     if(_loc8_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc8_)
                     {
                        break;
                     }
                  }
                  _loc2_.w = Number(Math.cos(2.38237442897226));
                  break;
               }
            }
         }
         loop2:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_.x);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc2_.x);
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(_loc9_)
                  {
                     break loop2;
                  }
                  §§push(§§pop() + §§pop() * §§pop());
               }
               §§push(Number(§§pop()));
               break;
            }
            §§push(_loc2_.z);
            if(!_loc9_)
            {
               §§push(_loc2_.z);
               if(_loc9_)
               {
                  break;
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() + §§pop());
            if(_loc8_)
            {
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break;
            }
            §§goto(addr0122);
         }
         addr0122:
         §§push(§§pop() + §§pop() * §§pop());
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:Number = §§pop();
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
         loop5:
         while(true)
         {
            loop6:
            while(true)
            {
               §§push(_loc5_);
               §§push(0);
               if(!_loc9_)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc9_)
                        {
                           break loop5;
                        }
                        §§push(_loc5_);
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§push(-_loc5_);
                     }
                     §§push(§§pop() < 1e-10);
                     if(_loc8_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        §§push(_loc4_);
                        break;
                     }
                     break loop6;
                  }
               }
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     _loc2_.x = 0;
                     if(!_loc9_)
                     {
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                        break loop6;
                     }
                  }
                  else
                  {
                     _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                     if(_loc8_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.x);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().x = §§pop();
                        if(_loc9_)
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
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(_loc9_)
                     {
                        break loop5;
                     }
                  }
                  §§push(_loc2_);
                  §§push(_loc2_.w);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().w = §§pop();
                  break loop6;
               }
               addr0219:
               pastafarian.§9E§(7.9,-17.8,true,-2);
               if(_loc8_)
               {
                  break loop5;
               }
               §§goto(addr0276);
            }
            tunnel.§<!M§.reset();
            while(true)
            {
               if(_loc8_)
               {
                  tunnel.display(0);
                  §§goto(addr0219);
               }
               §§goto(addr0261);
            }
            §§goto(addr0276);
         }
         pastafarian.spritesheet.§,=§(97);
         pastafarian.spritesheet.§@S§(true);
         if(!_loc9_)
         {
            §#!P§.§9E§(8.5,-16.7,true,1);
            if(!_loc9_)
            {
               addr0261:
               §#!P§.spritesheet.§,=§(50);
               §#!P§.spritesheet.§@S§(true);
            }
         }
         addr0276:
         var _loc6_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc9_)
         {
            dialog.§";§("So anyway, what\'s this?",260,-140,null,null,null,_loc6_,null);
         }
         _loc6_ = new § 6§(§#!P§.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("I basically just told you.",-160,90,null,null,null,_loc6_,null);
         }
         var _loc7_:* = §&!S§.width(370);
         if(!_loc9_)
         {
            dialog.§";§("Weren\'t you paying attention?",-140,320,null,_loc7_,-1,null,null);
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(_loc9_)
         {
            _loc1_.x = -253;
            while(true)
            {
               if(_loc9_)
               {
                  _loc1_.y = 130;
                  if(!_loc9_)
                  {
                     break;
                  }
               }
               _loc1_.z = 11404;
               break;
            }
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
         §§push(Number(Math.sin(1.911135530933791)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            §§push(_loc2_);
            §§push(0.266);
            if(_loc9_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.963);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(-0.047);
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
               _loc2_.w = Number(Math.cos(1.911135530933791));
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
               if(_loc9_)
               {
                  §§push(_loc2_.y);
                  if(_loc8_)
                  {
                     break loop3;
                  }
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
                     break loop3;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     §§push(§§pop() + §§pop());
                     §§push(_loc2_.w);
                  }
               }
               §§push(_loc2_.w);
               break loop3;
            }
            var _loc4_:Number = §§pop() + §§pop();
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
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(!_loc8_)
                  {
                     loop8:
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
                                 if(_loc8_)
                                 {
                                    break loop7;
                                 }
                                 addr015b:
                                 §§push(_loc5_ < 1e-10);
                                 if(!_loc8_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(!_loc9_)
                                 {
                                    break loop8;
                                 }
                                 §§push(_loc4_);
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(_loc9_)
                                 {
                                    §§goto(addr015b);
                                 }
                              }
                              §§push(0);
                           }
                           if(§§pop() != §§pop())
                           {
                              _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                              §§push(_loc2_);
                              §§push(_loc2_.x);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().x = §§pop();
                              §§push(_loc2_);
                              §§push(_loc2_.y);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().y = §§pop();
                              break loop8;
                           }
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           _loc2_.z = 0;
                           if(_loc9_)
                           {
                              _loc2_.w = 1;
                              if(!_loc8_)
                              {
                                 break;
                              }
                              break loop6;
                           }
                           §§goto(addr01ee);
                        }
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc8_)
                     {
                        addr01ee:
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                     }
                     break loop9;
                  }
                  tunnel.§<!M§.reset();
                  if(_loc8_)
                  {
                     break;
                  }
                  tunnel.display(0);
                  if(!_loc8_)
                  {
                     break loop6;
                  }
                  §§goto(addr025b);
               }
               var _loc6_:* = §&!S§.width(450);
               var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
               if(!_loc8_)
               {
                  dialog.§";§("In the future, please make an effort to empathize.",240,-80,null,_loc6_,null,_loc7_,null);
               }
               _loc6_ = §&!S§.width(730);
               if(!_loc8_)
               {
                  dialog.§";§("Everything seems obvious with the benefit of hindsight. Don\'t think less of those who lack that benefit.",40,260,null,_loc6_,-1,null,null);
               }
               return;
            }
            pastafarian.§9E§(7.9,-17.8,true,-2);
            pastafarian.spritesheet.§,=§(107);
            pastafarian.spritesheet.§@S§(false);
            §#!P§.§9E§(7.9,-16.9,true,1);
            §#!P§.spritesheet.§,=§(55);
            addr025b:
            §#!P§.spritesheet.§@S§(false);
            break loop7;
         }
         §§push(§§pop() * §§pop());
         break loop4;
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  pastafarian.§9E§(7.9,-17.8,true,-2);
                  pastafarian.spritesheet.§,=§(99);
                  if(_loc3_)
                  {
                     break;
                  }
                  pastafarian.spritesheet.§@S§(false);
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §#!P§.§9E§(8.2,-17.1,true,1);
               break loop0;
            }
            §#!P§.spritesheet.§@S§(false);
            var _loc1_:* = §&!S§.width(700);
            var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(!_loc3_)
            {
               dialog.§";§("I\'m not overestimating anything. Everyone knows those three facts!",-220,-270,null,_loc1_,null,_loc2_,null);
            }
            _loc1_ = §&!S§.width(470);
            _loc2_ = new § 6§(pastafarian.§<!U§());
            if(!_loc3_)
            {
               dialog.§";§("Perhaps. Yet three facts are not enough.",320,-90,null,_loc1_,null,_loc2_,null);
            }
            _loc1_ = §&!S§.width(600);
            if(_loc4_)
            {
               dialog.§";§("To reach your conclusion, one must consider that specific combination of facts.",200,200,null,_loc1_,-1,null,null);
               if(!_loc3_)
               {
                  § !C§("specific combination");
               }
            }
            return;
         }
         §#!P§.spritesheet.§,=§(46);
         break loop1;
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc9_)
            {
               _loc1_.x = -232;
               if(!_loc9_)
               {
                  break;
               }
               _loc1_.y = 144;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.z = 11425;
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
         §§push(Number(Math.sin(1.876228945893904)));
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
               §§push(0.271);
               if(_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.961);
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
               §§push(-0.049);
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
            _loc2_.w = Number(Math.cos(1.876228945893904));
            break;
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(_loc2_.x * _loc2_.x);
               §§push(_loc2_.y);
               if(!_loc8_)
               {
                  §§push(_loc2_.y);
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc9_)
                  {
                     break loop3;
                  }
               }
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     §§push(_loc2_.z);
                     if(_loc9_)
                     {
                        §§push(_loc2_.z);
                        if(!_loc9_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        §§push(_loc2_.w);
                        if(!_loc8_)
                        {
                           break loop3;
                        }
                     }
                     addr0123:
                     §§push(§§pop() + §§pop());
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc4_:* = §§pop();
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
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              loop11:
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
                                       }
                                       else
                                       {
                                          §§push(_loc5_);
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          §§push(-§§pop());
                                          if(!_loc9_)
                                          {
                                             break loop11;
                                          }
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
                                       §§push(0);
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(1 / Number(Math.sqrt(_loc4_)));
                                       if(!_loc8_)
                                       {
                                          break loop11;
                                       }
                                       break;
                                    }
                                    if(!_loc8_)
                                    {
                                       _loc2_.x = 0;
                                       _loc2_.y = 0;
                                       _loc2_.z = 0;
                                       _loc2_.w = 1;
                                       break loop8;
                                    }
                                    addr01f1:
                                    §§push(_loc2_);
                                    §§push(_loc2_.z);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() * _loc4_);
                                    }
                                    §§pop().z = §§pop();
                                    if(_loc8_)
                                    {
                                       break loop7;
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc8_)
                                 {
                                    break loop10;
                                 }
                                 §§push(_loc2_);
                                 §§push(_loc2_.x);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().x = §§pop();
                                 if(!_loc9_)
                                 {
                                    break loop9;
                                 }
                                 §§push(_loc2_);
                                 §§push(_loc2_.y);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().y = §§pop();
                                 §§goto(addr01f1);
                              }
                              §§push(Number(§§pop()));
                              break loop12;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           break loop8;
                        }
                        §#!P§.§9E§(8.5,-17.3,true,1);
                        §§goto(addr026e);
                     }
                     pastafarian.§9E§(7.9,-17.8,true,-2);
                     if(!_loc8_)
                     {
                        pastafarian.spritesheet.§,=§(99);
                        pastafarian.spritesheet.§@S§(false);
                        break loop10;
                     }
                     §§goto(addr026e);
                  }
                  tunnel.§<!M§.reset();
                  if(_loc9_)
                  {
                     tunnel.display(0);
                     if(_loc9_)
                     {
                        break loop9;
                     }
                     addr0280:
                     §#!P§.spritesheet.§@S§(false);
                     break;
                  }
                  addr026e:
                  §#!P§.spritesheet.§,=§(78);
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§goto(addr0280);
               }
               var _loc6_:* = §&!S§.width(580);
               var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
               if(_loc9_)
               {
                  dialog.§";§("You make a convincing point, and you may well be right.",-100,-270,null,_loc6_,null,_loc7_,null);
               }
               _loc7_ = new § 6§(§#!P§.§<!U§());
               if(!_loc8_)
               {
                  dialog.§";§("Yes and yes.",200,-40,null,null,null,_loc7_,null);
               }
               _loc6_ = §&!S§.width(700);
               if(!_loc8_)
               {
                  dialog.§";§("That said, you wildly overestimate how obvious your conclusion is.",-40,250,null,_loc6_,0,null,null);
               }
               return;
            }
            §§goto(addr0123);
         }
         §§push(_loc2_.w);
         break loop4;
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
               _loc1_.x = -158;
               if(!_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 172;
            if(!_loc8_)
            {
               break;
            }
            addr004c:
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
            §§push(Number(Math.sin(1.8064157758141308)));
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc9_)
            {
               §§push(_loc2_);
               §§push(0.173);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc2_);
                  §§push(-0.985);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  while(true)
                  {
                     if(_loc9_)
                     {
                        §§push(_loc2_);
                        §§push(-0.024);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc3_);
                        }
                        §§pop().z = §§pop();
                        if(_loc8_)
                        {
                           break;
                        }
                     }
                     _loc2_.w = Number(Math.cos(1.8064157758141308));
                     break;
                  }
               }
            }
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x);
                  if(!_loc8_)
                  {
                     §§push(_loc2_.x);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break loop3;
                     }
                  }
                  loop11:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.y);
                        if(!_loc8_)
                        {
                           §§push(_loc2_.y);
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc9_)
                           {
                              break loop11;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           §§push(_loc2_.z);
                           break loop11;
                        }
                        break loop3;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     break loop3;
                  }
                  §§push(_loc2_.z);
                  if(_loc9_)
                  {
                     break loop12;
                  }
                  addr012c:
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc9_)
                  {
                     §§goto(addr0135);
                  }
                  §§goto(addr0136);
               }
               §§goto(addr012c);
            }
            while(true)
            {
               addr0135:
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  §§push(_loc2_.w);
                  break loop4;
               }
               §§push(Number(§§pop()));
               break;
            }
            addr0136:
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
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  loop8:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        while(true)
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc5_);
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
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
                              §§push(_loc4_);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§push(0);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc9_)
                              {
                                 _loc2_.x = 0;
                                 _loc2_.y = 0;
                                 _loc2_.z = 0;
                                 _loc2_.w = 1;
                                 if(!_loc8_)
                                 {
                                    break loop6;
                                 }
                                 break loop8;
                              }
                              §§goto(addr022c);
                           }
                           else
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                     _loc4_ = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(_loc9_)
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
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        if(_loc9_)
                        {
                           break loop6;
                        }
                        break;
                     }
                     break loop7;
                  }
                  §§goto(addr0267);
               }
               var _loc6_:* = §&!S§.width(530);
               if(!_loc8_)
               {
                  dialog.§";§("And you know the Tunnels reach the Planet.",0,-250,null,_loc6_,null,null,null);
               }
               var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
               if(!_loc8_)
               {
                  dialog.§";§("Yes.",-20,-80,null,null,null,_loc7_,null);
               }
               _loc6_ = §&!S§.width(413);
               _loc7_ = new § 6§(§#!P§.§<!U§());
               while(true)
               {
                  if(_loc9_)
                  {
                     dialog.§";§("See? You know everything you need.",340,10,null,_loc6_,0,_loc7_,null);
                     if(_loc9_)
                     {
                        dialog.§";§("So? What are the Tunnels for?",180,260,null,null,-1,null,null);
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                  }
                  dialog.§";§("Hint: it\'s obvious.",-140,360,null,null,-1,null,null);
                  break;
               }
               return;
            }
            tunnel.§<!M§.reset();
            addr022c:
            tunnel.display(0);
            pastafarian.§9E§(7.8,-18.2,true,-4);
            if(_loc9_)
            {
               pastafarian.spritesheet.§,=§(107);
            }
            pastafarian.spritesheet.§@S§(true);
            if(!_loc8_)
            {
               addr0267:
               §#!P§.§9E§(8.5,-18.3,true,1);
               if(_loc9_)
               {
                  §#!P§.spritesheet.§,=§(69);
                  if(!_loc8_)
                  {
                     §#!P§.spritesheet.§@S§(false);
                  }
               }
            }
            break loop7;
         }
         _loc1_.z = 11402;
         §§goto(addr004c);
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = -115;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc1_.y = 186;
            if(!_loc9_)
            {
               break;
            }
            addr0046:
            var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
            while(true)
            {
               if(_loc8_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
               }
               _loc2_ = new §"B§();
               break;
            }
            §§push(Number(Math.sin(1.710422666954443)));
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(0.18);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               while(true)
               {
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     §§push(-0.983);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc3_);
                     }
                     §§pop().y = §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc2_);
                        §§push(-0.034);
                        if(_loc8_)
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
                  _loc2_.w = Number(Math.cos(1.710422666954443));
                  break;
               }
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.x);
                        §§push(_loc2_.x);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(_loc2_.y);
                           if(_loc9_)
                           {
                              break loop5;
                           }
                           §§push(_loc2_.y);
                           if(_loc9_)
                           {
                              break loop4;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc9_)
                           {
                              break loop3;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc8_)
                        {
                           break;
                        }
                        §§goto(addr0138);
                     }
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        break loop3;
                     }
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc9_)
                     {
                        break loop3;
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           §§push(_loc2_.w);
                           break loop3;
                        }
                        §§goto(addr0139);
                     }
                     §§goto(addr0137);
                  }
                  addr0139:
                  var _loc4_:Number = §§pop() + §§pop();
                  addr0138:
                  addr0137:
                  while(true)
                  {
                     §§push(_loc4_);
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
                  var _loc5_:* = §§pop();
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(!_loc8_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc5_);
                              break loop8;
                           }
                           §§push(_loc5_);
                           if(_loc9_)
                           {
                              break loop8;
                           }
                        }
                        §§push(-§§pop());
                        if(_loc8_)
                        {
                           break loop8;
                        }
                        §§goto(addr018b);
                     }
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                           if(!_loc8_)
                           {
                              break loop11;
                           }
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                        }
                        else
                        {
                           _loc4_ = 1 / Number(Math.sqrt(_loc4_));
                           if(_loc9_)
                           {
                              break;
                           }
                           §§push(_loc2_);
                           §§push(_loc2_.x);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().x = §§pop();
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
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           if(_loc9_)
                           {
                              break loop10;
                           }
                        }
                        §§goto(addr021b);
                     }
                     §§goto(addr0274);
                  }
                  §§push(§§pop() < 1e-10);
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  loop10:
                  while(true)
                  {
                     loop11:
                     while(true)
                     {
                        while(true)
                        {
                           addr021b:
                           if(§§pop())
                           {
                              addr018b:
                              §§push(_loc4_);
                              §§push(0);
                              break loop9;
                           }
                           tunnel.§<!M§.reset();
                           break loop11;
                        }
                        addr0274:
                        §#!P§.spritesheet.§,=§(77);
                        break loop10;
                     }
                     tunnel.display(0);
                     pastafarian.§9E§(7.8,-18.2,true,-4);
                     if(!_loc9_)
                     {
                        pastafarian.spritesheet.§,=§(108);
                        if(!_loc9_)
                        {
                           pastafarian.spritesheet.§@S§(true);
                           if(!_loc9_)
                           {
                              §#!P§.§9E§(8.5,-18.3,true,1);
                              break loop12;
                           }
                           break;
                        }
                     }
                     §§goto(addr0289);
                  }
                  §#!P§.spritesheet.§@S§(false);
                  addr0289:
                  dialog.§";§("Listen up. You know about the Wormhole, right?",60,-340,null,null,null,null,null);
                  var _loc6_:* = §&!S§.width(500);
                  var _loc7_:§ 7§ = new § 6§(pastafarian.§<!U§());
                  if(_loc8_)
                  {
                     dialog.§";§("I know little beyond the fact that it exists.",-200,-100,null,_loc6_,null,_loc7_,null);
                  }
                  _loc6_ = §&!S§.width(380);
                  _loc7_ = new § 6§(§#!P§.§<!U§());
                  if(_loc8_)
                  {
                     dialog.§";§("You know that the Tunnels connect to it, right?",340,-20,null,_loc6_,0,_loc7_,null);
                     if(!_loc9_)
                     {
                        dialog.§";§("The Runner suspects so.",-200,280,null,null,1,null,null);
                        if(_loc8_)
                        {
                           dialog.§";§("Good enough.",240,340,null,null,2,null,null);
                        }
                     }
                  }
                  return;
               }
               §§push(§§pop() * §§pop());
               break loop5;
            }
            §§push(_loc2_.w);
            break loop4;
         }
         _loc1_.z = 11332;
         §§goto(addr0046);
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         pastafarian.§9E§(7.8,-19,true);
         pastafarian.spritesheet.§,=§(103);
         if(_loc3_)
         {
            pastafarian.spritesheet.§@S§(true);
         }
         §#!P§.§9E§(8.3,-19.6,true,1);
         §#!P§.spritesheet.§,=§(71);
         if(!_loc4_)
         {
            §#!P§.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(560);
         if(!_loc4_)
         {
            dialog.§";§("It\'s also possible that the Tunnels formed naturally.",-120,-270,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Are you even trying?",180,-120,null,null,null,_loc2_,null);
         }
         _loc2_ = new § 6§(pastafarian.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Don\'t be rude.",-220,0,null,null,0,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = -78;
               if(_loc9_)
               {
                  break;
               }
               _loc1_.y = 200;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc1_.z = 11244;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc8_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(1.6493361431346414)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               §§push(_loc2_);
               §§push(0.178);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(-0.984);
                  if(!_loc9_)
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
            §§push(-0.012);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().z = §§pop();
            if(_loc8_)
            {
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
                        if(_loc9_)
                        {
                           break loop4;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc9_)
                        {
                           break loop3;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        break loop3;
                     }
                     break loop4;
                  }
                  §§goto(addr0113);
               }
               §§goto(addr011b);
            }
            addr011b:
            §§push(§§pop() + §§pop());
            if(_loc8_)
            {
               addr0113:
               §§push(_loc2_.w);
               §§push(_loc2_.w);
               break loop4;
            }
            §§push(Number(§§pop()));
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(!_loc9_)
            {
               §§push(§§pop() - 1);
               if(!_loc9_)
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
                  loop7:
                  while(true)
                  {
                     if(_loc8_)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(0);
                           if(!_loc9_)
                           {
                              §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                              if(_loc8_)
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
                           while(true)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    break loop8;
                                 }
                                 _loc2_.x = 0;
                                 _loc2_.y = 0;
                                 _loc2_.z = 0;
                                 _loc2_.w = 1;
                                 if(_loc8_)
                                 {
                                    break loop8;
                                 }
                              }
                              else
                              {
                                 §§push(1 / Number(Math.sqrt(_loc4_)));
                                 if(!_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc4_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    break loop7;
                                 }
                                 §§push(_loc2_);
                                 §§push(_loc2_.x);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().x = §§pop();
                                 if(_loc9_)
                                 {
                                    break loop6;
                                 }
                                 §§push(_loc2_);
                                 §§push(_loc2_.y);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                 }
                                 §§pop().y = §§pop();
                                 if(!_loc8_)
                                 {
                                    break loop5;
                                 }
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
                              break loop8;
                           }
                        }
                        tunnel.§<!M§.reset();
                        tunnel.display(0);
                        pastafarian.§9E§(7.7,-19.9,true,-6);
                        pastafarian.spritesheet.§,=§(107);
                        pastafarian.spritesheet.§@S§(true);
                     }
                     §#!P§.§9E§(8.3,-20.3,true);
                     break loop5;
                  }
                  §§goto(addr0271);
               }
               §#!P§.spritesheet.§@S§(false);
               break loop7;
            }
            §#!P§.spritesheet.§,=§(75);
            if(_loc8_)
            {
               break loop6;
            }
            addr0271:
            var _loc6_:* = §&!S§.width(610);
            var _loc7_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(!_loc9_)
            {
               dialog.§";§("Have you figured out what the Tunnels were made for?",220,-310,null,_loc6_,null,_loc7_,null);
            }
            _loc6_ = §&!S§.width(420);
            _loc7_ = new § 6§(pastafarian.§<!U§());
            if(_loc8_)
            {
               dialog.§";§("Based on their noodly appearance...",-280,-50,null,_loc6_,null,_loc7_,null);
            }
            _loc6_ = §&!S§.width(400);
            if(!_loc9_)
            {
               dialog.§";§("I suspect they\'re a tribute to the Flying Spaghetti Monster.",-280,240,null,_loc6_,-1,null,null);
            }
            _loc7_ = new § 6§(§#!P§.§<!U§());
            if(!_loc9_)
            {
               dialog.§";§("Keep guessing.",320,320,null,null,null,_loc7_,null);
            }
            return;
         }
         _loc2_.w = Number(Math.cos(1.6493361431346414));
         continue loop4;
      }
   }
}

