package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class FourthCondiment extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var pastafarian:§^s§;
      
      public var duplicator:§^s§;
      
      public var child:§^s§;
      
      public function FourthCondiment()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(§>K§.home3,-1,null,{"endTiles":true});
            while(true)
            {
               if(_loc2_)
               {
                  §§push(§§findproperty(frames));
                  §§push(frame0);
                  if(_loc2_)
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
                  §§pop().frames = null;
                  if(_loc1_)
                  {
                     break;
                  }
               }
               name = "Fourth Condiment";
               break;
            }
         }
      }
      
      override public function unloadLevel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            tunnel = null;
            while(true)
            {
               if(_loc1_)
               {
                  duplicator = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
               child = null;
               if(_loc2_)
               {
                  break;
               }
               pastafarian = null;
               if(_loc1_)
               {
                  break;
               }
            }
            sprites.length = 0;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,null);
               if(_loc4_)
               {
                  duplicator.billboardMode = true;
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            sprites.push(duplicator);
            break;
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("homePlanA");
         while(true)
         {
            if(!_loc5_)
            {
               duplicator.goesTo = new § !N§(_loc1_,0);
               if(!_loc4_)
               {
                  break;
               }
            }
            child = new §^s§(§9_§,§'O§.child,false,null,false,null);
            if(_loc4_)
            {
               child.billboardMode = true;
               if(!_loc4_)
               {
                  break;
               }
            }
            sprites.push(child);
            break;
         }
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("homePlanA");
         while(true)
         {
            if(!_loc5_)
            {
               child.goesTo = new § !N§(_loc2_,0);
               if(!_loc4_)
               {
                  break;
               }
            }
            pastafarian = new §^s§(§9_§,§'O§.pastafarian,false,null,false,null);
            if(!_loc5_)
            {
               break;
            }
            sprites.push(pastafarian);
            addr0142:
            var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get("homePlanA");
            if(!_loc5_)
            {
               pastafarian.goesTo = new § !N§(_loc3_,1);
            }
            return;
            addr0129:
         }
         pastafarian.billboardMode = true;
         if(!_loc5_)
         {
            §§goto(addr0129);
         }
         §§goto(addr0142);
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         duplicator.§9E§(3,4,true);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  duplicator.spritesheet.§,=§(84);
                  if(_loc5_)
                  {
                     break;
                  }
                  duplicator.spritesheet.§@S§(false);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  child.§9E§(3,3.9,true,1);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  child.spritesheet.§,=§(120);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               child.spritesheet.§@S§(false);
               if(_loc4_)
               {
                  break loop0;
               }
               §§goto(addr0092);
            }
            pastafarian.spritesheet.§@S§(true);
            var _loc1_:* = §&!S§.scale(0.4);
            var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
            if(_loc4_)
            {
               dialog.§";§("So? Did you learn anything good?",180,80,_loc1_,null,null,_loc2_,null);
            }
            _loc1_ = §&!S§.scale(0.4);
            var _loc3_:* = §&!S§.width(210);
            _loc2_ = new § 6§(duplicator.§<!U§());
            while(true)
            {
               if(!_loc5_)
               {
                  dialog.§";§("All I learned is that pirates are super boring.",260,210,_loc1_,_loc3_,null,_loc2_,null);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               pastafarian.transform.§"I§(child.transform.§+n§());
               break;
            }
            return;
         }
         pastafarian.§9E§(2,8.7,true,3);
         addr0092:
         pastafarian.spritesheet.§,=§(106);
         break loop1;
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            duplicator.§9E§(3,4,true);
         }
         duplicator.spritesheet.§,=§(84);
         duplicator.spritesheet.§@S§(false);
         child.§9E§(3,3.9,true,1);
         while(true)
         {
            if(_loc3_)
            {
               child.spritesheet.§,=§(120);
               child.spritesheet.§@S§(false);
               pastafarian.§9E§(2,8,true);
               if(!_loc3_)
               {
                  break;
               }
            }
            pastafarian.spritesheet.§,=§(103);
            pastafarian.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(700);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         while(true)
         {
            if(!_loc4_)
            {
               dialog.§";§("Very well, I suppose this is as good a point as any to stop for today.",-60,-110,null,_loc1_,null,_loc2_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            pastafarian.transform.§"I§(child.transform.§+n§());
            break;
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         child.model.§#"§(false);
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc1_)
               {
                  duplicator.§9E§(3,4,true);
                  if(!_loc1_)
                  {
                     duplicator.spritesheet.§,=§(84);
                     if(_loc1_)
                     {
                        break;
                     }
                  }
                  duplicator.spritesheet.§@S§(false);
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               child.§9E§(3,4,true,1);
               child.spritesheet.§,=§(120);
               child.spritesheet.§@S§(false);
               if(_loc2_)
               {
                  pastafarian.§9E§(2,8,true);
                  pastafarian.spritesheet.§,=§(102);
                  break;
               }
               §§goto(addr00c9);
            }
            pastafarian.spritesheet.§@S§(true);
            break;
         }
         pastafarian.transform.§"I§(child.transform.§+n§());
         addr00c9:
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         duplicator.§9E§(3,1.3,true);
         if(_loc3_)
         {
            duplicator.spritesheet.§,=§(76);
            duplicator.spritesheet.§@S§(true);
            child.§9E§(3,6.9,true,1);
            if(_loc3_)
            {
               child.spritesheet.§,=§(44);
            }
         }
         child.spritesheet.§@S§(false);
         pastafarian.§9E§(2,8,true);
         while(true)
         {
            if(!_loc4_)
            {
               pastafarian.spritesheet.§,=§(102);
               if(_loc4_)
               {
                  break;
               }
            }
            pastafarian.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Oh, hello, Duplicator!",-100,-120,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Dad?!",260,100,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.scale(0.5);
         _loc1_ = new § 6§(duplicator.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("Child!",100,220,_loc2_,null,null,_loc1_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            pastafarian.transform.§"I§(child.transform.§+n§());
            break;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         duplicator.§9E§(3,-1,true,20);
         duplicator.spritesheet.§,=§(74);
         duplicator.spritesheet.§@S§(false);
         if(_loc6_)
         {
            child.§9E§(3,7,true);
         }
         child.spritesheet.§,=§(122);
         if(_loc6_)
         {
            child.spritesheet.§@S§(true);
            pastafarian.§9E§(2,8,true);
         }
         pastafarian.spritesheet.§,=§(102);
         if(!_loc5_)
         {
            pastafarian.spritesheet.§@S§(true);
         }
         var _loc1_:* = §&!S§.width(1100);
         if(_loc6_)
         {
            dialog.§";§("Some scholars refer to this as the Hypocritical Condiment, as the Flying Spaghetti Monster is guilty of not following His own advice. As you know, He created much of the Universe in a drunk stupor, resulting in its myriad flaws.",-20,-240,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(480);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(_loc6_)
         {
            dialog.§";§("Yet despite the Fourth Condiment, He hasn\'t taken any action to fix these flaws.",-340,70,null,_loc1_,-1,_loc2_,null);
         }
         var _loc3_:§'§ = dialog;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(int(_loc3_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc3_.§@#§);
               §§push(int(_loc3_.§@#§.length));
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§7s§ = 300;
            break;
         }
         var _loc4_:§'§ = dialog;
         while(true)
         {
            if(_loc6_)
            {
               if(int(_loc4_.§@#§.length) > 0)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(_loc4_.§@#§);
                  §§push(int(_loc4_.§@#§.length));
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§push(§§pop()[§§pop()]);
               }
               else
               {
                  §§push(null);
               }
               §§pop().§6;§();
               if(!_loc6_)
               {
                  break;
               }
            }
            pastafarian.transform.§"I§(child.transform.§+n§());
            break;
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(!_loc10_)
            {
               _loc1_.x = 62;
               if(!_loc10_)
               {
                  _loc1_.y = 87;
                  if(!_loc11_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 5831;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(!_loc10_)
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
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc11_)
            {
               §§push(_loc2_);
               §§push(0.128);
               if(_loc11_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().x = §§pop();
               if(_loc10_)
               {
                  break;
               }
            }
            §§push(_loc2_);
            §§push(0.986);
            if(_loc11_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().y = §§pop();
            if(!_loc10_)
            {
               §§push(_loc2_);
               §§push(-0.105);
               if(_loc11_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc11_)
               {
                  _loc2_.w = Number(Math.cos(1.5533430342749535));
               }
            }
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
                  if(_loc11_)
                  {
                     §§push(§§pop() * _loc2_.x);
                     §§push(_loc2_.y);
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(_loc2_.y);
                     if(_loc10_)
                     {
                        break loop4;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc11_)
                     {
                        break loop3;
                     }
                     §§push(Number(§§pop()));
                  }
                  §§push(_loc2_.z);
                  §§push(_loc2_.z);
                  if(!_loc10_)
                  {
                     break loop4;
                  }
                  §§goto(addr011f);
               }
               §§goto(addr0120);
            }
            §§push(§§pop() * §§pop());
            if(_loc11_)
            {
               §§push(§§pop() + §§pop());
               break;
            }
            §§goto(addr011c);
         }
         addr0120:
         §§push(Number(§§pop()));
         §§push(_loc2_.w);
         if(!_loc10_)
         {
            addr011c:
            addr011f:
            §§push(§§pop() * _loc2_.w);
         }
         while(true)
         {
            §§push(§§pop() + §§pop());
            if(_loc11_)
            {
               §§push(Number(§§pop()));
               if(_loc10_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         §§push(_loc4_);
         if(!_loc10_)
         {
            §§push(§§pop() - 1);
            if(!_loc10_)
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
               if(_loc11_)
               {
                  §§push(_loc5_);
                  §§push(0);
                  if(!_loc11_)
                  {
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     §§push(-_loc5_);
                     if(_loc11_)
                     {
                        break loop6;
                     }
                     §§goto(addr0184);
                  }
               }
               §§push(_loc5_);
               break loop6;
            }
            while(true)
            {
               if(§§pop() == §§pop())
               {
                  _loc2_.x = 0;
                  _loc2_.y = 0;
                  §§goto(addr0194);
               }
               else
               {
                  §§push(1 / Number(Math.sqrt(_loc4_)));
                  if(!_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc4_ = §§pop();
                  if(_loc11_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.x);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().x = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.y);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().y = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.z);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().z = §§pop();
                     §§push(_loc2_);
                     §§push(_loc2_.w);
                     if(!_loc10_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                     §§pop().w = §§pop();
                  }
               }
               §§goto(addr0214);
            }
            §§goto(addr022d);
         }
         §§push(§§pop() < 1e-10);
         if(!_loc10_)
         {
            §§push(!§§pop());
         }
         loop8:
         while(true)
         {
            loop9:
            while(true)
            {
               if(§§pop())
               {
                  addr0194:
                  if(!_loc10_)
                  {
                     addr0184:
                     §§push(_loc4_);
                     §§push(0);
                     break loop7;
                  }
                  _loc2_.z = 0;
                  if(_loc10_)
                  {
                     break;
                  }
                  _loc2_.w = 1;
                  if(!_loc11_)
                  {
                     break loop8;
                  }
               }
               addr0214:
               tunnel.§<!M§.reset();
               tunnel.display(0);
               while(true)
               {
                  if(!_loc10_)
                  {
                     break loop9;
                  }
                  addr0279:
                  child.spritesheet.§@S§(true);
                  addr0283:
                  pastafarian.§9E§(2,8,true);
                  break;
               }
               addr028f:
               pastafarian.spritesheet.§,=§(110);
               break loop8;
            }
            addr022d:
            duplicator.§9E§(3,-7,true,20);
            while(true)
            {
               if(!_loc10_)
               {
                  duplicator.spritesheet.§,=§(83);
                  if(!_loc11_)
                  {
                     break;
                  }
                  duplicator.spritesheet.§@S§(false);
                  if(!_loc10_)
                  {
                     child.§9E§(3,7,true);
                  }
                  child.spritesheet.§,=§(121);
                  §§goto(addr0279);
               }
               §§goto(addr0283);
            }
            §§goto(addr028f);
         }
         pastafarian.spritesheet.§@S§(true);
         var _loc6_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc10_)
         {
            dialog.§";§("Uuugggh...",340,240,null,null,null,_loc6_,null);
         }
         var _loc7_:* = §&!S§.width(700);
         if(!_loc10_)
         {
            dialog.§";§("...and speaking of hypocrisy, the Fourth Condiment is as follows:",-200,-350,null,_loc7_,null,null,null);
         }
         _loc7_ = §&!S§.width(820);
         _loc6_ = new § 6§(pastafarian.§<!U§());
         if(_loc11_)
         {
            dialog.§";§("\"I\'d Really Rather You Didn\'t Ignore A Problem Because It Isn\'t Your Fault. Problems don\'t just solve themselves; you need to make an effort to leave the Universe in a better condition than when you found it.\"",120,-90,null,_loc7_,-1,_loc6_,null);
         }
         var _loc8_:§'§ = dialog;
         while(true)
         {
            while(true)
            {
               if(_loc11_)
               {
                  if(int(_loc8_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc11_)
                  {
                     continue loop12;
                  }
               }
               §§push(_loc8_.§@#§);
               §§push(int(_loc8_.§@#§.length));
               if(_loc11_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§7s§ = 320;
            continue loop12;
         }
         var _loc9_:§'§ = dialog;
         loop12:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  if(int(_loc9_.§@#§.length) <= 0)
                  {
                     §§push(null);
                     break;
                  }
                  if(!_loc11_)
                  {
                     break loop12;
                  }
               }
               §§push(_loc9_.§@#§);
               §§push(int(_loc9_.§@#§.length));
               if(_loc11_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop()[§§pop()]);
               break;
            }
            §§pop().§6;§();
            if(!_loc10_)
            {
               pastafarian.transform.§"I§(child.transform.§+n§());
            }
            break;
         }
      }
   }
}

