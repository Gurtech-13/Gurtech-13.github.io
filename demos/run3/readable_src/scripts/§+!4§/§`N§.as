package §+!4§
{
   public class §`N§ extends §5!§
   {
      
      public var §2!O§:Vector.<int>;
      
      public function §`N§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               §2!O§ = new Vector.<int>();
            }
         }
      }
      
      override public function §'x§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §?!7§ = false;
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<int> = §2!O§;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               §§push(_loc2_);
               §§push(_loc3_.length);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_[_loc2_]);
                        if(_loc6_)
                        {
                           §§push(int(§§pop()));
                           if(_loc6_)
                           {
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 _loc2_++;
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                                 §§push(true);
                                 if(_loc4_ >= 223)
                                 {
                                    break loop1;
                                 }
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    break loop0;
                                 }
                                 §§push(_loc4_);
                              }
                           }
                        }
                        §§push(§§pop() < 0);
                        break loop1;
                     }
                     §§goto(addr00d0);
                  }
                  §§push(false);
                  if(_loc5_)
                  {
                     §§goto(addr00c5);
                  }
                  §§goto(addr00c6);
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     break loop2;
                  }
               }
               else
               {
                  addr00c5:
                  addr00c6:
                  if(!Key.§,i§[_loc4_])
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
               }
               addr00d0:
               §?!7§ = true;
               break;
            }
         }
      }
   }
}

