package com.player03.run3.level.trigger
{
   import §3!b§.§+Z§;
   import §3!b§.Cutscenes;
   import §4n§.Achievement;
   
   public class §<!§
   {
      
      public static var init__:Boolean;
      
      public static var §0![§:§<!§;
      
      public var cutsceneName:String;
      
      public var cutscene:§+Z§;
      
      public var §@!S§:Function;
      
      public var achievement:Achievement;
      
      public function §<!§(param1:Function, param2:Achievement = undefined, param3:§+Z§ = undefined, param4:String = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         while(true)
         {
            if(_loc5_)
            {
               §@!S§ = param1;
               if(!_loc5_)
               {
                  break;
               }
               achievement = param2;
               if(_loc6_)
               {
                  break;
               }
               cutscene = param3;
               if(_loc6_)
               {
                  break;
               }
            }
            cutsceneName = param4;
            break;
         }
         §§push(§@!S§);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         if(§§pop() == null)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(cutsceneName == null)
                  {
                     break;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               §§push(§§findproperty(§@!S§));
               §§push(§[4§);
               if(_loc5_)
               {
                  §§push(§§pop());
               }
               §§pop().§@!S§ = §§pop();
               break;
            }
         }
      }
      
      public function §[4§() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:§+Z§ = Cutscenes.§3'§(cutsceneName);
         if(_loc2_)
         {
            if(_loc1_ != null)
            {
               if(!_loc3_)
               {
                  _loc1_.display(1);
               }
            }
         }
      }
   }
}

