package §%!a§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import unitsystem.§7o§;
   
   public class §>!Y§ extends §#!G§
   {
      
      public var start:Number;
      
      public var §[H§:Number;
      
      public function §>!Y§(param1:int)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               start = -1;
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(this);
            §§push(§>^§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            if(!_loc2_)
            {
               §§push(§§findproperty(§[H§));
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * 30);
               }
               §§pop().§[H§ = Number(§§pop());
               if(!_loc2_)
               {
                  §§push(§§findproperty(flags));
                  §§push(flags);
                  if(_loc3_)
                  {
                     §§push(§§pop() | 2);
                  }
                  §§pop().flags = §§pop();
               }
            }
            break;
         }
      }
      
      override public function §7q§(param1:§ !W§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.§7q§(param1);
            if(!_loc2_)
            {
               start = -1;
            }
         }
      }
      
      public function §>^§(param1:§ !W§) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               §§push(§7o§.controlScheme.§,h§("jump"));
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  start = -1;
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(start);
               if(_loc2_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc3_)
                     {
                        start = param1.characters[0].transform.position.z;
                        if(_loc3_)
                        {
                        }
                     }
                     break loop0;
                  }
                  §§push(param1.characters[0].transform.position.z);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(start);
               if(_loc2_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(§[H§);
               }
               §§push(§§pop() / §§pop());
               if(!_loc3_)
               {
                  break;
               }
               addr00c7:
               return §§pop();
            }
            return §§pop();
         }
         §§goto(addr00c7);
      }
   }
}

