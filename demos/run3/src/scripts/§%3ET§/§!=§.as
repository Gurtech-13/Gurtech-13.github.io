package §>T§
{
   import §&!3§.§'z§;
   import §&!3§.§7!?§;
   import §2X§.§"S§;
   import §2X§.PositionData3D;
   import com.player03.run3.level.§ !W§;
   
   public class §!=§ extends §"S§
   {
      
      public var tunnel:§ !W§;
      
      public var §&n§:Vector.<PositionData3D>;
      
      public var §+!R§:Vector.<§[C§>;
      
      public var §>k§:§[C§;
      
      public var indices:Vector.<int>;
      
      public var §]!,§:§0!E§;
      
      public function §!=§(param1:§ !W§, param2:§"=§, param3:Vector.<PositionData3D>, param4:Vector.<int>, param5:§0!E§)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = null;
         while(true)
         {
            if(!_loc7_)
            {
               if(!param1.backwards)
               {
                  _loc6_ = new §7!?§(param3);
                  break;
               }
            }
            _loc6_ = new §'z§(param3);
            break;
         }
         super(param1,param2,null,_loc6_);
         §&n§ = param3;
         indices = param4;
         §§push(param4.length);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         if(§§pop() > 0)
         {
            §+!R§ = new Vector.<§[C§>();
         }
         §]!,§ = param5;
         if(!_loc7_)
         {
            tunnel = param1;
         }
      }
   }
}

