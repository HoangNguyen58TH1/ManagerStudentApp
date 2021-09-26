nhiều lý do --> app rails chậm
lý do lớn nhất --> query db
load quá nhiều data, n+1 query, thiếu cache, thiếu index

thiếu index cho khóa ngoại, các cột hay đc tìm kiếm, các column đc sort
vài nghinf  --> sao --> vài triệu --> chậm

khi tao db --> nghi xem khi tim record dó thì dựa trên column nào (id. name, email, ...)
--> using add_index cho column đó --> search nhanh hơn nhiều
table --> book --- index --> như cái mục lục


- Index cho việc tìm kiếm giá trị duy nhất Bất kỳ tìm kiếm dựa trên một giá trị cột duy nhất thì nên có index
- Index cho khóa ngoài (2 model belong_to or has_many)
add_index :branches, :project_id

- polymorphic:
add_index :projects, [:owner_id, :owner_type]


index --> tăng perfomance cho app --> nếu using sai cách --> giảm performance app
vd: các table có các column thường xuyên bị xóa, add_index tức là add thêm bộ nhớ trong db



polymorphic --> 1 model co the co nhieu association vs nhieu model khac --> nhung co the thể hiện qua 1 association.

INNER JOIN (JOIN) --> return all record khi có ít nhất 1 value ở cả 2 table
LEFT OUTER JOIN (LEFT JOIN) -->  Trả lại tất cả các dòng từ bảng bên trái, và các dòng đúng với điều kiện từ bảng bên phải
RIGHT OUTER JOIN (RIGHT JOIN) --> Trả lại tất cả các hàng từ bảng bên phải, và các dòng thỏa mãn điều kiện từ bảng bên trái
FULL OUTER JOIN (OUTER JOIN): Trả về tất cả các dòng đúng với 1 trong các bảng.



