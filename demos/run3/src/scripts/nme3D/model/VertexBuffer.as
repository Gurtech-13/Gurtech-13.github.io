package nme3D.model
{
   import §4!6§.§!!V§;
   import §4!6§.§'P§;
   import flash.Boot;
   import flash.display3D.Context3D;
   import flash.display3D.VertexBuffer3D;
   import flash.system.Capabilities;
   import haxe.Log;
   import nme3D.Context3DUtils;
   
   public class VertexBuffer
   {
      
      public static var init__:Boolean;
      
      public static var §[! §:Vector.<Vector.<Number>>;
      
      public static var §0T§:Vector.<String>;
      
      public static var version:int = -1;
      
      public static var §3U§:Boolean = false;
      
      public var vertices:§!!V§;
      
      public var §<G§:VertexBuffer3D;
      
      public var §7L§:int;
      
      public var dirty:Boolean;
      
      public function VertexBuffer(param1:int, param2:Vector.<Number>, param3:Class)
      {
         var _temp_1:* = false;
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:* = null as EReg;
         var _loc7_:* = null as §!!V§;
         var _loc8_:* = null as Error;
         var _loc5_:§!!V§ = Type.createInstance(param3,[param1,param2]);
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
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           vertices = _loc5_;
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(VertexBuffer.version);
                           if(!_loc9_)
                           {
                              break loop4;
                           }
                           §§push(0);
                           if(!_loc9_)
                           {
                              break loop3;
                           }
                           if(§§pop() >= §§pop())
                           {
                              break loop1;
                           }
                           if(_loc10_)
                           {
                              break loop0;
                           }
                        }
                        _loc6_ = new EReg("^\\w+ (\\d+),","");
                        if(_loc9_)
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_.match(Capabilities.version));
                                    if(_loc9_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             break loop8;
                                          }
                                          §§push(VertexBuffer);
                                          §§push(Std);
                                          §§push(_loc6_.matched(1));
                                          if(_loc9_)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§pop().version = §§pop().parseInt(§§pop());
                                          if(!_loc9_)
                                          {
                                             break loop1;
                                          }
                                       }
                                       §§push(false);
                                       if(!_loc9_)
                                       {
                                          break loop7;
                                       }
                                    }
                                    if(VertexBuffer.version >= 0)
                                    {
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                       addr00f2:
                                       §§push(Boolean(§§pop()));
                                    }
                                    break loop7;
                                 }
                                 §§pop();
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 §§push(VertexBuffer.version < 12);
                                 if(!_loc9_)
                                 {
                                    break loop7;
                                 }
                                 §§goto(addr00f2);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 break loop8;
                              }
                           }
                           break loop1;
                        }
                        break loop8;
                     }
                     §§goto(addr015f);
                  }
                  §§goto(addr010b);
               }
               if(§§pop() >= §§pop())
               {
                  while(true)
                  {
                     if(_loc9_)
                     {
                        break loop0;
                     }
                     §§goto(addr015f);
                  }
                  §§goto(addr01d0);
               }
               §§goto(addr0151);
            }
            addr010b:
            §§push(VertexBuffer.version);
            §§push(12);
            break loop3;
         }
         _loc7_ = vertices;
         if(_loc9_)
         {
            §<G§ = Context3DUtils.context3D.createVertexBuffer(int(int(_loc7_.§@!Y§.length) / _loc7_.§5G§),vertices.§5G§,"dynamicDraw");
         }
         addr0151:
         if(§<G§ == null)
         {
            try
            {
               addr015f:
               _loc7_ = vertices;
               if(!_loc10_)
               {
                  §<G§ = Context3DUtils.context3D.createVertexBuffer(int(int(_loc7_.§@!Y§.length) / _loc7_.§5G§),vertices.§5G§);
               }
            }
            catch(_loc_e_:Error)
            {
               _loc8_ = _loc_e_;
               while(true)
               {
                  if(!_loc10_)
                  {
                     if(_loc8_.errorID == 3694)
                     {
                        break;
                     }
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  Boot.lastError = new Error();
                  if(!_loc10_)
                  {
                     throw _loc8_;
                  }
                  break;
               }
            }
         }
         addr01d0:
         §7L§ = Context3DUtils.§7L§;
      }
      
      public static function getVertexBuffer(param1:int, param2:Class, param3:Object = undefined) : VertexBuffer
      {
         var _temp_1:* = false;
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = _temp_1;
         var _loc8_:* = 0;
         var _loc9_:* = null as Vector.<Vector.<Number>>;
         var _loc10_:* = null as Vector.<Number>;
         var _loc11_:* = null as Vector.<Vector.<Number>>;
         loop1:
         while(true)
         {
            if(_loc12_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(8);
               if(_loc12_)
               {
                  param3 = §§pop();
                  break loop1;
               }
               addr005f:
               §§push(int(§§pop()));
               break;
            }
            var _loc4_:* = §§pop();
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc13_)
                  {
                     §§push(_loc4_);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * 4);
                        if(!_loc12_)
                        {
                           break;
                        }
                     }
                     if(§§pop() <= 1048576)
                     {
                        break loop3;
                     }
                     if(!_loc12_)
                     {
                        break loop3;
                     }
                  }
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Log);
                           §§push("Warning: requesting buffer of length ");
                           §§push(_loc4_);
                           if(_loc12_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(§§pop());
                              §§push(" (");
                              if(!_loc12_)
                              {
                                 break loop6;
                              }
                              §§push(§§pop() + §§pop());
                              §§push(_loc4_);
                              if(!_loc13_)
                              {
                                 §§push(4);
                                 if(!_loc12_)
                                 {
                                    break loop5;
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                           }
                           §§push(1024);
                           break loop5;
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00da);
                  }
                  §§push(§§pop() + §§pop() / §§pop());
                  if(_loc12_)
                  {
                     addr00c8:
                     §§push(§§pop());
                  }
                  §§push("kb)");
                  if(!_loc13_)
                  {
                     break loop6;
                  }
                  addr00da:
                  §§pop().trace(§§pop(),{
                     (§§pop()):"VertexBuffer.hx",
                     "lineNumber":38,
                     "className":"nme3D.model.VertexBuffer",
                     "methodName":"getVertexBuffer"
                  });
                  break loop3;
               }
               var _loc5_:* = §§pop();
               var _loc6_:* = int(16777215);
               var _loc7_:Vector.<Number> = null;
               if(_loc12_)
               {
                  §§push(0);
                  if(_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc8_ = §§pop();
               }
               _loc9_ = VertexBuffer.§[! §;
               if(_loc12_)
               {
                  loop0:
                  while(_loc8_ < int(_loc9_.length))
                  {
                     _loc10_ = _loc9_[_loc8_];
                     loop8:
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           if(_loc12_)
                           {
                              _loc8_++;
                              if(!_loc12_)
                              {
                                 break loop8;
                              }
                              §§push(false);
                              if(_loc12_)
                              {
                                 if(int(_loc10_.length) < _loc4_)
                                 {
                                    break;
                                 }
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                              }
                              §§pop();
                              if(_loc13_)
                              {
                                 break loop8;
                              }
                           }
                           §§push(_loc10_.length);
                           if(!_loc13_)
                           {
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() < _loc6_);
                                    if(!_loc13_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    break loop9;
                                 }
                                 §§goto(addr01a7);
                              }
                              §§goto(addr01a8);
                           }
                           §§goto(addr019f);
                        }
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        if(_loc12_)
                        {
                           break;
                        }
                        §§goto(addr01aa);
                     }
                     addr01a8:
                     addr019f:
                     §§push(int(_loc10_.length));
                     if(_loc12_)
                     {
                        addr01a7:
                        §§push(int(§§pop()));
                     }
                     _loc6_ = §§pop();
                     addr01aa:
                     _loc7_ = _loc10_;
                  }
               }
               _loc10_ = null;
               loop11:
               while(true)
               {
                  if(_loc12_)
                  {
                     loop12:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(_loc12_)
                           {
                              if(_loc7_ == null)
                              {
                                 break;
                              }
                              if(_loc13_)
                              {
                                 break loop12;
                              }
                           }
                           §§pop();
                           if(!_loc13_)
                           {
                              §§push(_loc6_ <= _loc5_);
                              if(!_loc13_)
                              {
                                 break loop12;
                              }
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           break loop11;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop13;
                  }
                  _loc9_ = VertexBuffer.§[! §;
                  loop14:
                  while(true)
                  {
                     if(_loc12_)
                     {
                        while(true)
                        {
                           §§push(int(_loc9_.indexOf(_loc7_,0)));
                           if(!_loc13_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc13_)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 §§push(_loc8_);
                              }
                           }
                           if(§§pop() != -1)
                           {
                              break;
                           }
                           break loop14;
                        }
                     }
                     _loc11_ = _loc9_.splice(_loc8_,1);
                     break;
                  }
                  _loc10_ = _loc7_;
                  break;
               }
               return new VertexBuffer(param1,_loc10_,param2);
            }
            §§push(_loc4_);
            if(_loc12_)
            {
               §§push(int(§§pop() * param3));
            }
            break loop4;
         }
         §§push(param1);
         if(_loc12_)
         {
            §§push(§!!V§.§<j§);
            §§push(Type.§#G§(param2));
            if(_loc12_)
            {
               §§push(§§pop());
            }
            §§push(§§pop() * int(§§pop().get(§§pop())));
            if(!_loc12_)
            {
               continue loop3;
            }
         }
         §§goto(addr005f);
      }
      
      public function §<!5§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§!!V§ = vertices;
         while(true)
         {
            if(!_loc3_)
            {
               §<G§.uploadFromVector(vertices.§@!Y§,0,int(int(_loc1_.§@!Y§.length) / _loc1_.§5G§));
               if(!_loc2_)
               {
                  break;
               }
            }
            dirty = false;
            break;
         }
      }
      
      public function §1<§(param1:Context3D) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(vertices.§7!#§.length));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            while(_loc2_ < _loc3_)
            {
               §§push(_loc2_);
               if(!_loc5_)
               {
                  _loc2_++;
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc4_ = §§pop();
               if(!_loc5_)
               {
                  param1.setVertexBufferAt(_loc4_,null,0);
               }
            }
         }
      }
      
      public function §,!K§(param1:Vector.<Number>, param2:int = 0, param3:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = 0;
         while(true)
         {
            if(!_loc7_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            §§push(int(param1.length));
            if(!_loc7_)
            {
               param3 = §§pop();
               break;
            }
            §§goto(addr002f);
         }
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         addr002f:
         var _loc4_:* = §§pop();
         var _loc5_:int = param3;
         if(!_loc7_)
         {
            while(_loc4_ < _loc5_)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  _loc4_++;
                  if(_loc8_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc6_ = §§pop();
               if(_loc8_)
               {
                  §§push(vertices.§@!Y§);
                  §§push(param2);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + _loc6_);
                  }
                  §§push(param1[_loc6_]);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop()[§§pop()] = §§pop();
               }
            }
            if(_loc8_)
            {
               dirty = true;
            }
         }
      }
      
      public function §>§() : void
      {
         var _temp_1:* = false;
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc1_)
            {
               VertexBuffer.§[! §.push(vertices.§@!Y§);
               if(_loc2_)
               {
                  break;
               }
            }
            §<G§.dispose();
            break;
         }
      }
      
      public function copyFrom(param1:VertexBuffer) : void
      {
         var _temp_1:* = false;
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = 0;
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  §§push(param1.vertices.§@!Y§.length);
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  §§push(int(§§pop()));
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(§§pop() >= int(vertices.§@!Y§.length))
                  {
                     §§push(vertices.§@!Y§.length);
                     break loop1;
                  }
               }
               §§push(param1.vertices.§@!Y§.length);
               if(_loc7_)
               {
                  break loop1;
               }
               §§push(int(§§pop()));
               if(_loc7_)
               {
               }
               §§goto(addr005c);
            }
            var _loc2_:* = §§pop();
            §§push(0);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc2_);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               if(_loc6_)
               {
                  while(_loc3_ < _loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        _loc3_++;
                        if(_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        §§push(vertices.§@!Y§);
                        §§push(_loc5_);
                        §§push(param1.vertices.§@!Y§[_loc5_]);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§pop()[§§pop()] = §§pop();
                     }
                  }
                  if(_loc7_)
                  {
                     break;
                  }
               }
               dirty = true;
               break;
            }
            return;
         }
         §§push(int(§§pop()));
         if(!_loc7_)
         {
            addr005c:
            §§push(int(§§pop()));
         }
         break loop2;
      }
      
      public function §50§(param1:Context3D) : void
      {
         var _temp_1:* = false;
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = 0;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(int(vertices.§7!#§.length));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            loop0:
            while(_loc3_ < _loc4_)
            {
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     _loc3_++;
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                  }
                  _loc5_ = §§pop();
                  if(_loc6_)
                  {
                     param1.setVertexBufferAt(_loc5_,§<G§,_loc2_,VertexBuffer.§0T§[vertices.§7!#§[_loc5_].size]);
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                  }
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     §§push(§§pop() + vertices.§7!#§[_loc5_].size);
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc2_ = §§pop();
            }
         }
      }
   }
}

