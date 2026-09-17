package §'!1§
{
   import layout3d.PositionData3D;
   import §>T§.§[C§;
   import stage.§']§;
   import com.player03.run3.level.TunnelSection;
   import com.player03.run3.menu.§ L§;
   
   public class § E§
   {
      
      public var tile:§[C§;
      
      public var §^5§:PositionData3D;
      
      public var §8!>§:int;
      
      public var §6q§:int;
      
      public var §71§:PositionData3D;
      
      public var §3T§:int;
      
      public function § E§(param1:int, param2:int, param3:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               §8!>§ = param1;
               if(_loc4_)
               {
                  break;
               }
            }
            §3T§ = param2;
            if(_loc5_)
            {
               while(true)
               {
                  §§push(§§findproperty(§6q§));
                  if(_loc5_)
                  {
                     if(param3 == null)
                     {
                        §§push(param2);
                        break;
                     }
                  }
                  §§push(int(param3));
                  if(_loc5_)
                  {
                  }
                  break;
               }
               §§pop().§6q§ = §§pop();
            }
            break;
         }
      }
      
      public function §#![§(param1:§']§ = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            tile.transform.§"w§(§^5§.position);
            if(!_loc2_)
            {
               tile.transform.§"I§(§^5§.rotation);
               if(_loc3_)
               {
                  if(param1 != null)
                  {
                     if(!_loc2_)
                     {
                        param1.§[B§(tile);
                     }
                  }
               }
            }
         }
      }
      
      public function §,s§(param1:§']§ = undefined) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(§71§ != null)
         {
            tile.transform.§"w§(§71§.position);
            while(true)
            {
               if(!_loc3_)
               {
                  tile.transform.§"I§(§71§.rotation);
                  addr0082:
                  if(param1 == null)
                  {
                     break;
                  }
               }
               param1.§[B§(tile);
               break;
            }
         }
         else
         {
            tile.transform.reset();
            if(_loc2_)
            {
               §§goto(addr0082);
            }
         }
      }
      
      public function init(param1:TunnelSection) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  §^5§ = param1.§<!C§(§8!>§);
                  if(!_loc4_)
                  {
                     §§push(§3T§);
                     if(_loc4_)
                     {
                        break;
                     }
                     if(§§pop() == §6q§)
                     {
                        break loop0;
                     }
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
               }
               §71§ = param1.§<!C§(§3T§);
               break loop0;
            }
            var _loc2_:* = §§pop();
            while(true)
            {
               if(_loc3_)
               {
                  § L§.low = 948729;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§findproperty(tile));
                        if(!_loc4_)
                        {
                           §§push(false);
                           if(_loc3_)
                           {
                              if(_loc2_ < 0)
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                           }
                           §§pop();
                           if(!_loc3_)
                           {
                              break loop3;
                           }
                        }
                        §§push(_loc2_ < int(param1.terrain.length));
                        if(!_loc4_)
                        {
                           break loop4;
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        break loop3;
                     }
                     §§goto(addr00ea);
                     §§push(null);
                  }
                  §§push(Boolean(§§pop()));
                  break loop5;
               }
               addr00ea:
               §§pop().tile = param1.terrain[_loc2_];
               if(!_loc4_)
               {
                  §#![§();
               }
               break;
            }
            return;
         }
         §§push(§6q§);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         break loop1;
      }
   }
}

