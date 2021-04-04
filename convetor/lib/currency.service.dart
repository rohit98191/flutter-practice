class CurrenyService{
  getCurrencyString(value){
    if(value=='USD') return 'United State';
    if(value == 'RUB') return 'Russian';
    return 'United State';
  }
}