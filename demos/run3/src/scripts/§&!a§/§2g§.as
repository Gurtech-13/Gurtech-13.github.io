package §&!a§
{
   import §3!b§.Cutscenes;
   import §3!b§.FourthCondiment;
   import flash.geom.Rectangle;
   
   public final class §2g§
   {
      
      public function §2g§()
      {
      }
      
      public static function §6!W§(param1:Number) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(int(Math.round(param1 / 1.5707963267948966)));
            if(_loc4_)
            {
               §§push(int(§§pop() % 4));
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(_loc3_);
                  §§push(-2);
                  if(!_loc5_)
                  {
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 break loop3;
                              }
                              §§push(2);
                              if(_loc4_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    addr006e:
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                       return §§pop();
                                    }
                                    break loop2;
                                 }
                                 §§push(_loc3_);
                                 §§push(-1);
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                              }
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                           }
                           §§push(_loc3_);
                           §§push(3);
                           if(_loc4_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                              addr00af:
                              §§push(_loc3_);
                              §§push(-3);
                              if(_loc5_)
                              {
                                 break loop1;
                              }
                           }
                           addr00b7:
                           if(§§pop() != §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 §§push(1);
                                 break loop1;
                              }
                           }
                           §§goto(addr00c9);
                        }
                        §§push(3);
                        if(!_loc5_)
                        {
                           return §§pop();
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00d2);
            }
            return §§pop();
         }
         if(§§pop() == §§pop())
         {
            addr00c9:
            §§push(1);
            break loop2;
         }
         addr00d2:
         return 0;
      }
      
      public static function §`K§(param1:int, param2:Rectangle, param3:Rectangle = undefined) : Rectangle
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(param3 == null)
         {
            param3 = new Rectangle();
         }
         var _loc4_:Number = Number(param2.right);
         var _loc5_:Number = Number(param2.top);
         var _loc6_:Number = Number(param2.left);
         var _loc7_:Number = Number(param2.bottom);
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(_loc9_)
                  {
                     switch(param1)
                     {
                        case 0:
                           param3.right = _loc4_;
                           if(!_loc9_)
                           {
                              break loop0;
                           }
                           param3.top = _loc5_;
                           break;
                        case 1:
                           param3.right = _loc5_;
                           param3.top = _loc6_;
                           if(!_loc8_)
                           {
                              param3.left = _loc7_;
                              if(_loc9_)
                              {
                                 param3.bottom = _loc4_;
                                 break loop1;
                              }
                              break loop0;
                           }
                           break loop1;
                        case 2:
                           param3.right = _loc6_;
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                           break loop0;
                        case 3:
                           param3.right = _loc7_;
                           param3.top = _loc4_;
                           param3.left = _loc5_;
                           param3.bottom = _loc6_;
                           break loop1;
                        default:
                           break loop1;
                     }
                  }
                  param3.left = _loc6_;
                  param3.bottom = _loc7_;
                  if(!_loc8_)
                  {
                     break loop1;
                  }
                  break;
               }
               param3.top = _loc7_;
               param3.left = _loc4_;
               if(!_loc8_)
               {
                  break loop0;
               }
               break;
            }
            return param3;
         }
         param3.bottom = _loc5_;
         break loop1;
      }
   }
}

