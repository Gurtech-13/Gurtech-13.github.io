package §+!1§
{
   import §`_§.§^s§;
   import com.player03.run3.level.§ !W§;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import nme3D.Context3DUtils;
   
   public class §'!b§
   {
      
      public static var init__:Boolean;
      
      public static var cache:§=!U§;
      
      public static var §;!]§:String = "assets/";
      
      public function §'!b§()
      {
      }
      
      public static function §?!3§(param1:String, param2:Boolean = true) : §[!9§
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = null as StringMap;
         var _loc3_:StringMap = §'!b§.cache;
         while(true)
         {
            if(!_loc6_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc3_.h[param1]);
                  break;
               }
            }
            §§push(_loc3_.getReserved(param1));
            break;
         }
         var _loc4_:§[!9§ = §§pop();
         if(_loc7_)
         {
            if(_loc4_ == null)
            {
               _loc4_ = new §[!9§(param1,param2);
               while(true)
               {
                  if(!_loc6_)
                  {
                     if(_loc4_.§9!`§ == null)
                     {
                        break;
                     }
                  }
                  _loc5_ = §'!b§.cache;
                  if(!_loc6_)
                  {
                     if(!(param1 in StringMap.§+!#§))
                     {
                        _loc5_.h[param1] = _loc4_;
                        break;
                     }
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  _loc5_.setReserved(param1,_loc4_);
                  if(_loc6_)
                  {
                  }
                  break;
               }
               return _loc4_;
            }
         }
         return _loc4_;
      }
      
      public static function §;! §(param1:int, param2:int) : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop1:
         while(true)
         {
            §§push(false);
            if(_loc5_)
            {
               if(!Context3DUtils.§;!B§)
               {
                  break;
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            §§pop();
            loop2:
            while(true)
            {
               if(_loc5_)
               {
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(param2);
                        if(!_loc4_)
                        {
                           §§push(§§pop() < §§pop());
                           if(_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           break loop1;
                        }
                        addr0086:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           §§push(param1);
                           if(!_loc4_)
                           {
                              addr008f:
                              §§push(§§pop() & §§pop());
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(0);
                           }
                           addr0099:
                           if(§§pop() == §§pop())
                           {
                              addr009d:
                              §§push(param1);
                              if(_loc5_)
                              {
                                 break;
                              }
                              addr00ba:
                              addr00ba:
                              addr00ba:
                              §§push(int(§§pop()));
                           }
                           else
                           {
                              §§push(1);
                              if(!_loc4_)
                              {
                                 §§goto(addr00ba);
                              }
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0060);
                  }
                  param1 = §§pop();
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc5_)
                        {
                           break loop2;
                        }
                        §§goto(addr009d);
                     }
                     addr00a4:
                     return §§pop();
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr0059);
            }
            addr007d:
            while(true)
            {
               §§push(param1);
               §§push(1);
               if(_loc5_)
               {
                  §§goto(addr0086);
               }
               §§goto(addr008f);
            }
            §§goto(addr0099);
         }
         while(true)
         {
            if(§§pop())
            {
               if(!_loc4_)
               {
                  addr0059:
                  §§push(param2);
                  if(!_loc5_)
                  {
                     continue loop7;
                  }
                  addr0060:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     if(_loc5_)
                     {
                        break loop3;
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00bb);
               }
            }
            §§goto(addr007d);
         }
         addr00bb:
         var _loc3_:* = §§pop();
         loop5:
         while(true)
         {
            if(!_loc4_)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     break loop5;
                  }
                  if(§§pop() < param1)
                  {
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() << 1);
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
            }
            return _loc3_;
         }
         return §§pop();
      }
   }
}

