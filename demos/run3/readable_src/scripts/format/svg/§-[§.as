package format.svg
{
   import §]!§.§<]§;
   
   public class §-[§ extends §4!7§
   {
      
      public var cy:Number;
      
      public var cx:Number;
      
      public function §-[§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super(param3,param4);
         cx = param1;
         cy = param2;
      }
      
      override public function §7!G§(param1:§<]§, param2:RenderContext) : void
      {
         param2.§]M§(x,y);
         param1.curveTo(param2.§5T§(cx,cy),param2.§0&§(cx,cy),param2.§@Z§,param2.§8N§);
      }
      
      override public function §&!Z§() : Number
      {
         return cy;
      }
      
      override public function §2%§() : Number
      {
         return cx;
      }
      
      override public function §?!X§() : int
      {
         return 3;
      }
   }
}

