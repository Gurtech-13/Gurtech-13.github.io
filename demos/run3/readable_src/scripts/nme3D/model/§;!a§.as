package nme3D.model
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import com.player03.layout.§ 7§;
   import flash.display3D.IndexBuffer3D;
   import flash.geom.Rectangle;
   import nme3D.Context3DUtils;
   
   public class §;!a§
   {
      
      public static var init__:Boolean;
      
      public static var §[! §:Vector.<§;!a§>;
      
      public var §7L§:int;
      
      public var indices:Vector.<uint>;
      
      public var §`n§:IndexBuffer3D;
      
      public var dirty:Boolean;
      
      public function §;!a§(param1:int)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            dirty = true;
         }
         var _loc2_:Vector.<uint> = new Vector.<uint>(param1,false);
         if(!_loc3_)
         {
            indices = _loc2_;
            while(true)
            {
               if(_loc4_)
               {
                  §`n§ = Context3DUtils.context3D.createIndexBuffer(param1);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §7L§ = Context3DUtils.§7L§;
               break;
            }
         }
      }
      
      public static function §-!b§(param1:int, param2:Boolean = false) : §;!a§
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = null as Vector.<§;!a§>;
         var _loc7_:* = null as §;!a§;
         var _loc8_:* = null as Vector.<§;!a§>;
         var _loc3_:* = int(16777215);
         var _loc4_:§;!a§ = null;
         if(!_loc10_)
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
            _loc5_ = §§pop();
         }
         _loc6_ = §;!a§.§[! §;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(!_loc10_)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc9_)
                        {
                           break loop5;
                        }
                        §§push(int(_loc6_.length));
                        if(!_loc9_)
                        {
                           break loop2;
                        }
                        if(§§pop() < §§pop())
                        {
                           _loc7_ = _loc6_[_loc5_];
                           if(_loc9_)
                           {
                              _loc5_++;
                              if(_loc9_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc10_)
                                       {
                                          §§push(_loc7_.§1R§());
                                          if(_loc9_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          if(§§pop() < param1)
                                          {
                                             break;
                                          }
                                          if(_loc10_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_.§1R§());
                                                if(!_loc10_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() < _loc3_);
                                                      if(_loc9_)
                                                      {
                                                         break loop6;
                                                      }
                                                      break loop7;
                                                   }
                                                }
                                                addr00f2:
                                                §§push(int(§§pop()));
                                                break;
                                             }
                                             addr00f3:
                                             _loc3_ = §§pop();
                                             break;
                                          }
                                          addr00d0:
                                          §§push(_loc7_.§1R§());
                                          if(!_loc10_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc10_)
                                             {
                                                §§goto(addr00f2);
                                             }
                                          }
                                          §§goto(addr00f3);
                                       }
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                    if(_loc9_)
                                    {
                                       §§goto(addr00d0);
                                    }
                                 }
                                 §§push(Boolean(§§pop()));
                                 break loop7;
                              }
                           }
                           _loc4_ = _loc7_;
                           continue;
                        }
                        if(!_loc9_)
                        {
                           break loop1;
                        }
                     }
                  }
                  §§push(false);
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        if(_loc4_ != null)
                        {
                           if(_loc9_)
                           {
                              §§pop();
                              if(!_loc9_)
                              {
                                 break loop1;
                              }
                              §§push(param2);
                              if(_loc10_)
                              {
                                 break;
                              }
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc10_)
                           {
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           §§push(param1);
                           if(_loc9_)
                           {
                              §§push(2);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * §§pop());
                                 break loop5;
                              }
                              break loop2;
                           }
                           break loop5;
                        }
                        if(_loc9_)
                        {
                           break loop1;
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr017f);
               }
               §§goto(addr017d);
            }
            §§goto(addr017f);
         }
         §§push(param1);
         if(!_loc10_)
         {
            §§push(_loc3_);
            if(!_loc10_)
            {
               §§push(§§pop() == §§pop());
               if(_loc10_)
               {
               }
               addr017f:
               if(§§pop())
               {
                  _loc6_ = §;!a§.§[! §;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§push(int(_loc6_.indexOf(_loc4_,0)));
                           if(_loc10_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                           if(!_loc9_)
                           {
                              break;
                           }
                           _loc5_ = §§pop();
                           if(_loc10_)
                           {
                              break loop3;
                           }
                        }
                        §§push(_loc5_);
                        break;
                     }
                     if(§§pop() != -1)
                     {
                        break;
                     }
                     §§goto(addr01de);
                  }
                  _loc8_ = _loc6_.splice(_loc5_,1);
                  addr01de:
                  return _loc4_;
               }
               return new §;!a§(param1);
            }
            break loop2;
         }
         addr017d:
         §§push(_loc3_);
         break loop2;
      }
      
      public function §<!5§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §`n§.uploadFromVector(indices,0,§1R§());
            if(_loc2_)
            {
               dirty = false;
            }
         }
      }
      
      public function §!V§(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = 0;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop() + param2);
               if(!_loc6_)
               {
                  break;
               }
            }
            §§push(int(§§pop()));
            break;
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            while(_loc3_ < _loc4_)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  _loc3_++;
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc5_ = §§pop();
               if(!_loc7_)
               {
                  indices[_loc5_] = 0;
               }
            }
            if(_loc6_)
            {
               dirty = true;
            }
         }
      }
      
      public function §%h§(param1:Vector.<uint>, param2:int, param3:int = 0) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = 0;
         §§push(0);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(int(param1.length));
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               while(_loc4_ < _loc5_)
               {
                  §§push(_loc4_);
                  if(_loc8_)
                  {
                     _loc4_++;
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc6_ = §§pop();
                  if(_loc8_)
                  {
                     §§push(indices);
                     §§push(param3);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc6_);
                     }
                     §§push(param1[_loc6_]);
                     if(!_loc7_)
                     {
                        §§push(uint(§§pop()));
                        if(!_loc7_)
                        {
                           §§push(uint(§§pop() + param2));
                        }
                     }
                     §§pop()[§§pop()] = §§pop();
                  }
               }
               if(!_loc8_)
               {
                  break;
               }
            }
            dirty = true;
            break;
         }
      }
      
      public function §>§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            §;!a§.§[! §.push(this);
         }
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§1R§());
         if(_loc4_)
         {
            §§push(int(§§pop()));
            if(!_loc5_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            while(_loc1_ < _loc2_)
            {
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc5_)
                  {
                     _loc1_++;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc3_ = §§pop();
               if(_loc4_)
               {
                  indices[_loc3_] = 0;
               }
            }
         }
      }
      
      public function §1R§() : int
      {
         return int(indices.length);
      }
      
      public function copyFrom(param1:§;!a§) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = 0;
         while(true)
         {
            if(_loc6_)
            {
               §§push(param1.§1R§());
               if(_loc7_)
               {
                  break;
               }
               §§push(int(§§pop()));
               §§push(§1R§());
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
               if(§§pop() >= §§pop())
               {
                  §§push(§1R§());
                  break;
               }
            }
            §§push(param1.§1R§());
            if(_loc6_)
            {
               §§goto(addr005a);
            }
            break;
         }
         addr005a:
         var _loc2_:int = §§pop();
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               while(_loc3_ < _loc4_)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        _loc3_++;
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc5_ = §§pop();
                  if(!_loc7_)
                  {
                     §§push(indices);
                     §§push(_loc5_);
                     §§push(param1.indices[_loc5_]);
                     if(!_loc7_)
                     {
                        §§push(uint(§§pop()));
                     }
                     §§pop()[§§pop()] = §§pop();
                  }
               }
               if(!_loc6_)
               {
                  break;
               }
            }
            dirty = true;
            break;
         }
      }
   }
}

