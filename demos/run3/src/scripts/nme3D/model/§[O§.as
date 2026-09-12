package nme3D.model
{
   import §4!6§.§!!V§;
   import §4!6§.§=s§;
   import haxeutils.math.geom.Point3D;
   import nme3D.shader.§'H§;
   
   public class §[O§ extends Model
   {
      
      public static var init__:Boolean;
      
      public static var §92§:Vector.<uint>;
      
      public static var §#D§:Number;
      
      public static var §<@§:Number;
      
      public static var §5!V§:Number;
      
      public static var §0E§:Vector.<Point3D>;
      
      public function §[O§(param1:int, param2:§'H§, param3:Number = 1, param4:Number = 1)
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc9_:* = null as §!!V§;
         var _loc13_:* = 0;
         var _loc14_:* = null as §!!V§;
         var _loc15_:* = null as §=s§;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         loop1:
         while(true)
         {
            while(true)
            {
               §§push(param1);
               if(_loc20_)
               {
                  §§push(16);
                  if(!_loc20_)
                  {
                     break;
                  }
                  §§push(§§pop() >> §§pop());
                  if(_loc19_)
                  {
                     break loop1;
                  }
               }
               §§push(int(§§pop()));
               break loop1;
            }
            §§push(§§pop() / §§pop());
            if(!_loc19_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            loop3:
            while(true)
            {
               §§push(param1);
               if(_loc20_)
               {
                  while(true)
                  {
                     §§push(8);
                     if(!_loc19_)
                     {
                        §§push(§§pop() >> §§pop());
                        if(!_loc19_)
                        {
                           §§push(int(§§pop()));
                           if(_loc19_)
                           {
                              break;
                           }
                        }
                        §§push(255);
                        if(_loc19_)
                        {
                           break loop3;
                        }
                     }
                     §§push(§§pop() & §§pop());
                     break;
                  }
               }
               §§push(255);
               break;
            }
            §§push(§§pop() / §§pop());
            if(!_loc19_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            while(true)
            {
               §§push(param1);
               if(_loc20_)
               {
                  §§push(255);
                  if(_loc19_)
                  {
                     break;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§push(255);
               break;
            }
            §§push(§§pop() / §§pop());
            if(_loc20_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:§!!V§ = Type.createInstance(param2.§?"§,[4,null]);
            if(!_loc19_)
            {
               super(_loc8_,§[O§.§92§,param2);
            }
            var _loc10_:§!!V§ = vertices;
            if(!_loc19_)
            {
               §§push(_loc10_);
               §§push(_loc10_.§5G§);
               if(!_loc19_)
               {
                  §§push(§§pop() * 0);
               }
               §§pop().offset = §§pop();
            }
            §§push(_loc10_.§>9§("alpha"));
            if(!_loc19_)
            {
               §§push(Boolean(§§pop()));
               if(_loc20_)
               {
                  §§push(Boolean(§§pop()));
               }
            }
            var _loc11_:* = §§pop();
            §§push(0);
            if(!_loc19_)
            {
               §§push(int(§§pop()));
            }
            var _loc12_:* = §§pop();
            if(_loc20_)
            {
               loop0:
               while(_loc12_ < 4)
               {
                  while(true)
                  {
                     §§push(_loc12_);
                     if(!_loc19_)
                     {
                        _loc12_++;
                        if(!_loc20_)
                        {
                           break;
                        }
                     }
                     §§push(int(§§pop()));
                     break;
                  }
                  _loc13_ = §§pop();
                  _loc14_ = vertices;
                  if(_loc20_)
                  {
                     §§push(_loc14_);
                     §§push(_loc14_.§5G§);
                     if(_loc20_)
                     {
                        §§push(§§pop() * _loc13_);
                     }
                     §§pop().offset = §§pop();
                  }
                  _loc9_ = _loc14_;
                  _loc15_ = _loc9_.getAttribute3("position");
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§[O§.§0E§[_loc13_].x * param3);
                        if(_loc20_)
                        {
                           _loc16_ = §§pop();
                           if(_loc19_)
                           {
                              break;
                           }
                           §§push(§[O§.§0E§[_loc13_].y * param3);
                           if(_loc19_)
                           {
                              break loop7;
                           }
                           _loc17_ = §§pop();
                           §§push(§[O§.§0E§[_loc13_].z);
                           if(!_loc20_)
                           {
                              break loop7;
                           }
                        }
                        §§push(§§pop() * param3);
                        break loop7;
                     }
                     §§push(_loc15_.§@!Y§);
                     §§push(_loc15_.offset);
                     if(_loc20_)
                     {
                        §§push(§§pop() + 2);
                     }
                     §§pop()[§§pop()] = _loc18_;
                     §§goto(addr0217);
                  }
                  _loc18_ = §§pop();
                  _loc15_.§@!Y§[_loc15_.offset] = _loc16_;
                  if(_loc19_)
                  {
                     break loop8;
                  }
                  §§push(_loc15_.§@!Y§);
                  §§push(_loc15_.offset);
                  if(_loc20_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop()[§§pop()] = _loc17_;
                  if(!_loc19_)
                  {
                     break loop8;
                  }
                  addr0217:
                  _loc15_ = _loc9_.getAttribute3("color");
                  while(true)
                  {
                     if(_loc20_)
                     {
                        _loc15_.§@!Y§[_loc15_.offset] = _loc5_;
                        if(_loc20_)
                        {
                           §§push(_loc15_.§@!Y§);
                           §§push(_loc15_.offset);
                           if(_loc20_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§pop()[§§pop()] = _loc6_;
                           if(_loc19_)
                           {
                              break;
                           }
                        }
                        §§push(_loc15_.§@!Y§);
                        §§push(_loc15_.offset);
                        if(!_loc19_)
                        {
                           §§push(§§pop() + 2);
                        }
                        §§pop()[§§pop()] = _loc7_;
                        if(!_loc20_)
                        {
                           break;
                        }
                     }
                     if(_loc11_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  _loc15_ = _loc9_.getAttribute1("alpha");
                  if(!_loc19_)
                  {
                     _loc15_.§@!Y§[_loc15_.offset] = param4;
                  }
               }
            }
            return;
         }
         §§push(255);
         break loop2;
      }
   }
}

