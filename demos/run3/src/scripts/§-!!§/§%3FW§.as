package §-!!§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §<!&§.§%!§;
   import com.player03.layout.§ 7§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.menu.§<!J§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   
   public class §?W§ extends Sprite
   {
      
      public var §"!E§:Boolean;
      
      public var §?!_§:Sprite;
      
      public function §?W§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  §"!E§ = true;
                  if(!_loc2_)
                  {
                     break;
                  }
                  super();
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §?!_§ = new Sprite();
               if(!_loc1_)
               {
                  break;
               }
               break loop0;
            }
            super.addChild(§?!_§);
            break;
         }
      }
      
      override public function swapChildrenAt(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §?!_§.swapChildrenAt(param1,param2);
         }
      }
      
      override public function swapChildren(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §?!_§.swapChildren(param1,param2);
         }
      }
      
      public function §3#§(param1:DisplayObject) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.removeChild(param1);
         }
      }
      
      public function §5q§(param1:DisplayObject, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super.addChildAt(param1,param2);
         }
      }
      
      public function §[2§(param1:DisplayObject) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.addChild(param1);
         }
      }
      
      override public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §?!_§.setChildIndex(param1,param2);
         }
      }
      
      override public function removeChildren(param1:int = 0, param2:int = 2147483647) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §"!E§ = true;
         }
         var _loc3_:DisplayObjectContainer = §?!_§;
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!_loc5_)
                        {
                           _loc3_.removeChildren();
                           if(_loc4_)
                           {
                           }
                        }
                        break loop0;
                     }
                     §§push(param2);
                  }
                  §§push(null);
                  break;
               }
               if(§§pop() == §§pop())
               {
                  if(_loc4_)
                  {
                     _loc3_.removeChildren(param1);
                     if(_loc5_)
                     {
                     }
                  }
                  break;
               }
               _loc3_.removeChildren(param1,param2);
               break;
            }
         }
         break loop0;
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §"!E§ = true;
         }
         return §?!_§.removeChildAt(param1);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §"!E§ = true;
         }
         return §?!_§.removeChild(param1);
      }
      
      override public function get numChildren() : int
      {
         return §?!_§.numChildren;
      }
      
      override public function getChildIndex(param1:DisplayObject) : int
      {
         return int(§?!_§.getChildIndex(param1));
      }
      
      override public function getChildByName(param1:String) : DisplayObject
      {
         return §?!_§.getChildByName(param1);
      }
      
      override public function getChildAt(param1:int) : DisplayObject
      {
         return §?!_§.getChildAt(param1);
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §"!E§ = true;
         }
         return §?!_§.addChildAt(param1,param2);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §"!E§ = true;
         }
         return §?!_§.addChild(param1);
      }
   }
}

