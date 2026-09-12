package nme3D.shader.vertex
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §4!6§.§!!V§;
   import §4!6§.§'P§;
   import §4!6§.§=s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.Shadow;
   import com.player03.run3.level.§,a§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   
   public class PositionUVAlphaVertex extends §!!V§
   {
      
      public static var §2>§:Array;
      
      public function PositionUVAlphaVertex(param1:Object = undefined, param2:Vector.<Number> = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  §§push(PositionUVAlphaVertex.§2>§);
                  if(_loc3_)
                  {
                     if(§§pop() != null)
                     {
                        break loop0;
                     }
                     PositionUVAlphaVertex.§2>§ = [];
                     §§push(PositionUVAlphaVertex.§2>§);
                     if(_loc3_)
                     {
                        §§pop().push(new §'P§("position",3));
                        §§push(PositionUVAlphaVertex.§2>§);
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  §§pop().push(new §'P§("uv",2));
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(PositionUVAlphaVertex.§2>§);
               break;
            }
            §§pop().push(new §'P§("alpha",1));
            break;
         }
         super(param1,param2,6,PositionUVAlphaVertex.§2>§);
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
         if(_loc4_)
         {
            §+R§.offset = offset;
         }
         var _loc2_:§=s§ = §+R§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(Std);
                        §§push("position");
                        if(_loc4_)
                        {
                           §§push(§§pop() + ":");
                           if(_loc4_)
                           {
                              §§push(§§pop());
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
                                    while(true)
                                    {
                                       §§push("[");
                                       if(_loc4_)
                                       {
                                          §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc3_)
                                          {
                                             break loop14;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(", ");
                                             if(!_loc4_)
                                             {
                                                break loop13;
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop());
                                          if(!_loc4_)
                                          {
                                             break loop12;
                                          }
                                       }
                                       §§push(_loc2_.§@!Y§);
                                       §§push(_loc2_.offset);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§push(§§pop()[§§pop()]);
                                       if(!_loc3_)
                                       {
                                          break loop14;
                                       }
                                       §§goto(addr00ba);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc3_)
                                 {
                                    addr00ba:
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_)
                                    {
                                       break loop12;
                                    }
                                    §§goto(addr00f9);
                                 }
                                 §§goto(addr00ea);
                              }
                              addr00eb:
                              §§push(§§pop() + §§pop());
                              §§push(_loc2_.§@!Y§);
                              §§push(_loc2_.offset);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 2);
                              }
                              §§push(§§pop()[§§pop()]);
                              if(_loc4_)
                              {
                                 addr00ea:
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr00f1);
                           }
                           §§push(§§pop());
                           §§push(", ");
                           if(_loc4_)
                           {
                              break loop13;
                           }
                           addr00f1:
                           addr00f9:
                           §§push(§§pop() + §§pop());
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
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(_loc1_);
               break;
            }
            §§push(§§pop() + ", ");
            if(_loc4_)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
            }
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               break;
            }
            continue loop2;
         }
         §§push(§+R§);
         §§push(offset);
         if(_loc4_)
         {
            §§push(§§pop() + 3);
         }
         §§pop().offset = §§pop();
         _loc2_ = §+R§;
         loop2:
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
                     §§push("uv");
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §§push(§§pop() + ":");
                           if(_loc4_)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push("[");
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(Number(§§pop()));
                                             if(_loc3_)
                                             {
                                                break loop8;
                                             }
                                             §§push(§§pop() + §§pop());
                                             §§push(", ");
                                             if(!_loc4_)
                                             {
                                                break loop7;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc4_)
                                             {
                                                break loop6;
                                             }
                                             §§push(§§pop());
                                          }
                                          §§push(_loc2_.§@!Y§);
                                          §§push(_loc2_.offset);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§push(§§pop()[§§pop()]);
                                          if(_loc4_)
                                          {
                                             break loop8;
                                          }
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             §§push("]");
                                             break loop7;
                                          }
                                       }
                                       §§goto(addr01f8);
                                    }
                                    §§push(Number(§§pop()));
                                    break loop9;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    addr01f8:
                                    §§push(§§pop());
                                 }
                                 break;
                              }
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
                     §§push(§§pop().string(§§pop()));
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() + §§pop());
                  }
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     break loop2;
                  }
               }
               while(true)
               {
                  §§push(_loc1_ + ", ");
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                     _loc1_ = §§pop();
                     if(!_loc3_)
                     {
                        break loop2;
                     }
                     §§goto(addr02a7);
                  }
                  §§goto(addr02b4);
               }
               §§goto(addr02ba);
            }
            §§goto(addr029b);
         }
         §§push(_loc1_);
         if(!_loc3_)
         {
            while(true)
            {
               §§push(Std);
               §§push("alpha");
               if(!_loc3_)
               {
                  §§push(§§pop() + ":");
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  §§push(§@!Y§);
                  §§push(offset);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 5);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            §§push(§§pop().string(§§pop()));
            if(!_loc3_)
            {
               break loop3;
            }
            addr029b:
            §§push(§§pop() + §§pop());
            if(!_loc3_)
            {
               §§push(§§pop());
            }
         }
         _loc1_ = §§pop();
         addr02a7:
         addr02b4:
         addr02ba:
         §§push("{");
         if(!_loc3_)
         {
            §§push(§§pop() + _loc1_);
         }
         return §§pop() + "}";
      }
      
      public function §<l§(param1:§=s§) : §=s§
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
         if(_loc4_)
         {
            while(_loc2_ < 2)
            {
               §§push(_loc2_);
               if(!_loc5_)
               {
                  _loc2_++;
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc4_)
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
                     if(_loc5_)
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
      
      public function §%D§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(§@!Y§);
            §§push(offset);
            if(_loc2_)
            {
               §§push(§§pop() + 5);
            }
            §§pop()[§§pop()] = param1;
         }
         return param1;
      }
      
      public function §[&§() : §=s§
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(§+R§);
            §§push(offset);
            if(!_loc1_)
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
         if(_loc2_)
         {
            §+R§.offset = offset;
         }
         return §+R§;
      }
      
      public function §0B§() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§@!Y§);
         §§push(offset);
         if(_loc2_)
         {
            §§push(§§pop() + 5);
         }
         §§push(§§pop()[§§pop()]);
         if(_loc2_)
         {
            return Number(§§pop());
         }
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
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     if(§§pop().length != 8)
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                     §§push(param1);
                  }
                  if(§§pop() != "position")
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               return null;
            }
            §+R§.offset = offset;
         }
         return §+R§;
      }
      
      override public function getAttribute2(param1:String) : §=s§
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
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(§§pop().length != 2)
                     {
                        break loop1;
                     }
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(param1);
                  break;
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
         return §+R§;
      }
      
      override public function getAttribute1(param1:String) : §=s§
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
                  §§push(param1);
                  if(!_loc2_)
                  {
                     if(§§pop().length != 5)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §§push(param1);
                  }
                  if(§§pop() == "alpha")
                  {
                     if(_loc3_)
                     {
                        §§push(§+R§);
                        §§push(offset);
                        if(!_loc2_)
                        {
                           §§push(§§pop() + 5);
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
if("nme3D.shader.vertex.PositionUVAlphaVertex" in StringMap.§+!#§)
{
   _loc1_.setReserved("nme3D.shader.vertex.PositionUVAlphaVertex",6);
}
else
{
   _loc1_.h["nme3D.shader.vertex.PositionUVAlphaVertex"] = 6;
}

