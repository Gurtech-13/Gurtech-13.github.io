package §[!P§
{
   import §4n§.§3!G§;
   import §>!O§.§;R§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   
   public class §;0§ extends §;R§
   {
      
      public function §;0§(param1:Boolean)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(param1);
         }
      }
      
      override public function apply(param1:§ 7§, param2:§ 7§, param3:§38§) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = NaN;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               while(true)
               {
                  if(§+A§)
                  {
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                     §§push(param1.§5`§());
                     §§push(param1.§0!]§);
                     if(!_loc6_)
                     {
                        _loc4_ = §§pop() / §§pop();
                        if(_loc5_)
                        {
                           §§push(param1);
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              §§push(§§pop() * param1.§0!7§);
                           }
                           §§pop().§"!§(§§pop());
                           if(_loc5_)
                           {
                              break loop0;
                           }
                           break;
                        }
                        break loop0;
                     }
                     addr0098:
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(param1.§;c§());
                     if(_loc5_)
                     {
                        §§goto(addr0098);
                        §§push(Number(§§pop()));
                        §§push(param1.§0!7§);
                     }
                  }
                  _loc4_ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §§push(param1);
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() * param1.§0!]§);
            }
            §§pop().§&s§(§§pop());
            break;
         }
      }
   }
}

