DROP TABLE IF EXISTS movie;

CREATE TABLE movie (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  movie_description TEXT,
  movie_image TEXT,
  movie_trailer TEXT

);

INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('The Incredibles 2' , 'Body text 1', 'http://t1.gstatic.com/images?q=tbn:ANd9GcToVxv9Pjks-gNiQo7xdCsU8kAzgbHfHd3c6PC9tWKe2RgXBlkI', 'https://www.youtube.com/embed/ZJDMWVZta3M');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('Ant-Man and the Wasp' , 'Body text 2', 'http://t1.gstatic.com/images?q=tbn:ANd9GcQeA9IA-C1GiNpVwEXXm-jcFOFpuYvjd-n30RmAtSs8511N2NMi', 'https://www.youtube.com/embed/8_rTIAOohas');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('Mission: Impossible - Fallout' , 'Body text 3', 'http://t1.gstatic.com/images?q=tbn:ANd9GcTDuzrnxIkh11AqI-6PrU9Qrycml22OhFHM9UwGmlkxCsPctLTr', 'https://www.youtube.com/embed/wb49-oV0F78');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('Slender Man' , 'Body text 4', 'http://t1.gstatic.com/images?q=tbn:ANd9GcRpvFeXXNRTh33Q7SpgSEw7UFhIvsT9sy8uhGDWkBcSGorzGIZL', 'https://www.youtube.com/embed/ySy8mcceTno');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('Darkest Minds' , 'Body text 5', 'http://t0.gstatic.com/images?q=tbn:ANd9GcR_-PbXch9K0K1cl25GGjDZCnuEmbeHBm5tA0H7H4q_IHiKAEIc', 'https://www.youtube.com/embed/tN8o_E_f9FQ');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('Oceans 8' , 'Body text 6', 'https://pbs.twimg.com/media/DRBvJVdV4AAKXeO.jpg:large', 'https://www.youtube.com/watch?v=n5LoVcVsiSQ');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('Skyscrapper' , 'Body text 7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoeDWBszLomZmafyNt0xdmcqfZDai4fvqkYqLG9ZOGA2q7GyraA_yT1Q', 'https://www.youtube.com/embed/t9QePUT-Yt8');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('Hereditary' , 'Body text 8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWcMJgxfwxuux3HnY8ram4YIPlCTU1vMyauFVH3HOVS7_UX-rYd1zkLw', 'https://www.youtube.com/embed/V6wWKNij_1M');
INSERT INTO movie (title , movie_description, movie_image, movie_trailer) VALUES ('The meg' , 'Body text 9', 'https://pbs.twimg.com/media/DgEOQKaVMAAuCPc.jpg:large', 'https://www.youtube.com/embed/bsLk0NPRFAc');
