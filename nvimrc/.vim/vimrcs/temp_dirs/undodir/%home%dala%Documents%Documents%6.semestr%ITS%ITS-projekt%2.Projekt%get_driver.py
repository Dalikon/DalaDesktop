Vim�UnDo� %o��-C¬H:�P$-~� ���记0���   "   #        print("get_driver: CHROME")            :       :   :   :    f#   	 _�                            ����                                                                                                                                                                                                                                                                                                                                                             f��     �               "        driver = webdriver.Remote(5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f��     �               @                command_executor='http://localhost:4444/wd/hub',5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f��     �               @                desired_capabilities=DesiredCapabilities.CHROME)5��                         &                     5�_�                       A    ����                                                                                                                                                                                                                                                                                                                                                             f��     �               A      #          desired_capabilities=DesiredCapabilities.CHROME)5��       A                  a                     �       A                  a                     5�_�                       @    ����                                                                                                                                                                                                                                                                                                                                                             f��     �             �             5��                          b              �       5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             f��     �                @                desired_capabilities=DesiredCapabilities.CHROME)5��                        �                    5�_�                       A    ����                                                                                                                                                                                                                                                                                                                                                             f��     �         !            �         !    �                A      #          desired_capabilities=DesiredCapabilities.CHROME)5��       A                 a                     �                      #   h              #       5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             f��     �         !      )      options = webdriver.ChromeOptions()5��                         h                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             f�    �         !      Nfrom selenium.webdriver.common.desired_capabilities import DesiredCapabilities5��                          6                      5�_�   	              
      2    ����                                                                                                                                                                                                                                                                                                                                                             f�!     �         !      3                options=DesiredCapabilities.CHROME)5��                                            �                                            �                                            �                                            5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             f�=     �         !      "        driver = webdriver.Remote(5��                      
   ;              
       �       	       	          <      	              �                        ;                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f�A     �         !      @                command_executor='http://localhost:4444/wd/hub',5��                         _                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f�B     �         !      A                desired_capabilities=DesiredCapabilities.FIREFOX)5��                         �                     5�_�                       B    ����                                                                                                                                                                                                                                                                                                                                                             f�D     �         !      B        #        desired_capabilities=DesiredCapabilities.FIREFOX)5��       B                 �              	       �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f�H     �         "       �         "    5��                      5   �              *      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�L     �         )      options = FirefoxOptions()5��                          �                     �                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�R     �         )      options.browser_version = '92'5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�S     �         )      $options.platform_name = 'Windows 10'5��                          &                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�U     �         )      cloud_options = {}5��                          S                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�V     �         )      &cloud_options['build'] = my_test_build5��                          n                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�V     �         )      $cloud_options['name'] = my_test_name5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�W     �         )      6options.set_capability('cloud:options', cloud_options)5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�X     �         )      5driver = webdriver.Remote(cloud_url, options=options)5��                          	                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             f�[     �                &        options.browser_version = '92'5��                          �      '               5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             f�\     �                ,        options.platform_name = 'Windows 10'5��                          �      -               5�_�      2                 
    ����                                                                                                                                                                                                                                                                                                                                                             f�]     �                        cloud_options = {}5��                          �                     5�_�      3          2      
    ����                                                                                                                                                                                                                                                                                                                                                             f     �                .        cloud_options['build'] = my_test_build5��                          �      /               5�_�   2   4           3      
    ����                                                                                                                                                                                                                                                                                                                                                             f     �                ,        cloud_options['name'] = my_test_name5��                          �      -               5�_�   3   5           4      
    ����                                                                                                                                                                                                                                                                                                                                                             f     �                >        options.set_capability('cloud:options', cloud_options)5��                          �      ?               5�_�   4   6           5      +    ����                                                                                                                                                                                                                                                                                                                                                             f!    �         #      =        driver = webdriver.Remote(cloud_url, options=options)5��       "       	          !      	              �       "                 !                    �       "                 !                    �       "                  !                     �       =                 <                    �       @                 ?                    5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                             fg     �         #      @                command_executor='http://localhost:4444/wd/hub',   options=options)�         #                       options=options)5��                          �                     �       @                  �                     �       @                  �                     5�_�   6   8           7          ����                                                                                                                                                                                                                                                                                                                                                             fw     �         "      "        driver = webdriver.Remote(   Acommand_executor='http://localhost:4444/wd/hub', options=options)�         "      Q                command_executor='http://localhost:4444/wd/hub', options=options)5��                          �                     �       "                  �                     5�_�   7   9           8      A    ����                                                                                                                                                                                                                                                                                                                                                             f     �         !      A      #          desired_capabilities=DesiredCapabilities.CHROME)5��       A                  b                     �       A                  b                     5�_�   8   :           9      A    ����                                                                                                                                                                                                                                                                                                                                                             f�    �         !      A      #          desired_capabilities=DesiredCapabilities.CHROME)5��       A                 b                     �                         i                     �                        q                    �                        y                    5�_�   9               :          ����                                                                                                                                                                                                                                                                                                                                                             f#   	 �         "      #        print("get_driver: CHROME")5��                         k                     5�_�             2         
    ����                                                                                                                                                                                                                                                                                                                                                             f�]     �              5��                          �      /               5�_�                        
    ����                                                                                                                                                                                                                                                                                                                                                             f�^     �              5��                          �      -               5�_�      "                 
    ����                                                                                                                                                                                                                                                                                                                                                             f�z     �              5��                          �      ?               5�_�       %   !       "      ,    ����                                                                                                                                                                                                                                                                                                                                                             f҈     �         #      3        driver = webdriver.Remote( options=options)5��       "       
           !      
               5�_�   "   '   #       %      "    ����                                                                                                                                                                                                                                                                                                                                                             fғ     �         #      "        driver = webdriver.Remote(                    options=options)5��       "                !             	       �                         "                    5�_�   %   (   &       '      !    ����                                                                                                                                                                                                                                                                                                                                                             fҗ    �         $    �         $      @                command_executor='http://localhost:4444/wd/hub',5��                          "              A       5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             f�     �         %      #       # options = FirefoxOptions()5��                         �                     �                        �                    5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             f�     �         %      #       # driver = webdriver.Remote(5��                                              5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                             f�     �         %      A       #         command_executor='http://localhost:4444/wd/hub',5��                         +                     5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                             f�     �         %      !       #         options=options)5��                         m                     5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             f�     �         %          driver.implicitly_wait(15)5��                         �                     �                         �                     5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                             f�     �         %         # except WebDriverException:5��                                              �                                            5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                             f�    �   
      %      	    #try:5��    
                     �                     5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                             f�     �         %      '    options = webdriver.ChromeOptions()5��                         k                     �                         j                     �                         i                     �                         h                     5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                             f�    �         %          driver = webdriver.Remote(5��                         �                     5�_�   0               1           ����                                                                                                                                                                                                                                                                                                                                                             f     �   
      %      uuu    #try:5��    
                      �                     5�_�   %           '   &          ����                                                                                                                                                                                                                                                                                                                                                             fҔ     �         $    �         $      @                command_executor='http://localhost:4444/wd/hub',5��                          C              A       5�_�   "   $       %   #      !    ����                                                                                                                                                                                                                                                                                                                                                             fҊ     �         #    �         #      @                command_executor='http://localhost:4444/wd/hub',5��                          3              A       5�_�   #               $          ����                                                                                                                                                                                                                                                                                                                                                             fҍ     �         $      A                ucommand_executor='http://localhost:4444/wd/hub',5��                         C                     5�_�               "   !      
    ����                                                                                                                                                                                                                                                                                                                                                             f�|     �              5��                          �      a               5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             f�`     �              5��                          �      ?               5�_�                        "    ����                                                                                                                                                                                                                                                                                                                                                             f�u     �         #      %        options = FirefoxOptions(<D-p5��       !                 �                    �       %                                       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�E     �         "    �         "      "        driver = webdriver.Remote(   @                command_executor='http://localhost:4444/wd/hub',   @                desired_capabilities=DesiredCapabilities.CHROME)5��                          �              �       5��