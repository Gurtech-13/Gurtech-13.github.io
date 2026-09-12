package §>d§
{
   import §!!$§.§ 6§;
   import §!!$§.§4o§;
   import §!!$§.§?y§;
   import §%!Z§.§&!S§;
   import §-!!§.§&!;§;
   import §-!!§.§+"§;
   import §2n§.§0"§;
   import §6!Q§.§"q§;
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§+X§;
   import §@]§.§4$§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.menu.§;!G§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §`!Q§ extends §0"§
   {
      
      public var §6#§:String;
      
      public var §<![§:String;
      
      public function §`!Q§(param1:String, param2:String = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_)
            {
               while(true)
               {
                  if(param2 == null)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push("Try Infinite Mode!");
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                     }
                     param2 = §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  §6#§ = param1;
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop0;
               }
               §<![§ = param2;
               if(!_loc3_)
               {
                  break;
               }
            }
            super();
            break;
         }
      }
      
      public function §4!2§(param1:MouseEvent) : void
      {
         §;!G§.§@!A§().§`d§();
      }
      
      override public function §^g§() : void
      {
         var f:Function;
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Number = 60;
         if(!_loc9_)
         {
            layout.add(new §?y§(this),new §30§(true,0.65),new §4o§(§!n§.§&#§));
         }
         var _loc2_:TextField = §&!;§.§9Q§(0,48,null,§6#§);
         var _loc3_:* = null;
         if(!_loc9_)
         {
            while(true)
            {
               if(_loc3_ == null)
               {
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc3_ = int(Number(_loc2_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc2_),new §=!]§(int(_loc3_)));
               break;
            }
         }
         var _loc4_:§ 7§ = new §?y§(_loc2_);
         if(!_loc9_)
         {
            §§push(§&d§.§1$§());
            §§push(_loc4_);
            §§push(§§findproperty(§@$§));
            §§push(true);
            §§push(_loc1_);
            if(_loc8_)
            {
               §§push(§§pop() * 2);
            }
            §§pop().add(§§pop(),new §§pop().§@$§(§§pop(),§§pop()));
         }
         _loc4_ = new §?y§(_loc2_);
         if(_loc8_)
         {
            §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
         }
         _loc4_ = new §?y§(_loc2_);
         if(!_loc9_)
         {
            §&d§.§1$§().add(_loc4_,new §;!!§(_loc1_,§2u§.TOP));
            if(_loc8_)
            {
               addChild(_loc2_);
            }
         }
         §§push(§§findproperty(§+"§));
         §§push(§4!2§);
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         §§push(0);
         §§push(56);
         §§push(§<![§);
         §§push(§#l§.§1g§.§?c§());
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:§+"§ = new §§pop().§+"§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
         if(!_loc9_)
         {
            §&d§.§1$§().add(new §?y§(_loc5_),new §"q§(11184810,6710886,3.6));
         }
         _loc4_ = new §?y§(_loc5_);
         var _loc6_:§ 7§ = new §?y§(_loc2_);
         if(_loc8_)
         {
            §&d§.§1$§().add(_loc4_,new §+X§(45,§2u§.BOTTOM),_loc6_);
         }
         _loc4_ = new §?y§(_loc5_);
         while(true)
         {
            if(_loc8_)
            {
               §&d§.§1$§().add(_loc4_,new §4$§(true,0.5));
               if(_loc9_)
               {
                  break;
               }
            }
            §§push(§§newactivation());
            §§push(_loc5_.§[a§);
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[1] = §§pop();
            break;
         }
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            if(_loc8_)
            {
               layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc7_)));
               if(_loc8_)
               {
                  _loc7_();
                  if(_loc9_)
                  {
                     break;
                  }
                  addChild(_loc5_);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
            §4l§(new §?y§(_loc5_),_loc1_);
            break;
         }
      }
   }
}

