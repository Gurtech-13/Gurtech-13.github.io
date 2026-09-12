package com.player03.run3.level.trigger
{
   import §3!b§.§+Z§;
   import §3!b§.Cutscenes;
   import §4n§.Achievement;
   import §=b§.§,0§;
   import §=w§.§,D§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   import nme3D.§1![§;
   
   public class §,!A§ implements §,D§
   {
      
      public var tunnel:§ !W§;
      
      public var §;j§:int;
      
      public var §5!&§:Object;
      
      public var result:§<!§;
      
      public var §9"§:Boolean;
      
      public var §<g§:Function;
      
      public var §;!§:int;
      
      public var §5!E§:Boolean;
      
      public var condition:Function;
      
      public function §,!A§(param1:§<!§, param2:§ !W§, param3:Object)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  §5!E§ = false;
                  if(_loc4_)
                  {
                     break;
                  }
                  §9"§ = true;
                  if(_loc5_)
                  {
                     §;j§ = 0;
                     if(!_loc5_)
                     {
                        break;
                     }
                     §;!§ = 1;
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                     result = param1;
                  }
                  tunnel = param2;
               }
               §5!&§ = param3;
               break;
            }
            reset();
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as Function;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(§5!&§ != null)
                        {
                           §§pop();
                           §§push(tunnel.characters[0].§73§.id == §5!&§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           §§push(§5!E§);
                           break;
                        }
                        return;
                     }
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(_loc4_)
                     {
                        §5!E§ = true;
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
                  reset();
                  break loop1;
               }
               §§pop();
               §§push(§5!0§());
               if(_loc4_)
               {
                  §§goto(addr00bb);
               }
               §§goto(addr00bd);
            }
            while(true)
            {
               §§push(false);
               if(_loc4_)
               {
                  if(§;j§ >= §;!§)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop2;
                  }
                  §§push(Boolean(§§pop()));
               }
               §§push(Boolean(§§pop()));
               break;
            }
            addr00bd:
            if(§§pop())
            {
               if(_loc3_)
               {
                  break;
               }
               §§push(§§findproperty(§;j§));
               §§push(§;j§);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().§;j§ = §§pop();
               §§push(result.§@!S§);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        _loc2_ = §§pop();
                        break;
                     }
                  }
               }
               §§goto(addr0107);
            }
            §§goto(addr010c);
         }
         addr0107:
         _loc2_();
         addr010c:
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(§9"§)
            {
               if(_loc1_)
               {
                  §;j§ = 0;
               }
            }
         }
      }
      
      public function §=!V§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§push(true);
                     if(!_loc2_)
                     {
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 §§push(§9"§);
                                 if(!_loc2_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    break loop3;
                                 }
                              }
                              §§pop();
                              if(!_loc2_)
                              {
                                 §§push(§;j§ >= §;!§);
                                 if(_loc1_)
                                 {
                                    break loop3;
                                 }
                                 break;
                              }
                              break loop1;
                           }
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       break loop5;
                                    }
                                    §§push(tunnel.§"[§ == null);
                                    if(!_loc1_)
                                    {
                                       break loop2;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(true);
                                       break loop0;
                                    }
                                    if(!_loc2_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00bd);
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc1_)
                              {
                                 break loop2;
                              }
                              §§goto(addr00bd);
                           }
                           addr00bd:
                           §§push(false);
                           if(§5!&§ != null)
                           {
                              §§pop();
                              addr00c1:
                              if(_loc1_)
                              {
                                 §§push(§5!E§);
                                 break loop6;
                              }
                              §§push(tunnel.characters[0].§73§.id == §5!&§);
                              break loop1;
                           }
                           if(!§§pop())
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 return §§pop();
                              }
                              break loop0;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break loop4;
                     }
                     break loop1;
                  }
                  §§goto(addr00c1);
               }
               return §§pop();
            }
            §§push(!§§pop());
            if(!_loc2_)
            {
               break loop2;
            }
            break;
         }
         return §§pop();
      }
      
      public function §5!0§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               §§push(condition);
               if(_loc2_)
               {
                  §§push(§§pop());
               }
               if(§§pop() == null)
               {
                  §§push(false);
                  break;
               }
            }
            §§push(Boolean(condition(tunnel)));
            if(_loc2_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §2!&§() : §+Z§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:§<!§ = result;
         if(_loc3_)
         {
            if(_loc1_.cutsceneName == null)
            {
               return _loc1_.cutscene;
            }
         }
         return Cutscenes.§3'§(_loc1_.cutsceneName);
      }
      
      public function §`+§() : Achievement
      {
         return result.achievement;
      }
   }
}

