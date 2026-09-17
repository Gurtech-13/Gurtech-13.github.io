package §0!J§
{
   import game.§>!N§;
   import game.§>3§;
   import §=b§.§,0§;
   import §>T§.§0!E§;
   import com.player03.layout.§2u§;
   import com.player03.run3.api.GlobalEventManager;
   import com.player03.run3.level.Level;
   import com.player03.run3.level.trigger.§,!A§;
   import flash.Lib;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import haxe.§=!U§;
   import haxe.ds.IntMap;
   
   public class §;!3§ extends TextField
   {
      
      public function §;!3§(param1:Object = undefined, param2:String = undefined, param3:Object = undefined, param4:Object = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc5_)
               {
                  if(param1 == null)
                  {
                     param1 = 0;
                  }
                  super();
                  if(_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(param3 == null)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        param3 = Lib.current.stage.stageWidth;
                     }
                     width = param3;
                     if(param4 == null)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        param4 = Lib.current.stage.stageHeight;
                     }
                     height = param4;
                     mouseEnabled = false;
                     if(!_loc6_)
                     {
                        break;
                     }
                     break loop0;
                  }
               }
               wordWrap = true;
               defaultTextFormat = new TextFormat(param2,24,param1);
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr00e7);
            }
            embedFonts = param2 != null;
            break;
         }
         §§push(§;![§.§@!A§());
         §§push("trace");
         §§push(§6!R§);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         §§pop().addEventListener(§§pop(),§§pop());
         addr00e7:
      }
      
      public static function §0!C§(param1:Object = undefined, param2:String = undefined) : §;!3§
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(param1 == null)
         {
            param1 = 0;
         }
         var _loc3_:§;!3§ = new §;!3§(param1,param2);
         if(!_loc5_)
         {
            Lib.current.stage.addChild(_loc3_);
         }
         return _loc3_;
      }
      
      public function §6!R§(param1:§]`§) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = null as String;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc6_)
         {
            appendText(param1.content + "\n");
         }
         loop2:
         while(true)
         {
            if(maxScrollV > 10)
            {
               loop3:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        _loc2_ = text;
                        §§push(0);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        if(_loc7_)
                        {
                           break loop3;
                        }
                        _loc3_ = §§pop();
                     }
                     §§push(0);
                     if(_loc6_)
                     {
                        break loop3;
                     }
                     break;
                  }
                  while(§§pop() < 10)
                  {
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!_loc7_)
                           {
                              _loc4_++;
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(int(§§pop()));
                              if(!_loc6_)
                              {
                                 break loop5;
                              }
                           }
                           _loc5_ = §§pop();
                           if(_loc6_)
                           {
                              §§push(int(_loc2_.indexOf("\r",_loc3_)));
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc6_)
                                 {
                                    break loop5;
                                 }
                                 break;
                              }
                              break loop5;
                           }
                           §§goto(addr00df);
                        }
                        _loc3_ = §§pop();
                        §§goto(addr00df);
                     }
                     §§push(int(§§pop()));
                     break loop6;
                  }
                  if(_loc7_)
                  {
                     break loop2;
                  }
                  text = _loc2_.substr(_loc3_);
                  if(_loc7_)
                  {
                     break loop2;
                  }
               }
               §§push(int(§§pop()));
               if(_loc7_)
               {
                  break loop4;
               }
               _loc4_ = §§pop();
               if(!_loc7_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                     break loop4;
                  }
                  addr00df:
               }
            }
            scrollV = maxScrollV;
            break;
         }
      }
   }
}

