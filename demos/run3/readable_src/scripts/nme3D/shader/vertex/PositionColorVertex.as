package nme3D.shader.vertex
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%!Z§.§'§;
   import §%!Z§.§^U§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import scenes.AngelVsBunny;
   import scenes.Cutscenes;
   import scenes.GrandOpening;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§'P§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.level.§59§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§,T§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   
   public class PositionColorVertex extends §!!V§
   {
      
      public static var §2>§:Array;
      
      public function PositionColorVertex(param1:Object = undefined, param2:Vector.<Number> = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(PositionColorVertex.§2>§);
                  if(!_loc3_)
                  {
                     if(§§pop() != null)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc4_)
                        {
                           PositionColorVertex.§2>§ = [];
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           §§push(PositionColorVertex.§2>§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§pop().push(new §'P§("position",3));
                           if(_loc3_)
                           {
                              break loop0;
                           }
                        }
                        §§push(PositionColorVertex.§2>§);
                        break;
                     }
                  }
                  §§pop().push(new §'P§("color",3));
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            super(param1,param2,6,PositionColorVertex.§2>§);
            break;
         }
      }
      
      public function toString() : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push("");
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            §+R§.offset = offset;
         }
         var _loc2_:§=s§ = §+R§;
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(Std);
                        §§push("position");
                        if(!_loc4_)
                        {
                           §§push(":");
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push("[");
                                    §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                    if(!_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                          }
                                          §§push(", ");
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc4_)
                                          {
                                             break loop4;
                                          }
                                          §§push(§§pop());
                                          §§push(_loc2_.§@!Y§);
                                          §§push(_loc2_.offset);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          §§push(§§pop()[§§pop()]);
                                          if(_loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc4_)
                                             {
                                                break loop3;
                                             }
                                          }
                                       }
                                    }
                                    §§push(§§pop() + §§pop());
                                    break loop2;
                                 }
                                 addr00c6:
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(_loc2_.§@!Y§);
                                 §§push(_loc2_.offset);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + 2);
                                 }
                                 §§push(§§pop()[§§pop()]);
                                 if(!_loc4_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr00e8);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                              }
                              break loop1;
                           }
                           addr00e8:
                           addr00f4:
                           §§push(§§pop() + Number(§§pop()));
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                           }
                           §§push(§§pop() + "]");
                           break loop4;
                        }
                        break loop1;
                     }
                     §§push(", ");
                     if(_loc3_)
                     {
                        §§goto(addr00c6);
                     }
                     §§goto(addr00f4);
                  }
                  §§push(§§pop().string(§§pop()));
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        break;
                     }
                  }
               }
               _loc1_ = §§pop();
               while(true)
               {
                  addr0146:
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     break loop0;
                  }
                  §§push(§+R§);
                  §§push(offset);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 3);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
            }
            while(true)
            {
               §§push(§§pop() + ", ");
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               break;
            }
            _loc1_ = §§pop();
            if(_loc3_)
            {
               §§goto(addr0146);
            }
         }
         _loc2_ = §+R§;
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               loop8:
               while(true)
               {
                  loop9:
                  while(true)
                  {
                     §§push(Std);
                     §§push("color");
                     if(_loc3_)
                     {
                        §§push(§§pop() + ":");
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           break loop8;
                        }
                     }
                     loop10:
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push("[");
                                 §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                 if(!_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc4_)
                                    {
                                       break loop10;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(", ");
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc3_)
                                       {
                                          break loop12;
                                       }
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    §§push(_loc2_.§@!Y§);
                                    §§push(_loc2_.offset);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    §§push(§§pop()[§§pop()]);
                                    if(!_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc4_)
                                       {
                                          break loop10;
                                       }
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       break loop12;
                                    }
                                 }
                                 §§goto(addr0222);
                              }
                              §§goto(addr0227);
                           }
                           §§push(", ");
                           if(!_loc3_)
                           {
                              break loop13;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 §§push(_loc2_.§@!Y§);
                                 §§push(_loc2_.offset);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + 2);
                                 }
                                 §§push(§§pop()[§§pop()]);
                                 if(_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 break loop10;
                              }
                              §§goto(addr022f);
                           }
                           §§goto(addr0222);
                        }
                        addr022f:
                        addr0227:
                        §§push(§§pop() + "]");
                        if(_loc3_)
                        {
                           §§push(§§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           break loop8;
                        }
                        break loop9;
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc3_)
                     {
                        addr0222:
                        §§push(§§pop());
                     }
                     break loop11;
                  }
                  §§push(§§pop().string(§§pop()));
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop());
                  }
               }
               §§push(§§pop());
               break loop9;
            }
            _loc1_ = §§pop();
         }
         loop14:
         while(true)
         {
            while(true)
            {
               §§push("{");
               if(!_loc4_)
               {
                  §§push(§§pop() + _loc1_);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     break loop14;
                  }
               }
               §§push(§§pop() + "}");
               if(_loc3_)
               {
                  break loop14;
               }
               break;
            }
            return §§pop();
         }
         §§push(§§pop());
         break loop15;
      }
      
      public function §[N§(param1:§=s§) : §=s§
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
            while(_loc2_ < 3)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
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
               if(!_loc4_)
               {
                  §§push(§@!Y§);
                  §§push(offset);
                  if(_loc5_)
                  {
                     §§push(§§pop() + _loc3_);
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
      
      public function §@E§(param1:§=s§) : §=s§
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
      
      public function §-!L§() : §=s§
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
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
      
      override public function getAttribute3(param1:String) : §=s§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().length != 5)
                  {
                     break;
                  }
                  §§push(param1);
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §§push("color");
               if(_loc2_)
               {
                  if(§§pop() != §§pop())
                  {
                     break;
                  }
                  §§push(§+R§);
                  §§push(offset);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 3);
                  }
                  §§pop().offset = §§pop();
                  if(!_loc3_)
                  {
                     return §+R§;
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0081);
            }
            §§push(param1);
            if(_loc3_)
            {
               break;
            }
            if(§§pop().length == 8)
            {
               if(!_loc3_)
               {
                  §§push(param1);
                  break;
               }
               §§goto(addr0085);
            }
            §§goto(addr0094);
         }
         addr0081:
         if(§§pop() == "position")
         {
            addr0085:
            §+R§.offset = offset;
            addr008f:
            return §+R§;
         }
         addr0094:
         return null;
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
if("nme3D.shader.vertex.PositionColorVertex" in StringMap.§+!#§)
{
   _loc1_.setReserved("nme3D.shader.vertex.PositionColorVertex",6);
}
else
{
   _loc1_.h["nme3D.shader.vertex.PositionColorVertex"] = 6;
}

