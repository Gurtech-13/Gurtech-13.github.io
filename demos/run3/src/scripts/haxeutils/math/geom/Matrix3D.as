package haxeutils.math.geom
{
   import flash.geom.Vector3D;
   
   public class Matrix3D
   {
      
      public static var init__:Boolean;
      
      public static var §;m§:Matrix3D;
      
      public var rawData:Vector.<Number>;
      
      public function Matrix3D(param1:Vector.<Number> = undefined)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     if(param1 == null)
                     {
                        break loop0;
                     }
                     if(_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(int(param1.length) == 16);
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop0;
               }
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  rawData = param1;
                  if(_loc2_)
                  {
                  }
               }
               break loop1;
            }
            rawData = Vector.<Number>([1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1]);
            break loop1;
         }
      }
      
      public static function §-!1§(param1:Vector.<Number>, param2:Vector.<Number>, param3:Vector.<Number>) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 996
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function transformVector3Into4(param1:Point3D, param2:Vector3D = undefined) : Vector3D
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(_loc7_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = new Vector3D();
            break;
         }
         var _loc3_:Number = Number(param1.x);
         var _loc4_:Number = Number(param1.y);
         §§push(param1.z);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            param2.x = _loc3_ * rawData[0] + _loc4_ * rawData[4] + _loc5_ * rawData[8] + rawData[12];
            while(true)
            {
               if(!_loc6_)
               {
                  param2.y = _loc3_ * rawData[1] + _loc4_ * rawData[5] + _loc5_ * rawData[9] + rawData[13];
                  if(!_loc7_)
                  {
                     break;
                  }
                  param2.z = _loc3_ * rawData[2] + _loc4_ * rawData[6] + _loc5_ * rawData[10] + rawData[14];
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               param2.w = _loc3_ * rawData[3] + _loc4_ * rawData[7] + _loc5_ * rawData[11] + rawData[15];
               break;
            }
         }
         return param2;
      }
      
      public function transformVector3(param1:Point3D, param2:Point3D = undefined) : Point3D
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc6_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = new Point3D(0,0,0);
            break;
         }
         var _loc3_:Number = Number(param1.x);
         var _loc4_:Number = Number(param1.y);
         §§push(param1.z);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               §§push(param2);
               §§push(_loc3_ * rawData[0]);
               if(_loc7_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(rawData[4]);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        §§push(rawData[8]);
                        if(_loc7_)
                        {
                           break;
                        }
                        addr0089:
                        §§push(§§pop() * §§pop());
                     }
                  }
                  §§goto(addr0089);
                  §§push(§§pop() + §§pop());
               }
               §§push(Number(§§pop()) + rawData[12]);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().x = §§pop();
               if(!_loc7_)
               {
                  break;
               }
            }
            §§push(param2);
            §§push(_loc3_);
            if(_loc7_)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(rawData[1]);
                        if(_loc7_)
                        {
                           §§push(§§pop() * Number(§§pop()));
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(rawData[5]);
                           if(!_loc7_)
                           {
                              break loop4;
                           }
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              break loop3;
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc6_)
                        {
                           §§push(_loc5_);
                           §§push(rawData[9]);
                           if(_loc7_)
                           {
                              break loop3;
                           }
                           break loop4;
                        }
                        §§goto(addr0104);
                     }
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr0104:
                     §§push(Number(§§pop()));
                  }
                  §§push(rawData[13]);
                  break loop5;
               }
               §§push(Number(§§pop()));
               break loop4;
            }
            §§pop().y = §§pop();
            if(!_loc6_)
            {
               §§push(param2);
               §§push(_loc3_ * rawData[2]);
               if(!_loc6_)
               {
                  loop6:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        §§push(rawData[6]);
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              §§push(rawData[10]);
                              if(!_loc6_)
                              {
                                 break loop6;
                              }
                              addr016b:
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 §§push(rawData[14]);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                     }
                  }
                  §§goto(addr016b);
               }
               §§pop().z = §§pop();
            }
            break;
         }
         return param2;
      }
      
      public function §'!§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  rawData[0] = 1;
                  rawData[1] = 0;
                  rawData[2] = 0;
                  rawData[3] = 0;
                  if(!_loc11_)
                  {
                     break;
                  }
                  rawData[4] = 0;
                  rawData[5] = 1;
                  if(!_loc11_)
                  {
                     break loop0;
                  }
               }
               rawData[6] = 0;
               rawData[7] = 0;
               if(!_loc11_)
               {
                  break loop0;
               }
               rawData[8] = 0;
               rawData[9] = 0;
               if(!_loc10_)
               {
                  rawData[10] = 1;
                  break;
               }
               rawData[12] = 0;
               if(_loc11_)
               {
                  break loop0;
               }
               §§goto(addr00d7);
            }
            rawData[11] = 0;
            §§goto(addr00a1);
         }
         rawData[13] = 0;
         if(_loc11_)
         {
            rawData[14] = 0;
         }
         rawData[15] = 1;
         addr00d7:
         §§push(1);
         §§push(param2);
         if(!_loc10_)
         {
            §§push(§§pop() - param1);
         }
         §§push(§§pop() / §§pop());
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(1);
         §§push(param4);
         if(_loc11_)
         {
            §§push(§§pop() - param3);
         }
         §§push(§§pop() / §§pop());
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(1);
         §§push(param6);
         if(_loc11_)
         {
            §§push(§§pop() - param5);
         }
         §§push(§§pop() / §§pop());
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc11_)
         {
            rawData[0] = 2 * _loc7_;
            rawData[5] = 2 * _loc8_;
            if(_loc11_)
            {
               rawData[10] = -2 * _loc9_;
               §§push(rawData);
               §§push(12);
               §§push(param1);
               if(_loc11_)
               {
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc11_)
                              {
                                 break;
                              }
                           }
                           §§push(-§§pop());
                           if(_loc11_)
                           {
                              break;
                           }
                           break loop2;
                        }
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§pop()[§§pop()] = §§pop();
               §§push(rawData);
               §§push(13);
               §§push(param3);
               if(_loc11_)
               {
                  while(true)
                  {
                     §§push(param4);
                     if(_loc11_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc10_)
                           {
                              §§push(-§§pop());
                              if(_loc10_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(_loc8_);
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§pop()[§§pop()] = §§pop();
               loop5:
               while(true)
               {
                  while(true)
                  {
                     §§push(rawData);
                     §§push(14);
                     §§push(param5);
                     if(!_loc10_)
                     {
                        §§push(param6);
                        if(_loc10_)
                        {
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc10_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc11_)
                           {
                              break loop5;
                           }
                        }
                        §§push(-§§pop());
                        if(!_loc11_)
                        {
                           break loop5;
                        }
                     }
                     §§push(_loc9_);
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  break;
               }
               §§pop()[§§pop()] = §§pop();
            }
         }
      }
      
      public function §#0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _temp_1:* = false;
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = _temp_1;
         rawData[0] = 1;
         rawData[1] = 0;
         while(true)
         {
            if(!_loc12_)
            {
               rawData[2] = 0;
               rawData[3] = 0;
               if(!_loc11_)
               {
                  break;
               }
            }
            rawData[4] = 0;
            break;
         }
         rawData[5] = 1;
         rawData[6] = 0;
         if(_loc11_)
         {
            rawData[7] = 0;
            rawData[8] = 0;
            rawData[9] = 0;
            rawData[10] = 1;
            rawData[11] = 0;
            rawData[12] = 0;
            rawData[13] = 0;
            rawData[14] = 0;
         }
         rawData[15] = 1;
         while(true)
         {
            §§push(param4);
            if(_loc11_)
            {
               §§push(-§§pop());
               if(_loc11_)
               {
                  §§push(§§pop() * 0.017453292519943295);
                  if(_loc12_)
                  {
                     break;
                  }
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc5_:* = §§pop();
         §§push(Number(Math.cos(_loc5_)));
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(Number(Math.sin(_loc5_)));
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(1);
         if(_loc11_)
         {
            §§push(§§pop() - _loc6_);
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc11_)
            {
               while(true)
               {
                  §§push(rawData);
                  §§push(0);
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     §§push(param1);
                     if(_loc11_)
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc12_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(_loc8_);
                           }
                           §§push(§§pop() * §§pop());
                           break;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc12_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop()[§§pop()] = §§pop();
               if(!_loc12_)
               {
                  §§push(rawData);
                  §§push(5);
                  §§push(_loc6_);
                  if(_loc11_)
                  {
                     §§push(param2);
                     if(_loc11_)
                     {
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc12_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc11_)
                              {
                                 break;
                              }
                              §§push(_loc8_);
                           }
                           §§push(§§pop() * §§pop());
                           break;
                        }
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc11_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§pop()[§§pop()] = §§pop();
                  if(_loc12_)
                  {
                     break;
                  }
               }
            }
            §§push(rawData);
            §§push(10);
            §§push(_loc6_);
            if(!_loc12_)
            {
               §§push(param3);
               if(_loc11_)
               {
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc12_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc12_)
                        {
                           break;
                        }
                        §§push(_loc8_);
                     }
                     §§push(§§pop() * §§pop());
                     break;
                  }
               }
               §§push(§§pop() + §§pop());
               if(_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop()[§§pop()] = §§pop();
            break;
         }
         loop7:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(_loc11_)
               {
                  §§push(param2);
                  if(_loc12_)
                  {
                     break;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc12_)
                  {
                     break loop7;
                  }
               }
               §§push(_loc8_);
               break;
            }
            §§push(§§pop() * §§pop());
            if(!_loc12_)
            {
               break;
            }
            §§goto(addr01dd);
         }
         addr01dd:
         var _loc9_:* = Number(§§pop());
         while(true)
         {
            §§push(param3);
            if(!_loc12_)
            {
               §§push(§§pop() * _loc7_);
               if(_loc12_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
         }
         var _loc10_:* = §§pop();
         §§push(rawData);
         §§push(4);
         §§push(_loc9_);
         if(!_loc12_)
         {
            §§push(§§pop() + _loc10_);
            if(_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop()[§§pop()] = §§pop();
         §§push(rawData);
         §§push(1);
         §§push(_loc9_);
         if(_loc11_)
         {
            §§push(§§pop() - _loc10_);
         }
         §§pop()[§§pop()] = §§pop();
         loop10:
         while(true)
         {
            loop11:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  §§push(param3);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc8_);
                     if(_loc12_)
                     {
                        break loop10;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(Number(§§pop()));
                     if(_loc12_)
                     {
                        break loop11;
                     }
                     _loc9_ = §§pop();
                     §§push(param2);
                     §§push(_loc7_);
                     if(_loc12_)
                     {
                        break loop10;
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc11_)
                  {
                     _loc10_ = Number(§§pop());
                     §§push(rawData);
                     §§push(8);
                     §§push(_loc9_);
                     if(_loc11_)
                     {
                        §§push(§§pop() - _loc10_);
                     }
                     §§pop()[§§pop()] = §§pop();
                     while(true)
                     {
                        §§push(rawData);
                        §§push(2);
                        §§push(_loc9_);
                        if(_loc11_)
                        {
                           §§push(§§pop() + _loc10_);
                           if(!_loc11_)
                           {
                              break;
                           }
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     §§pop()[§§pop()] = §§pop();
                     §§push(param2);
                     §§push(param3);
                     if(_loc11_)
                     {
                        break loop10;
                     }
                     §§goto(addr02a0);
                  }
                  §§goto(addr02ac);
               }
               §§goto(addr0297);
            }
            _loc10_ = Number(§§pop());
            if(_loc11_)
            {
               while(true)
               {
                  §§push(rawData);
                  §§push(9);
                  §§push(_loc9_);
                  if(!_loc12_)
                  {
                     §§push(§§pop() + _loc10_);
                     if(!_loc11_)
                     {
                        break;
                     }
                  }
                  §§push(Number(§§pop()));
                  break;
               }
               §§pop()[§§pop()] = §§pop();
               §§push(rawData);
               §§push(6);
               §§push(_loc9_);
               if(_loc11_)
               {
                  §§push(§§pop() - _loc10_);
               }
               §§pop()[§§pop()] = §§pop();
            }
            return;
         }
         while(true)
         {
            §§push(§§pop() * §§pop());
            if(_loc11_)
            {
               addr0297:
               §§push(_loc8_);
               if(!_loc11_)
               {
                  break;
               }
               _loc9_ = §§pop() * §§pop();
               §§push(param1);
               if(!_loc11_)
               {
                  break loop11;
               }
            }
            addr02ac:
            §§push(_loc7_);
            break;
         }
         §§push(§§pop() * §§pop());
         break loop11;
      }
      
      public function invert() : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1452
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §1! §() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(-1);
                                                §§push(rawData[0]);
                                                if(_loc2_)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * rawData[5]);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(rawData[4]);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                §§push(rawData[1]);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   break loop23;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop() * Number(§§pop()));
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   break loop22;
                                                                                                }
                                                                                                §§push(rawData[10]);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   break loop17;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   break loop19;
                                                                                                }
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(rawData[15]);
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         §§push(rawData[14]);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            break loop28;
                                                                                                         }
                                                                                                         §§push(rawData[11]);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop() * §§pop());
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break loop17;
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         §§push(rawData[0]);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(rawData[9]);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            break loop30;
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         §§push(rawData[8]);
                                                                                                      }
                                                                                                      §§push(§§pop() * rawData[1]);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         break;
                                                                                                      }
                                                                                                      break loop4;
                                                                                                   }
                                                                                                   §§push(rawData[6]);
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§push(rawData[15]);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            §§push(rawData[14]);
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§push(rawData[7]);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop() * §§pop());
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         break loop29;
                                                                                                      }
                                                                                                      break loop3;
                                                                                                   }
                                                                                                   break loop16;
                                                                                                }
                                                                                             }
                                                                                             §§push(Number(§§pop()) * rawData[13]);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(rawData[12]);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   §§push(rawData[1]);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop() * §§pop());
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(rawData[6]);
                                                                                                         break loop28;
                                                                                                      }
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   break loop25;
                                                                                                }
                                                                                                break loop26;
                                                                                             }
                                                                                             break loop27;
                                                                                          }
                                                                                          §§push(§§pop() * (§§pop() - §§pop() * rawData[7]));
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             break loop15;
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§push(Number(§§pop()) * rawData[11]);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(rawData[10]);
                                                                                          break loop29;
                                                                                       }
                                                                                       break loop4;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop22;
                                                                                 }
                                                                                 §§goto(addr01b0);
                                                                              }
                                                                              §§goto(addr02a0);
                                                                           }
                                                                           §§goto(addr029f);
                                                                        }
                                                                        §§goto(addr02a7);
                                                                     }
                                                                     addr01b0:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(rawData[8]);
                                                                     if(!_loc2_)
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop() * rawData[5]);
                                                                        if(!_loc2_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        §§push(rawData[2]);
                                                                        if(_loc1_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        §§push(§§pop() * rawData[15]);
                                                                        §§push(rawData[14]);
                                                                        continue loop20;
                                                                     }
                                                                     §§goto(addr023d);
                                                                  }
                                                                  §§push(rawData[4]);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc1_)
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     §§push(rawData[9]);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc1_)
                                                                        {
                                                                           break loop23;
                                                                        }
                                                                        §§goto(addr022d);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0213);
                                                                     }
                                                                  }
                                                                  §§goto(addr02a7);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               §§push(rawData[4]);
                                                               break loop17;
                                                            }
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(rawData[3]);
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() * Number(§§pop()));
                                                                     if(_loc1_)
                                                                     {
                                                                        break loop13;
                                                                     }
                                                                     §§push(§§pop() * (§§pop() - §§pop()));
                                                                     if(!_loc1_)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                     §§goto(addr0234);
                                                                  }
                                                                  §§goto(addr024c);
                                                               }
                                                               §§goto(addr0299);
                                                            }
                                                            §§goto(addr0275);
                                                         }
                                                         addr022d:
                                                         §§push(rawData[13]);
                                                         if(_loc1_)
                                                         {
                                                            break loop12;
                                                         }
                                                         addr0234:
                                                         addr023d:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(rawData[12]);
                                                         §§push(rawData[5]);
                                                         if(!_loc1_)
                                                         {
                                                            addr024c:
                                                            §§push(§§pop() * Number(§§pop()));
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            break loop11;
                                                         }
                                                         §§goto(addr0275);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      break loop7;
                                                   }
                                                   §§push(rawData[2]);
                                                   §§push(rawData[11]);
                                                   if(_loc2_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc2_)
                                                      {
                                                         break loop13;
                                                      }
                                                      addr0275:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(rawData[10]);
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc1_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(rawData[3]);
                                                   if(_loc1_)
                                                   {
                                                      break loop8;
                                                   }
                                                   addr0299:
                                                   §§push(§§pop() * Number(§§pop()));
                                                   if(!_loc2_)
                                                   {
                                                      break loop5;
                                                   }
                                                   addr029f:
                                                   addr02a0:
                                                   §§push(§§pop() * (§§pop() - §§pop()));
                                                   if(!_loc2_)
                                                   {
                                                      break loop0;
                                                   }
                                                   addr02a7:
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§push(rawData[8]);
                                                break loop7;
                                             }
                                             §§goto(addr02bf);
                                          }
                                          §§goto(addr0315);
                                       }
                                       §§goto(addr0325);
                                    }
                                    §§goto(addr02be);
                                 }
                                 §§goto(addr02dc);
                              }
                              §§goto(addr0323);
                           }
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              if(_loc2_)
                              {
                                 addr02be:
                                 addr02bf:
                                 §§push(§§pop() * rawData[13]);
                                 if(!_loc1_)
                                 {
                                    break loop0;
                                 }
                              }
                              §§goto(addr02e3);
                           }
                           §§goto(addr0306);
                        }
                        §§goto(addr02f7);
                     }
                     §§goto(addr02d6);
                  }
                  §§goto(addr02f0);
               }
               §§goto(addr030e);
            }
            §§goto(addr0323);
         }
         addr02d6:
         while(true)
         {
            addr030e:
            §§push(rawData[12]);
            §§push(rawData[9]);
            if(!_loc1_)
            {
               addr02dc:
               §§push(§§pop() * §§pop());
               if(!_loc1_)
               {
                  addr02e3:
                  §§push(§§pop() - §§pop());
                  §§push(rawData[2]);
                  if(!_loc1_)
                  {
                     addr02f0:
                     §§push(Number(§§pop()));
                     if(_loc1_)
                     {
                        break;
                     }
                     §§push(rawData[7]);
                     if(_loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§push(§§pop() * §§pop());
                  }
               }
               addr0306:
               §§push(rawData[6]);
            }
            §§push(Number(§§pop()));
            if(_loc2_)
            {
               addr0315:
               §§push(rawData[3]);
               if(_loc2_)
               {
                  break loop1;
               }
               addr0323:
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() - §§pop());
            break;
         }
         addr0325:
         §§push(§§pop() + §§pop() * §§pop());
         if(_loc2_)
         {
            §§push(Number(§§pop()));
         }
         return §§pop() * §§pop();
      }
      
      public function §1H§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:Vector.<Number> = rawData;
         if(!_loc5_)
         {
            §§push(_loc4_);
            §§push(12);
            §§push(_loc4_[12]);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§pop()[§§pop()] = §§pop();
         }
         _loc4_ = rawData;
         if(!_loc5_)
         {
            while(true)
            {
               §§push(_loc4_);
               §§push(13);
               §§push(_loc4_[13]);
               if(!_loc5_)
               {
                  §§push(§§pop() + param2);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop()[§§pop()] = §§pop();
         }
         _loc4_ = rawData;
         if(_loc6_)
         {
            while(true)
            {
               §§push(_loc4_);
               §§push(14);
               §§push(_loc4_[14]);
               if(_loc6_)
               {
                  §§push(§§pop() + param3);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop()[§§pop()] = §§pop();
         }
      }
      
      public function appendScale(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:Vector.<Number> = rawData;
         if(_loc6_)
         {
            §§push(_loc4_);
            §§push(0);
            §§push(_loc4_[0]);
            if(_loc6_)
            {
               §§push(§§pop() * param1);
            }
            §§pop()[§§pop()] = §§pop();
         }
         _loc4_ = rawData;
         if(!_loc5_)
         {
            §§push(_loc4_);
            §§push(5);
            §§push(_loc4_[5]);
            if(!_loc5_)
            {
               §§push(§§pop() * param2);
            }
            §§pop()[§§pop()] = §§pop();
         }
         _loc4_ = rawData;
         if(!_loc5_)
         {
            §§push(_loc4_);
            §§push(10);
            §§push(_loc4_[10]);
            if(!_loc5_)
            {
               §§push(§§pop() * param3);
            }
            §§pop()[§§pop()] = §§pop();
         }
      }
      
      public function §%V§(param1:Number, param2:Point3D, param3:Point3D = undefined) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc4_)
            {
               Matrix3D.§;m§.§#0§(param2.x,param2.y,param2.z,param1);
               if(!_loc5_)
               {
                  break;
               }
            }
            if(param3 != null)
            {
               if(!_loc4_)
               {
                  Matrix3D.§;m§.§1H§(param3.x,param3.y,param3.z);
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr0069);
               }
            }
            break;
         }
         Matrix3D.§-!1§(rawData,Matrix3D.§;m§.rawData,rawData);
         addr0069:
      }
   }
}

