package format.svg
{
   import §]!§.§<]§;
   
   public class §&@§ extends §4!7§
   {
      
      public var cy2:Number;
      
      public var cy1:Number;
      
      public var cx2:Number;
      
      public var cx1:Number;
      
      public function §&@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number)
      {
         super(param5,param6);
         cx1 = param1;
         cy1 = param2;
         cx2 = param3;
         cy2 = param4;
      }
      
      public function §`!H§(param1:Number, param2:Number) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = §!Q§(param1,cx1,0.75);
         var _loc5_:Number = §!Q§(param2,cy1,0.75);
         var _loc6_:Number = §!Q§(x,cx2,0.75);
         var _loc7_:Number = §!Q§(y,cy2,0.75);
         var _loc8_:Number = (x - param1) / 16;
         var _loc9_:Number = (y - param2) / 16;
         var _loc10_:Number = §!Q§(param1,cx1,0.375);
         var _loc11_:Number = §!Q§(param2,cy1,0.375);
         var _loc12_:Number = §!Q§(_loc4_,_loc6_,0.375) - _loc8_;
         var _loc13_:Number = §!Q§(_loc5_,_loc7_,0.375) - _loc9_;
         var _loc14_:Number = §!Q§(_loc6_,_loc4_,0.375) + _loc8_;
         var _loc15_:Number = §!Q§(_loc7_,_loc5_,0.375) + _loc9_;
         var _loc16_:Number = §!Q§(x,cx2,0.375);
         var _loc17_:Number = §!Q§(y,cy2,0.375);
         var _loc18_:Number = (_loc10_ + _loc12_) * 0.5;
         var _loc19_:Number = (_loc11_ + _loc13_) * 0.5;
         var _loc20_:Number = (_loc4_ + _loc6_) * 0.5;
         var _loc21_:Number = (_loc5_ + _loc7_) * 0.5;
         var _loc22_:Number = (_loc14_ + _loc16_) * 0.5;
         var _loc23_:Number = (_loc15_ + _loc17_) * 0.5;
         _loc3_.push(new §-[§(_loc10_,_loc11_,_loc18_,_loc19_));
         _loc3_.push(new §-[§(_loc12_,_loc13_,_loc20_,_loc21_));
         _loc3_.push(new §-[§(_loc14_,_loc15_,_loc22_,_loc23_));
         _loc3_.push(new §-[§(_loc16_,_loc17_,x,y));
         return _loc3_;
      }
      
      override public function §7!G§(param1:§<]§, param2:RenderContext) : void
      {
         var _loc3_:Number = param2.§@Z§;
         var _loc4_:Number = param2.§8N§;
         var _loc5_:Number = param2.§5T§(cx1,cy1);
         var _loc6_:Number = param2.§0&§(cx1,cy1);
         var _loc7_:Number = param2.§5T§(cx2,cy2);
         var _loc8_:Number = param2.§0&§(cx2,cy2);
         param2.§]M§(x,y);
         var _loc9_:Number = param2.§@Z§;
         var _loc10_:Number = param2.§8N§;
         var _loc11_:Number = §!Q§(_loc3_,_loc5_,0.75);
         var _loc12_:Number = §!Q§(_loc4_,_loc6_,0.75);
         var _loc13_:Number = §!Q§(_loc9_,_loc7_,0.75);
         var _loc14_:Number = §!Q§(_loc10_,_loc8_,0.75);
         var _loc15_:Number = (_loc9_ - _loc3_) / 16;
         var _loc16_:Number = (_loc10_ - _loc4_) / 16;
         var _loc17_:Number = §!Q§(_loc3_,_loc5_,0.375);
         var _loc18_:Number = §!Q§(_loc4_,_loc6_,0.375);
         var _loc19_:Number = §!Q§(_loc11_,_loc13_,0.375) - _loc15_;
         var _loc20_:Number = §!Q§(_loc12_,_loc14_,0.375) - _loc16_;
         var _loc21_:Number = §!Q§(_loc13_,_loc11_,0.375) + _loc15_;
         var _loc22_:Number = §!Q§(_loc14_,_loc12_,0.375) + _loc16_;
         var _loc23_:Number = §!Q§(_loc9_,_loc7_,0.375);
         var _loc24_:Number = §!Q§(_loc10_,_loc8_,0.375);
         var _loc25_:Number = (_loc17_ + _loc19_) * 0.5;
         var _loc26_:Number = (_loc18_ + _loc20_) * 0.5;
         var _loc27_:Number = (_loc11_ + _loc13_) * 0.5;
         var _loc28_:Number = (_loc12_ + _loc14_) * 0.5;
         var _loc29_:Number = (_loc21_ + _loc23_) * 0.5;
         var _loc30_:Number = (_loc22_ + _loc24_) * 0.5;
         param1.curveTo(_loc17_,_loc18_,_loc25_,_loc26_);
         param1.curveTo(_loc19_,_loc20_,_loc27_,_loc28_);
         param1.curveTo(_loc21_,_loc22_,_loc29_,_loc30_);
         param1.curveTo(_loc23_,_loc24_,_loc9_,_loc10_);
      }
      
      override public function §&!Z§() : Number
      {
         return cy2;
      }
      
      override public function §2%§() : Number
      {
         return cx2;
      }
      
      override public function §?!X§() : int
      {
         return 4;
      }
      
      public function §!Q§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 + (param2 - param1) * param3;
      }
   }
}

