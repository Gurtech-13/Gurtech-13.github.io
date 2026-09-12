package §!]§
{
   import §<?§.§#!7§;
   import §>!O§.§#!6§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§'!O§;
   import com.player03.layout.§38§;
   import flash.geom.Matrix;
   
   public class §7f§ extends §'!O§
   {
      
      public static var §23§:Array = [12364668,13154184];
      
      public static var §?6§:Array = [1,1];
      
      public static var §2Z§:Array = [0,255];
      
      public var scale:§38§;
      
      public var matrix:Matrix;
      
      public var §0!7§:Number;
      
      public var §0!]§:Number;
      
      public function §7f§(param1:Number, param2:Number)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            if(!_loc4_)
            {
               super();
               while(true)
               {
                  if(_loc5_)
                  {
                     scale = §&d§.§1$§().scale;
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(§§findproperty(§0!7§));
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / scale.x);
                     }
                     §§pop().§0!7§ = §§pop();
                     if(_loc4_)
                     {
                        break loop0;
                     }
                  }
                  §§push(§§findproperty(§0!]§));
                  §§push(param2);
                  if(_loc5_)
                  {
                     §§push(§§pop() / scale.y);
                  }
                  §§pop().§0!]§ = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
                  break loop0;
               }
            }
            matrix = new Matrix();
            break;
         }
         while(true)
         {
            §§push(§6;§);
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(§§pop());
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            layout.§6"§.push(new §#!7§(null,null,new §#!6§(_loc3_)));
         }
      }
      
      public function §6;§() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(int(Math.round(§0!7§ * scale.x)));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(int(Math.round(§0!]§ * scale.y)));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  matrix.identity();
                  if(_loc4_)
                  {
                     break;
                  }
                  matrix.createGradientBox(_loc1_ * 1.5,_loc2_ * 1.5,0,_loc1_ * 0.8,_loc2_ * 1.2);
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  graphics.clear();
               }
               graphics.beginGradientFill("radial",§7f§.§23§,§7f§.§?6§,§7f§.§2Z§,matrix,"pad");
               graphics.drawRect(0,0,_loc1_,_loc2_);
               break loop0;
            }
            return;
         }
         graphics.endFill();
         break loop1;
      }
   }
}

