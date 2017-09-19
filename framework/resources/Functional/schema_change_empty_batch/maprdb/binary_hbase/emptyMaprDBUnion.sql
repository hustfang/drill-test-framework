select p.p_partkey, ps.data.ps_suppkey from (select p1.data.p_partkey as p_partkey, p1.data.p_name as p_name, p1.data.p_mfgr as p_mfgr from `/drill/testdata/schema_change_empty_batch/maprdb/binary/part` as p1 where p1.data.p_size = 98 UNION select p2.data.p_partkey as p_partkey, p2.data.p_name as p_name, p2.data.p_mfgr as p_mfgr from `/drill/testdata/schema_change_empty_batch/maprdb/binary/part` as p2 where p2.data.p_size = 99) as p, `/drill/testdata/schema_change_empty_batch/maprdb/binary/partsupp` as ps where p.p_partkey = ps.data.ps_partkey;
