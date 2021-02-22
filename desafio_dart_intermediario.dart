import 'dart:collection';

main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];
// Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

//* remover os duplicados
  var pessoas1= pessoas.toSet();
  
  print('1-removidos os duplicados \n $pessoas1');
  
 // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  
 int totMasculino = 0;
 int totFemenino =0;

 SplayTreeSet<String> listaMaiores = SplayTreeSet();

 
 var a;
 var b=0;
 var maisvelho;
for (var i = 0; i < pessoas1.length; i++) {
  if (pessoas1.elementAt(i).contains('Masculino')){
      ++totMasculino;     
  } else if (pessoas1.elementAt(i).contains('Feminino')) {
     ++totFemenino;     
  }

   a =pessoas1.elementAt(i).split('|');

   if (  int.parse(a[1]) > 18 ){
     if(int.parse(a[1]) > b) {
       b = int.parse(a[1]); 
       maisvelho = a;
        }
     listaMaiores.add(pessoas1.elementAt(i));

   }
   

}
print(' ------------------------------------------ ');
print(' ------------------------------------------ ');
print(' 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');
 
print(' Total sexo Masculino $totMasculino -\- Total sexo Feminino $totFemenino');
print(' ------------------------------------------ ');

// 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
//      e mostre a quantidade de pessoas com mais de 18 anos
print('3-Filtrar e deixar a lista somente com pessoas maiores de 18 anos \n ${listaMaiores}');
print(' ----------------- ');
print('   mostre a quantidade de pessoas com mais de 18 anos \n Total  ${listaMaiores.length}');
print(' ------------------------------------------ ');

print(' 4 - Encontre a pessoa mais velha \n ${maisvelho}');

}