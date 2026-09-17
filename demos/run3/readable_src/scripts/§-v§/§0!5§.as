package §-v§
{
   import §-!!§.§2!B§;
   import com.player03.run3.Main;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.Lizard;
   import com.player03.run3.level.Level;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   
   public class §0!5§ extends §?P§
   {
      
      public var §]!"§:int;
      
      public var §9O§:Function;
      
      public function §0!5§(param1:Function, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(param2 == null)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     param2 = true;
                  }
                  §]!"§ = 0;
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §9O§ = param1;
               if(_loc4_)
               {
                  break;
               }
               break loop0;
            }
            §§push(this);
            §§push(CharacterRegistry.lizard);
            §§push(§#_§);
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop(),§§pop(),param2);
            break;
         }
      }
      
      public function §"<§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§§findproperty(§]!"§));
         §§push(§]!"§);
         if(_loc1_)
         {
            §§push(§§pop() - 1);
         }
         §§pop().§]!"§ = §§pop();
         if(!§;P§.visible)
         {
            if(!_loc2_)
            {
               §;P§.x = 0;
               §]!"§ = 0;
               if(_loc2_)
               {
                  addr00a0:
                  §§push(Actuate.tween(§;P§,0.2,{"x":-§;P§.x}));
                  §§push(§"<§);
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().onComplete(§§pop());
               }
            }
         }
         else if(§]!"§ > 0)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  if(§;P§.x != 0)
                  {
                     break;
                  }
               }
               §;P§.x = 2 * (Number(Math.random()) > 0.5 ? 1 : -1);
               break;
            }
            §§goto(addr00a0);
         }
         else
         {
            Actuate.tween(§;P§,0.1,{"x":0});
         }
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = null as Level;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               §§push(§9O§);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               if(§§pop() == null)
               {
                  break;
               }
               if(_loc6_)
               {
                  break;
               }
            }
            §9O§(param1);
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc5_)
                           {
                              break loop0;
                           }
                           addr00d9:
                           if(_loc3_)
                           {
                              §§push(Main.instance.tunnel.characters[0].§73§.§%f§(CharacterRegistry.lizard));
                              if(!_loc6_)
                              {
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(false);
                              if(_loc5_)
                              {
                                 §§goto(addr0114);
                              }
                           }
                           §§goto(addr0129);
                        }
                        §§goto(addr0108);
                     }
                     §§goto(addr0145);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc6_)
                     {
                        §]!"§ = 5;
                        break loop1;
                     }
                  }
                  else
                  {
                     §]!"§ = 5;
                     if(_loc6_)
                     {
                     }
                  }
                  §§goto(addr019b);
               }
               §§push(!§§pop());
               if(_loc5_)
               {
                  addr0108:
                  _loc2_ = §§pop();
                  addr011c:
                  if(_loc2_)
                  {
                     return;
                  }
                  §§push(CharacterRegistry.lizard.§#U§);
               }
               else
               {
                  addr0114:
                  §§push(Boolean(§§pop()));
                  if(_loc5_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr011c);
                  }
               }
               addr0129:
               if(§§pop())
               {
                  Lizard.§ t§();
                  if(CharacterRegistry.lizard.§#U§)
                  {
                     addr0145:
                     §§push(§]!"§);
                     §§push(0);
                     break loop3;
                  }
                  §];§();
               }
               else
               {
                  §];§();
               }
               §§goto(addr019b);
            }
            §"<§();
            if(_loc5_)
            {
            }
            addr019b:
            return;
         }
         while(true)
         {
            if(Main.instance.tunnel != null)
            {
               if(!_loc6_)
               {
                  _loc4_ = Main.instance.tunnel;
                  if(!_loc6_)
                  {
                     if(_loc4_.characters != null)
                     {
                        §§push(int(_loc4_.characters.length));
                        if(_loc6_)
                        {
                           break loop4;
                        }
                        §§push(0);
                        if(!_loc5_)
                        {
                           break loop3;
                        }
                        §§push(§§pop() > §§pop());
                        if(_loc6_)
                        {
                           break loop2;
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc6_)
                        {
                           break loop2;
                        }
                        _loc3_ = §§pop();
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(!_loc5_)
                        {
                           break;
                        }
                        _loc3_ = Boolean(§§pop());
                     }
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc5_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc3_ = §§pop();
            }
            §§goto(addr00d9);
         }
         §§goto(addr0108);
      }
      
      override public function §];§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as String;
         super.§];§();
         while(true)
         {
            if(§]!"§ > 0)
            {
               Actuate.stop(§;P§,null,false,false);
               if(!_loc3_)
               {
                  §;P§.x = 0;
                  if(!_loc2_)
                  {
                     break;
                  }
               }
               §]!"§ = 0;
            }
            Lizard.§?!-§();
            if(Lizard.§@`§ >= 0.6)
            {
               §6!B§.bitmapData = §2!B§.getBitmapData("menu/characterselection/" + character.name + "FrontSleepy.png");
               break;
            }
            §§push(character.§,!-§());
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  §§push(§§pop());
               }
            }
            _loc1_ = §§pop();
            if(_loc2_)
            {
               §6!B§.bitmapData = §2!B§.getBitmapData(_loc1_);
            }
            break;
         }
      }
   }
}

