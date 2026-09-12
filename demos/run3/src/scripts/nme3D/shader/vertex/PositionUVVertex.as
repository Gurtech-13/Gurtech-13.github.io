package nme3D.shader.vertex
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §-!!§.§-;§;
   import §3!b§.BoatRide;
   import §4!6§.§!!V§;
   import §4!6§.§'P§;
   import §4!6§.§=s§;
   import §>T§.§"=§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.§,!8§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§4!R§;
   import haxeutils.math.geom.Point3D;
   import motion.actuators.GenericActuator;
   
   public class PositionUVVertex extends §!!V§
   {
      
      public static var §2>§:Array;
      
      public function PositionUVVertex(param1:Object = undefined, param2:Vector.<Number> = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     §§push(PositionUVVertex.§2>§);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     if(§§pop() != null)
                     {
                        break loop0;
                     }
                     if(_loc3_)
                     {
                        PositionUVVertex.§2>§ = [];
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(PositionUVVertex.§2>§);
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        §§pop().push(new §'P§("position",3));
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(PositionUVVertex.§2>§);
                  break loop1;
               }
               §§goto(addr00a4);
            }
            §§pop().push(new §'P§("uv",2));
            if(_loc3_)
            {
               break;
            }
            break loop2;
         }
         super(param1,param2,5,PositionUVVertex.§2>§);
         addr00a4:
      }
      
      public function toString() : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push("");
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            §+R§.offset = offset;
         }
         var _loc2_:§=s§ = §+R§;
         if(_loc4_)
         {
            while(true)
            {
               §§push(_loc1_);
               if(_loc4_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(Std);
                     §§push("position");
                     if(_loc4_)
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
                                 §§push(":");
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       break loop1;
                                    }
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       break loop1;
                                    }
                                    §§push("[");
                                    §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                    if(_loc3_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    §§push(", ");
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc2_.§@!Y§);
                                       §§push(_loc2_.offset);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       §§push(§§pop()[§§pop()]);
                                       if(_loc4_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc4_)
                                          {
                                             break loop4;
                                          }
                                       }
                                       break loop3;
                                    }
                                    addr00cc:
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
                                       §§push(Number(§§pop()));
                                    }
                                    break loop3;
                                 }
                                 §§goto(addr00f4);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 §§push(", ");
                                 if(_loc4_)
                                 {
                                    §§goto(addr00cc);
                                 }
                                 §§goto(addr00f4);
                              }
                              §§goto(addr00f1);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              addr00f4:
                              addr00f1:
                              §§push(§§pop() + "]");
                              break;
                           }
                           §§goto(addr00f7);
                        }
                        addr00f7:
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
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§push(§§pop());
               if(!_loc3_)
               {
                  break;
               }
               addr0134:
               §§push(§§pop() + ", ");
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
               }
               _loc1_ = §§pop();
               if(_loc4_)
               {
                  addr0152:
                  §§push(§+R§);
                  §§push(offset);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 3);
                  }
                  §§pop().offset = §§pop();
               }
            }
            _loc1_ = §§pop();
            while(true)
            {
               if(_loc4_)
               {
                  §§goto(addr0134);
                  §§push(_loc1_);
               }
               §§goto(addr0152);
            }
         }
         _loc2_ = §+R§;
         if(_loc4_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               loop7:
               while(true)
               {
                  §§push(Std);
                  §§push("uv");
                  if(_loc4_)
                  {
                     loop8:
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
                        }
                        loop9:
                        while(true)
                        {
                           §§push("[");
                           §§push(_loc2_.§@!Y§[_loc2_.offset]);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(", ");
                                 if(!_loc3_)
                                 {
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
                                       §§push(Number(§§pop()));
                                    }
                                    break loop9;
                                 }
                                 addr01e9:
                                 §§push(§§pop() + §§pop());
                                 break;
                              }
                              addr01ec:
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 break loop8;
                              }
                              break loop7;
                           }
                           addr01df:
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              §§goto(addr01e9);
                              §§push("]");
                           }
                           §§goto(addr01ec);
                        }
                        §§goto(addr01df);
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
               if(_loc4_)
               {
                  §§push(§§pop());
               }
            }
            _loc1_ = §§pop();
         }
         §§push("{");
         if(_loc4_)
         {
            §§push(§§pop() + _loc1_);
            if(_loc4_)
            {
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() + "}");
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  return §§pop();
               }
            }
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
               §§push(_loc2_);
               if(_loc5_)
               {
                  _loc2_++;
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§@!Y§);
                        §§push(offset);
                        if(!_loc4_)
                        {
                           §§push(3);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              break loop1;
                           }
                        }
                        §§push(_loc3_);
                        break;
                     }
                     §§push(§§pop() + §§pop());
                     break;
                  }
                  §§push(param1.§@!Y§);
                  §§push(param1.offset);
                  if(!_loc4_)
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
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            while(_loc2_ < 3)
            {
               §§push(_loc2_);
               if(_loc4_)
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
                  if(_loc4_)
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
      
      public function §[&§() : §=s§
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
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §§push(param1);
                  }
                  if(§§pop() != "position")
                  {
                     break;
                  }
                  if(_loc2_)
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
                  if(_loc3_)
                  {
                     if(§§pop().length != 2)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     §§push(param1);
                  }
                  if(§§pop() == "uv")
                  {
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
if("nme3D.shader.vertex.PositionUVVertex" in StringMap.§+!#§)
{
   _loc1_.setReserved("nme3D.shader.vertex.PositionUVVertex",5);
}
else
{
   _loc1_.h["nme3D.shader.vertex.PositionUVVertex"] = 5;
}

