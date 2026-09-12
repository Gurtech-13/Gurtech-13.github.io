package nme3D.model
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §3!b§.Cutscenes;
   import §3!b§.LizardFellAsleep;
   import §4!6§.§!!V§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import nme3D.shader.§'H§;
   
   public class §1!U§ extends Model
   {
      
      public function §1!U§(param1:§!!V§, param2:§'H§)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            while(true)
            {
               §§push(this);
               §§push(param1);
               §§push(§1!U§);
               §§push(0);
               §§push(param1.§@!Y§.length);
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop() / param1.§5G§);
               }
               §§push(int(§§pop()));
               break;
            }
            §§pop().super(§§pop(),§§pop().§6d§(§§pop(),§§pop()),param2);
         }
      }
      
      public static function §6d§(param1:int, param2:int, param3:Vector.<uint> = undefined) : Vector.<uint>
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = null as Vector.<uint>;
         var _loc7_:* = 0;
         while(true)
         {
            if(_loc8_)
            {
               if(param3 != null)
               {
                  break;
               }
            }
            _loc4_ = new Vector.<uint>(0,false);
            param3 = _loc4_;
            break;
         }
         §§push(param1);
         if(_loc8_)
         {
            §§push(§§pop() + 2);
            if(!_loc9_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(!_loc9_)
         {
            while(_loc5_ < _loc6_)
            {
               §§push(_loc5_);
               if(!_loc9_)
               {
                  _loc5_++;
                  if(_loc8_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc7_ = §§pop();
               if(!_loc9_)
               {
                  §§push(param3);
                  §§push(_loc7_);
                  if(_loc8_)
                  {
                     §§push(§§pop() - 2);
                  }
                  §§pop().push(§§pop());
                  if(!_loc8_)
                  {
                     continue;
                  }
                  §§push(param3);
                  §§push(_loc7_);
                  if(_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  §§pop().push(§§pop());
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               param3.push(_loc7_);
            }
         }
         return param3;
      }
   }
}

