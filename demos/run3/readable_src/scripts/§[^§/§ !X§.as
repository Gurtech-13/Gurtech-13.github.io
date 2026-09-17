package §[^§
{
   import §%!Q§.§>K§;
   import stage.StageActor;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.level.Level;
   import flash.display3D.Context3DCompareMode;
   import nme3D.Context3DUtils;
   import nme3D.model.Object3D;
   
   public class § !X§ extends Object3D
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

