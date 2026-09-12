package com.player03.run3.character
{
   import com.player03.run3.level.§1G§;
   import flash.events.FocusEvent;
   import unitsystem.§7o§;
   
   public class §0v§
   {
      
      public var §^3§:String;
      
      public var §=!@§:Function;
      
      public var condition:Function;
      
      public var available:Boolean;
      
      public function §0v§(param1:String, param2:Object = undefined, param3:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(_loc5_)
            {
               available = false;
               if(_loc4_)
               {
                  break;
               }
               §^3§ = param1;
               if(!_loc5_)
               {
                  break;
               }
               condition = param2;
               if(_loc4_)
               {
                  break;
               }
            }
            §=!@§ = param3;
            break;
         }
      }
      
      public function §3!A§(param1:§1G§) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     §§push(condition);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           §§push(null);
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              break loop4;
                           }
                           if(§§pop() != §§pop())
                           {
                              if(_loc3_)
                              {
                                 available = Boolean(condition());
                                 §§push(available);
                                 if(!_loc4_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       if(!§§pop())
                                       {
                                          addr0081:
                                          §§push(§=!@§);
                                          if(_loc3_)
                                          {
                                             addr008d:
                                             §§push(§§pop());
                                          }
                                          break loop0;
                                       }
                                       §§push(false);
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00d3);
                                       }
                                    }
                                 }
                                 return §§pop();
                              }
                              break loop1;
                           }
                           §§goto(addr0081);
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0092);
            }
            §§push(§§findproperty(available));
            §§push(Boolean(§=!@§(param1)));
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  §§push(_loc2_);
               }
            }
            §§pop().available = §§pop();
            if(_loc3_)
            {
               §§goto(addr00cd);
            }
            else
            {
               §§goto(addr00e9);
            }
         }
         addr0092:
         addr0090:
         if(§§pop() != null)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  break loop1;
               }
               addr00cd:
               §§push(_loc2_);
               if(_loc3_)
               {
                  addr00d3:
                  return §§pop();
               }
               break;
            }
         }
         else
         {
            while(true)
            {
               §§push(§§findproperty(available));
               §§push(true);
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               _loc2_ = §§pop();
               §§push(_loc2_);
               break;
            }
            §§pop().available = §§pop();
            addr00e9:
         }
         addr00ea:
         return §§pop();
      }
   }
}

