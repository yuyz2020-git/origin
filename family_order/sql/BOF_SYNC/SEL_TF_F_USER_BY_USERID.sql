SELECT b.User_Id,
       nvl(b.User_Diff_Code, 0),
       b.Net_Type_Code,
       b.Serial_Number,
       b.User_Passwd,
       b.Eparchy_Code,
       b.City_Code,
       b.Cust_Id,
       b.Usecust_Id,
       nvl(a.Brand_Code,'-1') Brand_Code,
       nvl(a.Product_Id,'-1') Product_Id,
       b.User_Type_Code,
       b.Prepay_Tag,
       b.User_State_Codeset,
       b.Open_Mode,
       b.Acct_Tag,
       b.Remove_Tag,
       to_char(b.In_Date, 'yyyymmddhh24miss'),
       to_char(b.Open_Date, 'yyyymmddhh24miss'),
       to_char(b.Pre_Destroy_Time, 'yyyymmddhh24miss'),
       to_char(b.Destroy_Time, 'yyyymmddhh24miss'),
       to_char(b.First_Call_Time, 'yyyymmddhh24miss'),
       to_char(b.Last_Stop_Time, 'yyyymmddhh24miss'),
       '0',
       '0',
       '0',
       '0',
       to_char(b.Changeuser_Date, 'yyyymmddhh24miss'),
       '0',
       to_char(SYSDATE, 'yyyymmddhh24miss'),
       b.in_staff_id,
       b.in_depart_id,
       b.DEVELOP_STAFF_ID,
       b.DEVELOP_DEPART_ID,
       b.USER_TAG_SET
  from tf_f_user b
  left join TF_F_USER_PRODUCT a on a.user_id = b.user_id AND a.MAIN_TAG = '1'
   AND SYSDATE BETWEEN a.START_DATE AND a.END_DATE
 where b.remove_tag='0' and b.user_id=:USER_ID