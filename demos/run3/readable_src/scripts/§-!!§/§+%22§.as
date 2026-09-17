package §-!!§
{
   import §!!$§.§ 6§;
   import §!!$§.§?y§;
   import §6!Q§.§"q§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import game.§11§;
   import game.§8s§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§0S§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§@$§;
   import §[!P§.§`!W§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§"!9§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §+"§ extends §8!8§
   {
      
      public var §-7§:TextField;
      
      public function §+"§(param1:Function, param2:int, param3:Number, param4:String, param5:String = undefined, param6:§8!8§ = undefined, param7:Object = undefined, param8:String = undefined)
      {
         var image:Bitmap;
         var layout:§&d§;
         var _gthis:§+"§;
         var imageOnLeft:Object;
         var matchWidthOf:§8!8§;
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         var _loc13_:* = null as § 7§;
         var _loc14_:* = null as § 7§;
         var _loc15_:* = null as Sprite;
         var _loc16_:* = NaN;
         matchWidthOf = param6;
         while(true)
         {
            §§push(§§newactivation());
            if(_loc18_)
            {
               if(param7 != null)
               {
                  break;
               }
            }
            param7 = true;
            break;
         }
         §§pop().§§slot[2] = param7;
         _gthis = this;
         if(_loc18_)
         {
            super(param1);
            layout = §&d§.§1$§();
            §-7§ = §&!;§.§9Q§(param2,param3,param8,param4,null,null,null,null,"left");
         }
         var _loc9_:TextField = §-7§;
         var _loc10_:* = null;
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc19_)
               {
                  if(_loc10_ != null)
                  {
                     break;
                  }
                  if(!_loc18_)
                  {
                     break loop1;
                  }
               }
               _loc10_ = int(Number(_loc9_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc9_),new §=!]§(int(_loc10_)));
            break;
         }
         var _loc11_:DisplayObject = §-7§;
         var _loc12_:Rectangle = new Rectangle();
         _loc13_ = new § 6§(_loc12_);
         _loc14_ = new §?y§(§-7§);
         while(true)
         {
            if(!_loc19_)
            {
               §&d§.§1$§().add(_loc13_,new §@$§(false,0),_loc14_);
               if(_loc19_)
               {
                  break;
               }
            }
            if(matchWidthOf != null)
            {
               break;
            }
            _loc13_ = new § 6§(_loc12_);
            _loc14_ = new §?y§(§-7§);
            if(_loc18_)
            {
               §&d§.§1$§().add(_loc13_,new §@$§(true,0),_loc14_);
            }
            image = null;
            loop4:
            while(true)
            {
               while(true)
               {
                  if(_loc18_)
                  {
                     if(param5 == null)
                     {
                        §'Y§(§-7§);
                        break;
                     }
                     if(_loc19_)
                     {
                        break loop4;
                     }
                  }
                  addr01da:
                  image = §2!B§.§83§(param5,true,false);
                  if(_loc18_)
                  {
                     break loop4;
                  }
                  break;
               }
               _loc13_ = new §?y§(_loc11_);
               _loc14_ = new § 6§(_loc12_);
               if(_loc18_)
               {
                  §&d§.§1$§().add(_loc13_,new §4$§(true,0.5),_loc14_);
               }
               var _loc17_:Shape = new Shape();
               if(!_loc19_)
               {
                  §<!T§.fillRect(_loc17_,§^F§.INVISIBLE,null,null,null,new § 6§(_loc12_));
                  if(_loc18_)
                  {
                     addChild(_loc17_);
                  }
               }
               return;
            }
            _loc13_ = new §?y§(image);
            _loc14_ = new §?y§(§-7§);
            if(!_loc19_)
            {
               §&d§.§1$§().add(_loc13_,new §@$§(false,0),_loc14_);
               if(_loc18_)
               {
                  §"!9§.§]!A§(new §?y§(image));
               }
            }
            _loc15_ = new Sprite();
            while(true)
            {
               if(!_loc19_)
               {
                  _loc15_.addChild(§-7§);
                  if(!_loc18_)
                  {
                     break;
                  }
               }
               _loc15_.addChild(image);
               if(_loc18_)
               {
                  §'Y§(_loc15_);
               }
               break;
            }
            _loc11_ = _loc15_;
            §&d§.§1$§().§6"§.push(new §#!7§(null,null,new §#!6§(function():void
            {
               var _temp_1:* = true;
               var _loc2_:Boolean = false;
               var _loc3_:Boolean = _temp_1;
               var _loc1_:* = 1;
               if(!_loc2_)
               {
                  while(true)
                  {
                     if(matchWidthOf != null)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(matchWidthOf.width);
                        if(!_loc2_)
                        {
                           §§push(§§pop() - _gthis.§-7§.width);
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() - image.width);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() / 3);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() / layout.scale.x);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 §§push(Number(§§pop()));
                                 break;
                              }
                           }
                        }
                        _loc1_ = §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     if(imageOnLeft)
                     {
                        if(!_loc2_)
                        {
                           _gthis.§-7§.x = image.x + image.width + _loc1_ * layout.scale.x;
                           if(_loc2_)
                           {
                           }
                        }
                        break;
                     }
                     image.x = _gthis.§-7§.x + _gthis.§-7§.width + _loc1_ * layout.scale.x;
                     break;
                  }
               }
            })));
            _loc16_ = 1;
            while(true)
            {
               if(matchWidthOf != null)
               {
                  if(_loc19_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(matchWidthOf.width - _gthis.§-7§.width);
                     if(!_loc19_)
                     {
                        §§push(§§pop() - image.width);
                        if(_loc19_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop() / 3 / layout.scale.x);
                     if(!_loc19_)
                     {
                        §§push(Number(§§pop()));
                     }
                     break;
                  }
                  _loc16_ = §§pop();
               }
               if(imageOnLeft)
               {
                  if(_loc18_)
                  {
                     break;
                  }
                  addr036e:
                  if(matchWidthOf != null)
                  {
                     break loop5;
                  }
               }
               else
               {
                  image.x = _gthis.§-7§.x + _gthis.§-7§.width + _loc16_ * layout.scale.x;
                  if(!_loc19_)
                  {
                     §§goto(addr036e);
                  }
               }
               _loc13_ = new § 6§(_loc12_);
               _loc14_ = new §?y§(_loc11_);
               if(_loc18_)
               {
                  §&d§.§1$§().add(_loc13_,new §@$§(true,0),_loc14_);
               }
               break loop5;
            }
            _gthis.§-7§.x = image.x + image.width + _loc16_ * layout.scale.x;
            §§goto(addr036e);
         }
         _loc13_ = new § 6§(_loc12_);
         _loc14_ = new §?y§(matchWidthOf);
         if(!_loc18_)
         {
            continue loop4;
         }
         §&d§.§1$§().add(_loc13_,new §@$§(true,0),_loc14_);
         if(_loc18_)
         {
            continue loop4;
         }
         §§goto(addr01da);
      }
   }
}

