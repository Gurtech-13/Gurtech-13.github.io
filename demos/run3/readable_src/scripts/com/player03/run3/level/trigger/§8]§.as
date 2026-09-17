package com.player03.run3.level.trigger
{
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   
   public class §8]§ extends §,!A§
   {
      
      public function §8]§(param1:§<!§, param2:Level, param3:int)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               super(param1,param2,param3);
               if(_loc4_)
               {
                  break;
               }
            }
            §;!§ = 1;
            if(!_loc4_)
            {
               §9"§ = false;
            }
            break;
         }
      }
      
      public static function §@!L§(param1:Level) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(param1.§8O§)
         {
            return 1;
         }
         var _loc2_:CharacterBase = param1.characters[0];
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §§push(true);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(_loc2_.§'j§());
                        if(!_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§push(_loc2_.§73§.endZ);
                        if(_loc3_)
                        {
                           §§push(§§pop() - 1);
                        }
                        if(§§pop() >= §§pop())
                        {
                           break loop2;
                        }
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§push(_loc2_.§4!Z§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() == 0);
                        if(!_loc4_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr008b);
               }
               if(§§pop())
               {
                  break loop0;
               }
               §§push(_loc2_.transform.position.z);
               if(_loc3_)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_.§73§.startZ);
                        if(_loc3_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(_loc2_.§73§.endZ);
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                        }
                        §§push(§§pop() - _loc2_.§73§.startZ);
                        break loop4;
                     }
                  }
                  return §§pop() / §§pop();
               }
            }
            §§push(!§§pop());
            if(!_loc4_)
            {
               addr008b:
               §§push(Boolean(§§pop()));
            }
            break loop2;
         }
         addr0092:
         return 0;
      }
      
      override public function §5!0§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§8]§.§@!L§(tunnel));
         if(_loc2_)
         {
            §§push(Number(§§pop()));
         }
         return §§pop() >= 1;
      }
   }
}

