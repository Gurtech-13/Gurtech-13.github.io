package §+!1§
{
   import flash.display.BitmapData;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import nme3D.Context3DUtils;
   import openfl.Assets;
   
   public class §[!9§
   {
      
      public var width:int;
      
      public var §,'§:Number;
      
      public var §7!1§:Number;
      
      public var §;9§:Number;
      
      public var §0]§:Number;
      
      public var texture:Texture;
      
      public var §7L§:int;
      
      public var height:int;
      
      public var §9!`§:String;
      
      public function §[!9§(param1:String, param2:Boolean)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         §,'§ = 0;
         if(!_loc10_)
         {
            §;9§ = 0;
            if(int(param1.lastIndexOf(".")) != -1)
            {
               §§push(§§findproperty(§9!`§));
               §§push(§'!b§.§;!]§);
               if(!_loc10_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§9!`§ = §§pop();
               while(true)
               {
                  if(_loc9_)
                  {
                     §§push(param2);
                     if(_loc9_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(§§findproperty(§9!`§));
                     §§push("img/");
                     if(_loc9_)
                     {
                        §§push(§§pop() + param1);
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
                  §§pop().§9!`§ = §§pop();
                  break;
               }
            }
            else
            {
               _loc3_ = Std.parseInt(param1);
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           if(_loc3_ == null)
                           {
                              if(!_loc9_)
                              {
                                 break loop2;
                              }
                              §§push(1);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              _loc3_ = §§pop();
                           }
                           width = _loc3_;
                           if(_loc9_)
                           {
                              height = _loc3_;
                              if(_loc9_)
                              {
                                 §§push(int(param1.indexOf("x")));
                                 if(!_loc10_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    break loop3;
                                 }
                                 break;
                              }
                           }
                        }
                        _loc4_ = §§pop();
                        if(_loc10_)
                        {
                           break loop2;
                        }
                     }
                     §§push(_loc4_);
                     break;
                  }
                  if(§§pop() >= 0)
                  {
                     break;
                  }
               }
               §§push(Std);
               §§push(param1);
               if(_loc9_)
               {
                  §§push(_loc4_);
                  if(_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§push(§§pop().substr(§§pop()));
               }
               _loc5_ = §§pop().parseInt(§§pop());
               if(_loc9_)
               {
                  if(_loc5_ != null)
                  {
                     if(_loc9_)
                     {
                        height = _loc5_;
                     }
                  }
               }
            }
         }
         var _loc6_:BitmapData = null;
         loop5:
         while(true)
         {
            while(true)
            {
               if(!_loc10_)
               {
                  if(§9!`§ == null)
                  {
                     break;
                  }
                  if(!_loc9_)
                  {
                     break loop5;
                  }
               }
               _loc6_ = Assets.getBitmapData(§9!`§,false);
               if(!_loc10_)
               {
                  width = _loc6_.width;
                  if(_loc10_)
                  {
                     break;
                  }
               }
               height = _loc6_.height;
               break;
            }
            while(true)
            {
               §§push(§'!b§.§;! §(width,height));
               if(_loc9_)
               {
                  §§push(int(§§pop()));
                  if(!_loc10_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
               }
               _loc4_ = §§pop();
               break loop5;
            }
            §§goto(addr01cd);
         }
         §§push(§'!b§.§;! §(height,width));
         if(!_loc10_)
         {
            addr01cd:
            §§push(int(§§pop()));
            if(_loc9_)
            {
               §§push(int(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         var _loc8_:Texture = Context3DUtils.context3D.createTexture(_loc4_,_loc7_,Context3DTextureFormat.BGRA,false);
         loop7:
         while(true)
         {
            if(_loc6_ != null)
            {
               _loc8_.uploadFromBitmapData(_loc6_);
               if(!_loc9_)
               {
                  break;
               }
            }
            §7L§ = Context3DUtils.§7L§;
            if(texture == null)
            {
               while(true)
               {
                  if(_loc9_)
                  {
                     §0]§ = width / _loc4_;
                     §7!1§ = height / _loc7_;
                     if(_loc9_)
                     {
                        break loop7;
                     }
                     addr0262:
                     _loc6_.dispose();
                     if(_loc10_)
                     {
                        break;
                     }
                  }
                  addr026f:
                  texture = _loc8_;
                  break;
               }
               §§goto(addr0277);
            }
            break;
         }
         while(true)
         {
            if(_loc6_ != null)
            {
               §§goto(addr0262);
            }
            §§goto(addr026f);
         }
         addr0277:
      }
   }
}

