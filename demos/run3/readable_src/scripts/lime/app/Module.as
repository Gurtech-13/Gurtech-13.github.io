package lime.app
{
   import §?!6§.§-!H§;
   import haxe.Log;
   import haxe.ds.IntMap;
   import lime.graphics.RenderContext;
   import lime.graphics.Renderer;
   import lime.ui.§88§;
   import lime.ui.Window;
   import lime.ui.§`!"§;
   import lime.ui.§`!+§;
   
   public class Module implements §0o§
   {
      
      public var §1f§:§+o§ = new §+o§();
      
      public var §08§:Array = [];
      
      public var §?q§:Array = [];
      
      public var §9!O§:Preloader;
      
      public var §&!]§:Application;
      
      public function Module()
      {
      }
      
      public function update(param1:int) : void
      {
      }
      
      public function §?!§(param1:Preloader) : void
      {
         if(§9!O§ != null)
         {
            §9!O§.§,!V§.remove(§7e§);
            §9!O§.onComplete.remove(§#z§);
         }
         §9!O§ = param1;
         if(param1 == null || param1.complete)
         {
            §#z§();
         }
         else
         {
            param1.§,!V§.add(§7e§);
            param1.onComplete.add(§#z§);
         }
      }
      
      public function §%!B§(param1:Renderer) : void
      {
      }
      
      public function § !2§(param1:Application) : void
      {
         var _loc3_:* = null as §`!+§;
         var _loc4_:* = null as §88§;
         §&!]§ = param1;
         param1.§1f§.add(§-!F§,false,0);
         param1.onUpdate.add(update);
         var _loc2_:* = new §-!H§(§`!+§.§7`§.h);
         while(Boolean(_loc2_.hasNext()))
         {
            _loc3_ = _loc2_.next();
            §^!L§(_loc3_);
         }
         §`!+§.§!X§.add(§^!L§);
         _loc2_ = new §-!H§(§88§.§7`§.h);
         while(Boolean(_loc2_.hasNext()))
         {
            _loc4_ = _loc2_.next();
            §65§(_loc4_);
         }
         §88§.§!X§.add(§65§);
         §`!"§.§#!+§.add(§`3§);
         §`!"§.§#N§.add(§0!>§);
         §`!"§.§,!S§.add(§^M§);
      }
      
      public function §9?§(param1:Window) : void
      {
      }
      
      public function §[,§(param1:Window, param2:int, param3:int) : void
      {
      }
      
      public function §9!$§(param1:Window, param2:Number, param3:Number) : void
      {
      }
      
      public function §#%§(param1:Window) : void
      {
      }
      
      public function §'F§(param1:Window) : void
      {
      }
      
      public function §6G§(param1:Window) : void
      {
      }
      
      public function §=$§(param1:Window) : void
      {
      }
      
      public function §[!3§(param1:Window) : void
      {
      }
      
      public function §[<§(param1:Window) : void
      {
      }
      
      public function §0Z§(param1:Window, param2:String) : void
      {
      }
      
      public function §97§(param1:Window) : void
      {
      }
      
      public function §]!P§(param1:Window) : void
      {
      }
      
      public function onWindowClose(param1:Window) : void
      {
      }
      
      public function §5e§(param1:Window) : void
      {
      }
      
      public function §`3§(param1:§`!"§) : void
      {
      }
      
      public function §0!>§(param1:§`!"§) : void
      {
      }
      
      public function §^M§(param1:§`!"§) : void
      {
      }
      
      public function §0%§(param1:Window, param2:String) : void
      {
      }
      
      public function §'q§(param1:Window, param2:String, param3:int, param4:int) : void
      {
      }
      
      public function §?!N§(param1:Renderer, param2:RenderContext) : void
      {
      }
      
      public function §3!W§(param1:Renderer) : void
      {
      }
      
      public function §7e§(param1:int, param2:int) : void
      {
      }
      
      public function §#z§() : void
      {
      }
      
      public function §-u§(param1:Window, param2:Number, param3:Number) : void
      {
      }
      
      public function §!!?§(param1:Window, param2:Number, param3:Number, param4:int) : void
      {
      }
      
      public function §2F§(param1:Window, param2:Number, param3:Number) : void
      {
      }
      
      public function §6J§(param1:Window, param2:Number, param3:Number) : void
      {
      }
      
      public function §04§(param1:Window, param2:Number, param3:Number, param4:int) : void
      {
      }
      
      public function §-!F§(param1:int) : void
      {
      }
      
      public function §9![§(param1:Window, param2:int, param3:int) : void
      {
      }
      
      public function §7U§(param1:Window, param2:int, param3:int) : void
      {
      }
      
      public function §1!V§(param1:§88§, param2:int, param3:Number) : void
      {
      }
      
      public function §#s§(param1:§88§, param2:int, param3:int) : void
      {
      }
      
      public function §7!C§(param1:§88§) : void
      {
      }
      
      public function §>!@§(param1:§88§) : void
      {
      }
      
      public function §6n§(param1:§88§, param2:int) : void
      {
      }
      
      public function §9g§(param1:§88§, param2:int) : void
      {
      }
      
      public function §2!5§(param1:§88§, param2:int, param3:Number) : void
      {
      }
      
      public function § !-§(param1:§`!+§) : void
      {
      }
      
      public function onGamepadConnect(param1:§`!+§) : void
      {
         Log.trace("onGamepadConnect (module)",{
            "fileName":"Module.hx",
            "lineNumber":207,
            "className":"lime.app.Module",
            "methodName":"onGamepadConnect"
         });
      }
      
      public function §#8§(param1:§`!+§, param2:int) : void
      {
      }
      
      public function §3i§(param1:§`!+§, param2:int) : void
      {
      }
      
      public function §3!V§(param1:§`!+§, param2:int, param3:Number) : void
      {
      }
      
      public function §"`§(param1:Window) : void
      {
         var a122:Window;
         var f22:Function;
         var a121:Window;
         var f21:Function;
         var a120:Window;
         var f20:Function;
         var a119:Window;
         var f19:Function;
         var a118:Window;
         var f18:Function;
         var a117:Window;
         var f17:Function;
         var a116:Window;
         var f16:Function;
         var a115:Window;
         var f15:Function;
         var a114:Window;
         var f14:Function;
         var a113:Window;
         var f13:Function;
         var a112:Window;
         var f12:Function;
         var a111:Window;
         var f11:Function;
         var a110:Window;
         var f10:Function;
         var a19:Window;
         var f9:Function;
         var a18:Window;
         var f8:Function;
         var a17:Window;
         var f7:Function;
         var a16:Window;
         var f6:Function;
         var a15:Window;
         var f5:Function;
         var a14:Window;
         var f4:Function;
         var a13:Window;
         var f3:Function;
         var a12:Window;
         var f2:Function;
         var a11:Window;
         var f1:Function;
         var f:Function = §5e§;
         var a1:Window = param1;
         var _loc2_:Function = function():void
         {
            f(a1);
         };
         param1.§9;§.add(_loc2_);
         f1 = §"h§;
         a11 = param1;
         var _loc3_:Function = function():void
         {
            f1(a11);
         };
         param1.§]!$§.add(_loc3_);
         f2 = §]!P§;
         a12 = param1;
         var _loc4_:Function = function():void
         {
            f2(a12);
         };
         param1.§+!O§.add(_loc4_);
         f3 = §97§;
         a13 = param1;
         var _loc5_:Function = function():void
         {
            f3(a13);
         };
         param1.§&h§.add(_loc5_);
         f4 = §0Z§;
         a14 = param1;
         var _loc6_:Function = function(param1:String):void
         {
            f4(a14,param1);
         };
         param1.§-W§.add(_loc6_);
         f5 = §[<§;
         a15 = param1;
         var _loc7_:Function = function():void
         {
            f5(a15);
         };
         param1.§0g§.add(_loc7_);
         f6 = §[!3§;
         a16 = param1;
         var _loc8_:Function = function():void
         {
            f6(a16);
         };
         param1.§ !D§.add(_loc8_);
         f7 = §=$§;
         a17 = param1;
         var _loc9_:Function = function():void
         {
            f7(a17);
         };
         param1.§ $§.add(_loc9_);
         f8 = §6G§;
         a18 = param1;
         var _loc10_:Function = function():void
         {
            f8(a18);
         };
         param1.§8!+§.add(_loc10_);
         f9 = §7U§;
         a19 = param1;
         var _loc11_:Function = function(param1:int, param2:int):void
         {
            f9(a19,param1,param2);
         };
         param1.§7U§.add(_loc11_);
         f10 = §9![§;
         a110 = param1;
         var _loc12_:Function = function(param1:int, param2:int):void
         {
            f10(a110,param1,param2);
         };
         param1.§9![§.add(_loc12_);
         f11 = §'F§;
         a111 = param1;
         var _loc13_:Function = function():void
         {
            f11(a111);
         };
         param1.§+m§.add(_loc13_);
         f12 = §#%§;
         a112 = param1;
         var _loc14_:Function = function():void
         {
            f12(a112);
         };
         param1.§19§.add(_loc14_);
         f13 = §04§;
         a113 = param1;
         var _loc15_:Function = function(param1:Number, param2:Number, param3:int):void
         {
            f13(a113,param1,param2,param3);
         };
         param1.§04§.add(_loc15_);
         f14 = §6J§;
         a114 = param1;
         var _loc16_:Function = function(param1:Number, param2:Number):void
         {
            f14(a114,param1,param2);
         };
         param1.§6J§.add(_loc16_);
         f15 = §2F§;
         a115 = param1;
         var _loc17_:Function = function(param1:Number, param2:Number):void
         {
            f15(a115,param1,param2);
         };
         param1.§2F§.add(_loc17_);
         f16 = §!!?§;
         a116 = param1;
         var _loc18_:Function = function(param1:Number, param2:Number, param3:int):void
         {
            f16(a116,param1,param2,param3);
         };
         param1.§!!?§.add(_loc18_);
         f17 = §-u§;
         a117 = param1;
         var _loc19_:Function = function(param1:Number, param2:Number):void
         {
            f17(a117,param1,param2);
         };
         param1.§-u§.add(_loc19_);
         f18 = §9!$§;
         a118 = param1;
         var _loc20_:Function = function(param1:Number, param2:Number):void
         {
            f18(a118,param1,param2);
         };
         param1.§#N§.add(_loc20_);
         f19 = §[,§;
         a119 = param1;
         var _loc21_:Function = function(param1:int, param2:int):void
         {
            f19(a119,param1,param2);
         };
         param1.§1!§.add(_loc21_);
         f20 = §9?§;
         a120 = param1;
         var _loc22_:Function = function():void
         {
            f20(a120);
         };
         param1.§0!Z§.add(_loc22_);
         f21 = §'q§;
         a121 = param1;
         var _loc23_:Function = function(param1:String, param2:int, param3:int):void
         {
            f21(a121,param1,param2,param3);
         };
         param1.§'q§.add(_loc23_);
         f22 = §0%§;
         a122 = param1;
         var _loc24_:Function = function(param1:String):void
         {
            f22(a122,param1);
         };
         param1.§0%§.add(_loc24_);
         if(param1.id > -1)
         {
            §]!P§(param1);
         }
         §08§.push(param1);
      }
      
      public function §8d§(param1:Renderer) : void
      {
         var a12:Renderer;
         var f2:Function;
         var a11:Renderer;
         var f1:Function;
         var f:Function = §%!B§;
         var a1:Renderer = param1;
         var _loc2_:Function = function():void
         {
            f(a1);
         };
         param1.onRender.add(_loc2_);
         f1 = §3!W§;
         a11 = param1;
         var _loc3_:Function = function():void
         {
            f1(a11);
         };
         param1.§#!O§.add(_loc3_);
         f2 = §?!N§;
         a12 = param1;
         var _loc4_:Function = function(param1:RenderContext):void
         {
            f2(a12,param1);
         };
         param1.§8!]§.add(_loc4_);
         §?q§.push(param1);
      }
      
      public function §"h§(param1:Window) : void
      {
         onWindowClose(param1);
         §08§.remove(param1);
      }
      
      public function §65§(param1:§88§) : void
      {
         var a15:§88§;
         var f5:Function;
         var a14:§88§;
         var f4:Function;
         var a13:§88§;
         var f3:Function;
         var a12:§88§;
         var f2:Function;
         var a11:§88§;
         var f1:Function;
         var a1:§88§;
         var f:Function;
         §>!@§(param1);
         f = §2!5§;
         a1 = param1;
         var _loc2_:Function = function(param1:int, param2:Number):void
         {
            f(a1,param1,param2);
         };
         param1.§6!6§.add(_loc2_);
         f1 = §9g§;
         a11 = param1;
         var _loc3_:Function = function(param1:int):void
         {
            f1(a11,param1);
         };
         param1.§"x§.add(_loc3_);
         f2 = §6n§;
         a12 = param1;
         var _loc4_:Function = function(param1:int):void
         {
            f2(a12,param1);
         };
         param1.§"!A§.add(_loc4_);
         f3 = §7!C§;
         a13 = param1;
         var _loc5_:Function = function():void
         {
            f3(a13);
         };
         param1.§8!L§.add(_loc5_);
         f4 = §#s§;
         a14 = param1;
         var _loc6_:Function = function(param1:int, param2:int):void
         {
            f4(a14,param1,param2);
         };
         param1.§+!L§.add(_loc6_);
         f5 = §1!V§;
         a15 = param1;
         var _loc7_:Function = function(param1:int, param2:Number):void
         {
            f5(a15,param1,param2);
         };
         param1.§?!R§.add(_loc7_);
      }
      
      public function §^!L§(param1:§`!+§) : void
      {
         var a13:§`!+§;
         var f3:Function;
         var a12:§`!+§;
         var f2:Function;
         var a11:§`!+§;
         var f1:Function;
         var a1:§`!+§;
         var f:Function;
         onGamepadConnect(param1);
         f = §3!V§;
         a1 = param1;
         var _loc2_:Function = function(param1:int, param2:Number):void
         {
            f(a1,param1,param2);
         };
         param1.§6!6§.add(_loc2_);
         f1 = §3i§;
         a11 = param1;
         var _loc3_:Function = function(param1:int):void
         {
            f1(a11,param1);
         };
         param1.§"x§.add(_loc3_);
         f2 = §#8§;
         a12 = param1;
         var _loc4_:Function = function(param1:int):void
         {
            f2(a12,param1);
         };
         param1.§"!A§.add(_loc4_);
         f3 = § !-§;
         a13 = param1;
         var _loc5_:Function = function():void
         {
            f3(a13);
         };
         param1.§8!L§.add(_loc5_);
      }
   }
}

