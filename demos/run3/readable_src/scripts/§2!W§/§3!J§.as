package §2!W§
{
   import §#3§.§1M§;
   import §-!!§.§^'§;
   import §=L§.§0!I§;
   import §[^§.§+`§;
   import §[s§.§<!1§;
   import com.player03.run3.character.CharacterBase;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §3!J§
   {
      
      public var §^p§:§1M§;
      
      public var § !&§:§^'§;
      
      public function §3!J§(param1:§^'§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            § !&§ = param1;
         }
      }
      
      public function §4!`§(param1:§<!1§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = null as DisplayObject;
         var _loc2_:Number = 30;
         if(_loc6_)
         {
            §^p§ = § !&§.clone();
            while(true)
            {
               if(_loc6_)
               {
                  §§push(§^p§);
                  §§push(param1.§?w§());
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop().x = §§pop();
                  if(!_loc5_)
                  {
                     §§push(§^p§);
                     §§push(param1.§ !Y§());
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().y = §§pop();
                     if(_loc5_)
                     {
                        break;
                     }
                  }
               }
               if(param1 is DisplayObject)
               {
                  if(!_loc5_)
                  {
                     _loc3_ = param1;
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc6_)
                           {
                              _temp_2.y += _loc3_.height / 2;
                              if(_loc5_)
                              {
                                 break;
                              }
                              §^p§.scaleX = _loc3_.scaleX;
                              if(_loc5_)
                              {
                                 break loop1;
                              }
                           }
                           §^p§.scaleY = _loc3_.scaleY;
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                           break;
                        }
                     }
                     _loc2_ = Number(_loc3_.stage.frameRate);
                     break loop2;
                  }
                  break;
               }
               param1.level.getBackgroundContainer().addChild(§^p§);
               break;
            }
         }
         var _loc4_:§0!I§ = new §0!I§(_loc2_,§^p§);
         if(!_loc5_)
         {
            _loc4_.§8!A§ = true;
            if(!_loc5_)
            {
               param1.level.registerAnimation(_loc4_);
            }
         }
      }
   }
}

