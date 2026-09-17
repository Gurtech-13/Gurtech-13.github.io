package nme3D.shader
{
   import §0!P§.§;n§;
   import §4!6§.§!!V§;
   import §4!6§.§'P§;
   import §4!6§.§=s§;
   import game.§8A§;
   import stage.StageActor;
   import com.player03.run3.level.Level;
   
   public class PositionUVDepthVertex extends §!!V§
   {
      
      public static var §2>§:Array;
      
      public function PositionUVDepthVertex(param1:Object = undefined, param2:Vector.<Number> = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(PositionUVDepthVertex.§2>§);
               if(_loc3_)
               {
                  if(§§pop() != null)
                  {
                     break;
                  }
                  PositionUVDepthVertex.§2>§ = [];
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(PositionUVDepthVertex.§2>§);
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  §§pop().push(new §'P§("position",3));
                  §§push(PositionUVDepthVertex.§2>§);
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               §§pop().push(new §'P§("uv",2));
               §§push(PositionUVDepthVertex.§2>§);
               break loop0;
            }
            super(param1,param2,8,PositionUVDepthVertex.§2>§);
            return;
         }
         §§pop().push(new §'P§("depth",3));
         break loop1;
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
            while(true)
            {
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(Std);
                     §§push("position");
                     if(_loc4_)
                     {
                        §§push(§§pop() + ":");
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       §§push("[");
                                       if(!_loc3_)
                                       {
                                          §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc4_)
                                          {
                                             break loop19;
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(", ");
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop());
                                                      §§push(_loc2_.§@!Y§);
                                                      §§push(_loc2_.offset);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      §§push(§§pop()[§§pop()]);
                                                      if(!_loc3_)
                                                      {
                                                         break loop19;
                                                      }
                                                      break loop20;
                                                   }
                                                   §§goto(addr00ce);
                                                }
                                             }
                                             §§goto(addr00f6);
                                          }
                                          §§goto(addr00f7);
                                       }
                                       §§goto(addr00bb);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00f6);
                                          §§push("]");
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr00f9);
                                 }
                                 §§push(Number(§§pop()));
                                 if(_loc3_)
                                 {
                                    break loop20;
                                 }
                                 addr00bb:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    §§push(", ");
                                    if(_loc4_)
                                    {
                                       addr00ce:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§push(_loc2_.§@!Y§);
                                       §§push(_loc2_.offset);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + 2);
                                       }
                                       §§push(§§pop()[§§pop()]);
                                       if(!_loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       break loop20;
                                    }
                                    addr00f6:
                                    §§push(§§pop() + §§pop());
                                    break;
                                 }
                                 addr00f7:
                                 addr00f9:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                              }
                              §§push(§§pop());
                              break;
                           }
                        }
                     }
                     §§push(§§pop().string(§§pop()));
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     break;
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc1_);
               break;
            }
            while(true)
            {
               §§push(§§pop() + ", ");
               if(_loc4_)
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
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0151);
         }
         §§push(§+R§);
         §§push(offset);
         if(!_loc3_)
         {
            §§push(§§pop() + 3);
         }
         §§pop().offset = §§pop();
         addr0151:
         _loc2_ = §+R§;
         loop2:
         while(true)
         {
            if(_loc4_)
            {
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(Std);
                        §§push("uv");
                        if(_loc4_)
                        {
                           §§push(§§pop() + ":");
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push("[");
                                 §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                 if(_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 loop6:
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
                                          if(!_loc3_)
                                          {
                                             break loop5;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_)
                                          {
                                             break loop6;
                                          }
                                       }
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          §§push("]");
                                          break;
                                       }
                                       break loop6;
                                    }
                                    §§push(§§pop() + §§pop());
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    break loop4;
                                 }
                              }
                              §§goto(addr01d4);
                           }
                        }
                        §§push(§§pop());
                        break;
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
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(_loc1_);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + ", ");
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  _loc1_ = §§pop();
                  if(_loc4_)
                  {
                     break;
                  }
                  break loop2;
               }
            }
            §§push(§+R§);
            §§push(offset);
            if(_loc4_)
            {
               §§push(§§pop() + 5);
            }
            §§pop().offset = §§pop();
            break;
         }
         _loc2_ = §+R§;
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               loop9:
               while(true)
               {
                  §§push(Std);
                  §§push("depth");
                  if(_loc4_)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(":");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              break loop9;
                           }
                           §§push("[");
                        }
                        loop11:
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
                           loop12:
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          §§push(", ");
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                break loop15;
                                             }
                                             §§push(_loc2_.§@!Y§);
                                             §§push(_loc2_.offset);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             §§push(§§pop()[§§pop()]);
                                             if(!_loc4_)
                                             {
                                                break loop11;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc4_)
                                             {
                                                break loop11;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc4_)
                                             {
                                                break loop14;
                                             }
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                break loop13;
                                             }
                                             §§push(", ");
                                             if(!_loc4_)
                                             {
                                                break loop12;
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                          break loop13;
                                       }
                                       §§goto(addr030b);
                                    }
                                    §§push(§§pop());
                                    §§push("]");
                                    break loop12;
                                 }
                                 §§push(_loc2_.§@!Y§);
                                 §§push(_loc2_.offset);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + 2);
                                 }
                                 §§push(§§pop()[§§pop()]);
                                 if(!_loc3_)
                                 {
                                    break loop11;
                                 }
                                 addr02fe:
                                 §§push(§§pop() + §§pop());
                                 break loop15;
                              }
                              §§push(§§pop());
                              break loop14;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              addr030b:
                              §§push(§§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              break loop10;
                           }
                           break loop9;
                        }
                        §§goto(addr02fe);
                     }
                  }
                  §§push(§§pop());
                  break;
               }
               §§push(§§pop().string(§§pop()));
               if(_loc4_)
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
         while(true)
         {
            §§push("{");
            if(!_loc3_)
            {
               §§push(§§pop() + _loc1_);
               if(_loc3_)
               {
                  break;
               }
               §§push(§§pop());
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(§§pop() + "}");
            if(!_loc3_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §<l§(param1:§=s§) : §=s§
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = 0;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            while(_loc2_ < 2)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     _loc2_++;
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(int(§§pop()));
                  break;
               }
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  §§push(§@!Y§);
                  §§push(offset);
                  if(_loc5_)
                  {
                     while(true)
                     {
                        §§push(3);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
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
                  if(_loc5_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§pop()[§§pop()] = §§pop();
               }
            }
         }
         return param1;
      }
      
      public function §[N§(param1:§=s§) : §=s§
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
         if(_loc4_)
         {
            while(_loc2_ < 3)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
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
                  if(!_loc5_)
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
      
      public function §,e§(param1:§=s§) : §=s§
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
               §§push(_loc2_);
               if(_loc4_)
               {
                  _loc2_++;
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc4_)
               {
                  §§push(§@!Y§);
                  §§push(offset);
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(5);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
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
      
      public function §[&§() : §=s§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(§+R§);
            §§push(offset);
            if(_loc1_)
            {
               §§push(§§pop() + 3);
            }
            §§pop().offset = §§pop();
         }
         return §+R§;
      }
      
      public function §8!2§() : §=s§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
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
         if(_loc1_)
         {
            §§push(§+R§);
            §§push(offset);
            if(!_loc2_)
            {
               §§push(§§pop() + 5);
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
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     while(true)
                     {
                        if(§§pop().length == 5)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push("depth");
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr0049);
                           }
                        }
                        §§push(param1);
                        if(_loc2_)
                        {
                           if(§§pop().length == 8)
                           {
                              §§push(param1);
                              break;
                           }
                           break loop0;
                        }
                        break;
                     }
                  }
                  §§push("position");
                  break;
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc3_)
                  {
                     §+R§.offset = offset;
                  }
                  return §+R§;
               }
               break;
            }
            return null;
         }
         addr0049:
         §§push(§+R§);
         §§push(offset);
         if(!_loc3_)
         {
            §§push(§§pop() + 5);
         }
         §§pop().offset = §§pop();
         return §+R§;
      }
      
      override public function getAttribute2(param1:String) : §=s§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(§§pop().length != 2)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §§push(param1);
                  }
                  if(§§pop() == "uv")
                  {
                     if(!_loc3_)
                     {
                        §§push(§+R§);
                        §§push(offset);
                        if(_loc2_)
                        {
                           §§push(§§pop() + 3);
                        }
                        §§pop().offset = §§pop();
                     }
                     break loop0;
                  }
                  break;
               }
               return null;
            }
         }
         break loop0;
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
if("nme3D.shader.PositionUVDepthVertex" in StringMap.§+!#§)
{
   _loc1_.setReserved("nme3D.shader.PositionUVDepthVertex",8);
}
else
{
   _loc1_.h["nme3D.shader.PositionUVDepthVertex"] = 8;
}

