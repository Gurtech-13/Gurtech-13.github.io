package nme3D.shader.vertex
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §4!6§.§!!V§;
   import §4!6§.§'P§;
   import §4!6§.§=s§;
   import §`_§.§^s§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6M§;
   import com.player03.run3.level.§ !W§;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§6U§;
   import nme3D.model.Model;
   import nme3D.model.§[O§;
   import nme3D.shader.§'H§;
   
   public class PositionColorAlphaVertex extends §!!V§
   {
      
      public static var §2>§:Array;
      
      public function PositionColorAlphaVertex(param1:Object = undefined, param2:Vector.<Number> = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            §§push(PositionColorAlphaVertex.§2>§);
            if(!_loc3_)
            {
               if(§§pop() != null)
               {
                  break;
               }
               PositionColorAlphaVertex.§2>§ = [];
               if(!_loc4_)
               {
                  break;
               }
               while(true)
               {
                  §§push(PositionColorAlphaVertex.§2>§);
                  if(_loc4_)
                  {
                     §§pop().push(new §'P§("position",3));
                     §§push(PositionColorAlphaVertex.§2>§);
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§pop().push(new §'P§("color",3));
                  §§push(PositionColorAlphaVertex.§2>§);
                  break;
               }
            }
            §§pop().push(new §'P§("alpha",1));
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr00b0);
         }
         super(param1,param2,7,PositionColorAlphaVertex.§2>§);
         addr00b0:
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
                     loop18:
                     while(true)
                     {
                        loop19:
                        while(true)
                        {
                           §§push(Std);
                           §§push("position");
                           if(_loc4_)
                           {
                              §§push(":");
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 break loop18;
                              }
                           }
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              loop20:
                              while(true)
                              {
                                 loop21:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push("[");
                                       §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                       if(!_loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                             §§push(", ");
                                             if(!_loc4_)
                                             {
                                                break loop21;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_)
                                             {
                                                §§push(§§pop());
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
                                                break loop20;
                                             }
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc3_)
                                          {
                                             break loop20;
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       §§push(", ");
                                       if(_loc4_)
                                       {
                                          break loop21;
                                       }
                                       §§goto(addr00ff);
                                    }
                                    §§goto(addr00fc);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    break loop19;
                                 }
                                 addr00da:
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
                                 §§goto(addr00f2);
                              }
                              addr00f2:
                              addr00ff:
                              addr00fc:
                              addr0107:
                              §§push(§§pop() + Number(§§pop()));
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                              }
                              §§push(§§pop() + "]");
                              if(!_loc3_)
                              {
                                 addr0105:
                                 §§push(§§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 break loop18;
                              }
                           }
                           §§push(§§pop());
                           break loop18;
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              §§goto(addr00da);
                           }
                           §§goto(addr0105);
                        }
                        §§goto(addr0107);
                     }
                     §§push(§§pop().string(§§pop()));
                     if(!_loc3_)
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
                  if(!_loc4_)
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
            §§push(§§pop() + ", ");
            if(!_loc3_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
               }
            }
            _loc1_ = §§pop();
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0163);
         }
         §§push(§+R§);
         §§push(offset);
         if(!_loc3_)
         {
            §§push(§§pop() + 3);
         }
         §§pop().offset = §§pop();
         addr0163:
         _loc2_ = §+R§;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    §§push(Std);
                                    §§push("color");
                                    if(!_loc3_)
                                    {
                                       §§push(":");
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc3_)
                                       {
                                          continue loop12;
                                       }
                                    }
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       continue loop12;
                                    }
                                    §§goto(addr023c);
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(", ");
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_)
                                          {
                                             break loop12;
                                          }
                                          §§push(§§pop());
                                          if(_loc3_)
                                          {
                                             break;
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
                                             §§push(Number(§§pop()));
                                             if(_loc3_)
                                             {
                                                break loop14;
                                             }
                                          }
                                          §§goto(addr01f2);
                                       }
                                       §§goto(addr01fe);
                                    }
                                    §§goto(addr0201);
                                 }
                                 §§goto(addr022b);
                              }
                              loop11:
                              while(true)
                              {
                                 while(true)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push("[");
                                       §§push(_loc2_.§@!Y§[_loc2_.offset]);
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                addr01f2:
                                                §§push(Number(§§pop()));
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   break loop10;
                                                }
                                                §§push(§§pop() + §§pop());
                                                §§push(", ");
                                                if(_loc4_)
                                                {
                                                   addr01fe:
                                                   §§push(§§pop() + §§pop());
                                                   break;
                                                }
                                                break loop13;
                                             }
                                             addr0201:
                                             §§push(_loc2_.§@!Y§);
                                             §§push(_loc2_.offset);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + 2);
                                             }
                                             §§push(§§pop()[§§pop()]);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             break loop11;
                                          }
                                       }
                                       break loop14;
                                    }
                                    §§goto(addr022b);
                                 }
                                 addr023c:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop().string(§§pop()));
                                 if(!_loc4_)
                                 {
                                    break loop8;
                                 }
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    break loop8;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    break loop6;
                                 }
                                 _loc1_ = §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() + ", ");
                                    if(!_loc4_)
                                    {
                                       break loop4;
                                    }
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       break loop3;
                                    }
                                    _loc1_ = §§pop();
                                    if(!_loc4_)
                                    {
                                       break loop2;
                                    }
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    addr022b:
                                    §§push(§§pop() + "]");
                                    if(_loc3_)
                                    {
                                       break loop12;
                                    }
                                 }
                                 §§push(§§pop());
                              }
                              break loop12;
                           }
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              break loop5;
                           }
                           §§goto(addr02ea);
                        }
                        §§goto(addr02dd);
                     }
                     §§goto(addr02ea);
                  }
                  §§push(Std);
                  §§push("alpha");
                  if(_loc4_)
                  {
                     §§push(§§pop() + ":");
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              §§push(§@!Y§);
                              §§push(offset);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 6);
                              }
                              §§push(§§pop()[§§pop()]);
                              if(!_loc3_)
                              {
                                 §§push(Number(§§pop()));
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
                  }
                  §§push(§§pop().string(§§pop()));
                  if(_loc4_)
                  {
                     addr02dd:
                     §§push(§§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     break loop6;
                  }
                  addr02ea:
                  _loc1_ = §§pop();
                  break loop2;
               }
               §§goto(addr0302);
            }
            §§push(§§pop() + "}");
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            break loop4;
         }
         §§push("{" + _loc1_);
         if(!_loc3_)
         {
            break loop3;
         }
         addr0302:
         return §§pop();
      }
      
      public function §[N§(param1:§=s§) : §=s§
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = 0;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            while(_loc2_ < 3)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     _loc2_++;
                     if(!_loc5_)
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
                  if(!_loc4_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§push(§§pop()[§§pop()]);
                  if(_loc5_)
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
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§@!Y§);
                        §§push(offset);
                        if(_loc4_)
                        {
                           §§push(3);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              break loop2;
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
      
      public function §%D§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(§@!Y§);
            §§push(offset);
            if(!_loc3_)
            {
               §§push(§§pop() + 6);
            }
            §§pop()[§§pop()] = param1;
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
      
      public function §0B§() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§@!Y§);
         §§push(offset);
         if(!_loc1_)
         {
            §§push(§§pop() + 6);
         }
         §§push(§§pop()[§§pop()]);
         if(!_loc1_)
         {
            return Number(§§pop());
         }
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
               loop2:
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
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
                                 §§push("color");
                                 if(_loc3_)
                                 {
                                    break loop1;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(§+R§);
                                       §§push(offset);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + 3);
                                       }
                                       §§pop().offset = §§pop();
                                       if(_loc3_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    return §+R§;
                                 }
                              }
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              break loop3;
                           }
                           if(§§pop().length == 8)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           break loop2;
                        }
                        §§push(param1);
                        break;
                     }
                  }
                  break loop3;
               }
               return null;
            }
            if(§§pop() == §§pop())
            {
               break;
            }
            break loop2;
         }
         §+R§.offset = offset;
         return §+R§;
      }
      
      override public function getAttribute1(param1:String) : §=s§
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
                     if(§§pop().length != 5)
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
               if(§§pop() == "alpha")
               {
                  if(_loc2_)
                  {
                     §§push(§+R§);
                     §§push(offset);
                     if(_loc2_)
                     {
                        §§push(§§pop() + 6);
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
if("nme3D.shader.vertex.PositionColorAlphaVertex" in StringMap.§+!#§)
{
   _loc1_.setReserved("nme3D.shader.vertex.PositionColorAlphaVertex",7);
}
else
{
   _loc1_.h["nme3D.shader.vertex.PositionColorAlphaVertex"] = 7;
}

