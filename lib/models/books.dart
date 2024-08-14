class Book{
  final String title;
  final String author;
  final String urlImage;
  final String publisher;

    const Book({
      required this.title,
      required this.author,
      required this.urlImage,
      required this.publisher
    });
}

const allBooks = [
  Book(
    title: 'Kralların Yolu',
    author: 'Brandon Sanderson',
    publisher: 'Akılçelen Yayınları', 
    urlImage: 'https://m.media-amazon.com/images/I/71uzo5HHDvL._AC_UF894,1000_QL80_.jpg'
  ),
  Book(
    title: 'Parlayan Sözler',
    author: 'Brandon Sanderson', 
    publisher: 'Akılçelen Yayınları', 
    urlImage: 'https://img.kitapyurdu.com/v1/getImage/fn:11524714/wh:true/wi:500'
  ),
  Book(
    title: 'Oathbringer', 
    author: 'Brandon Sanderson',
    publisher: 'Akılçelen Yayınları', 
    urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY7-uMOqJd68aKKpBGOOJT8jru3ssnc3ufyw&s'
    ),
    Book(
    title: 'Savaş Ritmi', 
    author: 'Brandon Sanderson',
    publisher: 'Akılçelen Yayınları', 
    urlImage: 'https://img.kitapyurdu.com/v1/getImage/fn:11631399/wh:true/wi:800'
    ),
    Book(
    title: 'İnsanlığımı Yitirirken', 
    author: 'Osamu Dazai',
    publisher: 'İthaki Yayınları', 
    urlImage: 'https://img.kitapyurdu.com/v1/getImage/fn:11650050/wh:true/wi:500'
    ),
    Book(
    title: 'Dune', 
    author: 'Frank Herbert',
    publisher: 'İthaki Yayınları', 
    urlImage: 'https://img.kitapyurdu.com/v1/getImage/fn:11494736/wh:true/wi:800'
    ),
];
