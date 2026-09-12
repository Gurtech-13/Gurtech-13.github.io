package com.player03.run3.menu
{
   import §!!$§.§?y§;
   import §-!!§.§+!%§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.Save;
   import com.player03.run3.save.§2!;§;
   import com.player03.run3.save.§2o§;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.DisplayObject;
   import haxe.Timer;
   
   public class §'!V§ extends §<#§
   {
      
      public var §8L§:§+!%§;
      
      public var §^!"§:§2o§;
      
      public function §'!V§(param1:int, param2:String, param3:String, param4:§]k§ = undefined, param5:Number = undefined, param6:§2o§ = undefined)
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc11_)
               {
                  super(param1,param2,param3,param4,null,param5);
                  if(!_loc10_)
                  {
                     break loop0;
                  }
                  if(param6 != null)
                  {
                     if(_loc11_)
                     {
                        break;
                     }
                     §^!"§ = param6;
                     if(!_loc11_)
                     {
                        break loop0;
                     }
                  }
                  else if(param4 == null)
                  {
                     Boot.lastError = new Error();
                     if(!_loc11_)
                     {
                        throw "ToggleUpgrade requires a save entry!";
                     }
                     break loop0;
                  }
               }
               §§push(§§findproperty(§^!"§));
               §§push(§§findproperty(§2o§));
               §§push(param4.§=-§ + "_active");
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               §§pop().§^!"§ = new §§pop().§2o§(§§pop());
               break loop0;
            }
            var _loc7_:§2o§ = §^!"§;
            if(!_loc11_)
            {
               §§push(§§findproperty(§8L§));
               §§push(§§findproperty(§+!%§));
               §§push(16777215);
               §§push(48);
               §§push(" ");
               §§push(Boolean(Save.§@!A§().get(_loc7_.§=-§,Boolean(_loc7_.§ -§))));
               §§push(§0P§);
               if(!_loc11_)
               {
                  §§push(§§pop());
               }
               §§pop().§8L§ = new §§pop().§+!%§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
            }
            var _loc8_:§ 7§ = new §?y§(§8L§);
            var _loc9_:§ 7§ = new §?y§(§[A§);
            while(true)
            {
               if(_loc10_)
               {
                  §&d§.§1$§().add(_loc8_,new §4$§(true,0.5),_loc9_);
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               addChild(§8L§);
               break;
            }
            return;
         }
         §§push(§^!"§);
         §§push(§?!F§());
         if(_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         §§pop().§ -§ = §§pop();
         break loop1;
      }
      
      public function §0P§(param1:Boolean) : Boolean
      {
         return Boolean(§^!"§.§?F§(param1));
      }
      
      override public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               super.reset();
               if(_loc1_)
               {
                  §§push(§^!"§);
                  §§push(§?!F§());
                  if(_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  §§pop().§ -§ = §§pop();
                  if(_loc1_)
                  {
                     §§push(§8L§);
                     §§push(§?!F§());
                     if(_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     §§pop().visible = §§pop();
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
            }
            §§push(§[A§);
            §§push(§?!F§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  §§push(!§§pop());
               }
            }
            §§pop().visible = §§pop();
            break;
         }
      }
   }
}

