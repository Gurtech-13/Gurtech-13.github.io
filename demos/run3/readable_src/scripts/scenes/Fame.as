package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class Fame extends §+Z§
   {
      
      public var skater:StageActor;
      
      public var §-P§:StageActor;
      
      public function Fame()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §§push(this);
               §§push(§>K§.§]!6§);
               §§push(5);
               §§push(null);
               §§push("stopLoadingAfter");
               §§push(6);
               §§push("customDate");
               §§push(§>K§.§]!6§.§99§(§>K§.§]!6§.levelCount));
               if(!_loc1_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),null,null,§+!"§.CUSTOM(§>K§.§]!6§.§#R§));
               if(_loc1_)
               {
                  break;
               }
               §8#§ = true;
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
                  if(!_loc1_)
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
                  if(_loc2_)
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
                  if(_loc2_)
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
                  §§pop().frames = null;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            name = "Fame";
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
               CharacterRegistry.student.§>t§.§?F§(§>K§.§@§.pathName);
               if(!_loc1_)
               {
                  CharacterRegistry.student.§ j§.§?F§(0);
                  if(_loc1_)
                  {
                     break;
                  }
               }
            }
            super.§1!F§();
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
               if(!_loc1_)
               {
                  break;
               }
            }
            §-P§ = null;
            if(!_loc2_)
            {
               skater = null;
               if(!_loc2_)
               {
                  break;
               }
            }
            §§goto(addr0051);
         }
         sprites.length = 0;
         addr0051:
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_)
         {
            §-P§ = new StageActor(section,CharacterRegistry.§-P§,false,null,false,null);
            if(!_loc6_)
            {
               §-P§.billboardMode = true;
               if(!_loc6_)
               {
                  sprites.push(§-P§);
               }
            }
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
            §-P§.goesTo = new § !N§(_loc2_,5);
            if(!_loc6_)
            {
               skater = new StageActor(section,CharacterRegistry.skater,false,null,false,null);
               while(true)
               {
                  if(_loc5_)
                  {
                     skater.billboardMode = true;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  sprites.push(skater);
                  break;
               }
            }
         }
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc5_)
         {
            skater.goesTo = new § !N§(_loc4_,6);
         }
      }
      
      public function frame9() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc6_:* = null as §^U§;
         §-P§.placeAt(3.5,38.2);
         while(true)
         {
            if(!_loc8_)
            {
               §-P§.spritesheet.§,=§(88);
               if(!_loc7_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§@S§(true);
            if(_loc7_)
            {
               skater.placeAt(4.7,38.2);
               skater.spritesheet.§,=§(88);
            }
            break;
         }
         skater.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(790);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc8_)
         {
            dialog.§";§("One time, the Sailor asked me about thunderstorms, and I showed him my map of a thunder cloud.",-20,-260,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(430);
         if(_loc7_)
         {
            dialog.§";§("I remember that! He sailed near a storm and got struck by lightning!",-300,10,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(350);
         _loc2_ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(!_loc8_)
            {
               dialog.§";§("He had to go to the Hospital!",-220,290,null,_loc1_,-1,_loc2_,null);
               if(_loc7_)
               {
                  dialog.§";§("That was your fault?",340,340,null,null,-1,null,null);
                  if(_loc8_)
                  {
                     break;
                  }
               }
            }
            dialog.§@#§[0].§7s§ = 270;
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr0183);
         }
         dialog.§@#§[1].§7s§ = 130;
         addr0183:
         var _loc3_:§'§ = dialog;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§^U§> = _loc3_.§@#§;
         if(_loc7_)
         {
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               if(!_loc8_)
               {
                  _loc4_++;
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               _loc6_.§6;§();
            }
         }
      }
      
      public function frame8() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null as §^U§;
         §-P§.placeAt(3.5,38.2);
         §-P§.spritesheet.§,=§(89);
         while(true)
         {
            if(!_loc7_)
            {
               §-P§.spritesheet.§@S§(true);
               skater.placeAt(4.7,38.2);
               if(!_loc8_)
               {
                  break;
               }
            }
            skater.spritesheet.§,=§(50);
            if(!_loc7_)
            {
               skater.spritesheet.§@S§(false);
            }
            break;
         }
         var _loc1_:* = §&!S§.width(650);
         if(_loc8_)
         {
            dialog.§";§("I don\'t know everything. I don\'t pretend to know everything.",-120,-270,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(510);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("But somehow, people started to think I did.",160,-90,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§-P§.§<!U§());
         while(true)
         {
            if(!_loc7_)
            {
               dialog.§";§("And they took my guesses as absolute truth.",60,340,null,null,null,_loc2_,null);
               if(_loc7_)
               {
                  break;
               }
            }
            dialog.§@#§[0].§7s§ = 150;
            break;
         }
         var _loc3_:§'§ = dialog;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:Vector.<§^U§> = _loc3_.§@#§;
         if(_loc8_)
         {
            while(_loc4_ < int(_loc5_.length))
            {
               _loc6_ = _loc5_[_loc4_];
               if(_loc8_)
               {
                  _loc4_++;
                  if(_loc8_)
                  {
                     _loc6_.§6;§();
                  }
               }
            }
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §-P§.placeAt(3.5,38.2);
         §-P§.spritesheet.§,=§(88);
         if(_loc3_)
         {
            §-P§.spritesheet.§@S§(true);
            skater.placeAt(4.7,38.2);
            if(!_loc4_)
            {
               skater.spritesheet.§,=§(50);
            }
         }
         skater.spritesheet.§@S§(false);
         dialog.§";§("All those quotes you mentioned?",-80,-300,null,null,null,null,null);
         var _loc1_:* = §&!S§.width(500);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("I didn\'t appreciate them any more than you.",260,-110,null,_loc1_,-1,_loc2_,null);
         }
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               §-P§.placeAt(3.5,38.2);
               §-P§.spritesheet.§,=§(88);
               if(!_loc4_)
               {
                  break;
               }
               §-P§.spritesheet.§@S§(true);
            }
            skater.placeAt(4.7,38.2);
            break;
         }
         skater.spritesheet.§,=§(89);
         skater.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(520);
         if(_loc4_)
         {
            dialog.§";§("I shouldn\'t complain about you to your face.",-220,-70,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("I\'m sorry.",-80,60,null,null,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(360);
         _loc2_ = new § 6§(§-P§.§<!U§());
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("You probably shouldn\'t, but I\'ll let it slide.",400,180,null,_loc1_,null,_loc2_,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            dialog.§";§("I happen to agree with you.",140,360,null,null,-1,null,null);
            break;
         }
      }
      
      public function frame5() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §-P§.placeAt(3.5,38.2);
         while(true)
         {
            if(!_loc5_)
            {
               §-P§.spritesheet.§,=§(70);
               §-P§.spritesheet.§@S§(false);
               skater.placeAt(4.7,38.2);
               if(_loc5_)
               {
                  break;
               }
               skater.spritesheet.§,=§(89);
               if(!_loc4_)
               {
                  break;
               }
            }
            skater.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.width(700);
         if(!_loc5_)
         {
            dialog.§";§("And don\'t get me started on the \"there\'s a map for that\" fad.",-40,-290,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(470);
         if(!_loc5_)
         {
            dialog.§";§("The Dancer wouldn\'t shut up about that one.",-260,-110,null,_loc1_,-1,null,null);
         }
         _loc1_ = §&!S§.scale(0.7);
         var _loc2_:* = §&!S§.width(300);
         var _loc3_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("It\'s like, we get it, the Cartographer made lots of maps.",-320,80,_loc1_,_loc2_,-1,_loc3_,null);
         }
         _loc3_ = new § 6§(skater.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("...I\'m being rude, aren\'t I.",340,360,null,null,null,_loc3_,null);
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §-P§.placeAt(3.5,38.2);
            while(true)
            {
               if(_loc3_)
               {
                  §-P§.spritesheet.§,=§(70);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §-P§.spritesheet.§@S§(false);
               if(_loc3_)
               {
                  skater.placeAt(4.7,38.2);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               addr006a:
               skater.spritesheet.§@S§(false);
            }
            skater.spritesheet.§,=§(90);
            §§goto(addr006a);
         }
         var _loc1_:* = §&!S§.width(830);
         if(_loc3_)
         {
            dialog.§";§("You were different. Everyone knew you. Everyone talked about you.",40,-330,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(630);
         if(_loc3_)
         {
            dialog.§";§("\"Did you hear about the Cartographer\'s latest map?\"",100,-150,null,_loc1_,-1,null,null);
         }
         _loc1_ = §&!S§.width(350);
         if(!_loc4_)
         {
            dialog.§";§("\"I got the Cartographer\'s autograph!\"",-280,80,null,_loc1_,-1,null,null);
         }
         _loc1_ = §&!S§.width(900);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("\"Hey kids, today we have a special guest! Guess who? It\'s the Cartographer!\"",40,350,null,_loc1_,-1,_loc2_,null);
         }
      }
      
      public function frame3() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §-P§.placeAt(3.5,38.2);
         §-P§.spritesheet.§,=§(75);
         if(_loc3_)
         {
            §-P§.spritesheet.§@S§(true);
            skater.placeAt(4.7,38.2);
            skater.spritesheet.§,=§(91);
            skater.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(520);
         if(!_loc4_)
         {
            dialog.§";§("I went all around the Planet and made friends with everyone I could.",140,-240,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(390);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("But most of them forgot me.",-260,10,null,_loc1_,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(690);
         _loc2_ = new § 6§(skater.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("It was like my official nicknames were \"that kid\" and \"hey you.\"",80,350,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §-P§.placeAt(3.5,38.2);
         while(true)
         {
            if(_loc4_)
            {
               §-P§.spritesheet.§,=§(78);
               §-P§.spritesheet.§@S§(true);
               if(_loc3_)
               {
                  break;
               }
            }
            skater.placeAt(4.7,38.2);
            break;
         }
         skater.spritesheet.§,=§(28);
         if(_loc4_)
         {
            skater.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(510);
         if(_loc4_)
         {
            dialog.§";§("I\'m telling you, if I was as famous as you, I\'d never give that up!",-240,-80,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Then go for it!",360,-20,null,null,null,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("I did.",-60,300,null,null,0,_loc2_,null);
         }
      }
      
      public function frame16() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §-P§.placeAt(3.5,38.2);
            while(true)
            {
               if(_loc3_)
               {
                  §-P§.spritesheet.§,=§(88);
                  §-P§.spritesheet.§@S§(true);
                  skater.placeAt(4.7,38.2);
                  if(!_loc3_)
                  {
                     break;
                  }
                  skater.spritesheet.§,=§(88);
                  if(_loc4_)
                  {
                     break;
                  }
                  skater.spritesheet.§@S§(false);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               dialog.§";§("I can\'t tell you.",0,-240,null,null,null,null,null);
               break;
            }
         }
         var _loc1_:* = §&!S§.width(340);
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Come on! What\'s the harm?",-200,10,null,_loc1_,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(370);
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("No, I literally can\'t tell you because I don\'t know.",400,180,null,_loc1_,0,_loc2_,null);
         }
         _loc1_ = §&!S§.width(700);
         if(!_loc4_)
         {
            dialog.§";§("I have my guesses, but I refuse to give you an incomplete map.",80,360,null,_loc1_,-1,null,null);
         }
      }
      
      public function frame15() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §-P§.placeAt(3.5,38.2);
            §-P§.spritesheet.§,=§(65);
            §-P§.spritesheet.§@S§(true);
            while(true)
            {
               if(_loc4_)
               {
                  skater.placeAt(4.7,38.2);
                  skater.spritesheet.§,=§(28);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               skater.spritesheet.§@S§(false);
               break;
            }
         }
         var _loc1_:* = §&!S§.width(470);
         if(_loc4_)
         {
            dialog.§";§("You lost me, but I\'ll take your word for it.",-200,-270,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Anyway, let\'s back up a bit.",-220,-60,null,null,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("You never explained how to get famous.",40,340,null,null,null,_loc2_,null);
         }
      }
      
      public function frame14() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §-P§.placeAt(3.5,38.2);
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.spritesheet.§,=§(64);
               §-P§.spritesheet.§@S§(true);
               if(!_loc3_)
               {
                  skater.placeAt(4.7,38.2);
                  if(!_loc4_)
                  {
                     break;
                  }
                  skater.spritesheet.§,=§(28);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
            }
            skater.spritesheet.§@S§(false);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Oh sure, blame the Sailor.",-320,-220,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(500);
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("I don\'t blame him! Everyone makes this mistake, and I should have planned for it.",300,-130,null,_loc2_,null,_loc1_,null);
         }
         _loc2_ = §&!S§.width(730);
         while(true)
         {
            if(_loc4_)
            {
               dialog.§";§("Even I sometimes forget that my mental maps have flaws.",-80,310,null,_loc2_,-1,null,null);
               if(_loc3_)
               {
                  break;
               }
            }
            § !C§("I");
            break;
         }
         _loc2_ = §&!S§.scale(0.5);
         if(_loc4_)
         {
            dialog.§";§("You\'d think I\'d have learned by now, but no.",360,380,_loc2_,null,-1,null,null);
         }
      }
      
      public function frame13() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §-P§.placeAt(3.5,38.2);
         §-P§.spritesheet.§,=§(88);
         §-P§.spritesheet.§@S§(true);
         skater.placeAt(4.7,38.2);
         if(!_loc4_)
         {
            skater.spritesheet.§,=§(50);
            if(!_loc4_)
            {
               skater.spritesheet.§@S§(false);
            }
         }
         var _loc1_:* = §&!S§.width(800);
         if(!_loc4_)
         {
            dialog.§";§("The Sailor\'s map only mentioned the most common types of lightning.",-80,-310,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(680);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Since I didn\'t know about clear-air lightning, neither did he.",180,-110,null,_loc1_,-1,_loc2_,null);
         }
         _loc1_ = §&!S§.width(830);
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("But he assumed he knew everything about storms, and he got way too close.",60,350,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame12() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §-P§.placeAt(3.5,38.2);
               if(!_loc4_)
               {
                  §-P§.spritesheet.§,=§(78);
                  §-P§.spritesheet.§@S§(true);
                  if(!_loc3_)
                  {
                     break;
                  }
                  skater.placeAt(4.7,38.2);
                  skater.spritesheet.§,=§(50);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               skater.spritesheet.§@S§(false);
               if(_loc4_)
               {
                  break;
               }
            }
            dialog.§";§("That isn\'t the same thing though.",-240,-300,null,null,null,null,null);
            break;
         }
         var _loc1_:* = §&!S§.width(790);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("He had a simplified mental model of a thunderstorm, which he used to make a decision about an actual thunderstorm.",120,-100,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         while(true)
         {
            if(!_loc4_)
            {
               dialog.§";§("So... it\'s like a map.",-260,220,null,null,0,_loc2_,null);
               if(!_loc3_)
               {
                  break;
               }
            }
            § !C§("like");
            break;
         }
         _loc1_ = §&!S§.width(680);
         if(_loc3_)
         {
            dialog.§";§("Very much so. It serves the same purpose and has the same flaws.",240,330,null,_loc1_,1,null,null);
         }
      }
      
      public function frame11() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §-P§.placeAt(3.5,38.2);
         §-P§.spritesheet.§,=§(88);
         if(!_loc3_)
         {
            §-P§.spritesheet.§@S§(true);
            skater.placeAt(4.7,38.2);
            skater.spritesheet.§,=§(50);
            skater.spritesheet.§@S§(false);
         }
         var _loc1_:* = §&!S§.width(610);
         if(_loc4_)
         {
            dialog.§";§("I gave him a partial map, and he took it as a complete map.",-140,-290,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(570);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("If I\'d left his map blank, he\'d have used more caution.",100,-110,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(skater.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Wait, you gave him your map?",-260,100,null,null,null,_loc2_,null);
         }
         _loc1_ = §&!S§.width(330);
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("No, I gave him a mental map.",360,290,null,_loc1_,null,_loc2_,null);
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §-P§.placeAt(3.5,38.2);
         §-P§.spritesheet.§,=§(75);
         if(!_loc4_)
         {
            §-P§.spritesheet.§@S§(true);
            skater.placeAt(4.7,38.2);
         }
         skater.spritesheet.§,=§(50);
         skater.spritesheet.§@S§(false);
         dialog.§";§("Well, yes and no. Mostly yes.",-20,-280,null,null,null,null,null);
         var _loc1_:* = §&!S§.width(770);
         var _loc2_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("I didn\'t realize he wanted to sail into a thunderstorm, but I should never have shown him an unfinished map.",20,-120,null,_loc1_,-1,_loc2_,null);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §-P§.placeAt(3.5,38.2);
         §-P§.spritesheet.§,=§(88);
         if(!_loc3_)
         {
            §-P§.spritesheet.§@S§(true);
         }
         skater.placeAt(4.7,38.2);
         skater.spritesheet.§,=§(88);
         skater.spritesheet.§@S§(false);
         dialog.§";§("But you\'re famous!",-380,-220,null,null,null,null,null);
         var _loc1_:§ 7§ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("I got tired of fame.",40,-80,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(skater.§<!U§());
         if(_loc2_)
         {
            dialog.§";§("Wait, really?",-180,120,null,null,0,_loc1_,null);
         }
         _loc1_ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Yes, really.",340,300,null,null,null,_loc1_,null);
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Point3D = tunnel.camera.§%!7§;
         while(true)
         {
            if(!_loc9_)
            {
               _loc1_.x = -234;
               if(!_loc8_)
               {
                  break;
               }
            }
            _loc1_.y = 67;
            if(!_loc9_)
            {
               _loc1_.z = 3396;
            }
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
         §§push(Number(Math.sin(0.5497787143782138)));
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            §§push(_loc2_);
            §§push(-0.088);
            if(_loc8_)
            {
               §§push(§§pop() * _loc3_);
            }
            §§pop().x = §§pop();
            while(true)
            {
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(0.996);
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
               §§push(_loc2_);
               §§push(0.012);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  _loc2_.w = Number(Math.cos(0.5497787143782138));
               }
               break;
            }
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
                  if(_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc8_)
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
                  if(!_loc8_)
                  {
                     break loop3;
                  }
                  §§push(_loc2_.z);
                  if(!_loc9_)
                  {
                     break loop4;
                  }
                  §§goto(addr011e);
               }
               §§goto(addr0127);
            }
            §§push(§§pop() + §§pop() * §§pop());
            if(!_loc9_)
            {
               addr011e:
               §§push(_loc2_.w * _loc2_.w);
               break;
            }
            break loop10;
         }
         §§push(§§pop() + §§pop());
         if(_loc8_)
         {
            addr0127:
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
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
                  }
                  §§push(§§pop() < 1e-10);
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break loop6;
                  }
                  §§push(_loc4_);
                  §§push(0);
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc9_)
                  {
                     _loc2_.x = 0;
                     if(_loc8_)
                     {
                        _loc2_.y = 0;
                        _loc2_.z = 0;
                        _loc2_.w = 1;
                     }
                     break loop6;
                  }
                  break;
               }
               addr0234:
               _loc4_ = 1 / Number(Math.sqrt(_loc4_));
               if(!_loc9_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.x);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc4_);
                  }
                  §§pop().x = §§pop();
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                        }
                        §§pop().y = §§pop();
                        if(!_loc9_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.z);
                           if(_loc8_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().z = §§pop();
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
                     addr0244:
                     skater.placeAt(4.7,38.2);
                     break;
                  }
                  addr024f:
                  skater.spritesheet.§,=§(50);
                  if(_loc8_)
                  {
                     §§goto(addr0261);
                  }
                  §§goto(addr028c);
               }
               §-P§.spritesheet.§@S§(true);
               if(_loc8_)
               {
                  §§goto(addr0244);
               }
               §§goto(addr024f);
            }
            §-P§.spritesheet.§,=§(78);
            §§goto(addr0234);
         }
         tunnel.camera.reset();
         tunnel.display(0);
         while(true)
         {
            if(!_loc9_)
            {
               §-P§.placeAt(3.5,38.2);
               break loop7;
            }
            addr0261:
            skater.spritesheet.§@S§(false);
            dialog.§";§("Here\'s what I don\'t get.",-320,-280,null,null,null,null,null);
            break;
         }
         addr028c:
         var _loc6_:* = §&!S§.width(700);
         var _loc7_:§ 7§ = new § 6§(skater.§<!U§());
         if(_loc8_)
         {
            dialog.§";§("The Angel said he found a way home. Why are you still here?",-80,-70,null,_loc6_,-1,_loc7_,null);
         }
         _loc7_ = new § 6§(§-P§.§<!U§());
         if(!_loc9_)
         {
            dialog.§";§("For the same reason as you: I like it out here.",0,340,null,null,null,_loc7_,null);
         }
      }
   }
}

