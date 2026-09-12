package §-!!§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §>!O§.§ 3§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §>T§.§[C§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §+!%§ extends §8!8§
   {
      
      public var §-7§:TextField;
      
      public var §93§:Function;
      
      public var §=!K§:Shape;
      
      public function §+!%§(param1:int, param2:Number, param3:String, param4:Boolean, param5:Object = undefined, param6:Object = undefined, param7:String = undefined)
      {
         §§push(false);
         var _loc20_:Boolean = true;
         var _loc21_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc20_)
               {
                  if(param6 != null)
                  {
                     break;
                  }
                  if(!_loc20_)
                  {
                     break loop0;
                  }
               }
               param6 = 65280;
               break;
            }
            §§push(this);
            §§push(§,!3§);
            if(_loc20_)
            {
               §§push(§§pop());
            }
            §§pop().super(§§pop());
            if(!_loc21_)
            {
               §-7§ = §&!;§.§9Q§(param1,param2,param7,param3);
            }
            break;
         }
         var _loc8_:TextField = §-7§;
         var _loc9_:* = null;
         if(_loc20_)
         {
            while(true)
            {
               if(_loc9_ == null)
               {
                  if(!_loc20_)
                  {
                     break;
                  }
                  _loc9_ = int(Number(_loc8_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc8_),new §=!]§(int(_loc9_)));
               if(_loc20_)
               {
                  break;
               }
            }
            addChild(§-7§);
         }
         var _loc10_:Rectangle = new Rectangle(0,0,1,1);
         var _loc11_:§ 7§ = new § 6§(_loc10_);
         if(_loc20_)
         {
            while(true)
            {
               §§push(§&d§.§1$§());
               §§push(_loc11_);
               if(!_loc21_)
               {
                  if(param2 == null)
                  {
                     §§push(new §;R§(false));
                     break;
                  }
               }
               §§push(new §`!W§(false,param2));
               break;
            }
            §§pop().add(§§pop(),§§pop());
         }
         _loc11_ = new § 6§(_loc10_);
         var _loc12_:§ 7§ = new §?y§(§-7§);
         if(!_loc21_)
         {
            §&d§.§1$§().add(_loc11_,new §4$§(false,0.5),_loc12_);
            if(!_loc21_)
            {
               §"!9§.§]!A§(new § 6§(_loc10_));
            }
         }
         _loc11_ = new §?y§(§-7§);
         _loc12_ = new § 6§(_loc10_);
         if(_loc20_)
         {
            §&d§.§1$§().add(_loc11_,new §+X§(8,§2u§.RIGHT),_loc12_);
         }
         var _loc13_:Rectangle = new Rectangle();
         while(true)
         {
            if(!_loc21_)
            {
               §&d§.§1$§().add(new § 6§(_loc13_),§ 3§.§7_§(§2u§.RIGHT),new §?y§(§-7§));
               if(_loc21_)
               {
                  break;
               }
            }
            §&d§.§1$§().add(new § 6§(_loc13_),§ 3§.§7_§(§2u§.BOTTOM),new §?y§(§-7§));
            break;
         }
         var _loc14_:Shape = new Shape();
         if(_loc20_)
         {
            §<!T§.fillRect(_loc14_,§^F§.INVISIBLE,null,null,null,new § 6§(_loc13_));
            if(_loc20_)
            {
               addChildAt(_loc14_,0);
            }
         }
         var _loc15_:Shape = new Shape();
         if(!_loc21_)
         {
            §<!T§.fillRect(_loc15_,null,0,param2 * 0.13,param1,new § 6§(_loc10_));
            while(true)
            {
               if(!_loc21_)
               {
                  addChild(_loc15_);
                  if(!_loc20_)
                  {
                     break;
                  }
               }
               §=!K§ = new Shape();
               break;
            }
         }
         var _loc16_:Shape = §=!K§;
         §§push([new Point(-0.1,0.6),new Point(0.4,1),new Point(0.97,-0.1)]);
         if(_loc20_)
         {
            §§push(§§pop());
         }
         var _loc17_:* = §§pop();
         var _loc18_:Vector.<Point> = Vector.<Point>(_loc17_);
         _loc11_ = new § 6§(_loc10_);
         var _loc19_:§<!T§ = new §<!T§(_loc18_);
         §§push(_loc19_);
         §§push(param2);
         if(_loc20_)
         {
            §§push(§§pop() * 0.29);
         }
         §§pop().§4#§ = §§pop();
         _loc19_.§=M§ = param6;
         while(true)
         {
            if(!_loc21_)
            {
               §&d§.§1$§().add(new §?y§(_loc16_),_loc19_,_loc11_);
               if(!_loc20_)
               {
                  break;
               }
               addChild(§=!K§);
               if(!_loc20_)
               {
                  break;
               }
               §+s§(param4);
            }
            §93§ = param5;
            break;
         }
      }
      
      public function §,!3§(param1:Event = undefined) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §+s§(!§=!K§.visible);
         }
      }
      
      public function §+s§(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  if(§=!K§.visible == param1)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
               §=!K§.visible = param1;
               if(!_loc3_)
               {
                  §§push(§93§);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop() != null)
                  {
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  break;
               }
               break loop0;
            }
            return §=!K§.visible;
         }
         §93§(param1);
         break loop1;
      }
   }
}

