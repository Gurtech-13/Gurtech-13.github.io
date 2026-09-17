package §@]§
{
   import §>!O§.§^`§;
   import §>T§.§"=§;
   import §>T§.§[C§;
   import com.player03.layout.§2u§;
   import haxeutils.math.geom.Point3D;
   
   public class §+X§ extends §^`§
   {
      
      public var §1y§:Number;
      
      public var §]b§:§2u§;
      
      public function §+X§(param1:Number, param2:§2u§)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(this);
                     if(_loc3_)
                     {
                        §§push(true);
                        if(_loc3_)
                        {
                           if(param2 == §2u§.LEFT)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§pop();
                     }
                     §§push(param2 == §2u§.RIGHT);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  §§pop().super(§§pop());
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(Boolean(§§pop()));
               break loop2;
            }
            §1y§ = param1;
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr0082);
         }
         §]b§ = param2;
         addr0082:
      }
      
      override public function §!!^§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:§2u§ = §]b§;
         loop0:
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
                     if(_loc7_)
                     {
                        if(_loc5_ == §2u§.LEFT)
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           break loop1;
                        }
                     }
                     §§pop();
                     if(!_loc7_)
                     {
                        break loop0;
                     }
                  }
                  §§push(_loc5_ == §2u§.TOP);
                  if(_loc7_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  break loop0;
               }
               while(true)
               {
                  while(true)
                  {
                     §§push(param1);
                     §§push(param2);
                     if(!_loc6_)
                     {
                        §§goto(addr00a7);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00c0);
            }
            §§push(Boolean(§§pop()));
            break loop4;
         }
         loop2:
         while(true)
         {
            §§push(param1);
            §§push(§1y§);
            if(_loc7_)
            {
               while(true)
               {
                  §§push(param4);
                  if(_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop() - §§pop());
                        §§push(param3);
                        if(!_loc6_)
                        {
                           return §§pop() - §§pop();
                        }
                     }
                     else
                     {
                        addr00a7:
                        §§push(§§pop() + §§pop());
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        §§push(§1y§);
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     addr00bd:
                     §§push(param4);
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
            }
            addr00c0:
            §§push(§§pop() + §§pop());
            break;
         }
         addr00c2:
         return §§pop();
      }
   }
}

