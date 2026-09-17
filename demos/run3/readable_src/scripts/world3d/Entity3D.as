package world3d
{
   import §%G§.§ m§;
   import §0!"§.§,!Z§;
   import geom3d.Transform;
   import layout3d.§>N§;
   import §]!C§.§"V§;
   import §]!C§.Physics;
   import nme3D.model.Model;
   
   public class Entity3D implements §"V§
   {
      
      public static var §4!-§:Number = 0.0001;
      
      public var world:World;
      
      public var transform:Transform;
      
      public var §-3§:Boolean;
      
      public var §[!G§:Constraint3D;
      
      public var physicsData:Physics;
      
      public var model:Model;
      
      public var level:§>N§;
      
      public var §-J§:Boolean;
      
      public var §2!9§:Boolean;
      
      public var §;!C§:§,!Z§;
      
      public var §,!!§:Boolean;
      
      public function Entity3D(param1:World, param2:Object = undefined, param3:Model = undefined)
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(param2 == null)
                  {
                     param2 = false;
                  }
                  §-3§ = false;
                  §,!!§ = true;
                  §-J§ = false;
                  level = param1;
                  world = param1;
                  if(!_loc4_)
                  {
                     break;
                  }
                  §2!9§ = true;
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(§§findproperty(transform));
               §§push(§§findproperty(Transform));
               §§push(§4h§);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               §§push(§@6§);
               if(!_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().transform = new §§pop().Transform(§§pop(),§§pop());
               if(_loc4_)
               {
                  break loop0;
               }
               §§goto(addr00a6);
            }
            if(param2)
            {
               if(_loc4_)
               {
                  §§goto(addr0097);
               }
            }
            §§goto(addr00a6);
         }
         §9!4§(param3);
         while(true)
         {
            if(_loc4_)
            {
               break loop1;
            }
            addr0097:
            §[!8§(new Constraint3D(this));
            break;
         }
         addr00a6:
      }
      
      public function § !F§() : void
      {
      }
      
      public function §&7§() : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(§[!G§ != null)
            {
               if(_loc2_)
               {
                  §[!G§.update(param1);
               }
            }
         }
      }
      
      public function §[!8§(param1:Constraint3D) : Constraint3D
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         if(param1 == null)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §[!G§ = null;
                  if(_loc2_)
                  {
                     physicsData = null;
                     if(§;!C§ != null)
                     {
                        §;!C§.§ i§.§?U§ = 0;
                     }
                     break;
                  }
                  addr006d:
                  if(§;!C§ == null)
                  {
                     break;
                  }
               }
               §§push(physicsData);
               §§push(§;!C§.volume);
               if(_loc2_)
               {
                  §§push(§§pop() * 0.0001);
               }
               §§pop().§&Q§(§§pop());
               if(_loc2_)
               {
                  §;!C§.§ i§.§?U§ = physicsData.§?U§;
               }
               break;
            }
         }
         else if(param1.§!K§ == this)
         {
            §[!G§ = param1;
            physicsData = §[!G§.physicsData;
            §§goto(addr006d);
         }
         return §[!G§;
      }
      
      public function §9!4§(param1:Model) : Model
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               model = param1;
               if(_loc2_)
               {
                  break;
               }
            }
            if(model != null)
            {
               if(_loc3_)
               {
                  model.§;!6§(transform);
               }
            }
            break;
         }
         return model;
      }
      
      public function §`-§(param1:§,!Z§) : §,!Z§
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         §;!C§ = param1;
         if(§;!C§ != null)
         {
            if(physicsData != null)
            {
               §§push(physicsData);
               §§push(§;!C§.volume);
               if(!_loc3_)
               {
                  §§push(§§pop() * 0.0001);
               }
               §§pop().§&Q§(§§pop());
               §;!C§.§ i§.§?U§ = physicsData.§?U§;
               if(_loc2_)
               {
               }
            }
            else
            {
               §;!C§.§ i§.§?U§ = 0;
            }
         }
         return §;!C§;
      }
      
      public function §'!K§(param1:Number) : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               if(§[!G§ == null)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §[!G§.§>l§.z = param1;
            break;
         }
      }
      
      public function §%8§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(§[!G§ != null)
            {
               if(_loc3_)
               {
                  §[!G§.§>l§.y = param1;
               }
            }
         }
      }
      
      public function §4!A§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(§[!G§ != null)
            {
               if(_loc3_)
               {
                  §[!G§.§>l§.x = param1;
               }
            }
         }
      }
      
      public function §^V§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            transform.§%!7§.z = param1;
         }
      }
      
      public function §7n§(param1:Number) : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         if(_loc2_)
         {
            transform.§%!7§.y = param1;
         }
      }
      
      public function §0Y§(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            transform.§%!7§.x = param1;
         }
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc1_)
            {
               transform.reset();
               if(!_loc2_)
               {
                  break;
               }
            }
            while(true)
            {
               if(§[!G§ != null)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  §[!G§.reset();
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §4h§(true,true,true);
               if(!_loc1_)
               {
                  break loop0;
               }
               break;
            }
            §§goto(addr0051);
         }
         §2!9§ = true;
         addr0051:
      }
      
      public function §9!?§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc1_)
            {
               if(level == null)
               {
                  break;
               }
               if(_loc1_)
               {
                  break;
               }
               level.§0a§(this);
               if(_loc1_)
               {
                  break;
               }
            }
            level = null;
            break;
         }
      }
      
      public function §@6§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         if(!_loc5_)
         {
            if(§;!C§ != null)
            {
               if(_loc4_)
               {
                  §;!C§.§5=§(param1,param2,param3);
               }
            }
         }
      }
      
      public function §4h§(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         if(!_loc5_)
         {
            if(§;!C§ != null)
            {
               if(!_loc5_)
               {
                  §;!C§.§2y§(param1,param2,param3);
               }
            }
         }
      }
      
      public function §9§() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(level == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §;H§() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(§[!G§ == null)
            {
               return 0;
            }
         }
         return §[!G§.§>l§.z;
      }
      
      public function §<!B§() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(§[!G§ == null)
            {
               return 0;
            }
         }
         return §[!G§.§>l§.y;
      }
      
      public function § !Y§() : Number
      {
         return transform.position.y;
      }
      
      public function §`!1§() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(§[!G§ == null)
            {
               return 0;
            }
         }
         return §[!G§.§>l§.x;
      }
      
      public function §?w§() : Number
      {
         return transform.position.x;
      }
      
      public function §'j§() : Number
      {
         return transform.§%!7§.z;
      }
      
      public function §>p§() : Number
      {
         return transform.§%!7§.y;
      }
      
      public function §#!K§() : Number
      {
         return transform.§%!7§.x;
      }
      
      public function display(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            model.update(param1);
         }
      }
      
      public function §<!R§(param1:§ m§) : void
      {
      }
      
      public function applyImpulse3D(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            if(§[!G§ != null)
            {
               if(!_loc4_)
               {
                  §[!G§.§=J§(param1,param2,param3);
               }
            }
         }
      }
      
      public function §=J§(param1:Number, param2:Number) : void
      {
         var _temp_1:* = false;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = _temp_1;
         if(!_loc4_)
         {
            if(§[!G§ != null)
            {
               if(_loc3_)
               {
                  §[!G§.§=J§(param1,param2,0);
               }
            }
         }
      }
      
      public function applyForce3D(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = false;
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = _temp_1;
         if(!_loc5_)
         {
            if(§[!G§ != null)
            {
               if(_loc4_)
               {
                  §[!G§.§'I§(param1,param2,param3);
               }
            }
         }
      }
      
      public function §'I§(param1:Number, param2:Number) : void
      {
         var _temp_1:* = false;
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(§[!G§ == null)
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §[!G§.§'I§(param1,param2,0);
            break;
         }
      }
   }
}

