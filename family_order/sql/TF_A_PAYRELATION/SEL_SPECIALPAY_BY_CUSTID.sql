select distinct acct.acct_id,
                acct.pay_name,
                acct.bank_code,
                acct.bank_acct_no,
                acct.pay_mode_code,
				u.serial_number,
                pay.start_cycle_id,
                pay.payitem_code,
				u.user_id
  from tf_a_payrelation  pay,
       tf_f_account      acct,
       tf_f_user_product up,
       tf_f_user         u
 where up.user_id = pay.user_id
   and up.partition_id = mod(pay.user_id, 10000)
   and up.end_date > sysdate
   and u.user_id = pay.user_id
   and u.partition_id = mod(pay.user_id, 10000)
   and u.remove_tag = '0'
   and to_number(to_char(SYSDATE, 'yyyymmdd')) between
       pay.start_cycle_id and pay.end_cycle_id
   and pay.default_tag = '0'
   and pay.act_tag = '1'
   and pay.acct_id = acct.acct_id
   and acct.remove_tag = '0'
   and acct.cust_id = :CUST_ID
