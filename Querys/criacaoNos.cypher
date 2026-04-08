// Criação de Usuarios
MERGE (:User {name: "Ana"});
MERGE (:User {name: "Bruno"});
MERGE (:User {name: "Carla"});
MERGE (:User {name: "Daniel"});
MERGE (:User {name: "Eduarda"});
MERGE (:User {name: "Felipe"});
MERGE (:User {name: "Gabriela"});
MERGE (:User {name: "Henrique"});
MERGE (:User {name: "Isabela"});
MERGE (:User {name: "João"});

// Criação de Filmes
MERGE (:Movie {title: "Avatar", launchYear: "2009"});
MERGE (:Movie {title: "Batman Begins", launchYear: "2005"});
MERGE (:Movie {title: "Interestelar", launchYear: "2014"});
MERGE (:Movie {title: "Django Unchained", launchYear: "2012"});
MERGE (:Movie {title: "Inglourious Basterds", launchYear: "2009"});
MERGE (:Movie {title: "Forrest Gump", launchYear: "1994"});
MERGE (:Movie {title: "Gladiator", launchYear: "2000"});
MERGE (:Movie {title: "Harry Potter and the Sorcerer's Stone", launchYear: "2001"});
MERGE (:Movie {title: "Inception", launchYear: "2010"});
MERGE (:Movie {title: "Jurassic Park", launchYear: "1993"});

// Criação de Series
MERGE (:Series {title: "Breaking Bad", launchYear: "2008"});
MERGE (:Series {title: "Game of Thrones", launchYear: "2011"});
MERGE (:Series {title: "Stranger Things", launchYear: "2016"});
MERGE (:Series {title: "The Walking Dead", launchYear: "2010"});
MERGE (:Series {title: "The Crown", launchYear: "2016"});
MERGE (:Series {title: "Sherlock", launchYear: "2010"});
MERGE (:Series {title: "Friends", launchYear: "1994"});
MERGE (:Series {title: "The Office", launchYear: "2005"});
MERGE (:Series {title: "Dark", launchYear: "2017"});
MERGE (:Series {title: "House of the Dragon", launchYear: "2022"});

// Criaçao de Diretores
MERGE (:Director {name: "James Cameron"}); // avatar
MERGE (:Director {name: "Christopher Nolan"}); // batman begins ;interestelar e inception
MERGE (:Director {name: "Quentin Tarantino"}); // django unchained e Inglourious Basterds
MERGE (:Director {name: "Steven Spielberg"}); // jurassic park
MERGE (:Director {name: "Chris Columbus"}); //Harry potter and the sorcerer's stone
MERGE (:Director {name: "Ridley Scott"}); // Gladiator
MERGE (:Director {name: "Robert Zemeckis"}); // Forrest Gump
MERGE (:Director {name: "Vince Gilligan"}); // breaking bad
MERGE (:Director {name: "David Benioff"}); // game of thrones
MERGE (:Director {name: "Matt Duffer"}); //stranger things
MERGE (:Director {name: "Frank Darabont"}); //the walking dead
MERGE (:Director {name: "Peter Morgan"}); //the crown
MERGE (:Director {name: "Paul McGuigan"}); // sherlock
MERGE (:Director {name: "James Burrows"}); // friends
MERGE (:Director {name: "Greg Daniels"}); // the office
MERGE (:Director {name: "Baran bo Odar"}); // dark
MERGE (:Director {name: "Jantje Friese"}); // dark
MERGE (:Director {name: "Miguel Sapochnik"}); // house of the dragon

// Criação de Atores
MERGE (:Actor {name: "Sam Worthington"}); // avatar
MERGE (:Actor {name: "Christian Bale"}); // batman begins
MERGE (:Actor {name: "Matthew McConaughey"}); // interestelar
MERGE (:Actor {name: "Jamie Foxx"}); // django unchained
MERGE (:Actor {name: "Brad Pitt"}); // Inglourious Basterds
MERGE (:Actor {name: "Tom Hanks"}); // Forrest Gump
MERGE (:Actor {name: "Russell Crowe"}); // Gladiator
MERGE (:Actor {name: "Daniel Radcliffe"}); // Harry Potter and the Sorcerer's Stone
MERGE (:Actor {name: "Leonardo DiCaprio"}); // Inception
MERGE (:Actor {name: "Sam Neill"}); // Jurassic Park
MERGE (:Actor {name: "Bryan Cranston"}); // breaking bad
MERGE (:Actor {name: "Emilia Clarke"}); // Game of Thrones
MERGE (:Actor {name: "Millie Bobby Brown"}); // Stranger Things
MERGE (:Actor {name: "Andrew Lincoln"}); // The Walking Dead
MERGE (:Actor {name: "Claire Foy"}); // The Crown
MERGE (:Actor {name: "Benedict Cumberbatch"}); // Sherlock
MERGE (:Actor {name: "Jennifer Aniston"}); // Friends
MERGE (:Actor {name: "Steve Carell"}); // The Office
MERGE (:Actor {name: "Louis Hofmann"}); // Dark
MERGE (:Actor {name: "Emma D'Arcy"}); // House of the Dragon

// Criação de Generos
MERGE (:Genre {name: "Sci-Fi"});
MERGE (:Genre {name: "Action"});
MERGE (:Genre {name: "Drama"});
MERGE (:Genre {name: "Adventure"});
MERGE (:Genre {name: "Crime"});
MERGE (:Genre {name: "Fantasy"});
MERGE (:Genre {name: "Comedy"});
MERGE (:Genre {name: "Thriller"});
MERGE (:Genre {name: "History"});
MERGE (:Genre {name: "Horror"});

// Criação de relações IN_GENRE entre Filmes e Generos
MATCH (m:Movie {title: "Avatar"}), (g:Genre {name: "Sci-Fi"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Avatar"}), (g:Genre {name: "Adventure"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Avatar"}), (g:Genre {name: "Action"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Batman Begins"}), (g:Genre {name: "Action"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Batman Begins"}), (g:Genre {name: "Drama"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Interestelar"}), (g:Genre {name: "Sci-Fi"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Interestelar"}), (g:Genre {name: "Adventure"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Django Unchained"}), (g:Genre {name: "Drama"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Django Unchained"}), (g:Genre {name: "Crime"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Inglourious Basterds"}), (g:Genre {name: "Action"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Inglourious Basterds"}), (g:Genre {name: "History"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Forrest Gump"}), (g:Genre {name: "Drama"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Gladiator"}), (g:Genre {name: "Action"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Gladiator"}), (g:Genre {name: "History"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Harry Potter and the Sorcerer's Stone"}), (g:Genre {name: "Fantasy"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Harry Potter and the Sorcerer's Stone"}), (g:Genre {name: "Adventure"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Inception"}), (g:Genre {name: "Sci-Fi"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Inception"}), (g:Genre {name: "Thriller"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Jurassic Park"}), (g:Genre {name: "Sci-Fi"})
MERGE (m)-[:IN_GENRE]->(g);

MATCH (m:Movie {title: "Jurassic Park"}), (g:Genre {name: "Adventure"})
MERGE (m)-[:IN_GENRE]->(g);

// Criação de relações IN_GENRE entre Filmes e Generos
MATCH (s:Series {title: "Breaking Bad"}), (g:Genre {name: "Crime"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Breaking Bad"}), (g:Genre {name: "Drama"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Game of Thrones"}), (g:Genre {name: "Fantasy"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Game of Thrones"}), (g:Genre {name: "Drama"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Stranger Things"}), (g:Genre {name: "Sci-Fi"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Stranger Things"}), (g:Genre {name: "Thriller"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "The Walking Dead"}), (g:Genre {name: "Horror"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "The Walking Dead"}), (g:Genre {name: "Drama"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "The Crown"}), (g:Genre {name: "History"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "The Crown"}), (g:Genre {name: "Drama"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Sherlock"}), (g:Genre {name: "Crime"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Sherlock"}), (g:Genre {name: "Thriller"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Friends"}), (g:Genre {name: "Comedy"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "The Office"}), (g:Genre {name: "Comedy"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Dark"}), (g:Genre {name: "Sci-Fi"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "Dark"}), (g:Genre {name: "Thriller"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "House of the Dragon"}), (g:Genre {name: "Fantasy"})
MERGE (s)-[:IN_GENRE]->(g);

MATCH (s:Series {title: "House of the Dragon"}), (g:Genre {name: "Action"})
MERGE (s)-[:IN_GENRE]->(g);

// Criação das relações DIRECTED entre Diretores e Filmes
MATCH (d:Director {name: "James Cameron"}), (m:Movie {title: "Avatar"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Christopher Nolan"}), (m:Movie {title: "Batman Begins"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Christopher Nolan"}), (m:Movie {title: "Interestelar"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Christopher Nolan"}), (m:Movie {title: "Inception"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Quentin Tarantino"}), (m:Movie {title: "Django Unchained"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Quentin Tarantino"}), (m:Movie {title: "Inglourious Basterds"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Steven Spielberg"}), (m:Movie {title: "Jurassic Park"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Chris Columbus"}), (m:Movie {title: "Harry Potter and the Sorcerer's Stone"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Ridley Scott"}), (m:Movie {title: "Gladiator"})
MERGE (d)-[:DIRECTED]->(m);

MATCH (d:Director {name: "Robert Zemeckis"}), (m:Movie {title: "Forrest Gump"})
MERGE (d)-[:DIRECTED]->(m);

// Criação das relações DIRECTED entre Diretores e Series

MATCH (d:Director {name: "Vince Gilligan"}), (s:Series {title: "Breaking Bad"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "David Benioff"}), (s:Series {title: "Game of Thrones"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Matt Duffer"}), (s:Series {title: "Stranger Things"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Frank Darabont"}), (s:Series {title: "The Walking Dead"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Peter Morgan"}), (s:Series {title: "The Crown"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Paul McGuigan"}), (s:Series {title: "Sherlock"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "James Burrows"}), (s:Series {title: "Friends"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Greg Daniels"}), (s:Series {title: "The Office"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Baran bo Odar"}), (s:Series {title: "Dark"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Jantje Friese"}), (s:Series {title: "Dark"})
MERGE (d)-[:DIRECTED]->(s);

MATCH (d:Director {name: "Miguel Sapochnik"}), (s:Series {title: "House of the Dragon"})
MERGE (d)-[:DIRECTED]->(s);

// Criação de relações ACTED_IN entre Atores e Filmes

MATCH (a:Actor {name: "Sam Worthington"}), (m:Movie {title: "Avatar"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Christian Bale"}), (m:Movie {title: "Batman Begins"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Matthew McConaughey"}), (m:Movie {title: "Interestelar"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Jamie Foxx"}), (m:Movie {title: "Django Unchained"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Brad Pitt"}), (m:Movie {title: "Inglourious Basterds"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Tom Hanks"}), (m:Movie {title: "Forrest Gump"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Russell Crowe"}), (m:Movie {title: "Gladiator"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Daniel Radcliffe"}), (m:Movie {title: "Harry Potter and the Sorcerer's Stone"})

MATCH (a:Actor {name: "Leonardo DiCaprio"}), (m:Movie {title: "Inception"})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {name: "Sam Neill"}), (m:Movie {title: "Jurassic Park"})
MERGE (a)-[:ACTED_IN]->(m);

// Criação de relações ACTED_IN entre Atores e Series

MATCH (a:Actor {name: "Bryan Cranston"}), (s:Series {title: "Breaking Bad"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Emilia Clarke"}), (s:Series {title: "Game of Thrones"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Millie Bobby Brown"}), (s:Series {title: "Stranger Things"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Andrew Lincoln"}), (s:Series {title: "The Walking Dead"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Claire Foy"}), (s:Series {title: "The Crown"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Benedict Cumberbatch"}), (s:Series {title: "Sherlock"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Jennifer Aniston"}), (s:Series {title: "Friends"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Steve Carell"}), (s:Series {title: "The Office"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Louis Hofmann"}), (s:Series {title: "Dark"})
MERGE (a)-[:ACTED_IN]->(s);

MATCH (a:Actor {name: "Emma D'Arcy"}), (s:Series {title: "House of the Dragon"})
MERGE (a)-[:ACTED_IN]->(s);

// Criação de relações WATCHED entre Usuarios e Filmes

MATCH (u:User {name: "Ana"}), (m:Movie {title: "Avatar"})
MERGE (u)-[:WATCHED {rating: 8} ]->(m);

MATCH (u:User {name: "Ana"}), (m:Movie {title: "Jurassic Park"})
MERGE (u)-[:WATCHED {rating: 7} ]->(m);

MATCH (u:User {name: "Carla"}), (m:Movie {title: "Interestelar"})
MERGE (u)-[:WATCHED {rating: 9} ]->(m);

MATCH (u:User {name: "Daniel"}), (m:Movie {title: "Inglourious Basterds"})
MERGE (u)-[:WATCHED {rating: 10} ]->(m);

MATCH (u:User {name: "Daniel"}), (m:Movie {title: "Django Unchained"})
MERGE (u)-[:WATCHED {rating: 10} ]->(m);

MATCH (u:User {name: "Eduarda"}), (m:Movie {title: "Django Unchained"})
MERGE (u)-[:WATCHED {rating: 8} ]->(m);

MATCH (u:User {name: "Eduarda"}), (m:Movie {title: "Gladiator"})
MERGE (u)-[:WATCHED {rating: 5} ]->(m);

MATCH (u:User {name: "Felipe"}), (m:Movie {title: "Inception"})
MERGE (u)-[:WATCHED {rating: 9} ]->(m);

MATCH (u:User {name: "Felipe"}), (m:Movie {title: "Harry Potter and the Sorcerer's Stone"})
MERGE (u)-[:WATCHED {rating: 4} ]->(m);

MATCH (u:User {name: "Felipe"}), (m:Movie {title: "Batman Begins"})
MERGE (u)-[:WATCHED {rating: 10} ]->(m);

// Criação de relações WATCHED entre Usuarios e Series

MATCH (u:User {name: "Carla"}), (s:Series {title: "Breaking Bad"})
MERGE (u)-[:WATCHED {rating: 10} ]->(s);

MATCH (u:User {name: "Bruno"}), (s:Series {title: "Breaking Bad"})
MERGE (u)-[:WATCHED {rating: 10} ]->(s);

MATCH (u:User {name: "Bruno"}), (s:Series {title: "Game of Thrones"})
MERGE (u)-[:WATCHED {rating: 6} ]->(s);

MATCH (u:User {name: "Gabriela"}), (s:Series {title: "Stranger Things"})
MERGE (u)-[:WATCHED {rating: 7} ]->(s);

MATCH (u:User {name: "Gabriela"}), (s:Series {title: "Game of Thrones"})
MERGE (u)-[:WATCHED {rating: 6} ]->(s);

MATCH (u:User {name: "Henrique"}), (s:Series {title: "The Walking Dead"})
MERGE (u)-[:WATCHED {rating: 10} ]->(s);

MATCH (u:User {name: "Henrique"}), (s:Series {title: "The Crown"})
MERGE (u)-[:WATCHED {rating: 6} ]->(s);

MATCH (u:User {name: "Isabela"}), (s:Series {title: "Sherlock"})
MERGE (u)-[:WATCHED {rating: 5} ]->(s);

MATCH (u:User {name: "Isabela"}), (s:Series {title: "Friends"})
MERGE (u)-[:WATCHED {rating: 8} ]->(s);

MATCH (u:User {name: "João"}), (s:Series {title: "The Office"})
MERGE (u)-[:WATCHED {rating: 10} ]->(s);

MATCH (u:User {name: "João"}), (s:Series {title: "Dark"})
MERGE (u)-[:WATCHED {rating: 7} ]->(s);

MATCH (u:User {name: "João"}), (s:Series {title: "House of the Dragon"})
MERGE (u)-[:WATCHED {rating: 5} ]->(s);