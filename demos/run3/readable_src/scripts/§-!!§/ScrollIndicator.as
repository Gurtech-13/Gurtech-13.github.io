package §-!!§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-v§.§+'§;
   import §4n§.§!L§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.level.Level;
   import com.player03.run3.save.§]k§;
   import flash.Boot;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import motion.easing.§[!4§;
   import nme3D.Scene3D;
   
   public class ScrollIndicator extends Sprite
   {
      
      public static var §>!Z§:String = null;
      
      public var §]@§:§&l§;
      
      public var §00§:Number;
      
      public var §4!$§:Boolean;
      
      public var §-O§:Number;
      
      public var §1A§:int;
      
      public var §]b§:int;
      
      public function ScrollIndicator(param1:§&l§, param2:int, param3:Object = undefined, param4:String = undefined, param5:Object = undefined)
      {
         var image:Bitmap;
         var direction1:int;
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            direction1 = param2;
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
                        if(_loc6_)
                        {
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 if(param3 == null)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(0.75);
                                    if(!_loc6_)
                                    {
                                       break loop4;
                                    }
                                    param3 = §§pop();
                                 }
                                 if(param5 == null)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(0.75);
                                       break loop4;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   if(_loc6_)
                                                   {
                                                      §§push(null);
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      if(_loc7_)
                                                      {
                                                         break loop10;
                                                      }
                                                      if(§§pop() != §§pop())
                                                      {
                                                         break loop9;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         break loop8;
                                                      }
                                                      §§push(ScrollIndicator.§>!Z§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc7_)
                                                         {
                                                            break loop7;
                                                         }
                                                      }
                                                   }
                                                   param4 = §§pop();
                                                   §§push(param4);
                                                   break loop7;
                                                }
                                                §§goto(addr00d4);
                                             }
                                             §§goto(addr00d6);
                                          }
                                          §§goto(addr00f5);
                                       }
                                       §§goto(addr0135);
                                    }
                                    addr00d6:
                                    addr00d4:
                                    if(§§pop() == null)
                                    {
                                       Boot.lastError = new Error();
                                       §§goto(addr00e4);
                                    }
                                    addr00f5:
                                    image = §2!B§.§83§(param4);
                                    §&d§.§1$§().§6"§.push(new §#!7§(null,null,new §#!6§(function():void
                                    {
                                       var _temp_1:* = false;
                                       var _loc1_:Boolean = true;
                                       var _loc2_:Boolean = _temp_1;
                                       switch(direction1)
                                       {
                                          case 1:
                                             image.y = image.width;
                                             if(!_loc2_)
                                             {
                                                image.rotation = 270;
                                             }
                                             break;
                                          case 2:
                                             image.x = image.width;
                                             image.y = image.height;
                                             if(!_loc2_)
                                             {
                                                image.rotation = 180;
                                                if(_loc1_)
                                                {
                                                }
                                                break;
                                             }
                                             addr007a:
                                             image.rotation = 90;
                                             break;
                                          case 3:
                                             image.x = image.height;
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             §§goto(addr007a);
                                       }
                                    })));
                                    break loop8;
                                 }
                                 §§goto(addr0054);
                              }
                              §00§ = param3;
                              §-O§ = param5;
                              if(_loc6_)
                              {
                                 continue loop10;
                              }
                              §§goto(addr00ba);
                           }
                           param5 = §§pop();
                           addr0054:
                           §1A§ = 0;
                           §4!$§ = false;
                           super();
                           §]@§ = param1;
                           if(!_loc6_)
                           {
                              break loop1;
                           }
                           §]b§ = direction1;
                           if(!_loc7_)
                           {
                              break loop5;
                           }
                           addr0135:
                           switch(direction1)
                           {
                              case 1:
                                 image.y = image.width;
                                 if(_loc6_)
                                 {
                                    image.rotation = 270;
                                    break;
                                 }
                                 addr0185:
                                 image.y = image.height;
                                 if(_loc6_)
                                 {
                                    image.rotation = 180;
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    break loop2;
                                 }
                                 addr01bf:
                                 image.rotation = 90;
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              case 2:
                                 image.x = image.width;
                                 §§goto(addr0185);
                              case 3:
                                 image.x = image.height;
                                 if(!_loc6_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr01bf);
                           }
                           addChild(image);
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           buttonMode = true;
                           useHandCursor = true;
                        }
                        addEventListener(Event.ADDED_TO_STAGE,§;#§);
                        break loop0;
                     }
                     §§goto(addr0270);
                  }
                  §§goto(addr0231);
               }
               addEventListener(MouseEvent.CLICK,§#_§);
               §§goto(addr0270);
            }
            addEventListener(MouseEvent.MOUSE_DOWN,§04§);
            addEventListener(MouseEvent.MOUSE_OUT,§4'§);
            addr0231:
            addEventListener(MouseEvent.ROLL_OUT,§4'§);
            addEventListener(MouseEvent.MOUSE_UP,§4'§);
            if(_loc6_)
            {
               break loop1;
            }
            addr0270:
            return;
         }
         addr00e4:
         throw new ArgumentError("Must specify either imagePath or defaultImagePath!");
      }
      
      public function §[_§() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§]@§._cameraX);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§]@§._cameraY);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§]b§);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            loop0:
            switch(_loc3_)
            {
               case 0:
                  §§push(_loc1_);
                  if(!_loc5_)
                  {
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§-O§ * §]@§.width);
                           if(!_loc5_)
                           {
                              §§push(0.2);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + §§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc4_)
                                    {
                                       _loc1_ = Number(§§pop());
                                       if(_loc4_)
                                       {
                                       }
                                       break loop0;
                                    }
                                    addr011d:
                                    _loc1_ = §§pop();
                                    break loop0;
                                 }
                                 §§goto(addr0155);
                              }
                              else
                              {
                                 addr0136:
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                                 §§push(0.2);
                              }
                           }
                           else
                           {
                              addr00ab:
                              §§push(§]@§.height);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 §§push(0.2);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       addr00d6:
                                       _loc2_ = §§pop() - §§pop();
                                       break loop0;
                                    }
                                    addr0129:
                                    addr0129:
                                    §§push(§]@§.height);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr0136);
                                    }
                                 }
                                 else
                                 {
                                    addr00fd:
                                    §§push(§§pop() * §§pop());
                                    §§push(0.2);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_)
                                       {
                                          break loop1;
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc5_)
                                       {
                                          §§goto(addr011d);
                                       }
                                       else
                                       {
                                          addr0123:
                                          §§goto(addr0129);
                                          §§push(§-O§);
                                       }
                                    }
                                 }
                              }
                           }
                           addr0140:
                           §§push(§§pop() * §§pop());
                           break loop1;
                        }
                        addr0154:
                        §§goto(addr0155);
                     }
                     addr0155:
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                        break loop2;
                     }
                     _loc2_ = §§pop();
                     break;
                  }
                  §§goto(addr00d6);
               case 1:
                  §§goto(addr00ab);
                  §§push(_loc2_);
                  §§push(§-O§);
               case 2:
                  while(true)
                  {
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc4_)
                              {
                                 §§push(§-O§);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§]@§.width);
                                 if(!_loc4_)
                                 {
                                    break loop5;
                                 }
                                 §§goto(addr00fd);
                              }
                              §§goto(addr0123);
                           }
                           §§goto(addr0129);
                        }
                        §§goto(addr0136);
                     }
                     §§goto(addr0140);
                  }
                  §§goto(addr0154);
               case 3:
                  §§goto(addr0123);
                  §§push(_loc2_);
            }
         }
         §§push(§]@§.§^!&§(_loc1_,_loc2_,0.2,§[!4§.§3!F§()));
         §§push(§[_§);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         §§pop().onComplete(§§pop());
      }
      
      public function §4'§(param1:MouseEvent = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               §4!$§ = false;
               if(!_loc3_)
               {
                  break;
               }
            }
            Actuate.stop(§]@§,null,false,false);
            break;
         }
      }
      
      public function §04§(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               Actuate.stop(§]@§,null,false,false);
               if(_loc3_)
               {
                  break;
               }
               §[_§();
               if(_loc3_)
               {
                  break;
               }
               §4!$§ = true;
               if(_loc3_)
               {
                  break;
               }
            }
            §1A§ = 0;
            break;
         }
      }
      
      public function §;l§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc4_)
            {
               if(stage != null)
               {
                  §§push(§]b§);
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     switch(_loc2_)
                     {
                        case 0:
                           visible = §]@§._cameraX < §]@§.§[!Y§.right - 1e-10;
                           break;
                        case 1:
                           visible = §]@§._cameraY > §]@§.§[!Y§.top + 1e-10;
                           if(_loc4_)
                           {
                           }
                           break;
                        case 2:
                           visible = §]@§._cameraX > §]@§.§[!Y§.left + 1e-10;
                           break;
                        case 3:
                           visible = §]@§._cameraY < §]@§.§[!Y§.bottom - 1e-10;
                     }
                  }
                  while(true)
                  {
                     §§push(§4!$§);
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        §§push(§§findproperty(§1A§));
                        §§push(§1A§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§pop().§1A§ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(!visible);
                     }
                     if(§§pop())
                     {
                        §4'§();
                     }
                     break;
                  }
                  return;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            removeEventListener(Event.ENTER_FRAME,§;l§);
            break;
         }
      }
      
      public function §#_§(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §4'§();
            if(_loc6_)
            {
               if(§1A§ < 10)
               {
                  §§push(§]@§._cameraX);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(§]@§._cameraY);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  §§push(§]b§);
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  switch(_loc4_)
                  {
                     case 0:
                        loop1:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 §§push(§00§);
                                 if(!_loc5_)
                                 {
                                    §§push(§]@§.width);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_)
                                       {
                                          _loc2_ = Number(§§pop());
                                          break loop1;
                                       }
                                       break loop2;
                                    }
                                 }
                                 else
                                 {
                                    addr00c9:
                                    §§push(§]@§.height);
                                    if(_loc6_)
                                    {
                                       addr00d7:
                                       §§push(§§pop() - §§pop() * §§pop());
                                       if(_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc6_)
                                          {
                                          }
                                          break loop1;
                                       }
                                       break loop2;
                                    }
                                    addr010a:
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(!_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    break loop2;
                                 }
                                 addr0132:
                                 addr012c:
                                 §§push(§00§);
                                 §§push(§]@§.height);
                                 break;
                              }
                              addr0138:
                              addr0148:
                              §§push(§§pop() + §§pop() * §§pop());
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    addr0147:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc3_ = §§pop();
                              break loop1;
                           }
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              break;
                           }
                           break;
                        }
                        break;
                     case 1:
                        §§push(_loc3_);
                        §§push(§00§);
                        if(!_loc5_)
                        {
                           §§goto(addr00c9);
                        }
                        §§goto(addr00d7);
                     case 2:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              while(true)
                              {
                                 §§push(§00§);
                                 if(!_loc5_)
                                 {
                                    §§push(§]@§.width);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr0132);
                              }
                              §§goto(addr0138);
                           }
                           §§goto(addr0147);
                        }
                        §§goto(addr0148);
                     case 3:
                        §§goto(addr012c);
                        §§push(_loc3_);
                     default:
                        break loop1;
                  }
                  return;
               }
            }
         }
      }
      
      public function §;#§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            addEventListener(Event.ENTER_FRAME,§;l§);
         }
      }
   }
}

