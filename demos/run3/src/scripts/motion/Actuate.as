package motion
{
   import haxe.ds.ObjectMap;
   import motion._Actuate.§>!;§;
   import motion._Actuate.TweenTimer;
   import motion.actuators.GenericActuator;
   import motion.actuators.IGenericActuator;
   import motion.easing.IEasing;
   
   public class Actuate
   {
      
      public static var init__:Boolean;
      
      public static var defaultActuator:Class;
      
      public static var defaultEase:IEasing;
      
      public static var targetLibraries:ObjectMap;
      
      public function Actuate()
      {
      }
      
      public static function apply(param1:Object, param2:*, param3:Class = undefined) : GenericActuator
      {
         Actuate.stop(param1,param2);
         if(param3 == null)
         {
            param3 = Actuate.defaultActuator;
         }
         var _loc4_:GenericActuator = Type.createInstance(param3,[param1,0,param2]);
         _loc4_.apply();
         return _loc4_;
      }
      
      public static function getLibrary(param1:Object, param2:Boolean = true) : Array
      {
         if(Actuate.targetLibraries[param1] == null && param2)
         {
            Actuate.targetLibraries[param1] = [];
         }
         return Actuate.targetLibraries[param1];
      }
      
      public static function stop(param1:Object, param2:* = undefined, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _loc5_:* = null as IGenericActuator;
         var _loc6_:* = null as Array;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:* = null as Array;
         var _loc10_:* = null;
         if(param1 != null)
         {
            if(param1 is IGenericActuator)
            {
               _loc5_ = param1;
               _loc5_.stop(null,param3,param4);
            }
            else
            {
               _loc6_ = Actuate.getLibrary(param1,false);
               if(_loc6_ != null)
               {
                  if(param2 is String)
                  {
                     _loc7_ = {};
                     _loc7_[param2] = null;
                     param2 = _loc7_;
                  }
                  else if(param2 is Array)
                  {
                     _loc7_ = {};
                     _loc8_ = 0;
                     _loc9_ = param2;
                     while(_loc8_ < int(_loc9_.length))
                     {
                        _loc10_ = _loc9_[_loc8_];
                        _loc8_++;
                        _loc7_[_loc10_] = null;
                     }
                     param2 = _loc7_;
                  }
                  _loc8_ = int(_loc6_.length) - 1;
                  while(_loc8_ >= 0)
                  {
                     _loc6_[_loc8_].stop(param2,param3,param4);
                     _loc8_--;
                  }
               }
            }
         }
      }
      
      public static function timer(param1:Number, param2:Class = undefined) : GenericActuator
      {
         return Actuate.tween(new TweenTimer(0),param1,new TweenTimer(1),false,param2);
      }
      
      public static function transform(param1:Object, param2:Number = 0, param3:Boolean = true) : §>!;§
      {
         return new §>!;§(param1,param2,param3);
      }
      
      public static function tween(param1:Object, param2:Number, param3:*, param4:Boolean = true, param5:Class = undefined) : GenericActuator
      {
         var _loc6_:* = null as GenericActuator;
         var _loc7_:* = null as Array;
         var _loc8_:int = 0;
         if(param1 != null)
         {
            if(param2 > 0)
            {
               if(param5 == null)
               {
                  param5 = Actuate.defaultActuator;
               }
               _loc6_ = Type.createInstance(param5,[param1,param2,param3]);
               _loc7_ = Actuate.getLibrary(_loc6_.target);
               if(param4)
               {
                  _loc8_ = int(_loc7_.length) - 1;
                  while(_loc8_ >= 0)
                  {
                     _loc7_[_loc8_].stop(_loc6_.properties,false,false);
                     _loc8_--;
                  }
                  _loc7_ = Actuate.getLibrary(_loc6_.target);
               }
               _loc7_.push(_loc6_);
               _loc6_.move();
               return _loc6_;
            }
            return Actuate.apply(param1,param3,param5);
         }
         return null;
      }
      
      public static function unload(param1:GenericActuator) : void
      {
         var _loc2_:Object = param1.target;
         if(Actuate.targetLibraries[_loc2_] != null)
         {
            Actuate.targetLibraries[_loc2_].remove(param1);
            if(int(Actuate.targetLibraries[_loc2_].length) == 0)
            {
               Actuate.targetLibraries.remove(_loc2_);
            }
         }
      }
   }
}

