package §,x§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §3!b§.Cutscenes;
   import §3!b§.PlanetMissing;
   import §3!b§.SelfAssembly;
   import §<!&§.§%!§;
   import §>T§.Bridge;
   import §`_§.§^s§;
   import com.player03.run3.character.§'O§;
   import flash.Boot;
   import flash.text.TextField;
   
   public class §=B§
   {
      
      public function §=B§()
      {
      }
      
      public static function §@W§(param1:int, param2:int, param3:Object = undefined) : §3!I§
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(param3 == null)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(1);
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  param3 = §§pop();
               }
               if(param3 == 0)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  Boot.lastError = new Error();
                  if(!_loc4_)
                  {
                     throw "Must increment by a non-zero value.";
                  }
               }
               §§push(§=B§.§]H§(param1,param2,param3));
               if(_loc5_)
               {
                  break loop0;
               }
               §§goto(addr0089);
            }
            return new §3!I§(param1,param2,param3);
         }
         addr0089:
         §§push(int(§§pop()));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         param2 = §§pop();
         break loop1;
      }
      
      public static function §]H§(param1:int, param2:int, param3:int) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param3);
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        if(§§pop() > §§pop() == param2 > param1)
                        {
                           §§push(int(Math.ceil((param2 - param1) / param3 - 1)));
                           if(!_loc5_)
                           {
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr0062:
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 break loop1;
                              }
                              break loop0;
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§push(param3);
                        break;
                     }
                     §§goto(addr0062);
                  }
                  §§push(§§pop() - §§pop());
                  break;
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc4_)
            {
               return §§pop();
            }
         }
         break loop1;
      }
   }
}

