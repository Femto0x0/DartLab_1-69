void main() {
  List<String> subjects = ['Math', 'Biology', 'English'];
  print('Number of subjects: ${subjects.length}');
  print('Frist subject: ${subjects[0]}');
  print('Last subject: ${subjects[subjects.length - 1]}');
  
  subjects.add('Thai');
  print('Update subjects: $subjects');
  
  print('---');
  
  Map<String,int> studentScores = {
    'Math': 93,
    'Biology': 73,
  };
  print('Score for Biology: ${studentScores['Biology']}');
  
  studentScores['English'] = 79;
   print('Updated scores: $studentScores');
  print('All subjects in map: ${studentScores.keys}');
  print('All scores in map: ${studentScores.values}');
}