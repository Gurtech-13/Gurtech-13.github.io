package §-!!§
{
   import §%G§.§ m§;
   import §'!1§.§7!b§;
   import §0!"§.§[T§;
   import §1^§.Transform;
   import §2!"§.§1e§;
   import §2!W§.§%U§;
   import §`_§.§']§;
   import §`_§.§^s§;
   import com.player03.run3.character.§'t§;
   import com.player03.run3.character.§4S§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.character.§8J§;
   import com.player03.run3.character.Shadow;
   import com.player03.run3.character.§[!H§;
   import com.player03.run3.character.§]r§;
   import com.player03.run3.level.§ !W§;
   import haxe.ds.StringMap;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class § !,§ extends §6!4§
   {
      
      public var target:§&l§;
      
      public function § !,§(param1:§&l§)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            target = param1;
         }
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  if(_loc2_)
                  {
                     §§push(§]@§._cameraX);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(target._cameraX);
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     if(§§pop() != §§pop())
                     {
                        if(_loc2_)
                        {
                           §]@§.§+!>§(target._cameraX);
                           if(!_loc2_)
                           {
                              break loop0;
                           }
                        }
                     }
                  }
                  §§push(§]@§._cameraY);
                  break;
               }
               §§push(target._cameraY);
               break;
            }
            if(§§pop() != §§pop())
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            §§goto(addr00a0);
         }
         §]@§.§<k§(target._cameraY);
         addr00a0:
      }
   }
}

