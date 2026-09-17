package com.player03.run3.character
{
   import §"§.§5O§;
   import §%G§.§ m§;
   import §2!W§.§%U§;
   import §6!Q§.§'!E§;
   import §6!Q§.§]u§;
   import game.§3!0§;
   import game.§8A§;
   import game.§>f§;
   import game.§^!R§;
   import game.Game;
   import §>T§.§[C§;
   import stage.§3!J§;
   import stage.StageActor;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§=!>§;
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import haxe.ds.§,!C§;
   
   public class §'t§ extends § m§
   {
      
      public var §?`§:§%U§;
      
      public var §,H§:Number;
      
      public var §]!&§:Number;
      
      public var §0!-§:Number;
      
      public function §'t§(param1:CharacterBase, param2:Number, param3:Object = undefined, param4:Object = undefined, param5:§%U§ = undefined)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(param3 == null)
         {
            param3 = -1;
         }
         loop0:
         while(true)
         {
            if(param4 == null)
            {
               §§push(false);
               if(_loc7_)
               {
                  break;
               }
               param4 = §§pop();
            }
            super(param1);
            length = -1;
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     §,H§ = param2;
                     if(!_loc6_)
                     {
                        break;
                     }
                     §]!&§ = param3;
                     §0!-§ = param3;
                     if(!_loc6_)
                     {
                        break loop1;
                     }
                  }
                  §?`§ = param5;
                  if(_loc6_)
                  {
                     §§push(!param4);
                     break loop0;
                  }
                  break loop1;
               }
               §§goto(addr00c9);
            }
            §;V§ = true;
            addr00b4:
            §§push(§§findproperty(§=!7§));
            §§push(§=!7§);
            if(!_loc7_)
            {
               §§push(§§pop() | 4);
            }
            §§pop().§=!7§ = §§pop();
            break loop2;
         }
         if(§§pop())
         {
            if(_loc6_)
            {
               §`B§ = "jump";
               if(!_loc7_)
               {
                  break loop1;
               }
               §§goto(addr00b4);
            }
            addr00c9:
            return;
         }
         break loop1;
      }
      
      override public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.update(param1);
            if(§ !B§.physicsData.onGround)
            {
               while(true)
               {
                  §§push(§§findproperty(§0!-§));
                  §§push(§0!-§);
                  if(!_loc2_)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        §§push(§§pop() * 4);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop().§0!-§ = §§pop();
               if(§0!-§ > §]!&§)
               {
                  §0!-§ = §]!&§;
               }
            }
            else
            {
               §§push(false);
               if(!_loc2_)
               {
                  if(§?`§ != null)
                  {
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           §§push(§?`§.active);
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                  }
               }
               if(§§pop())
               {
                  §0!-§ = §]!&§;
               }
            }
         }
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.reset();
            if(_loc1_)
            {
               §0!-§ = §]!&§;
            }
         }
      }
      
      override public function §2!A§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               §§push(§§findproperty(§0!-§));
               §§push(§0!-§);
               if(!_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§0!-§ = §§pop();
               if(_loc2_)
               {
                  break;
               }
            }
            § !B§.§%8§(§,H§);
            break;
         }
      }
      
      override public function §0!1§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§push(false);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(false);
                              if(_loc2_)
                              {
                                 §§push(§#!F§());
                                 if(_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       §§pop();
                                       if(_loc1_)
                                       {
                                          break loop4;
                                       }
                                       §§push(§ !B§.§<!B§());
                                       if(_loc1_)
                                       {
                                          break loop3;
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc2_)
                                       {
                                          break loop3;
                                       }
                                       §§push(§§pop() >= §,H§);
                                       if(!_loc1_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 break loop2;
                              }
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                              §§pop();
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                           }
                           §§push(true);
                           if(!_loc1_)
                           {
                              §§push(§0!-§);
                              break loop3;
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00b8);
                  }
                  if(§§pop() <= 0)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr00a2:
                     §§pop();
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                     §§push(§]!&§ < 0);
                     if(!_loc1_)
                     {
                        break loop4;
                     }
                     §§goto(addr00cf);
                  }
                  addr00b8:
                  §§push(Boolean(§§pop()));
                  if(!_loc1_)
                  {
                     break;
                  }
                  break loop1;
               }
               if(§§pop())
               {
                  break loop0;
               }
               return false;
            }
            return §§pop();
         }
         addr00cf:
         return !§ !B§.physicsData.onGround;
      }
      
      override public function § A§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            while(true)
            {
               §§push(false);
               §§push(false);
               if(_loc1_)
               {
                  §§push(§#!F§());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        §§push(§ !B§.§<!B§());
                        if(!_loc2_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                        §§push(§§pop() > §,H§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        §§goto(addr0093);
                     }
                     addr008c:
                     §§pop();
                     if(!_loc1_)
                     {
                        break;
                     }
                     addr0093:
                     §§goto(addr009e);
                  }
                  addr009e:
                  §§goto(addr009d);
               }
            }
            while(true)
            {
               if(§§pop() <= 0)
               {
                  §§goto(addr008c);
               }
               addr009d:
               if(!_loc2_)
               {
                  §§push(true);
                  §§push(§0!-§);
                  break loop0;
               }
               if(§]!&§ < 0)
               {
                  break loop1;
               }
               return false;
            }
         }
         return !§ !B§.physicsData.onGround;
      }
   }
}

