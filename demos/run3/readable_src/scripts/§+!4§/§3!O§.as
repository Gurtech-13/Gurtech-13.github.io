package §+!4§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import scenes.AngelVsBunny;
   import scenes.Cutscenes;
   import §=w§.§@[§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import flash.geom.Rectangle;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.Point3D;
   
   public class §3!O§ implements §@[§
   {
      
      public var §=c§:Vector.<§5!§>;
      
      public var §7x§:§=!U§;
      
      public function §3!O§()
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §7x§ = new StringMap();
         }
         var _loc1_:Vector.<§5!§> = new Vector.<§5!§>(0,false);
         if(_loc3_)
         {
            §=c§ = _loc1_;
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = null as §5!§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<§5!§> = §=c§;
         if(!_loc6_)
         {
            while(_loc2_ < int(_loc3_.length))
            {
               _loc4_ = _loc3_[_loc2_];
               if(!_loc6_)
               {
                  _loc2_++;
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               _loc4_.update(param1);
            }
         }
      }
      
      public function §#6§(param1:String, param2:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:StringMap = §7x§;
         while(true)
         {
            if(_loc5_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc3_.h[param1]);
                  break;
               }
            }
            §§push(_loc3_.getReserved(param1));
            break;
         }
         var _loc4_:§5!§ = §§pop();
         while(true)
         {
            if(!_loc6_)
            {
               if(_loc4_ == null)
               {
                  break;
               }
               if(_loc6_)
               {
                  break;
               }
            }
            _loc4_.§^W§ = param2;
            break;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = null as §5!§;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§5!§> = §=c§;
         if(_loc5_)
         {
            while(_loc1_ < int(_loc2_.length))
            {
               _loc3_ = _loc2_[_loc1_];
               if(!_loc4_)
               {
                  _loc1_++;
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               _loc3_.reset();
            }
         }
      }
      
      public function §&h§() : void
      {
      }
      
      public function §9;§() : void
      {
      }
      
      public function §0!4§() : §5!§
      {
         return new §5!§();
      }
      
      public function §%!R§(param1:String) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:StringMap = §7x§;
         while(true)
         {
            if(!_loc5_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc2_.h[param1]);
                  break;
               }
            }
            §§push(_loc2_.getReserved(param1));
            break;
         }
         var _loc3_:§5!§ = §§pop();
         while(true)
         {
            if(_loc4_)
            {
               if(_loc3_ != null)
               {
                  §§push(_loc3_.§-y§);
                  break;
               }
            }
            §§push(false);
            if(_loc4_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §5>§(param1:String) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:StringMap = §7x§;
         while(true)
         {
            if(!_loc4_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc2_.h[param1]);
                  break;
               }
            }
            §§push(_loc2_.getReserved(param1));
            break;
         }
         var _loc3_:§5!§ = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ != null)
            {
               return _loc3_.§^W§;
            }
         }
         return 0;
      }
      
      public function §,h§(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:StringMap = §7x§;
         while(true)
         {
            if(_loc5_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc2_.h[param1]);
                  break;
               }
            }
            §§push(_loc2_.getReserved(param1));
            break;
         }
         var _loc3_:§5!§ = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               if(_loc3_ != null)
               {
                  §§push(_loc3_.§?!7§);
                  break;
               }
            }
            §§push(false);
            if(!_loc4_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §+l§(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:StringMap = §7x§;
         while(true)
         {
            if(_loc5_)
            {
               if(!(param1 in StringMap.§+!#§))
               {
                  §§push(_loc2_.h[param1]);
                  break;
               }
            }
            §§push(_loc2_.getReserved(param1));
            break;
         }
         var _loc3_:§5!§ = §§pop();
         loop1:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(_loc3_ == null)
                  {
                     if(!_loc4_)
                     {
                        §§push(false);
                        if(_loc5_)
                        {
                           return §§pop();
                        }
                        break loop1;
                     }
                  }
                  else
                  {
                     §§push(_loc3_.§?!7§);
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        §§push(false);
                        break loop1;
                     }
                  }
               }
               §§push(_loc3_.§-y§);
               if(_loc5_)
               {
                  break;
               }
               break loop1;
            }
            §§push(!§§pop());
            if(_loc5_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
   }
}

