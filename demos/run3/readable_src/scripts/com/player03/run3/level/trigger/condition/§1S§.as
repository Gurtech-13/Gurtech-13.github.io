package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§,S§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import flash.geom.Rectangle;
   
   public class §1S§ extends §,!8§
   {
      
      public var frame1:Boolean;
      
      public function §1S§(param1:Function)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            frame1 = true;
            if(_loc2_)
            {
               super(param1);
            }
         }
      }
      
      override public function §7q§(param1:Level) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               super.§7q§(param1);
               if(!_loc3_)
               {
                  frame1 = true;
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(flags);
                     if(_loc2_)
                     {
                        §§push(1);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop() & §§pop());
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() != §§pop())
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            progress = 0.99;
            break;
         }
      }
      
      override public function §6Y§(param1:Level) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!frame1)
            {
               §§push(super.§6Y§(param1));
               if(!_loc2_)
               {
                  return Number(§§pop());
               }
            }
            if(_loc3_)
            {
               frame1 = false;
            }
         }
         return 0;
      }
   }
}

