package openfl
{
   import flash.Lib;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import openfl.display.Application;
   
   public class Lib
   {
      
      public static var application:Application;
      
      public function Lib()
      {
      }
      
      public static function getURL(param1:URLRequest, param2:String = undefined) : void
      {
         if(param2 == null)
         {
            param2 = "_blank";
         }
         flash.Lib.getURL(param1,param2);
      }
      
      public static function get_current() : MovieClip
      {
         return flash.Lib.current;
      }
   }
}

