class Movie
  attr_accessor(:id, :title, :movie_description, :movie_image, :movie_trailer)

  def self.open_connection
    conn = PG.connect(dbname: 'movie', port: 5434)
  end

  # saves in the right place
  def save
    conn = Movie.open_connection

    if !id
      sql = "INSERT INTO movie (title, movie_description, movie_image, movie_trailer) VALUES ('#{title}','#{movie_description}','#{movie_image}','#{movie_trailer}')"
    else
      sql = "UPDATE movie SET title='#{title}', movie_description='#{movie_description}', movie_image='#{movie_image}', movie_trailer='#{movie_trailer}' WHERE id=#{id}"
    end

    conn.exec(sql)
  end

  # gets all of the movies
  def self.all
    # create connection
    conn = open_connection

    sql = 'SELECT id,title,movie_description,movie_image,movie_trailer FROM movie ORDER BY id'

    results = conn.exec(sql)

    movies = results.map do |result|
      hydrate(result)
    end

    movies
  end

  # gets one of the movies
  def self.find(id)
    conn = open_connection

    sql = "SELECT * FROM movie WHERE id = #{id} LIMIT 1"

    movies_result = conn.exec(sql)

    movie = hydrate(movies_result[0])
  end

  # deletes one of the movies
  def self.destroy(id)
    conn = open_connection

    sql = "DELETE FROM movie WHERE id = #{id}"

    conn.exec(sql)
  end

  # hydrate packages data correctly and stores it
  def self.hydrate(movie_data)
    movie = Movie.new

    movie.id = movie_data['id']
    movie.title = movie_data['title']
    movie.movie_description = movie_data['movie_description']
    movie.movie_image = movie_data['movie_image']
    movie.movie_trailer = movie_data['movie_trailer']

    movie
  end
end

Movie.all
