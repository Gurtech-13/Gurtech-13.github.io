package §>!O§
{
   import §!!$§.§?y§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import flash.Boot;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §=!]§ implements §0S§
   {
      
      public var mask:int;
      
      public var §+A§:Boolean;
      
      public var §7a§:int;
      
      public function §=!]§(param1:int)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               mask = 256;
               if(!_loc3_)
               {
                  break;
               }
               §+A§ = false;
               if(_loc2_)
               {
                  break;
               }
            }
            §7a§ = param1;
            break;
         }
      }
      
      public function §^!§(param1:§38§) : int
      {
         return int(Math.round(§7a§ * (§+A§ ? param1.x : param1.y)));
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:* = null as TextField;
         var _loc6_:* = null as §?y§;
         var _loc4_:Class = TextField;
         if(_loc9_)
         {
            if(param1 is §?y§)
            {
               if(!_loc8_)
               {
                  _loc6_ = param1;
                  if(!_loc8_)
                  {
                     §§push(Std.§is§(_loc6_.§ v§,_loc4_));
                     if(!_loc8_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           _loc5_ = _loc6_.§ v§;
                        }
                        else
                        {
                           §§goto(addr009a);
                        }
                     }
                     else
                     {
                        Boot.lastError = new Error();
                        if(!_loc8_)
                        {
                           addr009a:
                           §§push(Std.string(_loc4_));
                           if(_loc9_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop() + " required!");
                           if(!_loc8_)
                           {
                              throw §§pop();
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§goto(addr00cd);
               }
            }
            else
            {
               Boot.lastError = new Error();
               if(!_loc8_)
               {
                  §§goto(addr00cd);
               }
            }
            var _loc7_:TextFormat = _loc5_.defaultTextFormat;
            if(!_loc8_)
            {
               _loc7_.size = §^!§(param3);
               if(!_loc8_)
               {
                  _loc5_.defaultTextFormat = _loc7_;
                  if(!_loc8_)
                  {
                     _loc5_.setTextFormat(new TextFormat(null,_loc7_.size));
                  }
               }
            }
            return;
         }
         addr00cd:
         §§push(Std.string(_loc4_));
         if(_loc9_)
         {
            §§push(§§pop());
         }
         §§push(§§pop() + " required!");
         if(!_loc8_)
         {
            throw §§pop();
         }
      }
   }
}

