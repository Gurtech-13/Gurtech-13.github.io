package §7!Z§
{
   import §!!$§.§?y§;
   import §-!!§.§&!;§;
   import §=w§.§,D§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §[!P§.§@$§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import com.player03.run3.Main;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import openfl.Lib;
   import unitsystem.§7o§;
   
   public class §"! § extends §[k§ implements §,D§
   {
      
      public function §"! §()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(parent == null)
               {
                  break;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            §7o§.controlScheme.update(param1);
            break;
         }
      }
      
      public function reset() : void
      {
      }
      
      public function §=!V§() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§7o§.controlScheme.§,h§("jump"));
         if(_loc1_)
         {
            return Boolean(§§pop());
         }
      }
      
      override public function §^g§() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:TextField = §&!;§.§9Q§(16777215,56,null,"Attention citizen: This area is restricted. For your own safety, turn around now.",Lib.get_current().stage.stageWidth,null,null,null,"center");
         var _loc2_:* = null;
         if(_loc5_)
         {
            while(true)
            {
               if(_loc2_ == null)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
               }
               §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
               break;
            }
         }
         var _loc3_:§ 7§ = new §?y§(_loc1_);
         while(true)
         {
            if(_loc5_)
            {
               §&d§.§1$§().add(_loc3_,new §@$§(true,0));
               if(_loc6_)
               {
                  break;
               }
            }
            addChild(_loc1_);
            break;
         }
         §§push(§&!;§);
         §§push(16777215);
         §§push(52);
         §§push(null);
         §§push("Press ");
         if(!_loc6_)
         {
            §§push(Main.instance.§4C§());
            if(!_loc6_)
            {
               §§push(§§pop());
            }
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               §§push(§§pop() + " to jump.");
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               break;
            }
         }
         var _loc4_:TextField = §§pop().§9Q§(§§pop(),§§pop(),§§pop(),§§pop(),100,null,null,null,"center");
         _loc2_ = null;
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(_loc6_)
                  {
                     break loop3;
                  }
               }
               _loc2_ = int(Number(_loc4_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc4_),new §=!]§(int(_loc2_)));
            break;
         }
         _loc3_ = new §?y§(_loc4_);
         if(!_loc6_)
         {
            §&d§.§1$§().add(_loc3_,new §@$§(true,0));
         }
         _loc3_ = new §?y§(_loc4_);
         if(_loc5_)
         {
            §&d§.§1$§().add(_loc3_,§^`§.§ !P§(§2u§.BOTTOM));
            if(_loc5_)
            {
               addChild(_loc4_);
            }
         }
      }
   }
}

