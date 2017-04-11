/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates %aturan ((unsigned= nilainya tidak boleh kurang dari 0 atau negatif harus positif)) -- ((real =bilangan yang berisi titik desimal atau jenis bilangan pecahan)) 
  factorial(unsigned,real) - procedure (i,o) 			%mendeklarasikan predikat factorial dimana terdapat 2 argumen didalamnya meliputi tipe data unsigned dan real 
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) %mendeklarasikan predikat factorial dengan argumen yang sama yaitu type data usigned dan real,
  								% dimana yang awal hanya 2 argumen , dan yg selanjutnya 4 argumen 
/* Numbers likely to become large are declared as reals. */

clauses %fakta
  factorial(N,FactN):-	%clause factorial yaitu clausa yang pertama kali di cocokan dengan goal yang telah ada.
  			%pada clausa ini terdapat 2 argumen diaman argumen N yang terikat dengan nilai 3(dari GOAL), 
  			%sementara FactN masih belum diketahui nilainya.  
	factorial(N,FactN,1,1.0). %subgoal dari factorial(N,FactN) dimana factorial ini memiliki 4 argumen yaitu(N,FactN,1,1.0). 
					%karena N bernilai 3, maka menjadi factorial(3,?,1,1.0)  

  factorial(N,FactN,N,FactN):-!.	%factorial ini memiliki 4 argumen yaitu (N,FactN,N,FactN) kemudian diikuti jika maka dan tanda cut(!). 
  					%jika nilai argumen pertama(N) sama dengan nilai argumen ketiga(N) dan jika nilai argumen kedua(FactN) 
  					%sama dengan nilai argumen keempat(FactN)maka visual prolog akan menghentikan lacak balik
  factorial(N,FactN,I,P):-		%factorial ini memiliki 4 argumen yaitu(N, FactN,I,P), karena N=3, FactN belum diketahui, I=1, & P=1.0 
  					%sehingga menjadi factorial(3,?,1,1.0).  
	NewI = I+1,			%untuk nilai dari NewI berasal dari nilai I+1
	NewP = P*NewI,			%dan untuk nilai dari NewP berasal dari nilai P*NewI
	factorial(N, FactN, NewI, NewP).	%dan untuk factorial ini memiliki 4 argumen yang nilainya dari operasi subgoal sebelumnya. 

goal %hasil akhir
  factorial(3,X).	%goal  yang dicari, dimana pada goal factorial telah ditentukan nilai N=3 pada argume pertamanya dan 
  			%pada argumen kedua berisi X, maka kita akan mencari nilai X tersebut. 
  			%pertama visual prolog akan mencari fakta dengan melakukan pencocokan dengan goal, 
  			%maka ditemukan factorial(N,FactN)
  			%karena nilai X variabel bebas, maka X dapat di unifikasikan ke variabel manapun. 
  			%FactN merupakan variabel dari head rule factorial
  			%maka terjadi unifikasi antara X dan factorial, sehingga X=FactN. Sementara variabel N diikat dengan nilai=3
  			%dan akan dilakukan pencocokan satu persatu hingga mendapatkan nilai X dan terpenuhi semua aturan yang ada. 
  			%maka setelah ditemukan nilai dari X akan bernilai 6.
