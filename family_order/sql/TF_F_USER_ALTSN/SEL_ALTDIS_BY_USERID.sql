Select Partition_Id,
       To_Char(a.User_Id) User_Id,
       To_Char(a.User_Id_a) User_Id_a,
       a.Discnt_Code,
       NVL(f_csm_getnamebycode(a.discnt_code,:EPARCHY_CODE,'TD_B_DISCNT'),'未知优惠') Discnt_Name,
       a.Spec_Tag,
       a.Relation_Type_Code,
       To_Char(a.Inst_Id) Inst_Id,
       To_Char(a.Campn_Id) Campn_Id,
       To_Char(a.Start_Date, 'yyyy-mm-dd hh24:mi:ss') Start_Date,
       To_Char(a.End_Date, 'yyyy-mm-dd hh24:mi:ss') End_Date,
       To_Char(a.Update_Time, 'yyyy-mm-dd hh24:mi:ss') Update_Time,
       a.Update_Staff_Id,
       a.Update_Depart_Id,
       a.Remark,
       a.Rsrv_Num1,
       a.Rsrv_Num2,
       a.Rsrv_Num3,
       To_Char(a.Rsrv_Num4) Rsrv_Num4,
       To_Char(a.Rsrv_Num5) Rsrv_Num5,
       a.Rsrv_Str1,
       a.Rsrv_Str2,
       a.Rsrv_Str3,
       a.Rsrv_Str4,
       a.Rsrv_Str5,
       To_Char(a.Rsrv_Date1, 'yyyy-mm-dd hh24:mi:ss') Rsrv_Date1,
       To_Char(a.Rsrv_Date2, 'yyyy-mm-dd hh24:mi:ss') Rsrv_Date2,
       To_Char(a.Rsrv_Date3, 'yyyy-mm-dd hh24:mi:ss') Rsrv_Date3,
       a.Rsrv_Tag1,
       a.Rsrv_Tag2,
       a.Rsrv_Tag3
  From Tf_f_User_Discnt a
 Where a.User_Id = To_Number(:USER_ID)
   And a.Partition_Id = Mod(To_Number(:USER_ID), 10000)
   And Sysdate Between a.Start_Date And a.End_Date