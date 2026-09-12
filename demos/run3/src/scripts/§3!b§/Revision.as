package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §'!1§.§ E§;
   import §'!1§.§7!b§;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import §>T§.§[C§;
   import §`_§.§']§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class Revision extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var §%!'§:§']§;
      
      public var gentleman:§^s§;
      
      public var §+!K§:§7!b§;
      
      public var §'!+§:§7!b§;
      
      public function Revision()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§1k§,2,null,null,null,§+!"§.IF_CUTSCENE_LEVEL_REACHED);
               if(_loc1_)
               {
                  break;
               }
            }
            §3!<§(new § !N§(§>K§.§1k§,2));
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
               if(!_loc1_)
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
               §§push(frame7);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame8);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame9);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame10);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame11);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame12);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame13);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame14);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame15);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame16);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame17);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame18);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame19);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame20);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame21);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame22);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame23);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame24);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame25);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame26);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame27);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame28);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame29);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame30);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame31);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame32);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§push(frame33);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame34);
               if(!_loc1_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            name = "Revision";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §%!'§ = null;
            if(!_loc1_)
            {
               §'!+§ = null;
            }
            §+!K§ = null;
            tunnel = null;
            gentleman = null;
         }
         sprites.length = 0;
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = null as §6O§;
         var _loc4_:* = null;
         loop0:
         while(true)
         {
            if(!_loc6_)
            {
               super.loadNext(param1,param2);
               if(_loc5_)
               {
                  §§push(param2);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
               }
            }
            _loc3_ = §'O§.gentleman;
            _loc4_ = null;
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc5_)
                  {
                     §§push(false);
                     if(_loc5_)
                     {
                        if(_loc4_ != null)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(_loc6_)
                     {
                        break loop0;
                     }
                  }
                  §§push(StringTools.§#E§("It is a relief no one was present to observe that.","-"));
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     break loop0;
                  }
                  §§push(Number(§'!E§.§]Y§("It is a relief no one was present to observe that.".length)));
                  if(_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  _loc4_ = §§pop();
               }
               §'!E§.§@!A§().§>!W§("It is a relief no one was present to observe that.",_loc4_,§'[§.§83§(_loc3_));
               break loop0;
            }
            §§push(Boolean(§§pop()));
            if(!_loc6_)
            {
               §§push(Boolean(§§pop()));
            }
            break loop2;
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               gentleman = new §^s§(§9_§,§'O§.gentleman,false,null,false,null);
               if(_loc3_)
               {
                  break;
               }
            }
            gentleman.billboardMode = true;
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0063);
         }
         sprites.push(gentleman);
         addr0063:
         §§push(§!^§.pathName);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         if(!_loc3_)
         {
            gentleman.goesTo = new § !N§(_loc2_,2);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            gentleman.§9E§(1.8,6);
            while(true)
            {
               if(!_loc2_)
               {
                  gentleman.spritesheet.§,=§(83);
                  if(_loc2_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§@S§(true);
                  if(_loc2_)
                  {
                     break;
                  }
                  §'!+§.move(2,§%!'§);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §,!J§ = 0.75;
               break;
            }
         }
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               gentleman.§9E§(0.3,5);
               if(!_loc2_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§,=§(81);
            while(true)
            {
               if(!_loc1_)
               {
                  break loop0;
               }
               addr0076:
               §,!J§ = 0.5;
               break;
            }
            §§goto(addr007e);
         }
         gentleman.spritesheet.§@S§(true);
         while(true)
         {
            if(!_loc1_)
            {
               §'!+§.§"!U§(2,§%!'§);
               if(_loc1_)
               {
                  break;
               }
            }
            §§goto(addr0076);
         }
         addr007e:
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(1.8,5.1);
               if(!_loc1_)
               {
                  break;
               }
               gentleman.spritesheet.§,=§(82);
               if(_loc1_)
               {
                  gentleman.spritesheet.§@S§(false);
                  if(_loc1_)
                  {
                     §'!+§.move(1,§%!'§);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            §,!J§ = 0.75;
            break;
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            gentleman.§9E§(0.2,6.2);
            while(true)
            {
               if(!_loc1_)
               {
                  gentleman.spritesheet.§,=§(46);
                  if(!_loc1_)
                  {
                     gentleman.spritesheet.§@S§(false);
                     if(_loc1_)
                     {
                        break;
                     }
                  }
               }
               §'!+§.§"!U§(1,§%!'§);
               if(!_loc1_)
               {
                  break;
               }
            }
            §,!J§ = 0.5;
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               gentleman.§9E§(0.5,6.8);
               if(_loc1_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§,=§(84);
            if(!_loc1_)
            {
               gentleman.spritesheet.§@S§(false);
               if(!_loc1_)
               {
                  §'!+§.move(0,§%!'§);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            §,!J§ = 0.75;
            break;
         }
      }
      
      public function frame4() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc7_)
            {
               gentleman.§9E§(23.751,5.8);
               if(_loc7_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§,=§(64);
            if(!_loc7_)
            {
               gentleman.spritesheet.§@S§(false);
            }
            break;
         }
         var _loc1_:§[C§ = §'!+§.§4+§[0].tile;
         var _loc2_:§"B§ = _loc1_.transform.§+n§();
         var _loc3_:§"B§ = null;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc3_ != null)
               {
                  break;
               }
            }
            _loc3_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.3141592653589793)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc8_)
               {
                  _loc3_.x = 0 * _loc4_;
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc3_.y = 0 * _loc4_;
                  if(_loc7_)
                  {
                     break loop2;
                  }
               }
               _loc3_.z = _loc4_;
               if(_loc8_)
               {
                  break loop2;
               }
               break;
            }
            loop4:
            while(true)
            {
               §§push(_loc3_.x);
               if(!_loc7_)
               {
                  loop5:
                  while(true)
                  {
                     §§push(§§pop() * _loc3_.x);
                     §§push(_loc3_.y);
                     §§push(_loc3_.y);
                     if(!_loc7_)
                     {
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§push(_loc3_.z);
                                 §§push(_loc3_.z);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc8_)
                                 {
                                    break loop6;
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc7_)
                              {
                                 §§push(_loc3_.w);
                                 if(_loc8_)
                                 {
                                    break loop6;
                                 }
                                 break loop5;
                              }
                              break loop4;
                           }
                        }
                        §§push(_loc3_.w);
                        break loop7;
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               break;
            }
            var _loc5_:* = §§pop();
            §§push(_loc5_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            loop8:
            while(true)
            {
               loop9:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc6_);
                     §§push(0);
                     if(!_loc7_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc6_);
                           if(!_loc8_)
                           {
                              break loop8;
                           }
                        }
                        else
                        {
                           §§push(_loc6_);
                           if(_loc7_)
                           {
                              break loop8;
                           }
                           §§push(-§§pop());
                        }
                        §§push(§§pop() < 1e-10);
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(_loc7_)
                        {
                           break loop9;
                        }
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           break loop8;
                        }
                        §§push(0);
                     }
                     if(§§pop() != §§pop())
                     {
                        §§push(1 / Number(Math.sqrt(_loc5_)));
                        break loop8;
                     }
                     if(!_loc7_)
                     {
                        _loc3_.x = 0;
                     }
                     _loc3_.y = 0;
                     if(_loc8_)
                     {
                        _loc3_.z = 0;
                        break loop9;
                     }
                     §§goto(addr0257);
                  }
                  §§goto(addr0233);
               }
               _loc3_.w = 1;
               if(!_loc7_)
               {
                  break loop10;
               }
               §§goto(addr0257);
            }
            _loc5_ = §§pop();
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc8_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().x = §§pop();
            if(!_loc7_)
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().y = §§pop();
               §§push(_loc3_);
               §§push(_loc3_.z);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().z = §§pop();
            }
            §§push(_loc3_);
            §§push(_loc3_.w);
            if(!_loc7_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().w = §§pop();
            addr0233:
            §4!R§.§9!L§(_loc2_,_loc3_,_loc2_);
            if(!_loc7_)
            {
               _loc1_.transform.§"I§(_loc2_);
               §%!'§.§[B§(_loc1_);
               addr0257:
               §,!J§ = 0.75;
            }
            return;
         }
         _loc3_.w = Number(Math.cos(0.3141592653589793));
         break loop3;
      }
      
      public function frame34() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(15.8,30,null,-70);
               if(_loc2_)
               {
                  break;
               }
               gentleman.spritesheet.§,=§(22);
               if(_loc2_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Oops.",140,160,null,null,null,_loc1_,null);
         }
      }
      
      public function frame33() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(16.2,29.4,null,-30);
               if(_loc2_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§,=§(22);
            if(_loc1_)
            {
               break;
            }
            §§goto(addr0054);
         }
         gentleman.spritesheet.§@S§(false);
         addr0054:
      }
      
      public function frame32() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            gentleman.§9E§(16.7,29);
            while(true)
            {
               if(_loc1_)
               {
                  gentleman.spritesheet.§,=§(50);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               break;
            }
         }
      }
      
      public function frame31() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            gentleman.§9E§(16.8,28.7);
            while(true)
            {
               if(_loc3_)
               {
                  gentleman.spritesheet.§,=§(28);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               break;
            }
         }
         var _loc1_:* = §&!S§.width(620);
         if(!_loc4_)
         {
            dialog.§";§("I eagerly await the opportunity to hire employees.",200,-190,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(760);
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("I ought not be obliged to perform this variety of menial labor myself.",60,270,null,_loc1_,-1,_loc2_,null);
         }
      }
      
      public function frame30() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc8_)
            {
               _loc1_.x = -69;
               if(_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = -370;
            if(_loc9_)
            {
               break;
            }
            addr004b:
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
            §§push(Number(Math.sin(1.5707963267948966)));
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
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc2_.y = 0 * _loc3_;
                  if(!_loc8_)
                  {
                     _loc2_.z = -1 * _loc3_;
                     if(_loc8_)
                     {
                        break;
                     }
                  }
               }
               _loc2_.w = Number(Math.cos(1.5707963267948966));
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
                     if(_loc9_)
                     {
                        while(true)
                        {
                           §§push(_loc2_.x);
                           if(_loc9_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc9_)
                              {
                                 break loop3;
                              }
                              §§push(_loc2_.y);
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(_loc2_.y);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 addr010d:
                                 addr010e:
                                 §§push(§§pop() + §§pop());
                                 if(_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                    §§push(_loc2_.z);
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 §§push(_loc2_.w);
                                 break loop4;
                              }
                              break;
                           }
                           addr0104:
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              break loop4;
                           }
                           §§goto(addr010d);
                           §§push(§§pop() + §§pop());
                        }
                        §§push(_loc2_.z);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr010e);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  break loop3;
               }
               §§push(_loc2_.w);
               break loop13;
            }
            var _loc4_:* = §§pop();
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
            loop6:
            while(true)
            {
               while(true)
               {
                  if(!_loc8_)
                  {
                     §§push(_loc5_);
                     if(!_loc8_)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           §§push(-_loc5_);
                           break loop6;
                        }
                     }
                     else
                     {
                        §§goto(addr0180);
                     }
                  }
                  §§push(_loc5_);
                  break loop6;
               }
               loop11:
               while(true)
               {
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        _loc2_.x = 0;
                        if(_loc8_)
                        {
                           break;
                        }
                        _loc2_.y = 0;
                        if(!_loc8_)
                        {
                           _loc2_.z = 0;
                           _loc2_.w = 1;
                           break loop11;
                        }
                     }
                     else
                     {
                        §§goto(addr01b7);
                        §§push(1 / Number(Math.sqrt(_loc4_)));
                     }
                     §§goto(addr01cf);
                  }
                  §§goto(addr01fc);
               }
               §§goto(addr020c);
            }
            §§push(§§pop() < 1e-10);
            if(_loc9_)
            {
               §§push(!§§pop());
            }
            loop8:
            while(true)
            {
               while(true)
               {
                  if(§§pop())
                  {
                     addr01b7:
                     §§push(_loc4_);
                     if(_loc9_)
                     {
                        addr0180:
                        §§push(0);
                        break loop7;
                     }
                     _loc4_ = §§pop();
                     if(!_loc9_)
                     {
                        break loop8;
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
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     if(!_loc9_)
                     {
                        break loop8;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                  }
                  addr020c:
                  tunnel.§<!M§.reset();
                  tunnel.display(0);
                  break loop8;
               }
               gentleman.spritesheet.§@S§(false);
               dialog.§";§("I do believe that settles that.",180,-300,null,null,null,null,null);
               var _loc6_:* = §&!S§.width(620);
               var _loc7_:§ 7§ = new § 6§(gentleman.§<!U§());
               while(true)
               {
                  if(_loc9_)
                  {
                     dialog.§";§("A trivial task, at least for one with my mnemonic prowess.",-180,-130,null,_loc6_,-1,_loc7_,null);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §%!'§.model.§#"§(false);
                  break;
               }
               return;
            }
            gentleman.§9E§(16.8,28.7);
            gentleman.spritesheet.§,=§(84);
            break loop9;
         }
         _loc1_.z = 3233;
         §§goto(addr004b);
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               gentleman.§9E§(23.7,5.8);
               if(!_loc2_)
               {
                  gentleman.spritesheet.§,=§(46);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            gentleman.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc2_)
         {
            dialog.§";§("Let us correct that.",0,140,null,null,null,_loc1_,null);
            if(!_loc2_)
            {
               §'!+§.§"!U§(0,§%!'§);
            }
         }
      }
      
      public function frame29() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(19.1,29.2);
               if(_loc1_)
               {
                  gentleman.spritesheet.§,=§(74);
                  if(!_loc1_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§@S§(true);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §+!K§.move(5,§%!'§);
               if(_loc2_)
               {
                  break;
               }
            }
            §,!J§ = 0.5;
            break;
         }
      }
      
      public function frame28() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            gentleman.§9E§(17.1,28.2,null,-5);
            if(_loc1_)
            {
               gentleman.spritesheet.§,=§(82);
               while(true)
               {
                  if(!_loc2_)
                  {
                     gentleman.spritesheet.§@S§(false);
                     if(_loc1_)
                     {
                        §+!K§.§"!U§(5,§%!'§);
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                  }
                  §,!J§ = 0.5;
                  break;
               }
            }
         }
      }
      
      public function frame27() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  gentleman.§9E§(20,28.6);
                  if(!_loc1_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(46);
                  if(!_loc1_)
                  {
                     break loop0;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               if(!_loc2_)
               {
                  §+!K§.move(4,§%!'§);
                  if(_loc1_)
                  {
                     break loop0;
                  }
                  break;
               }
               break loop0;
            }
            return;
         }
         §,!J§ = 0.5;
         break loop1;
      }
      
      public function frame26() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  gentleman.§9E§(17.8,28.2,null,-11);
                  if(!_loc1_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(75);
                  if(_loc1_)
                  {
                     gentleman.spritesheet.§@S§(false);
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                  }
               }
               §+!K§.§"!U§(4,§%!'§);
               if(!_loc2_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         §,!J§ = 0.5;
         break loop1;
      }
      
      public function frame25() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc1_)
            {
               gentleman.§9E§(19.7,27.7);
               while(true)
               {
                  if(!_loc1_)
                  {
                     gentleman.spritesheet.§,=§(46);
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  gentleman.spritesheet.§@S§(true);
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §+!K§.move(3,§%!'§);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr007f);
         }
         §,!J§ = 0.5;
         addr007f:
      }
      
      public function frame24() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  gentleman.§9E§(18.3,26.7);
                  if(_loc1_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(46);
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               if(!_loc1_)
               {
                  break loop0;
               }
               §§goto(addr0078);
            }
            return;
         }
         §+!K§.§"!U§(3,§%!'§);
         if(_loc2_)
         {
            addr0078:
            §,!J§ = 0.5;
         }
         break loop1;
      }
      
      public function frame23() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(19.7,27.2);
               if(!_loc1_)
               {
                  break;
               }
               gentleman.spritesheet.§,=§(74);
               if(!_loc2_)
               {
                  gentleman.spritesheet.§@S§(false);
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               §+!K§.move(2,§%!'§);
               if(_loc2_)
               {
                  break;
               }
            }
            §,!J§ = 0.5;
            break;
         }
      }
      
      public function frame22() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(18.3,29.8);
               while(true)
               {
                  if(_loc1_)
                  {
                     gentleman.spritesheet.§,=§(46);
                     if(_loc2_)
                     {
                        break;
                     }
                     gentleman.spritesheet.§@S§(false);
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
                  §+!K§.§"!U§(2,§%!'§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §,!J§ = 0.75;
            break;
         }
      }
      
      public function frame21() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(18.3,27.1);
               if(_loc2_)
               {
                  break;
               }
               gentleman.spritesheet.§,=§(85);
               if(_loc1_)
               {
                  gentleman.spritesheet.§@S§(false);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §%!'§.transform.§6!&§(0,0,-3000);
               if(!_loc1_)
               {
                  break;
               }
            }
            §,!J§ = 0.5;
            break;
         }
      }
      
      public function frame20() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  gentleman.§9E§(19.6,24.7);
                  if(!_loc2_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(46);
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               gentleman.spritesheet.§@S§(true);
               if(!_loc1_)
               {
                  §+!K§.move(1,§%!'§);
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
               break;
            }
            §,!J§ = 0.75;
            break;
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            gentleman.§9E§(0,-30);
         }
      }
      
      public function frame19() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("This won\'t do...",-180,-140,null,null,null,_loc1_,null);
         }
      }
      
      public function frame18() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  gentleman.§9E§(19.6,27.2);
                  if(_loc2_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(74);
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  gentleman.spritesheet.§@S§(false);
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               §+!K§.move(0,§%!'§);
               if(_loc1_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         §,!J§ = 0.75;
         break loop1;
      }
      
      public function frame17() : void
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
                  gentleman.§9E§(18.2,25.6);
                  if(!_loc2_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(46);
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               if(_loc2_)
               {
                  §+!K§.§"!U§(0,§%!'§);
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               break;
            }
            return;
         }
         §,!J§ = 0.75;
         break loop1;
      }
      
      public function frame16() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         if(!_loc9_)
         {
            _loc1_.x = -69;
            while(true)
            {
               if(_loc8_)
               {
                  _loc1_.y = -370;
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               _loc1_.z = 2975;
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
         §§push(Number(Math.sin(1.5707963267948966)));
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            _loc2_.x = 0 * _loc3_;
            if(!_loc9_)
            {
               _loc2_.y = 0 * _loc3_;
               if(_loc8_)
               {
                  _loc2_.z = -1 * _loc3_;
                  if(!_loc9_)
                  {
                     _loc2_.w = Number(Math.cos(1.5707963267948966));
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            §§push(_loc2_.x);
            if(_loc8_)
            {
               §§push(§§pop() * _loc2_.x);
               §§push(_loc2_.y);
               §§push(_loc2_.y);
               if(_loc8_)
               {
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_.z);
                     }
                     §§push(_loc2_.z);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!_loc9_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                        break loop2;
                     }
                  }
               }
               §§push(§§pop() + §§pop() * §§pop());
            }
            §§push(Number(§§pop()));
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            break;
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc9_)
         {
            §§push(§§pop() - 1);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(_loc8_)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           §§push(0);
                           if(_loc8_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(_loc5_);
                              }
                              else
                              {
                                 §§push(-_loc5_);
                                 if(!_loc8_)
                                 {
                                    break loop7;
                                 }
                              }
                              §§push(§§pop() < 1e-10);
                              if(!_loc9_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 break loop5;
                              }
                              if(_loc9_)
                              {
                                 break loop6;
                              }
                              §§push(_loc4_);
                              if(_loc9_)
                              {
                                 break loop7;
                              }
                              §§push(0);
                           }
                           if(§§pop() != §§pop())
                           {
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              break loop7;
                           }
                           _loc2_.x = 0;
                           _loc2_.y = 0;
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.w);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().w = §§pop();
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        break loop4;
                     }
                     _loc4_ = Number(§§pop());
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
                     break loop8;
                  }
                  _loc2_.z = 0;
                  break;
               }
               _loc2_.w = 1;
               if(_loc8_)
               {
                  break;
               }
               break loop4;
            }
            tunnel.§<!M§.reset();
            if(_loc8_)
            {
               break;
            }
            §§goto(addr022f);
         }
         tunnel.display(0);
         gentleman.§9E§(18.2,25.3);
         gentleman.spritesheet.§,=§(85);
         gentleman.spritesheet.§@S§(true);
         addr022f:
         var _loc6_:* = §&!S§.width(600);
         var _loc7_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(!_loc9_)
         {
            dialog.§";§("Now to implement the same configuration in the dark.",-40,270,null,_loc6_,null,_loc7_,null);
         }
      }
      
      public function frame15() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               gentleman.§9E§(1,4.4);
               if(_loc3_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§,=§(84);
            if(_loc4_)
            {
               gentleman.spritesheet.§@S§(false);
               if(!_loc3_)
               {
                  break;
               }
            }
            §§goto(addr007a);
         }
         dialog.§";§("This configuration is a marked improvement.",-80,-320,null,null,null,null,null);
         addr007a:
         var _loc1_:* = §&!S§.width(680);
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               dialog.§";§("It will induce patrons to expend the barest modicum of effort.",120,-150,null,_loc1_,-1,_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            §[!_§ = 0.1;
            break;
         }
      }
      
      public function frame14() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               gentleman.§9E§(1.8,3.4);
               if(_loc2_)
               {
                  gentleman.spritesheet.§,=§(84);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            gentleman.spritesheet.§@S§(true);
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr0079);
         }
         §'!+§.move(4,§%!'§);
         if(_loc2_)
         {
            addr0079:
            §,!J§ = 0.75;
            §§goto(addr0081);
         }
         addr0081:
      }
      
      public function frame13() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  gentleman.§9E§(0.2,4.2);
                  if(!_loc1_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(55);
                  if(!_loc1_)
                  {
                     break loop0;
                  }
               }
               gentleman.spritesheet.§@S§(false);
               if(!_loc2_)
               {
                  §'!+§.§"!U§(4,§%!'§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
               break;
            }
            §,!J§ = 0.5;
            break;
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  gentleman.§9E§(1.82,7);
                  if(_loc2_)
                  {
                     break;
                  }
                  gentleman.spritesheet.§,=§(83);
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               gentleman.spritesheet.§@S§(true);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr007d);
            }
            §'!+§.move(3,§%!'§);
            if(_loc1_)
            {
               break;
            }
            §§goto(addr007d);
         }
         §,!J§ = 0.75;
         addr007d:
      }
      
      public function frame11() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               gentleman.§9E§(0.2,7.7);
               if(_loc2_)
               {
                  break;
               }
               gentleman.spritesheet.§,=§(46);
               if(_loc1_)
               {
                  gentleman.spritesheet.§@S§(true);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §'!+§.§"!U§(3,§%!'§);
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            §,!J§ = 0.5;
            break;
         }
      }
      
      public function frame10() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               gentleman.§9E§(1.4,6.7);
               if(!_loc1_)
               {
                  gentleman.spritesheet.§,=§(86);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            gentleman.spritesheet.§@S§(false);
            if(!_loc1_)
            {
               break;
            }
            §§goto(addr0082);
         }
         §%!'§.transform.§6!&§(0,0,-3000);
         if(!_loc1_)
         {
            §,!J§ = 0.5;
         }
         addr0082:
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
               gentleman.§9E§(0,3.4);
               if(!_loc4_)
               {
                  break;
               }
               gentleman.spritesheet.§,=§(50);
               if(!_loc4_)
               {
                  break;
               }
            }
            gentleman.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:* = §&!S§.width(900);
         var _loc2_:§ 7§ = new § 6§(gentleman.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Such an uncomplicated expanse of tiling presents thoroughly insufficient adversity.",20,-190,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         while(true)
         {
            if(_loc10_)
            {
               §%!'§ = new §']§(tunnel);
               if(!_loc10_)
               {
                  break;
               }
            }
            tunnel.§4M§(§%!'§);
            break;
         }
         §§push([new § E§(167,169),new § E§(144,122),new § E§(120,146),new § E§(192,170),new § E§(96,74)]);
         if(_loc10_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc10_)
         {
            §'!+§ = new §7!b§(Vector.<§ E§>(_loc1_),this);
         }
         §§push([new § E§(642,668,620),new § E§(668,620),new § E§(738,668),new § E§(666,692),new § E§(690,716),new § E§(689,715)]);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc9_)
         {
            §+!K§ = new §7!b§(Vector.<§ E§>(_loc2_),this);
         }
         var _loc3_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc10_)
            {
               _loc3_.x = 258;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc3_.y = 346;
            if(_loc10_)
            {
               _loc3_.z = 777;
            }
            break;
         }
         var _loc4_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc4_ != null)
               {
                  break;
               }
            }
            _loc4_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.9599310885968813)));
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc10_)
            {
               §§push(_loc4_);
               §§push(0.499);
               if(!_loc9_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().x = §§pop();
               if(!_loc9_)
               {
                  §§push(_loc4_);
                  §§push(0.726);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().y = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(_loc4_);
                  §§push(-0.474);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().z = §§pop();
                  if(_loc9_)
                  {
                     break;
                  }
               }
            }
            _loc4_.w = Number(Math.cos(0.9599310885968813));
            break;
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc4_.x);
                        §§push(_loc4_.x);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc10_)
                           {
                              break;
                           }
                           §§push(_loc4_.y);
                           §§push(_loc4_.y);
                           if(_loc9_)
                           {
                              break loop5;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc9_)
                           {
                              break loop6;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc9_)
                           {
                              break loop7;
                           }
                           §§push(Number(§§pop()));
                           §§push(_loc4_.z);
                           if(!_loc10_)
                           {
                              break loop6;
                           }
                           §§push(_loc4_.z);
                           if(!_loc10_)
                           {
                              break loop5;
                           }
                           §§push(§§pop() * §§pop());
                           if(!_loc10_)
                           {
                              break loop4;
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc9_)
                        {
                           break loop7;
                        }
                        §§goto(addr025e);
                     }
                     §§goto(addr0265);
                  }
                  §§push(Number(§§pop()));
                  §§push(_loc4_.w);
                  break loop4;
               }
               addr025e:
               §§push(§§pop() + §§pop());
               if(_loc10_)
               {
                  addr0265:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               while(true)
               {
                  §§push(_loc6_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc10_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               var _loc7_:* = §§pop();
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc7_);
                        §§push(0);
                        if(!_loc9_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc7_);
                           }
                           else
                           {
                              §§push(_loc7_);
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(-§§pop());
                              if(_loc9_)
                              {
                                 break loop10;
                              }
                           }
                           §§push(§§pop() < 1e-10);
                           if(_loc10_)
                           {
                              §§push(!§§pop());
                           }
                           if(!§§pop())
                           {
                              break loop9;
                           }
                           §§push(_loc6_);
                           §§push(0);
                        }
                        if(§§pop() != §§pop())
                        {
                           §§push(1 / Number(Math.sqrt(_loc6_)));
                           if(!_loc9_)
                           {
                              break loop10;
                           }
                           break;
                        }
                        while(true)
                        {
                           if(_loc10_)
                           {
                              _loc4_.x = 0;
                              if(!_loc9_)
                              {
                                 _loc4_.y = 0;
                                 _loc4_.z = 0;
                                 _loc4_.w = 1;
                                 if(!_loc9_)
                                 {
                                    break loop9;
                                 }
                                 break;
                              }
                              break loop9;
                           }
                           §§goto(addr037d);
                        }
                        §§goto(addr0392);
                     }
                     _loc6_ = §§pop();
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        break loop9;
                     }
                     §§push(_loc4_);
                     §§push(_loc4_.y);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().y = §§pop();
                     if(!_loc9_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.z);
                        if(_loc10_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().z = §§pop();
                        §§push(_loc4_);
                        §§push(_loc4_.w);
                        if(_loc10_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().w = §§pop();
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              break loop9;
                           }
                           §§goto(addr0371);
                        }
                        §§goto(addr0392);
                     }
                     §§goto(addr0361);
                  }
                  §§push(Number(§§pop()));
                  break loop11;
               }
               tunnel.§<!M§.reset();
               if(_loc10_)
               {
                  addr0361:
                  tunnel.display(0);
                  if(_loc10_)
                  {
                     addr0371:
                     gentleman.§9E§(0,4.4);
                     addr037d:
                     gentleman.spritesheet.§,=§(74);
                     gentleman.spritesheet.§@S§(false);
                  }
               }
               var _loc8_:§ 7§ = new § 6§(gentleman.§<!U§());
               addr0392:
               if(!_loc9_)
               {
                  dialog.§";§("Hmph.",260,-80,null,null,null,_loc8_,null);
               }
               return;
            }
            §§push(§§pop() * §§pop());
            break loop6;
         }
         §§push(_loc4_.w);
         break loop5;
      }
   }
}

