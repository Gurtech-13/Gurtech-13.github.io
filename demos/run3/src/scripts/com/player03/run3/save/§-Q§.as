package com.player03.run3.save
{
   import com.player03.run3.Save;
   import com.player03.run3.api.PlayFabAPI;
   
   public class §-Q§
   {
      
      public static var §-6§:Boolean;
      
      public static var §"!8§:Function;
      
      public static var §'!B§:Function;
      
      public var §9m§:Function;
      
      public var §8a§:Function;
      
      public var §=-§:String;
      
      public var § -§:Object;
      
      public var §;!U§:§4!^§;
      
      public function §-Q§(param1:String, param2:Object, param3:Function, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  §=-§ = param1;
                  if(_loc5_)
                  {
                     break;
                  }
                  § -§ = param2;
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               §8a§ = param3;
               if(_loc6_)
               {
                  break;
               }
               break loop0;
            }
            §9m§ = param4;
            break;
         }
      }
      
      public static function §`E§(param1:String) : Boolean
      {
         return param1 == "True";
      }
      
      public static function § !M§(param1:String) : String
      {
         return param1;
      }
      
      public function §?F§(param1:Object) : Object
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
                  while(true)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        §§push(§9m§);
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                        }
                        if(§§pop() == null)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           §§push(Save.§@!A§().get(§=-§,§ -§) == param1);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(!§§pop());
                           if(_loc3_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               PlayFabAPI.§@!A§().§2B§(§;!U§);
               if(_loc2_)
               {
                  break;
               }
               break loop0;
            }
            Save.§@!A§().§1!R§(§=-§,param1);
            break;
         }
         return param1;
      }
      
      public function §;r§(param1:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as Object;
         if(_loc3_)
         {
            §§push(§9m§);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            if(§§pop() == null)
            {
               if(!_loc4_)
               {
                  §§goto(addr003b);
               }
            }
            else
            {
               §§push(Save.§@!A§().exists(§=-§));
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                  }
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §?F§(param1);
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     _loc2_ = §9m§(Save.§@!A§().get(§=-§,§ -§),param1);
                     addr009b:
                     if(!_loc4_)
                     {
                        if(_loc2_ != Save.§@!A§().get(§=-§,§ -§))
                        {
                           if(!_loc4_)
                           {
                              §?F§(_loc2_);
                           }
                        }
                     }
                     break;
                  }
               }
               else if(param1 != Save.§@!A§().get(§=-§,§ -§))
               {
                  §§goto(addr009b);
               }
            }
            return;
         }
         addr003b:
      }
      
      public function §0!S§() : Object
      {
         return Save.§@!A§().get(§=-§,§ -§);
      }
      
      public function §3X§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §§push(Save.§@!A§().exists(§=-§));
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc2_)
               {
                  Save.§@!A§().§1!R§(§=-§,null);
                  if(_loc1_)
                  {
                     §§push(§9m§);
                     if(_loc1_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop() == null)
                     {
                        break;
                     }
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
               }
            }
            PlayFabAPI.§@!A§().§2B§(§;!U§);
            break;
         }
      }
   }
}

