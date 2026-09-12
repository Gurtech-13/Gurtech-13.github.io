package com.player03.run3.character
{
   import unitsystem.§7o§;
   
   public class §>I§
   {
      
      public function §>I§()
      {
      }
      
      public static function get(param1:§6M§) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  §§push(§7o§.controlScheme.§,h§("left"));
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     break loop0;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               _loc2_--;
               while(true)
               {
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0091);
            }
            §§goto(addr0077);
         }
         §§push(§7o§.controlScheme.§,h§("right"));
         if(_loc4_)
         {
            break loop1;
         }
         addr0077:
         if(§§pop())
         {
            if(_loc4_)
            {
               addr0081:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               _loc2_ = §§pop();
            }
         }
         addr0091:
         return _loc2_;
      }
   }
}

