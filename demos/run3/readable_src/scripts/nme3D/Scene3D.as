package nme3D
{
   import §!!$§.§ 6§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §%!Z§.§&!S§;
   import §+!1§.§[!9§;
   import §3F§.§4!V§;
   import game.§8A§;
   import §<?§.§#!7§;
   import §=w§.§@[§;
   import §>!O§.§#!6§;
   import §>T§.§"=§;
   import §>T§.§[C§;
   import §>d§.§`U§;
   import §[^§.§+`§;
   import com.adobe.utils.PerspectiveMatrix3D;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.save.§]k§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DClearMask;
   import flash.display3D.Context3DCompareMode;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Object3D;
   import nme3D.model.§7v§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   
   public class Scene3D implements §@[§
   {
      
      public static var init__:Boolean;
      
      public static var scratchMatrix:§4!V§;
      
      public var viewMatrix:Matrix3D;
      
      public var §3!#§:Object3D;
      
      public var time:Number;
      
      public var §9!R§:Object3D;
      
      public var §<!Y§:Object3D;
      
      public var scratchVector:Vector3D;
      
      public var projectionMatrix:Matrix3D;
      
      public var § e§:Function;
      
      public var §@8§:Object3D;
      
      public var viewDirty:Boolean;
      
      public var §`!=§:Boolean;
      
      public function Scene3D(param1:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null as Matrix3D;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc4_)
                  {
                     time = 0;
                     if(_loc3_)
                     {
                        break;
                     }
                     viewDirty = true;
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     §`!=§ = false;
                     §<!Y§ = new Object3D();
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     §3!#§ = new Object3D();
                  }
                  viewMatrix = new Matrix3D();
                  §@8§ = new Object3D();
                  break loop0;
               }
               §§goto(addr0099);
            }
            while(true)
            {
               if(Context3DUtils.§6!§ != null)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00f0);
            }
            §§goto(addr00fd);
         }
         § e§ = param1;
         while(true)
         {
            if(!_loc3_)
            {
               addr0099:
               projectionMatrix = new Matrix3D();
               if(!_loc3_)
               {
                  break loop1;
               }
               break;
            }
            addr00ca:
            _loc2_ = projectionMatrix;
            if(_loc4_)
            {
               Matrix3D.multiplyInto(_loc2_.rawData,Context3DUtils.§6!§.rawData,_loc2_.rawData);
            }
            addr00f0:
            scratchVector = new Vector3D();
            break;
         }
         addr00fd:
         Context3DUtils.§"[§ = this;
      }
      
      public static function §@z§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         Context3DUtils.§7?§ = false;
         if(!_loc2_)
         {
            Context3DUtils.§"[§.render(true);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = false;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc3_)
            {
               §§push(§§findproperty(time));
               §§push(time);
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
                  if(_loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().time = §§pop();
               if(!_loc2_)
               {
                  break;
               }
            }
            §<!Y§.update(param1,time);
            if(_loc2_)
            {
               §@8§.update(param1,time);
            }
            break;
         }
      }
      
      public function unproject(param1:Point3D, param2:Point3D = undefined) : Point3D
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = new Point3D(0,0,0);
            break;
         }
         var _loc3_:§4!V§ = Scene3D.scratchMatrix;
         _loc3_.rawData[0] = 1;
         _loc3_.rawData[1] = 0;
         while(true)
         {
            if(!_loc5_)
            {
               _loc3_.rawData[2] = 0;
               _loc3_.rawData[3] = 0;
               _loc3_.rawData[4] = 0;
               _loc3_.rawData[5] = 1;
               _loc3_.rawData[6] = 0;
               _loc3_.rawData[7] = 0;
               _loc3_.rawData[8] = 0;
               while(true)
               {
                  if(_loc4_)
                  {
                     _loc3_.rawData[9] = 0;
                     if(_loc5_)
                     {
                        break;
                     }
                     _loc3_.rawData[10] = 1;
                     _loc3_.rawData[11] = 0;
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  _loc3_.rawData[12] = 0;
                  _loc3_.rawData[13] = 0;
                  break;
               }
               _loc3_.rawData[14] = 0;
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc3_.rawData[15] = 1;
            break;
         }
         _loc3_ = Scene3D.scratchMatrix;
         if(_loc4_)
         {
            Matrix3D.multiplyInto(_loc3_.rawData,viewMatrix.rawData,_loc3_.rawData);
         }
         _loc3_ = Scene3D.scratchMatrix;
         Matrix3D.multiplyInto(_loc3_.rawData,projectionMatrix.rawData,_loc3_.rawData);
         Scene3D.scratchMatrix.invert();
         if(_loc4_)
         {
            Scene3D.scratchMatrix.transformVector3Into4(param1,scratchVector);
         }
         scratchVector.project();
         if(_loc4_)
         {
            param2.x = scratchVector.x;
            param2.y = scratchVector.y;
            param2.z = scratchVector.z;
            viewDirty = true;
         }
         return param2;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            time = 0;
         }
      }
      
      public function §1P§(param1:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  §§push(true);
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(§@8§ == null)
                  {
                     break;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§pop();
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               §§push(Context3DUtils.§7?§);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            var _loc2_:Rectangle = Context3DUtils.§0r§();
            while(true)
            {
               if(!_loc3_)
               {
                  Context3DUtils.§37§(new Rectangle(0,0,param1.width,param1.height));
                  render(false);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               Context3DUtils.§37§(_loc2_);
               if(!_loc3_)
               {
                  Context3DUtils.context3D.drawToBitmapData(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
               }
               §§goto(addr00e7);
            }
            if(Context3DUtils.context3D != null)
            {
               Context3DUtils.context3D.clear(Context3DUtils.§9!§,Context3DUtils.§?G§,Context3DUtils.§^!3§);
            }
            addr00e7:
            return;
         }
      }
      
      public function render(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as §4!V§;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc6_)
                  {
                     §§push(true);
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(§@8§ == null)
                     {
                        break;
                     }
                     if(!_loc6_)
                     {
                        break loop1;
                     }
                     §§pop();
                     if(!_loc6_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Context3DUtils.§7?§);
                  if(!_loc5_)
                  {
                     break loop1;
                  }
                  break;
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     return;
                  }
                  break loop0;
               }
               if(Context3DUtils.context3D != null)
               {
                  if(!_loc5_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr0082);
            }
            §§push(Boolean(§§pop()));
            break loop8;
         }
         Context3DUtils.context3D.clear(Context3DUtils.§9!§,Context3DUtils.§?G§,Context3DUtils.§^!3§);
         addr0082:
         var _loc2_:Context3D = Context3DUtils.context3D;
         if(!_loc5_)
         {
            _loc2_.setDepthTest(true,Context3DCompareMode.LESS);
         }
         §§push(viewDirty);
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(viewDirty)
            {
               if(!_loc5_)
               {
                  _loc4_ = Scene3D.scratchMatrix;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc6_)
                        {
                           _loc4_.rawData[0] = 1;
                           if(_loc5_)
                           {
                              break;
                           }
                           _loc4_.rawData[1] = 0;
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 _loc4_.rawData[2] = 0;
                                 _loc4_.rawData[3] = 0;
                                 _loc4_.rawData[4] = 0;
                                 _loc4_.rawData[5] = 1;
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              _loc4_.rawData[6] = 0;
                              _loc4_.rawData[7] = 0;
                              if(_loc6_)
                              {
                                 _loc4_.rawData[8] = 0;
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                              break loop3;
                           }
                           _loc4_.rawData[9] = 0;
                           _loc4_.rawData[10] = 1;
                        }
                        _loc4_.rawData[11] = 0;
                        if(!_loc5_)
                        {
                           break loop3;
                        }
                        break;
                     }
                     _loc4_.rawData[13] = 0;
                     if(!_loc5_)
                     {
                        _loc4_.rawData[14] = 0;
                     }
                     _loc4_.rawData[15] = 1;
                     _loc4_ = Scene3D.scratchMatrix;
                     if(_loc6_)
                     {
                        Matrix3D.multiplyInto(_loc4_.rawData,viewMatrix.rawData,_loc4_.rawData);
                     }
                     _loc4_ = Scene3D.scratchMatrix;
                     if(_loc6_)
                     {
                        Matrix3D.multiplyInto(_loc4_.rawData,projectionMatrix.rawData,_loc4_.rawData);
                        if(!_loc5_)
                        {
                           viewDirty = false;
                        }
                     }
                  }
                  _loc4_.rawData[12] = 0;
                  break loop4;
               }
               break;
            }
            §<!Y§.render(Scene3D.scratchMatrix,_loc3_);
            if(!_loc5_)
            {
               if(Context3DUtils.§7?§)
               {
                  return;
               }
               if(§`!=§)
               {
                  break;
               }
               Context3DUtils.context3D.clear(0,0,0,1,1,0,Context3DClearMask.DEPTH);
               §§push(§ e§);
               if(_loc6_)
               {
                  §§push(§§pop());
               }
               if(§§pop() != null)
               {
                  § e§();
               }
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(§9!R§ != null)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        §9!R§.render(Scene3D.scratchMatrix,_loc3_);
                        if(Context3DUtils.§7?§)
                        {
                           if(!_loc5_)
                           {
                              return;
                           }
                           break loop6;
                        }
                     }
                     §@8§.render(Scene3D.scratchMatrix,_loc3_);
                     break loop6;
                  }
                  §§push(Context3DUtils.§7?§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr02fa);
                     }
                     §§push(param1);
                  }
                  §§goto(addr02fc);
               }
               §§push(Context3DUtils.§7?§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     return;
                  }
                  _loc2_.setDepthTest(false,Context3DCompareMode.LESS);
                  §3!#§.render(Scene3D.scratchMatrix,_loc3_);
                  break loop7;
               }
               addr02fc:
               if(§§pop())
               {
                  _loc2_.present();
               }
               return;
            }
            addr02fa:
            return;
         }
         if(param1)
         {
            if(_loc6_)
            {
               _loc2_.present();
            }
            else
            {
               §§goto(addr0286);
            }
         }
      }
      
      public function project(param1:Point3D, param2:Point3D = undefined) : Point3D
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         while(true)
         {
            if(!_loc5_)
            {
               if(param2 != null)
               {
                  break;
               }
            }
            param2 = new Point3D(0,0,0);
            break;
         }
         var _loc3_:§4!V§ = Scene3D.scratchMatrix;
         if(!_loc5_)
         {
            _loc3_.rawData[0] = 1;
            if(!_loc5_)
            {
               _loc3_.rawData[1] = 0;
               _loc3_.rawData[2] = 0;
               _loc3_.rawData[3] = 0;
            }
            _loc3_.rawData[4] = 0;
            _loc3_.rawData[5] = 1;
            _loc3_.rawData[6] = 0;
            _loc3_.rawData[7] = 0;
            _loc3_.rawData[8] = 0;
            while(true)
            {
               if(!_loc5_)
               {
                  _loc3_.rawData[9] = 0;
                  _loc3_.rawData[10] = 1;
                  _loc3_.rawData[11] = 0;
                  _loc3_.rawData[12] = 0;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               _loc3_.rawData[13] = 0;
               break;
            }
            _loc3_.rawData[14] = 0;
            if(_loc4_)
            {
               _loc3_.rawData[15] = 1;
            }
         }
         _loc3_ = Scene3D.scratchMatrix;
         if(_loc4_)
         {
            Matrix3D.multiplyInto(_loc3_.rawData,viewMatrix.rawData,_loc3_.rawData);
         }
         _loc3_ = Scene3D.scratchMatrix;
         if(!_loc5_)
         {
            Matrix3D.multiplyInto(_loc3_.rawData,projectionMatrix.rawData,_loc3_.rawData);
         }
         Scene3D.scratchMatrix.transformVector3Into4(param1,scratchVector);
         while(true)
         {
            if(!_loc5_)
            {
               scratchVector.project();
               param2.x = scratchVector.x;
               param2.y = scratchVector.y;
               param2.z = scratchVector.z;
               if(!_loc4_)
               {
                  break;
               }
            }
            viewDirty = true;
            break;
         }
         return param2;
      }
      
      public function §#t§(param1:Model) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc2_)
            {
               if(param1.§0p§ <= 0)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           if(param1.§0p§ < 0)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr0065);
                           }
                           §§goto(addr0078);
                        }
                        §§goto(addr007c);
                     }
                     return §§pop();
                  }
                  addr0096:
                  §§push(Boolean(§§pop()));
                  break loop1;
               }
               if(_loc3_)
               {
                  addr002a:
                  §§push(§3!#§);
                  break;
               }
               addr0065:
               §§push(§9!R§ == null);
               if(_loc3_)
               {
                  addr0078:
                  if(!§§pop())
                  {
                     addr007c:
                     §§push(§9!R§);
                     break;
                  }
                  §§push(§@8§);
                  break;
               }
               break loop1;
            }
            §§goto(addr002a);
         }
         §§push(§§pop().§#t§(param1));
         if(_loc2_)
         {
            break loop1;
         }
         §§goto(addr0096);
      }
      
      public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            if(§@8§ == null)
            {
               if(!_loc1_)
               {
                  return;
               }
               addr00d6:
               §<!Y§ = null;
               viewMatrix = null;
               if(Context3DUtils.§"[§ != this)
               {
                  break;
               }
               if(_loc1_)
               {
                  break;
               }
            }
            else
            {
               while(true)
               {
                  if(Context3DUtils.context3D != null)
                  {
                     Context3DUtils.context3D.clear(Context3DUtils.§9!§,Context3DUtils.§?G§,Context3DUtils.§^!3§);
                     if(_loc1_)
                     {
                        break;
                     }
                  }
                  §@8§.dispose();
                  §@8§ = null;
                  while(true)
                  {
                     if(§9!R§ != null)
                     {
                        if(_loc2_)
                        {
                           §9!R§.dispose();
                        }
                        §9!R§ = null;
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                     §3!#§.dispose();
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
                  §3!#§ = null;
                  §<!Y§.dispose();
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               §§goto(addr00d6);
            }
            Context3DUtils.§"[§ = null;
            break;
         }
      }
      
      public function §&!2§(param1:Model) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc2_)
            {
               loop1:
               while(true)
               {
                  if(param1.§0p§ <= 0)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(false);
                           if(!_loc2_)
                           {
                              if(param1.§0p§ >= 0)
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                           }
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(§9!R§ == null);
                              if(!_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_)
                                 {
                                    break loop2;
                                 }
                              }
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           §§push(§@8§);
                           break loop0;
                        }
                        if(_loc2_)
                        {
                           break loop1;
                        }
                     }
                     §§push(Boolean(§§pop()));
                     break loop3;
                  }
                  if(!_loc2_)
                  {
                     addr002f:
                     §§push(§3!#§);
                     break loop0;
                  }
                  §§push(§9!R§);
                  break loop0;
               }
               §§goto(addr00a4);
            }
            §§goto(addr002f);
         }
         §§pop().§&!2§(param1);
         addr00a4:
      }
   }
}

