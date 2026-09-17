package com.player03.run3.menu
{
   import §!!$§.§?y§;
   import §"!L§.§%z§;
   import §%!Q§.§>K§;
   import §-!!§.§&!;§;
   import §-v§.§%!3§;
   import game.Game;
   import world3d.Entity3D;
   import §=w§.§@[§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@H§.§7i§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §]!C§.Physics;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class §=!>§ extends §[k§ implements §3!!§, §@[§
   {
      
      public static var §+1§:§%z§;
      
      public static var instance:§=!>§;
      
      public var §+h§:§%!3§;
      
      public var §?!`§:§!!1§;
      
      public function §=!>§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §%`§() : §%z§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§=!>§.§+1§ == null)
         {
            if(_loc1_)
            {
               §=!>§.§+1§ = §%z§.MENU(§=!>§.§@!A§());
            }
         }
         return §=!>§.§+1§;
      }
      
      public static function §@!A§() : §=!>§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §=!>§;
         if(!_loc2_)
         {
            if(§=!>§.instance != null)
            {
               return §=!>§.instance;
            }
         }
         return §=!>§.instance = new §=!>§();
      }
      
      public function §5P§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               if(§?!`§ == null)
               {
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
               §?!`§.visible = true;
               if(_loc1_)
               {
                  break;
               }
               §?!`§.reset();
               if(!_loc2_)
               {
                  break;
               }
            }
            addChildAt(§?!`§,0);
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(§?!`§ != null)
            {
               if(!_loc3_)
               {
                  §?!`§.update(param1);
               }
            }
         }
      }
      
      public function §!!M§(param1:§!!1§) : §!!1§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            while(true)
            {
               if(§?!`§ != null)
               {
                  if(!_loc3_)
                  {
                     if(§?!`§.parent == this)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        removeChild(§?!`§);
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                  }
               }
               §?!`§ = param1;
               break;
            }
         }
         return §?!`§;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §!!M§(Leaderboards.§4"§());
               if(!_loc1_)
               {
                  §5P§();
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            §+h§.visible = Main.instance.tunnel == null;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr0064);
         }
         visible = true;
         addr0064:
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:Number = 8;
         if(!_loc6_)
         {
            §+h§ = new §%!3§();
         }
         var _loc2_:§ 7§ = new §?y§(§+h§);
         while(true)
         {
            if(_loc5_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     if(_loc1_ != null)
                     {
                        §§push(new §;!!§(_loc1_,§2u§.LEFT));
                        break;
                     }
                  }
                  §§push(§^`§.§ !P§(§2u§.LEFT));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               if(!_loc5_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc2_);
               if(!_loc6_)
               {
                  if(_loc1_ != null)
                  {
                     §§push(new §;!!§(_loc1_,§2u§.TOP));
                     break;
                  }
               }
               §§push(§^`§.§ !P§(§2u§.TOP));
               break;
            }
            §§pop().add(§§pop(),§§pop());
            if(_loc5_)
            {
               break;
            }
            var _loc3_:TextField = §&!;§.§9Q§(16777215,80,null,"Your scores",width,null,null,null,"center");
            var _loc4_:* = null;
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc6_)
                  {
                     if(_loc4_ != null)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop3;
                     }
                  }
                  _loc4_ = int(Number(_loc3_.defaultTextFormat.size));
                  break;
               }
               §&d§.§1$§().add(new §?y§(_loc3_),new §=!]§(int(_loc4_)));
               break;
            }
            _loc2_ = new §?y§(_loc3_);
            while(true)
            {
               if(_loc5_)
               {
                  §&d§.§1$§().add(_loc2_,new §@$§(true,0));
                  if(_loc6_)
                  {
                     break;
                  }
               }
               addChild(_loc3_);
               if(_loc5_)
               {
                  §!!M§(Leaderboards.§4"§());
               }
               break;
            }
            return;
         }
         addChild(§+h§);
         continue loop3;
      }
   }
}

