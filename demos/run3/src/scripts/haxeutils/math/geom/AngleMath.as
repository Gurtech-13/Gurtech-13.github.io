package haxeutils.math.geom
{
   import com.player03.run3.Main;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import haxe.Log;
   import haxeutils.sound.§5! §;
   
   public class AngleMath
   {
      
      public function AngleMath()
      {
      }
      
      public static function §-!M§(param1:Number, param2:Number) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         while(true)
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(§§pop() - param1);
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(Number(§§pop()));
            break;
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
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc3_ >= 0)
                           {
                              if(!_loc5_)
                              {
                                 break loop1;
                              }
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(-§§pop());
                           }
                           §§push(3.141592653589793);
                           if(_loc5_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 break loop1;
                              }
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 break loop4;
                              }
                              §§push(6.283185307179586);
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                           }
                           §§push(§§pop() % §§pop());
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           _loc3_ = Number(§§pop());
                           if(_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§push(_loc3_);
                        §§push(-3.141592653589793);
                        if(!_loc5_)
                        {
                           break loop3;
                        }
                        if(§§pop() <= §§pop())
                        {
                           §§push(_loc3_);
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(3.141592653589793);
                           if(_loc5_)
                           {
                              break loop3;
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr00ee);
                     }
                     §§push(6.283185307179586);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc4_)
                        {
                           _loc3_ = Number(§§pop());
                           break loop1;
                        }
                     }
                     else
                     {
                        §§goto(addr00e7);
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr00f8);
               }
               if(§§pop() > §§pop())
               {
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        addr00e7:
                        §§push(§§pop() - 6.283185307179586);
                        if(_loc4_)
                        {
                           break loop4;
                        }
                     }
                     addr00ee:
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        break;
                     }
                     break loop4;
                  }
               }
               break loop1;
            }
            _loc3_ = §§pop();
            break;
         }
         addr00f8:
         return _loc3_;
      }
      
      public static function positiveAngleBetween(param1:Number, param2:Number) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param2);
         if(!_loc5_)
         {
            §§push(§§pop() - param1);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        §§push(0);
                        if(_loc4_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(_loc3_);
                              §§push(6.283185307179586);
                              if(_loc4_)
                              {
                                 break;
                              }
                              addr00d9:
                              §§push(§§pop() % §§pop());
                              if(_loc4_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc3_ = §§pop();
                              break loop2;
                           }
                           if(_loc5_)
                           {
                              break loop2;
                           }
                           §§push(_loc3_);
                           §§push(6.283185307179586);
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           _loc3_ = §§pop() % §§pop();
                           §§push(_loc3_);
                           §§push(0);
                        }
                        if(§§pop() > §§pop())
                        {
                           if(!_loc5_)
                           {
                              Log.trace("Modulo operation on a negative value unexpectedly produced a positive one.",{
                                 "fileName":"AngleMath.hx",
                                 "lineNumber":38,
                                 "className":"haxeutils.math.geom.AngleMath",
                                 "methodName":"positiveAngleBetween"
                              });
                              if(_loc4_)
                              {
                              }
                           }
                           break loop2;
                        }
                        §§push(_loc3_);
                        §§push(6.283185307179586);
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        break;
                     }
                     if(§§pop() < §§pop())
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     §§goto(addr00d9);
                     §§push(_loc3_);
                     §§push(6.283185307179586);
                  }
               }
               §§push(§§pop() + §§pop());
               if(!_loc5_)
               {
                  _loc3_ = Number(§§pop());
                  if(_loc4_)
                  {
                  }
                  break loop2;
               }
               break;
            }
            break loop2;
         }
         return §§pop();
      }
   }
}

