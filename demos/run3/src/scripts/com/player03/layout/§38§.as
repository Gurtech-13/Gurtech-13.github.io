package com.player03.layout
{
   import §"p§.§'A§;
   import §"p§.§5X§;
   import §6^§.§+0§;
   import §`_§.§^s§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.level.§ !W§;
   import flash.events.Event;
   
   public class §38§
   {
      
      public var y:Number;
      
      public var x:Number;
      
      public var §@c§:§+0§;
      
      public var §=!4§:int;
      
      public var §"H§:int;
      
      public var §&!$§:§'A§;
      
      public function §38§(param1:Object = undefined, param2:Object = undefined, param3:§'A§ = undefined)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               if(param1 != null)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(800);
               if(!_loc5_)
               {
                  param1 = §§pop();
                  break loop0;
               }
               addr004a:
               param2 = §§pop();
               addr004c:
               y = 1;
               x = 1;
               §=!4§ = param1;
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr00b5);
            }
            §§goto(addr0073);
         }
         while(true)
         {
            if(param2 == null)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr004a);
               §§push(600);
            }
            §§goto(addr004c);
         }
         addr0073:
         §"H§ = param2;
         while(true)
         {
            §§push(§§findproperty(§^!G§));
            if(_loc4_)
            {
               if(param3 == null)
               {
                  §§push(§5X§.§@!A§());
                  break;
               }
            }
            §§push(param3);
            break;
         }
         §§pop().§^!G§(§§pop());
         if(!_loc5_)
         {
            §17§(new §7E§());
         }
         addr00b5:
      }
      
      public function §17§(param1:§+0§) : §+0§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(§@c§ == null)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§pop();
                           §§push(param1 != null);
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           §§push(false);
                           if(§@c§ != null)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr0092:
                              §§push(Boolean(§§pop()));
                           }
                           break loop2;
                        }
                        §&!$§.addEventListener(Event.CHANGE,§1!§,false,1);
                     }
                     §§pop();
                     §§push(param1 == null);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr0092);
                  }
                  if(§§pop())
                  {
                     §&!$§.removeEventListener(Event.CHANGE,§1!§);
                     if(_loc2_)
                     {
                        break;
                     }
                     x = 1;
                     y = 1;
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               §@c§ = param1;
               if(_loc3_)
               {
                  break loop0;
               }
               break;
            }
            return §@c§;
         }
         §&!$§.dispatchEvent(new Event(Event.CHANGE));
         break loop1;
      }
      
      public function §^!G§(param1:§'A§) : §'A§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               if(param1 == null)
               {
                  if(!_loc2_)
                  {
                     §&!$§ = §5X§.§@!A§();
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
               else
               {
                  §&!$§ = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               if(§@c§ == null)
               {
                  break;
               }
               if(_loc2_)
               {
                  break;
               }
            }
            §1!§(null);
            break;
         }
         return §&!$§;
      }
      
      public function §1!§(param1:Event = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               if(§@c§ == null)
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §@c§.§1!§(int(§&!$§.width),int(§&!$§.height),this);
            break;
         }
      }
   }
}

