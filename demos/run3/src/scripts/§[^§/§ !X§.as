package §[^§
{
   import §%!Q§.§>K§;
   import §`_§.§^s§;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.level.§ !W§;
   import flash.display3D.Context3DCompareMode;
   import nme3D.Context3DUtils;
   import nme3D.model.§6U§;
   
   public class § !X§ extends §6U§
   {
      
      public function § !X§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function §+!C§() : void
      {
         Context3DUtils.context3D.setDepthTest(true,Context3DCompareMode.ALWAYS);
      }
      
      override public function §3w§() : void
      {
         Context3DUtils.context3D.setDepthTest(true,Context3DCompareMode.LESS);
      }
   }
}

