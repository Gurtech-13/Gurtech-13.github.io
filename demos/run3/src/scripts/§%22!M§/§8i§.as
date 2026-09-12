package §"!M§
{
   import §0!"§.§-U§;
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   import flash.Boot;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   
   public class §8i§ extends §[!7§
   {
      
      public static var init__:Boolean;
      
      public static var §;s§:Number;
      
      public static var §^!6§:Number = 0.3141592653589793;
      
      public static var §+!?§:Number = 300;
      
      public var §&!I§:§"B§;
      
      public var §>!I§:Number;
      
      public function §8i§(param1:int)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
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
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(true);
                           if(!_loc4_)
                           {
                              if(param1 == 2)
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           §§pop();
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           §§push(param1);
                           if(!_loc3_)
                           {
                              break loop3;
                           }
                           §§push(0);
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           §§push(§§pop() == §§pop());
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 Boot.lastError = new Error();
                                 if(_loc3_)
                                 {
                                    throw new ArgumentError("Vertical directions not supported!");
                                 }
                              }
                              break loop1;
                           }
                        }
                        §§goto(addr0055);
                     }
                     §§push(param1);
                     if(_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  §§push(0);
                  break;
               }
               if(§§pop() == §§pop())
               {
                  break;
               }
               §§push(-1);
               if(_loc3_)
               {
                  break loop0;
               }
               §§goto(addr00b0);
            }
            §§push(1);
            if(_loc4_)
            {
            }
            break;
         }
         addr00b0:
         var _loc2_:int = §§pop();
         if(_loc3_)
         {
            §§push(this);
            §§push(800);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
               if(_loc3_)
               {
                  §§push(§§pop() * _loc2_);
               }
            }
            §§pop().super(§§pop(),300);
            if(_loc3_)
            {
               §§push(§§findproperty(§>!I§));
               §§push(0.3141592653589793);
               if(_loc3_)
               {
                  §§push(§§pop() * _loc2_);
               }
               §§pop().§>!I§ = §§pop();
               if(!_loc4_)
               {
                  §§push(§§findproperty(§&!I§));
                  §§push(§4!R§);
                  §§push(0);
                  §§push(§>!I§);
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§&!I§ = §§pop().§1!A§(§§pop(),§§pop(),0);
               }
            }
         }
      }
      
      override public function §6p§(param1:§-U§, param2:§-U§) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §4!R§.§@!M§(§&!I§,param1.normal,param1.normal);
            if(!_loc3_)
            {
               §4!R§.§@!M§(§&!I§,param2.normal,param2.normal);
            }
         }
      }
   }
}

