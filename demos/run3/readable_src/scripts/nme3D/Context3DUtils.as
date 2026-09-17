package nme3D
{
   import §!!$§.§ 6§;
   import §!!0§.§+I§;
   import §%!Z§.§&!S§;
   import §-!!§.§@b§;
   import §0!"§.§-U§;
   import geom3d.Transform;
   import scenes.AngelVsBunny;
   import scenes.Cutscenes;
   import §3F§.§4!V§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import world3d.Entity3D;
   import §[^§.§+`§;
   import com.adobe.utils.PerspectiveMatrix3D;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.run3.Main;
   import com.player03.run3.Save;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import flash.Boot;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DCompareMode;
   import flash.display3D.Context3DProfile;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DRenderMode;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import haxe.Log;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Matrix3D;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.Object3D;
   import nme3D.model.Model;
   import openfl.Lib;
   import openfl.utils.AGALMiniAssembler;
   
   public class Context3DUtils
   {
      
      public static var init__:Boolean;
      
      public static var §2L§:Stage3D;
      
      public static var context3D:Context3D;
      
      public static var §"[§:Scene3D;
      
      public static var §"#§:Object3D;
      
      public static var §0b§:Function;
      
      public static var §2!a§:Boolean;
      
      public static var §9!§:Number;
      
      public static var §?G§:Number;
      
      public static var §^!3§:Number;
      
      public static var §`!G§:Boolean;
      
      public static var §;>§:Number;
      
      public static var §6!§:PerspectiveMatrix3D;
      
      public static var §5#§:§4!V§;
      
      public static var §2z§:Boolean;
      
      public static var §3]§:Number;
      
      public static var §7"§:Number;
      
      public static var backgroundColor:int = 0;
      
      public static var §>!K§:int = 2;
      
      public static var §&#§:Rectangle = null;
      
      public static var §7?§:Boolean = false;
      
      public static var §#j§:Boolean = false;
      
      public static var §7L§:int = 0;
      
      public static var §;!B§:Boolean = false;
      
      public function Context3DUtils()
      {
      }
      
      public static function init(param1:Function, param2:Number = 2.356194490192345, param3:Number = 1, param4:Number = 50, param5:Boolean = false, param6:Boolean = true) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         Context3DUtils.§0b§ = param1;
         while(true)
         {
            if(_loc8_)
            {
               Context3DUtils.§2!a§ = param6;
               if(!_loc9_)
               {
                  Context3DUtils.§3]§ = param3;
                  if(!_loc9_)
                  {
                     Context3DUtils.§7"§ = param4;
                     if(_loc9_)
                     {
                        break;
                     }
                  }
               }
            }
            Context3DUtils.§;>§ = param2;
            if(!_loc9_)
            {
               break;
            }
            var _loc7_:Stage = Lib.get_current().stage;
            §§goto(addr0063);
         }
         Context3DUtils.§`!G§ = param5;
         addr0063:
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc9_)
               {
                  Context3DUtils.§2L§ = _loc7_.stage3Ds[0];
                  if(!_loc9_)
                  {
                     _loc7_.addEventListener(Event.RESIZE,Context3DUtils.§1!§);
                     if(_loc9_)
                     {
                        break;
                     }
                     Context3DUtils.§2L§.addEventListener(Event.CONTEXT3D_CREATE,Context3DUtils.contextCreated);
                     if(_loc9_)
                     {
                        break loop1;
                     }
                  }
               }
               Context3DUtils.§2L§.addEventListener(ErrorEvent.ERROR,Context3DUtils.contextCreateError);
               if(!_loc9_)
               {
                  break;
               }
               break loop1;
            }
            Context3DUtils.§2L§.requestContext3D();
            break;
         }
      }
      
      public static function contextCreateError(param1:ErrorEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(param1.errorID == 3702)
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(Context3DUtils.§;!B§)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        Log.trace("Error #3702 creating Context3D: Context3D not available.",{
                           "fileName":"Context3DUtils.hx",
                           "lineNumber":130,
                           "className":"nme3D.Context3DUtils",
                           "methodName":"contextCreateError"
                        });
                        if(_loc3_)
                        {
                           addr0099:
                           while(true)
                           {
                              §§push(Log);
                              §§push("Error #" + param1.errorID);
                              if(_loc3_)
                              {
                                 §§push(" creating Context3D: ");
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + param1.text);
                                 }
                                 §§push(§§pop());
                              }
                              §§push("fileName");
                              break;
                           }
                           §§pop().trace(§§pop(),{
                              (§§pop()):"Context3DUtils.hx",
                              "lineNumber":140,
                              "className":"nme3D.Context3DUtils",
                              "methodName":"contextCreateError"
                           });
                           break loop0;
                        }
                     }
                     else
                     {
                        Context3DUtils.§;!B§ = true;
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                  }
                  Context3DUtils.§2L§.requestContext3D(Context3DRenderMode.AUTO,Context3DProfile.BASELINE_CONSTRAINED);
                  if(_loc3_)
                  {
                     break;
                  }
                  break loop0;
               }
               return;
            }
            §§goto(addr0099);
         }
      }
      
      public static function contextCreated(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         Context3DUtils.context3D = Context3DUtils.§2L§.context3D;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc4_)
               {
                  if(Context3DUtils.context3D != null)
                  {
                     Lib.get_current().stage.addEventListener(Event.ENTER_FRAME,Context3DUtils.§%!B§);
                     break;
                  }
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               Log.trace("Failed to create Context3D, even though it reported success.",{
                  "fileName":"Context3DUtils.hx",
                  "lineNumber":149,
                  "className":"nme3D.Context3DUtils",
                  "methodName":"contextCreated"
               });
               if(_loc4_)
               {
                  break loop0;
               }
               break;
            }
            var _loc2_:Stage = Lib.get_current().stage;
            Context3DUtils.§1!§(null);
            while(true)
            {
               if(Context3DUtils.§2!a§)
               {
                  Context3DUtils.context3D.setBlendFactors(Context3DBlendFactor.SOURCE_ALPHA,Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               §§push(Context3DUtils.§0b§);
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               if(§§pop() != null)
               {
                  break;
               }
               §§goto(addr0105);
            }
            Context3DUtils.§0b§();
            Context3DUtils.§0b§ = null;
            addr0105:
            return;
         }
      }
      
      public static function §%!B§(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(Context3DUtils.context3D == null)
         {
            Context3DUtils.§7?§ = true;
            return;
         }
         §§push(Context3DUtils.§#j§);
         if(!_loc3_)
         {
            if(§§pop())
            {
               return;
            }
            loop0:
            while(true)
            {
               while(true)
               {
                  if(Context3DUtils.§"[§ != null)
                  {
                     Context3DUtils.§"[§.§%!B§(false);
                     §§push(Context3DUtils.§7?§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        return;
                     }
                  }
                  else if(Context3DUtils.context3D != null)
                  {
                     if(_loc2_)
                     {
                        Context3DUtils.context3D.clear(Context3DUtils.§9!§,Context3DUtils.§?G§,Context3DUtils.§^!3§);
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
                  Context3DUtils.context3D.setTextureAt(0,null);
                  Context3DUtils.context3D.setDepthTest(false,Context3DCompareMode.ALWAYS);
                  break loop0;
               }
            }
            Context3DUtils.§5#§.§>!?§(Context3DUtils.context3D,0,true);
            Context3DUtils.§"#§.§%!B§(Context3DUtils.§5#§,true);
            §§push(Context3DUtils.§7?§);
            break loop1;
         }
         if(§§pop())
         {
            return;
         }
         Context3DUtils.context3D.present();
      }
      
      public static function createProgram(param1:String, param2:String) : Program3D
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc6_:* = null as String;
         var _loc7_:* = null as String;
         var _loc8_:* = null as StringMap;
         var _loc3_:Program3D = Context3DUtils.context3D.createProgram();
         var _loc4_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc5_:ByteArray = null;
         var _temp_1:* = Context3DProgramType.VERTEX;
         §§push(_temp_1);
         if(!(_temp_1 is String))
         {
            throw "Class cast error";
         }
         _loc7_ = §§pop();
         loop0:
         while(true)
         {
            loop1:
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
                        §§push(_loc7_);
                        if(_loc13_)
                        {
                           §§push("fragment");
                           if(!_loc13_)
                           {
                              break;
                           }
                           if(§§pop() == §§pop())
                           {
                              §§push("part fragment 1 \n");
                              §§push(param1);
                              if(!_loc13_)
                              {
                                 break loop10;
                              }
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc13_)
                                 {
                                    §§push(§§pop());
                                    §§push("endpart");
                                    if(!_loc14_)
                                    {
                                       _loc6_ = §§pop() + §§pop();
                                       _loc4_.§=%§(_loc6_);
                                       if(_loc13_)
                                       {
                                          _loc8_ = _loc4_.r;
                                          while(true)
                                          {
                                             if(_loc13_)
                                             {
                                                if(!("fragment" in StringMap.§+!#§))
                                                {
                                                   §§push(_loc8_.h["fragment"]);
                                                   break;
                                                }
                                             }
                                             §§push(_loc8_.getReserved("fragment"));
                                             break;
                                          }
                                          _loc5_ = §§pop().data;
                                          break loop0;
                                       }
                                       break;
                                    }
                                    §§goto(addr0110);
                                 }
                                 else
                                 {
                                    §§goto(addr0105);
                                 }
                              }
                              §§goto(addr0133);
                           }
                           else
                           {
                              §§push(_loc7_);
                           }
                        }
                        §§push("vertex");
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        §§push("part vertex 1 \n");
                        if(_loc13_)
                        {
                           §§push(param1);
                           break;
                        }
                        break loop9;
                     }
                     Boot.lastError = new Error();
                     if(_loc13_)
                     {
                        break loop1;
                     }
                     break loop0;
                  }
                  addr0105:
                  addr0111:
                  §§push(§§pop() + §§pop());
                  if(_loc13_)
                  {
                     addr0110:
                     §§push(§§pop() + "endpart");
                  }
                  §§push(§§pop());
                  if(!_loc14_)
                  {
                     _loc6_ = §§pop();
                     if(_loc13_)
                     {
                        _loc4_.§=%§(_loc6_);
                        if(!_loc14_)
                        {
                           addr0133:
                           _loc8_ = _loc4_.r;
                           while(true)
                           {
                              if(_loc13_)
                              {
                                 if(!("vertex" in StringMap.§+!#§))
                                 {
                                    §§push(_loc8_.h["vertex"]);
                                    break;
                                 }
                              }
                              §§push(_loc8_.getReserved("vertex"));
                              break;
                           }
                           _loc5_ = §§pop().data;
                           break loop0;
                        }
                     }
                     break loop1;
                  }
                  break;
               }
               throw §§pop();
            }
            §§push("Unknown Context3DProgramType");
            break loop9;
         }
         var _loc9_:ByteArray = _loc5_;
         var _loc10_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc11_:ByteArray = null;
         var _temp_2:* = Context3DProgramType.FRAGMENT;
         §§push(_temp_2);
         if(!(_temp_2 is String))
         {
            throw "Class cast error";
         }
         §§push(§§pop());
         if(_loc13_)
         {
            §§push(§§pop());
         }
         var _loc12_:* = §§pop();
         loop2:
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  §§push(_loc12_);
                  if(_loc13_)
                  {
                     §§push("fragment");
                     if(_loc14_)
                     {
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              while(true)
                              {
                                 §§push("part fragment 1 \n");
                                 if(_loc13_)
                                 {
                                    §§push(param2);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       §§push("endpart");
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc14_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc13_)
                                             {
                                                break loop6;
                                             }
                                             _loc10_.§=%§(_loc7_);
                                             if(_loc14_)
                                             {
                                                break loop2;
                                             }
                                             _loc8_ = _loc10_.r;
                                             while(true)
                                             {
                                                if(_loc13_)
                                                {
                                                   if(!("fragment" in StringMap.§+!#§))
                                                   {
                                                      §§push(_loc8_.h["fragment"]);
                                                      break;
                                                   }
                                                }
                                                §§push(_loc8_.getReserved("fragment"));
                                                break;
                                             }
                                             _loc11_ = §§pop().data;
                                             if(_loc13_)
                                             {
                                                break loop6;
                                             }
                                             §§goto(addr0319);
                                          }
                                          §§goto(addr02a1);
                                       }
                                       §§goto(addr0295);
                                    }
                                    §§goto(addr0288);
                                 }
                                 §§goto(addr0292);
                              }
                              §§goto(addr029f);
                           }
                           §§goto(addr0231);
                        }
                        §§goto(addr0310);
                     }
                     else
                     {
                        §§push(_loc12_);
                     }
                  }
                  §§push("vertex");
                  break;
               }
               if(§§pop() == §§pop())
               {
                  break loop2;
               }
               Boot.lastError = new Error();
               throw "Unknown Context3DProgramType";
            }
            throw §§pop();
         }
         addr0288:
         §§push("part vertex 1 \n" + param2);
         if(_loc13_)
         {
            addr0295:
            addr0292:
            §§push(§§pop() + "endpart");
            if(_loc14_)
            {
               break loop3;
            }
         }
         addr02a1:
         _loc7_ = §§pop();
         _loc10_.§=%§(_loc7_);
         addr029f:
         if(!_loc14_)
         {
            _loc8_ = _loc10_.r;
            while(true)
            {
               if(_loc13_)
               {
                  if(!("vertex" in StringMap.§+!#§))
                  {
                     §§push(_loc8_.h["vertex"]);
                     break;
                  }
               }
               §§push(_loc8_.getReserved("vertex"));
               break;
            }
            _loc11_ = §§pop().data;
         }
         addr0310:
         _loc3_.upload(_loc9_,_loc11_);
         addr0319:
         return _loc3_;
      }
      
      public static function §#!%§(param1:int) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         Context3DUtils.backgroundColor = param1;
         if(_loc2_)
         {
            while(true)
            {
               §§push(Context3DUtils);
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(16);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(_loc2_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               §§push(255);
               break;
            }
            §§pop().§9!§ = §§pop() / §§pop();
            loop1:
            while(true)
            {
               if(_loc2_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(Context3DUtils);
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push(8);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(§§pop() >> §§pop());
                           if(!_loc3_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc2_)
                              {
                                 break loop2;
                              }
                           }
                        }
                        §§push(255);
                        if(_loc2_)
                        {
                           §§push(§§pop() & §§pop());
                           break loop2;
                        }
                        break;
                     }
                     §§pop().§?G§ = §§pop() / §§pop();
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                  }
                  §§push(255);
                  break loop3;
               }
               while(true)
               {
                  §§push(Context3DUtils);
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(255);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() & §§pop());
                  }
                  §§push(255);
                  break;
               }
               §§pop().§^!3§ = §§pop() / §§pop();
               break;
            }
         }
         return param1;
      }
      
      public static function §1!§(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Stage = Lib.get_current().stage;
         while(true)
         {
            if(_loc4_)
            {
               Context3DUtils.§37§(new Rectangle(0,0,_loc2_.stageWidth,_loc2_.stageHeight));
               if(!_loc4_)
               {
                  break;
               }
            }
            Context3DUtils.§2z§ = true;
            break;
         }
      }
      
      public static function § D§() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(Context3DUtils.§2z§);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(!_loc2_)
            {
               Context3DUtils.§1!§(null);
            }
         }
      }
      
      public static function §0r§() : Rectangle
      {
         return Context3DUtils.§&#§.clone();
      }
      
      public static function §37§(param1:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = null as Scene3D;
         var _loc4_:* = null as Matrix3D;
         var _loc5_:* = null as Vector.<Number>;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(!_loc8_)
         {
            Context3DUtils.§&#§ = param1;
            if(_loc9_)
            {
               if(Context3DUtils.context3D != null)
               {
                  §§push(param1.width / param1.height);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc9_)
                        {
                           if(Context3DUtils.§`!G§)
                           {
                              if(_loc8_)
                              {
                                 break loop2;
                              }
                              Context3DUtils.§6!§.perspectiveFieldOfViewLH(Context3DUtils.§;>§,_loc2_,Context3DUtils.§3]§,Context3DUtils.§7"§);
                              Context3DUtils.§5#§.§'!§(param1.left,param1.right,param1.bottom,param1.top,1000,-1000);
                              if(_loc9_)
                              {
                              }
                           }
                           else
                           {
                              Context3DUtils.§6!§.perspectiveFieldOfViewRH(Context3DUtils.§;>§,_loc2_,Context3DUtils.§3]§,Context3DUtils.§7"§);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              Context3DUtils.§5#§.§'!§(param1.left,param1.right,param1.bottom,param1.top,-1000,1000);
                              if(!_loc9_)
                              {
                                 break loop2;
                              }
                           }
                           Context3DUtils.§6!§.appendScale(1,-1,1);
                        }
                        while(true)
                        {
                           if(Context3DUtils.§"[§ != null)
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              _loc3_ = Context3DUtils.§"[§;
                              _loc4_ = _loc3_.§-4§;
                              _loc5_ = Context3DUtils.§6!§.rawData;
                              loop5:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc8_)
                                       {
                                          §§push(int(§§pop()));
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                       }
                                       _loc6_ = §§pop();
                                       if(_loc8_)
                                       {
                                          break loop5;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          break loop6;
                                       }
                                    }
                                    while(§§pop() < 16)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc8_)
                                          {
                                             _loc6_++;
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(int(§§pop()));
                                          break;
                                       }
                                       _loc7_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          §§push(_loc4_.rawData);
                                          §§push(_loc7_);
                                          §§push(_loc5_[_loc7_]);
                                          if(!_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          §§pop()[§§pop()] = §§pop();
                                       }
                                       §§push(_loc6_);
                                    }
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc3_.§%a§ = true;
                                 break;
                              }
                           }
                           Context3DUtils.context3D.configureBackBuffer(int(param1.width),int(param1.height),Context3DUtils.§>!K§,true);
                           break loop3;
                        }
                        addr01fe:
                        Context3DUtils.§2L§.y = param1.y;
                        if(_loc9_)
                        {
                           Context3DUtils.§2z§ = false;
                        }
                        break loop2;
                     }
                     Context3DUtils.§2L§.x = param1.x;
                     §§goto(addr01fe);
                  }
                  return;
               }
            }
         }
      }
      
      public static function §"e§(param1:int) : int
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
               while(true)
               {
                  §§push(true);
                  if(!_loc2_)
                  {
                     if(Context3DUtils.§&#§ == null)
                     {
                        break loop0;
                     }
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §§pop();
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(!_loc3_)
                     {
                        break loop1;
                     }
                     §§push(§§pop() == Context3DUtils.§>!K§);
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop0;
               }
               §§goto(addr008e);
            }
            return §§pop();
         }
         while(true)
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  Context3DUtils.§>!K§ = param1;
                  if(_loc3_)
                  {
                     §§push(Context3DUtils.§>!K§);
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  addr008e:
                  addr008e:
                  Context3DUtils.context3D.configureBackBuffer(int(Context3DUtils.§&#§.width),int(Context3DUtils.§&#§.height),Context3DUtils.§>!K§,true);
               }
            }
            else
            {
               Context3DUtils.§>!K§ = param1;
               if(!_loc2_)
               {
                  §§goto(addr008e);
               }
            }
            return Context3DUtils.§>!K§;
         }
         return §§pop();
      }
   }
}

import flash.geom.Rectangle;

