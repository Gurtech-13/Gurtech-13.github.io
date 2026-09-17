package game
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§-;§;
   import §-!!§.§2!B§;
   import scenes.Cutscenes;
   import scenes.HeavySleeper;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§"=§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§2u§;
   import com.player03.run3.character.CharacterRegistry;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   import openfl.Assets;
   
   public class §11§ extends §'!O§
   {
      
      public static var §-6§:Boolean;
      
      public static var §!?§:Array;
      
      public static var §'!F§:Vector.<Point>;
      
      public var §,^§:String;
      
      public var §-7§:TextField;
      
      public var §?4§:Boolean;
      
      public var §-w§:Shape;
      
      public var §+[§:§<!T§;
      
      public var §1!2§:int;
      
      public function §11§(param1:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §?4§ = false;
            if(!_loc3_)
            {
               super(60,60);
            }
         }
         var _loc2_:§ 7§ = new §?y§(this);
         §&d§.§1$§().add(_loc2_,new §;R§(true));
         §&d§.§1$§().add(_loc2_,new §;R§(false));
         while(true)
         {
            if(!_loc3_)
            {
               §-w§ = new Shape();
               §+[§ = new §<!T§();
               layout.add(new §?y§(§-w§),§+[§);
               addChildAt(§-w§,0);
               if(!_loc4_)
               {
                  break;
               }
            }
            buttonMode = true;
            if(_loc4_)
            {
               useHandCursor = true;
            }
            break;
         }
         if(param1 != null)
         {
            addEventListener(MouseEvent.CLICK,param1);
         }
      }
      
      public function §<%§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = null as TextField;
         var _loc3_:* = null;
         var _loc4_:* = null as §&d§;
         var _loc5_:* = null as § 7§;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc7_)
               {
                  §§push(false);
                  if(_loc7_)
                  {
                     if(param1 == null)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop0;
                     }
                  }
                  §§pop();
               }
               §§push(§-7§ == null);
               if(_loc7_)
               {
                  break loop0;
               }
               break;
            }
            if(§§pop())
            {
               §-7§ = §&!;§.§9Q§(16777215,22);
               _loc2_ = §-7§;
               _loc3_ = null;
               _loc4_ = layout;
               if(!_loc6_)
               {
                  while(true)
                  {
                     if(_loc3_ == null)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
                     }
                     if(_loc4_ == null)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc4_.add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
                        addr00bc:
                     }
                  }
                  §§goto(addr00bc);
               }
               _loc5_ = new §?y§(§-7§);
               _loc4_ = layout;
               if(!_loc6_)
               {
                  while(true)
                  {
                     if(_loc4_ == null)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(§&d§.§1$§());
                     }
                     else
                     {
                        §§push(_loc4_);
                     }
                     §§pop().add(_loc5_,new §4$§(true,0.5));
                     break;
                  }
               }
               _loc5_ = new §?y§(§-7§);
               _loc4_ = layout;
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(_loc7_)
                     {
                        if(_loc4_ == null)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(§&d§.§1$§());
                        }
                        else
                        {
                           §§push(_loc4_);
                        }
                        §§pop().add(_loc5_,§^`§.§ !P§(§2u§.BOTTOM));
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                     }
                     §-7§.filters = §11§.§!?§;
                     if(_loc7_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  addChild(§-7§);
                  break;
               }
            }
            break loop4;
         }
         §§push(Boolean(§§pop()));
         break loop1;
      }
      
      public function §-!Q§(param1:String, param2:Object = undefined, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as BitmapData;
         while(true)
         {
            if(_loc5_)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(param2 == null)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(true);
                        if(_loc6_)
                        {
                           break loop1;
                        }
                        param2 = §§pop();
                     }
                     if(param3 == null)
                     {
                        if(!_loc6_)
                        {
                           §§push(false);
                           break loop1;
                        }
                        break;
                     }
                     §§goto(addr004a);
                  }
               }
               param3 = §§pop();
               addr004a:
               §?4§ = !param3;
               if(!_loc6_)
               {
                  break loop2;
               }
               break;
            }
            if(param2)
            {
               break;
            }
            addr00ec:
            addr0119:
            _loc4_ = §2!B§.getBitmapData(param1);
            if(_loc5_)
            {
               §+[§.fill = §^F§.BITMAP(_loc4_);
            }
            §+[§.points = null;
            if(!_loc6_)
            {
               §+[§.§ !R§ = 0;
               if(!_loc6_)
               {
                  addr0111:
                  layout.apply();
               }
            }
            return;
         }
         §§push(Assets);
         §§push("img/singledpi/texture/");
         if(_loc5_)
         {
            §§push(§§pop() + param1);
            if(!_loc6_)
            {
               §§push(§§pop());
            }
         }
         _loc4_ = §§pop().getBitmapData(§§pop());
         while(true)
         {
            if(!_loc6_)
            {
               §+[§.fill = §^F§.BITMAP(_loc4_);
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr00ec);
            }
            §§goto(addr0111);
         }
         §§goto(addr0119);
      }
      
      public function §]2§(param1:§>3§, param2:String, param3:int) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:* = null as §^F§;
         var _loc5_:* = null as String;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:* = null as String;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop5:
               while(true)
               {
                  if(!_loc9_)
                  {
                     §,^§ = param2;
                     §1!2§ = param3;
                     §?4§ = false;
                     if(!_loc10_)
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!_loc10_)
                                    {
                                       _loc5_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc9_)
                                          {
                                             break loop11;
                                          }
                                          break loop10;
                                       }
                                    }
                                    if(§§pop() != "rotatedZBox")
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             §§push(true);
                                             if(!_loc9_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(_loc10_)
                                                   {
                                                      if(§§pop() == "box")
                                                      {
                                                         break loop15;
                                                      }
                                                      §§pop();
                                                      §§push(false);
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(param2);
                                                   }
                                                   if(§§pop() != null)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         break loop15;
                                                      }
                                                      §§pop();
                                                      §§push(param2);
                                                      if(_loc9_)
                                                      {
                                                         break loop16;
                                                      }
                                                      §§push(int(§§pop().indexOf("Box")));
                                                      if(!_loc10_)
                                                      {
                                                         break loop13;
                                                      }
                                                      §§push(§§pop() > 0);
                                                      if(_loc10_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             break loop15;
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          _loc4_ = §^F§.BITMAP(Assets.getBitmapData("img/singledpi/BoxIcon.png"));
                                          break loop7;
                                       }
                                       §§push(§"=§.§^a§(param2));
                                       if(!_loc10_)
                                       {
                                          break loop11;
                                       }
                                       §§push(§§pop());
                                       if(_loc9_)
                                       {
                                          break loop10;
                                       }
                                    }
                                    _loc4_ = §^F§.BITMAP(Assets.getBitmapData("img/singledpi/RolledBoxIcon.png"));
                                    if(_loc10_)
                                    {
                                       break loop7;
                                    }
                                    continue loop3;
                                    §§push(§§pop());
                                    if(_loc10_)
                                    {
                                       break loop16;
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr01bb);
                              }
                              if(§§pop() != null)
                              {
                                 while(true)
                                 {
                                    §§push(§^F§);
                                    §§push(Assets);
                                    §§push("img/singledpi/texture/");
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() + _loc5_);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(§§pop());
                                    break;
                                 }
                                 _loc4_ = §§pop().BITMAP(§§pop().getBitmapData(§§pop()));
                                 break loop7;
                              }
                              §§push(param1.§23§[param3]);
                              if(!_loc9_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(param2);
                                    if(!_loc9_)
                                    {
                                       _loc8_ = §§pop();
                                       §§push(_loc8_);
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       break loop8;
                                    }
                                    §§goto(addr0226);
                                 }
                                 addr0282:
                                 §§push(§-;§.§+c§(_loc6_,8952076,0.9));
                                 if(!_loc9_)
                                 {
                                    break loop5;
                                 }
                                 break loop1;
                              }
                              §§goto(addr023c);
                           }
                           while(true)
                           {
                              §§push("bouncy");
                              if(_loc10_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§push(§-;§.§+c§(_loc6_,65280,0.8));
                                    if(!_loc9_)
                                    {
                                       addr01bb:
                                       _loc7_ = int(uint(§§pop()));
                                       break loop0;
                                    }
                                    break;
                                 }
                                 §§push(_loc8_);
                                 §§push("crumbling");
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§push(_loc8_);
                                 continue loop8;
                              }
                              if(_loc10_)
                              {
                                 §§push(§-;§.§+c§(_loc6_,14540253,0.6));
                                 if(_loc10_)
                                 {
                                    _loc7_ = int(§§pop());
                                    break loop0;
                                 }
                                 §§goto(addr023a);
                              }
                              else
                              {
                                 §§goto(addr0258);
                              }
                           }
                           §§goto(addr0263);
                        }
                        §§goto(addr02bb);
                     }
                     loop8:
                     while(true)
                     {
                        while(true)
                        {
                           §§push("glow");
                           if(_loc10_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§push(int(§-;§.§+c§(_loc6_,14540253,0.2)));
                                    if(!_loc9_)
                                    {
                                       _loc7_ = §§pop();
                                       break loop0;
                                    }
                                    break;
                                 }
                                 break loop0;
                              }
                              §§push(_loc8_);
                              if(_loc9_)
                              {
                                 break loop8;
                              }
                              §§push("inverse");
                           }
                           if(§§pop() == §§pop())
                           {
                              addr023c:
                              _loc7_ = int(§-;§.§+c§(_loc6_,5570645,0.8));
                              addr023a:
                              if(_loc9_)
                              {
                              }
                              break loop0;
                           }
                           §§push(_loc8_);
                           §§push("nonrotating");
                           if(!_loc9_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 addr0258:
                                 addr0263:
                                 §§push(§-;§.§>a§(_loc6_,0.7));
                                 if(_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                    break;
                                 }
                                 break loop5;
                              }
                              §§push(_loc8_);
                              break loop8;
                           }
                           §§goto(addr0277);
                        }
                        _loc7_ = §§pop();
                        break loop0;
                     }
                     addr0277:
                     if(§§pop() != "sticky")
                     {
                        §§push(_loc6_);
                        if(_loc10_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc7_ = §§pop();
                        break loop0;
                     }
                     if(_loc9_)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr0282);
               }
               §§push(uint(§§pop()));
               break;
            }
            _loc7_ = int(§§pop());
            break;
         }
         _loc4_ = §^F§.SOLID(_loc7_);
         addr02bb:
         §+[§.fill = _loc4_;
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  §§push(param2);
                  if(_loc10_)
                  {
                     if(§§pop() == null)
                     {
                        break;
                     }
                     if(_loc9_)
                     {
                        break loop3;
                     }
                     §§pop();
                     if(_loc9_)
                     {
                        break loop2;
                     }
                     §§push(true);
                     §§push(param2);
                  }
                  if(§§pop() != "ramp")
                  {
                     if(!_loc9_)
                     {
                        break loop3;
                     }
                     break;
                  }
                  §§goto(addr030e);
               }
               if(§§pop())
               {
                  §§goto(addr0313);
               }
               else
               {
                  §+[§.points = null;
                  §+[§.§ !R§ = 0;
               }
               §§goto(addr035c);
            }
            §§pop();
            if(_loc10_)
            {
               §§push(int(param2.indexOf("Ramp")) > 0);
               if(_loc10_)
               {
                  addr030e:
                  §§push(Boolean(§§pop()));
               }
               break loop4;
            }
            §+[§.points = §11§.§'!F§;
            addr0313:
            if(_loc10_)
            {
               §+[§.§ !R§ = null;
            }
            addr035c:
            layout.apply();
            break;
         }
      }
      
      public function §;N§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §-!Q§("Outline.png");
               if(!_loc1_)
               {
                  break;
               }
               §,^§ = null;
               if(_loc2_)
               {
                  break;
               }
            }
            §1!2§ = 0;
            break;
         }
      }
      
      public function §?'§(param1:§2u§) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = NaN;
         var _loc5_:* = null as § 7§;
         var _loc6_:* = null as §&d§;
         var _loc7_:* = NaN;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop17:
               while(true)
               {
                  if(_loc8_)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(_loc8_)
                        {
                           if(§?4§)
                           {
                              break;
                           }
                           if(_loc8_)
                           {
                              §§pop();
                              §§push(§"=§.§ n§(§,^§));
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc8_)
                        {
                           §§push(!§§pop());
                           if(_loc9_)
                           {
                              break;
                           }
                        }
                        §§push(Boolean(§§pop()));
                        break;
                     }
                     if(§§pop())
                     {
                        return;
                     }
                     loop19:
                     while(true)
                     {
                        §§push(param1.index);
                        if(!_loc9_)
                        {
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(-1.5707963267948966);
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       _loc2_ = §§pop();
                                       break loop19;
                                    }
                                    addr00c5:
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc8_)
                                       {
                                          break loop19;
                                       }
                                       break loop0;
                                    }
                                    break loop17;
                                 }
                                 break;
                              case 1:
                                 §§push(1.5707963267948966);
                                 break;
                              case 2:
                                 §§push(0);
                              case 3:
                                 §§push(3.141592653589793);
                                 if(_loc9_)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr00c5);
                              default:
                                 break loop19;
                           }
                           §§push(Number(§§pop()));
                           if(!_loc9_)
                           {
                              _loc2_ = §§pop();
                              if(_loc9_)
                              {
                              }
                              break;
                           }
                           break loop1;
                        }
                        _loc2_ = Number(§§pop());
                        break;
                     }
                  }
                  §§push(_loc2_);
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§goto(addr00f4);
               }
               §§push(§"=§.§0§(§,^§));
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               §§push(§§pop() + §§pop());
               break;
            }
            addr00f4:
            _loc2_ = Number(§§pop());
            break;
         }
         §§push(§,^§);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               loop11:
               while(true)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc8_)
                     {
                        §§push("fast");
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(§§pop() == §§pop())
                        {
                           break loop3;
                        }
                        §§push(_loc4_);
                        if(_loc9_)
                        {
                           break loop2;
                        }
                        §§push("left");
                        if(_loc9_)
                        {
                           break loop11;
                        }
                        if(§§pop() == §§pop())
                        {
                           break loop3;
                        }
                        §§push(_loc4_);
                        if(!_loc8_)
                        {
                           break loop2;
                        }
                     }
                     §§push("right");
                     if(_loc8_)
                     {
                        break loop11;
                     }
                     break;
                  }
                  §§goto(addr015f);
               }
               if(§§pop() == §§pop())
               {
                  break;
               }
               if(!_loc9_)
               {
                  §§push(_loc4_);
                  break loop2;
               }
               §§goto(addr01c8);
            }
            loop12:
            while(true)
            {
               §§push(_loc2_);
               if(_loc8_)
               {
                  loop13:
                  while(true)
                  {
                     loop14:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(3.141592653589793);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc9_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              if(_loc9_)
                              {
                                 break loop14;
                              }
                              §§push(3.141592653589793);
                              if(!_loc8_)
                              {
                                 break loop13;
                              }
                           }
                           if(§§pop() > §§pop())
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           break loop12;
                        }
                        §§push(_loc2_);
                        break;
                     }
                     §§push(6.283185307179586);
                     break;
                  }
               }
               _loc2_ = §§pop();
               break;
            }
            §§goto(addr01a9);
         }
         addr015f:
         if(§§pop() == "slow")
         {
            break loop3;
         }
         addr01a9:
         §-w§.rotation = _loc2_ * 180 / 3.141592653589793;
         while(true)
         {
            if(!_loc9_)
            {
               if(_loc2_ != 0)
               {
                  _loc5_ = new §?y§(§-w§);
                  if(!_loc9_)
                  {
                     §§push(1 - Number(Math.cos(_loc2_)));
                     if(!_loc9_)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop() + Number(Math.sin(_loc2_)));
                              if(_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc8_)
                                 {
                                    break loop5;
                                 }
                                 §§push(60);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc9_)
                                 {
                                    break loop5;
                                 }
                              }
                              §§push(2);
                              break;
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                           }
                           break;
                        }
                     }
                     break loop5;
                  }
                  _loc6_ = layout;
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           if(_loc6_ != null)
                           {
                              §§push(_loc6_);
                              break;
                           }
                           if(!_loc8_)
                           {
                              break loop7;
                           }
                        }
                        §§push(§&d§.§1$§());
                        break;
                     }
                     §§pop().add(_loc5_,new §;!!§(_loc7_,§2u§.LEFT));
                     break;
                  }
                  _loc5_ = new §?y§(§-w§);
                  if(_loc8_)
                  {
                     §§push(1 - Number(Math.cos(_loc2_)));
                     if(_loc8_)
                     {
                        while(true)
                        {
                           §§push(§§pop() - Number(Math.sin(_loc2_)));
                           if(_loc8_)
                           {
                              §§push(60);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(2);
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                     }
                     _loc7_ = §§pop();
                  }
                  _loc6_ = layout;
                  if(_loc8_)
                  {
                     if(_loc6_ == null)
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        §§push(§&d§.§1$§());
                     }
                     else
                     {
                        §§push(_loc6_);
                     }
                     §§pop().add(_loc5_,new §;!!§(_loc7_,§2u§.TOP));
                  }
                  break;
               }
            }
            _loc5_ = new §?y§(§-w§);
            _loc6_ = layout;
            addr01c8:
            if(!_loc9_)
            {
               while(true)
               {
                  if(_loc6_ == null)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     §§push(§&d§.§1$§());
                  }
                  else
                  {
                     §§push(_loc6_);
                  }
                  §§pop().add(_loc5_,new §;!!§(0,§2u§.LEFT));
                  break;
               }
            }
            _loc5_ = new §?y§(§-w§);
            _loc6_ = layout;
            if(!_loc9_)
            {
               if(_loc6_ == null)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  §§push(§&d§.§1$§());
               }
               else
               {
                  §§push(_loc6_);
               }
               §§pop().add(_loc5_,new §;!!§(0,§2u§.TOP));
            }
            break;
         }
      }
      
      public function §"c§(param1:§>3§) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null as String;
         var _loc2_:§^F§ = §+[§.fill;
         loop0:
         while(true)
         {
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
                        loop5:
                        while(true)
                        {
                           if(_loc7_)
                           {
                              if(_loc2_ == null)
                              {
                                 break loop2;
                              }
                              §§push(_loc2_.index);
                              if(!_loc7_)
                              {
                                 break loop4;
                              }
                              §§push(0);
                              if(_loc7_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    break loop2;
                                 }
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(int(_loc2_.params[0]));
                                       if(!_loc7_)
                                       {
                                          break loop3;
                                       }
                                       _loc3_ = §§pop();
                                       §§push(param1.§23§[§1!2§]);
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(int(§§pop()));
                                       if(_loc8_)
                                       {
                                          break loop5;
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    §§push(_loc4_);
                                    break;
                                 }
                              }
                              if(§§pop() == §§pop())
                              {
                                 break loop2;
                              }
                              §§push(§,^§);
                              if(_loc8_)
                              {
                                 break loop1;
                              }
                              _loc6_ = §§pop();
                              if(!_loc7_)
                              {
                                 break loop0;
                              }
                           }
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push("bouncy");
                                    if(!_loc8_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          _loc5_ = int(§-;§.§+c§(_loc4_,65280,0.8));
                                          break loop8;
                                       }
                                       §§push(_loc6_);
                                       §§push("crumbling");
                                       if(!_loc8_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                break loop0;
                                             }
                                             break loop2;
                                          }
                                          §§push(_loc6_);
                                          §§push("glow");
                                          if(!_loc7_)
                                          {
                                             break loop7;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             §§push(§-;§.§+c§(_loc4_,14540253,0.2));
                                             if(!_loc8_)
                                             {
                                                _loc5_ = int(§§pop());
                                                if(_loc7_)
                                                {
                                                   break loop8;
                                                }
                                                break;
                                             }
                                             §§goto(addr01c5);
                                          }
                                          else
                                          {
                                             §§push(_loc6_);
                                             §§push("inverse");
                                             if(_loc8_)
                                             {
                                                break loop7;
                                             }
                                          }
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(int(§-;§.§+c§(_loc4_,5570645,0.8)));
                                             break loop4;
                                          }
                                          break loop8;
                                       }
                                       §§push(_loc6_);
                                       §§push("nonrotating");
                                       if(!_loc7_)
                                       {
                                          break loop7;
                                       }
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       break loop8;
                                    }
                                    §§push(_loc6_);
                                    break loop1;
                                 }
                                 §§push(int(§-;§.§>a§(_loc4_,0.7)));
                                 if(!_loc8_)
                                 {
                                    _loc5_ = §§pop();
                                    break;
                                 }
                                 break loop3;
                              }
                              §§goto(addr01d7);
                           }
                           §§goto(addr01a1);
                        }
                        §§goto(addr01cf);
                     }
                     _loc5_ = §§pop();
                     §§goto(addr01d7);
                  }
                  §§goto(addr01ce);
               }
               §§goto(addr01f4);
            }
            addr01a1:
            if(§§pop() == "sticky")
            {
               §§push(§-;§.§+c§(_loc4_,8952076,0.9));
               if(_loc7_)
               {
                  §§goto(addr01c4);
               }
               §§goto(addr01c5);
            }
            else
            {
               addr01cf:
               _loc5_ = int(_loc4_);
               addr01ce:
               if(!_loc7_)
               {
                  break loop2;
               }
            }
            §§goto(addr01d7);
         }
         §§push(§-;§.§+c§(_loc4_,14540253,0.6));
         if(!_loc8_)
         {
            _loc5_ = int(uint(§§pop()));
         }
         else
         {
            addr01c5:
            _loc5_ = int(uint(§§pop()));
            addr01c4:
         }
         addr01d7:
         §+[§.fill = §^F§.SOLID(_loc5_);
         layout.apply();
         addr01f4:
      }
   }
}

