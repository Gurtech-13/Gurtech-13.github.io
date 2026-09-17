package §!!$§
{
   import §"p§.§'A§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import stage.§3!J§;
   import stage.§7d§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.save.§]k§;
   import flash.geom.Matrix3D;
   import flash.geom.Rectangle;
   
   public class §4o§ extends § 7§
   {
      
      public var §&!$§:§'A§;
      
      public function §4o§(param1:§'A§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §&!$§ = param1;
               if(!_loc2_)
               {
                  break;
               }
            }
            super();
            break;
         }
      }
      
      override public function §=!=§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§&!$§.§=!=§(param1));
         if(_loc2_)
         {
            return Number(§§pop());
         }
      }
      
      override public function §;g§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§&!$§.§;g§(param1));
         if(!_loc2_)
         {
            return Number(§§pop());
         }
      }
      
      override public function §"!§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§&!$§.§"!§(param1));
         if(_loc2_)
         {
            return Number(§§pop());
         }
      }
      
      override public function §8!Y§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§'A§ = §&!$§;
         if(_loc4_)
         {
            §§push(_loc2_);
            §§push(_loc2_.x);
            §§push(param1);
            §§push(_loc2_.width);
            §§push(_loc2_.height);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().setTo(§§pop(),§§pop(),§§pop(),§§pop());
         }
         return param1;
      }
      
      override public function §"!0§(param1:Number) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:§'A§ = §&!$§;
         if(_loc3_)
         {
            §§push(_loc2_);
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§"!§(§§pop());
         }
         return param1;
      }
      
      override public function § V§(param1:Number) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:§'A§ = §&!$§;
         if(!_loc4_)
         {
            while(true)
            {
               §§push(_loc2_);
               §§push(param1);
               §§push(_loc2_.y);
               §§push(_loc2_.width);
               if(!_loc4_)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop() - _loc2_.x);
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() - §§pop());
               }
               §§push(_loc2_.height);
               break;
            }
            §§pop().setTo(§§pop(),§§pop(),§§pop(),§§pop());
         }
         return param1;
      }
      
      override public function §&s§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§&!$§.§&s§(param1));
         if(!_loc3_)
         {
            return Number(§§pop());
         }
      }
      
      override public function §+!F§(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:§'A§ = §&!$§;
         if(_loc4_)
         {
            §§push(_loc2_);
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§&s§(§§pop());
         }
         return param1;
      }
      
      override public function §1C§() : Number
      {
         return §&!$§.y;
      }
      
      override public function §[![§() : Number
      {
         return §&!$§.x;
      }
      
      override public function §;c§() : Number
      {
         return §&!$§.width;
      }
      
      override public function §@7§() : *
      {
         return §&!$§;
      }
      
      override public function §5`§() : Number
      {
         return §&!$§.height;
      }
   }
}

