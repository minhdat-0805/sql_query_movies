-- SIMPLE CASE/ SEARCHED CASE:
--Sử dụng database Movies. Hãy cung cấp thông tin của những bộ phim ra mắt sau năm 1991, và có kinh phí lớn hơn 300 triệu USD. Yêu cầu hiển thị:
    --1. Tên Studio sản xuất
    --2.Thể loại phim 
    --3.Tên giám đốc sản xuất
    --4.Tên bộ phim
    --5.Kinh phí sản xuất
    --6.Thời lượng bộ phim. Biết rằng:
        --Nếu  <60p: Hiển thị "Less than 1 hour"
        --Nếu  >60p và 120p: Hiển thị "Less than 1 hour"
        --Nếu  <60p: Hiển thị "More than 2 hours"

SELECT * FROM Film
select * from Studio
select * from genre
select * from Director
select * from role 
select * from Certificate
select * from Country
select * from [Language]
select * from Actor 


    SELECT 
    Studio.Studio,
    Genre.Genre,
    Director.FullName,
    Film.Title,
    Film.BudgetDollars,
    Film.ReleaseDate,
    Film.RunTimeMinutes,

    CASE
    WHEN Film.RunTimeMinutes < 60 Then 'Less than 1 hour'
    WHEN Film.RunTimeMinutes >= 60 AND Film.RunTimeMinutes <= 120  Then '1-2 hours' 
    WHEN Film.RunTimeMinutes > 120 Then 'More than 2 hours' 
    END as THOI_LUONG

    FROM Film 
    left join Studio on Film.StudioID = Studio.StudioID
    left join Genre on Film.GenreID = Genre.GenreID
    left join Director on Film.DirectorID = Director.DirectorID 
    WHERE YEAR (ReleaseDate) >1991
    AND Film.BudgetDollars > 300000000
   



