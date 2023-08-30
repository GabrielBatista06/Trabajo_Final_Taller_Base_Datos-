Use Control_de_libros

select * from Autores;

select * from Detalle_AutorLibro;

select * from Libros ;

select * from Editoriales ;

--a. Mostrar el primer nombre, primer apellido de los autores junto con el t�tulo de libro que estos han escrito
select a.PrimerNombre, a.PrimerApellido, l.Titulo as T�tulo_Libro from Autores a
inner join Detalle_AutorLibro da on (a.id = da.AuthorId )
inner join Libros  l on (da.BookId = l.Id)

--b. Mostrar el nombre de la editorial y el t�tulo del libro 
select e.Nombre as Nombre_Editorial, l.Titulo as Titulo_Libro from Editoriales e 
inner join libros l on (e.CodigoEditorial = l.CodigoEditorial);


--c. Mostrar los t�tulos de los libros y el nombre de la editorial, donde esta sea del pa�s de Inglaterra 
select e.Nombre, l.Titulo from Editoriales e 
inner join libros l on (e.CodigoEditorial = l.CodigoEditorial)
where e.Pais = 'Inglaterra';


-- d. Mostrar los nombres de los autores y el t�tulo del libro donde el a�o de edici�n sea el m�s actual
select a.PrimerNombre, a.PrimerApellido, l.Titulo from Autores a
inner join Detalle_AutorLibro da on (a.id = da.AuthorId )
inner join Libros  l on (da.BookId = l.Id)
order by l.AnoEdicion desc;

select a.PrimerNombre, a.PrimerApellido, l.Titulo from Autores a
inner join Detalle_AutorLibro da on (a.id = da.AuthorId )
inner join Libros  l on (da.BookId = l.Id)
where l.AnoEdicion = (select max(AnoEdicion) from Libros) ;

--e. Mostrar los nombres de los autores y el t�tulo del libro donde el a�o de edici�n sea el menos actual
select a.PrimerNombre, a.PrimerApellido, l.Titulo from Autores a
inner join Detalle_AutorLibro da on (a.id = da.AuthorId )
inner join Libros  l on (da.BookId = l.Id)
order by l.AnoEdicion asc;

select a.PrimerNombre, a.PrimerApellido, l.Titulo from Autores a
inner join Detalle_AutorLibro da on (a.id = da.AuthorId )
inner join Libros  l on (da.BookId = l.Id)
where l.AnoEdicion = (select min(AnoEdicion) from Libros) ;



--f. Agregue los datos necesarios a las tablas, para luego implementar las instrucciones LEFT JOIN, 
--RIGHT JOIN Y FULL JOIN, como por ejemplo autores que no han escrito un libro todav�a, editoriales 
--que no han editado libros etc.

--Autores que no han escrito un libro todav�a

select a.* from Autores a
left join Detalle_AutorLibro da on (a.id = da.AuthorId )
where da.AuthorId is  null;

-- Editoriales que no han editado libros
select e.* from libros l  
right join Editoriales e  on ( l.CodigoEditorial = e.CodigoEditorial)
where l.CodigoEditorial is null;

--Obtener todos los libros y editoriales sin importar que tengan relacion
select e.Nombre, l.Titulo from Editoriales e 
full join libros l on (e.CodigoEditorial = l.CodigoEditorial)
;

