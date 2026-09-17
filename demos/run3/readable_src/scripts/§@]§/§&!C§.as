package §@]§
{
   import §!!$§.§ 6§;
   import §%!Q§.§+#§;
   import §%!Z§.§&!S§;
   import §&%§.§@w§;
   import game.§>f§;
   import §>!O§.§^`§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Save;
   import com.player03.run3.save.§2!;§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §&!C§ extends §^`§
   {
      
      public var percent:Number;
      
      public var offset:Number;
      
      public function §&!C§(param1:Boolean, param2:Number, param3:Number)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               super(param1);
               if(_loc5_)
               {
                  break;
               }
               percent = param2;
               if(_loc5_)
               {
                  break;
               }
            }
            offset = param3;
            break;
         }
      }
      
      override public function §!!^§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(percent);
               if(!_loc5_)
               {
                  §§push(param2);
                  if(_loc5_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        §§push(offset);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(param4);
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc5_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc6_)
               {
                  §§push(param1);
                  break;
               }
               break loop0;
            }
            §§push(§§pop() + §§pop());
            if(!_loc5_)
            {
               return Number(§§pop());
            }
            break;
         }
         return §§pop();
      }
   }
}

