package §6[§
{
   import §!!$§.§ 6§;
   import §"!M§.§!!P§;
   import §+!1§.§'!b§;
   import §+!1§.§[!9§;
   import §4!6§.§!!V§;
   import §4!6§.§'!Y§;
   import §4!6§.§=s§;
   import §8!0§.§2_§;
   import §>T§.§-n§;
   import §>T§.§0!E§;
   import com.player03.layout.§ 7§;
   import flash.geom.Rectangle;
   import nme3D.shader.§'H§;
   import nme3D.shader.§=A§;
   
   public class §&!M§ extends §>f§
   {
      
      public var §10§:Boolean;
      
      public function §&!M§(param1:Object = undefined)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            while(true)
            {
               if(param1 == null)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  param1 = false;
               }
               while(true)
               {
                  §§push(this);
                  §§push(null);
                  if(_loc2_)
                  {
                     if(!param1)
                     {
                        §§push("spawn-");
                        break;
                     }
                  }
                  §§push("endSpawn-");
                  if(_loc2_)
                  {
                  }
                  break;
               }
               while(true)
               {
                  §§push(§§findproperty(§0!E§));
                  §§push(3.5);
                  §§push(3.5);
                  §§push(1);
                  §§push(16776960);
                  §§push(16776960);
                  §§push(true);
                  §§push(1);
                  §§push(1);
                  if(!_loc3_)
                  {
                     if(!param1)
                     {
                        §§push(3.141592653589793);
                        break;
                     }
                  }
                  §§push(0);
                  if(_loc3_)
                  {
                  }
                  break;
               }
               §§pop().super(§§pop(),§§pop(),new §§pop().§0!E§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),0,0,§=A§.§1r§(§'!b§.§?!3§("Arrow.png")),§-n§.§?!W§,null,-1,false,null));
               if(!_loc3_)
               {
                  §#b§ = true;
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §10§ = param1;
               break;
            }
         }
      }
      
      override public function §;§(param1:§11§) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               param1.§-!Q§("Arrow.png",true,true);
               if(!_loc2_)
               {
                  break;
               }
               if(!§10§)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            param1.§,^§ = "fast";
            break;
         }
      }
      
      override public function §"c§() : void
      {
      }
      
      override public function §47§(param1:int) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc2_)
            {
               if(!§10§)
               {
                  §§push(-1);
                  break;
               }
            }
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            break;
         }
         return §§pop();
      }
      
      override public function §][§(param1:Object, param2:int) : String
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         §§push("");
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = param1.iterator();
         if(_loc7_)
         {
            loop0:
            for(; Boolean(_loc4_.hasNext()); _loc3_ = §§pop())
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(int(_loc4_.next()));
                           if(_loc7_)
                           {
                              _loc5_ = §§pop();
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 break loop7;
                              }
                              §§push(param2);
                              if(_loc8_)
                              {
                                 break loop2;
                              }
                              §§push(int(§§pop() % §§pop()));
                              if(!_loc7_)
                              {
                                 break loop1;
                              }
                           }
                           §§push(int(§§pop()));
                           break loop7;
                        }
                        §§goto(addr009d);
                     }
                     _loc6_ = §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc6_);
                        §§push(0);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0096);
                  }
                  if(§§pop() < §§pop())
                  {
                     addr0099:
                     addr0096:
                     §§push(int(_loc6_ + param2));
                     break;
                  }
                  §§goto(addr009d);
               }
               _loc6_ = §§pop();
               addr009d:
               loop3:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc7_)
                  {
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           if(_loc7_)
                           {
                              §§push(_loc3_);
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§push("|");
                              if(!_loc7_)
                              {
                                 break loop3;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc7_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              _loc3_ = §§pop();
                           }
                        }
                        §§push(_loc3_);
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push("");
                     if(_loc7_)
                     {
                        break loop3;
                     }
                     addr010a:
                     §§push(§§pop() + _loc6_);
                     if(_loc7_)
                     {
                        break;
                     }
                     addr0115:
                     §§push(§§pop() + §§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                     }
                     continue loop0;
                  }
                  addr0113:
                  §§goto(addr0115);
               }
               while(true)
               {
                  §§push(§§pop() + §3!6§);
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  §§goto(addr010a);
               }
               §§goto(addr0113);
            }
         }
         return _loc3_;
      }
   }
}

