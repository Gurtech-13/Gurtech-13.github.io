package com.player03.run3.purchase
{
   import §'!W§.§&!A§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §6!Q§.§'!E§;
   import §6!Q§.§'[§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.save.§]k§;
   import flash.display.Bitmap;
   
   public class PurchaseManager
   {
      
      public function PurchaseManager()
      {
      }
      
      public static function §?!#§(param1:String) : int
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = false;
         var _loc4_:* = null as §]k§;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  §§push(§9'§.§@!A§().§?!;§.§?!#§(param1));
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(int(§§pop()));
                  if(_loc5_)
                  {
                     break;
                  }
                  §§push(int(§§pop()));
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc2_ = §§pop();
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc2_);
               break;
            }
            while(true)
            {
               while(true)
               {
                  if(§§pop() > 0)
                  {
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §§push(false);
                     if(!_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc3_ = §§pop();
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr00d4);
            }
            §§goto(addr00df);
         }
         _loc4_ = Save.§"!@§;
         while(true)
         {
            if(!_loc5_)
            {
               while(true)
               {
                  §§push(Boolean(Save.§@!A§().get(_loc4_.§=-§,Boolean(_loc4_.§ -§))));
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     addr00d3:
                     §§push(_loc3_);
                     break;
                  }
               }
               addr00d4:
               if(!§§pop())
               {
                  break;
               }
               if(_loc5_)
               {
                  break;
               }
            }
            addr00df:
            Save.§"!@§.§?F§(true);
            break;
         }
         return _loc2_;
      }
   }
}

