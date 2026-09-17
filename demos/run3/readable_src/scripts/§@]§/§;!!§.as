package §@]§
{
   import §%!Q§.§>K§;
   import §>!O§.§^`§;
   import com.player03.layout.§2u§;
   import com.player03.run3.save.§]k§;
   
   public class §;!!§ extends §^`§
   {
      
      public var §1y§:Number;
      
      public var §]b§:§2u§;
      
      public function §;!!§(param1:Number, param2:§2u§)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(this);
                  if(!_loc3_)
                  {
                     §§push(true);
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     if(param2 == §2u§.LEFT)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §§pop();
                  }
                  §§push(param2 == §2u§.RIGHT);
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  break;
               }
               §§pop().super(§§pop());
               while(true)
               {
                  if(_loc4_)
                  {
                     §1y§ = param1;
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §]b§ = param2;
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break loop1;
         }
      }
      
      override public function §!!^§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:§2u§ = §]b§;
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc6_)
                  {
                     §§push(true);
                     if(_loc6_)
                     {
                        break;
                     }
                     if(_loc5_ == §2u§.LEFT)
                     {
                        break loop1;
                     }
                     if(!_loc7_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc7_)
                     {
                        continue loop2;
                     }
                  }
                  §§push(_loc5_ == §2u§.TOP);
                  if(_loc7_)
                  {
                     break;
                  }
                  break loop1;
               }
               §§push(Boolean(§§pop()));
               break;
            }
            if(§§pop())
            {
               continue loop2;
            }
            §§goto(addr00a0);
            §§push(param1);
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               §§push(param1);
               §§push(§1y§);
               if(!_loc6_)
               {
                  §§push(param4);
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     break loop2;
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc7_)
               {
                  return §§pop();
               }
               addr00a0:
               §§push(param2);
               if(!_loc7_)
               {
                  break loop2;
               }
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(§1y§);
                     if(_loc7_)
                     {
                        §§push(param4);
                        break loop3;
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§push(param3);
                  break loop2;
               }
               §§goto(addr00d0);
            }
            §§push(§§pop() * §§pop());
            if(!_loc7_)
            {
               break;
            }
            §§goto(addr00cd);
         }
         addr00d0:
         return §§pop() - §§pop();
      }
   }
}

