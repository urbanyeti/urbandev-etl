/*
 * After loading data tables, set the data_source_id 
 * foreign key field to the corresponding data source.
 * For now, all rows in a table are obtained from the same
 * source, so just update the whole table without using
 * a WHERE-clause.
 */
update census_educational_attainment set data_source_id=(select id from data_source where table_name like 'census_educational_attainment');
update census_households_by_income set data_source_id=(select id from data_source where table_name like 'census_households_by_income');
update census_housing_units_tenure set data_source_id=(select id from data_source where table_name like 'census_housing_units_tenure');
update census_persons_by_race set data_source_id=(select id from data_source where table_name like 'census_persons_by_race');
update census_total_population set data_source_id=(select id from data_source where table_name like 'census_total_population');
update census_total_population_blkgrp set data_source_id=(select id from data_source where table_name like 'census_total_population_blkgrp');
update census_persons_by_race_blkgrp set data_source_id=(select id from data_source where table_name like 'census_persons_by_race_blkgrp');
update acs_household_income_2009_blkgrp set data_source_id=(select id from data_source where table_name like 'acs_household_income_2009_blkgrp');
update acs_household_income_2014_blkgrp set data_source_id=(select id from data_source where table_name like 'acs_household_income_2014_blkgrp');
update acs_educational_attainment_2005_2009_blkgrp set data_source_id=(select id from data_source where table_name like 'acs_educational_attainment_2005_2009_blkgrp');
update acs_educational_attainment_2010_2014_blkgrp set data_source_id=(select id from data_source where table_name like 'acs_educational_attainment_2010_2014_blkgrp');
update census_educational_attainment_1990_blkgrp set data_source_id=(select id from data_source where table_name like 'census_educational_attainment_1990_blkgrp');
update census_educational_attainment_2000_blkgrp set data_source_id=(select id from data_source where table_name like 'census_educational_attainment_2000_blkgrp');
update census_block_groups_in_pdx_neighborhood set data_source_id=(select id from data_source where table_name like 'census_block_groups_in_pdx_neighborhood');
update census_tracts_in_pdx_neighborhood set data_source_id=(select id from data_source where table_name like 'census_tracts_in_pdx_neighborhood');
update pdx_neighborhood set data_source_id=(select id from data_source where table_name like 'pdx_neighborhood');
