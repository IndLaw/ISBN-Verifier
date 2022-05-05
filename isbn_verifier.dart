bool isValid(String input){
    
    if(input.length < 10){
      
      return false;
      
    } else {
      var processedInput = input.replaceAll("-","");
      
        if(processedInput.length < 10 || processedInput.length > 13){
          return false;
      
        } else { 
          print(processedInput);
          if( ((int.tryParse(processedInput.substring(0,9))) != null)) {
            
            List<String> digits;
          
            /// = processedInput.split("");
            if(processedInput.substring(9) == "x" ||
              processedInput.substring(9) == "X"
              ){

              digits = processedInput.substring(0,9).split("");
              digits.add("10");
            }
            else if (((int.tryParse(processedInput.substring(9))) != null)){
              
              digits = processedInput.split("");
            }
            else{
              
              return false;
            }
            
            List<int> num = digits.map(int.parse).toList();
            
            if((((num[0] * 10) + (num[1] * 9) + (num[2] * 8) + (num[3] * 7) + (num[4] * 6) + (num[5] * 5) + (num[6] * 4) + (num[7] * 3) + (num[8] * 2) + (num[9] * 1)) % 11) == 0){
              return true;
            }
            else{
              return false;
            }
            
            
          }   
            else {
              return false;
            }
      }
    } 
  }