package com.player03.run3.level.trigger.condition
{
   import §!!$§.§ 6§;
   import §6!Q§.§'!E§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§]!W§;
   import com.player03.run3.level.Level;
   import flash.geom.Rectangle;
   import haxeutils.sound.§5! §;
   
   public class §"!,§ extends §#!G§
   {
      
      public var §#!9§:Boolean;
      
      public var character:CharacterDef;
      
      public var §,!%§:Boolean;
      
      public function §"!,§(param1:int, param2:Object = undefined, param3:Object = undefined)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(param2 == null)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(false);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        param2 = §§pop();
                     }
                     while(true)
                     {
                        if(param3 == null)
                        {
                           §§push(false);
                           if(_loc5_)
                           {
                              break;
                           }
                           param3 = §§pop();
                        }
                        §§push(this);
                        §§push(§>o§);
                        if(!_loc5_)
                        {
                           §§push(§§pop());
                        }
                        §§pop().super(§§pop());
                        if(_loc4_)
                        {
                           break loop2;
                        }
                     }
                     §§goto(addr00c0);
                  }
                  §§push(§§findproperty(flags));
                  §§push(flags);
                  if(!_loc5_)
                  {
                     §§push(§§pop() | 0x10);
                  }
                  §§pop().flags = §§pop();
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00c0);
                  }
               }
               while(true)
               {
                  if(param1 >= 0)
                  {
                     if(_loc4_)
                     {
                        addr0099:
                        §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(param1 < int(CharacterRegistry.§&!#§.length));
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  addr00c0:
                  if(§§pop())
                  {
                     break;
                  }
                  break loop0;
               }
            }
            character = CharacterRegistry.§&!#§[param1];
            §,!%§ = param2;
            §#!9§ = param3;
            break;
         }
      }
      
      public function §>o§(param1:Level) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:int = 0;
         var _loc4_:* = null as Vector.<CharacterDef>;
         var _loc5_:* = null as CharacterDef;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(character == null)
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           return §§pop();
                        }
                        addr009b:
                        _loc3_ = §§pop();
                        addr008d:
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr007c:
                        _loc2_ = false;
                        addr007b:
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr009b);
                        }
                     }
                     _loc4_ = character.§[P§.§@D§;
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           if(_loc3_ >= int(_loc4_.length))
                           {
                              break loop3;
                           }
                           _loc5_ = _loc4_[_loc3_];
                           if(_loc6_)
                           {
                              break loop1;
                           }
                           _loc3_++;
                           if(_loc6_)
                           {
                              break loop1;
                           }
                           if(_loc5_ == param1.characters[0].§!8§)
                           {
                              if(_loc7_)
                              {
                                 §§push(true);
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc6_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    break loop3;
                                 }
                              }
                              break loop1;
                           }
                        }
                     }
                     break;
                  }
               }
               else
               {
                  while(true)
                  {
                     §§push(false);
                     if(_loc7_)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              if(§#!9§)
                              {
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(character.§[P§ != null);
                                 if(!_loc7_)
                                 {
                                    break loop5;
                                 }
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              §§push(character == param1.characters[0].§!8§);
                           }
                           §§goto(addr007b);
                        }
                        §§goto(addr007c);
                     }
                     _loc2_ = Boolean(§§pop());
                     break;
                  }
               }
               §§push(_loc2_);
               break;
            }
            if(§§pop() != §,!%§)
            {
               break;
            }
            §§goto(addr0154);
            §§push(0);
         }
         §§push(1);
         if(!_loc6_)
         {
            return §§pop();
         }
         addr0154:
         return §§pop();
      }
   }
}

