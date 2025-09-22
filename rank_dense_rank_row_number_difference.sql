-- talking about the difference
-- firstly talk about similarities


-- when there are no duplicates in the data according to the order by clause column
-- then each will give integer numbering starting with 1 and goes till the last row number

-- but if there are duplicates in the data according to the order by clause column
-- then 
-- row_number will act as same - 1, 2, 3, 4, 5
-- rank : 1, 1, 3, 4, 5 - it will skip the rank for the duplicate entry and then start with next rank
-- dense_rank: 1, 1, 2, 3, 4- it will not skip the rank either it will give next rank to the other row when there are ties

