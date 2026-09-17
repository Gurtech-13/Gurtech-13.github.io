package §]!C§
{
   public class Physics
   {
      
      public var §8h§:Boolean;
      
      public var §"![§:Number;
      
      public var §?z§:Number;
      
      public var §&Z§:Number;
      
      public var onGround:Boolean;
      
      public var mass:Number;
      
      public var §&!>§:Number;
      
      public var §'![§:Number;
      
      public var §?U§:Number;
      
      public var §=8§:Number;
      
      public var §3!Y§:Number;
      
      public var § !+§:Number;
      
      public var §7!a§:Number;
      
      public function Physics(param1:Number, param2:Number = 1)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            reset();
            if(_loc3_)
            {
               §6!!§(param1);
               if(!_loc4_)
               {
                  §&Q§(param2);
               }
            }
         }
      }
      
      public function §&Q§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() <= 0)
                  {
                     if(_loc2_)
                     {
                        §§push(mass);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  else
                  {
                     mass = param1;
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               §?U§ = 1 / param1;
               break loop0;
            }
            return §§pop();
         }
         §§push(mass);
         break loop1;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §?z§ = 0;
         if(_loc1_)
         {
            §"![§ = 0;
            § !+§ = 0;
         }
         §3!Y§ = 0;
         onGround = false;
         §'![§ = 0;
         if(!_loc2_)
         {
            §&!>§ = Number(Math.NEGATIVE_INFINITY);
            §&Z§ = 0;
            if(!_loc2_)
            {
               §7!a§ = 1;
            }
         }
      }
      
      public function §6!!§(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(§§findproperty(§=8§));
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() * 0.2);
            }
            §§pop().§=8§ = §§pop();
         }
      }
      
      public function §=!W§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §8h§ = onGround;
         §-]§();
         if(!_loc4_)
         {
            if(onGround)
            {
               §&!>§ = param1;
            }
            else
            {
               §'![§ = param1;
            }
            §&Z§ = param1;
            § !+§ = 0;
            §3!Y§ = 0;
         }
         §?z§ = param2;
         §"![§ = param3;
      }
      
      public function §%q§(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            while(true)
            {
               §§push(§§findproperty(§ !+§));
               §§push(§ !+§);
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§ !+§ = §§pop();
            if(!_loc4_)
            {
               while(true)
               {
                  §§push(§§findproperty(§3!Y§));
                  §§push(§3!Y§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param2);
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§3!Y§ = §§pop();
            }
         }
      }
      
      public function §-]§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(§§findproperty(onGround));
            §§push(§3!Y§);
            §§push(§=8§);
            if(_loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().onGround = §§pop() <= §§pop();
         }
      }
   }
}

