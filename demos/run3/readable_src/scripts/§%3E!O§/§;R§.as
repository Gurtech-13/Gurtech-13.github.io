package §>!O§
{
   import §4!6§.§'P§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import nme3D.shader.PositionUVDepthVertex;
   
   public class §;R§ implements §0S§
   {
      
      public var mask:int;
      
      public var §+A§:Boolean;
      
      public function §;R§(param1:Boolean)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               §+A§ = param1;
               if(_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(§§findproperty(mask));
               if(!_loc2_)
               {
                  if(!param1)
                  {
                     §§push(8);
                     break;
                  }
               }
               §§push(4);
               if(_loc2_)
               {
               }
               break;
            }
            §§pop().mask = §§pop();
            break;
         }
      }
      
      public function § P§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1);
         if(_loc5_)
         {
            return §§pop() * param3;
         }
      }
      
      public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = NaN;
         loop0:
         while(true)
         {
            while(true)
            {
               if(§+A§)
               {
                  if(_loc5_)
                  {
                     §§push(§§findproperty(§ P§));
                     §§push(param1.§0!7§);
                     §§push(param2.§;c§());
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc4_ = Number(§§pop().§ P§(§§pop(),§§pop(),param3.x));
                  }
                  §§push(_loc4_);
                  §§push(param1.§;c§());
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(!_loc6_)
                           {
                              param1.§"!§(_loc4_);
                              break loop0;
                           }
                           break;
                        }
                        break loop0;
                     }
                  }
                  else
                  {
                     addr00d3:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(§§findproperty(§ P§));
                  §§push(param1.§0!]§);
                  §§push(param2.§5`§());
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  while(true)
                  {
                     §§push(§§pop().§ P§(§§pop(),§§pop(),param3.y));
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     §§push(Number(§§pop()));
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr00c7:
                     §§push(param1.§5`§());
                     if(!_loc6_)
                     {
                        §§goto(addr00d3);
                     }
                  }
                  _loc4_ = §§pop();
                  §§goto(addr00c7);
               }
               if(§§pop() != §§pop())
               {
                  break;
               }
               break loop0;
            }
            param1.§&s§(_loc4_);
            break;
         }
      }
   }
}

