package
{
   import §=[§.§%R§;
   import §=[§.§-!R§;
   
   public class §%!F§
   {
      
      public var §]=§:§%R§;
      
      public var length:int = 0;
      
      public var h:§%R§;
      
      public function §%!F§()
      {
      }
      
      public function pop() : Object
      {
         if(h == null)
         {
            return null;
         }
         var _loc1_:Object = h.§"3§;
         h = h.next;
         if(h == null)
         {
            §]=§ = null;
         }
         --length;
         return _loc1_;
      }
      
      public function iterator() : §-!R§
      {
         return new §-!R§(h);
      }
      
      public function add(param1:Object) : void
      {
         var _loc2_:§%R§ = new §%R§(param1,null);
         if(h == null)
         {
            h = _loc2_;
         }
         else
         {
            §]=§.next = _loc2_;
         }
         §]=§ = _loc2_;
         ++length;
      }
   }
}

