package com.player03.run3.character
{
   import §1^§.Transform;
   import §2!"§.§1e§;
   import §4!6§.§=s§;
   import §=w§.§,D§;
   import haxeutils.math.geom.§"B§;
   import haxeutils.math.geom.Point3D;
   import nme3D.§1![§;
   import nme3D.model.§'h§;
   import nme3D.shader.§'H§;
   
   public class §4S§ extends §1e§ implements §,D§
   {
      
      public var §&!"§:Number;
      
      public var §7!N§:§1e§;
      
      public var §"[§:§1![§;
      
      public var §#!2§:Number;
      
      public function §4S§(param1:§6O§, param2:§1e§, param3:§1![§)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §#!2§ = 0.5;
         §&!"§ = 0;
         §§push(this);
         §§push(param1.§`6§());
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         §§pop().super(§§pop(),null,0.5024916943521596,0,-1.5,false,false,null,true);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  §#"§(false);
                  §0p§ = -1;
                  if(_loc4_)
                  {
                     break;
                  }
                  §;!6§(new Transform());
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               §7!N§ = param2;
               break;
            }
            §"[§ = param3;
            break;
         }
      }
      
      override public function update(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §#"§(§&!"§ > 0);
         while(true)
         {
            if(!_loc3_)
            {
               if(§&!"§ <= 0)
               {
                  break;
               }
               §§push(§§findproperty(§&!"§));
               §§push(§&!"§);
               if(_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§&!"§ = §§pop();
               while(true)
               {
                  if(_loc2_)
                  {
                     if(§;Z§ != null)
                     {
                        break;
                     }
                  }
                  §"[§.§&!2§(this);
                  break;
               }
               §,=§(§7!N§.§45§);
               if(!_loc2_)
               {
                  break;
               }
            }
            transform.§"w§(§7!N§.transform.§2!§());
            §§push(transform);
            §§push(0);
            §§push(0);
            §§push(0.12);
            if(!_loc3_)
            {
               while(true)
               {
                  §§push(§#!2§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(§&!"§);
                  }
                  §§push(§§pop() - §§pop());
                  break;
               }
            }
            §§pop().translate(§§pop(),§§pop(),§§pop());
            if(_loc2_)
            {
               transform.§"I§(§7!N§.transform.§>;§());
               super.update(param1);
            }
            break;
         }
      }
      
      public function reset() : void
      {
      }
      
      public function §=!V§() : Boolean
      {
         return false;
      }
   }
}

