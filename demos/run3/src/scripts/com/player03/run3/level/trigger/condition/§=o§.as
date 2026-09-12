package com.player03.run3.level.trigger.condition
{
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§8!M§;
   
   public class §=o§ extends §#!G§
   {
      
      public var §9!N§:int;
      
      public var §[L§:Function;
      
      public var count:int;
      
      public var §%§:int;
      
      public var §!!&§:int;
      
      public function §=o§(param1:int, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               while(true)
               {
                  if(!§[L§)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     §[L§ = function(param1:§ !W§):int
                     {
                        return 0;
                     };
                  }
                  §%§ = 0;
                  if(!_loc3_)
                  {
                     §!!&§ = -1;
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  break loop0;
               }
            }
            count = 0;
            §§push(this);
            §§push(§5!0§);
            if(_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            if(!_loc3_)
            {
               §9!N§ = param1;
               if(param2 != null)
               {
                  break;
               }
            }
            §§goto(addr009b);
         }
         §[L§ = param2;
         addr009b:
      }
      
      override public function §7q§(param1:§ !W§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               super.§7q§(param1);
               if(param1.analytics == null)
               {
                  if(!_loc2_)
                  {
                     §!!&§ = 0;
                  }
               }
               else
               {
                  §!!&§ = int(§[L§(param1));
               }
               while(true)
               {
                  §§push(flags);
                  if(!_loc2_)
                  {
                     §§push(1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() & §§pop());
                  }
                  §§push(0);
                  break;
               }
               if(§§pop() != §§pop())
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  §%§ = count;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  §%§ = 0;
               }
            }
            count = 0;
            break;
         }
      }
      
      public function §5!0§(param1:§ !W§) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     count = int(§[L§(param1));
                     if(_loc3_)
                     {
                        §§push(§!!&§);
                        if(_loc2_)
                        {
                           break;
                        }
                        §§push(0);
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        if(§§pop() >= §§pop())
                        {
                           break loop0;
                        }
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §!!&§ = count;
                  break loop0;
               }
               §§goto(addr007c);
            }
            §§goto(addr0089);
         }
         §§push(count);
         if(_loc3_)
         {
            addr007c:
            while(true)
            {
               §§push(§%§);
               if(!_loc2_)
               {
                  break loop1;
               }
               addr0095:
               §§push(§§pop() + §9!N§);
               break;
            }
            §§goto(addr009c);
         }
         addr0089:
         §§push(§!!&§);
         if(_loc3_)
         {
            §§goto(addr0095);
         }
         addr009c:
         return §§pop() / §§pop();
      }
   }
}

