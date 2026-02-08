/*
Q3- Create a class Movie with attributes title and rating.
In main(), create a list of 4 movies. Print only the movies with a rating above 7.
*/
void main() {
  List<Movie> movies = [
    Movie(title: 'The Dark Knight', rating: 9.1),
    Movie(title: 'The Godfather', rating: 9.2),
    Movie(title: 'Batman v Superman: Dawn of Justice', rating: 6.4),
    Movie(title: 'Transformers: The Last Knight', rating: 5.2),
  ];
  for (var element in movies) {
    if (element.rating > 7) {
      print("${element.title} has rating ${element.rating} which is above 7");
    }
  }
}

class Movie {
  String title;
  num rating;
  Movie({required this.title, required this.rating});
}
