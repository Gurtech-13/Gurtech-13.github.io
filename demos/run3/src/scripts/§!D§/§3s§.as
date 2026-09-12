package §!D§
{
   import §%!Q§.§ !>§;
   import §3!b§.Cutscenes;
   import §3!b§.SocraticMethod;
   import §8&§.§%!$§;
   import com.player03.run3.Main;
   import com.player03.run3.level.§ !W§;
   import com.player03.run3.level.§,a§;
   import com.player03.run3.level.TunnelSection;
   
   public class §3s§ extends § !>§
   {
      
      public var §%;§:§%!$§;
      
      public var §#`§:§0!M§;
      
      public var §3!5§:int;
      
      public function §3s§(param1:§%!$§)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         while(true)
         {
            if(!_loc4_)
            {
               §3!5§ = 0;
               if(_loc4_)
               {
                  break;
               }
            }
            super(param1.name,null,null,false);
            break;
         }
         §§push(param1.content.split("\n"));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc3_)
            {
               §#`§ = new §0!M§(Vector.<String>(_loc2_),null);
               if(!_loc3_)
               {
                  break;
               }
               levelCount = int(§#`§.§ '§.length);
               if(!_loc3_)
               {
                  break;
               }
               §%;§ = param1;
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(§§findproperty(§,&§));
            §§push("");
            if(_loc3_)
            {
               §§push(§§pop() + param1.name);
               if(!_loc4_)
               {
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        §§push(§§pop() + ",\npart ");
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     §§push(§§pop());
                     break;
                  }
               }
            }
            §§pop().§,&§ = §§pop();
            break;
         }
      }
      
      override public function §5!D§(param1:§ !W§) : void
      {
      }
      
      override public function §31§(param1:int, param2:TunnelSection) : void
      {
      }
      
      override public function §%!U§(param1:int, param2:TunnelSection, param3:int) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(false);
                  if(_loc5_)
                  {
                     if(param1 < §3!5§)
                     {
                        break loop0;
                     }
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(param1 < levelCount);
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                     }
                  }
                  §§push(Boolean(§§pop()));
                  break loop0;
               }
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§push(§§findproperty(§3!5§));
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  §§pop().§3!5§ = §§pop();
               }
            }
            break loop1;
         }
      }
      
      override public function §%I§(param1:int, param2:TunnelSection) : void
      {
      }
      
      override public function §#f§(param1:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  §§push(§'m§(param1));
                  if(_loc2_)
                  {
                     break;
                  }
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  else
                  {
                     §§goto(addr006d);
                     §§push(false);
                  }
               }
               Main.instance.§,Z§(new § !W§(0,this,§,a§.SHARED_CONTENT,{"endTiles":true}));
               break loop0;
            }
            return §§pop();
         }
         §§push(true);
         if(_loc3_)
         {
            break loop1;
         }
         addr006d:
         return §§pop();
      }
      
      override public function §'m§(param1:int, param2:Object = undefined) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(param2 != null)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(false);
               if(!_loc4_)
               {
                  param2 = §§pop();
                  break;
               }
               §§goto(addr005e);
            }
            loop2:
            while(true)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     §§push(false);
                     if(_loc3_)
                     {
                        addr005e:
                        return §§pop();
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 else if(!param2)
                                 {
                                    §§push(§3!5§);
                                    break;
                                 }
                                 §§push(§3!5§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                              addr00b6:
                              §§push(param1);
                              break loop2;
                           }
                           break;
                        }
                        §§push(param1);
                        if(!_loc4_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     §§push(§§pop() > §§pop());
                     if(!_loc3_)
                     {
                        §§goto(addr00b8);
                     }
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00b6);
            }
            addr00b8:
            return §§pop();
         }
         §§push(true);
         if(_loc3_)
         {
            return §§pop();
         }
         addr00af:
         return §§pop();
      }
      
      override public function §]Z§(param1:int) : Number
      {
         return 0;
      }
      
      override public function §,q§(param1:int) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc3_)
               {
                  §§push(false);
                  if(!_loc3_)
                  {
                     if(param1 < 0)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  §§pop();
                  if(_loc3_)
                  {
                     break loop0;
                  }
               }
               §§push(param1 < int(§#`§.§ '§.length));
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               break;
            }
            if(§§pop())
            {
               break;
            }
            §§goto(addr0081);
            §§push(null);
         }
         §§push(§#`§.§ '§[param1]);
         if(_loc2_)
         {
            §§push(§§pop());
            if(_loc2_)
            {
               return §§pop();
            }
         }
         addr0081:
         return §§pop();
      }
      
      override public function §5i§(param1:int) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(true)
         {
            if(!_loc3_)
            {
               §§push(levels.length);
               if(_loc2_)
               {
                  §§push(int(§§pop()));
               }
               if(§§pop() <= 1)
               {
                  §§push(pathName);
                  break;
               }
            }
            §§push(super.§5i§(param1));
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  break;
               }
            }
            return §§pop();
         }
         return §§pop();
      }
   }
}

