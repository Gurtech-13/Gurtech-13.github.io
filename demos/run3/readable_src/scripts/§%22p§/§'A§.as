package §"p§
{
   import §!!$§.§ 6§;
   import §%!Z§.§&!S§;
   import scenes.Cutscenes;
   import scenes.LeaveItHere;
   import game.Game;
   import §]N§.§?!H§;
   import com.player03.layout.§ 7§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import haxeutils.math.geom.Quaternion;
   import haxeutils.math.geom.QuaternionUtils;
   import haxeutils.math.geom.Point3D;
   import nme3D.model.§'h§;
   
   public class §'A§ extends EventDispatcher
   {
      
      public static var §&!E§:§'A§;
      
      public static var §<p§:Array = [];
      
      public var y:Number;
      
      public var x:Number;
      
      public var width:Number;
      
      public var height:Number;
      
      public function §'A§(param1:Object = undefined, param2:Object = undefined, param3:Object = undefined, param4:Object = undefined)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        if(param1 == null)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           param1 = §§pop();
                        }
                        if(param2 == null)
                        {
                           break;
                        }
                        addr0050:
                        if(param3 != null)
                        {
                           break loop1;
                        }
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                     }
                     §§push(0);
                     if(_loc6_)
                     {
                        break;
                     }
                     param2 = §§pop();
                     §§goto(addr0050);
                  }
                  while(true)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        break loop2;
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0087);
               }
               param3 = §§pop();
               break;
            }
            while(true)
            {
               if(param4 == null)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  param4 = 0;
               }
               super();
               break;
            }
            addr0087:
            setTo(param1,param2,param3,param4);
            break;
         }
      }
      
      override public function toString() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push("(x=");
                        §§push(x);
                        if(!_loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc1_)
                           {
                              break;
                           }
                           §§push(", y=");
                           if(!_loc2_)
                           {
                              break loop3;
                           }
                           §§push(§§pop() + §§pop());
                           §§push(y);
                           if(_loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc2_)
                              {
                                 break loop2;
                              }
                              §§push(", width=");
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                              §§push(§§pop() + §§pop());
                              §§push(width);
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        §§push(§§pop() + §§pop());
                        break;
                     }
                     §§push(§§pop());
                     §§push(", height=");
                     if(_loc2_)
                     {
                        break;
                     }
                     break loop1;
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     break;
                  }
                  §§goto(addr009e);
               }
               §§push(height);
               break loop0;
            }
            §§goto(addr009e);
         }
         addr009e:
         §§push(§§pop() + §§pop());
         if(!_loc1_)
         {
            §§push(§§pop());
            if(_loc2_)
            {
               §§push(")");
               break loop1;
            }
         }
         return §§pop();
      }
      
      public function §=!=§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               y = param1;
               if(_loc3_)
               {
                  break;
               }
            }
            §`l§();
            break;
         }
         return y;
      }
      
      public function §;g§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               x = param1;
               if(_loc3_)
               {
                  break;
               }
            }
            §`l§();
            break;
         }
         return x;
      }
      
      public function §"!§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            width = param1;
            if(!_loc3_)
            {
               §`l§();
            }
         }
         return width;
      }
      
      public function §&s§(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               height = param1;
               if(_loc3_)
               {
                  break;
               }
            }
            §`l§();
            break;
         }
         return height;
      }
      
      public function setTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = undefined) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         while(true)
         {
            if(!_loc7_)
            {
               while(true)
               {
                  if(param5 == null)
                  {
                     §§push(false);
                     if(_loc7_)
                     {
                        break;
                     }
                     param5 = §§pop();
                  }
                  this["x"] = param1;
                  if(_loc6_)
                  {
                     this["y"] = param2;
                     if(_loc6_)
                     {
                        this["width"] = param3;
                        this["height"] = param4;
                        §§push(!param5);
                        break;
                     }
                  }
               }
               if(!§§pop())
               {
                  break;
               }
            }
            §`l§();
            break;
         }
      }
      
      public function §`l§() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            loop6:
            while(true)
            {
               if(this == §'A§.§&!E§)
               {
                  if(_loc2_)
                  {
                     §§goto(addr002b);
                  }
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(false);
                        if(!_loc1_)
                        {
                           if(§'A§.§&!E§ != null)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                        }
                        addr00ea:
                        §§pop();
                        if(_loc1_)
                        {
                           break loop6;
                        }
                     }
                     addr0103:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           break loop6;
                        }
                        §'A§.§&!E§ = §'A§.§<p§[0];
                        if(!_loc1_)
                        {
                           §'A§.§<p§.splice(0,1);
                           if(_loc2_)
                           {
                              §'A§.§&!E§.dispatchEvent(new Event(Event.CHANGE));
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                           }
                           §'A§.§&!E§ = null;
                        }
                        continue loop1;
                     }
                     break loop6;
                  }
                  break;
                  addr00c7:
               }
               else
               {
                  loop8:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§'A§.§<p§);
                           if(_loc2_)
                           {
                              §§push(int(§§pop().indexOf(this)));
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(0);
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break loop9;
                              }
                              if(!_loc2_)
                              {
                                 break loop9;
                              }
                              §§push(§'A§.§<p§);
                              if(_loc1_)
                              {
                                 break loop8;
                              }
                           }
                           §§pop().push(this);
                           if(_loc2_)
                           {
                              break loop9;
                           }
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr00c7);
                  }
                  while(true)
                  {
                     §§push(int(§§pop().length));
                     addr00fa:
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr0103);
                           }
                           §§goto(addr00ea);
                        }
                        break loop6;
                     }
                  }
               }
               while(true)
               {
                  §§push(§'A§.§<p§);
                  break loop8;
               }
            }
            break loop2;
         }
         addr002b:
      }
   }
}

