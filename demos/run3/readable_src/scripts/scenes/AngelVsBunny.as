package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-d§.§!!-§;
   import stage.§3!J§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class AngelVsBunny extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var §9c§:§7d§;
      
      public var pastafarian:StageActor;
      
      public var §[f§:§3!J§;
      
      public var duplicator:StageActor;
      
      public var child:StageActor;
      
      public var §7W§:StageActor;
      
      public var §#!P§:StageActor;
      
      public function AngelVsBunny()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(§>K§.§?t§,8,null,{"endTiles":false},null,§+!"§.IF_FOLLOWING_LEVEL_REACHED);
            while(true)
            {
               if(_loc2_)
               {
                  §3!<§(new § !N§(§>K§.home0,0));
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
               §§push(frame5);
               if(_loc2_)
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
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§push(frame10);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               §§pop().frames = null;
               if(!_loc1_)
               {
                  name = "Angel vs. Bunny";
               }
               break;
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
            if(_loc1_)
            {
               §7W§.transform.§`F§(false,false);
               §7W§.transform.§'!=§(false,false);
               if(_loc1_)
               {
                  §[f§ = null;
                  if(!_loc2_)
                  {
                     §9c§ = null;
                     tunnel = null;
                     if(!_loc2_)
                     {
                        pastafarian = null;
                        if(_loc1_)
                        {
                           §#!P§ = null;
                           if(_loc2_)
                           {
                              break;
                           }
                           child = null;
                        }
                     }
                     duplicator = null;
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            §7W§ = null;
            sprites.length = 0;
            break;
         }
      }
      
      public function §-![§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §9c§.reset();
            if(_loc1_)
            {
               tunnel.registerAnimation(§9c§);
            }
         }
      }
      
      override public function init() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            pastafarian = new StageActor(section,CharacterRegistry.pastafarian,false,null,false,null);
            if(_loc7_)
            {
               pastafarian.billboardMode = true;
               if(_loc7_)
               {
                  sprites.push(pastafarian);
               }
            }
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("home0");
         while(true)
         {
            if(!_loc6_)
            {
               pastafarian.goesTo = new § !N§(_loc1_,0);
               if(_loc7_)
               {
                  §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
                  if(_loc7_)
                  {
                     §#!P§.billboardMode = true;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
               }
            }
            sprites.push(§#!P§);
            break;
         }
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("home0");
         while(true)
         {
            if(!_loc6_)
            {
               §#!P§.goesTo = new § !N§(_loc2_,0);
               if(_loc6_)
               {
                  break;
               }
               child = new StageActor(section,CharacterRegistry.child,false,null,false,null);
               if(_loc6_)
               {
                  break;
               }
            }
            child.billboardMode = true;
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr0139);
         }
         sprites.push(child);
         addr0139:
         var _loc3_:§ !>§ = §>K§.§@!A§().§7j§.get("home0");
         while(true)
         {
            if(!_loc6_)
            {
               child.goesTo = new § !N§(_loc3_,0);
               if(!_loc7_)
               {
                  break;
               }
            }
            duplicator = new StageActor(section,CharacterRegistry.duplicator,false,null,false,null);
            if(!_loc6_)
            {
               duplicator.billboardMode = true;
               if(!_loc6_)
               {
                  sprites.push(duplicator);
               }
            }
            break;
         }
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get("home0");
         while(true)
         {
            if(!_loc6_)
            {
               duplicator.goesTo = new § !N§(_loc4_,0);
               if(!_loc7_)
               {
                  break;
               }
            }
            §7W§ = new StageActor(section,CharacterRegistry.§7W§,false,null,false,null);
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr021a);
         }
         §7W§.billboardMode = true;
         if(_loc7_)
         {
            sprites.push(§7W§);
         }
         addr021a:
         var _loc5_:§ !>§ = §>K§.§@!A§().§7j§.get("home0");
         if(!_loc6_)
         {
            §7W§.goesTo = new § !N§(_loc5_,0);
         }
      }
      
      public function frame9() : void
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
               if(!_loc3_)
               {
                  pastafarian.placeAt(5,24.5);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        pastafarian.spritesheet.§,=§(99);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        pastafarian.spritesheet.§@S§(true);
                        if(_loc3_)
                        {
                           break;
                        }
                        §#!P§.placeAt(5.3,23.6);
                        §#!P§.spritesheet.§,=§(66);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                     }
                     §#!P§.spritesheet.§@S§(true);
                     child.placeAt(4.8,22.7);
                     child.spritesheet.§,=§(102);
                     break;
                  }
                  child.spritesheet.§@S§(true);
                  duplicator.placeAt(5.3,22.6);
               }
               duplicator.spritesheet.§,=§(46);
               if(_loc4_)
               {
                  break loop0;
               }
               §§goto(addr00e7);
            }
            §7W§.spritesheet.§,=§(21);
            addr00e7:
            §7W§.spritesheet.§@S§(true);
            if(_loc4_)
            {
               dialog.§";§("As I was saying...",-320,-260,null,null,null,null,null);
            }
            var _loc1_:* = §&!S§.width(910);
            var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
            if(!_loc3_)
            {
               dialog.§";§("I don\'t care to deal with your usual nonsense. Waste my time, and I\'ll leave you behind.",80,-90,null,_loc1_,-1,_loc2_,null);
            }
            return;
         }
         duplicator.spritesheet.§@S§(true);
         §7W§.placeAt(7,23.2,null,-55);
         break loop1;
      }
      
      public function frame8() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         pastafarian.placeAt(5,24.6);
         pastafarian.spritesheet.§,=§(99);
         pastafarian.spritesheet.§@S§(true);
         while(true)
         {
            if(_loc2_)
            {
               §#!P§.placeAt(5.4,23.2,null,15);
               §#!P§.spritesheet.§,=§(83);
               §#!P§.spritesheet.§@S§(false);
               if(!_loc3_)
               {
                  child.placeAt(4.8,22.7);
                  child.spritesheet.§,=§(104);
                  child.spritesheet.§@S§(true);
                  duplicator.placeAt(5.3,22.6);
                  if(!_loc2_)
                  {
                     break;
                  }
                  duplicator.spritesheet.§,=§(46);
                  duplicator.spritesheet.§@S§(true);
               }
               §7W§.placeAt(6.1,23.3,null,5);
               §7W§.spritesheet.§,=§(21);
               if(!_loc2_)
               {
                  break;
               }
            }
            §7W§.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Get lost!",0,-60,null,null,null,_loc1_,null);
         }
      }
      
      public function frame7() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            pastafarian.placeAt(5,24.6);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(_loc2_)
                     {
                        pastafarian.spritesheet.§,=§(107);
                        pastafarian.spritesheet.§@S§(true);
                        if(_loc2_)
                        {
                           §#!P§.placeAt(4.7,23.4);
                        }
                        §#!P§.spritesheet.§,=§(71);
                        §#!P§.spritesheet.§@S§(false);
                        if(!_loc2_)
                        {
                           break;
                        }
                        child.placeAt(4.8,22.7);
                        child.spritesheet.§,=§(60);
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        child.spritesheet.§@S§(true);
                        if(!_loc3_)
                        {
                           duplicator.placeAt(5.3,22.6);
                           duplicator.spritesheet.§,=§(37);
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           duplicator.spritesheet.§@S§(true);
                        }
                     }
                     §7W§.placeAt(5.4,21.9,null,30);
                     break;
                  }
                  §7W§.spritesheet.§,=§(14);
                  break loop0;
               }
            }
            §7W§.spritesheet.§@S§(true);
         }
         break loop1;
      }
      
      public function frame6() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(4.7,23.4);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     §#!P§.spritesheet.§,=§(77);
                     if(_loc3_)
                     {
                        break;
                     }
                     §#!P§.spritesheet.§@S§(false);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     pastafarian.placeAt(5,24.6);
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                  }
                  pastafarian.spritesheet.§,=§(108);
                  pastafarian.spritesheet.§@S§(true);
                  while(true)
                  {
                     if(_loc4_)
                     {
                        child.placeAt(4.8,22.6);
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     child.spritesheet.§,=§(67);
                     break loop1;
                  }
                  §§goto(addr00ee);
               }
               duplicator.spritesheet.§,=§(47);
               break loop0;
            }
            child.spritesheet.§@S§(true);
            duplicator.placeAt(5.3,22.2);
            if(!_loc3_)
            {
               break loop2;
            }
            §§goto(addr00cd);
         }
         duplicator.spritesheet.§@S§(true);
         addr00cd:
         dialog.§";§("Never mind. Everyone listen up!",-180,-280,null,null,null,null,null);
         addr00ee:
         var _loc1_:* = §&!S§.width(800);
         var _loc2_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("You\'re here because you want to go home. I\'m here to take you home.",20,-150,null,_loc1_,-1,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Just follow my instructions, and we won\'t have any trouble.",-140,300,null,null,null,_loc2_,null);
         }
      }
      
      public function frame5() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §#!P§.placeAt(4.9,23.2);
         §#!P§.spritesheet.§,=§(47);
         §#!P§.spritesheet.§@S§(true);
         pastafarian.placeAt(5,24.5);
         pastafarian.spritesheet.§,=§(99);
         pastafarian.spritesheet.§@S§(true);
         var _loc1_:* = §&!S§.width(700);
         var _loc2_:§ 7§ = new § 6§(pastafarian.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("You instructed me to invite anyone I encountered, remember?",-140,-230,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(§#!P§.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Anyone, not anything!",160,-60,null,null,null,_loc2_,null);
            while(true)
            {
               if(!_loc3_)
               {
                  § !C§("one");
                  if(_loc3_)
                  {
                     break;
                  }
               }
               § !C§("thing");
               break;
            }
         }
      }
      
      public function frame4() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         pastafarian.placeAt(5,27);
         pastafarian.spritesheet.§,=§(101);
         pastafarian.spritesheet.§@S§(true);
         §#!P§.placeAt(4.9,23.1);
         §#!P§.spritesheet.§,=§(70);
         while(true)
         {
            if(!_loc4_)
            {
               §#!P§.spritesheet.§@S§(true);
               child.placeAt(4.8,22);
               if(_loc4_)
               {
                  break;
               }
            }
            child.spritesheet.§,=§(69);
            break;
         }
         child.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("What was that for?",300,-340,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(480);
         _loc1_ = new § 6§(§#!P§.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Ok, what idiot thought it was a good idea to bring the Rabbit?",-160,-140,null,_loc2_,null,_loc1_,null);
         }
         _loc1_ = new § 6§(pastafarian.§<!U§());
         while(true)
         {
            if(_loc3_)
            {
               dialog.§";§("Technically, that was you.",-300,220,null,null,null,_loc1_,null);
               if(_loc4_)
               {
                  break;
               }
            }
            §7W§.model.§#"§(false);
            break;
         }
      }
      
      public function frame3() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §#!P§.placeAt(4.8,22.8);
         §#!P§.spritesheet.§,=§(81);
         §#!P§.spritesheet.§@S§(true);
         while(true)
         {
            if(_loc3_)
            {
               pastafarian.placeAt(5,32);
               if(_loc3_)
               {
                  pastafarian.spritesheet.§,=§(109);
                  if(!_loc3_)
                  {
                     break;
                  }
                  pastafarian.spritesheet.§@S§(true);
               }
               child.placeAt(4.8,22);
               child.spritesheet.§,=§(114);
            }
            child.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Enough!",-240,240,null,null,null,_loc1_,null);
         }
         _loc1_ = new § 6§(child.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Bunny!",440,160,null,null,null,_loc1_,null);
            if(!_loc2_)
            {
               §§push(§7W§.transform);
               §§push(§7W§.transform.position.x + 200);
               §§push(§7W§.transform.position.y - 10);
               §§push(§7W§.transform.position.z);
               if(_loc3_)
               {
                  §§push(§§pop() - 150);
               }
               §§pop().§6!&§(§§pop(),§§pop(),§§pop());
            }
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  tunnel.§5!F§(§[f§);
                  §[f§ = null;
                  tunnel.§5!F§(§9c§);
                  §9c§ = null;
                  §#!P§.placeAt(5,23);
                  §#!P§.spritesheet.§,=§(65);
                  if(_loc2_)
                  {
                     break;
                  }
                  §#!P§.spritesheet.§@S§(false);
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §7W§.placeAt(4.8,22.9,null,35);
               §7W§.spritesheet.§,=§(22);
               if(_loc3_)
               {
                  break;
               }
               break loop0;
            }
            §7W§.spritesheet.§@S§(false);
            if(!_loc2_)
            {
               pastafarian.placeAt(5,34.9,null,35);
               pastafarian.spritesheet.§,=§(109);
            }
            break;
         }
         pastafarian.spritesheet.§@S§(true);
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("That is...",-200,280,null,null,null,_loc1_,null);
         }
      }
      
      public function frame10() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         pastafarian.placeAt(5.1,24.5);
         pastafarian.spritesheet.§,=§(102);
         pastafarian.spritesheet.§@S§(true);
         if(_loc4_)
         {
            §#!P§.placeAt(4.8,24);
            §#!P§.spritesheet.§,=§(44);
         }
         §#!P§.spritesheet.§@S§(true);
         child.placeAt(4.8,22.6);
         child.spritesheet.§,=§(104);
         while(true)
         {
            if(!_loc5_)
            {
               child.spritesheet.§@S§(true);
               if(!_loc4_)
               {
                  break;
               }
            }
            duplicator.placeAt(5.1,22.8);
            if(_loc4_)
            {
               duplicator.spritesheet.§,=§(79);
               duplicator.spritesheet.§@S§(false);
            }
            break;
         }
         var _loc1_:§ 7§ = new § 6§(§#!P§.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("Now let\'s get going before that pest comes back.",20,-160,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.scale(0.6);
         var _loc3_:* = §&!S§.width(210);
         _loc1_ = new § 6§(child.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("Dad, why are we following him?",360,150,_loc2_,_loc3_,null,_loc1_,null);
         }
         _loc2_ = §&!S§.scale(0.6);
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Don\'t worry. I have a plan.",120,250,_loc2_,null,null,_loc1_,null);
         }
         _loc2_ = §&!S§.scale(0.6);
         if(_loc4_)
         {
            dialog.§";§("Can the plan be to kick him?",380,320,_loc2_,null,1,null,null);
         }
         _loc2_ = §&!S§.scale(0.6);
         while(true)
         {
            if(!_loc5_)
            {
               dialog.§";§("Now, now...",120,350,_loc2_,null,2,null,null);
               if(!_loc4_)
               {
                  break;
               }
            }
            §7W§.model.§#"§(false);
            break;
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(dialog);
         §§push(tunnel.display);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         §§pop().§+!P§ = §§pop();
         pastafarian.placeAt(5,38,null,15);
         pastafarian.spritesheet.§,=§(105);
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               pastafarian.spritesheet.§@S§(true);
               §#!P§.placeAt(4.8,23);
               while(true)
               {
                  if(!_loc4_)
                  {
                     §#!P§.spritesheet.§,=§(80);
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §#!P§.spritesheet.§@S§(false);
                  if(!_loc4_)
                  {
                     child.placeAt(4.9,22);
                     child.spritesheet.§,=§(69);
                     break;
                  }
                  break loop0;
               }
            }
            child.spritesheet.§@S§(true);
            duplicator.placeAt(5.3,22);
            break;
         }
         duplicator.spritesheet.§,=§(28);
         duplicator.spritesheet.§@S§(false);
         §7W§.placeAt(4.8,22.9,null,35);
         §7W§.spritesheet.§,=§(14);
         §7W§.spritesheet.§@S§(false);
         var _loc1_:§ 7§ = new § 6§(child.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Go, Bunny!",200,-80,null,null,null,_loc1_,null);
         }
         var _loc2_:* = §&!S§.width(330);
         if(_loc3_)
         {
            dialog.§";§("Son, the Angel can hear you. Don\'t be rude.",420,160,null,_loc2_,null,null,null);
         }
         _loc2_ = §&!S§.scale(0.6);
         _loc1_ = new § 6§(duplicator.§<!U§());
         if(!_loc4_)
         {
            dialog.§";§("Wait until he can\'t hear you.",260,350,_loc2_,null,-1,_loc1_,null);
         }
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
               _loc1_.x = -96;
               if(_loc7_)
               {
                  break;
               }
               _loc1_.y = 43;
               if(_loc7_)
               {
                  break;
               }
            }
            _loc1_.z = 1600;
            break;
         }
         var _loc2_:Quaternion = tunnel.camera.§,t§;
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc2_ != null)
               {
                  break;
               }
            }
            _loc2_ = new Quaternion();
            break;
         }
         §§push(Number(Math.sin(0.39269908169872414)));
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
                  §§push(-0.155);
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
                  §§push(0.979);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_);
                  }
                  §§pop().y = §§pop();
                  if(_loc7_)
                  {
                     break loop2;
                  }
               }
               §§push(_loc2_);
               §§push(0.13);
               if(_loc8_)
               {
                  §§push(§§pop() * _loc3_);
               }
               §§pop().z = §§pop();
               if(_loc8_)
               {
                  break loop2;
               }
               break;
            }
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.x * _loc2_.x);
                  §§push(_loc2_.y);
                  if(!_loc7_)
                  {
                     §§push(_loc2_.y);
                     if(_loc7_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     §§push(_loc2_.z);
                     §§push(_loc2_.z);
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc8_)
                     {
                        break loop4;
                     }
                     §§push(_loc2_.w);
                  }
                  §§push(_loc2_.w);
                  break;
               }
               §§push(§§pop() + §§pop() * §§pop());
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(Number(§§pop()));
               break;
            }
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(§§pop() - 1);
               if(!_loc7_)
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
                  loop11:
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        loop12:
                        while(true)
                        {
                           loop13:
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
                                    §§push((§§pop() >= §§pop() ? _loc5_ : -_loc5_) < 1e-10);
                                    if(_loc8_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       break loop13;
                                    }
                                    if(!_loc8_)
                                    {
                                       break loop12;
                                    }
                                    §§push(_loc4_);
                                 }
                                 §§push(0);
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 _loc2_.x = 0;
                                 if(_loc8_)
                                 {
                                    _loc2_.y = 0;
                                    _loc2_.z = 0;
                                    if(!_loc7_)
                                    {
                                       _loc2_.w = 1;
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       break loop6;
                                    }
                                    break loop7;
                                 }
                                 break loop11;
                              }
                              §§push(1 / Number(Math.sqrt(_loc4_)));
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc4_ = §§pop();
                              §§push(_loc2_);
                              §§push(_loc2_.x);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              §§pop().x = §§pop();
                              break loop12;
                           }
                        }
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
                           §§push(_loc2_);
                           §§push(_loc2_.w);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * _loc4_);
                           }
                           §§pop().w = §§pop();
                           break loop13;
                        }
                        §§goto(addr02ae);
                     }
                     break loop13;
                  }
                  §§goto(addr02d4);
               }
               duplicator.spritesheet.§@S§(true);
               §§goto(addr02e9);
            }
            §#!P§.placeAt(4.8,23);
            while(true)
            {
               if(_loc8_)
               {
                  §#!P§.spritesheet.§,=§(80);
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc8_)
                        {
                           §#!P§.spritesheet.§@S§(false);
                           if(!_loc7_)
                           {
                              §7W§.placeAt(4.8,22.9,null,35);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §7W§.spritesheet.§,=§(20);
                              if(_loc7_)
                              {
                                 break loop9;
                              }
                           }
                        }
                        §7W§.spritesheet.§@S§(false);
                        if(_loc8_)
                        {
                           pastafarian.placeAt(5,40);
                           pastafarian.spritesheet.§,=§(101);
                        }
                        break loop9;
                     }
                     child.placeAt(4.9,21.2);
                     if(_loc7_)
                     {
                        break loop7;
                     }
                     child.spritesheet.§,=§(70);
                     child.spritesheet.§@S§(true);
                     if(_loc8_)
                     {
                        duplicator.placeAt(5.3,21);
                     }
                  }
                  pastafarian.spritesheet.§@S§(true);
                  if(_loc8_)
                  {
                     break loop10;
                  }
                  break;
               }
               addr02d4:
               duplicator.spritesheet.§,=§(47);
               break loop7;
            }
            addr02e9:
            var _loc6_:§ 7§ = new § 6§(§#!P§.§<!U§());
            dialog.§";§("Hey!",-320,120,null,null,null,_loc6_,null);
            §=!`§ = 1;
            §§push(dialog);
            §§push(tunnel.display);
            if(_loc8_)
            {
               §§push(§§pop());
            }
            §§pop().§+!P§ = §§pop();
            if(!_loc7_)
            {
               §[f§ = new §3!J§(§7W§,-1,200,false);
               §§push(§[f§);
               §§push(§-![§);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               §§pop().§9f§ = §§pop();
            }
            tunnel.registerAnimation(§[f§);
            §9c§ = new §7d§(§#!P§,new §!!-§(79,2),10);
            return;
         }
         _loc2_.w = Number(Math.cos(0.39269908169872414));
         break loop3;
      }
   }
}

