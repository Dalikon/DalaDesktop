Vim�UnDo� i�]l��%�P+F0(Qq�*����$�s�;�&�      .        self.file_path_weeks = home + "weeks/"      $                       f�/    _�                             ����                                                                                                                                                                                                                                                                                                                                                  v   V    fO�    �                   �               5��                                           >      5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                  v   V    fP;    �                  class Params:   T    """Class for keeping basic information for systemd service and cronjobs alike"""       def __init__(self):   (        self.moveStart = datetime(1,1,1)   1        #home = "/home/mirror/.mirror_logs_TEST/"   +        home = "/home/mirror/.mirror_logs/"           self.file_path = home   ,        self.file_path_days = home + "days/"   .        self.file_path_weeks = home + "weeks/"   @        self.file_path_weeks_bin = self.file_path_weeks + "bin/"   0        self.file_path_months = home + "months/"   O         # Movement detected : Movement undetected : time between start and end    5�5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        fQ�     �                class Params:5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        fQ�     �               class Params:5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        fQ�     �                 5��                                                  �                                              �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        fQ�    �                import datetime5��                                                �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V        fQ�     �                import datetime from datetime5��                                                �                                                5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                 V        fQ�    �                from datetime from datetime5��                                              5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             f�|    �      	         +        home = "/home/mirror/.mirror_logs/"5��                                            5�_�   	              
   
       ����                                                                                                                                                                                                                                                                                                                                                             f��     �   	            ,        self.file_path_days = home + "days/"5��    	                     [                     5�_�   
                 
       ����                                                                                                                                                                                                                                                                                                                                                             f��    �   	            -        self.file_path_days = #home + "days/"5��    	                     [                     �    	                    [                    �    	   (                 e                    �    	   *                 g                    �    	   *                 g                    �    	   *              &   g             &       �    	   4              	   q             	       �    	   4       	          q      	              �    	   ;                 x                    �    	   ;                 x                    �    	   ;                 x                    �    	   J                 �                    �    	   J              
   �             
       5�_�                        $    ����                                                                                                                                                                                                                                                                                                                                                             f�.    �   
            .        self.file_path_weeks = home + "weeks/"5��    
                    �                    �    
                    �                    �    
                     �                    �    
   +                 �                    �    
   +                 �                    �    
   +                 �                    �    
   5                 �                    �    
   5                 �                    �    
   5                 �                    �    
   <                 �                    �    
   <                 �                    �    
   K              
   �             
       5��