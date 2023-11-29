class TopController < ApplicationController
     
     def main

        logger.debug( "Top__main___NOW____HOME")
      
        #mainページ(products#main)
        render "home"
    end
    
      def top_logout_path
        logger.debug( "Top__main___NOW____top_logout_path")
        session.delete(:login_uid)
        redirect_to top_main_path
    end
end