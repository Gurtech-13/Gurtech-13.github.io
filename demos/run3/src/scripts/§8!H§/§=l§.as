package §8!H§
{
   import nme3D.model.§%d§;
   
   public final class §=l§
   {
      
      public function §=l§()
      {
      }
      
      public static function §9T§(param1:int, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined, param5:Object = undefined, param6:Object = undefined) : Vector.<§%d§>
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         loop0:
         while(true)
         {
            if(param2 == null)
            {
               if(_loc10_)
               {
                  break;
               }
               param2 = param1;
            }
            while(true)
            {
               if(param3 == null)
               {
                  if(_loc10_)
                  {
                     break;
                  }
                  param3 = param2;
               }
               if(param4 == null)
               {
                  if(_loc10_)
                  {
                     break loop0;
                  }
                  param4 = param3;
               }
               if(param5 == null)
               {
                  if(!_loc10_)
                  {
                     break;
                  }
                  break loop0;
               }
               §§goto(addr006a);
            }
            param5 = param4;
            addr006a:
            if(param6 == null)
            {
               break;
            }
            §§goto(addr0077);
         }
         param6 = param5;
         addr0077:
         var _loc8_:Vector.<§%d§> = new Vector.<§%d§>(0,false);
         var _loc7_:Vector.<§%d§> = _loc8_;
         if(_loc9_)
         {
            _loc7_.push(new §%d§(param1));
         }
         _loc7_.push(new §%d§(param2));
         _loc7_.push(new §%d§(param3));
         _loc7_.push(new §%d§(param4));
         _loc7_.push(new §%d§(param5));
         if(_loc9_)
         {
            _loc7_.push(new §%d§(param6));
         }
         return _loc7_;
      }
   }
}

