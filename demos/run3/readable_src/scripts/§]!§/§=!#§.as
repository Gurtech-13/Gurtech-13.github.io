package §]!§
{
   import flash.display.Graphics;
   
   public class §=!#§ extends §<]§
   {
      
      public var graphics:Graphics;
      
      public function §=!#§(param1:Graphics)
      {
         super();
         graphics = param1;
      }
      
      override public function moveTo(param1:Number, param2:Number) : void
      {
         graphics.moveTo(param1,param2);
      }
      
      override public function lineTo(param1:Number, param2:Number) : void
      {
         graphics.lineTo(param1,param2);
      }
      
      override public function lineStyle(param1:§;h§) : void
      {
         graphics.lineStyle(param1.§[g§,param1.color,param1.alpha,param1.§!x§,param1.scaleMode,param1.§"!6§,param1.§@v§,param1.§[!J§);
      }
      
      override public function §7$§() : void
      {
         graphics.lineStyle();
      }
      
      override public function endFill() : void
      {
         graphics.endFill();
      }
      
      override public function curveTo(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         graphics.curveTo(param1,param2,param3,param4);
      }
      
      override public function beginGradientFill(param1:§4v§) : void
      {
         graphics.beginGradientFill(param1.type,param1.§23§,param1.§?6§,param1.§2Z§,param1.matrix,param1.§7z§,param1.§%4§,param1.focus);
      }
      
      override public function beginFill(param1:int, param2:Number) : void
      {
         graphics.beginFill(param1,param2);
      }
   }
}

