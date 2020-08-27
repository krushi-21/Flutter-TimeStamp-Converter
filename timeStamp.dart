void main() {
  var date1="2020-08-13T17:43:39.622832+05:30";
  var date;
  date = DateTime.parse(date1);
   print(readTimestamp(date.millisecondsSinceEpoch ~/ 1000));
  }
String readTimestamp(int timestamp) {
  var now = DateTime.now();
  var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  var diff = now.difference(date);
  
  String time = '';

  if (diff.inSeconds <= 0 ||
      diff.inSeconds < 60){
    time=diff.inSeconds.toString()+'Seconds AGO';
  }
    
  else if( diff.inMinutes == 0 || diff.inMinutes <60){
    time=diff.inMinutes.toString()+'Minutes AGO';
  }
  else if(diff.inHours == 0 || diff.inHours <24){
    time =diff.inHours.toString()+'Hours AGO';
    
  }
    
 else if (diff.inDays > 0 && diff.inDays < 7) {
    if (diff.inDays == 1) {
      time = diff.inDays.toString() + ' DAY AGO';
    } else {
      time = diff.inDays.toString() + ' DAYS AGO';
    }
  } else {
    if (diff.inDays == 7) {
      time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
    } else {
      time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
    }
  }

  return time;
}

 
