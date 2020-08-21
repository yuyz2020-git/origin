Insert Into Tf_b_Trade_User
  (Trade_Id,
   Accept_Month,
   User_Id,
   Cust_Id,
   Usecust_Id,
   Brand_Code,
   Product_Id,
   Eparchy_Code,
   City_Code,
   City_Code_a,
   User_Passwd,
   User_Diff_Code,
   User_Type_Code,
   User_Tag_Set,
   User_State_Codeset,
   Net_Type_Code,
   Serial_Number,
   Score_Value,
   Contract_Id,
   Credit_Class,
   Basic_Credit_Value,
   Credit_Value,
   Credit_Control_Id,
   Acct_Tag,
   Prepay_Tag,
   Mpute_Month_Fee,
   Mpute_Date,
   First_Call_Time,
   Last_Stop_Time,
   Changeuser_Date,
   In_Net_Mode,
   In_Date,
   In_Staff_Id,
   In_Depart_Id,
   Open_Mode,
   Open_Date,
   Open_Staff_Id,
   Open_Depart_Id,
   Develop_Staff_Id,
   Develop_Date,
   Develop_Depart_Id,
   Develop_City_Code,
   Develop_Eparchy_Code,
   Develop_No,
   Assure_Cust_Id,
   Assure_Type_Code,
   Assure_Date,
   Remove_Tag,
   Pre_Destroy_Time,
   Destroy_Time,
   Remove_Eparchy_Code,
   Remove_City_Code,
   Remove_Depart_Id,
   Remove_Reason_Code,
   Modify_Tag,
   Update_Time,
   Update_Staff_Id,
   Update_Depart_Id,
   Remark,
   Rsrv_Num1,
   Rsrv_Num2,
   Rsrv_Num3,
   Rsrv_Num4,
   Rsrv_Num5,
   Rsrv_Str1,
   Rsrv_Str2,
   Rsrv_Str3,
   Rsrv_Str4,
   Rsrv_Str5,
   Rsrv_Str6,
   Rsrv_Str7,
   Rsrv_Str8,
   Rsrv_Str9,
   Rsrv_Str10,
   Rsrv_Date1,
   Rsrv_Date2,
   Rsrv_Date3,
   Rsrv_Tag1,
   Rsrv_Tag2,
   Rsrv_Tag3)
  Select To_Number(:intrade_Id),
         To_Number(To_Char(Sysdate, 'mm')),
         User_Id,
         Cust_Id,
         Usecust_Id,
         Brand_Code,
         Product_Id,
         Eparchy_Code,
         City_Code,
         City_Code_a,
         User_Passwd,
         User_Diff_Code,
         :user_Type_Code,
         User_Tag_Set,
         User_State_Codeset,
         Net_Type_Code,
         Serial_Number,
         Score_Value,
         Contract_Id,
         Credit_Class,
         Basic_Credit_Value,
         Credit_Value,
         Credit_Control_Id,
         Acct_Tag,
         Prepay_Tag,
         Mpute_Month_Fee,
         Mpute_Date,
         First_Call_Time,
         Last_Stop_Time,
         Changeuser_Date,
         In_Net_Mode,
         In_Date,
         In_Staff_Id,
         In_Depart_Id,
         Open_Mode,
         Open_Date,
         Open_Staff_Id,
         Open_Depart_Id,
         :trade_Staff_Id,
         Sysdate,
         :agent_Id,
         Develop_City_Code,
         Develop_Eparchy_Code,
         Develop_No,
         Assure_Cust_Id,
         Assure_Type_Code,
         Assure_Date,
         Remove_Tag,
         Pre_Destroy_Time,
         Destroy_Time,
         Remove_Eparchy_Code,
         Remove_City_Code,
         Remove_Depart_Id,
         Remove_Reason_Code,
         Modify_Tag,
         Update_Time,
         Update_Staff_Id,
         Update_Depart_Id,
         Remark,
         Rsrv_Num1,
         Rsrv_Num2,
         Rsrv_Num3,
         Rsrv_Num4,
         Rsrv_Num5,
         Rsrv_Str1,
         Rsrv_Str2,
         Rsrv_Str3,
         Rsrv_Str4,
         Rsrv_Str5,
         Rsrv_Str6,
         Rsrv_Str7,
         Rsrv_Str8,
         Rsrv_Str9,
         Rsrv_Str10,
         Rsrv_Date1,
         Rsrv_Date2,
         Rsrv_Date3,
         Rsrv_Tag1,
         Rsrv_Tag2,
         Rsrv_Tag3
    From Tf_b_Trade_User
   Where Trade_Id = To_Number(:trade_Id)