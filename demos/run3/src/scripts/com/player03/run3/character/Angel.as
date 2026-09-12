package com.player03.run3.character
{
   import §%G§.§ m§;
   import com.player03.run3.level.§ !W§;
   
   public class Angel extends §6M§
   {
      
      public function Angel(param1:§ !W§, param2:§6O§)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super(param1,param2);
         }
         §§push(62.4);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               §?`§.§1!#§(_loc3_,_loc3_,0.2,0.2);
               while(true)
               {
                  if(!_loc4_)
                  {
                     §`!C§.push(new §4Y§(this,0.36,455,510,-210));
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  §`!C§.push(new §'s§(this,0,10,1,0.4));
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §>!7§ = 0.4;
            break;
         }
      }
      
      override public function §6b§() : Number
      {
         return 495;
      }
   }
}

