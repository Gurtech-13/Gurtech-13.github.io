package §7!Z§
{
   import §!!$§.§?y§;
   import §%!Q§.§>K§;
   import §-!!§.§&!;§;
   import §-!!§.§2!B§;
   import §=w§.§,D§;
   import §>!O§.§;R§;
   import §>!O§.§=!]§;
   import §>!O§.§^`§;
   import §@]§.§;!!§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.layout.§[k§;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import unitsystem.§7o§;
   
   public class §4!P§ extends §[k§ implements §,D§
   {
      
      public function §4!P§()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc2_)
               {
                  if(parent == null)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §7o§.controlScheme.update(param1);
               if(_loc3_)
               {
                  break loop0;
               }
               while(true)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     §§push(§7o§.instance.paused);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§pop();
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0097);
            }
            return;
         }
         while(true)
         {
            §§push(§=!V§());
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  break;
               }
               §§push(!§§pop());
               if(!_loc2_)
               {
                  break;
               }
            }
            §§push(Boolean(§§pop()));
            break;
         }
         addr0097:
         if(§§pop())
         {
            if(_loc2_)
            {
               addr00a0:
               §7o§.instance.§+D§(true);
            }
         }
         break loop1;
      }
      
      public function reset() : void
      {
      }
      
      public function §=!V§() : Boolean
      {
         return true;
      }
      
      override public function §^g§() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:TextField = §&!;§.§9Q§(16777215,56,null,"Swipe on this side to move sideways. Hold to keep going.",100);
         var _loc2_:* = null;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc5_)
               {
                  if(_loc2_ != null)
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     break loop0;
                  }
               }
               _loc2_ = int(Number(_loc1_.defaultTextFormat.size));
               break;
            }
            §&d§.§1$§().add(new §?y§(_loc1_),new §=!]§(int(_loc2_)));
            break;
         }
         var _loc3_:§ 7§ = new §?y§(_loc1_);
         if(_loc6_)
         {
            §&d§.§1$§().add(_loc3_,new §30§(true,0.5));
         }
         _loc3_ = new §?y§(_loc1_);
         while(true)
         {
            if(_loc6_)
            {
               §&d§.§1$§().add(_loc3_,new §;!!§(60,§2u§.LEFT));
               if(_loc5_)
               {
                  break;
               }
            }
            addChild(_loc1_);
            break;
         }
         var _loc4_:Bitmap = §2!B§.§83§("instructions/SwipeVisualInstructions.png");
         _loc3_ = new §?y§(_loc4_);
         while(true)
         {
            if(!_loc5_)
            {
               §&d§.§1$§().add(_loc3_,§^`§.§ !P§(§2u§.BOTTOM));
               if(!_loc6_)
               {
                  break;
               }
            }
            addChild(_loc4_);
            break;
         }
      }
   }
}

