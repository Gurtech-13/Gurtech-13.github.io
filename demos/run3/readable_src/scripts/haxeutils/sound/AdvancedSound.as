package haxeutils.sound
{
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import stage.StageActor;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import flash.Boot;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import motion.Actuate;
   import motion._Actuate.§>!;§;
   import motion.actuators.IGenericActuator;
   import motion.actuators.TransformActuator;
   import motion.easing.IEasing;
   import motion.easing.§[!4§;
   import unitsystem.§7o§;
   
   public class AdvancedSound
   {
      
      public var startTime:Number;
      
      public var §[r§:SoundChannel;
      
      public var sound:Sound;
      
      public var §-!J§:Number;
      
      public var §-1§:Number;
      
      public var §&!1§:Boolean;
      
      public var §`[§:Function;
      
      public var §#!b§:int;
      
      public var §4!'§:TransformActuator;
      
      public function AdvancedSound(param1:Sound, param2:Number = 0, param3:Boolean = false, param4:Object = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            §#!b§ = 0;
            while(true)
            {
               if(!_loc6_)
               {
                  §-!J§ = 0;
                  if(!_loc5_)
                  {
                     break;
                  }
                  startTime = 0;
               }
               sound = param1;
               break;
            }
            startTime = param2;
            §&!1§ = param3;
            while(true)
            {
               §§push(§§findproperty(§-1§));
               if(_loc5_)
               {
                  if(param4 != null)
                  {
                     §§push(Number(param4));
                     break;
                  }
               }
               §§push(param2);
               if(_loc6_)
               {
               }
               break;
            }
            §§pop().§-1§ = §§pop();
         }
      }
      
      public function stop() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(!_loc1_)
                  {
                     if(§[r§ == null)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        if(§4!'§ == null)
                        {
                           break loop1;
                        }
                     }
                     Actuate.stop(§[r§,null,false,false);
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §4!'§ = null;
                  §#!b§ = 0;
                  if(!_loc1_)
                  {
                     break loop1;
                  }
                  break loop0;
               }
               §§goto(addr00c8);
            }
            §[r§.removeEventListener(Event.SOUND_COMPLETE,onComplete);
            if(!_loc1_)
            {
               §-!J§ = §[r§.position;
               if(_loc1_)
               {
                  break loop2;
               }
            }
            §[r§.stop();
            if(_loc2_)
            {
               break;
            }
            break loop2;
         }
         §[r§ = null;
         addr00c8:
      }
      
      public function resume() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc1_)
            {
               if(§[r§ != null)
               {
                  break;
               }
               if(!_loc1_)
               {
                  break;
               }
            }
            §9!E§(§-!J§);
            if(!_loc2_)
            {
               §-!J§ = startTime;
            }
            break;
         }
      }
      
      public function §9!E§(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §§push(false);
               if(_loc2_)
               {
                  if(§&!1§)
                  {
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           §§push(param1 == §-1§);
                           if(_loc3_)
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
                  if(_loc3_)
                  {
                     break;
                  }
                  §[r§ = sound.play(param1,10000);
               }
               else
               {
                  §[r§ = sound.play(param1);
               }
            }
            if(§[r§ != null)
            {
               §[r§.addEventListener(Event.SOUND_COMPLETE,onComplete);
            }
            break;
         }
      }
      
      public function play(param1:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 == null)
            {
               param1 = false;
            }
            if(§[r§ != null)
            {
               if(!param1)
               {
                  return;
               }
               if(!_loc2_)
               {
                  §[r§.stop();
               }
            }
            if(sound != null)
            {
               §9!E§(startTime);
            }
         }
      }
      
      public function §'G§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  if(§#!b§ <= 0)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     stop();
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                  }
               }
               §4!'§ = null;
               break loop0;
            }
            §`[§();
            §`[§ = null;
            §§goto(addr008d);
         }
         §#!b§ = 0;
         if(_loc1_)
         {
            §§push(§`[§);
            if(!_loc2_)
            {
               §§push(§§pop());
            }
            if(§§pop() != null)
            {
               if(_loc1_)
               {
                  break loop1;
               }
            }
         }
         addr008d:
      }
      
      public function onComplete(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(§&!1§)
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     §[r§.removeEventListener(Event.SOUND_COMPLETE,onComplete);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §9!E§(§-1§);
                  if(_loc3_)
                  {
                  }
                  break;
               }
            }
            else
            {
               §[r§ = null;
            }
         }
      }
      
      public function fadeOut(param1:Number, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               §`[§ = param2;
               if(!_loc5_)
               {
                  break;
               }
            }
            §#!b§ = -1;
            if(_loc5_)
            {
               §§push(false);
               if(!_loc6_)
               {
                  if(param1 > 0)
                  {
                     while(true)
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              break loop0;
                           }
                           §§push(§[r§ == null);
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        §§push(!§§pop());
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  break;
               }
               addr013e:
               §'G§();
               return;
            }
            break;
         }
         try
         {
            §4!'§ = Actuate.transform(§[r§,param1).sound(0);
            while(true)
            {
               if(_loc5_)
               {
                  §§push(§4!'§);
                  §§push(§'G§);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().onComplete(§§pop());
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               §4!'§.ease(§[!4§.§3!F§());
               break;
            }
         }
         catch(_loc_e_:*)
         {
            if(_loc4_ as Error)
            {
               Boot.lastError = _loc4_;
            }
            §7o§.§3t§(_loc4_,{
               "fileName":"AdvancedSound.hx",
               "lineNumber":138,
               "className":"haxeutils.sound.AdvancedSound",
               "methodName":"fadeOut"
            });
            §'G§();
            §§goto(addr013e);
         }
      }
      
      public function fadeIn(param1:Number, param2:Object = undefined) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               §`[§ = param2;
               if(!_loc5_)
               {
                  break;
               }
               §#!b§ = 1;
               if(_loc6_)
               {
                  break;
               }
            }
            §§push(false);
            if(!_loc6_)
            {
               if(param1 > 0)
               {
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                        §§push(§[r§ == null);
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break;
                  }
               }
            }
            if(§§pop())
            {
               break;
            }
            addr013e:
            §'G§();
            return;
         }
         try
         {
            §4!'§ = Actuate.transform(§[r§,param1).sound(1);
            while(true)
            {
               if(!_loc6_)
               {
                  §§push(§4!'§);
                  §§push(§'G§);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().onComplete(§§pop());
                  if(_loc6_)
                  {
                     break;
                  }
               }
               §4!'§.ease(§[!4§.§3!F§());
               break;
            }
         }
         catch(_loc_e_:*)
         {
            if(_loc4_ as Error)
            {
               Boot.lastError = _loc4_;
            }
            §7o§.§3t§(_loc4_,{
               "fileName":"AdvancedSound.hx",
               "lineNumber":156,
               "className":"haxeutils.sound.AdvancedSound",
               "methodName":"fadeIn"
            });
            §'G§();
            §§goto(addr013e);
         }
      }
   }
}

