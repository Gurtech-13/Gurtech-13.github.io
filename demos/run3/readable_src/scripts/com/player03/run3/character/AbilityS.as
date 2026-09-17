package com.player03.run3.character
{
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §2n§.§7%§;
   import scenes.§+!"§;
   import com.player03.run3.Main;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.display.Stage;
   import unitsystem.§7o§;
   
   public class AbilityS extends §'5§
   {
      
      public var §3R§:Number;
      
      public var §5"§:Number;
      
      public var §=Q§:Number;
      
      public function AbilityS(param1:CharacterBase, param2:Number, param3:Number, param4:Number, param5:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(param5 == null)
         {
            param5 = 0.5;
         }
         super(param1);
         if(_loc7_)
         {
            §=Q§ = param2;
            §5"§ = param3;
         }
         §3R§ = param4;
         if(_loc7_)
         {
            length = param5;
         }
      }
      
      override public function §2!A§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(§"@§);
               §§push(§"@§.§`!1§());
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc2_)
                     {
                        §§push(-§§pop());
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                     §§push(§=Q§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        break;
                     }
                     break loop0;
                  }
               }
               §§push(§"@§.§<!B§());
               if(_loc3_)
               {
                  break;
               }
               addr0069:
               while(true)
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     addr007c:
                     §§push(§5"§);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(§§pop() * §§pop());
                  }
                  addr0089:
                  §§push(§"@§.§;H§());
                  if(_loc3_)
                  {
                     break;
                  }
                  addr00ab:
                  §§pop().applyForce3D(§§pop(),§§pop(),§§pop());
               }
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop() * §3R§);
                  break;
               }
               §§goto(addr00ab);
            }
            while(true)
            {
               §§push(Number(§§pop()));
               if(!_loc2_)
               {
                  §§goto(addr0069);
               }
               §§goto(addr007c);
            }
            §§goto(addr0089);
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
            while(true)
            {
               if(_loc2_)
               {
                  §§push(!§ !B§.physicsData.onGround);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(false);
                     break loop0;
                  }
               }
               §§push(§7o§.controlScheme.§,h§(§`B§));
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc1_)
                  {
                     break;
                  }
                  break loop0;
               }
               break;
            }
            return §§pop();
         }
         return §§pop();
      }
      
      override public function § A§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  §§push(super.§ A§());
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc1_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(false);
                     break loop0;
                  }
               }
               §§push(§"@§.§4!Z§ == 0);
               if(!_loc2_)
               {
                  break;
               }
               break loop0;
            }
            return §§pop();
         }
         return §§pop();
      }
   }
}

