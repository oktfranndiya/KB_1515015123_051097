predicates 
nondeterm memilih (symbol,symbol,symbol) 
run - nondeterm ()

clauses
run:-
	write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^POSTTEST 3 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl, 
	write ("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Oktafira Anandiya ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"),nl.
	 
memilih("irfan","AI","A").
memilih("komeng", "AI","D").
memilih("dati","AI","C").
memilih("fatima", "AI","B").
memilih("maspion", "AI","C").

memilih("ricky","PDE","E").
memilih("embang","PDE","A").
memilih("salmin","PDE","D").
memilih("vina","PDE","B").
memilih("sondang","PDE","C").

memilih("pamuji","so","D").
memilih("luki","so","E").
memilih("sadek","so","B").
memilih("yusida","so","A").
memilih("eka","so","A").

goal
run, 
	memilih(Nama,"AI",_); %mahasiswa yang mengikuti matakuliah AI
	memilih(Nama,_,Nilai),Nilai > "C"; %nama mahasiswa yang tidak lulus
	memilih(Nama,_,Nilai), Nilai < "D"; %nama mahasiswa yang lulus
	memilih(_,Matkul,_); %matakuliah yang ada 
	memilih(Nama,_,_). %nama mahasiswa yang ada 
