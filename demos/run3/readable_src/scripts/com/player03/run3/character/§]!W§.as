package com.player03.run3.character
{
   import com.player03.run3.Save;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§9t§;
   
   public class §]!W§
   {
      
      public var §@D§:Vector.<CharacterDef>;
      
      public var §>v§:§9t§;
      
      public function §]!W§(param1:Vector.<CharacterDef>)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §@D§ = param1;
         }
         §§push(1);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(param1.length));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               while(_loc2_ < _loc3_)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        _loc2_++;
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc6_)
                  {
                     if(param1[_loc4_] == null)
                     {
                        if(_loc6_)
                        {
                           § L§.warning = 461463;
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                     }
                     param1[_loc4_].§[!%§ = param1[0].§[!%§;
                  }
               }
               if(_loc5_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§>v§));
            §§push(§§findproperty(§9t§));
            §§push(param1[0].name + "_costume");
            if(!_loc5_)
            {
               §§push(§§pop());
            }
            §§pop().§>v§ = new §§pop().§9t§(§§pop());
            break;
         }
      }
      
      public static function create(param1:Vector.<CharacterDef>) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as CharacterDef;
         var _loc2_:§]!W§ = new §]!W§(param1);
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_)
         {
            loop0:
            while(_loc3_ < int(param1.length))
            {
               _loc4_ = param1[_loc3_];
               if(!_loc5_)
               {
                  _loc3_++;
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_.§[P§ == null)
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     § L§.warning = 956479;
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  _loc4_.§[P§ = _loc2_;
               }
            }
         }
      }
      
      public function §`Z§(param1:CharacterDef) : CharacterDef
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(int(§@D§.indexOf(param1,0)));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc4_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(_loc4_)
                        {
                           if(_loc2_ < 0)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              break loop2;
                           }
                        }
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(§§pop() >= int(§@D§.length));
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              break;
                           }
                           break loop1;
                        }
                        break loop0;
                     }
                     if(!§§pop())
                     {
                        break loop0;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop3;
               }
               §§push(0);
               if(_loc4_)
               {
                  break;
               }
               addr0094:
               _loc2_ = §§pop();
               if(_loc4_)
               {
                  break loop0;
               }
               §§goto(addr00a6);
            }
            §§goto(addr0094);
         }
         §>v§.§?F§(_loc2_);
         addr00a6:
         return §@D§[_loc2_];
      }
      
      public function §?7§() : CharacterDef
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:§9t§ = §>v§;
         §§push(int(Save.§@!A§().get(_loc1_.§=-§,int(_loc1_.§ -§))));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(true);
                  §§push(true);
                  if(!_loc4_)
                  {
                     if(_loc2_ < 0)
                     {
                        break loop0;
                     }
                     if(_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(_loc2_ >= int(§@D§.length));
                        if(_loc4_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop0;
               }
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§goto(addr00b1);
               }
               §§goto(addr00b3);
            }
            while(true)
            {
               if(!§§pop())
               {
                  §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(§@D§[_loc2_].§<!,§());
                  if(!_loc4_)
                  {
                     break loop1;
                  }
                  §§push(!§§pop());
               }
               addr00b3:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            §§push(0);
            if(!_loc4_)
            {
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
         }
         return §@D§[_loc2_];
      }
   }
}

