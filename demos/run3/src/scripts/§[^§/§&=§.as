package §[^§
{
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §2X§.§"S§;
   import §>T§.§@o§;
   import §>T§.§`C§;
   import com.player03.run3.level.§ !W§;
   import flash.Boot;
   import haxeutils.math.geom.§"B§;
   import nme3D.shader.§'H§;
   import nme3D.shader.§=A§;
   
   public class §&=§ extends §"S§
   {
      
      public var tunnel:§ !W§;
      
      public var texture:§[!9§;
      
      public var §-j§:int;
      
      public var §#F§:int;
      
      public var §7F§:§'H§;
      
      public var rotation:§"B§;
      
      public var background:Boolean;
      
      public function §&=§(param1:§ !W§, param2:§5p§, param3:Object, param4:String, param5:int, param6:int, param7:§"B§, param8:Boolean)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         super(param1,param2,null,param3);
         tunnel = param1;
         if(!_loc10_)
         {
            §-j§ = param5;
            §#F§ = param6;
            rotation = param7;
         }
         background = param8;
         texture = §'!b§.§?!3§(param4);
         if(_loc9_)
         {
            §7F§ = §=A§.§1r§(texture);
         }
      }
   }
}

