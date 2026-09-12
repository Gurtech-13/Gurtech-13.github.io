package com.player03.run3.menu
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §=w§.§@[§;
   import com.player03.layout.§ 7§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §[!<§ extends Sprite implements §+<§, §@[§
   {
      
      public static var instance:§[!<§;
      
      public var §5!L§:§@[§;
      
      public var §1!Y§:Sprite;
      
      public function §[!<§()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §@!A§() : §[!<§
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null as §[!<§;
         if(!_loc2_)
         {
            if(§[!<§.instance != null)
            {
               return §[!<§.instance;
            }
         }
         return §[!<§.instance = new §[!<§();
      }
      
      public static function §@!4§() : §[!<§
      {
         return §[!<§.§@!A§();
      }
      
      public function update(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(§5!L§ != null)
            {
               if(_loc3_)
               {
                  § L§.mid = 734305;
                  if(!_loc2_)
                  {
                     §5!L§.update(param1);
                  }
               }
            }
         }
      }
      
      public function §4X§(param1:Sprite) : Sprite
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(§1!Y§ == param1)
               {
                  if(_loc3_)
                  {
                     return §1!Y§;
                  }
               }
               else
               {
                  loop2:
                  while(true)
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(§1!Y§ != null)
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§pop();
                                       if(!_loc3_)
                                       {
                                          break loop4;
                                       }
                                       §§push(§1!Y§.parent == null);
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(!§§pop());
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    break loop3;
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    removeChild(§1!Y§);
                                 }
                              }
                              §1!Y§ = param1;
                              break;
                           }
                           §5!L§ = null;
                           § L§.high = 462718;
                           if(_loc3_)
                           {
                              if(§1!Y§ != null)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(§1!Y§ is §@[§);
                                    break;
                                 }
                              }
                              break loop1;
                           }
                           break loop2;
                        }
                     }
                     break loop3;
                  }
                  §5!L§ = §1!Y§;
                  if(!_loc3_)
                  {
                     break loop0;
                  }
                  addChild(§1!Y§);
               }
               reset();
               if(_loc3_)
               {
                  break;
               }
               break loop0;
            }
            § L§.high = 72916;
            break;
         }
         return §1!Y§;
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            if(!_loc2_)
            {
               if(§1!Y§ == null)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  §4X§(§;!G§.§@!A§());
                  if(_loc2_)
                  {
                     break;
                  }
               }
            }
            if(§5!L§ != null)
            {
               if(!_loc2_)
               {
                  § L§.high = 245325;
                  if(_loc1_)
                  {
                     §5!L§.reset();
                  }
               }
            }
            break;
         }
      }
   }
}

