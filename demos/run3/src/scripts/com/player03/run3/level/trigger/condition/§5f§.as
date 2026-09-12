package com.player03.run3.level.trigger.condition
{
   import §%!Q§.§>K§;
   import §1!a§.§#r§;
   import §4!8§.§1!3§;
   import §^!0§.§7P§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§ L§;
   import haxeutils.math.geom.AngleMath;
   
   public class §5f§ extends §#!G§
   {
      
      public var §+!N§:Number;
      
      public var §;i§:Number;
      
      public var §9!]§:Number;
      
      public function §5f§(param1:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  if(param1 != null)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               param1 = 1;
               break;
            }
            §+!N§ = 0;
            if(!_loc3_)
            {
               break;
            }
            §§push(this);
            §§push(§4E§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            if(_loc3_)
            {
               §;i§ = Number(Math.NaN);
               if(_loc3_)
               {
                  break;
               }
            }
            §§goto(addr0098);
         }
         §§push(§§findproperty(§9!]§));
         §§push(1);
         §§push(6.283185307179586);
         if(!_loc2_)
         {
            §§push(§§pop() * param1);
            if(!_loc2_)
            {
               §§push(§§pop() - 0.000001);
            }
         }
         §§pop().§9!]§ = §§pop() / §§pop();
         addr0098:
      }
      
      override public function §7q§(param1:§ !W§) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               super.§7q§(param1);
               if(_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(flags);
               if(_loc3_)
               {
                  §§push(1);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§push(0);
               break;
            }
            if(§§pop() == §§pop())
            {
               if(_loc3_)
               {
                  §+!N§ = 0;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            §;i§ = Number(Math.NaN);
            break;
         }
      }
      
      public function §4E§(param1:§ !W§) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Number = NaN;
         §§push(§;i§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            §§push(_loc2_);
            if(_loc4_)
            {
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_)
                     {
                        _loc3_ = AngleMath.§-!M§(§;i§,param1.characters[0].§"!$§);
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(§§findproperty(§+!N§));
                        §§push(§+!N§);
                        if(_loc4_)
                        {
                           §§push(§§pop() + _loc3_);
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§+!N§ = §§pop();
                  }
                  §;i§ = param1.characters[0].§"!$§;
                  _loc3_ = §+!N§;
                  if(_loc5_)
                  {
                     break;
                  }
                  if(_loc3_ >= 0)
                  {
                     break;
                  }
                  §§push(-_loc3_);
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  §§push(§9!]§);
               }
               §§goto(addr00cb);
            }
            return §§pop() * §§pop();
         }
         return §§pop();
      }
   }
}

