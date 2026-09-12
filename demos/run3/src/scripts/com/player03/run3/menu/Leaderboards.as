package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §!!X§.§`Q§;
   import §%!Q§.§ !>§;
   import §%!Q§.§>K§;
   import §4!6§.§'P§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§8!M§;
   import com.player03.run3.save.§-Q§;
   import com.player03.run3.save.§0!#§;
   import flash.Lib;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import nme3D.shader.PositionUVDepthVertex;
   
   public class Leaderboards
   {
      
      public static var §3!§:§!!1§;
      
      public static var §16§:§!!1§;
      
      public static var §1-§:§!!1§;
      
      public static var §'o§:§!!1§;
      
      public static var §%b§:Vector.<§!!1§>;
      
      public static var §!P§:Boolean = false;
      
      public function Leaderboards()
      {
      }
      
      public static function §4"§() : §!!1§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(Leaderboards.§!P§);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(_loc1_)
            {
               Leaderboards.init();
            }
         }
         return Leaderboards.§3!§;
      }
      
      public static function §"!Z§() : §!!1§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(Leaderboards.§!P§);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(!_loc2_)
            {
               Leaderboards.init();
            }
         }
         return Leaderboards.§16§;
      }
      
      public static function §>B§() : §!!1§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(Leaderboards.§!P§);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(!_loc1_)
            {
               Leaderboards.init();
            }
         }
         return Leaderboards.§1-§;
      }
      
      public static function §?r§() : §!!1§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(Leaderboards.§!P§);
         if(_loc1_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(!_loc2_)
            {
               Leaderboards.init();
            }
         }
         return Leaderboards.§'o§;
      }
      
      public static function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         § L§.mid = 540830;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  Leaderboards.§!P§ = true;
                  if(!_loc3_)
                  {
                     break;
                  }
                  Leaderboards.§3!§ = new §!!1§("scores");
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               Leaderboards.§16§ = new §!!1§(null,Leaderboards.§4"§(),86400);
               if(_loc3_)
               {
                  Leaderboards.§1-§ = new §!!1§(null,Leaderboards.§4"§(),604800);
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop0;
               }
               break;
            }
            Leaderboards.§'o§ = new §!!1§(null,Leaderboards.§4"§());
            break;
         }
         §§push([Leaderboards.§4"§(),Leaderboards.§"!Z§(),Leaderboards.§>B§(),Leaderboards.§?r§()]);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               Leaderboards.§%b§ = Vector.<§!!1§>(_loc1_);
               if(_loc4_)
               {
                  break;
               }
            }
            Leaderboards.§0q§();
            if(_loc3_)
            {
               §§push(GlobalEventManager);
               §§push("saveFileChanged");
               §§push(Leaderboards.§0q§);
               if(_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().addEventListener(§§pop(),§§pop());
               if(!_loc4_)
               {
                  §9'§.§@!A§().§%!5§();
               }
            }
            break;
         }
         §§push(false);
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
      }
      
      public static function §8M§(param1:int, param2:Vector.<§6O§>, param3:String = undefined) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc7_:* = null as §!!1§;
         while(true)
         {
            if(!_loc8_)
            {
               §§push(Leaderboards.§!P§);
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
                  break;
               }
            }
            Leaderboards.init();
            break;
         }
         §§push(Number(Date.now().getTime()));
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Vector.<§!!1§> = Leaderboards.§%b§;
         if(!_loc8_)
         {
            while(_loc5_ < int(_loc6_.length))
            {
               _loc7_ = _loc6_[_loc5_];
               if(_loc9_)
               {
                  _loc5_++;
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               _loc7_.§]8§(new §<!J§(param1,param2,param3,_loc4_));
            }
            if(_loc9_)
            {
               §0!#§.§@!A§().§@^§();
            }
         }
      }
      
      public static function §0q§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(Save.§@!A§().exists("cachedLocalScores"));
         if(_loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         if(§§pop())
         {
            while(true)
            {
               if(!_loc1_)
               {
                  § L§.low = 750311;
                  if(!_loc1_)
                  {
                     Leaderboards.§4"§().§,p§(Save.§@!A§().get("cachedLocalScores",""),true);
                     if(_loc1_)
                     {
                        break;
                     }
                  }
               }
               Save.§@!A§().§1!R§("cachedLocalScores",null);
               break;
            }
         }
      }
   }
}

