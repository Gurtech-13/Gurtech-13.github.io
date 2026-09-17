package §4!6§
{
   import §,x§.§3!I§;
   import §,x§.§=B§;
   import §8!0§.§2_§;
   import com.player03.run3.level.§59§;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§,T§;
   import nme3D.model.Model;
   import nme3D.shader.§'H§;
   import nme3D.shader.§<!9§;
   import nme3D.shader.vertex.PositionColorVertex;
   
   public class §'!Y§
   {
      
      public var vertices:§!!V§;
      
      public var §+^§:int;
      
      public var §+R§:§=s§;
      
      public var length:int;
      
      public var index:int;
      
      public var §@!,§:String;
      
      public function §'!Y§(param1:§!!V§, param2:String)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               index = 0;
               while(true)
               {
                  if(_loc3_)
                  {
                     vertices = param1;
                     §@!,§ = param2;
                     if(_loc4_)
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        §§push(§§findproperty(length));
                        §§push(param1.§@!Y§.length);
                        if(_loc3_)
                        {
                           §§push(int(§§pop()));
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(§§pop() / param1.§5G§);
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     §§pop().length = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  §§push(param1);
                  §§push(param1.§5G§);
                  if(_loc3_)
                  {
                     §§push(§§pop() * 0);
                  }
                  §§pop().offset = §§pop();
                  break;
               }
               §+R§ = param1.§25§(param2);
            }
            §+^§ = §+R§.offset;
            break;
         }
      }
      
      public function next() : §=s§
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:§!!V§ = vertices;
         §§push(_loc1_);
         §§push(_loc1_.§5G§);
         §§push(§§findproperty(index));
         var _temp_2:* = index;
         §§push(_temp_2);
         §§push(_temp_2);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(§§pop() + 1);
         }
         §§pop().index = §§pop();
         if(!_loc3_)
         {
            §§push(§§pop() * _loc2_);
         }
         §§pop().offset = §§pop();
         if(!_loc3_)
         {
            §§push(§+R§);
            §§push(_loc1_.offset);
            if(_loc4_)
            {
               §§push(§§pop() + §+^§);
            }
            §§pop().offset = §§pop();
         }
         return §+R§;
      }
      
      public function hasNext() : Boolean
      {
         return index < length;
      }
   }
}

