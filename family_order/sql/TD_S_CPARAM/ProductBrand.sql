--IS_CACHE=Y
SELECT 'ProductBrand' KEY,product_id VALUE1,'-1' VALUE2,brand_code VRESULT FROM td_b_product WHERE SYSDATE BETWEEN start_date AND end_date AND 'ProductBrand'=:KEY