package §-v§
{
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §>!O§.§=!]§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import flash.text.TextField;
   
   public class §]!G§ extends §'!O§
   {
      
      public var §`8§:TextField;
      
      public var §[9§:int;
      
      public var §^E§:Boolean;
      
      public var §@!T§:int;
      
      public function §]!G§(param1:int, param2:int, param3:Number)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc6_)
            {
               §^E§ = false;
               if(!_loc6_)
               {
                  super();
                  while(true)
                  {
                     if(_loc7_)
                     {
                        mouseEnabled = false;
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     mouseChildren = false;
                     if(_loc7_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
            }
            §`8§ = §&!;§.§9Q§(param1,param3,null,"0");
            break;
         }
         var _loc4_:TextField = §`8§;
         var _loc5_:* = null;
         if(!_loc6_)
         {
            while(true)
            {
               if(_loc5_ == null)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc5_ = int(Number(_loc4_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc4_),new §=!]§(int(_loc5_)));
               if(_loc6_)
               {
                  break;
               }
               addChild(§`8§);
               if(_loc7_)
               {
                  break;
               }
               §1j§(0);
            }
            §@!T§ = param2;
            if(!_loc6_)
            {
               §§goto(addr00f8);
            }
         }
      }
      
      public function §1j§(param1:int) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               §[9§ = param1;
               if(_loc2_)
               {
                  visible = §[9§ > 0 || §^E§;
                  if(_loc3_)
                  {
                     break;
                  }
               }
            }
            if(!visible)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               §§push(§§findproperty(§%k§));
               §§push("");
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                  }
               }
               §§pop().§%k§(§§pop());
            }
            §§goto(addr0096);
         }
         §§push(§[9§);
         if(_loc2_)
         {
            return §§pop();
         }
         addr0096:
         return §[9§;
      }
      
      public function § X§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            visible = true;
            if(_loc1_)
            {
               §%k§("!");
            }
         }
      }
      
      public function §%k§(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         while(true)
         {
            if(_loc6_)
            {
               §`8§.text = param1;
               if(_loc5_)
               {
                  break;
               }
            }
            §`8§.x = -§`8§.width / 2;
            if(_loc6_)
            {
               §`8§.y = -§`8§.height / 2;
            }
            break;
         }
         var _loc2_:Number = Number(§`8§.width);
         var _loc3_:Number = Number(§`8§.height);
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  if(§§pop() <= _loc3_)
                  {
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        break;
                     }
                     break loop1;
                  }
               }
               §§push(_loc2_);
               if(!_loc5_)
               {
                  break;
               }
               break loop1;
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               graphics.clear();
               if(!_loc5_)
               {
                  graphics.beginFill(§@!T§);
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            graphics.drawRoundRect(-_loc4_ / 2,§`8§.y,_loc4_,§`8§.height,§`8§.height);
            break;
         }
      }
   }
}

