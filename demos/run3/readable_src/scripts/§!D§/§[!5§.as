package §!D§
{
   import com.player03.run3.level.Level;
   import com.player03.run3.level.§59§;
   import com.player03.run3.level.TunnelSection;
   import flash.geom.Point;
   
   public class §[!5§ implements §1!&§
   {
      
      public var pathName:String;
      
      public var levelData:String;
      
      public var levelCount:int;
      
      public var extraParams:Object;
      
      public var §9!7§:String;
      
      public function §[!5§(param1:String, param2:String = undefined)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §§push(param2);
               if(_loc4_)
               {
                  break;
               }
               if(§§pop() == null)
               {
                  §§push("");
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                  }
                  param2 = §§pop();
               }
               levelCount = 1;
               pathName = "";
               levelData = param1;
            }
            §§push(param2);
            break;
         }
         if(§§pop().length > 0)
         {
            §9!7§ = param2;
         }
         else
         {
            §§push(§§findproperty(§9!7§));
            §§push(§59§.§`!S§(param1,"title"));
            if(!_loc4_)
            {
               §§push(§§pop());
            }
            §§pop().§9!7§ = §§pop();
         }
      }
      
      public function §5!D§(param1:Level) : void
      {
      }
      
      public function §31§(param1:int, param2:TunnelSection) : void
      {
      }
      
      public function §%!U§(param1:int, param2:TunnelSection, param3:int) : void
      {
      }
      
      public function §%I§(param1:int, param2:TunnelSection) : void
      {
      }
      
      public function §'m§(param1:int, param2:Object = undefined) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         while(true)
         {
            if(param2 == null)
            {
               §§push(false);
               if(_loc3_)
               {
                  break;
               }
               param2 = §§pop();
            }
            return true;
         }
         return §§pop();
      }
      
      public function §`!R§(param1:int, param2:Point = undefined) : Point
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(param2 == null)
         {
            if(!_loc3_)
            {
               return new Point(0,0);
            }
         }
         else
         {
            param2.x = 0;
            if(!_loc3_)
            {
               param2.y = 0;
            }
         }
         return param2;
      }
      
      public function §]Z§(param1:int) : Number
      {
         return 0;
      }
      
      public function §,q§(param1:int) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         while(true)
         {
            if(_loc3_)
            {
               if(param1 != 0)
               {
                  §§push(null);
                  break;
               }
            }
            §§push(levelData);
            if(!_loc2_)
            {
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function §5i§(param1:int) : String
      {
         return §9!7§;
      }
      
      public function §99§(param1:Object = undefined) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(param1 == null)
            {
               §§push(0);
               if(_loc3_)
               {
                  break;
               }
               param1 = §§pop();
            }
            return 0;
         }
         return §§pop();
      }
   }
}

