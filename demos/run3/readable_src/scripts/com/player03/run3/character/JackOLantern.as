package com.player03.run3.character
{
   import com.player03.run3.level.Level;
   
   public class JackOLantern extends CharacterBase
   {
      
      public function JackOLantern(param1:Level, param2:CharacterDef)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               super(param1,param2);
               §§push(§§findproperty(§?!>§));
               §§push(§?!>§);
               if(!_loc4_)
               {
                  §§push(§§pop() * 0.9);
               }
               §§pop().§?!>§ = §§pop();
               if(!_loc3_)
               {
                  break;
               }
               §§push(§§findproperty(§"!2§));
               §§push(§"!2§);
               if(!_loc4_)
               {
                  §§push(§§pop() * 0.95);
               }
               §§pop().§"!2§ = §§pop();
               §?`§.§1!#§(104,190,0.05,0.2);
               var _temp_1:* = §?`§;
               §§push(_temp_1);
               §§push(_temp_1.buffer);
               if(!_loc4_)
               {
                  §§push(§§pop() * 2);
               }
               §§pop().buffer = §§pop();
            }
            var _temp_2:* = § `§;
            §§push(_temp_2);
            §§push(_temp_2.§,H§);
            if(!_loc4_)
            {
               §§push(§§pop() * 0.9);
            }
            §§pop().§,H§ = §§pop();
            break;
         }
      }
   }
}

