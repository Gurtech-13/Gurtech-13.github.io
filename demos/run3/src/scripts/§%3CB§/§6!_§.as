package §<B§
{
   import §!!$§.§?y§;
   import §-!!§.§+"§;
   import §-!!§.§,C§;
   import §-!!§.§8!8§;
   import §6!Q§.§"q§;
   import §=w§.§@[§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import flash.display.Sprite;
   
   public class §6!_§ extends Sprite implements §@[§
   {
      
      public var §#'§:Boolean;
      
      public var §2K§:Function;
      
      public var §'!-§:Number;
      
      public var §[A§:§8!8§;
      
      public function §6!_§(param1:String = undefined, param2:Object = undefined, param3:String = undefined, param4:Object = undefined, param5:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:* = null as §+"§;
         var _loc7_:* = null as §,C§;
         var _loc8_:* = null as §8!8§;
         loop0:
         while(true)
         {
            if(_loc10_)
            {
               if(param4 == null)
               {
                  param4 = 1;
               }
               if(param5 == null)
               {
                  param5 = true;
               }
               if(!§2K§)
               {
                  §2K§ = function():Number
                  {
                     return §'!-§;
                  };
               }
               §#'§ = true;
               if(!_loc9_)
               {
                  §'!-§ = 1;
                  if(_loc9_)
                  {
                     break;
                  }
                  super();
               }
            }
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     §§push(param3);
                     if(_loc10_)
                     {
                        §§push(null);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(§§pop());
                        if(!_loc10_)
                        {
                           break loop2;
                        }
                        if(§§pop() != §§pop())
                        {
                           if(!_loc10_)
                           {
                              break loop0;
                           }
                           _loc6_ = new §+"§(param2,param2 != null ? 0 : 16777215,32,param3,param1);
                           if(_loc10_)
                           {
                              §[A§ = _loc6_;
                              continue loop3;
                           }
                           §§goto(addr0185);
                        }
                        else
                        {
                           §§push(param1);
                        }
                     }
                     §§push(null);
                     break;
                  }
                  §§push(§§pop());
                  break;
               }
               if(§§pop() != §§pop())
               {
                  break loop0;
               }
               continue loop3;
            }
            loop3:
            while(true)
            {
               while(true)
               {
                  if(§[A§ != null)
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(false);
                        if(_loc10_)
                        {
                           if(param2 == null)
                           {
                              break;
                           }
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        §§pop();
                        §§push(Boolean(param5));
                        break;
                     }
                     if(§§pop())
                     {
                        _loc8_ = §[A§;
                        if(!_loc9_)
                        {
                           §&d§.§1$§().add(new §?y§(_loc8_),new §"q§(11184810,6710886,3.6));
                        }
                     }
                     addChild(§[A§);
                     if(_loc9_)
                     {
                        break loop3;
                     }
                  }
                  addr0185:
                  §'!-§ = param4;
                  break;
               }
               visible = false;
               break;
            }
            return;
         }
         _loc7_ = new §,C§(param1,param2);
         if(!_loc9_)
         {
            §[A§ = _loc7_;
         }
         continue loop3;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function reset() : void
      {
      }
   }
}

