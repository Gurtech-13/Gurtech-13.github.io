package §`_§
{
   import §-d§.§!!-§;
   import §=w§.§,D§;
   import com.player03.run3.level.§ !W§;
   
   public class §7d§ implements §,D§
   {
      
      public var §+f§:Number;
      
      public var §3!Q§:Number;
      
      public var sprite:§^s§;
      
      public var §&!1§:Boolean;
      
      public var frames:§!!-§;
      
      public var frame:int;
      
      public function §7d§(param1:§^s§, param2:§!!-§, param3:Object = undefined, param4:Object = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(param3 != null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop0;
                  }
               }
               param3 = 30;
               break;
            }
            while(true)
            {
               if(param4 == null)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  param4 = false;
               }
               §+f§ = 0;
               frame = 0;
               if(!_loc6_)
               {
                  break;
               }
               §§goto(addr0096);
            }
            sprite = param1;
            if(_loc5_)
            {
               frames = param2;
               §&!1§ = param4;
               break;
            }
            §§goto(addr0096);
         }
         §3!Q§ = 1 / param3;
         addr0096:
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§findproperty(§+f§));
         §§push(§+f§);
         if(!_loc3_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§+f§ = §§pop();
         if(§+f§ <= 0)
         {
            if(_loc2_)
            {
               §§push(§§findproperty(§+f§));
               §§push(§+f§);
               if(_loc2_)
               {
                  §§push(§§pop() + §3!Q§);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().§+f§ = §§pop();
               §§push(§§findproperty(frame));
               §§push(frame);
               if(_loc2_)
               {
                  §§push(§§pop() + 1);
               }
               §§pop().frame = §§pop();
               if(frame >= frames.length)
               {
                  frame = 0;
               }
            }
            frames.§-!P§(sprite.spritesheet,frame);
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            frame = 0;
            if(_loc2_)
            {
               §+f§ = §3!Q§;
               if(!_loc1_)
               {
                  frames.§-!P§(sprite.spritesheet,0);
               }
            }
         }
      }
      
      public function §=!V§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  §§push(§&!1§);
                  if(!_loc1_)
                  {
                     break loop0;
                  }
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §§push(false);
                     break loop0;
                  }
               }
               while(true)
               {
                  §§push(frame);
                  if(_loc1_)
                  {
                     §§push(1);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(frames.length);
                  break;
               }
               §§push(§§pop() >= §§pop());
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

