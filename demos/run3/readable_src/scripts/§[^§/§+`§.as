package §[^§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §%G§.§ m§;
   import §'!1§.§7!b§;
   import §0!"§.§[T§;
   import geom3d.Transform;
   import §2!"§.Spritesheet;
   import §2!W§.§%U§;
   import layout3d.PositionData3D;
   import world3d.Entity3D;
   import world3d.World;
   import stage.§']§;
   import stage.StageActor;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§'t§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.character.§8J§;
   import com.player03.run3.character.Shadow;
   import com.player03.run3.character.§[!H§;
   import com.player03.run3.character.§]r§;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.TunnelSection;
   import flash.geom.Rectangle;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.AxisAngle;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   
   public class §+`§ extends Entity3D
   {
      
      public var §]!B§:Boolean;
      
      public var §>l§:Point3D;
      
      public var §>Y§:Boolean;
      
      public var §%u§:Quaternion;
      
      public var rotation:Quaternion;
      
      public var §6g§:Boolean;
      
      public function §+`§(param1:World, param2:Number, param3:Model, param4:Quaternion = undefined, param5:Point3D = undefined)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §6g§ = true;
         if(!_loc7_)
         {
            §>Y§ = false;
            §]!B§ = false;
            super(param1,false,param3);
            §,!!§ = false;
         }
         if(param4 != null)
         {
            if(!_loc7_)
            {
               rotation = param4;
            }
            §%u§ = new Quaternion();
         }
         §`-§(new §[T§(this,param2));
      }
      
      public function §+i§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               §§push(§>Y§);
               if(_loc1_)
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     break;
                  }
               }
               if(!§§pop())
               {
                  §§push(true);
                  break;
               }
            }
            §§push(§9§());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     break;
                  }
               }
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null as Point3D;
         var _loc3_:* = null as Point3D;
         var _loc4_:* = null as Point3D;
         loop0:
         while(true)
         {
            if(_loc5_)
            {
               super.update(param1);
               if(!_loc6_)
               {
                  if(§>l§ == null)
                  {
                     break;
                  }
               }
            }
            _loc2_ = transform.§<!C§();
            _loc3_ = §>l§;
            _loc4_ = _loc2_;
            if(_loc5_)
            {
               while(true)
               {
                  if(_loc4_ == null)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     _loc4_ = new Point3D(0,0,0);
                  }
                  _loc4_.x = _loc2_.x + _loc3_.x * param1;
                  if(!_loc6_)
                  {
                     _loc4_.y = _loc2_.y + _loc3_.y * param1;
                     if(_loc5_)
                     {
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc2_.z);
                           if(_loc5_)
                           {
                              §§push(_loc3_.z);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * param1);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 break;
                              }
                           }
                           §§push(Number(§§pop()));
                           break;
                        }
                        §§pop().z = §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     break;
                  }
                  break loop0;
               }
               transform.§"w§(_loc2_);
            }
            break;
         }
      }
      
      public function §1!X§(param1:Number, param2:Number, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as Point3D;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc6_)
               {
                  if(§>l§ != null)
                  {
                     _loc4_ = §>l§;
                     if(!_loc5_)
                     {
                        _loc4_.x = param1;
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     _loc4_.y = param2;
                     if(_loc6_)
                     {
                        _loc4_.z = param3;
                     }
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               §>l§ = new Point3D(param1,param2,param3);
               if(!_loc5_)
               {
                  break;
               }
               break loop0;
            }
            §]!B§ = true;
            break;
         }
      }
      
      public function §3I§(param1:Point3D) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as Point3D;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  if(§>l§ != null)
                  {
                     _loc2_ = §>l§;
                     if(_loc4_)
                     {
                        _loc2_.x = param1.x;
                        if(_loc4_)
                        {
                           _loc2_.y = param1.y;
                           if(!_loc4_)
                           {
                              break;
                           }
                        }
                     }
                     _loc2_.z = param1.z;
                     break;
                  }
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §>l§ = param1;
               if(_loc4_)
               {
                  break;
               }
               break loop0;
            }
            §]!B§ = true;
            break;
         }
      }
      
      public function §#!Y§(param1:Entity3D) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               dispose(false);
               if(_loc2_)
               {
                  break;
               }
            }
            §>l§ = null;
            break;
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(!param1)
               {
                  §>Y§ = true;
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §9!?§();
            if(_loc2_)
            {
            }
            break;
         }
      }
      
      override public function display(param1:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null as Quaternion;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(!§>Y§)
                  {
                     if(rotation != null)
                     {
                        if(_loc3_)
                        {
                           break loop0;
                        }
                        §§goto(addr00c9);
                     }
                     break;
                  }
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               dispose();
               if(!_loc4_)
               {
                  break;
               }
               break loop0;
            }
            super.display(param1);
            addr00c9:
            return;
         }
         _loc2_ = transform.§+n§();
         if(_loc3_)
         {
            QuaternionUtils.multiply(_loc2_,rotation,§%u§);
            if(!_loc3_)
            {
               break loop1;
            }
            §§push(QuaternionUtils);
            §§push(_loc2_);
            §§push(§%u§);
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() * 2);
            }
            §§pop().§+!Q§(§§pop(),§§pop(),§§pop(),_loc2_);
            if(!_loc3_)
            {
               break loop1;
            }
         }
         transform.§"I§(_loc2_);
         break loop1;
      }
      
      public function §&R§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §]!B§ = false;
         }
      }
   }
}

