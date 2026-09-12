package §@H§
{
   import §`!7§.§"!>§;
   
   public class §7i§
   {
      
      public var §^!,§:int;
      
      public var § c§:int;
      
      public var §8!J§:int;
      
      public var § H§:int;
      
      public var data:String;
      
      public var §9!F§:int;
      
      public function §7i§(param1:String)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               data = param1;
               § H§ = param1.length;
               if(_loc2_)
               {
                  break;
               }
               § c§ = -1;
               §^!,§ = -1;
               if(!_loc3_)
               {
                  break;
               }
            }
            §8!J§ = 0;
            §9!F§ = 0;
            §<!#§();
            break;
         }
      }
      
      public function next() : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§^!,§);
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §<!#§();
         }
         return _loc1_;
      }
      
      public function hasNext() : Boolean
      {
         return § c§ < § H§;
      }
      
      public function §<!#§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(§9!F§);
                  if(_loc1_)
                  {
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc2_)
                              {
                                 §§push(§§findproperty(§ c§));
                                 §§push(§ c§);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 §§pop().§ c§ = §§pop();
                              }
                              §§push(§ c§);
                              break;
                           }
                           §§push(§§findproperty(§9!F§));
                           §§push(§9!F§);
                           if(_loc2_)
                           {
                              §§push(§§pop() - 1);
                           }
                           §§pop().§9!F§ = §§pop();
                           if(!_loc1_)
                           {
                              §§push(§§findproperty(§^!,§));
                              §§push(§^!,§);
                              if(!_loc1_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop().§^!,§ = §§pop();
                           }
                           §§push(§8!J§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(1);
                           if(!_loc1_)
                           {
                              §§push(§§pop() << §9!F§);
                              if(!_loc1_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc1_)
                                 {
                                    break loop2;
                                 }
                                 §§push(§§pop() & §§pop());
                                 if(_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(0);
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           if(§§pop() != §§pop())
                           {
                              return;
                           }
                           continue loop1;
                        }
                        break loop1;
                     }
                     break;
                  }
                  if(§§pop() >= §§pop())
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     §9!F§ = 6;
                  }
                  §§push(§§findproperty(§8!J§));
                  §§push(§"!>§);
                  §§push(data);
                  if(!_loc1_)
                  {
                     §§push(§§pop().charAt(§ c§));
                  }
                  §§push(§§pop().decode(§§pop()));
                  if(!_loc1_)
                  {
                     §§push(int(§§pop()));
                  }
                  §§pop().§8!J§ = §§pop();
                  continue loop0;
               }
               §§goto(addr00d0);
               §§push(§ H§);
            }
         }
      }
   }
}

