package §4!6§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import §6!Q§.§<!T§;
   import §6!Q§.§^F§;
   import §<!&§.§=2§;
   import §>!O§.§;R§;
   import §>!O§.§^`§;
   import §@]§.§4$§;
   import §[!P§.§30§;
   import com.player03.layout.§ 7§;
   import com.player03.layout.§&d§;
   import com.player03.layout.§2u§;
   import com.player03.run3.character.§6O§;
   import com.player03.run3.level.§ !W§;
   import flash.Boot;
   import flash.Lib;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.geom.Rectangle;
   import flash.ui.Multitouch;
   import flash.utils.getTimer;
   import haxe.§=!U§;
   import haxe.ds.StringMap;
   import nme3D.model.Model;
   
   public class §!!V§ extends §=s§
   {
      
      public static var §<j§:§=!U§;
      
      public var §+R§:§=s§;
      
      public var §5G§:int;
      
      public var §7!#§:Array;
      
      public function §!!V§(param1:Object = undefined, param2:Vector.<Number> = undefined, param3:int = undefined, param4:Array = undefined, param5:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         while(true)
         {
            if(param5 == null)
            {
               if(!_loc8_)
               {
                  break;
               }
               param5 = 0;
            }
            if(param2 == null)
            {
               if(param1 != null)
               {
                  if(!_loc7_)
                  {
                     param2 = new Vector.<Number>(param1 * param3);
                     break;
                  }
               }
               else
               {
                  Boot.lastError = new Error();
               }
               throw "You must specify either a length or an array!";
            }
            break;
         }
         super(param2,param5);
         §5G§ = param3;
         §7!#§ = param4;
         var _loc6_:§=s§ = new §=s§(param2,0);
         if(_loc8_)
         {
            §+R§ = _loc6_;
         }
      }
      
      public static function §!d§(param1:Class) : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:§=!U§ = §!!V§.§<j§;
         §§push(Type.§#G§(param1));
         if(!_loc6_)
         {
            §§push(§§pop());
            if(_loc5_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:StringMap = _loc2_;
         if(!_loc6_)
         {
            if(!(_loc3_ in StringMap.§+!#§))
            {
               return _loc4_.h[_loc3_];
            }
         }
         return _loc4_.getReserved(_loc3_);
      }
      
      public function §>9§(param1:String) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = 0;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(int(§7!#§.length));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            while(_loc2_ < _loc3_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  _loc2_++;
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc4_ = §§pop();
               if(_loc5_)
               {
                  if(§7!#§[_loc4_].name != param1)
                  {
                     continue;
                  }
               }
               return true;
            }
         }
         return false;
      }
      
      public function §,!Y§() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§5G§);
         if(!_loc2_)
         {
            return §§pop() * 4;
         }
      }
      
      public function getAttribute4(param1:String) : §=s§
      {
         return null;
      }
      
      public function getAttribute3(param1:String) : §=s§
      {
         return null;
      }
      
      public function getAttribute2(param1:String) : §=s§
      {
         return null;
      }
      
      public function getAttribute1(param1:String) : §=s§
      {
         return null;
      }
      
      public function §25§(param1:String) : §=s§
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:* = 0;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(int(§7!#§.length));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc6_)
               {
                  loop0:
                  while(_loc3_ < _loc4_)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           _loc3_++;
                           if(!_loc7_)
                           {
                              break;
                           }
                        }
                        §§push(int(§§pop()));
                        if(!_loc6_)
                        {
                           _loc5_ = §§pop();
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(§7!#§);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(_loc5_);
                                    if(_loc6_)
                                    {
                                       break loop4;
                                    }
                                    if(§§pop()[§§pop()].name != param1)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc6_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 §§push(§7!#§);
                                 break;
                              }
                              §§push(_loc5_);
                              break;
                           }
                           §§push(§§pop()[§§pop()].size);
                           if(_loc7_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                        }
                        break loop2;
                     }
                     _loc2_ = §§pop();
                     if(_loc7_)
                     {
                        break;
                     }
                     break loop1;
                  }
               }
               §§push(_loc2_);
               break;
            }
            switch(§§pop())
            {
               case 1:
                  return getAttribute1(param1);
               case 2:
                  return getAttribute2(param1);
               case 3:
                  return getAttribute3(param1);
               case 4:
                  return getAttribute4(param1);
               default:
                  break loop1;
            }
         }
         return null;
      }
      
      public function §7!K§(param1:int) : §!!V§
      {
         return new §!!V§(null,§@!Y§,§5G§,§7!#§,param1);
      }
      
      public function clone() : §!!V§
      {
         return new §!!V§(null,§@!Y§,§5G§,§7!#§,offset);
      }
   }
}

