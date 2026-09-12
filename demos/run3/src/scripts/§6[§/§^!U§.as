package §6[§
{
   import §-!!§.§8!8§;
   import §6!Q§.§'!E§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§38§;
   import com.player03.run3.menu.§ L§;
   import flash.display.Graphics;
   import flash.display.Shape;
   import haxe.ds.StringMap;
   
   public class §^!U§ extends §8!8§
   {
      
      public var §?L§:Number;
      
      public var § U§:Boolean;
      
      public var §'!@§:Shape;
      
      public function §^!U§(param1:Function, param2:Boolean, param3:Number)
      {
         var a1:§38§;
         var f:Function;
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(_loc6_)
            {
               super(param1);
               if(_loc6_)
               {
                  § U§ = param2;
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            §?L§ = param3;
            if(_loc6_)
            {
               break;
            }
            §§goto(addr0057);
         }
         §'!@§ = new Shape();
         if(_loc6_)
         {
            addr0057:
            addChild(§'!@§);
            §§goto(addr006e);
         }
         addr006e:
         var _loc4_:§&d§ = §&d§.§1$§();
         if(_loc6_)
         {
            §§push(§§newactivation());
            §§push(§6;§);
            if(!_loc7_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[1] = §§pop();
            if(!_loc7_)
            {
               a1 = §&d§.§1$§().scale;
            }
         }
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            _loc4_.§6"§.push(new §#!7§(null,null,new §#!6§(_loc5_)));
            if(_loc6_)
            {
               _loc5_();
            }
         }
      }
      
      public function §6;§(param1:§38§) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Graphics = §'!@§.graphics;
         if(!_loc5_)
         {
            _loc2_.clear();
         }
         §§push(param1.x);
         if(!_loc5_)
         {
            §§push(§§pop() * §?L§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.y);
         if(!_loc5_)
         {
            §§push(§§pop() * §?L§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         _loc2_.beginFill(0,0);
         _loc2_.drawRect(0,0,25 * _loc3_,25 * _loc4_);
         if(!_loc5_)
         {
            _loc2_.endFill();
            _loc2_.lineStyle(3 * _loc4_,0);
            _loc2_.moveTo(6.5 * _loc3_,12.5 * _loc4_);
            while(true)
            {
               if(_loc6_)
               {
                  _loc2_.lineTo(18.5 * _loc3_,12.5 * _loc4_);
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               if(§ U§)
               {
                  if(_loc6_)
                  {
                     _loc2_.moveTo(12.5 * _loc3_,6.5 * _loc4_);
                     if(_loc6_)
                     {
                        _loc2_.lineTo(12.5 * _loc3_,18.5 * _loc4_);
                     }
                  }
               }
               break;
            }
         }
      }
   }
}

