package motion.actuators
{
   import motion.Actuate;
   import motion.easing.IEasing;
   
   public class GenericActuator implements IGenericActuator
   {
      
      public var target:Object;
      
      public var special:Boolean = false;
      
      public var properties:*;
      
      public var id:String;
      
      public var duration:Number;
      
      public var _snapping:Boolean = false;
      
      public var _smartRotation:Boolean = false;
      
      public var _reverse:Boolean = false;
      
      public var _repeat:int = 0;
      
      public var _reflect:Boolean = false;
      
      public var _onUpdateParams:Array;
      
      public var _onUpdate:*;
      
      public var §`!J§:Array;
      
      public var § !Q§:*;
      
      public var _onRepeatParams:Array;
      
      public var _onRepeat:*;
      
      public var §94§:Array;
      
      public var §7C§:*;
      
      public var _onCompleteParams:Array;
      
      public var _onComplete:*;
      
      public var _ease:IEasing = Actuate.defaultEase;
      
      public var _delay:Number = 0;
      
      public var _autoVisible:Boolean = true;
      
      public function GenericActuator(param1:Object, param2:Number, param3:*)
      {
         target = param1;
         properties = param3;
         duration = param2;
      }
      
      public function stop(param1:*, param2:Boolean, param3:Boolean) : void
      {
      }
      
      public function snapping(param1:Object = undefined) : GenericActuator
      {
         if(param1 == null)
         {
            param1 = true;
         }
         _snapping = param1;
         special = true;
         return this;
      }
      
      public function smartRotation(param1:Object = undefined) : GenericActuator
      {
         if(param1 == null)
         {
            param1 = true;
         }
         _smartRotation = param1;
         special = true;
         return this;
      }
      
      public function reverse(param1:Object = undefined) : GenericActuator
      {
         if(param1 == null)
         {
            param1 = true;
         }
         _reverse = param1;
         special = true;
         return this;
      }
      
      public function resume() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null as Array;
         if(§ !Q§ != null)
         {
            _loc1_ = § !Q§;
            _loc2_ = §`!J§;
            if(_loc2_ == null)
            {
               _loc2_ = [];
            }
            _loc1_.apply(_loc1_,_loc2_);
         }
      }
      
      public function repeat(param1:Object = undefined) : GenericActuator
      {
         if(param1 == null)
         {
            param1 = -1;
         }
         _repeat = param1;
         return this;
      }
      
      public function reflect(param1:Object = undefined) : GenericActuator
      {
         if(param1 == null)
         {
            param1 = true;
         }
         _reflect = param1;
         special = true;
         return this;
      }
      
      public function pause() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null as Array;
         if(§7C§ != null)
         {
            _loc1_ = §7C§;
            _loc2_ = §94§;
            if(_loc2_ == null)
            {
               _loc2_ = [];
            }
            _loc1_.apply(_loc1_,_loc2_);
         }
      }
      
      public function onUpdate(param1:*, param2:Array = undefined) : GenericActuator
      {
         _onUpdate = param1;
         if(param2 == null)
         {
            _onUpdateParams = [];
         }
         else
         {
            _onUpdateParams = param2;
         }
         return this;
      }
      
      public function §]1§(param1:*, param2:Array = undefined) : GenericActuator
      {
         § !Q§ = param1;
         if(param2 == null)
         {
            §`!J§ = [];
         }
         else
         {
            §`!J§ = param2;
         }
         return this;
      }
      
      public function onRepeat(param1:*, param2:Array = undefined) : GenericActuator
      {
         _onRepeat = param1;
         if(param2 == null)
         {
            _onRepeatParams = [];
         }
         else
         {
            _onRepeatParams = param2;
         }
         return this;
      }
      
      public function §'p§(param1:*, param2:Array = undefined) : GenericActuator
      {
         §7C§ = param1;
         if(param2 == null)
         {
            §94§ = [];
         }
         else
         {
            §94§ = param2;
         }
         return this;
      }
      
      public function onComplete(param1:*, param2:Array = undefined) : GenericActuator
      {
         _onComplete = param1;
         if(param2 == null)
         {
            _onCompleteParams = [];
         }
         else
         {
            _onCompleteParams = param2;
         }
         if(duration == 0)
         {
            complete();
         }
         return this;
      }
      
      public function move() : void
      {
      }
      
      public function ease(param1:IEasing) : GenericActuator
      {
         _ease = param1;
         return this;
      }
      
      public function delay(param1:Number) : GenericActuator
      {
         _delay = param1;
         return this;
      }
      
      public function complete(param1:Boolean = true) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null as Array;
         if(param1)
         {
            change();
            if(_onComplete != null)
            {
               _loc2_ = _onComplete;
               _loc3_ = _onCompleteParams;
               if(_loc3_ == null)
               {
                  _loc3_ = [];
               }
               _loc2_.apply(_loc2_,_loc3_);
            }
         }
         Actuate.unload(this);
      }
      
      public function change() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null as Array;
         if(_onUpdate != null)
         {
            _loc1_ = _onUpdate;
            _loc2_ = _onUpdateParams;
            if(_loc2_ == null)
            {
               _loc2_ = [];
            }
            _loc1_.apply(_loc1_,_loc2_);
         }
      }
      
      public function callMethod(param1:*, param2:Array = undefined) : *
      {
         if(param2 == null)
         {
            param2 = [];
         }
         return param1.apply(param1,param2);
      }
      
      public function autoVisible(param1:Object = undefined) : GenericActuator
      {
         if(param1 == null)
         {
            param1 = true;
         }
         _autoVisible = param1;
         return this;
      }
      
      public function apply() : void
      {
         var _loc3_:* = null as String;
         var _loc1_:int = 0;
         var _loc2_:Array = Reflect.fields(properties);
         while(_loc1_ < int(_loc2_.length))
         {
            _loc3_ = _loc2_[_loc1_];
            _loc1_++;
            Reflect.setProperty(target,_loc3_,Reflect.field(properties,_loc3_));
         }
      }
   }
}

