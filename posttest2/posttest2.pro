nowarnings

domains 
kali, tambah, bagi = integer
person = symbol

predicates 
hasil(tambah, tambah, tambah) - procedure (i,i,o) 
jumlah(bagi,bagi,bagi) - procedure (i,i,o)
total(kali, kali, kali) - procedure (i,i,o)

matakuliah(symbol,symbol) - nondeterm(o,i)

dosen(person) - nondeterm (o)
dosen (person, person) - nondeterm (o,o)

run - nondeterm ()
clauses
run:-
	write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^POSTTEST 2 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl, 
	write ("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Oktafira Anandiya ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"),nl.
	
hasil(A,B,Tambah):-
	Tambah=A+B.
jumlah(A,B,Bagi):-
	Bagi=A/B.
total(A,B,Kali):-
	Kali=A*B.

matakuliah("Dhea", "Sistem Manajemen Basidata").
matakuliah("Salma" , "Kecerdasan Buatan").
matakuliah("Ghea" , "Pemrograman Framework").
matakuliah("Difa" , "Pemrograman Visual").

dosen(Person):-
	dosen(_,Person). 
dosen(dhea, fahmi).
dosen(salma, yeni).
	
goal
run, 
jumlah(80,5,Bagi),
	total(13,9,Kali), 
	hasil(65,10,Tambah);
	matakuliah(Mahasiswa, "Kecerdasan Buatan");
	dosen(Dosen). 