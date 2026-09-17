package §"p§
{
   import §!!X§.§!_§;
   import §!!X§.§`Q§;
   import §%!Q§.§ !>§;
   import §-#§.§7Y§;
   import game.§3!0§;
   import game.§8A§;
   import game.§^!R§;
   import §7!R§.§'A§;
   import com.player03.run3.Currency;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.§<,§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.§@I§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§-Q§;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import nme3D.Scene3D;
   
   public class §5X§ extends §"p§.§'A§
   {
      
      public static var instance:§5X§;
      
      public function §5X§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super();
               if(_loc1_)
               {
                  break;
               }
            }
            Lib.current.stage.addEventListener(Event.RESIZE,§9n§,false,1);
            if(_loc2_)
            {
               §9n§(null);
            }
            break;
         }
      }
      
      public static function §@!A§() : §5X§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(§5X§.instance == null)
         {
            if(_loc1_)
            {
               §5X§.instance = new §5X§();
            }
         }
         return §5X§.instance;
      }
      
      override public function §=!=§(param1:Number) : Number
      {
         return y;
      }
      
      override public function §;g§(param1:Number) : Number
      {
         return x;
      }
      
      override public function §"!§(param1:Number) : Number
      {
         return width;
      }
      
      override public function §&s§(param1:Number) : Number
      {
         return height;
      }
      
      override public function setTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = undefined) : void
      {
         if(param5 == null)
         {
            param5 = false;
         }
      }
      
      public function §9n§(param1:Event = undefined) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Stage = Lib.current.stage;
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               §§push(true);
               if(_loc3_)
               {
                  if(_loc2_.stageWidth == width)
                  {
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           §§push(_loc2_.stageHeight == height);
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            super.setTo(0,0,_loc2_.stageWidth,_loc2_.stageHeight);
         }
      }
   }
}

