package scenes
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§2!B§;
   import §2!"§.§8f§;
   import §6!Q§.§]u§;
   import world3d.Entity3D;
   import §[^§.§!A§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxeutils.math.geom.QuaternionUtils;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   import openfl.Lib;
   
   public class Candy extends §+Z§
   {
      
      public static var §2#§:* = {"obj":{"billboardMode":null}};
      
      public var §&y§:TextField;
      
      public var §52§:StageActor;
      
      public var center:TextFormat;
      
      public var §?I§:Entity3D;
      
      public var §9p§:Bitmap;
      
      public var §#!P§:StageActor;
      
      public function Candy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               super(§>K§.§^!+§,-1,null,{"endTiles":false});
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
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  §§push(frame3);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().frames = null;
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            name = "Candy";
            break;
         }
      }
      
      override public function unloadLevel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §2l§(§9p§);
         §9p§ = null;
         §0s§();
         if(!_loc1_)
         {
            §?I§ = null;
            center = null;
         }
         tunnel = null;
         while(true)
         {
            if(_loc2_)
            {
               §52§ = null;
               if(_loc1_)
               {
                  break;
               }
            }
            §#!P§ = null;
            break;
         }
         sprites.length = 0;
      }
      
      public function §0s§() : void
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
                  if(§&y§ == null)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     if(§&y§.parent == null)
                     {
                        break loop0;
                     }
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                  }
               }
               §&y§.parent.removeChild(§&y§);
               if(_loc1_)
               {
                  break loop0;
               }
               break;
            }
            return;
         }
         §&y§ = null;
         break loop1;
      }
      
      public function §2l§(param1:Bitmap) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(param1 != null)
         {
            if(!_loc2_)
            {
               param1.bitmapData.dispose();
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(param1.parent == null)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  param1.parent.removeChild(param1);
                  break;
               }
            }
         }
      }
      
      public function §=4§() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §&y§ = §&!;§.§9Q§(16777215,20 * §&d§.§1$§().scale.y,null,"*splat*");
         }
         §§push(Lib.get_current().stage.stageWidth * 0.6);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §&y§.x = _loc1_ - §&y§.width / 2;
               if(_loc2_)
               {
                  break;
               }
            }
            Actuate.tween(§&y§,1.2,{"alpha":0}).delay(0.3).ease(Quad.get_easeIn());
            if(!_loc2_)
            {
               §]u§.§@!A§().addChild(§&y§);
               if(!_loc3_)
               {
                  break;
               }
            }
            §2l§(§9p§);
            if(!_loc2_)
            {
               §9p§ = null;
            }
            break;
         }
      }
      
      override public function init() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_)
         {
            §52§ = new StageActor(section,CharacterRegistry.§52§,false,null,false,null);
            while(true)
            {
               if(!_loc6_)
               {
                  §52§.billboardMode = true;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               sprites.push(§52§);
               break;
            }
         }
         §§push(§!^§.pathName);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               §52§.goesTo = new § !N§(_loc2_,-2);
               if(!_loc5_)
               {
                  break;
               }
            }
            §#!P§ = new StageActor(section,CharacterRegistry.§#!P§,false,null,false,null);
            if(!_loc6_)
            {
               §#!P§.billboardMode = true;
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr00e3);
            }
            break;
         }
         sprites.push(§#!P§);
         addr00e3:
         §§push(§!^§.pathName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:§ !>§ = §>K§.§@!A§().§7j§.get(_loc3_);
         if(_loc5_)
         {
            §#!P§.goesTo = new § !N§(_loc4_,-1);
         }
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
               §#!P§.spritesheet.§,=§(71);
               if(!_loc3_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§@S§(true);
            break;
         }
         var _loc1_:* = §&!S§.scale(1);
         if(_loc3_)
         {
            dialog.§`!^§("I\'m done with all this.",120,-200,_loc1_,null,16777215);
         }
         _loc1_ = §&!S§.scale(1);
         if(!_loc2_)
         {
            dialog.§`!^§("I\'m done waiting for the Runner to get us home.",-30,90,_loc1_,null,0);
         }
         _loc1_ = §&!S§.scale(1);
         if(_loc3_)
         {
            dialog.§`!^§("Now it\'s my turn,\nwhether she likes it or not.",-80,250,_loc1_,null,0).setTextFormat(center);
         }
      }
      
      public function frame2() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §?I§.§9!?§();
            while(true)
            {
               if(!_loc3_)
               {
                  §?I§ = null;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §52§.model.§#"§(false);
               break;
            }
         }
         var _loc1_:* = §&!S§.scale(1);
         if(_loc4_)
         {
            dialog.§`!^§("Another dead end.",100,-120,_loc1_,null,16777215);
         }
         _loc1_ = §&!S§.scale(1);
         if(_loc4_)
         {
            dialog.§`!^§("Well, at least one of us got something\nout of it this time.",0,100,_loc1_,null,0).setTextFormat(center);
         }
         var _loc2_:* = §&!S§.scale(1);
         if(!_loc3_)
         {
            dialog.§`!^§("But you know what?",-50,250,_loc2_,null,0);
         }
      }
      
      public function frame1() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §?I§.transform.§1!R§(§52§.transform);
            while(true)
            {
               if(!_loc4_)
               {
                  §?I§.transform.translate(-3,-13,8);
                  if(_loc4_)
                  {
                     break;
                  }
               }
               §52§.spritesheet.§,=§(97);
               if(!_loc4_)
               {
                  break;
               }
            }
            §#!P§.spritesheet.§,=§(64);
         }
         var _loc1_:* = §&!S§.scale(1.1);
         var _loc2_:§ 7§ = new § 6§(§52§.§<!U§());
         if(_loc3_)
         {
            dialog.§";§("Candy!",200,160,_loc1_,null,null,_loc2_,null);
         }
      }
      
      public function frame0() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            center = new TextFormat();
            if(_loc5_)
            {
               center.align = "center";
            }
         }
         var _loc1_:int = int(Lib.get_current().stage.stageWidth);
         var _loc2_:int = int(Lib.get_current().stage.stageHeight);
         while(true)
         {
            if(!_loc4_)
            {
               §9p§ = §2!B§.§83§("cutscene/Candy/Balloon.png",false);
               §9p§.x = _loc1_ * 0.6 - §9p§.width / 2;
               if(!_loc4_)
               {
                  §9p§.y = _loc2_ * 0.7 - §9p§.height;
                  §§push(Actuate.tween(§9p§,0.8,{
                     "x":_loc1_ * 0.5,
                     "y":-§9p§.height
                  }).delay(0.1).ease(Quad.get_easeIn()));
                  §§push(§=4§);
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().onComplete(§§pop());
                  if(_loc4_)
                  {
                     break;
                  }
                  §]u§.§@!A§().addChildAt(§9p§,0);
                  §§push(tunnel.camera);
                  §§push(0);
                  §§push(150);
                  §§push(section.endZ);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 800);
                  }
                  §§pop().§6!&§(§§pop(),§§pop(),§§pop());
                  tunnel.camera.§3;§();
                  QuaternionUtils.setFromEuler(0,-0.07853981633974483,-0.2827433388230814,tunnel.camera.§,t§);
                  tunnel.camera.reset();
                  tunnel.display(0);
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               §52§.placeAt(4,-7,true);
            }
            §52§.spritesheet.§,=§(96);
            if(!_loc4_)
            {
               §52§.spritesheet.§@S§(true);
               §?I§ = new Entity3D(tunnel,false,new §8f§("Candy.png",25,25));
               §?I§.transform.§1!R§(§52§.transform);
               if(!_loc4_)
               {
                  §?I§.transform.translate(4,0,4);
                  if(_loc5_)
                  {
                     tunnel.§`=§(§?I§);
                  }
               }
               §#!P§.placeAt(3.8,-5.3,true);
               if(!_loc4_)
               {
                  break;
               }
            }
            §§goto(addr0230);
         }
         §#!P§.spritesheet.§,=§(46);
         addr0230:
         var _loc3_:§ 7§ = new § 6§(§52§.§<!U§());
         if(!_loc4_)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(dialog);
                  §§push("Hey, look what\nI found...");
                  §§push(240);
                  §§push(120);
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(null);
                        if(!_loc4_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(null);
                              if(_loc4_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        if(§§pop() < 0)
                        {
                           break;
                        }
                        §§push(null);
                        break loop1;
                     }
                  }
                  §§push(null);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  break loop1;
               }
               §§pop().§";§(§§pop(),§§pop(),§§pop(),§§pop(),null == null ? null : int(Math.round(null / 2.5)),null,_loc3_);
            }
            §§push(§§pop() / 2.5);
            break loop2;
         }
      }
   }
}

