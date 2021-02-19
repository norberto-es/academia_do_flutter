void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  
  int mais20 = 0;
  List<String> str2 = [];
  var str1;
  var str3;
  for (var i = 0; i < pacientes.length; i++) {
    str1 = pacientes[i].split('|');
    if (int.tryParse(str1[1]) > 20) {
      mais20++;
    }
    str1 = pacientes[i].split('|');
    str3 = str1[0].split(' ');
    str2.add(str3[1] + ' ' + str3[0]);
  }

  print('pacientes com mais de 20 anos $mais20');
  str2.sort();
  print('----------------');
  var sobrenome = str2[0].split(' ');
  var asobrenome = [];
  print('Familia '+ sobrenome[0] + ':');
  for (var i = 0; i < str2.length; i++) {
    asobrenome = str2[i].split(' ');

    if (sobrenome[0] == asobrenome[0]) {
      print('    ' + asobrenome[1]);
    } else {
      sobrenome[0] = asobrenome[0];
      print('Familia '+sobrenome[0] + ':');
    }
  }
}
