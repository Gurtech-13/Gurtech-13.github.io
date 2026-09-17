package §"!M§
{
   import §%!Q§.§ !>§;
   import §%!Q§.§ !N§;
   import §%!Q§.§>K§;
   import §>T§.§[C§;
   import §`!7§.§`!3§;
   import stage.StageActor;
   import com.player03.run3.character.CharacterRegistry;
   import com.player03.run3.character.CharacterBase;
   import flash.Boot;
   import haxeutils.math.geom.Point3D;
   import haxeutils.sound.AdvancedSound;
   
   public class §8!F§ extends §!!P§
   {
      
      public static var init__:Boolean;
      
      public static var §&!O§:§8!F§;
      
      public static var §,!a§:Number = 0.6;
      
      public static var §"o§:Number = 150;
      
      public var §'!R§:Number;
      
      public var §,;§:Number;
      
      public function §8!F§(param1:Number, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               §'!R§ = param1;
               if(!_loc3_)
               {
                  §,;§ = param2;
               }
            }
         }
      }
      
      override public function §9U§(param1:CharacterBase, param2:§[C§, param3:Point3D) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = NaN;
         loop0:
         while(true)
         {
            if(param3.y < 0.4)
            {
               loop1:
               while(true)
               {
                  if(!_loc5_)
                  {
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§'!R§);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    break loop2;
                                 }
                                 §§push(param1.level.§4<§("iceTraction"));
                                 if(_loc5_)
                                 {
                                    break loop0;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break loop0;
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(!_loc6_)
                                 {
                                    break loop2;
                                 }
                                 §§push(§`!3§);
                                 §§push(param1.level.§>!]§("iceTraction"));
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop().§ M§(§§pop(),_loc4_));
                                 if(!_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                           }
                           _loc4_ = §§pop();
                           if(_loc6_)
                           {
                              break;
                           }
                           break loop2;
                        }
                        param1.§-,§ = _loc4_;
                        if(!_loc5_)
                        {
                           param1.§-9§ = 0.3;
                           if(_loc6_)
                           {
                              break;
                           }
                           break loop1;
                        }
                        break;
                     }
                  }
                  break loop2;
               }
            }
            return true;
         }
         return §§pop();
      }
   }
}

