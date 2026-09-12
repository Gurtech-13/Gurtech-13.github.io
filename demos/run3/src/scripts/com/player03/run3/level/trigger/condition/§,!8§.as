package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   
   public class §,!8§ extends §#!G§
   {
      
      public var §>!2§:Boolean;
      
      public var §"!1§:Function;
      
      public function §,!8§(param1:Function)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §>!2§ = false;
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(this);
            §§push(§6Y§);
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            if(_loc2_)
            {
               §"!1§ = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr006b);
            }
            break;
         }
         §§push(§§findproperty(flags));
         §§push(flags);
         if(!_loc3_)
         {
            §§push(§§pop() & -5);
         }
         §§pop().flags = §§pop();
         addr006b:
      }
      
      override public function §<!V§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§>!2§);
         if(!_loc1_)
         {
            return !§§pop();
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
               §>!2§ = false;
            }
         }
      }
      
      public function §6Y§(param1:§ !W§) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§push(§>!2§);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           break loop1;
                        }
                        break loop0;
                     }
                     progress = 1 - Number(§"!1§(param1));
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(progress);
                  if(!_loc3_)
                  {
                     §§push(§§pop() <= 0);
                     break;
                  }
                  break loop1;
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr0084);
            }
            return §§pop();
         }
         §>!2§ = true;
         addr0084:
         §§push(progress);
         break loop1;
      }
   }
}

