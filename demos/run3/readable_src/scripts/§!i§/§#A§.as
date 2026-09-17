package §!i§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§2!B§;
   import scenes.MyTurn;
   import §4n§.Achievements;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import game.§11§;
   import game.§>3§;
   import game.§>f§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §[!P§.§30§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§8!M§;
   import flash.Lib;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.AdvancedSound;
   
   public class §#A§ extends §11§
   {
      
      public var §6!Y§:§>f§;
      
      public function §#A§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function §3v§(param1:§>f§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §6!Y§ = param1;
            if(!_loc3_)
            {
               if(param1 != null)
               {
                  if(!_loc3_)
                  {
                     param1.§;§(this);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §;N§();
               }
            }
         }
      }
      
      override public function §"c§(param1:§>3§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            while(true)
            {
               if(§6!Y§ != null)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §6!Y§.§"c§();
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               super.§"c§(param1);
               break;
            }
         }
      }
   }
}

