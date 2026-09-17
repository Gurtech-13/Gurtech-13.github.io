package §'!W§
{
   import §!!$§.§ 6§;
   import §6!Q§.§'!E§;
   import game.§>3§;
   import game.§>f§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.level.Level;
   import com.player03.run3.menu.§ L§;
   import flash.Lib;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import haxe.Timer;
   import motion.Actuate;
   import motion.actuators.GenericActuator;
   import motion.easing.IEasing;
   import motion.easing.Quad;
   import nme3D.Context3DUtils;
   import nme3D.shader.§<!9§;
   
   public class §&!A§
   {
      
      public var §;p§:Number;
      
      public var §<P§:Number;
      
      public var startTime:Number;
      
      public var §@!G§:int;
      
      public var §^!=§:DisplayObject;
      
      public var §?E§:Rectangle;
      
      public var duration:Number;
      
      public var §%6§:Number;
      
      public function §&!A§(param1:DisplayObject, param2:Object, param3:Object, param4:Object)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §@!G§ = 0;
         if(!_loc5_)
         {
            §^!=§ = param1;
            while(true)
            {
               §§push(true);
               if(_loc6_)
               {
                  if(param2 == null)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§pop();
               §§push(param2 <= 0);
               if(_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     duration = 1.5;
                     if(_loc6_)
                     {
                        addr007a:
                        while(true)
                        {
                           §§push(§§findproperty(§<P§));
                           if(!_loc5_)
                           {
                              if(param3 != null)
                              {
                                 §§push(Number(param3));
                                 break;
                              }
                           }
                           §§push(param1.x);
                           break;
                        }
                        §§pop().§<P§ = §§pop();
                        while(true)
                        {
                           §§push(§§findproperty(§;p§));
                           if(!_loc5_)
                           {
                              if(param4 != null)
                              {
                                 §§push(Number(param4));
                                 break;
                              }
                           }
                           §§push(Lib.current.stage.stageHeight + 16 * §&d§.§;`§().scale.y);
                           if(_loc5_)
                           {
                           }
                           break;
                        }
                        §§pop().§;p§ = §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        §?E§ = new Rectangle(param1.x,param1.y,param1.width,param1.height);
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     param1.x = §<P§;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
                  param1.y = §;p§;
               }
               else
               {
                  duration = param2;
                  if(_loc6_)
                  {
                     §§goto(addr007a);
                  }
               }
               §§push(§§findproperty(§%6§));
               §§push(Timer.stamp());
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§%6§ = §§pop();
               break;
            }
         }
      }
      
      public function onComplete() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null as Vector.<§&!A§>;
         var _loc3_:* = 0;
         var _loc4_:* = null as Vector.<§&!A§>;
         §§push(§@!G§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc6_)
               {
                  switch(_loc1_)
                  {
                     case 1:
                        §@!G§ = 2;
                        if(_loc6_)
                        {
                           break loop0;
                        }
                        break;
                     case 2:
                        hide();
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        break loop1;
                     case 3:
                        §@!G§ = 4;
                        break loop1;
                     default:
                        break loop0;
                  }
               }
               §§push(Actuate.timer(duration));
               §§push(hide);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().onComplete(§§pop());
               if(!_loc6_)
               {
                  break loop0;
               }
               break;
            }
            _loc2_ = §'!E§.§@!A§().§6a§;
            if(_loc5_)
            {
               while(true)
               {
                  §§push(int(_loc2_.indexOf(this,0)));
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                     §§push(_loc3_);
                     break;
                  }
                  break loop0;
               }
               if(§§pop() != -1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc4_ = _loc2_.splice(_loc3_,1);
               }
               if(§^!=§.parent != null)
               {
                  if(!_loc6_)
                  {
                     §^!=§.parent.removeChild(§^!=§);
                  }
               }
            }
            break;
         }
      }
      
      public function hide() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         var _loc2_:Number = NaN;
         loop0:
         while(true)
         {
            §§push(true);
            if(!_loc3_)
            {
               if(§@!G§ != 1)
               {
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        §§push(§@!G§);
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §§push(§§pop() == 2);
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
               }
            }
            if(§§pop())
            {
               §@!G§ = 3;
               while(true)
               {
                  §§push(Timer.stamp());
                  §§push(startTime);
                  if(_loc4_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc4_)
                     {
                        break;
                     }
                     _loc1_ = §§pop();
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(§§pop() < 0)
                     {
                        §§push(0);
                        break loop0;
                     }
                     §§push(_loc1_);
                     §§push(0.4);
                  }
                  if(§§pop() <= §§pop())
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                     }
                     break;
                  }
                  §§push(0.4);
                  break;
               }
               addr00a9:
               _loc2_ = §§pop();
               §§push(Actuate.tween(§^!=§,_loc2_,{
                  "x":§<P§,
                  "y":§;p§
               }).ease(Quad.get_easeOut()));
               §§push(onComplete);
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               §§pop().onComplete(§§pop());
               §'!E§.§@!A§().§<3§();
            }
            else
            {
               §@!G§ = 3;
               onComplete();
            }
            return;
         }
         §§goto(addr00a9);
      }
      
      public function §4!`§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc1_)
               {
                  if(§@!G§ != 0)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     §@!G§ = 1;
                     if(_loc1_)
                     {
                        §^!=§.x = §<P§;
                        if(_loc2_)
                        {
                           break loop0;
                        }
                     }
                  }
               }
               §^!=§.y = §;p§;
               break loop0;
            }
            return;
         }
         §§push(Actuate.tween(§^!=§,0.4,{
            "x":§?E§.x,
            "y":§?E§.y
         }).ease(Quad.get_easeOut()));
         §§push(onComplete);
         if(_loc1_)
         {
            §§push(§§pop());
         }
         §§pop().onComplete(§§pop());
         if(_loc1_)
         {
            §§push(§§findproperty(startTime));
            §§push(Timer.stamp());
            if(_loc1_)
            {
               §§push(Number(§§pop()));
            }
            §§pop().startTime = §§pop();
         }
         break loop1;
      }
   }
}

