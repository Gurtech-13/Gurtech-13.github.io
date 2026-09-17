package §-!!§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import game.§11§;
   import game.§>3§;
   import game.§>f§;
   import game.Game;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.save.§0d§;
   import com.player03.run3.save.§]k§;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.QuaternionUtils;
   import unitsystem.§7o§;
   
   public class §8!8§ extends Sprite
   {
      
      public var §=&§:Number;
      
      public var §+!T§:Number;
      
      public var §,!O§:Sprite;
      
      public var §5!#§:Sprite;
      
      public var §4c§:Sprite;
      
      public var §1!$§:§@b§;
      
      public var §2!I§:int;
      
      public function §8!8§(param1:Function)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §+!T§ = 0;
            §=&§ = 0;
            while(true)
            {
               if(_loc3_)
               {
                  §2!I§ = 0;
                  if(_loc2_)
                  {
                     break;
                  }
                  super();
                  §5!C§(§@b§.OFF);
                  mouseChildren = false;
                  if(_loc2_)
                  {
                     break;
                  }
               }
               if(param1 != null)
               {
                  useHandCursor = true;
                  buttonMode = true;
                  addEventListener(MouseEvent.CLICK,param1);
               }
               break;
            }
         }
      }
      
      override public function set width(param1:Number) : void
      {
         if(§=&§ != 0)
         {
            §@F§();
         }
         super.width = param1;
      }
      
      override public function set height(param1:Number) : void
      {
         if(§+!T§ != 0)
         {
            §@F§();
         }
         super.height = param1;
      }
      
      public function §5!C§(param1:§@b§) : §@b§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_)
            {
               §1!$§ = param1;
               while(true)
               {
                  if(§,!O§ != null)
                  {
                     §,!O§.visible = param1 == §@b§.OFF;
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  if(§5!#§ != null)
                  {
                     §5!#§.visible = param1 == §@b§.HOVER;
                  }
                  if(§4c§ != null)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            §4c§.visible = param1 == §@b§.DOWN;
            break;
         }
         return param1;
      }
      
      public function §?<§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            while(true)
            {
               §§push(§§findproperty(§5!C§));
               if(!_loc3_)
               {
                  if(!param1.buttonDown)
                  {
                     §§push(§@b§.HOVER);
                     break;
                  }
               }
               §§push(§@b§.DOWN);
               break;
            }
            §§pop().§5!C§(§§pop());
         }
      }
      
      public function §4'§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §5!C§(§@b§.OFF);
         }
      }
      
      public function §04§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §5!C§(§@b§.DOWN);
         }
      }
      
      override public function get width() : Number
      {
         return super.width - §=&§;
      }
      
      override public function get height() : Number
      {
         return super.height - §=&§;
      }
      
      public function §]!J§(param1:§@b§) : Sprite
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(_loc3_)
               {
                  switch(param1.index)
                  {
                     case 0:
                        if(§,!O§ == null)
                        {
                           §,!O§ = new Sprite();
                           §,!O§.visible = §1!$§ == §@b§.OFF;
                           addChildAt(§,!O§,§2!I§);
                           addEventListener(MouseEvent.MOUSE_OUT,§4'§);
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                        return §,!O§;
                     case 1:
                        if(§5!#§ == null)
                        {
                           §5!#§ = new Sprite();
                           §5!#§.visible = §1!$§ == §@b§.HOVER;
                           addChildAt(§5!#§,§2!I§);
                           break;
                        }
                        break loop0;
                     case 2:
                        if(§4c§ == null)
                        {
                           if(!_loc2_)
                           {
                              §4c§ = new Sprite();
                              §4c§.visible = §1!$§ == §@b§.DOWN;
                              addChildAt(§4c§,§2!I§);
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                           }
                           addEventListener(MouseEvent.MOUSE_DOWN,§04§);
                           addEventListener(MouseEvent.MOUSE_UP,§?<§);
                        }
                        break loop1;
                     default:
                        return;
                  }
               }
               addEventListener(MouseEvent.MOUSE_OVER,§?<§);
               if(_loc3_)
               {
                  break loop0;
               }
               break;
            }
            return §4c§;
         }
         return §5!#§;
      }
      
      public function §@F§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         graphics.clear();
         loop0:
         while(true)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  if(§,!O§ != null)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §,!O§.graphics.clear();
                  }
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(§5!#§ != null)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §5!#§.graphics.clear();
                           if(_loc2_)
                           {
                              break loop2;
                           }
                        }
                        if(§4c§ != null)
                        {
                           break loop1;
                        }
                        break;
                     }
                     addr0097:
                     §=&§ = 0;
                     if(!_loc2_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               §4c§.graphics.clear();
               §§goto(addr0097);
            }
            break loop2;
         }
      }
      
      public function §5]§(param1:Number, param2:int, param3:int, param4:Number) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:Rectangle = getBounds(this);
         if(_loc7_)
         {
            §[a§(param1,param2,1,param3,param4,§@b§.OFF,_loc5_);
            while(true)
            {
               if(!_loc6_)
               {
                  §[a§(param1,param2,1,param3,param4,§@b§.HOVER,_loc5_);
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               §[a§(param1,param3,1,param2,param4,§@b§.DOWN,_loc5_);
               break;
            }
         }
      }
      
      public function addRectangle2(param1:Graphics, param2:Number, param3:int, param4:Number = 1, param5:Object = undefined, param6:Object = undefined, param7:Rectangle = undefined) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop5:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        param1.beginFill(param3,param4);
                        if(!_loc10_)
                        {
                           break;
                        }
                        §§push(false);
                        if(_loc11_)
                        {
                           break loop1;
                        }
                        if(param5 == null)
                        {
                           break loop5;
                        }
                        if(_loc11_)
                        {
                           break loop1;
                        }
                        §§pop();
                        if(_loc11_)
                        {
                           break loop0;
                        }
                     }
                     §§push(param6 == null);
                     if(!_loc11_)
                     {
                        §§push(!§§pop());
                        if(!_loc11_)
                        {
                           break loop1;
                        }
                        break loop5;
                     }
                     break loop1;
                  }
                  §§goto(addr0083);
               }
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     break loop0;
                  }
                  break loop6;
               }
               param1.lineStyle();
               break loop6;
            }
            §§push(Boolean(§§pop()));
            break loop5;
         }
         param1.lineStyle(param6,param5);
         if(_loc11_)
         {
         }
         addr0083:
         §§push(width);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(height);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               if(_loc10_)
               {
                  if(param7 == null)
                  {
                     param1.drawRoundRect(-param2,-param2,width + param2 * 2,height + param2 * 2,param2 * 3);
                     if(_loc10_)
                     {
                        break loop2;
                     }
                     break;
                  }
                  if(_loc11_)
                  {
                     break loop2;
                  }
               }
               param1.drawRoundRect(param7.x - param2,param7.y - param2,param7.width + param2 * 2,param7.height + param2 * 2,param2 * 3);
               if(!_loc11_)
               {
                  break loop2;
               }
               §§goto(addr0158);
            }
            return;
         }
         §§push(§§findproperty(§=&§));
         §§push(§=&§);
         if(!_loc11_)
         {
            §§push(width);
            if(_loc10_)
            {
               §§push(§§pop() - _loc8_);
            }
            §§push(§§pop() + §§pop());
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§pop().§=&§ = §§pop();
         if(_loc10_)
         {
            addr0158:
            while(true)
            {
               §§push(§§findproperty(§+!T§));
               §§push(§+!T§);
               if(_loc10_)
               {
                  §§push(height);
                  if(!_loc11_)
                  {
                     §§push(§§pop() - _loc9_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               §§push(Number(§§pop()));
               break;
            }
            §§pop().§+!T§ = §§pop();
         }
         break loop3;
      }
      
      public function §[a§(param1:Number, param2:int, param3:Number = 1, param4:Object = undefined, param5:Object = undefined, param6:§@b§ = undefined, param7:Rectangle = undefined) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         while(true)
         {
            if(!_loc9_)
            {
               if(param6 != null)
               {
                  addRectangle2(§]!J§(param6).graphics,param1,param2,param3,param4,param5,param7);
                  break;
               }
               if(!_loc8_)
               {
                  break;
               }
            }
            addRectangle2(graphics,param1,param2,param3,param4,param5,param7);
            if(_loc8_)
            {
            }
            break;
         }
      }
      
      public function §'Y§(param1:DisplayObject, param2:§@b§ = undefined, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(param2 == null)
            {
               §§push(param3);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     §§push(§§findproperty(§2!I§));
                     §§push(§2!I§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop().§2!I§ = §§pop();
                     addChildAt(param1,0);
                     if(_loc5_)
                     {
                     }
                     break;
                  }
                  addChild(param1);
                  if(_loc5_)
                  {
                  }
                  break;
               }
            }
            else
            {
               §§push(param3);
            }
            if(§§pop())
            {
               §]!J§(param2).addChildAt(param1,0);
               break;
            }
            §]!J§(param2).addChild(param1);
            break;
         }
      }
   }
}

