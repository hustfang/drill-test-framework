explain plan for select * from ( SELECT c8 FROM `union_01_v` WHERE c8 < 1000.00 UNION SELECT c2 FROM `union_02_v` WHERE c2 < 1000.00 ) t limit 0;