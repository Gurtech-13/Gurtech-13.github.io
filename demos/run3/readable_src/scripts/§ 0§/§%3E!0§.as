package § 0§
{
   import §!!$§.§ 6§;
   import §"!L§.§%z§;
   import §%!Z§.§&!S§;
   import §%!a§.§>!Y§;
   import §4n§.§>!,§;
   import §4n§.Achievement;
   import §4n§.Achievements;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.CharacterBase;
   import com.player03.run3.character.CharacterDef;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.trigger.§,!A§;
   import com.player03.run3.level.trigger.§<!§;
   import com.player03.run3.level.trigger.condition.§#!G§;
   import com.player03.run3.level.trigger.condition.ConditionChain;
   import flash.geom.Rectangle;
   
   public class §>!0§ extends §>!,§ implements §+<§
   {
      
      public static var instance:§>!0§;
      
      public function §>!0§()
      {
         var a3:Boolean;
         var a2:Vector.<int>;
         var a1:Vector.<§#!G§>;
         var f:Function;
         var invZ:Number;
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         while(true)
         {
            if(!_loc6_)
            {
               super();
               if(!_loc7_)
               {
                  break;
               }
            }
            invZ = 1 / 15000;
            break;
         }
         §§push([new §#!G§(function(param1:Level):Number
         {
            var _temp_1:* = false;
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = _temp_1;
            §§push(param1.characters[0].transform.position.z);
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(param1.analytics.§0;§.§&5§.z);
                  if(_loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(invZ);
                  }
                  return §§pop() * §§pop();
               }
            }
            return §§pop();
         }),new §>!Y§(500)]);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:Vector.<§#!G§> = Vector.<§#!G§>(_loc1_);
         var _loc3_:Achievement = Achievements.§7N§;
         §§push(§§findproperty(§<!§));
         §§push(_loc3_.§,Y§);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:§<!§ = new §§pop().§<!§(§§pop(),_loc3_);
         var _loc5_:Vector.<int> = new Vector.<int>(0,false);
         while(true)
         {
            if(_loc7_)
            {
               f = function(param1:Vector.<§#!G§>, param2:Vector.<int>, param3:Boolean, param4:§<!§, param5:Level, param6:Object):ConditionChain
               {
                  return new ConditionChain(param1,param2,param3,param4,param5,param6);
               };
               if(!_loc6_)
               {
                  a1 = _loc2_;
                  if(!_loc6_)
                  {
                     a2 = _loc5_;
                     if(_loc6_)
                     {
                        break;
                     }
                     a3 = true;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
               }
            }
            §=! §(null,function(param1:§<!§, param2:Level, param3:Object):ConditionChain
            {
               return f(a1,a2,a3,param1,param2,param3);
            },_loc4_,null);
            break;
         }
      }
      
      public static function §@!A§() : §>!0§
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = null as §>!0§;
         if(!_loc3_)
         {
            if(§>!0§.instance != null)
            {
               return §>!0§.instance;
            }
         }
         return §>!0§.instance = new §>!0§();
      }
      
      override public function §-@§(param1:Achievement, param2:Object = undefined, param3:CharacterDef = undefined) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(param3 != null)
         {
            if(_loc4_)
            {
               param1.§`p§ = §%z§.MODE_WITH_CHARACTER(§,a§.INFINITE,param3);
               if(_loc4_)
               {
               }
            }
         }
         else
         {
            param1.§`p§ = §%z§.MODE(§,a§.INFINITE);
         }
      }
      
      override public function §@B§(param1:Level, param2:§,!A§, param3:Object = undefined) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null as Achievement;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(!_loc5_)
               {
                  if(param3 == null)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     break loop0;
                  }
               }
               _loc4_ = param2.result.achievement;
               if(_loc6_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(_loc6_)
                        {
                           if(_loc4_ == null)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              break loop2;
                           }
                        }
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(_loc4_.§ N§ == 0);
                           if(_loc6_)
                           {
                              break loop2;
                           }
                           break;
                        }
                     }
                     if(!§§pop())
                     {
                        break loop1;
                     }
                     if(_loc5_)
                     {
                        break loop1;
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop3;
               }
               _loc4_.§ N§ = int(Math.round(_loc4_.payout / 5));
               break;
            }
            super.§@B§(param1,param2,param3);
            break;
         }
      }
   }
}

