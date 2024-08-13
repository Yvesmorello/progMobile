const int multiplo=5;

int arredondar(int nota){
    int restoMultiplo = nota % multiplo;
    if(multiplo - restoMultiplo < 3){
        return nota - restoMultiplo + multiplo;
    }
    return nota;
}

Map<String, Map<String, List<int>>> alunos = {
   "João": {
        'Matematica': [30 , 45, 67, 42],
        'Historia': [35, 37, 30, 46],
        "Ciencias": [73, 65, 79, 83],
   },
   "Manuel": {
        'Matematica': [61, 60, 85, 62],
        'Historia': [77, 80, 75, 78],
        "Ciencias": [89, 92, 75, 80],
   }
  };

  alunos.forEach((key, value)){
    value.forEach((d, notas)){
        double notaMedia = notas.reduce((value, element) => 0) / 
        notas.length;

        print(arredondar(notaMedia.toInt()))
    }
  }

