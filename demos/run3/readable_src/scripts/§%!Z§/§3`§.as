package §%!Z§
{
   import game.§&!K§;
   import §>!O§.§^`§;
   import flash.events.FocusEvent;
   import unitsystem.§7o§;
   
   public class §3`§ extends §^`§
   {
      
      public var § h§:Number;
      
      public function §3`§(param1:Number, param2:Boolean)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param2);
            if(!_loc3_)
            {
               § h§ = param1;
            }
         }
      }
      
      override public function §!!^§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1);
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(param2);
                     if(_loc5_)
                     {
                        §§push(2);
                        if(_loc6_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 break loop1;
                              }
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 break loop1;
                              }
                              §§push(§ h§);
                              if(_loc6_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() * param4);
                           if(!_loc6_)
                           {
                              break;
                           }
                           break loop0;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        break loop1;
                     }
                  }
                  §§push(§§pop() / §§pop());
                  break loop0;
               }
               §§push(Number(§§pop()));
               if(!_loc6_)
               {
                  §§push(param3);
                  if(!_loc6_)
                  {
                     return 2;
                  }
                  break;
               }
            }
         }
         return §§pop();
      }
   }
}

