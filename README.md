# Banking-Portal-Online
# This project is made by Yash Prajapati (github/@yashpra1010)
Banking Portal Online is a dynamic web project. Java EE + MySQL + JSP is used to create this project.
It includes Login Authentication Modulue, CRUD operation on database (MySQL) module.

Pre-requisites:-
1) Eclipse Web Development IDE
2) Tomcat Server
3) MySQL

Setting Up Database:
#Creating Tables
Table-01 ==> bankreg
Columns:  username varchar(45) PK 
          email varchar(45) 
          acc_type varchar(45) 
          aadhar varchar(45) 
          pan varchar(45) 
          gender varchar(45) 
          address varchar(45) 
          password varchar(45)
  
Table-02 ==> signup
Columns:  firstname varchar(45) 
          middlename varchar(45) 
          lastname varchar(45) 
          phone varchar(45) 
          email varchar(45) 
          username varchar(45) PK 
          password varchar(45)
          
Table-03 ==> statement
Columns:  srno int(11) AI PK 
          username varchar(45) 
          date varchar(50) 
          withdraw int(11) 
          deposit int(11) 
          balance int(11)
          
Table-04 ==> transaction
Columns:  username varchar(45) 
          balance int(11) 
          withdraw int(11) 
          deposit int(11)
          
#Creating Triggers
Trigger-01 ==> init_acc
'init_acc', 'INSERT', 'bankreg', 'BEGIN\ninsert into `transaction`(`username`, `withdraw`,`deposit`, `balance`) values(new.username,0,0,0);\nEND'

Trigger-02 ==> statement_1
'statement_1', 'UPDATE', 'transaction', 'BEGIN\nINSERT INTO `statement`(`username`,`date`,`withdraw`,`deposit`,`balance`) VALUES(new.username,CURRENT_TIMESTAMP(),new.withdraw,new.deposit,new.balance);\nEND'
