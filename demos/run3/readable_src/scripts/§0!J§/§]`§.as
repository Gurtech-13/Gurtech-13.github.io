package §0!J§
{
   import flash.events.Event;
   
   public class §]`§ extends Event
   {
      
      public var content:String;
      
      public function §]`§(param1:*, param2:Object, param3:Object = undefined, param4:Object = undefined)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            while(true)
            {
               if(param3 == null)
               {
                  §§push(false);
                  if(_loc5_)
                  {
                     break;
                  }
                  param3 = §§pop();
               }
               if(param4 == null)
               {
                  §§goto(addr00f7);
               }
               addr0040:
               super("trace",param3,param4);
               loop1:
               while(true)
               {
                  if(_loc6_)
                  {
                     if(param2 != null)
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§§findproperty(content));
                                 §§push("");
                                 if(_loc6_)
                                 {
                                    §§push(param2.fileName);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    §§push(":");
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       break loop2;
                                    }
                                    §§push(§§pop() + int(param2.lineNumber));
                                    if(!_loc6_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§push(": ");
                                 break;
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    §§push(Std.string(param1));
                                    if(_loc6_)
                                    {
                                       §§push(§§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    break loop2;
                                 }
                                 break;
                              }
                              break loop2;
                           }
                           §§pop().content = §§pop();
                           break loop1;
                        }
                        §§push(§§pop());
                        break loop3;
                     }
                  }
                  §§push(§§findproperty(content));
                  §§push(Std.string(param1));
                  if(!_loc5_)
                  {
                     §§push(§§pop());
                  }
                  §§pop().content = §§pop();
                  break;
               }
            }
            param4 = §§pop();
            §§goto(addr0040);
         }
         addr00f7:
         if(_loc6_)
         {
            §§push(false);
            break loop0;
         }
      }
      
      override public function toString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push("[TraceEvent content=");
            if(!_loc2_)
            {
               §§push(§§pop() + content);
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     §§push(§§pop() + "]");
                     if(!_loc1_)
                     {
                        break;
                     }
                  }
               }
            }
            return §§pop();
         }
         return §§pop();
      }
   }
}

