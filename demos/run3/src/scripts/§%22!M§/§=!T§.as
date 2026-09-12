package §"!M§
{
   import §%!Q§.§>K§;
   import §-!!§.§ B§;
   import §-!!§.§6!4§;
   import §0!P§.§;n§;
   import §0!P§.§`!I§;
   import §>T§.§[C§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.save.§]k§;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Point3D;
   
   public class §=!T§ extends §!!P§
   {
      
      public static var init__:Boolean;
      
      public static var §&!O§:§=!T§;
      
      public var §?!J§:Number;
      
      public function §=!T§(param1:Number)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               super();
               if(_loc3_)
               {
                  break;
               }
            }
            §?!J§ = param1;
            break;
         }
      }
      
      override public function §^C§(param1:§6M§, param2:§[C§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            §§push(param1.§"!2§);
            if(!_loc5_)
            {
               §§push(§?!J§);
               if(_loc6_)
               {
                  §§push(§§pop() * 0.75);
               }
               §§push(§§pop() + §§pop());
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            if(!_loc5_)
            {
               break;
            }
            §§goto(addr0043);
         }
         addr0043:
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(param1.§;H§());
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            while(true)
            {
               if(_loc3_ > _loc4_ == §?!J§ > 0)
               {
                  if(_loc6_)
                  {
                     while(true)
                     {
                        §§push(param1);
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           §§push(0.3);
                           if(_loc6_)
                           {
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 §§push(§§pop() - _loc4_);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop().§'!K§(§§pop());
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
               }
               param1.§[!L§ = 1.2;
               break;
            }
         }
      }
      
      override public function §9U§(param1:§6M§, param2:§[C§, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = NaN;
         §§push(param1);
         §§push(param1.§"!2§);
         if(_loc6_)
         {
            §§push(§§pop() + §?!J§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().§"!+§ = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(§?!J§);
               if(_loc6_)
               {
                  if(§§pop() >= 0)
                  {
                     break;
                  }
                  param1.§-9§ = 5;
                  param1.§[!L§ = 1.2;
                  §§push(param1.§"!2§);
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               §§push(0.5);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           §§push(param1.§"!+§);
                           break loop0;
                        }
                        break;
                     }
                  }
                  break loop0;
               }
               §§goto(addr00a0);
            }
            return true;
         }
         addr00a0:
         if(§§pop() < _loc4_)
         {
            param1.§"!+§ = _loc4_;
         }
         break loop1;
      }
   }
}

