import 'package:flutter/material.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;
  final String loadingMessage = 'Loading';

  const TrendingMovies({required Key key, required this.trending})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Trending Movies'),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 270,
            child: ListView.builder(
                itemCount: trending.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                'https://image.tmdb.org/t/p/w500' +
                                    trending[index]['poster_path'],
                              )),
                            ),
                          ),
                          Text(
                            trending[index]['title'] ?? loadingMessage,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
