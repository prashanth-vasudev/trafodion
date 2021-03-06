-- @@@ START COPYRIGHT @@@
--
-- (C) Copyright 2013-2014 Hewlett-Packard Development Company, L.P.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--
-- @@@ END COPYRIGHT @@@

-- use dynamic partition column syntax
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.enforce.bucketing = true;  
insert overwrite table customer_bp partition (c_preferred_cust_flag) 
select
    c_customer_sk,
    c_customer_id,
    c_current_cdemo_sk,
    c_current_hdemo_sk,
    c_current_addr_sk,
    c_first_shipto_date_sk,
    c_first_sales_date_sk,
    c_salutation,
    c_first_name,
    c_last_name,
    c_birth_day,
    c_birth_month,
    c_birth_year,
    c_birth_country,
    c_login,
    c_email_address,
    c_last_review_date,
    c_preferred_cust_flag -- part col must be last
from customer_ddl
where c_customer_sk < 20000;

insert overwrite table tbl_utf8p partition (translator) 
select *
from tbl_utf8;
