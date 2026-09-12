package §-d§
{
   import §%!Z§.§&!S§;
   import §-!!§.§8!8§;
   import §-!!§.§@b§;
   import §1!a§.§;!$§;
   import §1!a§.§<!2§;
   import §2!"§.§1e§;
   import §3!b§.ComingThrough;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §^!0§.§7P§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§38§;
   import com.player03.run3.Save;
   import com.player03.run3.api.§9'§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.character.§'O§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.menu.§ L§;
   import com.player03.run3.save.§2o§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import haxeutils.sound.§5! §;
   
   public class §4?§ extends §!!-§
   {
      
      public var frames:Vector.<int>;
      
      public function §4?§(param1:Vector.<int>, param2:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            while(true)
            {
               if(param2 == null)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  param2 = false;
               }
               §§push(this);
               §§push(param1[0]);
               if(_loc4_)
               {
                  §§push(int(§§pop()));
               }
               §§pop().super(§§pop(),int(param1.length),param2);
               if(!_loc3_)
               {
                  frames = param1;
               }
               break;
            }
         }
      }
      
      override public function §-!P§(param1:§1e§, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(param2);
                     if(_loc3_)
                     {
                        §§push(length);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           break loop1;
                        }
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        §§push(length);
                        if(_loc4_)
                        {
                           break loop0;
                        }
                     }
                     §§push(1);
                     break;
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  break loop0;
               }
               §§push(param1);
               §§push(frames[param2]);
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               §§pop().§,=§(§§pop());
               if(!_loc4_)
               {
                  param1.§@S§(§@!X§);
               }
            }
            param2 = §§pop();
            if(_loc3_)
            {
               break loop1;
            }
         }
      }
   }
}

