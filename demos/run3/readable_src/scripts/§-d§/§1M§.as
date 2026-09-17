package §-d§
{
   import §%!Q§.§>K§;
   import §2!"§.Spritesheet;
   import §=b§.§,0§;
   import com.player03.run3.save.§]k§;
   import haxe.ds.IntMap;
   import haxe.ds.StringMap;
   
   public class §1M§
   {
      
      public var §]!Y§:Number;
      
      public var right:§!!-§;
      
      public var left:§!!-§;
      
      public var fps:Number;
      
      public var center:§!!-§;
      
      public function §1M§(param1:§!!-§, param2:§!!-§, param3:§!!-§ = undefined, param4:Object = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(param4 == null)
         {
            param4 = 30;
         }
         §§push(§§findproperty(§]!Y§));
         §§push(80);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         §§pop().§]!Y§ = §§pop();
         if(!_loc6_)
         {
            left = param1;
         }
         center = param2;
         while(true)
         {
            if(param3 == null)
            {
               if(!_loc5_)
               {
                  break;
               }
               param3 = param1.clone();
               if(_loc5_)
               {
                  §§push(param3);
                  §§push(param3.§@!X§);
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§#!3§(§§pop());
               }
            }
            right = param3;
            if(_loc5_)
            {
               break;
            }
            §§goto(addr00ab);
         }
         fps = param4;
         addr00ab:
      }
      
      public function §&9§(param1:int) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            left.length = param1;
            if(_loc2_)
            {
               center.length = param1;
               if(!_loc3_)
               {
                  right.length = param1;
               }
            }
         }
         return param1;
      }
      
      public function §-!P§(param1:Spritesheet, param2:int, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            param3 = 0;
            break;
         }
         var _loc4_:§!!-§ = center;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  if(param3 < -§]!Y§)
                  {
                     if(!_loc6_)
                     {
                        addr0068:
                        _loc4_ = left;
                        if(_loc5_)
                        {
                           break;
                        }
                        break loop1;
                     }
                  }
                  else if(param3 <= §]!Y§)
                  {
                     break;
                  }
                  _loc4_ = right;
                  break;
               }
               §§goto(addr0068);
            }
            _loc4_.§-!P§(param1,param2);
            break;
         }
      }
      
      public function clone() : §1M§
      {
         return new §1M§(left.clone(),center.clone(),right.clone(),fps);
      }
   }
}

