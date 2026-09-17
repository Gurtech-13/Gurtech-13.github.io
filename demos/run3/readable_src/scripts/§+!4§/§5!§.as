package §+!4§
{
   import §!D§.§[!5§;
   import §=w§.§@[§;
   import com.player03.run3.Main;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import haxe.Timer;
   import unitsystem.§7o§;
   
   public class §5!§ implements §@[§
   {
      
      public var §=!+§:Boolean;
      
      public var §,u§:Number;
      
      public var §-y§:Boolean;
      
      public var §^W§:Number;
      
      public var §?!7§:Boolean;
      
      public function §5!§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  §-y§ = false;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §,u§ = 0;
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §^W§ = 0;
               if(_loc2_)
               {
                  §=!+§ = false;
                  if(_loc2_)
                  {
                     break;
                  }
                  break loop0;
               }
               break;
            }
            §?!7§ = false;
            break;
         }
      }
      
      final public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §-y§ = §?!7§;
               §'x§(param1);
               if(!_loc2_)
               {
                  break;
               }
               if(!§?!7§)
               {
                  §^W§ = 0;
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(§§findproperty(§,u§));
                        §§push(§,u§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + param1);
                           if(!_loc2_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§,u§ = §§pop();
                  }
                  break;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§findproperty(§^W§));
               §§push(§^W§);
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§^W§ = §§pop();
            §,u§ = 0;
            break;
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               §?!7§ = true;
               if(!_loc1_)
               {
                  break;
               }
               §-y§ = true;
               if(_loc2_)
               {
                  break;
               }
               §^W§ = Number(Math.POSITIVE_INFINITY);
               if(_loc2_)
               {
                  break;
               }
            }
            §,u§ = 0;
            break;
         }
      }
      
      public function §'x§(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §?!7§ = §=!+§;
            if(_loc2_)
            {
               §=!+§ = false;
            }
         }
      }
   }
}

