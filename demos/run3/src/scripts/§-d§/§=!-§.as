package §-d§
{
   import §`_§.§^s§;
   
   public class §=!-§ extends §9!@§
   {
      
      public static var instance:§=!-§;
      
      public function §=!-§()
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super();
               if(!_loc3_)
               {
                  break;
               }
               jump = jump.clone();
               if(!_loc3_)
               {
                  break;
               }
            }
            var _temp_2:* = jump;
            §§push(_temp_2);
            §§push(_temp_2.fps);
            if(!_loc2_)
            {
               §§push(§§pop() * 0.5);
            }
            §§pop().fps = §§pop();
            break;
         }
         var _loc1_:§1M§ = jump;
         §§push(_loc1_);
         §§push(_loc1_.center.length);
         if(_loc3_)
         {
            §§push(§§pop() + 4);
         }
         §§pop().§&9§(§§pop());
         §1p§ = §1p§.clone();
         var _temp_3:* = §1p§;
         §§push(_temp_3);
         §§push(_temp_3.fps);
         if(_loc3_)
         {
            §§push(§§pop() * 0.4);
         }
         §§pop().fps = §§pop();
         if(!_loc2_)
         {
            var _temp_4:* = §1p§.left;
            §§push(_temp_4);
            §§push(_temp_4.start);
            if(_loc3_)
            {
               §§push(§§pop() + 4);
            }
            §§pop().start = §§pop();
         }
         var _temp_5:* = §1p§.center;
         §§push(_temp_5);
         §§push(_temp_5.start);
         if(!_loc2_)
         {
            §§push(§§pop() + 4);
         }
         §§pop().start = §§pop();
         var _temp_6:* = §1p§.right;
         §§push(_temp_6);
         §§push(_temp_6.start);
         if(!_loc2_)
         {
            §§push(§§pop() + 4);
         }
         §§pop().start = §§pop();
         _loc1_ = §1p§;
         while(true)
         {
            if(!_loc2_)
            {
               §§push(_loc1_);
               §§push(_loc1_.center.length);
               if(!_loc2_)
               {
                  §§push(§§pop() - 4);
               }
               §§pop().§&9§(§§pop());
               if(_loc2_)
               {
                  break;
               }
            }
            var _temp_7:* = land;
            §§push(_temp_7);
            §§push(_temp_7.fps);
            if(!_loc2_)
            {
               §§push(§§pop() * 0.85);
            }
            §§pop().fps = §§pop();
            break;
         }
      }
      
      public static function §@!A§() : §=!-§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §=!-§;
         if(!_loc2_)
         {
            if(§=!-§.instance != null)
            {
               return §=!-§.instance;
            }
         }
         return §=!-§.instance = new §=!-§();
      }
   }
}

