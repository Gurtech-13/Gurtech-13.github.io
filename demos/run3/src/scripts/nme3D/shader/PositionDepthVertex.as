package nme3D.shader
{
   import §4!6§.§!!V§;
   import §4!6§.§'P§;
   import §4!6§.§=s§;
   import com.player03.run3.menu.§ L§;
   
   public class PositionDepthVertex extends §!!V§
   {
      
      public static var §2>§:Array;
      
      public function PositionDepthVertex(param1:Object = undefined, param2:Vector.<Number> = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     §§push(PositionDepthVertex.§2>§);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(§§pop() != null)
                     {
                        break loop1;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  PositionDepthVertex.§2>§ = [];
                  if(!_loc3_)
                  {
                     §§push(PositionDepthVertex.§2>§);
                     if(_loc4_)
                     {
                        §§pop().push(new §'P§("position",3));
                        if(!_loc3_)
                        {
                           §§push(PositionDepthVertex.§2>§);
                           break;
                        }
                        break loop0;
                     }
                     break;
                  }
                  break loop1;
               }
               §§pop().push(new §'P§("depth",3));
               if(_loc4_)
               {
                  break;
               }
               break loop0;
            }
            super(param1,param2,6,PositionDepthVertex.§2>§);
            break;
         }
      }
      
      public function toString() : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push("");
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §+R§.offset = offset;
         }
         var _loc2_:§=s§ = §+R§;
         loop0:
         while(true)
         {
            if(_loc4_)
            {
               §§push(_loc1_);
               if(!_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(Std);
                        §§push("position");
                        if(_loc4_)
                        {
                           §§push(":");
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                           }
                        }
                        loop4:
                        while(true)
                        {
                           §§push("[");
                           if(!_loc3_)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                 if(!_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_)
                                          {
                                             §§push(", ");
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop());
                                          §§push(_loc2_.§@!Y§);
                                          §§push(_loc2_.offset);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§push(§§pop()[§§pop()]);
                                          if(!_loc4_)
                                          {
                                             break loop5;
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc4_)
                                          {
                                             break loop5;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc4_)
                                          {
                                             §§push(§§pop());
                                             §§push(", ");
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             addr00f9:
                                             §§push(§§pop() + §§pop());
                                             break loop4;
                                          }
                                          §§goto(addr00f9);
                                          §§push("]");
                                       }
                                       §§push(§§pop() + §§pop());
                                       break loop2;
                                    }
                                    §§push(_loc2_.§@!Y§);
                                    §§push(_loc2_.offset);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + 2);
                                    }
                                    §§push(§§pop()[§§pop()]);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           §§goto(addr00f6);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                        }
                        break loop1;
                     }
                     §§goto(addr00d5);
                  }
                  §§push(§§pop().string(§§pop()));
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     _loc1_ = §§pop();
                     if(_loc4_)
                     {
                        §§push(_loc1_);
                        break;
                     }
                     break loop0;
                  }
                  §§push(§§pop());
               }
               while(true)
               {
                  §§push(§§pop() + ", ");
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               _loc1_ = §§pop();
               if(!_loc4_)
               {
                  break;
               }
            }
            §§push(§+R§);
            §§push(offset);
            if(_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§pop().offset = §§pop();
            break;
         }
         _loc2_ = §+R§;
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(Std);
               §§push("depth");
               if(!_loc3_)
               {
                  while(true)
                  {
                     §§push(§§pop() + ":");
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           §§push("[");
                           if(_loc4_)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                 if(!_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(", ");
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc2_.§@!Y§);
                                             §§push(_loc2_.offset);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             §§push(§§pop()[§§pop()]);
                                             if(!_loc4_)
                                             {
                                                break loop11;
                                             }
                                             §§push(Number(§§pop()));
                                             if(_loc3_)
                                             {
                                                break loop9;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc4_)
                                             {
                                                break loop10;
                                             }
                                             §§push(§§pop());
                                          }
                                          §§push(", ");
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          addr0226:
                                          §§push(§§pop() + §§pop());
                                          break loop10;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                          §§push(_loc2_.§@!Y§);
                                          §§push(_loc2_.offset);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + 2);
                                          }
                                          §§push(§§pop()[§§pop()]);
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          break loop9;
                                       }
                                       addr021a:
                                       §§push(§§pop());
                                       if(!_loc4_)
                                       {
                                          break loop10;
                                       }
                                       §§goto(addr0226);
                                       §§push("]");
                                    }
                                    §§push(Number(§§pop()));
                                    break loop9;
                                 }
                              }
                              §§goto(addr021a);
                           }
                           break loop10;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
               }
               §§push(§§pop().string(§§pop()));
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               §§push(§§pop() + §§pop());
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
            }
            _loc1_ = §§pop();
         }
         §§push("{");
         if(_loc4_)
         {
            while(true)
            {
               §§push(§§pop() + _loc1_);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§push(§§pop() + "}");
               if(_loc4_)
               {
                  break;
               }
            }
         }
         return §§pop();
      }
      
      public function §[N§(param1:§=s§) : §=s§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            while(_loc2_ < 3)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     _loc2_++;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc3_ = §§pop();
               if(!_loc5_)
               {
                  §§push(§@!Y§);
                  §§push(offset);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§push(param1.§@!Y§);
                  §§push(param1.offset);
                  if(_loc4_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop()[§§pop()] = §§pop();
               }
            }
         }
         return param1;
      }
      
      public function §,e§(param1:§=s§) : §=s§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            while(_loc2_ < 3)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     _loc2_++;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc3_ = §§pop();
               if(!_loc5_)
               {
                  §§push(§@!Y§);
                  §§push(offset);
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        §§push(3);
                        if(_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(_loc3_);
                        }
                        §§push(§§pop() + §§pop());
                        break;
                     }
                  }
                  §§push(param1.§@!Y§);
                  §§push(param1.offset);
                  if(_loc4_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop()[§§pop()] = §§pop();
               }
            }
         }
         return param1;
      }
      
      public function §8!2§() : §=s§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §+R§.offset = offset;
         }
         return §+R§;
      }
      
      public function §3!a§() : §=s§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(§+R§);
            §§push(offset);
            if(!_loc2_)
            {
               §§push(§§pop() + 3);
            }
            §§pop().offset = §§pop();
         }
         return §+R§;
      }
      
      override public function getAttribute3(param1:String) : §=s§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc2_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop().length != 5)
                           {
                              break;
                           }
                           §§push(param1);
                           if(!_loc2_)
                           {
                              break loop2;
                           }
                        }
                        §§push("depth");
                        if(!_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc3_)
                              {
                                 addr0051:
                                 §§push(§+R§);
                                 §§push(offset);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + 3);
                                 }
                                 §§pop().offset = §§pop();
                                 if(_loc2_)
                                 {
                                    return §+R§;
                                 }
                                 break loop1;
                              }
                              break loop0;
                           }
                           break;
                        }
                        §§goto(addr008a);
                     }
                     §§push(param1);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(§§pop().length == 8)
                     {
                        §§push(param1);
                        break;
                     }
                     §§goto(addr00a3);
                  }
                  addr008a:
                  if(§§pop() == "position")
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  addr00a3:
                  return null;
               }
               §§goto(addr0051);
            }
            §+R§.offset = offset;
            break;
         }
         return §+R§;
      }
   }
}

import §4!6§.§!!V§;
import haxe.§=!U§;
import haxe.ds.StringMap;

if(§!!V§.§<j§ == null)
{
   §!!V§.§<j§ = new StringMap();
}
§!!V§.§<j§;
if("nme3D.shader.PositionDepthVertex" in StringMap.§+!#§)
{
   _loc1_.setReserved("nme3D.shader.PositionDepthVertex",6);
}
else
{
   _loc1_.h["nme3D.shader.PositionDepthVertex"] = 6;
}

