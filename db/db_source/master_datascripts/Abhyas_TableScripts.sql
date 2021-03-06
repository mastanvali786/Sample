DROP TABLE IF EXISTS HT_ABHYAS_SCHOOL;
CREATE  TABLE HT_ABHYAS_SCHOOL
(
    School_Id              	    INT               NOT NULL    UNIQUE  AUTO_INCREMENT
,   School_Name            	    VARCHAR(100)	  NOT NULL    UNIQUE  
,	School_Number				VARCHAR(25)	      NOT NULL	  UNIQUE
,   Web_Site_Url                VARCHAR(50)       DEFAULT NULL
,   Logo_File_Name              VARCHAR(50)       DEFAULT NULL
,   Picture_File_Name           VARCHAR(50)       DEFAULT NULL  
,   Description                 VARCHAR(2000)     DEFAULT NULL
,   Status_Id		        INT		  NOT NULL
,   School_Status_Id            INT               NOT NULL
,   Demo_Flag_Id                INT               NOT NULL
,   Discount_Percent        	INT               DEFAULT 0
,   Discount_Amount         	DECIMAL(10,2)     DEFAULT 0
,   StartMonth					DATE							
,	EndMonth					DATE
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
)   ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=UTF8;


DROP TABLE IF EXISTS HT_ABHYAS_SCHOOL_LOCATION;
CREATE  TABLE HT_ABHYAS_SCHOOL_LOCATION;
(
	School_Location_Id          INT               NOT NULL    UNIQUE  AUTO_INCREMENT
,   School_Id 					INT 			  NOT NULL
,   Address1 		            VARCHAR(100)	  NOT NULL
,   Address2 		            VARCHAR(100)      DEFAULT NULL
,   Address3 		            VARCHAR(100)	  DEFAULT NULL
,   City 			            VARCHAR(50)		  NOT NULL
,   Country_Id 		            INT				  NOT NULL
,   State_Id 		            INT				  NOT NULL
,   Postalcode 		            VARCHAR(10)		  NOT NULL
,   Phone_number                VARCHAR(25)       DEFAULT NULL
,   Fax_Number                  VARCHAR(25)       DEFAULT NULL
,   Email_Id                    VARCHAR(50)       DEFAULT NULL
,   Landmark1                   NVARCHAR(256)     DEFAULT NULL
,   Landmark2                   NVARCHAR(256)     DEFAULT NULL		
,   Description                 VARCHAR(2000)     DEFAULT NULL
,   Status_Id		            INT			      NOT NULL
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
,   UNIQUE KEY                  HT_ABHYAS_SCHOOL_LOCATION_CU1 (School_Id, City)
,   UNIQUE KEY                  HT_ABHYAS_SCHOOL_LOCATION_CU2 (School_Id, Postalcode)
)ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS HT_ABHYAS_SCHOOL_CONTACT;
CREATE  TABLE HT_ABHYAS_SCHOOL_CONTACT
(
    School_Contact_Id           INT               NOT NULL    UNIQUE  AUTO_INCREMENT
,   School_Id            	    VARCHAR(100)	  NOT NULL                          
,   Contact_Name                VARCHAR(50)       DEFAULT NULL
,   Contact_Position            VARCHAR(50)       DEFAULT NULL
,   Contact_Phone_Number        VARCHAR(25)       DEFAULT NULL
,   Contact_Fax_Number          VARCHAR(25)       DEFAULT NULL
,   Contact_Mobile_Number       VARCHAR(25)       DEFAULT NULL
,   Contact_Email_Id            VARCHAR(50)       DEFAULT NULL
,   Description                 VARCHAR(2000)     DEFAULT NULL
,   Status_Id		            INT			      NOT NULL 
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;


DROP TABLE IF EXISTS HT_ABHYAS_TIME_ZONE;
CREATE TABLE HT_ABHYAS_TIME_ZONE 
(
	TimeZoneId				INT               		NOT NULL    UNIQUE  AUTO_INCREMENT
,	 Country_Id 					INT						NOT NULL
,	TimeZoneCode				NVARCHAR(20)			NOT NULL
,	TimeZoneDescription			NVARCHAR(255)			NOT NULL
,	TimeZoneHours				INT						NOT NULL
,	TimeZoneMinutes				INT						NOT NULL
,   description                 VARCHAR(2000)     		DEFAULT NULL
,   Status_Id		            INT			      NOT NULL 
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
)

DROP TABLE IF EXISTS HT_ABHYAS_REGION;
CREATE TABLE HT_ABHYAS_REGION (
    Region_Id                       INT             NOT NULL    UNIQUE AUTO_INCREMENT
,   Region_Code                     VARCHAR(10)     NOT NULL    UNIQUE
,   Region_Name                     VARCHAR(30)     NOT NULL
,   Region_Description              VARCHAR(100)    NOT NULL
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS HT_ABHYAS_COUNTRY;
CREATE TABLE HT_ABHYAS_COUNTRY (
    Country_Id                      INT             NOT NULL    UNIQUE  AUTO_INCREMENT
,   Country_Code                    VARCHAR(10)     NOT NULL    UNIQUE
,   Name                            VARCHAR(80)     NOT NULL    UNIQUE
,   Description                     VARCHAR(240)    DEFAULT NULL
,   Region_Id                       INT             NOT NULL
,   Currency_Code                   VARCHAR(10)     DEFAULT NULL
,   Currency_Name                   VARCHAR(40)     DEFAULT NULL
,	Telephone_Code					INT				NOT NULL
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS HT_ABHYAS_STATE;
CREATE TABLE HT_ABHYAS_STATE (
    State_Id                        INT             NOT NULL    UNIQUE AUTO_INCREMENT
,   Country_Id                      INT             NOT NULL       
,   Name                            VARCHAR(80)     NOT NULL
,   Description                     VARCHAR(240)    DEFAULT NULL
,   State_Type                      VARCHAR(40)     NOT NULL
,   State_Code                      VARCHAR(10)     NOT NULL
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;
  
DROP TABLE IF EXISTS HT_ABHYAS_LOOKUP_TYPE;
CREATE TABLE HT_ABHYAS_LOOKUP_TYPE (
    Lookup_Type_Id                  INT         NOT NULL    UNIQUE AUTO_INCREMENT
,   Lookup_Type                     VARCHAR(50) NOT NULL    UNIQUE
,   Description                     VARCHAR(100)    NOT NULL
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS HT_ABHYAS_LOOKUP_VALUE;
CREATE TABLE HT_ABHYAS_LOOKUP_VALUE (
    Lookup_Lalue_Id                 INT             NOT NULL    UNIQUE  AUTO_INCREMENT
,   Lookup_Type_Id                  INT             NOT NULL
,   Lookup_Code                     VARCHAR(100)    NOT NULL UNIQUE
,   Lookup_Value                    VARCHAR(100)    NOT NULL
,   Description                     VARCHAR(100)    NOT NULL
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
,   UNIQUE KEY ABHYAS_LOOKUP_VALUE_C1 (Lookup_Type_Id,Lookup_Value)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;


-- user table to store login credentials
DROP TABLE IF EXISTS HT_ABHYAS_USER;
CREATE TABLE HT_ABHYAS_USER (
	User_Id							INT 	NOT NULL        UNIQUE  AUTO_INCREMENT
,	School_Id 						INT						NOT NULL
,	Associate_Id					INT						NOT NULL
,	Password						NVARCHAR(1000)			NOT NULL
,	Usertype_Id						INT						NOT NULL
,   Status_Id		            INT			      NOT NULL 
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;


DROP TABLE IF EXISTS HT_ABHYAS_ROLE;
CREATE TABLE HT_ABHYAS_ROLE (
	Role_Id							INT 	NOT NULL        UNIQUE  AUTO_INCREMENT
,	Role_Name						NVARCHAR(100)			NOT NULL
,	Role_Code						NVARCHAR(100)			NOT NULL
,	Accessroletype_Id				INT						
,   Status_Id		            INT			      NOT NULL 
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS HT_ABHYAS_MENU;
CREATE TABLE HT_ABHYAS_MENU(
	Menu_Id								INT 	NOT NULL        UNIQUE  AUTO_INCREMENT
,	Menu_Name							NVARCHAR(100)			NOT NULL
,	Menu_Code							NVARCHAR(100)			NOT NULL
,	Parent_Id							INT
,	Menutype_Id							INT
,	Url									NVARCHAR(255)	
,   Menuiconfile                        NVARCHAR(255) 
,	IsParent							BIT						DEFAULT 0   					
,   Status_Id		            INT			      NOT NULL 
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;

DROP TABLE IF EXISTS HT_ABHYAS_ROLE_MENU;
CREATE TABLE HT_ABHYAS_ROLE_MENU(
	RoleMenu_Id								INT 	NOT NULL        UNIQUE  AUTO_INCREMENT
,	School_Id							INT						NOT NULL DEFAULT -1
,	Role_Id								INT						NOT NULL
,	Menu_Id								NVARCHAR(100)			NOT NULL
,   Status_Id		            INT			      NOT NULL 
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL
)ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;


DROP TABLE IF EXISTS HT_ABHYAS_USER_ROLE_MENU;
CREATE TABLE HT_ABHYAS_USER_ROLE_MENU(
	UserRole_Id							INT 	NOT NULL        UNIQUE  AUTO_INCREMENT
,	School_Id						INT						NOT NULL
,	User_Id								INT						NOT NULL
,	Role_Id								INT						NOT NULL
,   Status_Id		            INT			      NOT NULL 
,   Creation_Date               DATE	          NOT NULL
,   Created_By                  INT		          NOT NULL
,   Last_Update_Date            DATE		      NOT NULL
,   Last_Updated_By             INT		          NOT NULL

)ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=UTF8;




