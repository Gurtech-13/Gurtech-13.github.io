package game
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§,C§;
   import §-!!§.§2!B§;
   import §-!!§.§8!8§;
   import §-!!§.§^!8§;
   import layout3d.§>N§;
   import §6!Q§.§]u§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import stage.§7d§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.QuaternionUtils;
   import nme3D.Context3DUtils;
   import nme3D.shader.§<!9§;
   import unitsystem.§7o§;
   
   public class §5v§ extends §[k§ implements §@[§
   {
      
      public static var instance:§5v§ = null;
      
      public var §-T§:§`f§;
      
      public var §9!#§:§#a§;
      
      public var §]!3§:Sprite;
      
      public var §%x§:Rectangle;
      
      public var editor:Game;
      
      public function §5v§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(_loc2_)
            {
               super();
               if(!_loc2_)
               {
                  break;
               }
            }
            visible = false;
            break;
         }
      }
      
      public static function init() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               if(§5v§.instance != null)
               {
                  break;
               }
               §5v§.instance = new §5v§();
               if(_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               §§push(int(Main.instance.§!!b§.getChildIndex(§]u§.§@!A§())));
               if(_loc3_)
               {
                  §§push(int(§§pop()));
                  if(_loc2_)
                  {
                     break;
                  }
               }
               _loc1_ = §§pop();
               addr008e:
               if(!_loc2_)
               {
                  §§push(_loc1_);
                  break;
               }
               Main.instance.§!!b§.addChildAt(§5v§.instance,_loc1_);
               break loop0;
            }
            if(§§pop() < 0)
            {
               Main.instance.§!!b§.addChild(§5v§.instance);
               break;
            }
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr008e);
         }
      }
      
      public function §?![§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            editor.§91§(false);
         }
      }
      
      public function §4!;§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            editor.§91§(true);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc4_)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(§7o§.instance.paused);
                        if(_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop() != §9!#§.visible)
                              {
                                 _loc2_ = !§7o§.instance.paused;
                                 §§push(§9!#§);
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().visible = §§pop();
                                 if(!_loc4_)
                                 {
                                    break loop3;
                                 }
                                 §§push(Context3DUtils.§"[§);
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().§`!=§ = §§pop();
                                 §]!3§.visible = _loc2_;
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §-T§.visible = _loc2_;
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §9!#§.§ 4§();
                              }
                              if(§9!#§.visible)
                              {
                                 §9!#§.update(param1);
                                 break loop0;
                              }
                              §§push(§7o§.controlScheme.§+l§("left"));
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       §=_§(§2u§.LEFT);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       break loop2;
                                    }
                                    break;
                                 }
                                 addr00f5:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr00f5);
                        }
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           §=_§(§2u§.TOP);
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                        }
                        if(§7o§.controlScheme.§+l§("right"))
                        {
                           break loop2;
                        }
                        break;
                     }
                  }
                  §=_§(§2u§.RIGHT);
                  if(_loc4_)
                  {
                     break loop3;
                  }
                  break loop0;
               }
               if(§7o§.controlScheme.§+l§("down"))
               {
                  §=_§(§2u§.BOTTOM);
               }
               break loop0;
            }
            §-T§.update(param1);
            §§goto(addr0174);
         }
         if(§-T§.visible)
         {
            break loop1;
         }
         addr0174:
      }
      
      public function §"!N§(param1:Event = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§7o§.instance);
         §§push(§7o§.instance.paused);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         §§pop().§+D§(§§pop());
      }
      
      public function §=_§(param1:§2u§, param2:Object = undefined, param3:Object = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop10:
               while(true)
               {
                  if(_loc6_)
                  {
                     while(true)
                     {
                        if(param2 == null)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(true);
                           if(!_loc6_)
                           {
                              break loop10;
                           }
                           param2 = §§pop();
                        }
                        if(param3 == null)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           break loop0;
                        }
                        break loop1;
                     }
                  }
                  param3 = 1;
                  break loop1;
               }
               §§goto(addr006f);
            }
            §§push(true);
            if(!_loc7_)
            {
               if(param1 != §2u§.LEFT)
               {
                  if(_loc6_)
                  {
                     §§pop();
                     break;
                  }
                  break loop10;
               }
            }
            §§goto(addr0077);
         }
         §§push(param1 == §2u§.TOP);
         if(_loc6_)
         {
            addr006f:
            §§push(Boolean(§§pop()));
            if(!_loc7_)
            {
               addr0077:
               §§push(Boolean(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            loop3:
            while(true)
            {
               while(true)
               {
                  if(!_loc7_)
                  {
                     §§push(true);
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(param1 == §2u§.LEFT)
                     {
                        break loop3;
                     }
                     if(!_loc6_)
                     {
                        continue loop6;
                     }
                     §§pop();
                  }
                  §§push(param1 == §2u§.RIGHT);
                  if(!_loc7_)
                  {
                     break;
                  }
                  continue loop6;
               }
               §§push(Boolean(§§pop()));
               if(_loc6_)
               {
                  break;
               }
               continue loop6;
            }
            §§push(Boolean(§§pop()));
            continue loop6;
         }
         var _loc5_:* = §§pop();
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(editor.§#Z§ < 0)
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           break loop4;
                        }
                        §§push(_loc5_);
                        if(!_loc6_)
                        {
                           break loop6;
                        }
                        if(!§§pop())
                        {
                           break loop5;
                        }
                        if(_loc7_)
                        {
                           break loop4;
                        }
                     }
                     §§push(!_loc4_);
                     if(!_loc7_)
                     {
                        break loop6;
                     }
                     §§goto(addr011f);
                  }
                  §§goto(addr0116);
               }
               _loc4_ = §§pop();
               break;
            }
            while(true)
            {
               §§push(!_loc5_);
               if(_loc6_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               _loc5_ = §§pop();
               if(!_loc7_)
               {
                  addr0116:
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     break;
                  }
                  addr015c:
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        editor.§<-§(param2,param3);
                        if(_loc6_)
                        {
                        }
                     }
                     break loop4;
                  }
                  editor.§'M§(param2,param3);
                  break loop4;
               }
               addr0129:
               editor.§7w§(param3);
               break loop4;
            }
            addr011f:
            if(§§pop())
            {
               if(!_loc4_)
               {
                  editor.§;F§(param3);
                  if(_loc7_)
                  {
                  }
                  break;
               }
               §§goto(addr0129);
            }
            else
            {
               §§goto(addr015c);
               §§push(_loc4_);
            }
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               §9!#§.reset();
               if(!_loc2_)
               {
                  break;
               }
               §-T§.reset();
               if(!_loc2_)
               {
                  break;
               }
            }
            §7o§.instance.§+D§(false);
            break;
         }
      }
      
      public function §5!9§(param1:§2u§, param2:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §^!8§;
         while(true)
         {
            if(!_loc4_)
            {
               if(!param2.buttonDown)
               {
                  break;
               }
            }
            _loc3_ = §-T§.§]! §.§@c§;
            if(!_loc4_)
            {
               §§push(_loc3_.§!F§);
               if(!_loc4_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §=_§(param1);
                  }
               }
            }
            break;
         }
      }
      
      public function §6&§(param1:§>N§) : void
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
                  if(param1 is Game)
                  {
                     editor = param1;
                     editor.§69§ = this;
                     visible = true;
                     if(_loc3_)
                     {
                        break;
                     }
                     editor.§4!<§.copyFrom(§%x§);
                     if(!_loc3_)
                     {
                        §7o§.instance.§+D§(false);
                        §-T§.§=!;§();
                        §-T§.§>H§();
                        break loop0;
                     }
                  }
                  else
                  {
                     editor = null;
                     visible = false;
                  }
                  §<!9§.§%!1§();
                  if(!_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
               Context3DUtils.§ D§();
               break;
            }
         }
         break loop0;
      }
      
      public function §[`§(param1:§2u§, param2:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §=_§(param1,false);
         }
      }
      
      override public function §^g§() : void
      {
         var f7:Function;
         var downButton:§8!8§;
         var f6:Function;
         var f5:Function;
         var upButton:§8!8§;
         var f4:Function;
         var f3:Function;
         var rightButton:§8!8§;
         var f2:Function;
         var f1:Function;
         var leftButton:§8!8§;
         var f:Function;
         var downArrow:Bitmap;
         var upArrow:Bitmap;
         var rightArrow:Bitmap;
         var leftArrow:Bitmap;
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc12_:* = null as §8!8§;
         if(!_loc15_)
         {
            §]!3§ = new Sprite();
            if(_loc16_)
            {
               addChild(§]!3§);
               if(_loc16_)
               {
                  §-T§ = new §`f§(this);
               }
            }
         }
         var _loc1_:§ 7§ = new §?y§(§-T§);
         while(true)
         {
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc1_,new §@$§(true,0));
               if(_loc16_)
               {
                  addChild(§-T§);
                  if(!_loc16_)
                  {
                     break;
                  }
               }
            }
            §9!#§ = new §#a§(this);
            break;
         }
         _loc1_ = new §?y§(§9!#§);
         if(_loc16_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(true,0));
         }
         _loc1_ = new §?y§(§9!#§);
         while(true)
         {
            if(!_loc15_)
            {
               §&d§.§1$§().add(_loc1_,new §@$§(false,0));
               if(!_loc16_)
               {
                  break;
               }
            }
            addChild(§9!#§);
            break;
         }
         §§push("editor/ScrollArrow.png");
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Bitmap = §2!B§.§83§(_loc2_);
         §§push(_loc3_.width / layout.scale.x);
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.height / layout.scale.y);
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         leftArrow = _loc3_;
         loop3:
         while(true)
         {
            while(true)
            {
               if(!_loc15_)
               {
                  leftArrow.rotation = -90;
                  §]!3§.addChild(leftArrow);
                  if(!_loc15_)
                  {
                     rightArrow = §2!B§.§83§(_loc2_);
                     rightArrow.rotation = 90;
                     if(_loc15_)
                     {
                        break;
                     }
                     §]!3§.addChild(rightArrow);
                     upArrow = §2!B§.§83§(_loc2_);
                     if(_loc15_)
                     {
                        break loop3;
                     }
                  }
                  §]!3§.addChild(upArrow);
               }
               downArrow = §2!B§.§83§(_loc2_);
               break loop3;
            }
            §]!3§.addChild(downArrow);
            if(!_loc15_)
            {
               §§push(§§newactivation());
               §§push(§[`§);
               if(!_loc15_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[5] = §§pop();
               leftButton = new §8!8§(function(param1:MouseEvent):void
               {
                  f(§2u§.LEFT,param1);
               });
               if(!_loc15_)
               {
                  §§push(§§newactivation());
                  §§push(§5!9§);
                  if(_loc16_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[7] = §§pop();
               }
            }
            §§goto(addr0249);
         }
         downArrow.rotation = 180;
         if(!_loc15_)
         {
            break loop4;
         }
         addr0249:
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         if(_loc16_)
         {
            leftButton.addEventListener(MouseEvent.ROLL_OVER,_loc6_);
            if(_loc16_)
            {
               §§push(§§newactivation());
               §§push(§[`§);
               if(_loc16_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[8] = §§pop();
               if(_loc16_)
               {
                  rightButton = new §8!8§(function(param1:MouseEvent):void
                  {
                     f2(§2u§.RIGHT,param1);
                  });
                  if(_loc16_)
                  {
                     §§push(§§newactivation());
                     §§push(§5!9§);
                     if(!_loc15_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[10] = §§pop();
                  }
               }
            }
         }
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            if(_loc16_)
            {
               rightButton.addEventListener(MouseEvent.ROLL_OVER,_loc7_);
               if(_loc16_)
               {
                  §§push(§§newactivation());
                  §§push(§[`§);
                  if(!_loc15_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().§§slot[11] = §§pop();
                  if(!_loc16_)
                  {
                     break;
                  }
               }
            }
            upButton = new §8!8§(function(param1:MouseEvent):void
            {
               f4(§2u§.TOP,param1);
            });
            if(_loc16_)
            {
               break;
            }
            §§goto(addr031e);
         }
         §§push(§§newactivation());
         §§push(§5!9§);
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         §§pop().§§slot[13] = §§pop();
         addr031e:
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            if(_loc16_)
            {
               upButton.addEventListener(MouseEvent.ROLL_OVER,_loc8_);
               if(!_loc16_)
               {
                  break;
               }
               §§push(§§newactivation());
               §§push(§[`§);
               if(_loc16_)
               {
                  §§push(§§pop());
               }
               §§pop().§§slot[14] = §§pop();
               if(!_loc16_)
               {
                  break;
               }
            }
            downButton = new §8!8§(function(param1:MouseEvent):void
            {
               f6(§2u§.BOTTOM,param1);
            });
            if(!_loc15_)
            {
               break;
            }
            §§goto(addr0389);
         }
         §§push(§§newactivation());
         §§push(§5!9§);
         if(_loc16_)
         {
            §§push(§§pop());
         }
         §§pop().§§slot[16] = §§pop();
         addr0389:
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         var _loc9_:* = §§pop();
         if(!_loc15_)
         {
            downButton.addEventListener(MouseEvent.ROLL_OVER,_loc9_);
         }
         §§push(0);
         if(_loc16_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push([leftButton,rightButton,upButton,downButton]);
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc11_:* = §§pop();
         if(_loc16_)
         {
            loop0:
            while(_loc10_ < int(_loc11_.length))
            {
               _loc12_ = _loc11_[_loc10_];
               while(true)
               {
                  if(!_loc15_)
                  {
                     _loc10_++;
                     if(_loc15_)
                     {
                        break;
                     }
                  }
                  _loc12_.graphics.beginFill(0,0);
                  if(_loc16_)
                  {
                     break;
                  }
                  addr0427:
                  §]!3§.addChild(_loc12_);
                  continue loop0;
               }
               _loc12_.graphics.drawRect(0,0,100,100);
               if(_loc15_)
               {
                  continue;
               }
               §§goto(addr0427);
            }
         }
         _loc1_ = new §?y§(leftButton);
         while(true)
         {
            if(!_loc15_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc1_);
                  if(!_loc15_)
                  {
                     if(_loc5_ == null)
                     {
                        §§push(new §;R§(true));
                        break;
                     }
                  }
                  §§push(new §`!W§(true,_loc5_));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               if(_loc15_)
               {
                  break;
               }
            }
            §"!9§.§5C§(new §?y§(leftButton),new §?y§(§-T§));
            break;
         }
         _loc1_ = new §?y§(leftButton);
         var _loc13_:§ 7§ = new §?y§(§-T§);
         if(_loc16_)
         {
            §&d§.§1$§().add(_loc1_,new §+X§(0,§2u§.BOTTOM),_loc13_);
         }
         _loc1_ = new §?y§(rightButton);
         while(true)
         {
            if(!_loc15_)
            {
               while(true)
               {
                  §§push(§&d§.§1$§());
                  §§push(_loc1_);
                  if(!_loc15_)
                  {
                     if(_loc5_ == null)
                     {
                        §§push(new §;R§(true));
                        break;
                     }
                  }
                  §§push(new §`!W§(true,_loc5_));
                  break;
               }
               §§pop().add(§§pop(),§§pop());
               if(!_loc16_)
               {
                  break;
               }
            }
            §"!9§.§5C§(new §?y§(rightButton),new §?y§(§-T§));
            break;
         }
         _loc1_ = new §?y§(rightButton);
         if(!_loc15_)
         {
            §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.RIGHT));
         }
         _loc1_ = new §?y§(upButton);
         if(_loc16_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc1_);
               if(!_loc15_)
               {
                  if(_loc5_ == null)
                  {
                     §§push(new §;R§(false));
                     break;
                  }
               }
               §§push(new §`!W§(false,_loc5_));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         _loc1_ = new §?y§(upButton);
         if(_loc16_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(true,0));
         }
         _loc1_ = new §?y§(upButton);
         _loc13_ = new §?y§(§-T§);
         if(_loc16_)
         {
            §&d§.§1$§().add(_loc1_,new §+X§(0,§2u§.BOTTOM),_loc13_);
         }
         _loc1_ = new §?y§(downButton);
         if(_loc16_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc1_);
               if(_loc16_)
               {
                  if(_loc5_ == null)
                  {
                     §§push(new §;R§(false));
                     break;
                  }
               }
               §§push(new §`!W§(false,_loc5_));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         _loc1_ = new §?y§(downButton);
         if(!_loc15_)
         {
            §&d§.§1$§().add(_loc1_,new §@$§(true,0));
         }
         _loc1_ = new §?y§(downButton);
         while(true)
         {
            if(_loc16_)
            {
               §&d§.§1$§().add(_loc1_,§^`§.§ !P§(§2u§.BOTTOM));
               if(!_loc16_)
               {
                  break;
               }
               layout.§6"§.push(new §#!7§(null,null,new §#!6§(function():void
               {
                  var _temp_1:* = true;
                  var _loc1_:Boolean = false;
                  var _loc2_:Boolean = _temp_1;
                  leftArrow.x = leftButton.x;
                  leftArrow.y = leftButton.y + (leftButton.height + leftArrow.height) / 2;
                  if(_loc2_)
                  {
                     rightArrow.x = rightButton.x + rightArrow.width;
                     if(_loc2_)
                     {
                        rightArrow.y = rightButton.y + (rightButton.height - rightArrow.height) / 2;
                        upArrow.x = (upButton.width - upArrow.width) / 2;
                        if(_loc2_)
                        {
                           upArrow.y = upButton.y + upButton.height - upArrow.height;
                           downArrow.x = (downButton.width + downArrow.width) / 2;
                           if(!_loc1_)
                           {
                              downArrow.y = downButton.y + downArrow.height;
                           }
                        }
                     }
                  }
               })));
               leftArrow.x = leftButton.x;
               leftArrow.y = leftButton.y + (leftButton.height + leftArrow.height) / 2;
            }
            rightArrow.x = rightButton.x + rightArrow.width;
            rightArrow.y = rightButton.y + (rightButton.height - rightArrow.height) / 2;
            if(_loc16_)
            {
               upArrow.x = (upButton.width - upArrow.width) / 2;
            }
            upArrow.y = upButton.y + upButton.height - upArrow.height;
            downArrow.x = (downButton.width + downArrow.width) / 2;
            break;
         }
         downArrow.y = downButton.y + downArrow.height;
         §§push(§§findproperty(§,C§));
         §§push("editor/ZoomInButton.png");
         §§push(§4!;§);
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc14_:§,C§ = new §§pop().§,C§(§§pop(),§§pop());
         _loc1_ = new §?y§(_loc14_);
         _loc13_ = new §?y§(rightButton);
         if(!_loc15_)
         {
            §&d§.§1$§().add(_loc1_,new §4$§(true,0.5),_loc13_);
         }
         _loc1_ = new §?y§(_loc14_);
         _loc13_ = new §?y§(upButton);
         if(_loc16_)
         {
            §&d§.§1$§().add(_loc1_,new §4$§(false,0.5),_loc13_);
            if(!_loc15_)
            {
               §]!3§.addChild(_loc14_);
            }
         }
         §§push(§§findproperty(§,C§));
         §§push("editor/ZoomOutButton.png");
         §§push(§?![§);
         if(!_loc15_)
         {
            §§push(§§pop());
         }
         _loc14_ = new §§pop().§,C§(§§pop(),§§pop());
         _loc1_ = new §?y§(_loc14_);
         _loc13_ = new §?y§(rightButton);
         if(!_loc15_)
         {
            §&d§.§1$§().add(_loc1_,new §4$§(true,0.5),_loc13_);
         }
         _loc1_ = new §?y§(_loc14_);
         _loc13_ = new §?y§(downButton);
         §&d§.§1$§().add(_loc1_,new §4$§(false,0.5),_loc13_);
         §]!3§.addChild(_loc14_);
         while(true)
         {
            if(_loc16_)
            {
               §%x§ = new Rectangle();
               if(!_loc16_)
               {
                  break;
               }
               §"!9§.§#m§(new § 6§(§%x§),new §?y§(rightButton));
            }
            §"!9§.§<_§(new § 6§(§%x§),new §?y§(downButton));
            break;
         }
         §"!9§.§0>§(new § 6§(§%x§),new §?y§(leftButton));
         if(_loc16_)
         {
            §"!9§.§5C§(new § 6§(§%x§),new §?y§(upButton));
         }
      }
   }
}

