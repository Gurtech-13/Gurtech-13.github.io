package nme3D.model
{
   public class §%d§
   {
      
      public var r:Number;
      
      public var g:Number;
      
      public var b:Number;
      
      public function §%d§(param1:int)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            while(true)
            {
               §§push(§§findproperty(r));
               §§push(param1);
               if(_loc2_)
               {
                  §§push(16);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(_loc2_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               §§push(255);
               break;
            }
            §§pop().r = §§pop() / §§pop();
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§findproperty(g));
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(8);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop() >> §§pop());
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                     }
                     §§push(int(§§pop()));
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     addr0085:
                     §§goto(addr0088);
                  }
                  §§goto(addr0085);
               }
               §§push(255);
               if(_loc2_)
               {
                  break loop2;
               }
               addr0088:
               §§pop().g = §§pop() / §§pop();
               if(_loc2_)
               {
                  while(true)
                  {
                     §§push(§§findproperty(b));
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(255);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop() & §§pop());
                     }
                     §§push(255);
                     break;
                  }
                  §§pop().b = §§pop() / §§pop();
               }
               §§push(255);
            }
         }
      }
   }
}

