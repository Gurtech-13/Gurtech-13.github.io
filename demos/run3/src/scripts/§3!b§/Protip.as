package §3!b§
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§+#§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §2X§.§>N§;
   import §6!Q§.§]u§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   
   public class Protip extends §+Z§
   {
      
      public static var init__:Boolean;
      
      public static var §3S§:§]k§;
      
      public static var §3!N§:Boolean = false;
      
      public var student:§^s§;
      
      public var §-P§:§^s§;
      
      public function Protip()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super(§>K§.§0x§,52,Protip.§3S§);
            while(true)
            {
               if(!_loc2_)
               {
                  §§push(§§findproperty(frames));
                  §§push(frame0);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame1);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame2);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().frames = null;
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               name = "Protip";
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
               tunnel = null;
               if(!_loc1_)
               {
                  break;
               }
               §-P§ = null;
               if(_loc2_)
               {
                  break;
               }
               student = null;
               if(!_loc1_)
               {
                  break;
               }
            }
            sprites.length = 0;
            break;
         }
      }
      
      override public function loadNext(param1:Boolean, param2:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:§+#§ = §+#§.§<!4§();
         § L§.high = 208883;
         while(true)
         {
            §§push(true);
            if(!param2)
            {
               §§pop();
               if(_loc5_)
               {
                  break;
               }
               §§push(§!!6§ == 4);
            }
            if(§§pop())
            {
               Main.instance.§,Z§(null);
               break;
            }
            §]u§.§@!A§().§5!@§ = false;
            §§push(_loc3_.§>c§());
            if(!_loc5_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               §+#§.§1!"§(_loc3_);
            }
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §-P§ = new §^s§(§9_§,§'O§.§-P§,false,null,false,null);
            if(_loc3_)
            {
               sprites.push(§-P§);
            }
         }
         var _loc1_:§ !>§ = §>K§.§@!A§().§7j§.get("boxes");
         while(true)
         {
            if(!_loc4_)
            {
               §-P§.goesTo = new § !N§(_loc1_,3);
               if(!_loc3_)
               {
                  break;
               }
               student = new §^s§(§9_§,§'O§.student,false,null,false,null);
               if(_loc4_)
               {
                  break;
               }
            }
            sprites.push(student);
            break;
         }
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get("sidePathU");
         if(!_loc4_)
         {
            student.goesTo = new § !N§(_loc2_,7);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §-P§.§9E§(2.6,17.6);
               if(_loc3_)
               {
                  break;
               }
            }
            §-P§.spritesheet.§,=§(76);
            if(_loc4_)
            {
               §-P§.spritesheet.§@S§(false);
            }
            break;
         }
         var _loc1_:* = §&!S§.width(560);
         if(_loc4_)
         {
            dialog.§";§("No idea why, but if you stay very calm as you teleport, nothing else will move.",-240,-280,null,_loc1_,null,null,null);
         }
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(_loc4_)
         {
            dialog.§";§("Oh, interesting...",200,-120,null,null,null,_loc2_,null);
         }
         _loc2_ = new § 6§(§-P§.§<!U§());
         while(true)
         {
            if(!_loc3_)
            {
               dialog.§";§("Did you figure it out?",-220,140,null,null,0,_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
               dialog.§";§("No... Maybe.",240,280,null,null,1,null,null);
               if(_loc3_)
               {
                  break;
               }
            }
            dialog.§";§("I\'ll get back to you.",360,360,null,null,-1,null,null);
            break;
         }
      }
      
      public function frame1() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §-P§.§9E§(2.6,17.6);
         §-P§.spritesheet.§,=§(78);
         §-P§.spritesheet.§@S§(true);
         student.§9E§(2,17.7);
         student.spritesheet.§,=§(94);
         student.spritesheet.§@S§(false);
         var _loc1_:* = §&!S§.width(480);
         if(_loc4_)
         {
            dialog.§";§("You know how to teleport without moving the box, don\'t you?",-260,-130,null,_loc1_,null,null,null);
         }
         _loc1_ = §&!S§.width(80);
         var _loc2_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("...",-40,0,null,_loc1_,null,_loc2_,null);
         }
         _loc2_ = new § 6§(§-P§.§<!U§());
         if(!_loc3_)
         {
            dialog.§";§("Well then.",-180,120,null,null,0,_loc2_,null);
            if(_loc4_)
            {
               dialog.§";§("Sorry I didn\'t mention this earlier!",160,240,null,null,-1,null,null);
            }
         }
      }
      
      public function frame0() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §'O§.student.§3>§ = true;
         }
         var _loc1_:Point3D = tunnel.§<!M§.§%!7§;
         _loc1_.x = 60;
         _loc1_.y = 38;
         _loc1_.z = 1000;
         tunnel.§<!M§.reset();
         tunnel.display(0);
         §-P§.§9E§(2.6,18.6);
         §-P§.spritesheet.§,=§(68);
         while(true)
         {
            if(!_loc5_)
            {
               §-P§.spritesheet.§@S§(true);
               if(_loc5_)
               {
                  break;
               }
               student.§9E§(2,18);
               if(!_loc5_)
               {
                  student.spritesheet.§,=§(70);
                  student.spritesheet.§@S§(true);
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(!Protip.§3!N§)
                  {
                     dialog.§";§("I shouldn\'t gripe, but...",50,-360,null,null,null,null,null);
                     break;
                  }
               }
            }
            dialog.§";§("I give up.",200,-360,null,null,null,null,null);
            if(_loc5_)
            {
            }
            break;
         }
         var _loc2_:* = §&!S§.width(760);
         var _loc3_:§ 7§ = new § 6§(student.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("It\'s just so frustrating having to start over each time I fall.",-160,-200,null,_loc2_,-1,_loc3_,null);
         }
         _loc3_ = new § 6§(§-P§.§<!U§());
         if(!_loc5_)
         {
            dialog.§";§("Why do you have to start over?",-80,280,null,null,null,_loc3_,null);
         }
      }
   }
}

