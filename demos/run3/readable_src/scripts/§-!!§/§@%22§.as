package §-!!§
{
   import §!!$§.§?y§;
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §[^§.§!A§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.character.CharacterRegistry;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxe.Timer;
   import haxeutils.math.geom.Point3D;
   
   public class §@"§ extends Sprite
   {
      
      public var §-7§:TextField;
      
      public var §=!$§:Number;
      
      public var §>U§:Number;
      
      public var §0!A§:Number;
      
      public var § !;§:Rectangle;
      
      public var §'!"§:Number;
      
      public var backgroundColor:int;
      
      public function §@"§(param1:TextFormat, param2:int, param3:Number, param4:Number = 5, param5:Object = undefined, param6:Object = undefined, param7:Rectangle = undefined, param8:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         §=!$§ = 0;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc12_)
                  {
                     super();
                     backgroundColor = param2;
                     §>U§ = param4;
                     while(true)
                     {
                        §§push(§§findproperty(§'!"§));
                        if(_loc13_)
                        {
                           if(param5 == null)
                           {
                              §§push(param4);
                              break;
                           }
                        }
                        §§push(Number(param5));
                        if(_loc13_)
                        {
                        }
                        break;
                     }
                     §§pop().§'!"§ = §§pop();
                     §0!A§ = param3;
                     § !;§ = param7;
                     if(!_loc13_)
                     {
                        break;
                     }
                     §-7§ = new TextField();
                     §-7§.defaultTextFormat = param1;
                     if(_loc12_)
                     {
                        continue loop2;
                     }
                     if(param6 == null)
                     {
                        §-7§.embedFonts = param1.font != null;
                        addr00b7:
                        §-7§.x = param4;
                        if(!_loc13_)
                        {
                           break loop1;
                        }
                     }
                     else
                     {
                        §-7§.embedFonts = param6;
                        if(!_loc12_)
                        {
                           §§goto(addr00b7);
                        }
                     }
                     §-7§.y = param4;
                     §-7§.width = param3;
                     if(_loc12_)
                     {
                        break loop0;
                     }
                  }
                  §-7§.selectable = false;
                  §-7§.multiline = true;
                  break;
               }
               §-7§.wordWrap = true;
               break;
            }
            §-7§.autoSize = "left";
            break;
         }
         addChild(§-7§);
         var _loc9_:TextField = §-7§;
         var _loc10_:* = null;
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc13_)
               {
                  if(_loc10_ != null)
                  {
                     break;
                  }
                  if(_loc12_)
                  {
                     break loop2;
                  }
               }
               _loc10_ = int(Number(_loc9_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc9_),new §=!]§(int(_loc10_)));
            break;
         }
         var _loc11_:§ 7§ = new §?y§(§-7§);
         while(true)
         {
            if(!_loc12_)
            {
               §&d§.§1$§().add(_loc11_,new §;R§(true));
               if(_loc12_)
               {
                  break;
               }
            }
            visible = false;
            if(_loc13_)
            {
               if(param8)
               {
                  if(!_loc12_)
                  {
                     break;
                  }
               }
            }
            §§goto(addr01cf);
         }
         Lib.current.stage.addEventListener(MouseEvent.CLICK,hide);
         addr01cf:
      }
      
      public function §<%§(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(true);
                        if(!_loc2_)
                        {
                           §§push(true);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(param1 == null)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§pop();
                           if(_loc2_)
                           {
                              break loop2;
                           }
                        }
                        §§push(param1.length == 0);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        break;
                     }
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§pop();
                        §§push(stage == null);
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     §§goto(addr0064);
                  }
                  addr0064:
                  if(Boolean(§§pop()))
                  {
                     while(true)
                     {
                        if(_loc3_)
                        {
                           visible = false;
                           if(!_loc3_)
                           {
                              §§goto(addr00ed);
                           }
                        }
                        §§push(param1);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     §§goto(addr014a);
                  }
                  else
                  {
                     visible = true;
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§=!$§));
                     §§push(Timer.stamp());
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     §§pop().§=!$§ = §§pop();
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
               }
               §-7§.wordWrap = true;
               §-7§.width = §0!A§;
               §-7§.text = param1;
               break loop0;
            }
            §-7§.wordWrap = false;
            if(!_loc2_)
            {
               §§goto(addr00ed);
            }
            §§goto(addr00f7);
         }
         if(§-7§.numLines == 1)
         {
            if(_loc3_)
            {
               break loop1;
            }
         }
         addr00ed:
         graphics.clear();
         addr00f7:
         graphics.beginFill(backgroundColor);
         graphics.drawRoundRect(0,0,§-7§.width + §>U§ * 2,§-7§.height + §>U§ * 2,§'!"§);
         addr014a:
         return param1;
      }
      
      public function §+![§(param1:Number, param2:Number, param3:Number, param4:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(stage == null)
         {
            return;
         }
         y = param2 + param3;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc6_)
               {
                  while(true)
                  {
                     §§push(y + height);
                     if(_loc5_)
                     {
                        if(§ !;§ == null)
                        {
                           §§push(Number(stage.stageHeight));
                           break;
                        }
                     }
                     §§push(§ !;§.bottom);
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     break loop0;
                  }
               }
               if(param4)
               {
                  break loop0;
               }
               § !^§(param1,param2,param3,true);
               break;
            }
            return;
         }
         y = (§ !;§ != null ? § !;§.bottom : Number(stage.stageHeight)) - height;
         break loop1;
      }
      
      public function § !^§(param1:Number, param2:Number, param3:Number, param4:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  if(stage == null)
                  {
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     y = param1 - param3 - height;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  if(y >= (§ !;§ != null ? § !;§.x : 0))
                  {
                     break loop0;
                  }
               }
               if(param4)
               {
                  break;
               }
               §+![§(param1,param2,param3,true);
               break loop0;
            }
            y = § !;§ != null ? § !;§.x : 0;
            break;
         }
      }
      
      public function hide(param1:MouseEvent) : void
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
                     §§push(false);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     if(!visible)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Timer.stamp());
                  if(_loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§push(§=!$§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 0.1);
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§push(§§pop() > §§pop());
                  if(!_loc3_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr0088);
            }
            §§push(Boolean(§§pop()));
            break loop2;
         }
         visible = false;
         addr0088:
      }
      
      public function §6F§(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(stage == null)
         {
            return;
         }
         x = param1 - width / 2;
         if(_loc2_)
         {
            if(x < (§ !;§ != null ? § !;§.x : 0))
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     x = § !;§ != null ? § !;§.x : 0;
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  x = (§ !;§ != null ? § !;§.right : Number(stage.stageWidth)) - width;
                  addr00d7:
                  break;
               }
            }
            else
            {
               while(true)
               {
                  §§push(x + width);
                  if(!_loc3_)
                  {
                     if(§ !;§ == null)
                     {
                        §§push(Number(stage.stageWidth));
                        break;
                     }
                  }
                  §§push(§ !;§.right);
                  break;
               }
               if(§§pop() > §§pop())
               {
                  §§goto(addr00d7);
               }
            }
         }
      }
   }
}

