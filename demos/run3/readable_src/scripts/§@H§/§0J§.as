package §@H§
{
   import flash.Boot;
   import flash.utils.ByteArray;
   
   public class §0J§
   {
      
      public var length:int;
      
      public var §>!>§:ByteArray;
      
      public function §0J§(param1:ByteArray = undefined, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(param1 != null)
         {
            §>!>§ = param1;
            §&9§(uint(param1.length * 8));
         }
         else if(param2 != null)
         {
            §>!>§ = new ByteArray();
            §>!>§.length = int(Math.ceil(param2 / 8));
            §&9§(param2);
            if(_loc3_)
            {
               §§goto(addr00a0);
            }
         }
         else
         {
            Boot.lastError = new Error();
            if(_loc4_)
            {
               addr00a0:
               throw new ArgumentError("ByteArraySequence requires either a byte array or a length.");
            }
         }
      }
      
      public function §&9§(param1:int) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            length = param1;
         }
         var _loc2_:uint = uint(int(Math.ceil(length / 8)));
         if(!_loc3_)
         {
            §§push(§>!>§.length == _loc2_);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  §>!>§.length = int(_loc2_);
               }
            }
         }
         return length;
      }
      
      public function §!q§(param1:Function) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            §>!>§.position = 0;
         }
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(int(§>!>§.length));
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc9_)
         {
            while(_loc3_ < _loc4_)
            {
               _loc5_ = _loc3_++;
               _loc2_ = int(uint(§>!>§.readUnsignedByte()));
               §§push(0);
               if(!_loc9_)
               {
                  _loc6_ = §§pop();
                  while(true)
                  {
                     §§push(_loc6_);
                     _loc2_ = §§pop() >> §§pop();
                  }
               }
               loop2:
               while(true)
               {
                  §§push(8);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop2;
                     }
                     §§push(_loc6_++);
                     if(!_loc8_)
                     {
                        break;
                     }
                     _loc7_ = §§pop();
                     while(true)
                     {
                        §§push(param1);
                        §§push(global);
                        §§push(_loc2_);
                        if(!_loc9_)
                        {
                           §§push(1);
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§push(1);
                        break;
                     }
                     §§pop()(§§pop() == §§pop());
                     §§push(_loc2_);
                     §§push(1);
                     if(_loc9_)
                     {
                        continue;
                     }
                     _loc2_ = §§pop() >> §§pop();
                     §§goto(addr00d4);
                  }
               }
            }
         }
      }
   }
}

