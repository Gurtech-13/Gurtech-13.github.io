package §2!S§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §-!!§.§,C§;
   import §=w§.§@[§;
   import com.player03.layout.§ 7§;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class §28§ extends §,C§ implements §@[§
   {
      
      public var §"!5§:Number;
      
      public var §;!K§:Number;
      
      public var condition:Function;
      
      public var §]B§:DisplayObject;
      
      public function §28§(param1:Function, param2:String, param3:Function, param4:Boolean = false, param5:Number = -1)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               super(param2,param3,param4);
               if(!_loc6_)
               {
                  break;
               }
               condition = param1;
               if(!_loc6_)
               {
                  break;
               }
               §;!K§ = param5;
               if(_loc7_)
               {
                  break;
               }
            }
            reset();
            break;
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(§;!K§);
                     if(_loc2_)
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           break loop0;
                        }
                        if(_loc2_)
                        {
                           §§push(§§findproperty(§"!5§));
                           §§push(§"!5§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§"!5§ = §§pop();
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                        }
                        §§push(§"!5§);
                     }
                     §§push(0);
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  break loop0;
               }
            }
            break loop1;
         }
      }
      
      public function reset() : void
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
                  §§push(condition);
                  if(!_loc1_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() == null)
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §"!5§ = §;!K§;
               if(_loc1_)
               {
                  break;
               }
               visible = Boolean(condition());
               if(!_loc1_)
               {
                  break loop0;
               }
               §§goto(addr007e);
            }
            return;
         }
         if(§]B§ != null)
         {
            if(_loc2_)
            {
               addr007e:
               §]B§.visible = visible;
            }
         }
         break loop1;
      }
   }
}

