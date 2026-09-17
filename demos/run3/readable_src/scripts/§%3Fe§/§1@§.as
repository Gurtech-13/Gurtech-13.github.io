package §?e§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§ B§;
   import §-!!§.§&!;§;
   import §-!!§.§&l§;
   import §-!!§.§+"§;
   import §-!!§.§6!4§;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import game.§11§;
   import game.§8s§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import openfl.Lib;
   
   public class §1@§ extends §[k§ implements §+<§
   {
      
      public var text:TextField;
      
      public var §]!I§:Boolean;
      
      public function §1@§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            while(true)
            {
               if(_loc1_)
               {
                  Lib.get_current().addChild(this);
                  if(_loc2_)
                  {
                     break;
                  }
               }
               addEventListener(Event.ENTER_FRAME,§5!S§);
               break;
            }
         }
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            text = §&!;§.§9Q§(16777215,30);
         }
         var _loc1_:TextField = text;
         var _loc2_:* = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
            break;
         }
         var _loc3_:§ 7§ = new §?y§(text);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(true,0));
         }
         _loc3_ = new §?y§(text);
         if(!_loc4_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(false,0));
         }
      }
      
      public function §5!S§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §]!I§ = true;
         }
      }
   }
}

