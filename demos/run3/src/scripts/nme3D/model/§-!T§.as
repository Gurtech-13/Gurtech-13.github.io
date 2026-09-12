package nme3D.model
{
   import §4!6§.§!!V§;
   import nme3D.shader.§'H§;
   
   public class §-!T§
   {
      
      public var §84§:Vector.<Number>;
      
      public var §1Z§:§'H§;
      
      public var §3!L§:Vector.<uint>;
      
      public var §5G§:int;
      
      public function §-!T§(param1:§'H§)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Vector.<Number> = new Vector.<Number>(0,false);
         if(!_loc5_)
         {
            §84§ = _loc2_;
         }
         var _loc3_:Vector.<uint> = new Vector.<uint>(0,false);
         while(true)
         {
            if(!_loc5_)
            {
               §3!L§ = _loc3_;
               if(_loc5_)
               {
                  break;
               }
            }
            §1Z§ = param1;
            if(!_loc5_)
            {
               §§push(§§findproperty(§5G§));
               §§push(§!!V§.§<j§);
               §§push(Type.§#G§(param1.§?"§));
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               §§pop().§5G§ = int(§§pop().get(§§pop()));
            }
            break;
         }
      }
      
      public function §1!D§() : Model
      {
         var _loc1_:Vector.<Number> = §84§;
         var _loc2_:§!!V§ = Type.createInstance(§1Z§.§?"§,[null,_loc1_]);
         var _loc3_:§!!V§ = _loc2_;
         return new Model(_loc3_,§3!L§,§1Z§);
      }
      
      public function §0!K§(param1:Array, param2:Array) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         while(true)
         {
            §§push(§84§.length);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
               if(_loc7_)
               {
                  break;
               }
               §§push(§§pop() / §5G§);
            }
            §§push(int(§§pop()));
            if(_loc8_)
            {
               break;
            }
            addr0048:
            var _loc3_:* = §§pop();
            §§push(0);
            if(_loc8_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!_loc7_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(param1);
                  if(_loc8_)
                  {
                     §§push(int(§§pop().length));
                     if(_loc8_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 §§push(0);
                                 if(_loc7_)
                                 {
                                    break loop0;
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc7_)
                                 {
                                    break loop0;
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 break loop0;
                              }
                              addr011a:
                           }
                           §§goto(addr0124);
                        }
                        §§push(Number(param1[_loc4_]));
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           _loc4_++;
                           if(_loc8_)
                           {
                              §84§.push(_loc5_);
                           }
                        }
                        continue;
                     }
                     while(§§pop() < §§pop())
                     {
                        §§push(int(param2[_loc4_]));
                        if(!_loc7_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc6_ = §§pop();
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              _loc4_++;
                              if(!_loc8_)
                              {
                                 break;
                              }
                           }
                           §§push(§3!L§);
                           §§push(_loc6_);
                           if(_loc8_)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           §§pop().push(§§pop());
                           break;
                        }
                        §§goto(addr011a);
                     }
                     addr0124:
                     return;
                     addr0120:
                  }
                  while(true)
                  {
                     §§goto(addr0120);
                  }
               }
               while(true)
               {
                  §§goto(addr011d);
                  §§push(_loc4_);
               }
            }
            §§goto(addr0124);
         }
         §§goto(addr0048);
      }
   }
}

