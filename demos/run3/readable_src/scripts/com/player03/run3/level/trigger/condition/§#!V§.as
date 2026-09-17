package com.player03.run3.level.trigger.condition
{
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.§@I§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   
   public class §#!V§ extends §,!8§
   {
      
      public var §,t§:Number;
      
      public function §#!V§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this);
            §§push(§@!;§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            if(_loc1_)
            {
               §,t§ = Number(Math.NaN);
            }
         }
      }
      
      public function §@!;§(param1:Level) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§,t§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(§§pop() != §§pop())
                           {
                              if(_loc3_)
                              {
                                 §,t§ = param1.characters[0].§"!$§;
                                 if(!_loc4_)
                                 {
                                    break loop1;
                                 }
                              }
                              break loop2;
                           }
                           §§push(§,t§);
                        }
                        §§push(param1.characters[0].§"!$§);
                        break;
                     }
                     if(§§pop() != §§pop())
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(1);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
                  break loop0;
               }
            }
            break loop1;
         }
         return §§pop();
      }
      
      override public function §7q§(param1:Level) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               super.§7q§(param1);
               if(_loc3_)
               {
                  break;
               }
            }
            §,t§ = Number(Math.NaN);
            break;
         }
      }
   }
}

