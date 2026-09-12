package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class TwoMonthWait extends §+Z§
   {
      
      public var duplicator:§^s§;
      
      public var child:§^s§;
      
      public function TwoMonthWait()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               super(§>K§.§&!H§,0);
               if(_loc1_)
               {
                  break;
               }
            }
            §3!<§(new § !N§(§>K§.§&!H§,1));
            while(true)
            {
               if(_loc2_)
               {
                  break loop0;
               }
               addr00a7:
               name = "Two Month Wait";
               break;
            }
            §§goto(addr00ae);
         }
         followingCutscene = "TwoMonthWait2";
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
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§push(frame3);
            if(_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().frames = null;
            if(_loc2_)
            {
               §§goto(addr00a7);
            }
         }
         addr00ae:
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
               if(_loc1_)
               {
                  duplicator = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            child = null;
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr0052);
         }
         sprites.length = 0;
         addr0052:
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         duplicator = new §^s§(§9_§,§'O§.duplicator,false,null,false,null);
         duplicator.billboardMode = true;
         while(true)
         {
            if(_loc1_)
            {
               sprites.push(duplicator);
               if(!_loc1_)
               {
                  break;
               }
               child = new §^s§(§9_§,§'O§.child,false,null,false,null);
               if(!_loc1_)
               {
                  break;
               }
            }
            child.billboardMode = true;
            break;
         }
         sprites.push(child);
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  duplicator.§9E§(0.5,11.6);
                  if(_loc3_)
                  {
                     break;
                  }
                  duplicator.spritesheet.§,=§(71);
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               duplicator.spritesheet.§@S§(true);
               if(_loc2_)
               {
                  break loop0;
               }
               break;
            }
            var _loc1_:§ 7§ = new § 6§(child.§<!U§());
            while(true)
            {
               if(_loc2_)
               {
                  dialog.§";§("How?",-200,-80,null,null,null,_loc1_,null);
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               dialog.§";§("Well, uh... I don\'t know.",300,100,null,null,null,null,null);
               break;
            }
            _loc1_ = new § 6§(duplicator.§<!U§());
            if(_loc2_)
            {
               dialog.§";§("I\'m kind of counting on you to find a way.",40,340,null,null,-1,_loc1_,null);
            }
            return;
         }
         child.§9E§(0.8,11.4);
         if(_loc2_)
         {
            child.spritesheet.§,=§(78);
         }
         break loop1;
      }
      
      public function frame2() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               duplicator.§9E§(0.5,11.5);
               if(!_loc3_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§,=§(76);
            if(!_loc4_)
            {
               duplicator.spritesheet.§@S§(false);
            }
            break;
         }
         var _loc1_:* = §&!S§.width(430);
         if(_loc3_)
         {
            dialog.§";§("Hey, come on, look on the bright side.",-150,-250,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Maybe we can find a faster way!",20,-80,null,null,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(670);
         _loc2_ = new § 6§(duplicator.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Then we\'ll get home two months before the Angel does!",40,350,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               duplicator.spritesheet.§,=§(75);
               if(!_loc4_)
               {
                  break;
               }
            }
            duplicator.spritesheet.§@S§(true);
            if(_loc4_)
            {
               break;
            }
            §§goto(addr004d);
         }
         child.spritesheet.§,=§(113);
         addr004d:
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("But two months is too long!",-220,-80,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.scale(0.4);
         var _loc3_:* = §&!S§.width(220);
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Actually he might have said two and a half...",240,50,_loc2_,_loc3_,null,_loc1_,null);
            if(_loc4_)
            {
               § !C§("might");
               if(_loc4_)
               {
                  dialog.§";§("What?",-220,220,null,null,0,null,null);
               }
            }
         }
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("Nothing!",20,360,null,null,null,_loc1_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         while(true)
         {
            if(_loc7_)
            {
               _loc1_.x = 100;
               if(_loc7_)
               {
                  _loc1_.y = -63;
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            _loc1_.z = 613;
            break;
         }
         var _loc2_:§"B§ = tunnel.§<!M§.§,t§;
         while(true)
         {
            if(_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new §"B§();
            break;
         }
         §§push(Number(Math.sin(0.7853981633974483)));
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  _loc2_.x = 0 * _loc3_;
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc2_.y = 0 * _loc3_;
                  if(_loc8_)
                  {
                     continue loop5;
                  }
               }
               _loc2_.z = -1 * _loc3_;
               if(!_loc8_)
               {
                  break;
               }
               continue loop5;
            }
            _loc2_.w = Number(Math.cos(0.7853981633974483));
            continue loop5;
         }
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop9:
               while(true)
               {
                  §§push(_loc2_.x * _loc2_.x);
                  §§push(_loc2_.y);
                  §§push(_loc2_.y);
                  if(_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_)
                     {
                        break loop5;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        break loop4;
                     }
                     while(true)
                     {
                        §§push(_loc2_.z);
                        if(!_loc8_)
                        {
                           §§push(_loc2_.z);
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop() * §§pop());
                           if(_loc8_)
                           {
                              break loop9;
                           }
                           §§push(_loc2_.w);
                           if(_loc8_)
                           {
                              break loop5;
                           }
                        }
                        §§push(_loc2_.w);
                        break;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  break loop5;
               }
               §§goto(addr010a);
            }
            §§push(§§pop() + §§pop());
            if(_loc7_)
            {
               break loop9;
            }
            addr010a:
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
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
         loop7:
         while(true)
         {
            §§push(_loc5_);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
               if(_loc7_)
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
                  _loc2_.x = 0;
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc2_.y = 0;
                  _loc2_.z = 0;
                  _loc2_.w = 1;
                  if(!_loc8_)
                  {
                     break loop7;
                  }
               }
               else
               {
                  _loc4_ = 1 / Number(Math.sqrt(_loc4_));
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
               }
               §§push(_loc2_);
               §§push(_loc2_.w);
               if(!_loc8_)
               {
                  §§push(§§pop() * _loc4_);
               }
               §§pop().w = §§pop();
               if(_loc7_)
               {
                  break loop7;
               }
               §§goto(addr022f);
            }
            §§goto(addr01f2);
         }
         tunnel.§<!M§.reset();
         tunnel.display(0);
         duplicator.§9E§(0.4,11.9);
         addr01f2:
         duplicator.spritesheet.§,=§(67);
         if(!_loc8_)
         {
            duplicator.spritesheet.§@S§(false);
         }
         child.§9E§(0.8,11.5);
         child.spritesheet.§,=§(114);
         child.spritesheet.§@S§(true);
         addr022f:
         var _loc6_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("Two months?!",-200,-80,null,null,null,_loc6_,null);
            if(_loc7_)
            {
               § !C§("months");
            }
         }
         _loc6_ = new § 6§(duplicator.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("So the Angel says.",320,60,null,null,null,_loc6_,null);
         }
      }
   }
}

